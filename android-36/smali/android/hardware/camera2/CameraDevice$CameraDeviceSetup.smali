.class public abstract Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;
.super Ljava/lang/Object;
.source "CameraDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CameraDeviceSetup"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 1916
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation
.end method

.method public abstract whitelist getId()Ljava/lang/String;
.end method

.method public abstract whitelist getSessionCharacteristics(Landroid/hardware/camera2/params/SessionConfiguration;)Landroid/hardware/camera2/CameraCharacteristics;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation
.end method

.method public abstract whitelist isSessionConfigurationSupported(Landroid/hardware/camera2/params/SessionConfiguration;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation
.end method

.method public abstract whitelist openCamera(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraDevice$StateCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation
.end method
