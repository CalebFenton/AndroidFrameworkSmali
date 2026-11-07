.class public Landroid/companion/virtual/camera/IVirtualCameraCallback$Default;
.super Ljava/lang/Object;
.source "IVirtualCameraCallback.java"

# interfaces
.implements Landroid/companion/virtual/camera/IVirtualCameraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/camera/IVirtualCameraCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onProcessCaptureRequest(IJ)V
    .registers 4
    .param p1, "streamId"    # I
    .param p2, "frameId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    return-void
.end method

.method public blacklist onStreamClosed(I)V
    .registers 2
    .param p1, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    return-void
.end method

.method public blacklist onStreamConfigured(ILandroid/view/Surface;III)V
    .registers 6
    .param p1, "streamId"    # I
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "format"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method
