.class public interface abstract Landroid/media/tv/extension/cam/ICamHostControlInfoListener;
.super Ljava/lang/Object;
.source "ICamHostControlInfoListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/cam/ICamHostControlInfoListener$Stub;,
        Landroid/media/tv/extension/cam/ICamHostControlInfoListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.cam.ICamHostControlInfoListener"


# virtual methods
.method public abstract blacklist onCamHostControlInfoChanged(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
