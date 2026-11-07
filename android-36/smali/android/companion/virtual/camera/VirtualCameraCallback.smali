.class public interface abstract Landroid/companion/virtual/camera/VirtualCameraCallback;
.super Ljava/lang/Object;
.source "VirtualCameraCallback.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# virtual methods
.method public whitelist onProcessCaptureRequest(IJ)V
    .registers 4
    .param p1, "streamId"    # I
    .param p2, "frameId"    # J

    .line 63
    return-void
.end method

.method public abstract whitelist onStreamClosed(I)V
.end method

.method public abstract whitelist onStreamConfigured(ILandroid/view/Surface;III)V
.end method
