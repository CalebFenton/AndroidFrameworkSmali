.class public Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl$Default;
.super Ljava/lang/Object;
.source "IImageCaptureExtenderImpl.java"

# interfaces
.implements Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;
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

    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAvailableCaptureRequestKeys()Landroid/hardware/camera2/impl/CameraMetadataNative;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAvailableCaptureResultKeys()Landroid/hardware/camera2/impl/CameraMetadataNative;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCaptureProcessor()Landroid/hardware/camera2/extension/ICaptureProcessorImpl;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCaptureStages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/CaptureStageImpl;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getEstimatedCaptureLatencyRange(Landroid/hardware/camera2/extension/Size;)Landroid/hardware/camera2/extension/LatencyRange;
    .registers 3
    .param p1, "outputSize"    # Landroid/hardware/camera2/extension/Size;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMaxCaptureStage()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getRealtimeCaptureLatency()Landroid/hardware/camera2/extension/LatencyPair;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSessionType()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSupportedPostviewResolutions(Landroid/hardware/camera2/extension/Size;)Ljava/util/List;
    .registers 3
    .param p1, "captureSize"    # Landroid/hardware/camera2/extension/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/extension/Size;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/SizeList;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSupportedResolutions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/SizeList;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist init(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    .registers 3
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "chars"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    return-void
.end method

.method public blacklist isCaptureProcessProgressAvailable()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isExtensionAvailable(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)Z
    .registers 4
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "chars"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isPostviewAvailable()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onDeInit(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist onDisableSession()Landroid/hardware/camera2/extension/CaptureStageImpl;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onEnableSession()Landroid/hardware/camera2/extension/CaptureStageImpl;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onInit(Landroid/os/IBinder;Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "cameraId"    # Ljava/lang/String;
    .param p3, "cameraCharacteristics"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public blacklist onPresetSession()Landroid/hardware/camera2/extension/CaptureStageImpl;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    const/4 v0, 0x0

    return-object v0
.end method
