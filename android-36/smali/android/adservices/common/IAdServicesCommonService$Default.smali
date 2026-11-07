.class public Landroid/adservices/common/IAdServicesCommonService$Default;
.super Ljava/lang/Object;
.source "IAdServicesCommonService.java"

# interfaces
.implements Landroid/adservices/common/IAdServicesCommonService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/common/IAdServicesCommonService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist enableAdServices(Landroid/adservices/common/AdServicesStates;Landroid/adservices/common/IEnableAdServicesCallback;)V
    .registers 3
    .param p1, "adServicesStates"    # Landroid/adservices/common/AdServicesStates;
    .param p2, "callback"    # Landroid/adservices/common/IEnableAdServicesCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public blacklist getAdServicesCommonStates(Landroid/adservices/common/GetAdServicesCommonStatesParams;Landroid/adservices/common/CallerMetadata;Landroid/adservices/common/IAdServicesCommonStatesCallback;)V
    .registers 4
    .param p1, "params"    # Landroid/adservices/common/GetAdServicesCommonStatesParams;
    .param p2, "callerMetadata"    # Landroid/adservices/common/CallerMetadata;
    .param p3, "callback"    # Landroid/adservices/common/IAdServicesCommonStatesCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public blacklist isAdServicesEnabled(Landroid/adservices/common/IAdServicesCommonCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/adservices/common/IAdServicesCommonCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist requestAdServicesModuleOverrides(Landroid/adservices/common/UpdateAdServicesModuleStatesParams;Landroid/adservices/common/IRequestAdServicesModuleOverridesCallback;)V
    .registers 3
    .param p1, "params"    # Landroid/adservices/common/UpdateAdServicesModuleStatesParams;
    .param p2, "callback"    # Landroid/adservices/common/IRequestAdServicesModuleOverridesCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    return-void
.end method

.method public blacklist requestAdServicesModuleUserChoices(Landroid/adservices/common/UpdateAdServicesUserChoicesParams;Landroid/adservices/common/IRequestAdServicesModuleUserChoicesCallback;)V
    .registers 3
    .param p1, "params"    # Landroid/adservices/common/UpdateAdServicesUserChoicesParams;
    .param p2, "callback"    # Landroid/adservices/common/IRequestAdServicesModuleUserChoicesCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    return-void
.end method

.method public blacklist setAdServicesEnabled(ZZ)V
    .registers 3
    .param p1, "adServicesEntryPointEnabled"    # Z
    .param p2, "adIdEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public blacklist updateAdIdCache(Landroid/adservices/common/UpdateAdIdRequest;Landroid/adservices/common/IUpdateAdIdCallback;)V
    .registers 3
    .param p1, "adIdUpdateRequest"    # Landroid/adservices/common/UpdateAdIdRequest;
    .param p2, "callback"    # Landroid/adservices/common/IUpdateAdIdCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method
