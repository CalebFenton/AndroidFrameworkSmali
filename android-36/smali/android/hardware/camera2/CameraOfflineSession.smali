.class public abstract Landroid/hardware/camera2/CameraOfflineSession;
.super Landroid/hardware/camera2/CameraCaptureSession;
.source "CameraOfflineSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;
    }
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist test-api close()V
.end method
