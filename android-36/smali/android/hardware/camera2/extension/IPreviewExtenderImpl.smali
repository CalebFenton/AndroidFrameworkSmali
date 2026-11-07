.class public interface abstract Landroid/hardware/camera2/extension/IPreviewExtenderImpl;
.super Ljava/lang/Object;
.source "IPreviewExtenderImpl.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub;,
        Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.hardware.camera2.extension.IPreviewExtenderImpl"

.field public static final blacklist PROCESSOR_TYPE_IMAGE_PROCESSOR:I = 0x1

.field public static final blacklist PROCESSOR_TYPE_NONE:I = 0x2

.field public static final blacklist PROCESSOR_TYPE_REQUEST_UPDATE_ONLY:I


# virtual methods
.method public abstract blacklist getCaptureStage()Landroid/hardware/camera2/extension/CaptureStageImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getPreviewImageProcessor()Landroid/hardware/camera2/extension/IPreviewImageProcessorImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getProcessorType()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getRequestUpdateProcessor()Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getSessionType()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getSupportedResolutions()Ljava/util/List;
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
.end method

.method public abstract blacklist init(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist isExtensionAvailable(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onDeInit(Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onDisableSession()Landroid/hardware/camera2/extension/CaptureStageImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onEnableSession()Landroid/hardware/camera2/extension/CaptureStageImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onInit(Landroid/os/IBinder;Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onPresetSession()Landroid/hardware/camera2/extension/CaptureStageImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
