.class public abstract Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.super Ljava/lang/Object;
.source "CameraCaptureSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraCaptureSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StateCallback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 1031
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onActive(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 2
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 1097
    return-void
.end method

.method public whitelist onCaptureQueueEmpty(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 2
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 1127
    return-void
.end method

.method public whitelist onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 2
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 1145
    return-void
.end method

.method public abstract whitelist onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
.end method

.method public abstract whitelist onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
.end method

.method public whitelist onReady(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 2
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 1081
    return-void
.end method

.method public whitelist onSurfacePrepared(Landroid/hardware/camera2/CameraCaptureSession;Landroid/view/Surface;)V
    .registers 3
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "surface"    # Landroid/view/Surface;

    .line 1165
    return-void
.end method
