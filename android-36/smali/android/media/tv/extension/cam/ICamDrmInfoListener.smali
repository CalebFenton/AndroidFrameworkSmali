.class public interface abstract Landroid/media/tv/extension/cam/ICamDrmInfoListener;
.super Ljava/lang/Object;
.source "ICamDrmInfoListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/cam/ICamDrmInfoListener$Stub;,
        Landroid/media/tv/extension/cam/ICamDrmInfoListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.cam.ICamDrmInfoListener"


# virtual methods
.method public abstract blacklist onCamDrmInfoChanged(ILandroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
