.class public interface abstract Landroid/media/IRemoteSessionCallback;
.super Ljava/lang/Object;
.source "IRemoteSessionCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IRemoteSessionCallback$Stub;,
        Landroid/media/IRemoteSessionCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.IRemoteSessionCallback"


# virtual methods
.method public abstract blacklist onSessionChanged(Landroid/media/session/MediaSession$Token;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onVolumeChanged(Landroid/media/session/MediaSession$Token;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
