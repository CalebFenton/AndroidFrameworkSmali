.class public interface abstract Landroid/media/tv/extension/cam/ICamHostControlService;
.super Ljava/lang/Object;
.source "ICamHostControlService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/cam/ICamHostControlService$Stub;,
        Landroid/media/tv/extension/cam/ICamHostControlService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.cam.ICamHostControlService"


# virtual methods
.method public abstract blacklist addCamHostcontrolInfoListener(Landroid/media/tv/extension/cam/ICamHostControlInfoListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist removeCamHostcontrolInfoListener(Landroid/media/tv/extension/cam/ICamHostControlInfoListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist sendCamHostControlAskRelease(Ljava/lang/String;Landroid/media/tv/extension/cam/ICamHostControlAskReleaseReplyCallback;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setHostControlMode(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
