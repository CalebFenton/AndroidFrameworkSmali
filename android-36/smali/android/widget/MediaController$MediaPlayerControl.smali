.class public interface abstract Landroid/widget/MediaController$MediaPlayerControl;
.super Ljava/lang/Object;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MediaPlayerControl"
.end annotation


# virtual methods
.method public abstract whitelist canPause()Z
.end method

.method public abstract whitelist canSeekBackward()Z
.end method

.method public abstract whitelist canSeekForward()Z
.end method

.method public abstract whitelist getAudioSessionId()I
.end method

.method public abstract whitelist getBufferPercentage()I
.end method

.method public abstract whitelist getCurrentPosition()I
.end method

.method public abstract whitelist getDuration()I
.end method

.method public abstract whitelist isPlaying()Z
.end method

.method public abstract whitelist pause()V
.end method

.method public abstract whitelist seekTo(I)V
.end method

.method public abstract whitelist start()V
.end method
