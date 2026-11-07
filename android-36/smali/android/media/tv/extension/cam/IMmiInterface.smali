.class public interface abstract Landroid/media/tv/extension/cam/IMmiInterface;
.super Ljava/lang/Object;
.source "IMmiInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/cam/IMmiInterface$Stub;,
        Landroid/media/tv/extension/cam/IMmiInterface$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.cam.IMmiInterface"


# virtual methods
.method public abstract blacklist appInfoEnterMenu(ILandroid/media/tv/extension/cam/IEnterMenuErrorCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist openSession(ILandroid/media/tv/extension/cam/IMmiStatusCallback;)Landroid/media/tv/extension/cam/IMmiSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
