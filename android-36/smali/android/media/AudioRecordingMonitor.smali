.class public interface abstract Landroid/media/AudioRecordingMonitor;
.super Ljava/lang/Object;
.source "AudioRecordingMonitor.java"


# virtual methods
.method public abstract whitelist getActiveRecordingConfiguration()Landroid/media/AudioRecordingConfiguration;
.end method

.method public abstract whitelist registerAudioRecordingCallback(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$AudioRecordingCallback;)V
.end method

.method public abstract whitelist unregisterAudioRecordingCallback(Landroid/media/AudioManager$AudioRecordingCallback;)V
.end method
