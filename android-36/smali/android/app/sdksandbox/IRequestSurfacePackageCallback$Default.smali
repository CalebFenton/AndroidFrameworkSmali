.class public Landroid/app/sdksandbox/IRequestSurfacePackageCallback$Default;
.super Ljava/lang/Object;
.source "IRequestSurfacePackageCallback.java"

# interfaces
.implements Landroid/app/sdksandbox/IRequestSurfacePackageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/sdksandbox/IRequestSurfacePackageCallback;
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

.method public blacklist onSurfacePackageError(ILjava/lang/String;Landroid/app/sdksandbox/SandboxLatencyInfo;)V
    .registers 4
    .param p1, "errorCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "sandboxLatencyInfo"    # Landroid/app/sdksandbox/SandboxLatencyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist onSurfacePackageReady(Landroid/view/SurfaceControlViewHost$SurfacePackage;ILandroid/os/Bundle;Landroid/app/sdksandbox/SandboxLatencyInfo;)V
    .registers 5
    .param p1, "surfacePackage"    # Landroid/view/SurfaceControlViewHost$SurfacePackage;
    .param p2, "surfacePackageId"    # I
    .param p3, "params"    # Landroid/os/Bundle;
    .param p4, "sandboxLatencyInfo"    # Landroid/app/sdksandbox/SandboxLatencyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method
