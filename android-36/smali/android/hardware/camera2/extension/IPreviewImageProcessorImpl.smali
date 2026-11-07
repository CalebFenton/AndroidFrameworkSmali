.class public interface abstract Landroid/hardware/camera2/extension/IPreviewImageProcessorImpl;
.super Ljava/lang/Object;
.source "IPreviewImageProcessorImpl.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/extension/IPreviewImageProcessorImpl$Stub;,
        Landroid/hardware/camera2/extension/IPreviewImageProcessorImpl$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.hardware.camera2.extension.IPreviewImageProcessorImpl"


# virtual methods
.method public abstract blacklist onImageFormatUpdate(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onOutputSurface(Landroid/view/Surface;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onResolutionUpdate(Landroid/hardware/camera2/extension/Size;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist process(Landroid/hardware/camera2/extension/ParcelImage;Landroid/hardware/camera2/impl/CameraMetadataNative;ILandroid/hardware/camera2/extension/IProcessResultImpl;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
