.class public interface abstract Landroid/media/tv/extension/cam/ICamAppInfoListener;
.super Ljava/lang/Object;
.source "ICamAppInfoListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/cam/ICamAppInfoListener$Stub;,
        Landroid/media/tv/extension/cam/ICamAppInfoListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.cam.ICamAppInfoListener"


# virtual methods
.method public abstract blacklist onCamAppInfoChanged(ILandroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
