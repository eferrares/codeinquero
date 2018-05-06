from django.contrib import admin
from .models import(
    Enterprise,
    Moderation,
    User,
)


class UserAdmin(admin.ModelAdmin):
    list_display = ('__str__', 'email')
    list_filter = ('name', 'email')
    search_fields = ('name', 'email')
    list_per_page = 20

    fields = ('name', 'email', 'password', 'is_superuser', 'is_active')


admin.site.register(User, UserAdmin)
admin.site.register(Enterprise, admin.ModelAdmin)
admin.site.register(Moderation, admin.ModelAdmin)
