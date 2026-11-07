.class public interface abstract Landroid/hardware/camera2/ICameraDeviceUser;
.super Ljava/lang/Object;
.source "ICameraDeviceUser.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/ICameraDeviceUser$Stub;,
        Landroid/hardware/camera2/ICameraDeviceUser$Default;
    }
.end annotation


# static fields
.field public static final blacklist AUDIO_RESTRICTION_NONE:I = 0x0

.field public static final blacklist AUDIO_RESTRICTION_VIBRATION:I = 0x1

.field public static final blacklist AUDIO_RESTRICTION_VIBRATION_SOUND:I = 0x3

.field public static final greylist-max-o CONSTRAINED_HIGH_SPEED_MODE:I = 0x1

.field public static final greylist-max-o NORMAL_MODE:I = 0x0

.field public static final greylist-max-o NO_IN_FLIGHT_REPEATING_FRAMES:I = -0x1

.field public static final blacklist SHARED_MODE:I = 0x2

.field public static final greylist-max-o TEMPLATE_MANUAL:I = 0x6

.field public static final greylist-max-o TEMPLATE_PREVIEW:I = 0x1

.field public static final greylist-max-o TEMPLATE_RECORD:I = 0x3

.field public static final greylist-max-o TEMPLATE_STILL_CAPTURE:I = 0x2

.field public static final greylist-max-o TEMPLATE_VIDEO_SNAPSHOT:I = 0x4

.field public static final greylist-max-o TEMPLATE_ZERO_SHUTTER_LAG:I = 0x5

.field public static final greylist-max-o VENDOR_MODE_START:I = 0x8000


# virtual methods
.method public abstract greylist-max-o beginConfigure()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o cancelRequest(I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o createDefaultRequest(I)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist createInputStream(IIIZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o createStream(Landroid/hardware/camera2/params/OutputConfiguration;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o deleteStream(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o disconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist endConfigure(ILandroid/hardware/camera2/impl/CameraMetadataNative;J)[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o finalizeOutputConfigurations(ILandroid/hardware/camera2/params/OutputConfiguration;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o flush()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o getCameraInfo()Landroid/hardware/camera2/impl/CameraMetadataNative;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getCaptureResultMetadataQueue()Landroid/hardware/common/fmq/MQDescriptor;
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
.end method

.method public abstract blacklist getGlobalAudioRestriction()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o getInputSurface()Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist isPrimaryClient()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist isSessionConfigurationSupported(Landroid/hardware/camera2/params/SessionConfiguration;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o prepare(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o prepare2(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setCameraAudioRestriction(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist startStreaming([I[I)Landroid/hardware/camera2/utils/SubmitInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o submitRequest(Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o submitRequestList([Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist switchToOffline(Landroid/hardware/camera2/ICameraDeviceCallbacks;[I)Landroid/hardware/camera2/ICameraOfflineSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o tearDown(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o updateOutputConfiguration(ILandroid/hardware/camera2/params/OutputConfiguration;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o waitUntilIdle()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
