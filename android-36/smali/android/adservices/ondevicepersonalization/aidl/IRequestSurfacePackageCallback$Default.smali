.class public Landroid/adservices/ondevicepersonalization/aidl/IRequestSurfacePackageCallback$Default;
.super Ljava/lang/Object;
.source "IRequestSurfacePackageCallback.java"

# interfaces
.implements Landroid/adservices/ondevicepersonalization/aidl/IRequestSurfacePackageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/ondevicepersonalization/aidl/IRequestSurfacePackageCallback;
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

    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onError(II[BLandroid/adservices/ondevicepersonalization/CalleeMetadata;)V
    .registers 5
    .param p1, "errorCode"    # I
    .param p2, "isolatedServiceErrorCode"    # I
    .param p3, "serializedExceptionInfo"    # [B
    .param p4, "calleeMetadata"    # Landroid/adservices/ondevicepersonalization/CalleeMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist onSuccess(Landroid/view/SurfaceControlViewHost$SurfacePackage;Landroid/adservices/ondevicepersonalization/CalleeMetadata;)V
    .registers 3
    .param p1, "surfacePackage"    # Landroid/view/SurfaceControlViewHost$SurfacePackage;
    .param p2, "calleeMetadata"    # Landroid/adservices/ondevicepersonalization/CalleeMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method
