.class public interface abstract Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;
.super Ljava/lang/Object;
.source "IOnDevicePersonalizationManagingService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService$Stub;,
        Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.adservices.ondevicepersonalization.aidl.IOnDevicePersonalizationManagingService"


# virtual methods
.method public abstract blacklist execute(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/adservices/ondevicepersonalization/CallerMetadata;Landroid/adservices/ondevicepersonalization/ExecuteOptionsParcel;Landroid/adservices/ondevicepersonalization/aidl/IExecuteCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getVersion()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist isFeatureEnabled(Ljava/lang/String;Landroid/adservices/ondevicepersonalization/CallerMetadata;Landroid/adservices/ondevicepersonalization/aidl/IIsFeatureEnabledCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist logApiCallStats(Ljava/lang/String;IJJJI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist registerMeasurementEvent(ILandroid/os/Bundle;Landroid/adservices/ondevicepersonalization/CallerMetadata;Landroid/adservices/ondevicepersonalization/aidl/IRegisterMeasurementEventCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist requestSurfacePackage(Ljava/lang/String;Landroid/os/IBinder;IIILandroid/adservices/ondevicepersonalization/CallerMetadata;Landroid/adservices/ondevicepersonalization/aidl/IRequestSurfacePackageCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
