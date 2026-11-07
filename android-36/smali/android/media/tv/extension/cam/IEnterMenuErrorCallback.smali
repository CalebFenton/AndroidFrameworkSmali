.class public interface abstract Landroid/media/tv/extension/cam/IEnterMenuErrorCallback;
.super Ljava/lang/Object;
.source "IEnterMenuErrorCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/cam/IEnterMenuErrorCallback$Stub;,
        Landroid/media/tv/extension/cam/IEnterMenuErrorCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.cam.IEnterMenuErrorCallback"


# virtual methods
.method public abstract blacklist onAppInfoEnterMenuError()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
