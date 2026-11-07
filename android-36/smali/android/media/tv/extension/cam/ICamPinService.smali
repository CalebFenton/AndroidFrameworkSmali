.class public interface abstract Landroid/media/tv/extension/cam/ICamPinService;
.super Ljava/lang/Object;
.source "ICamPinService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/cam/ICamPinService$Stub;,
        Landroid/media/tv/extension/cam/ICamPinService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.cam.ICamPinService"


# virtual methods
.method public abstract blacklist addCamPinCapabilityListener(Landroid/media/tv/extension/cam/ICamPinCapabilityListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getCamPinCapability(ILandroid/os/Bundle;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist removeCamPinCapabilityListener(Landroid/media/tv/extension/cam/ICamPinCapabilityListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist requestCamPinValidation(I[ILandroid/media/tv/extension/cam/ICamPinStatusListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
