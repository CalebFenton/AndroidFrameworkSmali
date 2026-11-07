.class public interface abstract Landroid/hardware/camera2/extension/IProcessResultImpl;
.super Ljava/lang/Object;
.source "IProcessResultImpl.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/extension/IProcessResultImpl$Stub;,
        Landroid/hardware/camera2/extension/IProcessResultImpl$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.hardware.camera2.extension.IProcessResultImpl"


# virtual methods
.method public abstract blacklist onCaptureCompleted(JLandroid/hardware/camera2/impl/CameraMetadataNative;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onCaptureProcessProgressed(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
