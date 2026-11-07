.class public Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager$Default;
.super Ljava/lang/Object;
.source "IOnDeviceIntelligenceManager.java"

# interfaces
.implements Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager;
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

    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getFeature(ILandroid/app/ondeviceintelligence/IFeatureCallback;)V
    .registers 3
    .param p1, "featureId"    # I
    .param p2, "remoteCallback"    # Landroid/app/ondeviceintelligence/IFeatureCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public blacklist getFeatureDetails(Landroid/app/ondeviceintelligence/Feature;Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;)V
    .registers 3
    .param p1, "feature"    # Landroid/app/ondeviceintelligence/Feature;
    .param p2, "featureDetailsCallback"    # Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public blacklist getLatestInferenceInfo(J)Ljava/util/List;
    .registers 4
    .param p1, "startTimeEpochMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroid/app/ondeviceintelligence/InferenceInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getRemoteServicePackageName()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    const/4 v0, 0x0

    return-object v0
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

.method public blacklist listFeatures(Landroid/app/ondeviceintelligence/IListFeaturesCallback;)V
    .registers 2
    .param p1, "listFeaturesCallback"    # Landroid/app/ondeviceintelligence/IListFeaturesCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public blacklist processRequest(Landroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;ILcom/android/internal/infra/AndroidFuture;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IResponseCallback;)V
    .registers 7
    .param p1, "feature"    # Landroid/app/ondeviceintelligence/Feature;
    .param p2, "requestBundle"    # Landroid/os/Bundle;
    .param p3, "requestType"    # I
    .param p4, "cancellationSignalFuture"    # Lcom/android/internal/infra/AndroidFuture;
    .param p5, "processingSignalFuture"    # Lcom/android/internal/infra/AndroidFuture;
    .param p6, "responseCallback"    # Landroid/app/ondeviceintelligence/IResponseCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    return-void
.end method

.method public blacklist processRequestStreaming(Landroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;ILcom/android/internal/infra/AndroidFuture;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IStreamingResponseCallback;)V
    .registers 7
    .param p1, "feature"    # Landroid/app/ondeviceintelligence/Feature;
    .param p2, "requestBundle"    # Landroid/os/Bundle;
    .param p3, "requestType"    # I
    .param p4, "cancellationSignalFuture"    # Lcom/android/internal/infra/AndroidFuture;
    .param p5, "processingSignalFuture"    # Lcom/android/internal/infra/AndroidFuture;
    .param p6, "streamingCallback"    # Landroid/app/ondeviceintelligence/IStreamingResponseCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    return-void
.end method

.method public blacklist requestFeatureDownload(Landroid/app/ondeviceintelligence/Feature;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IDownloadCallback;)V
    .registers 4
    .param p1, "feature"    # Landroid/app/ondeviceintelligence/Feature;
    .param p2, "cancellationSignalFuture"    # Lcom/android/internal/infra/AndroidFuture;
    .param p3, "callback"    # Landroid/app/ondeviceintelligence/IDownloadCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method

.method public blacklist requestTokenInfo(Landroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/ITokenInfoCallback;)V
    .registers 5
    .param p1, "feature"    # Landroid/app/ondeviceintelligence/Feature;
    .param p2, "requestBundle"    # Landroid/os/Bundle;
    .param p3, "cancellationSignalFuture"    # Lcom/android/internal/infra/AndroidFuture;
    .param p4, "tokenInfocallback"    # Landroid/app/ondeviceintelligence/ITokenInfoCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method
