.class public Landroid/hardware/camera2/extension/IRequestCallback$Default;
.super Ljava/lang/Object;
.source "IRequestCallback.java"

# interfaces
.implements Landroid/hardware/camera2/extension/IRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/extension/IRequestCallback;
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

    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onCaptureBufferLost(IJI)V
    .registers 5
    .param p1, "requestId"    # I
    .param p2, "frameNumber"    # J
    .param p4, "outputStreamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public blacklist onCaptureCompleted(ILandroid/hardware/camera2/extension/ParcelTotalCaptureResult;)V
    .registers 3
    .param p1, "requestId"    # I
    .param p2, "totalCaptureResult"    # Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public blacklist onCaptureFailed(ILandroid/hardware/camera2/extension/CaptureFailure;)V
    .registers 3
    .param p1, "requestId"    # I
    .param p2, "captureFailure"    # Landroid/hardware/camera2/extension/CaptureFailure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public blacklist onCaptureProgressed(ILandroid/hardware/camera2/extension/ParcelCaptureResult;)V
    .registers 3
    .param p1, "requestId"    # I
    .param p2, "partialResult"    # Landroid/hardware/camera2/extension/ParcelCaptureResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist onCaptureSequenceAborted(I)V
    .registers 2
    .param p1, "sequenceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    return-void
.end method

.method public blacklist onCaptureSequenceCompleted(IJ)V
    .registers 4
    .param p1, "sequenceId"    # I
    .param p2, "frameNumber"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public blacklist onCaptureStarted(IJJ)V
    .registers 6
    .param p1, "requestId"    # I
    .param p2, "frameNumber"    # J
    .param p4, "timestamp"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method
