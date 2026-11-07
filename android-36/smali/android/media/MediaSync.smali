.class public final Landroid/media/MediaSync;
.super Ljava/lang/Object;
.source "MediaSync.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaSync$Callback;,
        Landroid/media/MediaSync$OnErrorListener;,
        Landroid/media/MediaSync$AudioBuffer;
    }
.end annotation


# static fields
.field private static final greylist-max-o CB_RETURN_AUDIO_BUFFER:I = 0x1

.field private static final greylist-max-o EVENT_CALLBACK:I = 0x1

.field private static final greylist-max-o EVENT_SET_CALLBACK:I = 0x2

.field public static final whitelist MEDIASYNC_ERROR_AUDIOTRACK_FAIL:I = 0x1

.field public static final whitelist MEDIASYNC_ERROR_SURFACE_FAIL:I = 0x2

.field private static final greylist-max-o TAG:Ljava/lang/String; = "MediaSync"


# instance fields
.field private greylist-max-o mAudioBuffers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/MediaSync$AudioBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mAudioHandler:Landroid/os/Handler;

.field private final greylist-max-o mAudioLock:Ljava/lang/Object;

.field private greylist-max-o mAudioLooper:Landroid/os/Looper;

.field private greylist-max-o mAudioThread:Ljava/lang/Thread;

.field private greylist-max-o mAudioTrack:Landroid/media/AudioTrack;

.field private greylist-max-o mCallback:Landroid/media/MediaSync$Callback;

.field private greylist-max-o mCallbackHandler:Landroid/os/Handler;

.field private final greylist-max-o mCallbackLock:Ljava/lang/Object;

.field private greylist-max-o mNativeContext:J

.field private greylist-max-o mOnErrorListener:Landroid/media/MediaSync$OnErrorListener;

.field private greylist-max-o mOnErrorListenerHandler:Landroid/os/Handler;

.field private final greylist-max-o mOnErrorListenerLock:Ljava/lang/Object;

.field private greylist-max-o mPlaybackRate:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAudioBuffers(Landroid/media/MediaSync;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaSync;->mAudioBuffers:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAudioLock(Landroid/media/MediaSync;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaSync;->mAudioLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAudioTrack(Landroid/media/MediaSync;)Landroid/media/AudioTrack;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaSync;->mAudioTrack:Landroid/media/AudioTrack;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/media/MediaSync;)Landroid/media/MediaSync$Callback;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaSync;->mCallback:Landroid/media/MediaSync$Callback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallbackHandler(Landroid/media/MediaSync;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaSync;->mCallbackHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallbackLock(Landroid/media/MediaSync;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaSync;->mCallbackLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPlaybackRate(Landroid/media/MediaSync;)F
    .registers 1

    iget p0, p0, Landroid/media/MediaSync;->mPlaybackRate:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAudioHandler(Landroid/media/MediaSync;Landroid/os/Handler;)V
    .registers 2

    iput-object p1, p0, Landroid/media/MediaSync;->mAudioHandler:Landroid/os/Handler;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAudioLooper(Landroid/media/MediaSync;Landroid/os/Looper;)V
    .registers 2

    iput-object p1, p0, Landroid/media/MediaSync;->mAudioLooper:Landroid/os/Looper;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnative_getPlayTimeForPendingAudioFrames(Landroid/media/MediaSync;)J
    .registers 3

    invoke-direct {p0}, Landroid/media/MediaSync;->native_getPlayTimeForPendingAudioFrames()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$mnative_updateQueuedAudioData(Landroid/media/MediaSync;IJ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaSync;->native_updateQueuedAudioData(IJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mpostRenderAudio(Landroid/media/MediaSync;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/MediaSync;->postRenderAudio(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mpostReturnByteBuffer(Landroid/media/MediaSync;Landroid/media/MediaSync$AudioBuffer;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/MediaSync;->postReturnByteBuffer(Landroid/media/MediaSync$AudioBuffer;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 638
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 639
    invoke-static {}, Landroid/media/MediaSync;->native_init()V

    .line 640
    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/MediaSync;->mCallbackLock:Ljava/lang/Object;

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaSync;->mCallbackHandler:Landroid/os/Handler;

    .line 187
    iput-object v0, p0, Landroid/media/MediaSync;->mCallback:Landroid/media/MediaSync$Callback;

    .line 189
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/MediaSync;->mOnErrorListenerLock:Ljava/lang/Object;

    .line 190
    iput-object v0, p0, Landroid/media/MediaSync;->mOnErrorListenerHandler:Landroid/os/Handler;

    .line 191
    iput-object v0, p0, Landroid/media/MediaSync;->mOnErrorListener:Landroid/media/MediaSync$OnErrorListener;

    .line 193
    iput-object v0, p0, Landroid/media/MediaSync;->mAudioThread:Ljava/lang/Thread;

    .line 196
    iput-object v0, p0, Landroid/media/MediaSync;->mAudioHandler:Landroid/os/Handler;

    .line 197
    iput-object v0, p0, Landroid/media/MediaSync;->mAudioLooper:Landroid/os/Looper;

    .line 199
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/MediaSync;->mAudioLock:Ljava/lang/Object;

    .line 200
    iput-object v0, p0, Landroid/media/MediaSync;->mAudioTrack:Landroid/media/AudioTrack;

    .line 201
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaSync;->mAudioBuffers:Ljava/util/List;

    .line 203
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaSync;->mPlaybackRate:F

    .line 211
    invoke-direct {p0}, Landroid/media/MediaSync;->native_setup()V

    .line 212
    return-void
.end method

.method private greylist-max-o createAudioThread()V
    .registers 3

    .line 615
    new-instance v0, Landroid/media/MediaSync$3;

    invoke-direct {v0, p0}, Landroid/media/MediaSync$3;-><init>(Landroid/media/MediaSync;)V

    iput-object v0, p0, Landroid/media/MediaSync;->mAudioThread:Ljava/lang/Thread;

    .line 627
    iget-object v0, p0, Landroid/media/MediaSync;->mAudioThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 629
    iget-object v0, p0, Landroid/media/MediaSync;->mAudioLock:Ljava/lang/Object;

    monitor-enter v0

    .line 631
    :try_start_f
    iget-object v1, p0, Landroid/media/MediaSync;->mAudioLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_14} :catch_17
    .catchall {:try_start_f .. :try_end_14} :catchall_15

    .line 633
    goto :goto_18

    .line 634
    :catchall_15
    move-exception v1

    goto :goto_1a

    .line 632
    :catch_17
    move-exception v1

    .line 634
    :goto_18
    :try_start_18
    monitor-exit v0

    .line 635
    return-void

    .line 634
    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_15

    throw v1
.end method

.method private final native greylist-max-o native_finalize()V
.end method

.method private final native greylist-max-o native_flush()V
.end method

.method private final native greylist-max-o native_getPlayTimeForPendingAudioFrames()J
.end method

.method private final native greylist-max-o native_getTimestamp(Landroid/media/MediaTimestamp;)Z
.end method

.method private static final native greylist-max-o native_init()V
.end method

.method private final native greylist-max-o native_release()V
.end method

.method private final native greylist-max-o native_setAudioTrack(Landroid/media/AudioTrack;)V
.end method

.method private native greylist-max-o native_setPlaybackParams(Landroid/media/PlaybackParams;)F
.end method

.method private final native greylist-max-o native_setSurface(Landroid/view/Surface;)V
.end method

.method private native greylist-max-o native_setSyncParams(Landroid/media/SyncParams;)F
.end method

.method private final native greylist-max-o native_setup()V
.end method

.method private final native greylist-max-o native_updateQueuedAudioData(IJ)V
.end method

.method private greylist-max-o postRenderAudio(J)V
    .registers 5
    .param p1, "delayMillis"    # J

    .line 525
    iget-object v0, p0, Landroid/media/MediaSync;->mAudioHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/MediaSync$1;

    invoke-direct {v1, p0}, Landroid/media/MediaSync$1;-><init>(Landroid/media/MediaSync;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 572
    return-void
.end method

.method private final greylist-max-o postReturnByteBuffer(Landroid/media/MediaSync$AudioBuffer;)V
    .registers 6
    .param p1, "audioBuffer"    # Landroid/media/MediaSync$AudioBuffer;

    .line 580
    iget-object v0, p0, Landroid/media/MediaSync;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 581
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaSync;->mCallbackHandler:Landroid/os/Handler;

    if-eqz v1, :cond_12

    .line 582
    move-object v1, p0

    .line 583
    .local v1, "sync":Landroid/media/MediaSync;
    iget-object v2, p0, Landroid/media/MediaSync;->mCallbackHandler:Landroid/os/Handler;

    new-instance v3, Landroid/media/MediaSync$2;

    invoke-direct {v3, p0, v1, p1}, Landroid/media/MediaSync$2;-><init>(Landroid/media/MediaSync;Landroid/media/MediaSync;Landroid/media/MediaSync$AudioBuffer;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 602
    .end local v1    # "sync":Landroid/media/MediaSync;
    :cond_12
    monitor-exit v0

    .line 603
    return-void

    .line 602
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method private final greylist-max-o returnAudioBuffers()V
    .registers 4

    .line 606
    iget-object v0, p0, Landroid/media/MediaSync;->mAudioLock:Ljava/lang/Object;

    monitor-enter v0

    .line 607
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaSync;->mAudioBuffers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaSync$AudioBuffer;

    .line 608
    .local v2, "audioBuffer":Landroid/media/MediaSync$AudioBuffer;
    invoke-direct {p0, v2}, Landroid/media/MediaSync;->postReturnByteBuffer(Landroid/media/MediaSync$AudioBuffer;)V

    .line 609
    .end local v2    # "audioBuffer":Landroid/media/MediaSync$AudioBuffer;
    goto :goto_9

    .line 610
    :cond_19
    iget-object v1, p0, Landroid/media/MediaSync;->mAudioBuffers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 611
    monitor-exit v0

    .line 612
    return-void

    .line 611
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method


# virtual methods
.method public final native whitelist createInputSurface()Landroid/view/Surface;
.end method

.method protected whitelist test-api finalize()V
    .registers 1

    .line 218
    invoke-direct {p0}, Landroid/media/MediaSync;->native_finalize()V

    .line 219
    return-void
.end method

.method public whitelist flush()V
    .registers 4

    .line 442
    iget-object v0, p0, Landroid/media/MediaSync;->mAudioLock:Ljava/lang/Object;

    monitor-enter v0

    .line 443
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaSync;->mAudioBuffers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 444
    iget-object v1, p0, Landroid/media/MediaSync;->mCallbackHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 445
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_26

    .line 446
    iget-object v0, p0, Landroid/media/MediaSync;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_22

    .line 447
    iget-object v0, p0, Landroid/media/MediaSync;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 448
    iget-object v0, p0, Landroid/media/MediaSync;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 451
    iget-object v0, p0, Landroid/media/MediaSync;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 453
    :cond_22
    invoke-direct {p0}, Landroid/media/MediaSync;->native_flush()V

    .line 454
    return-void

    .line 445
    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public native whitelist getPlaybackParams()Landroid/media/PlaybackParams;
.end method

.method public native whitelist getSyncParams()Landroid/media/SyncParams;
.end method

.method public whitelist getTimestamp()Landroid/media/MediaTimestamp;
    .registers 4

    .line 481
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Landroid/media/MediaTimestamp;

    invoke-direct {v1}, Landroid/media/MediaTimestamp;-><init>()V

    .line 482
    .local v1, "timestamp":Landroid/media/MediaTimestamp;
    invoke-direct {p0, v1}, Landroid/media/MediaSync;->native_getTimestamp(Landroid/media/MediaTimestamp;)Z

    move-result v2
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_a} :catch_e

    if-eqz v2, :cond_d

    .line 483
    return-object v1

    .line 485
    :cond_d
    return-object v0

    .line 487
    .end local v1    # "timestamp":Landroid/media/MediaTimestamp;
    :catch_e
    move-exception v1

    .line 488
    .local v1, "e":Ljava/lang/IllegalStateException;
    return-object v0
.end method

.method public whitelist queueAudio(Ljava/nio/ByteBuffer;IJ)V
    .registers 9
    .param p1, "audioData"    # Ljava/nio/ByteBuffer;
    .param p2, "bufferId"    # I
    .param p3, "presentationTimeUs"    # J

    .line 509
    iget-object v0, p0, Landroid/media/MediaSync;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_28

    iget-object v0, p0, Landroid/media/MediaSync;->mAudioThread:Ljava/lang/Thread;

    if-eqz v0, :cond_28

    .line 514
    iget-object v0, p0, Landroid/media/MediaSync;->mAudioLock:Ljava/lang/Object;

    monitor-enter v0

    .line 515
    :try_start_b
    iget-object v1, p0, Landroid/media/MediaSync;->mAudioBuffers:Ljava/util/List;

    new-instance v2, Landroid/media/MediaSync$AudioBuffer;

    invoke-direct {v2, p1, p2, p3, p4}, Landroid/media/MediaSync$AudioBuffer;-><init>(Ljava/nio/ByteBuffer;IJ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_25

    .line 518
    iget v0, p0, Landroid/media/MediaSync;->mPlaybackRate:F

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_24

    .line 519
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Landroid/media/MediaSync;->postRenderAudio(J)V

    .line 521
    :cond_24
    return-void

    .line 516
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1

    .line 510
    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AudioTrack is NOT set or audio thread is not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist release()V
    .registers 2

    .line 229
    invoke-direct {p0}, Landroid/media/MediaSync;->returnAudioBuffers()V

    .line 230
    iget-object v0, p0, Landroid/media/MediaSync;->mAudioThread:Ljava/lang/Thread;

    if-eqz v0, :cond_10

    .line 231
    iget-object v0, p0, Landroid/media/MediaSync;->mAudioLooper:Landroid/os/Looper;

    if-eqz v0, :cond_10

    .line 232
    iget-object v0, p0, Landroid/media/MediaSync;->mAudioLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 235
    :cond_10
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/media/MediaSync;->setCallback(Landroid/media/MediaSync$Callback;Landroid/os/Handler;)V

    .line 236
    invoke-direct {p0}, Landroid/media/MediaSync;->native_release()V

    .line 237
    return-void
.end method

.method public whitelist setAudioTrack(Landroid/media/AudioTrack;)V
    .registers 3
    .param p1, "audioTrack"    # Landroid/media/AudioTrack;

    .line 334
    invoke-direct {p0, p1}, Landroid/media/MediaSync;->native_setAudioTrack(Landroid/media/AudioTrack;)V

    .line 335
    iput-object p1, p0, Landroid/media/MediaSync;->mAudioTrack:Landroid/media/AudioTrack;

    .line 336
    if-eqz p1, :cond_e

    iget-object v0, p0, Landroid/media/MediaSync;->mAudioThread:Ljava/lang/Thread;

    if-nez v0, :cond_e

    .line 337
    invoke-direct {p0}, Landroid/media/MediaSync;->createAudioThread()V

    .line 339
    :cond_e
    return-void
.end method

.method public whitelist setCallback(Landroid/media/MediaSync$Callback;Landroid/os/Handler;)V
    .registers 6
    .param p1, "cb"    # Landroid/media/MediaSync$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 254
    iget-object v0, p0, Landroid/media/MediaSync;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 255
    if-eqz p2, :cond_8

    .line 256
    :try_start_5
    iput-object p2, p0, Landroid/media/MediaSync;->mCallbackHandler:Landroid/os/Handler;

    goto :goto_21

    .line 259
    :cond_8
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    move-object v2, v1

    .local v2, "looper":Landroid/os/Looper;
    if-nez v1, :cond_14

    .line 260
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    move-object v2, v1

    .line 262
    :cond_14
    if-nez v2, :cond_1a

    .line 263
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaSync;->mCallbackHandler:Landroid/os/Handler;

    goto :goto_21

    .line 265
    :cond_1a
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/MediaSync;->mCallbackHandler:Landroid/os/Handler;

    .line 269
    .end local v2    # "looper":Landroid/os/Looper;
    :goto_21
    iput-object p1, p0, Landroid/media/MediaSync;->mCallback:Landroid/media/MediaSync$Callback;

    .line 270
    monitor-exit v0

    .line 271
    return-void

    .line 270
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public whitelist setOnErrorListener(Landroid/media/MediaSync$OnErrorListener;Landroid/os/Handler;)V
    .registers 6
    .param p1, "listener"    # Landroid/media/MediaSync$OnErrorListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 287
    iget-object v0, p0, Landroid/media/MediaSync;->mOnErrorListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 288
    if-eqz p2, :cond_8

    .line 289
    :try_start_5
    iput-object p2, p0, Landroid/media/MediaSync;->mOnErrorListenerHandler:Landroid/os/Handler;

    goto :goto_21

    .line 292
    :cond_8
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    move-object v2, v1

    .local v2, "looper":Landroid/os/Looper;
    if-nez v1, :cond_14

    .line 293
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    move-object v2, v1

    .line 295
    :cond_14
    if-nez v2, :cond_1a

    .line 296
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaSync;->mOnErrorListenerHandler:Landroid/os/Handler;

    goto :goto_21

    .line 298
    :cond_1a
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/MediaSync;->mOnErrorListenerHandler:Landroid/os/Handler;

    .line 302
    .end local v2    # "looper":Landroid/os/Looper;
    :goto_21
    iput-object p1, p0, Landroid/media/MediaSync;->mOnErrorListener:Landroid/media/MediaSync$OnErrorListener;

    .line 303
    monitor-exit v0

    .line 304
    return-void

    .line 303
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public whitelist setPlaybackParams(Landroid/media/PlaybackParams;)V
    .registers 6
    .param p1, "params"    # Landroid/media/PlaybackParams;

    .line 376
    iget-object v0, p0, Landroid/media/MediaSync;->mAudioLock:Ljava/lang/Object;

    monitor-enter v0

    .line 377
    :try_start_3
    invoke-direct {p0, p1}, Landroid/media/MediaSync;->native_setPlaybackParams(Landroid/media/PlaybackParams;)F

    move-result v1

    iput v1, p0, Landroid/media/MediaSync;->mPlaybackRate:F

    .line 378
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1d

    .line 379
    iget v0, p0, Landroid/media/MediaSync;->mPlaybackRate:F

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/media/MediaSync;->mAudioThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1c

    .line 380
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Landroid/media/MediaSync;->postRenderAudio(J)V

    .line 382
    :cond_1c
    return-void

    .line 378
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public whitelist setSurface(Landroid/view/Surface;)V
    .registers 2
    .param p1, "surface"    # Landroid/view/Surface;

    .line 318
    invoke-direct {p0, p1}, Landroid/media/MediaSync;->native_setSurface(Landroid/view/Surface;)V

    .line 319
    return-void
.end method

.method public whitelist setSyncParams(Landroid/media/SyncParams;)V
    .registers 6
    .param p1, "params"    # Landroid/media/SyncParams;

    .line 407
    iget-object v0, p0, Landroid/media/MediaSync;->mAudioLock:Ljava/lang/Object;

    monitor-enter v0

    .line 408
    :try_start_3
    invoke-direct {p0, p1}, Landroid/media/MediaSync;->native_setSyncParams(Landroid/media/SyncParams;)F

    move-result v1

    iput v1, p0, Landroid/media/MediaSync;->mPlaybackRate:F

    .line 409
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1d

    .line 410
    iget v0, p0, Landroid/media/MediaSync;->mPlaybackRate:F

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/media/MediaSync;->mAudioThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1c

    .line 411
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Landroid/media/MediaSync;->postRenderAudio(J)V

    .line 413
    :cond_1c
    return-void

    .line 409
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v1
.end method
