.class public interface abstract Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;
.super Ljava/lang/Object;
.source "IMusicRecognitionManagerCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/musicrecognition/IMusicRecognitionManagerCallback$Stub;,
        Landroid/media/musicrecognition/IMusicRecognitionManagerCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.musicrecognition.IMusicRecognitionManagerCallback"


# virtual methods
.method public abstract blacklist onAudioStreamClosed()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onRecognitionFailed(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onRecognitionSucceeded(Landroid/media/MediaMetadata;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
