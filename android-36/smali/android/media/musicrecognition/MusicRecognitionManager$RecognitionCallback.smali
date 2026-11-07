.class public interface abstract Landroid/media/musicrecognition/MusicRecognitionManager$RecognitionCallback;
.super Ljava/lang/Object;
.source "MusicRecognitionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/musicrecognition/MusicRecognitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RecognitionCallback"
.end annotation


# virtual methods
.method public abstract whitelist onAudioStreamClosed()V
.end method

.method public abstract whitelist onRecognitionFailed(Landroid/media/musicrecognition/RecognitionRequest;I)V
.end method

.method public abstract whitelist onRecognitionSucceeded(Landroid/media/musicrecognition/RecognitionRequest;Landroid/media/MediaMetadata;Landroid/os/Bundle;)V
.end method
