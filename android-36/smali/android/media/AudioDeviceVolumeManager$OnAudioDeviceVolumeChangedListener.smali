.class public interface abstract Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;
.super Ljava/lang/Object;
.source "AudioDeviceVolumeManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioDeviceVolumeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnAudioDeviceVolumeChangedListener"
.end annotation


# virtual methods
.method public abstract blacklist onAudioDeviceVolumeAdjusted(Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;II)V
.end method

.method public abstract blacklist onAudioDeviceVolumeChanged(Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;)V
.end method
