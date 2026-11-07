.class public interface abstract Landroid/media/tv/extension/cam/ICamAppInfoService;
.super Ljava/lang/Object;
.source "ICamAppInfoService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/cam/ICamAppInfoService$Stub;,
        Landroid/media/tv/extension/cam/ICamAppInfoService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.cam.ICamAppInfoService"


# virtual methods
.method public abstract blacklist addCamAppInfoListener(Landroid/media/tv/extension/cam/ICamAppInfoListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getCamAppInfo(ILandroid/os/Bundle;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist removeCamAppInfoListener(Landroid/media/tv/extension/cam/ICamAppInfoListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
