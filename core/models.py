# -*- coding: utf-8 -*-
from django.contrib.auth.models import AbstractBaseUser, BaseUserManager, PermissionsMixin
from django.db import models
from django.utils import timezone
from django.utils.translation import ugettext_lazy as _
from datetime import datetime


class UserManager(BaseUserManager):
    def create_user(self, email, password=None, **extra_fields):
        now = timezone.now()
        if not email:
            raise ValueError('O email é obrigatório')

        if 'username' in extra_fields and extra_fields['username'] == email:
            extra_fields['name'] = extra_fields['username']
            extra_fields.pop('username')
        email = UserManager.normalize_email(email)
        user = self.model(email=email, is_active=True, is_superuser=False,
                          last_login=now, date_joined=now, **extra_fields)

        user.set_password(password)
        user.save(using=self._db)
        return user

    def create_superuser(self, email, password, **extra_fields):
        user = self.create_user(email, password, **extra_fields)
        user.is_active = True
        user.is_superuser = True
        user.save(using=self._db)
        return user


class User(AbstractBaseUser, PermissionsMixin):
    name = models.CharField(_('Nome'), max_length=250, null=True, blank=True)
    email = models.EmailField(_('E-mail'), unique=True)
    is_active = models.BooleanField('Ativo', default=True,)
    is_staff = models.BooleanField('Administrador', default=False,)
    date_joined = models.DateTimeField('Data de cadastro', auto_now_add=True)

    objects = UserManager()

    USERNAME_FIELD = 'email'
    REQUIRED_FIELDS = ('name',)

    class Meta:
        verbose_name = _(u'Usuário')
        verbose_name_plural = _(u'Usuários')

    def __unicode__(self):
        if self.name:
            return self.name
        return ''

    def get_full_name(self):
        return self.name

    def get_short_name(self):
        return self.name.split(' ')[0]


class Enterprise(models.Model):
    user = models.ForeignKey(User)
    name = models.CharField(max_length=100)
    slug = models.SlugField(max_length=50)
    main_photo = models.ImageField(max_length=200, null=True, blank=True)


class Post(models.Model):
    enterprise = models.ForeignKey(Enterprise, null=True, blank=True)
    file = models.FileField(max_length=200, null=True)
    username = models.CharField(max_length=200)
    user_display_name = models.CharField(max_length=100, null=True)
    text = models.TextField()
    date_posted = models.DateTimeField(default=datetime.now())


class Like(models.Model):
    post = models.ForeignKey(Post)


class Coment(models.Model):
    post = models.ForeignKey(Post)
