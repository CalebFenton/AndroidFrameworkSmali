.class public interface abstract Landroid/media/musicrecognition/IMusicRecognitionServiceCallback;
.super Ljava/lang/Object;
.source "IMusicRecognitionServiceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/musicrecognition/IMusicRecognitionServiceCallback$Stub;,
        Landroid/media/musicrecognition/IMusicRecognitionServiceCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.musicrecognition.IMusicRecognitionServiceCallback"


# virtual methods
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
