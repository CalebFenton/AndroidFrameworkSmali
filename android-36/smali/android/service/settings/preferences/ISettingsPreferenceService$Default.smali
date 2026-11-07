.class public Landroid/service/settings/preferences/ISettingsPreferenceService$Default;
.super Ljava/lang/Object;
.source "ISettingsPreferenceService.java"

# interfaces
.implements Landroid/service/settings/preferences/ISettingsPreferenceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/settings/preferences/ISettingsPreferenceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAllPreferenceMetadata(Landroid/service/settings/preferences/MetadataRequest;Landroid/service/settings/preferences/IMetadataCallback;)V
    .registers 3
    .param p1, "request"    # Landroid/service/settings/preferences/MetadataRequest;
    .param p2, "callback"    # Landroid/service/settings/preferences/IMetadataCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public blacklist getPreferenceValue(Landroid/service/settings/preferences/GetValueRequest;Landroid/service/settings/preferences/IGetValueCallback;)V
    .registers 3
    .param p1, "request"    # Landroid/service/settings/preferences/GetValueRequest;
    .param p2, "callback"    # Landroid/service/settings/preferences/IGetValueCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist setPreferenceValue(Landroid/service/settings/preferences/SetValueRequest;Landroid/service/settings/preferences/ISetValueCallback;)V
    .registers 3
    .param p1, "request"    # Landroid/service/settings/preferences/SetValueRequest;
    .param p2, "callback"    # Landroid/service/settings/preferences/ISetValueCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method
