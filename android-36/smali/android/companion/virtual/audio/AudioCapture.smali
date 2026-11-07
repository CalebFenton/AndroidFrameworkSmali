.class public final Landroid/companion/virtual/audio/AudioCapture;
.super Ljava/lang/Object;
.source "AudioCapture.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "AudioCapture"


# instance fields
.field private final blacklist mAudioFormat:Landroid/media/AudioFormat;

.field private blacklist mAudioRecord:Landroid/media/AudioRecord;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mRecordingState:I


# direct methods
.method constructor blacklist <init>(Landroid/media/AudioFormat;)V
    .registers 3
    .param p1, "audioFormat"    # Landroid/media/AudioFormat;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/audio/AudioCapture;->mLock:Ljava/lang/Object;

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Landroid/companion/virtual/audio/AudioCapture;->mRecordingState:I

    .line 94
    iput-object p1, p0, Landroid/companion/virtual/audio/AudioCapture;->mAudioFormat:Landroid/media/AudioFormat;

    .line 95
    return-void
.end method


# virtual methods
.method blacklist close()V
    .registers 3

    .line 98
    iget-object v0, p0, Landroid/companion/virtual/audio/AudioCapture;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 99
    :try_start_3
    iget-object v1, p0, Landroid/companion/virtual/audio/AudioCapture;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v1, :cond_f

    .line 100
    iget-object v1, p0, Landroid/companion/virtual/audio/AudioCapture;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    .line 101
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/companion/virtual/audio/AudioCapture;->mAudioRecord:Landroid/media/AudioRecord;

    .line 103
    :cond_f
    monitor-exit v0

    .line 104
    return-void

    .line 103
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public whitelist getFormat()Landroid/media/AudioFormat;
    .registers 2

    .line 108
    iget-object v0, p0, Landroid/companion/virtual/audio/AudioCapture;->mAudioFormat:Landroid/media/AudioFormat;

    return-object v0
.end method

.method public whitelist getRecordingState()I
    .registers 3

    .line 204
    iget-object v0, p0, Landroid/companion/virtual/audio/AudioCapture;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 205
    :try_start_3
    iget v1, p0, Landroid/companion/virtual/audio/AudioCapture;->mRecordingState:I

    monitor-exit v0

    return v1

    .line 206
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public whitelist read(Ljava/nio/ByteBuffer;I)I
    .registers 4
    .param p1, "audioBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "sizeInBytes"    # I

    .line 132
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/companion/virtual/audio/AudioCapture;->read(Ljava/nio/ByteBuffer;II)I

    move-result v0

    return v0
.end method

.method public whitelist read(Ljava/nio/ByteBuffer;II)I
    .registers 6
    .param p1, "audioBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "sizeInBytes"    # I
    .param p3, "readMode"    # I

    .line 139
    iget-object v0, p0, Landroid/companion/virtual/audio/AudioCapture;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 140
    :try_start_3
    iget-object v1, p0, Landroid/companion/virtual/audio/AudioCapture;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v1, :cond_e

    .line 141
    iget-object v1, p0, Landroid/companion/virtual/audio/AudioCapture;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1, p1, p2, p3}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;II)I

    move-result v1

    .local v1, "sizeRead":I
    goto :goto_f

    .line 143
    .end local v1    # "sizeRead":I
    :cond_e
    const/4 v1, 0x0

    .line 145
    .restart local v1    # "sizeRead":I
    :goto_f
    monitor-exit v0

    .line 146
    return v1

    .line 145
    .end local v1    # "sizeRead":I
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public whitelist read([BII)I
    .registers 5
    .param p1, "audioData"    # [B
    .param p2, "offsetInBytes"    # I
    .param p3, "sizeInBytes"    # I

    .line 113
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/companion/virtual/audio/AudioCapture;->read([BIII)I

    move-result v0

    return v0
.end method

.method public whitelist read([BIII)I
    .registers 7
    .param p1, "audioData"    # [B
    .param p2, "offsetInBytes"    # I
    .param p3, "sizeInBytes"    # I
    .param p4, "readMode"    # I

    .line 120
    iget-object v0, p0, Landroid/companion/virtual/audio/AudioCapture;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    :try_start_3
    iget-object v1, p0, Landroid/companion/virtual/audio/AudioCapture;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v1, :cond_e

    .line 122
    iget-object v1, p0, Landroid/companion/virtual/audio/AudioCapture;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/media/AudioRecord;->read([BIII)I

    move-result v1

    .local v1, "sizeRead":I
    goto :goto_f

    .line 124
    .end local v1    # "sizeRead":I
    :cond_e
    const/4 v1, 0x0

    .line 126
    .restart local v1    # "sizeRead":I
    :goto_f
    monitor-exit v0

    .line 127
    return v1

    .line 126
    .end local v1    # "sizeRead":I
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public whitelist read([FIII)I
    .registers 7
    .param p1, "audioData"    # [F
    .param p2, "offsetInFloats"    # I
    .param p3, "sizeInFloats"    # I
    .param p4, "readMode"    # I

    .line 153
    iget-object v0, p0, Landroid/companion/virtual/audio/AudioCapture;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 154
    :try_start_3
    iget-object v1, p0, Landroid/companion/virtual/audio/AudioCapture;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v1, :cond_e

    .line 155
    iget-object v1, p0, Landroid/companion/virtual/audio/AudioCapture;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/media/AudioRecord;->read([FIII)I

    move-result v1

    .local v1, "sizeRead":I
    goto :goto_f

    .line 157
    .end local v1    # "sizeRead":I
    :cond_e
    const/4 v1, 0x0

    .line 159
    .restart local v1    # "sizeRead":I
    :goto_f
    monitor-exit v0

    .line 160
    return v1

    .line 159
    .end local v1    # "sizeRead":I
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public whitelist read([SII)I
    .registers 5
    .param p1, "audioData"    # [S
    .param p2, "offsetInShorts"    # I
    .param p3, "sizeInShorts"    # I

    .line 165
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/companion/virtual/audio/AudioCapture;->read([SIII)I

    move-result v0

    return v0
.end method

.method public whitelist read([SIII)I
    .registers 7
    .param p1, "audioData"    # [S
    .param p2, "offsetInShorts"    # I
    .param p3, "sizeInShorts"    # I
    .param p4, "readMode"    # I

    .line 172
    iget-object v0, p0, Landroid/companion/virtual/audio/AudioCapture;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 173
    :try_start_3
    iget-object v1, p0, Landroid/companion/virtual/audio/AudioCapture;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v1, :cond_e

    .line 174
    iget-object v1, p0, Landroid/companion/virtual/audio/AudioCapture;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/media/AudioRecord;->read([SIII)I

    move-result v1

    .local v1, "sizeRead":I
    goto :goto_f

    .line 176
    .end local v1    # "sizeRead":I
    :cond_e
    const/4 v1, 0x0

    .line 178
    .restart local v1    # "sizeRead":I
    :goto_f
    monitor-exit v0

    .line 179
    return v1

    .line 178
    .end local v1    # "sizeRead":I
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method blacklist setAudioRecord(Landroid/media/AudioRecord;)V
    .registers 6
    .param p1, "audioRecord"    # Landroid/media/AudioRecord;

    .line 67
    const-string v0, "AudioCapture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set AudioRecord with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Landroid/companion/virtual/audio/AudioCapture;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    if-eqz p1, :cond_4a

    .line 71
    :try_start_1e
    invoke-virtual {p1}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_41

    .line 75
    iget v1, p0, Landroid/companion/virtual/audio/AudioCapture;->mRecordingState:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_33

    .line 76
    invoke-virtual {p1}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v1

    if-eq v1, v3, :cond_33

    .line 77
    invoke-virtual {p1}, Landroid/media/AudioRecord;->startRecording()V

    .line 79
    :cond_33
    iget v1, p0, Landroid/companion/virtual/audio/AudioCapture;->mRecordingState:I

    if-ne v1, v2, :cond_4a

    .line 80
    invoke-virtual {p1}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v1

    if-eq v1, v2, :cond_4a

    .line 81
    invoke-virtual {p1}, Landroid/media/AudioRecord;->stop()V

    goto :goto_4a

    .line 72
    :cond_41
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "set an uninitialized AudioRecord."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/companion/virtual/audio/AudioCapture;
    .end local p1    # "audioRecord":Landroid/media/AudioRecord;
    throw v1

    .line 86
    .restart local p0    # "this":Landroid/companion/virtual/audio/AudioCapture;
    .restart local p1    # "audioRecord":Landroid/media/AudioRecord;
    :cond_4a
    :goto_4a
    iget-object v1, p0, Landroid/companion/virtual/audio/AudioCapture;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v1, :cond_53

    .line 87
    iget-object v1, p0, Landroid/companion/virtual/audio/AudioCapture;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    .line 89
    :cond_53
    iput-object p1, p0, Landroid/companion/virtual/audio/AudioCapture;->mAudioRecord:Landroid/media/AudioRecord;

    .line 90
    monitor-exit v0

    .line 91
    return-void

    .line 90
    :catchall_57
    move-exception v1

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_1e .. :try_end_59} :catchall_57

    throw v1
.end method

.method public whitelist startRecording()V
    .registers 4

    .line 184
    iget-object v0, p0, Landroid/companion/virtual/audio/AudioCapture;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 185
    const/4 v1, 0x3

    :try_start_4
    iput v1, p0, Landroid/companion/virtual/audio/AudioCapture;->mRecordingState:I

    .line 186
    iget-object v2, p0, Landroid/companion/virtual/audio/AudioCapture;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v2, :cond_17

    iget-object v2, p0, Landroid/companion/virtual/audio/AudioCapture;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v2

    if-eq v2, v1, :cond_17

    .line 187
    iget-object v1, p0, Landroid/companion/virtual/audio/AudioCapture;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->startRecording()V

    .line 189
    :cond_17
    monitor-exit v0

    .line 190
    return-void

    .line 189
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public whitelist stop()V
    .registers 4

    .line 194
    iget-object v0, p0, Landroid/companion/virtual/audio/AudioCapture;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 195
    const/4 v1, 0x1

    :try_start_4
    iput v1, p0, Landroid/companion/virtual/audio/AudioCapture;->mRecordingState:I

    .line 196
    iget-object v2, p0, Landroid/companion/virtual/audio/AudioCapture;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v2, :cond_17

    iget-object v2, p0, Landroid/companion/virtual/audio/AudioCapture;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v2

    if-eq v2, v1, :cond_17

    .line 197
    iget-object v1, p0, Landroid/companion/virtual/audio/AudioCapture;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V

    .line 199
    :cond_17
    monitor-exit v0

    .line 200
    return-void

    .line 199
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_19

    throw v1
.end method
