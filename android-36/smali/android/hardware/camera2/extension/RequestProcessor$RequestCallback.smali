.class public interface abstract Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;
.super Ljava/lang/Object;
.source "RequestProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/extension/RequestProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RequestCallback"
.end annotation


# virtual methods
.method public abstract whitelist onCaptureBufferLost(Landroid/hardware/camera2/extension/RequestProcessor$Request;JI)V
.end method

.method public abstract whitelist onCaptureCompleted(Landroid/hardware/camera2/extension/RequestProcessor$Request;Landroid/hardware/camera2/TotalCaptureResult;)V
.end method

.method public abstract whitelist onCaptureFailed(Landroid/hardware/camera2/extension/RequestProcessor$Request;Landroid/hardware/camera2/CaptureFailure;)V
.end method

.method public abstract whitelist onCaptureProgressed(Landroid/hardware/camera2/extension/RequestProcessor$Request;Landroid/hardware/camera2/CaptureResult;)V
.end method

.method public abstract whitelist onCaptureSequenceAborted(I)V
.end method

.method public abstract whitelist onCaptureSequenceCompleted(IJ)V
.end method

.method public abstract whitelist onCaptureStarted(Landroid/hardware/camera2/extension/RequestProcessor$Request;JJ)V
.end method
