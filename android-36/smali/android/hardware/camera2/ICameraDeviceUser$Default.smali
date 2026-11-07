.class public Landroid/hardware/camera2/ICameraDeviceUser$Default;
.super Ljava/lang/Object;
.source "ICameraDeviceUser.java"

# interfaces
.implements Landroid/hardware/camera2/ICameraDeviceUser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/ICameraDeviceUser;
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

    .line 217
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist beginConfigure()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    return-void
.end method

.method public blacklist cancelRequest(I)J
    .registers 4
    .param p1, "requestId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist createDefaultRequest(I)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .registers 3
    .param p1, "templateId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 144
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist createInputStream(IIIZ)I
    .registers 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I
    .param p4, "isMultiResolution"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist createStream(Landroid/hardware/camera2/params/OutputConfiguration;)I
    .registers 3
    .param p1, "outputConfiguration"    # Landroid/hardware/camera2/params/OutputConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist deleteStream(I)V
    .registers 2
    .param p1, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    return-void
.end method

.method public blacklist disconnect()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public blacklist endConfigure(ILandroid/hardware/camera2/impl/CameraMetadataNative;J)[I
    .registers 6
    .param p1, "operatingMode"    # I
    .param p2, "sessionParams"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p3, "startTimeMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist finalizeOutputConfigurations(ILandroid/hardware/camera2/params/OutputConfiguration;)V
    .registers 3
    .param p1, "streamId"    # I
    .param p2, "outputConfiguration"    # Landroid/hardware/camera2/params/OutputConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 171
    return-void
.end method

.method public blacklist flush()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getCameraInfo()Landroid/hardware/camera2/impl/CameraMetadataNative;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 148
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCaptureResultMetadataQueue()Landroid/hardware/common/fmq/MQDescriptor;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/hardware/common/fmq/MQDescriptor<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 174
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getGlobalAudioRestriction()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getInputSurface()Landroid/view/Surface;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist isPrimaryClient()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSessionConfigurationSupported(Landroid/hardware/camera2/params/SessionConfiguration;)Z
    .registers 3
    .param p1, "sessionConfiguration"    # Landroid/hardware/camera2/params/SessionConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist prepare(I)V
    .registers 2
    .param p1, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 159
    return-void
.end method

.method public blacklist prepare2(II)V
    .registers 3
    .param p1, "maxCount"    # I
    .param p2, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 165
    return-void
.end method

.method public blacklist setCameraAudioRestriction(I)V
    .registers 2
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 183
    return-void
.end method

.method public blacklist startStreaming([I[I)Landroid/hardware/camera2/utils/SubmitInfo;
    .registers 4
    .param p1, "streamIdxArray"    # [I
    .param p2, "surfaceIdxArray"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist submitRequest(Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;
    .registers 4
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "streaming"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist submitRequestList([Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;
    .registers 4
    .param p1, "requestList"    # [Landroid/hardware/camera2/CaptureRequest;
    .param p2, "streaming"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist switchToOffline(Landroid/hardware/camera2/ICameraDeviceCallbacks;[I)Landroid/hardware/camera2/ICameraOfflineSession;
    .registers 4
    .param p1, "callbacks"    # Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .param p2, "offlineOutputIds"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 203
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist tearDown(I)V
    .registers 2
    .param p1, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 162
    return-void
.end method

.method public blacklist updateOutputConfiguration(ILandroid/hardware/camera2/params/OutputConfiguration;)V
    .registers 3
    .param p1, "streamId"    # I
    .param p2, "outputConfiguration"    # Landroid/hardware/camera2/params/OutputConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 168
    return-void
.end method

.method public blacklist waitUntilIdle()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 152
    return-void
.end method
