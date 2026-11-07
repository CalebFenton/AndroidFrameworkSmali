.class public Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService$Default;
.super Ljava/lang/Object;
.source "IOnDeviceSandboxedInferenceService.java"

# interfaces
.implements Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist processRequest(ILandroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;ILcom/android/internal/infra/AndroidFuture;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IResponseCallback;)V
    .registers 8
    .param p1, "callerUid"    # I
    .param p2, "feature"    # Landroid/app/ondeviceintelligence/Feature;
    .param p3, "request"    # Landroid/os/Bundle;
    .param p4, "requestType"    # I
    .param p5, "cancellationSignal"    # Lcom/android/internal/infra/AndroidFuture;
    .param p6, "processingSignal"    # Lcom/android/internal/infra/AndroidFuture;
    .param p7, "callback"    # Landroid/app/ondeviceintelligence/IResponseCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public blacklist processRequestStreaming(ILandroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;ILcom/android/internal/infra/AndroidFuture;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IStreamingResponseCallback;)V
    .registers 8
    .param p1, "callerUid"    # I
    .param p2, "feature"    # Landroid/app/ondeviceintelligence/Feature;
    .param p3, "request"    # Landroid/os/Bundle;
    .param p4, "requestType"    # I
    .param p5, "cancellationSignal"    # Lcom/android/internal/infra/AndroidFuture;
    .param p6, "processingSignal"    # Lcom/android/internal/infra/AndroidFuture;
    .param p7, "callback"    # Landroid/app/ondeviceintelligence/IStreamingResponseCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public blacklist registerRemoteStorageService(Landroid/service/ondeviceintelligence/IRemoteStorageService;Landroid/os/IRemoteCallback;)V
    .registers 3
    .param p1, "storageService"    # Landroid/service/ondeviceintelligence/IRemoteStorageService;
    .param p2, "remoteCallback"    # Landroid/os/IRemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist requestTokenInfo(ILandroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/ITokenInfoCallback;)V
    .registers 6
    .param p1, "callerUid"    # I
    .param p2, "feature"    # Landroid/app/ondeviceintelligence/Feature;
    .param p3, "request"    # Landroid/os/Bundle;
    .param p4, "cancellationSignal"    # Lcom/android/internal/infra/AndroidFuture;
    .param p5, "tokenInfoCallback"    # Landroid/app/ondeviceintelligence/ITokenInfoCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public blacklist updateProcessingState(Landroid/os/Bundle;Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback;)V
    .registers 3
    .param p1, "processingState"    # Landroid/os/Bundle;
    .param p2, "callback"    # Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method
