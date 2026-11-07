.class public Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService$Default;
.super Ljava/lang/Object;
.source "IOnDeviceIntelligenceService.java"

# interfaces
.implements Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;
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

    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getFeature(IILandroid/app/ondeviceintelligence/IFeatureCallback;)V
    .registers 4
    .param p1, "callerUid"    # I
    .param p2, "featureId"    # I
    .param p3, "featureCallback"    # Landroid/app/ondeviceintelligence/IFeatureCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public blacklist getFeatureDetails(ILandroid/app/ondeviceintelligence/Feature;Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;)V
    .registers 4
    .param p1, "callerUid"    # I
    .param p2, "feature"    # Landroid/app/ondeviceintelligence/Feature;
    .param p3, "featureDetailsCallback"    # Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public blacklist getReadOnlyFeatureFileDescriptorMap(Landroid/app/ondeviceintelligence/Feature;Landroid/os/RemoteCallback;)V
    .registers 3
    .param p1, "feature"    # Landroid/app/ondeviceintelligence/Feature;
    .param p2, "remoteCallback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public blacklist getReadOnlyFileDescriptor(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 3
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    .local p2, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/os/ParcelFileDescriptor;>;"
    return-void
.end method

.method public blacklist getVersion(Landroid/os/RemoteCallback;)V
    .registers 2
    .param p1, "remoteCallback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist listFeatures(ILandroid/app/ondeviceintelligence/IListFeaturesCallback;)V
    .registers 3
    .param p1, "callerUid"    # I
    .param p2, "listFeaturesCallback"    # Landroid/app/ondeviceintelligence/IListFeaturesCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public blacklist notifyInferenceServiceConnected()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    return-void
.end method

.method public blacklist notifyInferenceServiceDisconnected()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    return-void
.end method

.method public blacklist ready()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    return-void
.end method

.method public blacklist registerRemoteServices(Landroid/service/ondeviceintelligence/IRemoteProcessingService;)V
    .registers 2
    .param p1, "remoteProcessingService"    # Landroid/service/ondeviceintelligence/IRemoteProcessingService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    return-void
.end method

.method public blacklist requestFeatureDownload(ILandroid/app/ondeviceintelligence/Feature;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IDownloadCallback;)V
    .registers 5
    .param p1, "callerUid"    # I
    .param p2, "feature"    # Landroid/app/ondeviceintelligence/Feature;
    .param p3, "cancellationSignal"    # Lcom/android/internal/infra/AndroidFuture;
    .param p4, "downloadCallback"    # Landroid/app/ondeviceintelligence/IDownloadCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    return-void
.end method
