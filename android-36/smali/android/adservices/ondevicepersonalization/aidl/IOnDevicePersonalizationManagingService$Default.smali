.class public Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService$Default;
.super Ljava/lang/Object;
.source "IOnDevicePersonalizationManagingService.java"

# interfaces
.implements Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;
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

    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist execute(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/adservices/ondevicepersonalization/CallerMetadata;Landroid/adservices/ondevicepersonalization/ExecuteOptionsParcel;Landroid/adservices/ondevicepersonalization/aidl/IExecuteCallback;)V
    .registers 7
    .param p1, "callingPackageName"    # Ljava/lang/String;
    .param p2, "handler"    # Landroid/content/ComponentName;
    .param p3, "wrappedParams"    # Landroid/os/Bundle;
    .param p4, "metadata"    # Landroid/adservices/ondevicepersonalization/CallerMetadata;
    .param p5, "options"    # Landroid/adservices/ondevicepersonalization/ExecuteOptionsParcel;
    .param p6, "callback"    # Landroid/adservices/ondevicepersonalization/aidl/IExecuteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist getVersion()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist isFeatureEnabled(Ljava/lang/String;Landroid/adservices/ondevicepersonalization/CallerMetadata;Landroid/adservices/ondevicepersonalization/aidl/IIsFeatureEnabledCallback;)V
    .registers 4
    .param p1, "featureName"    # Ljava/lang/String;
    .param p2, "metadata"    # Landroid/adservices/ondevicepersonalization/CallerMetadata;
    .param p3, "callback"    # Landroid/adservices/ondevicepersonalization/aidl/IIsFeatureEnabledCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public blacklist logApiCallStats(Ljava/lang/String;IJJJI)V
    .registers 10
    .param p1, "sdkPackageName"    # Ljava/lang/String;
    .param p2, "apiName"    # I
    .param p3, "latencyMillis"    # J
    .param p5, "rpcCallLatencyMillis"    # J
    .param p7, "rpcReturnLatencyMillis"    # J
    .param p9, "responseCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public blacklist registerMeasurementEvent(ILandroid/os/Bundle;Landroid/adservices/ondevicepersonalization/CallerMetadata;Landroid/adservices/ondevicepersonalization/aidl/IRegisterMeasurementEventCallback;)V
    .registers 5
    .param p1, "measurementEventType"    # I
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "metadata"    # Landroid/adservices/ondevicepersonalization/CallerMetadata;
    .param p4, "callback"    # Landroid/adservices/ondevicepersonalization/aidl/IRegisterMeasurementEventCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public blacklist requestSurfacePackage(Ljava/lang/String;Landroid/os/IBinder;IIILandroid/adservices/ondevicepersonalization/CallerMetadata;Landroid/adservices/ondevicepersonalization/aidl/IRequestSurfacePackageCallback;)V
    .registers 8
    .param p1, "slotResultToken"    # Ljava/lang/String;
    .param p2, "hostToken"    # Landroid/os/IBinder;
    .param p3, "displayId"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "metadata"    # Landroid/adservices/ondevicepersonalization/CallerMetadata;
    .param p7, "callback"    # Landroid/adservices/ondevicepersonalization/aidl/IRequestSurfacePackageCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method
