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
.field private static final CB_RETURN_AUDIO_BUFFER:I = 0x1

.field private static final EVENT_CALLBACK:I = 0x1

.field private static final EVENT_SET_CALLBACK:I = 0x2

.field public static final MEDIASYNC_ERROR_AUDIOTRACK_FAIL:I = 0x1

.field public static final MEDIASYNC_ERROR_SURFACE_FAIL:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MediaSync"


# instance fields
.field private mAudioBuffers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/MediaSync$AudioBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioHandler:Landroid/os/Handler;

.field private final mAudioLock:Ljava/lang/Object;

.field private mAudioLooper:Landroid/os/Looper;

.field private mAudioThread:Ljava/lang/Thread;

.field private mAudioTrack:Landroid/media/AudioTrack;

.field private mCallback:Landroid/media/MediaSync$Callback;

.field private mCallbackHandler:Landroid/os/Handler;

.field private final mCallbackLock:Ljava/lang/Object;

.field private mNativeContext:J

.field private mOnErrorListener:Landroid/media/MediaSync$OnErrorListener;

.field private mOnErrorListenerHandler:Landroid/os/Handler;

.field private final mOnErrorListenerLock:Ljava/lang/Object;

.field private mPlaybackRate:F


# direct methods
.method static synthetic -get0(Landroid/media/MediaSync;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/MediaSync;->mAudioBuffers:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/media/MediaSync;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/MediaSync;->mAudioLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/media/MediaSync;)Landroid/media/AudioTrack;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/MediaSync;->mAudioTrack:Landroid/media/AudioTrack;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/media/MediaSync;)Landroid/media/MediaSync$Callback;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/MediaSync;->mCallback:Landroid/media/MediaSync$Callback;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/media/MediaSync;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/MediaSync;->mCallbackHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Landroid/media/MediaSync;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/MediaSync;->mCallbackLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Landroid/media/MediaSync;)F
    .locals 1

    #@0
    iget v0, p0, Landroid/media/MediaSync;->mPlaybackRate:F

    #@2
    return v0
.end method

.method static synthetic -set0(Landroid/media/MediaSync;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/media/MediaSync;->mAudioHandler:Landroid/os/Handler;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Landroid/media/MediaSync;Landroid/os/Looper;)Landroid/os/Looper;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/media/MediaSync;->mAudioLooper:Landroid/os/Looper;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Landroid/media/MediaSync;)J
    .locals 2

    #@0
    invoke-direct {p0}, Landroid/media/MediaSync;->native_getPlayTimeForPendingAudioFrames()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static synthetic -wrap1(Landroid/media/MediaSync;IJ)V
    .locals 0
    .param p1, "sizeInBytes"    # I
    .param p2, "presentationTimeUs"    # J

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaSync;->native_updateQueuedAudioData(IJ)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/media/MediaSync;J)V
    .locals 1
    .param p1, "delayMillis"    # J

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/media/MediaSync;->postRenderAudio(J)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Landroid/media/MediaSync;Landroid/media/MediaSync$AudioBuffer;)V
    .locals 0
    .param p1, "audioBuffer"    # Landroid/media/MediaSync$AudioBuffer;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/media/MediaSync;->postReturnByteBuffer(Landroid/media/MediaSync$AudioBuffer;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 638
    const-string/jumbo v0, "media_jni"

    #@3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    #@6
    .line 639
    invoke-static {}, Landroid/media/MediaSync;->native_init()V

    #@9
    .line 116
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 185
    new-instance v0, Ljava/lang/Object;

    #@6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@9
    iput-object v0, p0, Landroid/media/MediaSync;->mCallbackLock:Ljava/lang/Object;

    #@b
    .line 186
    iput-object v1, p0, Landroid/media/MediaSync;->mCallbackHandler:Landroid/os/Handler;

    #@d
    .line 187
    iput-object v1, p0, Landroid/media/MediaSync;->mCallback:Landroid/media/MediaSync$Callback;

    #@f
    .line 189
    new-instance v0, Ljava/lang/Object;

    #@11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@14
    iput-object v0, p0, Landroid/media/MediaSync;->mOnErrorListenerLock:Ljava/lang/Object;

    #@16
    .line 190
    iput-object v1, p0, Landroid/media/MediaSync;->mOnErrorListenerHandler:Landroid/os/Handler;

    #@18
    .line 191
    iput-object v1, p0, Landroid/media/MediaSync;->mOnErrorListener:Landroid/media/MediaSync$OnErrorListener;

    #@1a
    .line 193
    iput-object v1, p0, Landroid/media/MediaSync;->mAudioThread:Ljava/lang/Thread;

    #@1c
    .line 196
    iput-object v1, p0, Landroid/media/MediaSync;->mAudioHandler:Landroid/os/Handler;

    #@1e
    .line 197
    iput-object v1, p0, Landroid/media/MediaSync;->mAudioLooper:Landroid/os/Looper;

    #@20
    .line 199
    new-instance v0, Ljava/lang/Object;

    #@22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@25
    iput-object v0, p0, Landroid/media/MediaSync;->mAudioLock:Ljava/lang/Object;

    #@27
    .line 200
    iput-object v1, p0, Landroid/media/MediaSync;->mAudioTrack:Landroid/media/AudioTrack;

    #@29
    .line 201
    new-instance v0, Ljava/util/LinkedList;

    #@2b
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@2e
    iput-object v0, p0, Landroid/media/MediaSync;->mAudioBuffers:Ljava/util/List;

    #@30
    .line 203
    const/4 v0, 0x0

    #@31
    iput v0, p0, Landroid/media/MediaSync;->mPlaybackRate:F

    #@33
    .line 211
    invoke-direct {p0}, Landroid/media/MediaSync;->native_setup()V

    #@36
    .line 210
    return-void
.end method

.method private createAudioThread()V
    .locals 3

    #@0
    .prologue
    .line 615
    new-instance v1, Landroid/media/MediaSync$3;

    #@2
    invoke-direct {v1, p0}, Landroid/media/MediaSync$3;-><init>(Landroid/media/MediaSync;)V

    #@5
    iput-object v1, p0, Landroid/media/MediaSync;->mAudioThread:Ljava/lang/Thread;

    #@7
    .line 627
    iget-object v1, p0, Landroid/media/MediaSync;->mAudioThread:Ljava/lang/Thread;

    #@9
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    #@c
    .line 629
    iget-object v2, p0, Landroid/media/MediaSync;->mAudioLock:Ljava/lang/Object;

    #@e
    monitor-enter v2

    #@f
    .line 631
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaSync;->mAudioLock:Ljava/lang/Object;

    #@11
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    :goto_0
    monitor-exit v2

    #@15
    .line 614
    return-void

    #@16
    .line 629
    :catchall_0
    move-exception v1

    #@17
    monitor-exit v2

    #@18
    throw v1

    #@19
    .line 632
    :catch_0
    move-exception v0

    #@1a
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0
.end method

.method private final native native_finalize()V
.end method

.method private final native native_flush()V
.end method

.method private final native native_getPlayTimeForPendingAudioFrames()J
.end method

.method private final native native_getTimestamp(Landroid/media/MediaTimestamp;)Z
.end method

.method private static final native native_init()V
.end method

.method private final native native_release()V
.end method

.method private final native native_setAudioTrack(Landroid/media/AudioTrack;)V
.end method

.method private native native_setPlaybackParams(Landroid/media/PlaybackParams;)F
.end method

.method private final native native_setSurface(Landroid/view/Surface;)V
.end method

.method private native native_setSyncParams(Landroid/media/SyncParams;)F
.end method

.method private final native native_setup()V
.end method

.method private final native native_updateQueuedAudioData(IJ)V
.end method

.method private postRenderAudio(J)V
    .locals 3
    .param p1, "delayMillis"    # J

    #@0
    .prologue
    .line 525
    iget-object v0, p0, Landroid/media/MediaSync;->mAudioHandler:Landroid/os/Handler;

    #@2
    new-instance v1, Landroid/media/MediaSync$1;

    #@4
    invoke-direct {v1, p0}, Landroid/media/MediaSync$1;-><init>(Landroid/media/MediaSync;)V

    #@7
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@a
    .line 524
    return-void
.end method

.method private final postReturnByteBuffer(Landroid/media/MediaSync$AudioBuffer;)V
    .locals 4
    .param p1, "audioBuffer"    # Landroid/media/MediaSync$AudioBuffer;

    #@0
    .prologue
    .line 580
    iget-object v2, p0, Landroid/media/MediaSync;->mCallbackLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 581
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaSync;->mCallbackHandler:Landroid/os/Handler;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 582
    move-object v0, p0

    #@8
    .line 583
    .local v0, "sync":Landroid/media/MediaSync;
    iget-object v1, p0, Landroid/media/MediaSync;->mCallbackHandler:Landroid/os/Handler;

    #@a
    new-instance v3, Landroid/media/MediaSync$2;

    #@c
    invoke-direct {v3, p0, v0, p1}, Landroid/media/MediaSync$2;-><init>(Landroid/media/MediaSync;Landroid/media/MediaSync;Landroid/media/MediaSync$AudioBuffer;)V

    #@f
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .end local v0    # "sync":Landroid/media/MediaSync;
    :cond_0
    monitor-exit v2

    #@13
    .line 579
    return-void

    #@14
    .line 580
    :catchall_0
    move-exception v1

    #@15
    monitor-exit v2

    #@16
    throw v1
.end method

.method private final returnAudioBuffers()V
    .locals 4

    #@0
    .prologue
    .line 606
    iget-object v3, p0, Landroid/media/MediaSync;->mAudioLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 607
    :try_start_0
    iget-object v2, p0, Landroid/media/MediaSync;->mAudioBuffers:Ljava/util/List;

    #@5
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .local v1, "audioBuffer$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/media/MediaSync$AudioBuffer;

    #@15
    .line 608
    .local v0, "audioBuffer":Landroid/media/MediaSync$AudioBuffer;
    invoke-direct {p0, v0}, Landroid/media/MediaSync;->postReturnByteBuffer(Landroid/media/MediaSync$AudioBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    goto :goto_0

    #@19
    .line 606
    .end local v0    # "audioBuffer":Landroid/media/MediaSync$AudioBuffer;
    .end local v1    # "audioBuffer$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@1a
    monitor-exit v3

    #@1b
    throw v2

    #@1c
    .line 610
    .restart local v1    # "audioBuffer$iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/media/MediaSync;->mAudioBuffers:Ljava/util/List;

    #@1e
    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    monitor-exit v3

    #@22
    .line 605
    return-void
.end method


# virtual methods
.method public final native createInputSurface()Landroid/view/Surface;
.end method

.method protected finalize()V
    .locals 0

    #@0
    .prologue
    .line 218
    invoke-direct {p0}, Landroid/media/MediaSync;->native_finalize()V

    #@3
    .line 217
    return-void
.end method

.method public flush()V
    .locals 3

    #@0
    .prologue
    .line 442
    iget-object v1, p0, Landroid/media/MediaSync;->mAudioLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 443
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaSync;->mAudioBuffers:Ljava/util/List;

    #@5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@8
    .line 444
    iget-object v0, p0, Landroid/media/MediaSync;->mCallbackHandler:Landroid/os/Handler;

    #@a
    const/4 v2, 0x0

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit v1

    #@f
    .line 446
    iget-object v0, p0, Landroid/media/MediaSync;->mAudioTrack:Landroid/media/AudioTrack;

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 447
    iget-object v0, p0, Landroid/media/MediaSync;->mAudioTrack:Landroid/media/AudioTrack;

    #@15
    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    #@18
    .line 448
    iget-object v0, p0, Landroid/media/MediaSync;->mAudioTrack:Landroid/media/AudioTrack;

    #@1a
    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    #@1d
    .line 451
    iget-object v0, p0, Landroid/media/MediaSync;->mAudioTrack:Landroid/media/AudioTrack;

    #@1f
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    #@22
    .line 453
    :cond_0
    invoke-direct {p0}, Landroid/media/MediaSync;->native_flush()V

    #@25
    .line 441
    return-void

    #@26
    .line 442
    :catchall_0
    move-exception v0

    #@27
    monitor-exit v1

    #@28
    throw v0
.end method

.method public native getPlaybackParams()Landroid/media/PlaybackParams;
.end method

.method public native getSyncParams()Landroid/media/SyncParams;
.end method

.method public getTimestamp()Landroid/media/MediaTimestamp;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 481
    :try_start_0
    new-instance v1, Landroid/media/MediaTimestamp;

    #@3
    invoke-direct {v1}, Landroid/media/MediaTimestamp;-><init>()V

    #@6
    .line 482
    .local v1, "timestamp":Landroid/media/MediaTimestamp;
    invoke-direct {p0, v1}, Landroid/media/MediaSync;->native_getTimestamp(Landroid/media/MediaTimestamp;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 483
    return-object v1

    #@d
    .line 485
    :cond_0
    return-object v3

    #@e
    .line 487
    .end local v1    # "timestamp":Landroid/media/MediaTimestamp;
    :catch_0
    move-exception v0

    #@f
    .line 488
    .local v0, "e":Ljava/lang/IllegalStateException;
    return-object v3
.end method

.method public queueAudio(Ljava/nio/ByteBuffer;IJ)V
    .locals 5
    .param p1, "audioData"    # Ljava/nio/ByteBuffer;
    .param p2, "bufferId"    # I
    .param p3, "presentationTimeUs"    # J

    #@0
    .prologue
    .line 509
    iget-object v0, p0, Landroid/media/MediaSync;->mAudioTrack:Landroid/media/AudioTrack;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/media/MediaSync;->mAudioThread:Ljava/lang/Thread;

    #@6
    if-nez v0, :cond_1

    #@8
    .line 510
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    #@a
    .line 511
    const-string/jumbo v1, "AudioTrack is NOT set or audio thread is not created"

    #@d
    .line 510
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 514
    :cond_1
    iget-object v1, p0, Landroid/media/MediaSync;->mAudioLock:Ljava/lang/Object;

    #@13
    monitor-enter v1

    #@14
    .line 515
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaSync;->mAudioBuffers:Ljava/util/List;

    #@16
    new-instance v2, Landroid/media/MediaSync$AudioBuffer;

    #@18
    invoke-direct {v2, p1, p2, p3, p4}, Landroid/media/MediaSync$AudioBuffer;-><init>(Ljava/nio/ByteBuffer;IJ)V

    #@1b
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    monitor-exit v1

    #@1f
    .line 518
    iget v0, p0, Landroid/media/MediaSync;->mPlaybackRate:F

    #@21
    float-to-double v0, v0

    #@22
    const-wide/16 v2, 0x0

    #@24
    cmpl-double v0, v0, v2

    #@26
    if-eqz v0, :cond_2

    #@28
    .line 519
    const-wide/16 v0, 0x0

    #@2a
    invoke-direct {p0, v0, v1}, Landroid/media/MediaSync;->postRenderAudio(J)V

    #@2d
    .line 508
    :cond_2
    return-void

    #@2e
    .line 514
    :catchall_0
    move-exception v0

    #@2f
    monitor-exit v1

    #@30
    throw v0
.end method

.method public final release()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 229
    invoke-direct {p0}, Landroid/media/MediaSync;->returnAudioBuffers()V

    #@4
    .line 230
    iget-object v0, p0, Landroid/media/MediaSync;->mAudioThread:Ljava/lang/Thread;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 231
    iget-object v0, p0, Landroid/media/MediaSync;->mAudioLooper:Landroid/os/Looper;

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 232
    iget-object v0, p0, Landroid/media/MediaSync;->mAudioLooper:Landroid/os/Looper;

    #@e
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    #@11
    .line 235
    :cond_0
    invoke-virtual {p0, v1, v1}, Landroid/media/MediaSync;->setCallback(Landroid/media/MediaSync$Callback;Landroid/os/Handler;)V

    #@14
    .line 236
    invoke-direct {p0}, Landroid/media/MediaSync;->native_release()V

    #@17
    .line 228
    return-void
.end method

.method public setAudioTrack(Landroid/media/AudioTrack;)V
    .locals 1
    .param p1, "audioTrack"    # Landroid/media/AudioTrack;

    #@0
    .prologue
    .line 334
    invoke-direct {p0, p1}, Landroid/media/MediaSync;->native_setAudioTrack(Landroid/media/AudioTrack;)V

    #@3
    .line 335
    iput-object p1, p0, Landroid/media/MediaSync;->mAudioTrack:Landroid/media/AudioTrack;

    #@5
    .line 336
    if-eqz p1, :cond_0

    #@7
    iget-object v0, p0, Landroid/media/MediaSync;->mAudioThread:Ljava/lang/Thread;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 337
    invoke-direct {p0}, Landroid/media/MediaSync;->createAudioThread()V

    #@e
    .line 333
    :cond_0
    return-void
.end method

.method public setCallback(Landroid/media/MediaSync$Callback;Landroid/os/Handler;)V
    .locals 3
    .param p1, "cb"    # Landroid/media/MediaSync$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 254
    iget-object v2, p0, Landroid/media/MediaSync;->mCallbackLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 255
    if-eqz p2, :cond_0

    #@5
    .line 256
    :try_start_0
    iput-object p2, p0, Landroid/media/MediaSync;->mCallbackHandler:Landroid/os/Handler;

    #@7
    .line 269
    :goto_0
    iput-object p1, p0, Landroid/media/MediaSync;->mCallback:Landroid/media/MediaSync$Callback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v2

    #@a
    .line 253
    return-void

    #@b
    .line 259
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@e
    move-result-object v0

    #@f
    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_1

    #@11
    .line 260
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@14
    move-result-object v0

    #@15
    .line 262
    :cond_1
    if-nez v0, :cond_2

    #@17
    .line 263
    const/4 v1, 0x0

    #@18
    iput-object v1, p0, Landroid/media/MediaSync;->mCallbackHandler:Landroid/os/Handler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    goto :goto_0

    #@1b
    .line 254
    .end local v0    # "looper":Landroid/os/Looper;
    :catchall_0
    move-exception v1

    #@1c
    monitor-exit v2

    #@1d
    throw v1

    #@1e
    .line 265
    .restart local v0    # "looper":Landroid/os/Looper;
    :cond_2
    :try_start_2
    new-instance v1, Landroid/os/Handler;

    #@20
    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@23
    iput-object v1, p0, Landroid/media/MediaSync;->mCallbackHandler:Landroid/os/Handler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@25
    goto :goto_0
.end method

.method public setOnErrorListener(Landroid/media/MediaSync$OnErrorListener;Landroid/os/Handler;)V
    .locals 3
    .param p1, "listener"    # Landroid/media/MediaSync$OnErrorListener;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 287
    iget-object v2, p0, Landroid/media/MediaSync;->mOnErrorListenerLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 288
    if-eqz p2, :cond_0

    #@5
    .line 289
    :try_start_0
    iput-object p2, p0, Landroid/media/MediaSync;->mOnErrorListenerHandler:Landroid/os/Handler;

    #@7
    .line 302
    :goto_0
    iput-object p1, p0, Landroid/media/MediaSync;->mOnErrorListener:Landroid/media/MediaSync$OnErrorListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v2

    #@a
    .line 286
    return-void

    #@b
    .line 292
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@e
    move-result-object v0

    #@f
    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_1

    #@11
    .line 293
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@14
    move-result-object v0

    #@15
    .line 295
    :cond_1
    if-nez v0, :cond_2

    #@17
    .line 296
    const/4 v1, 0x0

    #@18
    iput-object v1, p0, Landroid/media/MediaSync;->mOnErrorListenerHandler:Landroid/os/Handler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    goto :goto_0

    #@1b
    .line 287
    .end local v0    # "looper":Landroid/os/Looper;
    :catchall_0
    move-exception v1

    #@1c
    monitor-exit v2

    #@1d
    throw v1

    #@1e
    .line 298
    .restart local v0    # "looper":Landroid/os/Looper;
    :cond_2
    :try_start_2
    new-instance v1, Landroid/os/Handler;

    #@20
    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@23
    iput-object v1, p0, Landroid/media/MediaSync;->mOnErrorListenerHandler:Landroid/os/Handler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@25
    goto :goto_0
.end method

.method public setPlaybackParams(Landroid/media/PlaybackParams;)V
    .locals 4
    .param p1, "params"    # Landroid/media/PlaybackParams;

    #@0
    .prologue
    .line 376
    iget-object v1, p0, Landroid/media/MediaSync;->mAudioLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 377
    :try_start_0
    invoke-direct {p0, p1}, Landroid/media/MediaSync;->native_setPlaybackParams(Landroid/media/PlaybackParams;)F

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/media/MediaSync;->mPlaybackRate:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v1

    #@a
    .line 379
    iget v0, p0, Landroid/media/MediaSync;->mPlaybackRate:F

    #@c
    float-to-double v0, v0

    #@d
    const-wide/16 v2, 0x0

    #@f
    cmpl-double v0, v0, v2

    #@11
    if-eqz v0, :cond_0

    #@13
    iget-object v0, p0, Landroid/media/MediaSync;->mAudioThread:Ljava/lang/Thread;

    #@15
    if-eqz v0, :cond_0

    #@17
    .line 380
    const-wide/16 v0, 0x0

    #@19
    invoke-direct {p0, v0, v1}, Landroid/media/MediaSync;->postRenderAudio(J)V

    #@1c
    .line 375
    :cond_0
    return-void

    #@1d
    .line 376
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit v1

    #@1f
    throw v0
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 0
    .param p1, "surface"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 318
    invoke-direct {p0, p1}, Landroid/media/MediaSync;->native_setSurface(Landroid/view/Surface;)V

    #@3
    .line 317
    return-void
.end method

.method public setSyncParams(Landroid/media/SyncParams;)V
    .locals 4
    .param p1, "params"    # Landroid/media/SyncParams;

    #@0
    .prologue
    .line 407
    iget-object v1, p0, Landroid/media/MediaSync;->mAudioLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 408
    :try_start_0
    invoke-direct {p0, p1}, Landroid/media/MediaSync;->native_setSyncParams(Landroid/media/SyncParams;)F

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/media/MediaSync;->mPlaybackRate:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v1

    #@a
    .line 410
    iget v0, p0, Landroid/media/MediaSync;->mPlaybackRate:F

    #@c
    float-to-double v0, v0

    #@d
    const-wide/16 v2, 0x0

    #@f
    cmpl-double v0, v0, v2

    #@11
    if-eqz v0, :cond_0

    #@13
    iget-object v0, p0, Landroid/media/MediaSync;->mAudioThread:Ljava/lang/Thread;

    #@15
    if-eqz v0, :cond_0

    #@17
    .line 411
    const-wide/16 v0, 0x0

    #@19
    invoke-direct {p0, v0, v1}, Landroid/media/MediaSync;->postRenderAudio(J)V

    #@1c
    .line 406
    :cond_0
    return-void

    #@1d
    .line 407
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit v1

    #@1f
    throw v0
.end method
