.class Landroid/service/settings/preferences/SettingsPreferenceService$1;
.super Landroid/service/settings/preferences/ISettingsPreferenceService$Stub;
.source "SettingsPreferenceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/settings/preferences/SettingsPreferenceService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/settings/preferences/SettingsPreferenceService;


# direct methods
.method constructor blacklist <init>(Landroid/service/settings/preferences/SettingsPreferenceService;Landroid/os/PermissionEnforcer;)V
    .registers 3
    .param p1, "this$0"    # Landroid/service/settings/preferences/SettingsPreferenceService;
    .param p2, "enforcer"    # Landroid/os/PermissionEnforcer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 89
    iput-object p1, p0, Landroid/service/settings/preferences/SettingsPreferenceService$1;->this$0:Landroid/service/settings/preferences/SettingsPreferenceService;

    invoke-direct {p0, p2}, Landroid/service/settings/preferences/ISettingsPreferenceService$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    return-void
.end method


# virtual methods
.method public blacklist getAllPreferenceMetadata(Landroid/service/settings/preferences/MetadataRequest;Landroid/service/settings/preferences/IMetadataCallback;)V
    .registers 5
    .param p1, "request"    # Landroid/service/settings/preferences/MetadataRequest;
    .param p2, "callback"    # Landroid/service/settings/preferences/IMetadataCallback;

    .line 94
    invoke-virtual {p0}, Landroid/service/settings/preferences/SettingsPreferenceService$1;->getAllPreferenceMetadata_enforcePermission()V

    .line 95
    iget-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceService$1;->this$0:Landroid/service/settings/preferences/SettingsPreferenceService;

    new-instance v1, Landroid/service/settings/preferences/SettingsPreferenceService$1$1;

    invoke-direct {v1, p0, p2}, Landroid/service/settings/preferences/SettingsPreferenceService$1$1;-><init>(Landroid/service/settings/preferences/SettingsPreferenceService$1;Landroid/service/settings/preferences/IMetadataCallback;)V

    invoke-virtual {v0, p1, v1}, Landroid/service/settings/preferences/SettingsPreferenceService;->onGetAllPreferenceMetadata(Landroid/service/settings/preferences/MetadataRequest;Landroid/os/OutcomeReceiver;)V

    .line 114
    return-void
.end method

.method public blacklist getPreferenceValue(Landroid/service/settings/preferences/GetValueRequest;Landroid/service/settings/preferences/IGetValueCallback;)V
    .registers 5
    .param p1, "request"    # Landroid/service/settings/preferences/GetValueRequest;
    .param p2, "callback"    # Landroid/service/settings/preferences/IGetValueCallback;

    .line 119
    invoke-virtual {p0}, Landroid/service/settings/preferences/SettingsPreferenceService$1;->getPreferenceValue_enforcePermission()V

    .line 120
    iget-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceService$1;->this$0:Landroid/service/settings/preferences/SettingsPreferenceService;

    new-instance v1, Landroid/service/settings/preferences/SettingsPreferenceService$1$2;

    invoke-direct {v1, p0, p2}, Landroid/service/settings/preferences/SettingsPreferenceService$1$2;-><init>(Landroid/service/settings/preferences/SettingsPreferenceService$1;Landroid/service/settings/preferences/IGetValueCallback;)V

    invoke-virtual {v0, p1, v1}, Landroid/service/settings/preferences/SettingsPreferenceService;->onGetPreferenceValue(Landroid/service/settings/preferences/GetValueRequest;Landroid/os/OutcomeReceiver;)V

    .line 139
    return-void
.end method

.method public blacklist setPreferenceValue(Landroid/service/settings/preferences/SetValueRequest;Landroid/service/settings/preferences/ISetValueCallback;)V
    .registers 5
    .param p1, "request"    # Landroid/service/settings/preferences/SetValueRequest;
    .param p2, "callback"    # Landroid/service/settings/preferences/ISetValueCallback;

    .line 147
    invoke-virtual {p0}, Landroid/service/settings/preferences/SettingsPreferenceService$1;->setPreferenceValue_enforcePermission()V

    .line 148
    iget-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceService$1;->this$0:Landroid/service/settings/preferences/SettingsPreferenceService;

    new-instance v1, Landroid/service/settings/preferences/SettingsPreferenceService$1$3;

    invoke-direct {v1, p0, p2}, Landroid/service/settings/preferences/SettingsPreferenceService$1$3;-><init>(Landroid/service/settings/preferences/SettingsPreferenceService$1;Landroid/service/settings/preferences/ISetValueCallback;)V

    invoke-virtual {v0, p1, v1}, Landroid/service/settings/preferences/SettingsPreferenceService;->onSetPreferenceValue(Landroid/service/settings/preferences/SetValueRequest;Landroid/os/OutcomeReceiver;)V

    .line 167
    return-void
.end method
