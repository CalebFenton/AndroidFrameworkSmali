.class public interface abstract Landroid/media/tv/extension/cam/IContentControlService;
.super Ljava/lang/Object;
.source "IContentControlService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/cam/IContentControlService$Stub;,
        Landroid/media/tv/extension/cam/IContentControlService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.cam.IContentControlService"


# virtual methods
.method public abstract blacklist addCamDrmInfoListener(Landroid/media/tv/extension/cam/ICamDrmInfoListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getCamDrmInfo(ILandroid/os/Bundle;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist removeCamDrmInfoListener(Landroid/media/tv/extension/cam/ICamDrmInfoListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
