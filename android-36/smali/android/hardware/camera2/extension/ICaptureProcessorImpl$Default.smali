.class public Landroid/hardware/camera2/extension/ICaptureProcessorImpl$Default;
.super Ljava/lang/Object;
.source "ICaptureProcessorImpl.java"

# interfaces
.implements Landroid/hardware/camera2/extension/ICaptureProcessorImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/extension/ICaptureProcessorImpl;
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

    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onImageFormatUpdate(I)V
    .registers 2
    .param p1, "imageFormat"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public blacklist onOutputSurface(Landroid/view/Surface;I)V
    .registers 3
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "imageFormat"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public blacklist onPostviewOutputSurface(Landroid/view/Surface;)V
    .registers 2
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist onResolutionUpdate(Landroid/hardware/camera2/extension/Size;Landroid/hardware/camera2/extension/Size;)V
    .registers 3
    .param p1, "size"    # Landroid/hardware/camera2/extension/Size;
    .param p2, "postviewSize"    # Landroid/hardware/camera2/extension/Size;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public blacklist process(Ljava/util/List;Landroid/hardware/camera2/extension/IProcessResultImpl;Z)V
    .registers 4
    .param p2, "resultCallback"    # Landroid/hardware/camera2/extension/IProcessResultImpl;
    .param p3, "isPostviewRequested"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/CaptureBundle;",
            ">;",
            "Landroid/hardware/camera2/extension/IProcessResultImpl;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    .local p1, "capturelist":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/CaptureBundle;>;"
    return-void
.end method
