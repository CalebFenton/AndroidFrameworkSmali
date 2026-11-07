.class public interface abstract Landroid/media/musicrecognition/MusicRecognitionService$Callback;
.super Ljava/lang/Object;
.source "MusicRecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/musicrecognition/MusicRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract whitelist onRecognitionFailed(I)V
.end method

.method public abstract whitelist onRecognitionSucceeded(Landroid/media/MediaMetadata;Landroid/os/Bundle;)V
.end method
