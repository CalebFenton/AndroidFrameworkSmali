.class public interface abstract Landroid/hardware/camera2/extension/IImageProcessorImpl;
.super Ljava/lang/Object;
.source "IImageProcessorImpl.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/extension/IImageProcessorImpl$Stub;,
        Landroid/hardware/camera2/extension/IImageProcessorImpl$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.hardware.camera2.extension.IImageProcessorImpl"


# virtual methods
.method public abstract blacklist onNextImageAvailable(Landroid/hardware/camera2/extension/OutputConfigId;Landroid/hardware/camera2/extension/ParcelImage;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
