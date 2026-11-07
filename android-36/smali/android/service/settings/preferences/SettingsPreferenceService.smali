.class public abstract Landroid/service/settings/preferences/SettingsPreferenceService;
.super Landroid/app/Service;
.source "SettingsPreferenceService.java"


# static fields
.field public static final whitelist ACTION_PREFERENCE_SERVICE:Ljava/lang/String; = "android.service.settings.preferences.action.PREFERENCE_SERVICE"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 71
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 88
    new-instance v0, Landroid/service/settings/preferences/SettingsPreferenceService$1;

    .line 89
    invoke-virtual {p0}, Landroid/service/settings/preferences/SettingsPreferenceService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/service/settings/preferences/SettingsPreferenceService$1;-><init>(Landroid/service/settings/preferences/SettingsPreferenceService;Landroid/os/PermissionEnforcer;)V

    .line 88
    return-object v0
.end method

.method public abstract whitelist onGetAllPreferenceMetadata(Landroid/service/settings/preferences/MetadataRequest;Landroid/os/OutcomeReceiver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/settings/preferences/MetadataRequest;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/service/settings/preferences/MetadataResult;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract whitelist onGetPreferenceValue(Landroid/service/settings/preferences/GetValueRequest;Landroid/os/OutcomeReceiver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/settings/preferences/GetValueRequest;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/service/settings/preferences/GetValueResult;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract whitelist onSetPreferenceValue(Landroid/service/settings/preferences/SetValueRequest;Landroid/os/OutcomeReceiver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/settings/preferences/SetValueRequest;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/service/settings/preferences/SetValueResult;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation
.end method
