.class public interface abstract Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;
.super Ljava/lang/Object;
.source "VirtualAudioDevice.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/audio/VirtualAudioDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AudioConfigurationChangeCallback"
.end annotation


# virtual methods
.method public abstract whitelist onPlaybackConfigChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract whitelist onRecordingConfigChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;)V"
        }
    .end annotation
.end method
