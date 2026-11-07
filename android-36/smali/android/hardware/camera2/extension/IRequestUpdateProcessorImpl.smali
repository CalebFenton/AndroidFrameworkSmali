.class public interface abstract Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl;
.super Ljava/lang/Object;
.source "IRequestUpdateProcessorImpl.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl$Stub;,
        Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.hardware.camera2.extension.IRequestUpdateProcessorImpl"


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

.method public abstract blacklist process(Landroid/hardware/camera2/impl/CameraMetadataNative;I)Landroid/hardware/camera2/extension/CaptureStageImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
