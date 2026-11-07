.class public interface abstract Landroid/companion/virtual/camera/IVirtualCameraCallback;
.super Ljava/lang/Object;
.source "IVirtualCameraCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/camera/IVirtualCameraCallback$Stub;,
        Landroid/companion/virtual/camera/IVirtualCameraCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.companion.virtual.camera.IVirtualCameraCallback"


# virtual methods
.method public abstract blacklist onProcessCaptureRequest(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onStreamClosed(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onStreamConfigured(ILandroid/view/Surface;III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
