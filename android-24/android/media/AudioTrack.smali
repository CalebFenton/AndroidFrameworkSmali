.class public Landroid/media/AudioTrack;
.super Landroid/media/PlayerBase;
.source "AudioTrack.java"

# interfaces
.implements Landroid/media/AudioRouting;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioTrack$Builder;,
        Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;,
        Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;,
        Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;,
        Landroid/media/AudioTrack$OnRoutingChangedListener;
    }
.end annotation


# static fields
.field public static final CHANNEL_COUNT_MAX:I

.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x2

.field public static final ERROR_DEAD_OBJECT:I = -0x6

.field public static final ERROR_INVALID_OPERATION:I = -0x3

.field private static final ERROR_NATIVESETUP_AUDIOSYSTEM:I = -0x10

.field private static final ERROR_NATIVESETUP_INVALIDCHANNELMASK:I = -0x11

.field private static final ERROR_NATIVESETUP_INVALIDFORMAT:I = -0x12

.field private static final ERROR_NATIVESETUP_INVALIDSTREAMTYPE:I = -0x13

.field private static final ERROR_NATIVESETUP_NATIVEINITFAILED:I = -0x14

.field public static final ERROR_WOULD_BLOCK:I = -0x7

.field private static final GAIN_MAX:F = 1.0f

.field private static final GAIN_MIN:F = 0.0f

.field public static final MODE_STATIC:I = 0x0

.field public static final MODE_STREAM:I = 0x1

.field private static final NATIVE_EVENT_MARKER:I = 0x3

.field private static final NATIVE_EVENT_NEW_POS:I = 0x4

.field public static final PLAYSTATE_PAUSED:I = 0x2

.field public static final PLAYSTATE_PLAYING:I = 0x3

.field public static final PLAYSTATE_STOPPED:I = 0x1

.field public static final STATE_INITIALIZED:I = 0x1

.field public static final STATE_NO_STATIC_DATA:I = 0x2

.field public static final STATE_UNINITIALIZED:I = 0x0

.field public static final SUCCESS:I = 0x0

.field private static final SUPPORTED_OUT_CHANNELS:I = 0x1cfc

.field private static final TAG:Ljava/lang/String; = "android.media.AudioTrack"

.field public static final WRITE_BLOCKING:I = 0x0

.field public static final WRITE_NON_BLOCKING:I = 0x1


# instance fields
.field private mAudioFormat:I

.field private mAvSyncBytesRemaining:I

.field private mAvSyncHeader:Ljava/nio/ByteBuffer;

.field private mChannelConfiguration:I

.field private mChannelCount:I

.field private mChannelIndexMask:I

.field private mChannelMask:I

.field private mDataLoadMode:I

.field private mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

.field private final mInitializationLooper:Landroid/os/Looper;

.field private mJniData:J

.field private mNativeBufferSizeInBytes:I

.field private mNativeBufferSizeInFrames:I

.field protected mNativeTrackInJavaObj:J

.field private mPlayState:I

.field private final mPlayStateLock:Ljava/lang/Object;

.field private mPreferredDevice:Landroid/media/AudioDeviceInfo;

.field private mRoutingChangeListeners:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRoutingChangeListeners"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/media/AudioRouting$OnRoutingChangedListener;",
            "Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mSampleRate:I

.field private mSessionId:I

.field private mState:I

.field private mStreamType:I


# direct methods
.method static synthetic -get0(Landroid/media/AudioTrack;)Landroid/os/Looper;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 97
    invoke-static {}, Landroid/media/AudioTrack;->native_get_FCC_8()I

    #@3
    move-result v0

    #@4
    sput v0, Landroid/media/AudioTrack;->CHANNEL_COUNT_MAX:I

    #@6
    .line 79
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 8
    .param p1, "streamType"    # I
    .param p2, "sampleRateInHz"    # I
    .param p3, "channelConfig"    # I
    .param p4, "audioFormat"    # I
    .param p5, "bufferSizeInBytes"    # I
    .param p6, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 367
    const/4 v7, 0x0

    #@1
    move-object v0, p0

    #@2
    move v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    move v5, p5

    #@7
    move v6, p6

    #@8
    .line 366
    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    #@b
    .line 365
    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 6
    .param p1, "streamType"    # I
    .param p2, "sampleRateInHz"    # I
    .param p3, "channelConfig"    # I
    .param p4, "audioFormat"    # I
    .param p5, "bufferSizeInBytes"    # I
    .param p6, "mode"    # I
    .param p7, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 422
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    #@2
    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    #@5
    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    #@c
    move-result-object v1

    #@d
    .line 425
    new-instance v0, Landroid/media/AudioFormat$Builder;

    #@f
    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    #@12
    invoke-virtual {v0, p3}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0, p4}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0, p2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    #@21
    move-result-object v2

    #@22
    move-object v0, p0

    #@23
    move v3, p5

    #@24
    move v4, p6

    #@25
    move v5, p7

    #@26
    .line 422
    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    #@29
    .line 420
    return-void
.end method

.method constructor <init>(J)V
    .locals 9
    .param p1, "nativeTrackInJavaObj"    # J

    #@0
    .prologue
    const/4 v5, 0x4

    #@1
    const-wide/16 v6, 0x0

    #@3
    const/4 v4, 0x0

    #@4
    const/4 v3, 0x1

    #@5
    const/4 v2, 0x0

    #@6
    .line 547
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    #@8
    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    #@b
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    #@e
    move-result-object v1

    #@f
    invoke-direct {p0, v1}, Landroid/media/PlayerBase;-><init>(Landroid/media/AudioAttributes;)V

    #@12
    .line 224
    iput v2, p0, Landroid/media/AudioTrack;->mState:I

    #@14
    .line 229
    iput v3, p0, Landroid/media/AudioTrack;->mPlayState:I

    #@16
    .line 233
    new-instance v1, Ljava/lang/Object;

    #@18
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@1b
    iput-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    #@1d
    .line 239
    iput v2, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    #@1f
    .line 240
    iput v2, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    #@21
    .line 257
    iput v3, p0, Landroid/media/AudioTrack;->mChannelCount:I

    #@23
    .line 261
    iput v5, p0, Landroid/media/AudioTrack;->mChannelMask:I

    #@25
    .line 270
    const/4 v1, 0x3

    #@26
    iput v1, p0, Landroid/media/AudioTrack;->mStreamType:I

    #@28
    .line 275
    iput v3, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    #@2a
    .line 281
    iput v5, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    #@2c
    .line 285
    iput v2, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    #@2e
    .line 296
    iput v2, p0, Landroid/media/AudioTrack;->mSessionId:I

    #@30
    .line 300
    iput-object v4, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    #@32
    .line 304
    iput v2, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    #@34
    .line 2405
    iput-object v4, p0, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    #@36
    .line 2491
    new-instance v1, Landroid/util/ArrayMap;

    #@38
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    #@3b
    iput-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    #@3d
    .line 549
    iput-wide v6, p0, Landroid/media/AudioTrack;->mNativeTrackInJavaObj:J

    #@3f
    .line 550
    iput-wide v6, p0, Landroid/media/AudioTrack;->mJniData:J

    #@41
    .line 554
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@44
    move-result-object v0

    #@45
    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_0

    #@47
    .line 555
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@4a
    move-result-object v0

    #@4b
    .line 557
    :cond_0
    iput-object v0, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    #@4d
    .line 560
    cmp-long v1, p1, v6

    #@4f
    if-eqz v1, :cond_1

    #@51
    .line 561
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioTrack;->deferred_connect(J)V

    #@54
    .line 546
    :goto_0
    return-void

    #@55
    .line 563
    :cond_1
    iput v2, p0, Landroid/media/AudioTrack;->mState:I

    #@57
    goto :goto_0
.end method

.method public constructor <init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V
    .locals 22
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .param p2, "format"    # Landroid/media/AudioFormat;
    .param p3, "bufferSizeInBytes"    # I
    .param p4, "mode"    # I
    .param p5, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 467
    invoke-direct/range {p0 .. p1}, Landroid/media/PlayerBase;-><init>(Landroid/media/AudioAttributes;)V

    #@3
    .line 224
    const/4 v2, 0x0

    #@4
    move-object/from16 v0, p0

    #@6
    iput v2, v0, Landroid/media/AudioTrack;->mState:I

    #@8
    .line 229
    const/4 v2, 0x1

    #@9
    move-object/from16 v0, p0

    #@b
    iput v2, v0, Landroid/media/AudioTrack;->mPlayState:I

    #@d
    .line 233
    new-instance v2, Ljava/lang/Object;

    #@f
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    #@12
    move-object/from16 v0, p0

    #@14
    iput-object v2, v0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    #@16
    .line 239
    const/4 v2, 0x0

    #@17
    move-object/from16 v0, p0

    #@19
    iput v2, v0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    #@1b
    .line 240
    const/4 v2, 0x0

    #@1c
    move-object/from16 v0, p0

    #@1e
    iput v2, v0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    #@20
    .line 257
    const/4 v2, 0x1

    #@21
    move-object/from16 v0, p0

    #@23
    iput v2, v0, Landroid/media/AudioTrack;->mChannelCount:I

    #@25
    .line 261
    const/4 v2, 0x4

    #@26
    move-object/from16 v0, p0

    #@28
    iput v2, v0, Landroid/media/AudioTrack;->mChannelMask:I

    #@2a
    .line 270
    const/4 v2, 0x3

    #@2b
    move-object/from16 v0, p0

    #@2d
    iput v2, v0, Landroid/media/AudioTrack;->mStreamType:I

    #@2f
    .line 275
    const/4 v2, 0x1

    #@30
    move-object/from16 v0, p0

    #@32
    iput v2, v0, Landroid/media/AudioTrack;->mDataLoadMode:I

    #@34
    .line 281
    const/4 v2, 0x4

    #@35
    move-object/from16 v0, p0

    #@37
    iput v2, v0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    #@39
    .line 285
    const/4 v2, 0x0

    #@3a
    move-object/from16 v0, p0

    #@3c
    iput v2, v0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    #@3e
    .line 296
    const/4 v2, 0x0

    #@3f
    move-object/from16 v0, p0

    #@41
    iput v2, v0, Landroid/media/AudioTrack;->mSessionId:I

    #@43
    .line 300
    const/4 v2, 0x0

    #@44
    move-object/from16 v0, p0

    #@46
    iput-object v2, v0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    #@48
    .line 304
    const/4 v2, 0x0

    #@49
    move-object/from16 v0, p0

    #@4b
    iput v2, v0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    #@4d
    .line 2405
    const/4 v2, 0x0

    #@4e
    move-object/from16 v0, p0

    #@50
    iput-object v2, v0, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    #@52
    .line 2491
    new-instance v2, Landroid/util/ArrayMap;

    #@54
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    #@57
    move-object/from16 v0, p0

    #@59
    iput-object v2, v0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    #@5b
    .line 470
    if-nez p2, :cond_0

    #@5d
    .line 471
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@5f
    const-string/jumbo v7, "Illegal null AudioFormat"

    #@62
    invoke-direct {v2, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@65
    throw v2

    #@66
    .line 476
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@69
    move-result-object v21

    #@6a
    .local v21, "looper":Landroid/os/Looper;
    if-nez v21, :cond_1

    #@6c
    .line 477
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@6f
    move-result-object v21

    #@70
    .line 480
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getSampleRate()I

    #@73
    move-result v3

    #@74
    .line 481
    .local v3, "rate":I
    if-nez v3, :cond_2

    #@76
    .line 482
    const/4 v3, 0x0

    #@77
    .line 485
    :cond_2
    const/4 v5, 0x0

    #@78
    .line 486
    .local v5, "channelIndexMask":I
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    #@7b
    move-result v2

    #@7c
    and-int/lit8 v2, v2, 0x8

    #@7e
    if-eqz v2, :cond_3

    #@80
    .line 488
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelIndexMask()I

    #@83
    move-result v5

    #@84
    .line 490
    :cond_3
    const/4 v4, 0x0

    #@85
    .line 491
    .local v4, "channelMask":I
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    #@88
    move-result v2

    #@89
    and-int/lit8 v2, v2, 0x4

    #@8b
    if-eqz v2, :cond_6

    #@8d
    .line 493
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelMask()I

    #@90
    move-result v4

    #@91
    .line 498
    :cond_4
    :goto_0
    const/4 v6, 0x1

    #@92
    .line 499
    .local v6, "encoding":I
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    #@95
    move-result v2

    #@96
    and-int/lit8 v2, v2, 0x1

    #@98
    if-eqz v2, :cond_5

    #@9a
    .line 500
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getEncoding()I

    #@9d
    move-result v6

    #@9e
    :cond_5
    move-object/from16 v2, p0

    #@a0
    move/from16 v7, p4

    #@a2
    .line 502
    invoke-direct/range {v2 .. v7}, Landroid/media/AudioTrack;->audioParamCheck(IIIII)V

    #@a5
    .line 503
    const/4 v2, -0x1

    #@a6
    move-object/from16 v0, p0

    #@a8
    iput v2, v0, Landroid/media/AudioTrack;->mStreamType:I

    #@aa
    .line 505
    move-object/from16 v0, p0

    #@ac
    move/from16 v1, p3

    #@ae
    invoke-direct {v0, v1}, Landroid/media/AudioTrack;->audioBuffSizeCheck(I)V

    #@b1
    .line 507
    move-object/from16 v0, v21

    #@b3
    move-object/from16 v1, p0

    #@b5
    iput-object v0, v1, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    #@b7
    .line 509
    if-gez p5, :cond_7

    #@b9
    .line 510
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@bb
    new-instance v7, Ljava/lang/StringBuilder;

    #@bd
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@c0
    const-string/jumbo v8, "Invalid audio session ID: "

    #@c3
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v7

    #@c7
    move/from16 v0, p5

    #@c9
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v7

    #@cd
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d0
    move-result-object v7

    #@d1
    invoke-direct {v2, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d4
    throw v2

    #@d5
    .line 494
    .end local v6    # "encoding":I
    :cond_6
    if-nez v5, :cond_4

    #@d7
    .line 495
    const/16 v4, 0xc

    #@d9
    goto :goto_0

    #@da
    .line 513
    .restart local v6    # "encoding":I
    :cond_7
    const/4 v2, 0x1

    #@db
    new-array v11, v2, [I

    #@dd
    move-object/from16 v0, p0

    #@df
    iget v2, v0, Landroid/media/AudioTrack;->mSampleRate:I

    #@e1
    const/4 v7, 0x0

    #@e2
    aput v2, v11, v7

    #@e4
    .line 514
    .local v11, "sampleRate":[I
    const/4 v2, 0x1

    #@e5
    new-array v0, v2, [I

    #@e7
    move-object/from16 v17, v0

    #@e9
    .line 515
    .local v17, "session":[I
    const/4 v2, 0x0

    #@ea
    aput p5, v17, v2

    #@ec
    .line 517
    new-instance v9, Ljava/lang/ref/WeakReference;

    #@ee
    move-object/from16 v0, p0

    #@f0
    invoke-direct {v9, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@f3
    move-object/from16 v0, p0

    #@f5
    iget-object v10, v0, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    #@f7
    .line 518
    move-object/from16 v0, p0

    #@f9
    iget v12, v0, Landroid/media/AudioTrack;->mChannelMask:I

    #@fb
    move-object/from16 v0, p0

    #@fd
    iget v13, v0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    #@ff
    move-object/from16 v0, p0

    #@101
    iget v14, v0, Landroid/media/AudioTrack;->mAudioFormat:I

    #@103
    .line 519
    move-object/from16 v0, p0

    #@105
    iget v15, v0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    #@107
    move-object/from16 v0, p0

    #@109
    iget v0, v0, Landroid/media/AudioTrack;->mDataLoadMode:I

    #@10b
    move/from16 v16, v0

    #@10d
    const-wide/16 v18, 0x0

    #@10f
    move-object/from16 v8, p0

    #@111
    .line 517
    invoke-direct/range {v8 .. v19}, Landroid/media/AudioTrack;->native_setup(Ljava/lang/Object;Ljava/lang/Object;[IIIIII[IJ)I

    #@114
    move-result v20

    #@115
    .line 520
    .local v20, "initResult":I
    if-eqz v20, :cond_8

    #@117
    .line 521
    new-instance v2, Ljava/lang/StringBuilder;

    #@119
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11c
    const-string/jumbo v7, "Error code "

    #@11f
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@122
    move-result-object v2

    #@123
    move/from16 v0, v20

    #@125
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@128
    move-result-object v2

    #@129
    const-string/jumbo v7, " when initializing AudioTrack."

    #@12c
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12f
    move-result-object v2

    #@130
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@133
    move-result-object v2

    #@134
    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    #@137
    .line 522
    return-void

    #@138
    .line 525
    :cond_8
    const/4 v2, 0x0

    #@139
    aget v2, v11, v2

    #@13b
    move-object/from16 v0, p0

    #@13d
    iput v2, v0, Landroid/media/AudioTrack;->mSampleRate:I

    #@13f
    .line 526
    const/4 v2, 0x0

    #@140
    aget v2, v17, v2

    #@142
    move-object/from16 v0, p0

    #@144
    iput v2, v0, Landroid/media/AudioTrack;->mSessionId:I

    #@146
    .line 528
    move-object/from16 v0, p0

    #@148
    iget v2, v0, Landroid/media/AudioTrack;->mDataLoadMode:I

    #@14a
    if-nez v2, :cond_9

    #@14c
    .line 529
    const/4 v2, 0x2

    #@14d
    move-object/from16 v0, p0

    #@14f
    iput v2, v0, Landroid/media/AudioTrack;->mState:I

    #@151
    .line 466
    :goto_1
    return-void

    #@152
    .line 531
    :cond_9
    const/4 v2, 0x1

    #@153
    move-object/from16 v0, p0

    #@155
    iput v2, v0, Landroid/media/AudioTrack;->mState:I

    #@157
    goto :goto_1
.end method

.method private audioBuffSizeCheck(I)V
    .locals 3
    .param p1, "audioBufferSize"    # I

    #@0
    .prologue
    .line 947
    iget v1, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    #@2
    invoke-static {v1}, Landroid/media/AudioFormat;->isEncodingLinearFrames(I)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 948
    iget v1, p0, Landroid/media/AudioTrack;->mChannelCount:I

    #@a
    iget v2, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    #@c
    invoke-static {v2}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    #@f
    move-result v2

    #@10
    mul-int v0, v1, v2

    #@12
    .line 952
    .local v0, "frameSizeInBytes":I
    :goto_0
    rem-int v1, p1, v0

    #@14
    if-nez v1, :cond_0

    #@16
    const/4 v1, 0x1

    #@17
    if-ge p1, v1, :cond_2

    #@19
    .line 953
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@1b
    const-string/jumbo v2, "Invalid audio buffer size."

    #@1e
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v1

    #@22
    .line 950
    .end local v0    # "frameSizeInBytes":I
    :cond_1
    const/4 v0, 0x1

    #@23
    .restart local v0    # "frameSizeInBytes":I
    goto :goto_0

    #@24
    .line 956
    :cond_2
    iput p1, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    #@26
    .line 957
    div-int v1, p1, v0

    #@28
    iput v1, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    #@2a
    .line 943
    return-void
.end method

.method private audioParamCheck(IIIII)V
    .locals 6
    .param p1, "sampleRateInHz"    # I
    .param p2, "channelConfig"    # I
    .param p3, "channelIndexMask"    # I
    .param p4, "audioFormat"    # I
    .param p5, "mode"    # I

    #@0
    .prologue
    const/16 v5, 0xc

    #@2
    const/4 v4, 0x1

    #@3
    const/4 v3, 0x0

    #@4
    .line 810
    const/16 v2, 0xfa0

    #@6
    if-lt p1, v2, :cond_0

    #@8
    .line 811
    const v2, 0x2ee00

    #@b
    if-le p1, v2, :cond_1

    #@d
    .line 812
    :cond_0
    if-eqz p1, :cond_1

    #@f
    .line 813
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@11
    new-instance v3, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    .line 814
    const-string/jumbo v4, "Hz is not a supported sample rate."

    #@1d
    .line 813
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v2

    #@29
    .line 816
    :cond_1
    iput p1, p0, Landroid/media/AudioTrack;->mSampleRate:I

    #@2b
    .line 821
    const/16 v2, 0xd

    #@2d
    if-ne p4, v2, :cond_2

    #@2f
    .line 822
    if-eq p2, v5, :cond_2

    #@31
    .line 823
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@33
    .line 824
    const-string/jumbo v3, "ENCODING_IEC61937 must be configured as CHANNEL_OUT_STEREO"

    #@36
    .line 823
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@39
    throw v2

    #@3a
    .line 829
    :cond_2
    iput p2, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    #@3c
    .line 831
    sparse-switch p2, :sswitch_data_0

    #@3f
    .line 844
    if-nez p2, :cond_3

    #@41
    if-eqz p3, :cond_3

    #@43
    .line 845
    iput v3, p0, Landroid/media/AudioTrack;->mChannelCount:I

    #@45
    .line 856
    :goto_0
    iput p3, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    #@47
    .line 857
    iget v2, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    #@49
    if-eqz v2, :cond_6

    #@4b
    .line 859
    sget v2, Landroid/media/AudioTrack;->CHANNEL_COUNT_MAX:I

    #@4d
    shl-int v2, v4, v2

    #@4f
    add-int/lit8 v1, v2, -0x1

    #@51
    .line 860
    .local v1, "indexMask":I
    not-int v2, v1

    #@52
    and-int/2addr v2, p3

    #@53
    if-eqz v2, :cond_5

    #@55
    .line 861
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@57
    new-instance v3, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string/jumbo v4, "Unsupported channel index configuration "

    #@5f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v3

    #@63
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@66
    move-result-object v3

    #@67
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v3

    #@6b
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6e
    throw v2

    #@6f
    .line 835
    .end local v1    # "indexMask":I
    :sswitch_0
    iput v4, p0, Landroid/media/AudioTrack;->mChannelCount:I

    #@71
    .line 836
    const/4 v2, 0x4

    #@72
    iput v2, p0, Landroid/media/AudioTrack;->mChannelMask:I

    #@74
    goto :goto_0

    #@75
    .line 840
    :sswitch_1
    const/4 v2, 0x2

    #@76
    iput v2, p0, Landroid/media/AudioTrack;->mChannelCount:I

    #@78
    .line 841
    iput v5, p0, Landroid/media/AudioTrack;->mChannelMask:I

    #@7a
    goto :goto_0

    #@7b
    .line 848
    :cond_3
    invoke-static {p2}, Landroid/media/AudioTrack;->isMultichannelConfigSupported(I)Z

    #@7e
    move-result v2

    #@7f
    if-nez v2, :cond_4

    #@81
    .line 850
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@83
    const-string/jumbo v3, "Unsupported channel configuration."

    #@86
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@89
    throw v2

    #@8a
    .line 852
    :cond_4
    iput p2, p0, Landroid/media/AudioTrack;->mChannelMask:I

    #@8c
    .line 853
    invoke-static {p2}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    #@8f
    move-result v2

    #@90
    iput v2, p0, Landroid/media/AudioTrack;->mChannelCount:I

    #@92
    goto :goto_0

    #@93
    .line 864
    .restart local v1    # "indexMask":I
    :cond_5
    invoke-static {p3}, Ljava/lang/Integer;->bitCount(I)I

    #@96
    move-result v0

    #@97
    .line 865
    .local v0, "channelIndexCount":I
    iget v2, p0, Landroid/media/AudioTrack;->mChannelCount:I

    #@99
    if-nez v2, :cond_8

    #@9b
    .line 866
    iput v0, p0, Landroid/media/AudioTrack;->mChannelCount:I

    #@9d
    .line 874
    .end local v0    # "channelIndexCount":I
    .end local v1    # "indexMask":I
    :cond_6
    if-ne p4, v4, :cond_7

    #@9f
    .line 875
    const/4 p4, 0x2

    #@a0
    .line 878
    :cond_7
    invoke-static {p4}, Landroid/media/AudioFormat;->isPublicEncoding(I)Z

    #@a3
    move-result v2

    #@a4
    if-nez v2, :cond_9

    #@a6
    .line 879
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@a8
    const-string/jumbo v3, "Unsupported audio encoding."

    #@ab
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@ae
    throw v2

    #@af
    .line 867
    .restart local v0    # "channelIndexCount":I
    .restart local v1    # "indexMask":I
    :cond_8
    iget v2, p0, Landroid/media/AudioTrack;->mChannelCount:I

    #@b1
    if-eq v2, v0, :cond_6

    #@b3
    .line 868
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@b5
    const-string/jumbo v3, "Channel count must match"

    #@b8
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@bb
    throw v2

    #@bc
    .line 881
    .end local v0    # "channelIndexCount":I
    .end local v1    # "indexMask":I
    :cond_9
    iput p4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    #@be
    .line 885
    if-eq p5, v4, :cond_b

    #@c0
    if-eqz p5, :cond_b

    #@c2
    .line 887
    :cond_a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@c4
    const-string/jumbo v3, "Invalid mode."

    #@c7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@ca
    throw v2

    #@cb
    .line 886
    :cond_b
    if-eq p5, v4, :cond_c

    #@cd
    iget v2, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    #@cf
    invoke-static {v2}, Landroid/media/AudioFormat;->isEncodingLinearPcm(I)Z

    #@d2
    move-result v2

    #@d3
    if-eqz v2, :cond_a

    #@d5
    .line 889
    :cond_c
    iput p5, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    #@d7
    .line 807
    return-void

    #@d8
    .line 831
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_0
        0xc -> :sswitch_1
    .end sparse-switch
.end method

.method private broadcastRoutingChange()V
    .locals 5

    #@0
    .prologue
    .line 2591
    invoke-static {}, Landroid/media/AudioManager;->resetAudioPortGeneration()I

    #@3
    .line 2592
    iget-object v4, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    #@5
    monitor-enter v4

    #@6
    .line 2593
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    #@8
    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@b
    move-result-object v3

    #@c
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v1

    #@10
    .local v1, "delegate$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_1

    #@16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;

    #@1c
    .line 2594
    .local v0, "delegate":Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;
    invoke-virtual {v0}, Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    #@1f
    move-result-object v2

    #@20
    .line 2595
    .local v2, "handler":Landroid/os/Handler;
    if-eqz v2, :cond_0

    #@22
    .line 2596
    const/16 v3, 0x3e8

    #@24
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    goto :goto_0

    #@28
    .line 2592
    .end local v0    # "delegate":Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;
    .end local v1    # "delegate$iterator":Ljava/util/Iterator;
    .end local v2    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception v3

    #@29
    monitor-exit v4

    #@2a
    throw v3

    #@2b
    .restart local v1    # "delegate$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v4

    #@2c
    .line 2590
    return-void
.end method

.method private static clampGainOrLevel(F)F
    .locals 1
    .param p0, "gainOrLevel"    # F

    #@0
    .prologue
    .line 1478
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1479
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@b
    throw v0

    #@c
    .line 1481
    :cond_0
    const/4 v0, 0x0

    #@d
    cmpg-float v0, p0, v0

    #@f
    if-gez v0, :cond_2

    #@11
    .line 1482
    const/4 p0, 0x0

    #@12
    .line 1486
    :cond_1
    :goto_0
    return p0

    #@13
    .line 1483
    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    #@15
    cmpl-float v0, p0, v0

    #@17
    if-lez v0, :cond_1

    #@19
    .line 1484
    const/high16 p0, 0x3f800000    # 1.0f

    #@1b
    goto :goto_0
.end method

.method public static getMaxVolume()F
    .locals 1

    #@0
    .prologue
    .line 1005
    const/high16 v0, 0x3f800000    # 1.0f

    #@2
    return v0
.end method

.method public static getMinBufferSize(III)I
    .locals 5
    .param p0, "sampleRateInHz"    # I
    .param p1, "channelConfig"    # I
    .param p2, "audioFormat"    # I

    #@0
    .prologue
    const/4 v4, -0x2

    #@1
    .line 1299
    const/4 v0, 0x0

    #@2
    .line 1300
    .local v0, "channelCount":I
    sparse-switch p1, :sswitch_data_0

    #@5
    .line 1310
    invoke-static {p1}, Landroid/media/AudioTrack;->isMultichannelConfigSupported(I)Z

    #@8
    move-result v2

    #@9
    if-nez v2, :cond_0

    #@b
    .line 1311
    const-string/jumbo v2, "getMinBufferSize(): Invalid channel configuration."

    #@e
    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    #@11
    .line 1312
    return v4

    #@12
    .line 1303
    :sswitch_0
    const/4 v0, 0x1

    #@13
    .line 1318
    :goto_0
    invoke-static {p2}, Landroid/media/AudioFormat;->isPublicEncoding(I)Z

    #@16
    move-result v2

    #@17
    if-nez v2, :cond_1

    #@19
    .line 1319
    const-string/jumbo v2, "getMinBufferSize(): Invalid audio format."

    #@1c
    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    #@1f
    .line 1320
    return v4

    #@20
    .line 1307
    :sswitch_1
    const/4 v0, 0x2

    #@21
    .line 1308
    goto :goto_0

    #@22
    .line 1314
    :cond_0
    invoke-static {p1}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    #@25
    move-result v0

    #@26
    goto :goto_0

    #@27
    .line 1325
    :cond_1
    const/16 v2, 0xfa0

    #@29
    if-lt p0, v2, :cond_2

    #@2b
    .line 1326
    const v2, 0x2ee00

    #@2e
    if-le p0, v2, :cond_3

    #@30
    .line 1327
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v3, "getMinBufferSize(): "

    #@38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v2

    #@40
    const-string/jumbo v3, " Hz is not a supported sample rate."

    #@43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v2

    #@47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v2

    #@4b
    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    #@4e
    .line 1328
    return v4

    #@4f
    .line 1331
    :cond_3
    invoke-static {p0, v0, p2}, Landroid/media/AudioTrack;->native_get_min_buff_size(III)I

    #@52
    move-result v1

    #@53
    .line 1332
    .local v1, "size":I
    if-gtz v1, :cond_4

    #@55
    .line 1333
    const-string/jumbo v2, "getMinBufferSize(): error querying hardware"

    #@58
    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    #@5b
    .line 1334
    const/4 v2, -0x1

    #@5c
    return v2

    #@5d
    .line 1337
    :cond_4
    return v1

    #@5e
    .line 1300
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_0
        0xc -> :sswitch_1
    .end sparse-switch
.end method

.method public static getMinVolume()F
    .locals 1

    #@0
    .prologue
    .line 993
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public static getNativeOutputSampleRate(I)I
    .locals 1
    .param p0, "streamType"    # I

    #@0
    .prologue
    .line 1272
    invoke-static {p0}, Landroid/media/AudioTrack;->native_get_output_sample_rate(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private static isMultichannelConfigSupported(I)Z
    .locals 7
    .param p0, "channelConfig"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 899
    and-int/lit16 v4, p0, 0x1cfc

    #@3
    if-eq v4, p0, :cond_0

    #@5
    .line 900
    const-string/jumbo v4, "Channel configuration features unsupported channels"

    #@8
    invoke-static {v4}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    #@b
    .line 901
    return v6

    #@c
    .line 903
    :cond_0
    invoke-static {p0}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    #@f
    move-result v1

    #@10
    .line 904
    .local v1, "channelCount":I
    sget v4, Landroid/media/AudioTrack;->CHANNEL_COUNT_MAX:I

    #@12
    if-le v1, v4, :cond_1

    #@14
    .line 905
    new-instance v4, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v5, "Channel configuration contains too many channels "

    #@1c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    .line 906
    const-string/jumbo v5, ">"

    #@27
    .line 905
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    .line 906
    sget v5, Landroid/media/AudioTrack;->CHANNEL_COUNT_MAX:I

    #@2d
    .line 905
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v4

    #@35
    invoke-static {v4}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    #@38
    .line 907
    return v6

    #@39
    .line 913
    :cond_1
    const/16 v2, 0xc

    #@3b
    .line 914
    .local v2, "frontPair":I
    and-int/lit8 v4, p0, 0xc

    #@3d
    const/16 v5, 0xc

    #@3f
    if-eq v4, v5, :cond_2

    #@41
    .line 915
    const-string/jumbo v4, "Front channels must be present in multichannel configurations"

    #@44
    invoke-static {v4}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    #@47
    .line 916
    return v6

    #@48
    .line 919
    :cond_2
    const/16 v0, 0xc0

    #@4a
    .line 920
    .local v0, "backPair":I
    and-int/lit16 v4, p0, 0xc0

    #@4c
    if-eqz v4, :cond_3

    #@4e
    .line 921
    and-int/lit16 v4, p0, 0xc0

    #@50
    const/16 v5, 0xc0

    #@52
    if-eq v4, v5, :cond_3

    #@54
    .line 922
    const-string/jumbo v4, "Rear channels can\'t be used independently"

    #@57
    invoke-static {v4}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    #@5a
    .line 923
    return v6

    #@5b
    .line 927
    :cond_3
    const/16 v3, 0x1800

    #@5d
    .line 928
    .local v3, "sidePair":I
    and-int/lit16 v4, p0, 0x1800

    #@5f
    if-eqz v4, :cond_4

    #@61
    .line 929
    and-int/lit16 v4, p0, 0x1800

    #@63
    const/16 v5, 0x1800

    #@65
    if-eq v4, v5, :cond_4

    #@67
    .line 930
    const-string/jumbo v4, "Side channels can\'t be used independently"

    #@6a
    invoke-static {v4}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    #@6d
    .line 931
    return v6

    #@6e
    .line 933
    :cond_4
    const/4 v4, 0x1

    #@6f
    return v4
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2852
    const-string/jumbo v0, "android.media.AudioTrack"

    #@3
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 2851
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2856
    const-string/jumbo v0, "android.media.AudioTrack"

    #@3
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 2855
    return-void
.end method

.method private final native native_attachAuxEffect(I)I
.end method

.method private final native native_disableDeviceCallback()V
.end method

.method private final native native_enableDeviceCallback()V
.end method

.method private final native native_finalize()V
.end method

.method private final native native_flush()V
.end method

.method private final native native_getRoutedDeviceId()I
.end method

.method private static native native_get_FCC_8()I
.end method

.method private final native native_get_buffer_capacity_frames()I
.end method

.method private final native native_get_buffer_size_frames()I
.end method

.method private final native native_get_latency()I
.end method

.method private final native native_get_marker_pos()I
.end method

.method private static final native native_get_min_buff_size(III)I
.end method

.method private static final native native_get_output_sample_rate(I)I
.end method

.method private final native native_get_playback_params()Landroid/media/PlaybackParams;
.end method

.method private final native native_get_playback_rate()I
.end method

.method private final native native_get_pos_update_period()I
.end method

.method private final native native_get_position()I
.end method

.method private final native native_get_timestamp([J)I
.end method

.method private final native native_get_underrun_count()I
.end method

.method private final native native_pause()V
.end method

.method private final native native_reload_static()I
.end method

.method private final native native_setAuxEffectSendLevel(F)I
.end method

.method private final native native_setOutputDevice(I)Z
.end method

.method private final native native_setVolume(FF)V
.end method

.method private final native native_set_buffer_size_frames(I)I
.end method

.method private final native native_set_loop(III)I
.end method

.method private final native native_set_marker_pos(I)I
.end method

.method private final native native_set_playback_params(Landroid/media/PlaybackParams;)V
.end method

.method private final native native_set_playback_rate(I)I
.end method

.method private final native native_set_pos_update_period(I)I
.end method

.method private final native native_set_position(I)I
.end method

.method private final native native_setup(Ljava/lang/Object;Ljava/lang/Object;[IIIIII[IJ)I
.end method

.method private final native native_start()V
.end method

.method private final native native_stop()V
.end method

.method private final native native_write_byte([BIIIZ)I
.end method

.method private final native native_write_float([FIIIZ)I
.end method

.method private final native native_write_native_bytes(Ljava/lang/Object;IIIZ)I
.end method

.method private final native native_write_short([SIIIZ)I
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 5
    .param p0, "audiotrack_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2738
    check-cast p0, Ljava/lang/ref/WeakReference;

    #@2
    .end local p0    # "audiotrack_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v3

    #@6
    check-cast v3, Landroid/media/AudioTrack;

    #@8
    .line 2739
    .local v3, "track":Landroid/media/AudioTrack;
    if-nez v3, :cond_0

    #@a
    .line 2740
    return-void

    #@b
    .line 2743
    :cond_0
    const/16 v4, 0x3e8

    #@d
    if-ne p1, v4, :cond_1

    #@f
    .line 2744
    invoke-direct {v3}, Landroid/media/AudioTrack;->broadcastRoutingChange()V

    #@12
    .line 2745
    return-void

    #@13
    .line 2747
    :cond_1
    iget-object v0, v3, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    #@15
    .line 2748
    .local v0, "delegate":Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;
    if-eqz v0, :cond_2

    #@17
    .line 2749
    invoke-virtual {v0}, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    #@1a
    move-result-object v1

    #@1b
    .line 2750
    .local v1, "handler":Landroid/os/Handler;
    if-eqz v1, :cond_2

    #@1d
    .line 2751
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@20
    move-result-object v2

    #@21
    .line 2752
    .local v2, "m":Landroid/os/Message;
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@24
    .line 2736
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "m":Landroid/os/Message;
    :cond_2
    return-void
.end method

.method private testDisableNativeRoutingCallbacksLocked()V
    .locals 1

    #@0
    .prologue
    .line 2476
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 2477
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_disableDeviceCallback()V

    #@b
    .line 2475
    :cond_0
    return-void
.end method

.method private testEnableNativeRoutingCallbacksLocked()V
    .locals 1

    #@0
    .prologue
    .line 2467
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 2468
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_enableDeviceCallback()V

    #@b
    .line 2466
    :cond_0
    return-void
.end method


# virtual methods
.method public addOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "listener"    # Landroid/media/AudioRouting$OnRoutingChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 2505
    iget-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    #@2
    monitor-enter v1

    #@3
    .line 2506
    if-eqz p1, :cond_0

    #@5
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    #@7
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .end local p2    # "handler":Landroid/os/Handler;
    :cond_0
    :goto_0
    monitor-exit v1

    #@e
    .line 2504
    return-void

    #@f
    .line 2507
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_1
    :try_start_1
    invoke-direct {p0}, Landroid/media/AudioTrack;->testEnableNativeRoutingCallbacksLocked()V

    #@12
    .line 2508
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    #@14
    .line 2509
    new-instance v2, Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;

    #@16
    .line 2510
    if-eqz p2, :cond_2

    #@18
    .line 2509
    .end local p2    # "handler":Landroid/os/Handler;
    :goto_1
    invoke-direct {v2, p0, p0, p1, p2}, Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;-><init>(Landroid/media/AudioTrack;Landroid/media/AudioTrack;Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V

    #@1b
    .line 2508
    invoke-virtual {v0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    goto :goto_0

    #@1f
    .line 2505
    :catchall_0
    move-exception v0

    #@20
    monitor-exit v1

    #@21
    throw v0

    #@22
    .line 2510
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_2
    :try_start_2
    new-instance p2, Landroid/os/Handler;

    #@24
    .end local p2    # "handler":Landroid/os/Handler;
    iget-object v3, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    #@26
    invoke-direct {p2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@29
    goto :goto_1
.end method

.method public addOnRoutingChangedListener(Landroid/media/AudioTrack$OnRoutingChangedListener;Landroid/os/Handler;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/AudioTrack$OnRoutingChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2572
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioTrack;->addOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V

    #@3
    .line 2571
    return-void
.end method

.method public attachAuxEffect(I)I
    .locals 1
    .param p1, "effectId"    # I

    #@0
    .prologue
    .line 2364
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 2365
    const/4 v0, -0x3

    #@5
    return v0

    #@6
    .line 2367
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_attachAuxEffect(I)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method deferred_connect(J)V
    .locals 13
    .param p1, "nativeTrackInJavaObj"    # J

    #@0
    .prologue
    .line 571
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    #@2
    const/4 v1, 0x1

    #@3
    if-eq v0, v1, :cond_1

    #@5
    .line 574
    const/4 v0, 0x1

    #@6
    new-array v9, v0, [I

    #@8
    const/4 v0, 0x0

    #@9
    const/4 v1, 0x0

    #@a
    aput v0, v9, v1

    #@c
    .line 575
    .local v9, "session":[I
    const/4 v0, 0x1

    #@d
    new-array v3, v0, [I

    #@f
    const/4 v0, 0x0

    #@10
    const/4 v1, 0x0

    #@11
    aput v0, v3, v1

    #@13
    .line 576
    .local v3, "rates":[I
    new-instance v1, Ljava/lang/ref/WeakReference;

    #@15
    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@18
    .line 577
    const/4 v2, 0x0

    #@19
    .line 579
    const/4 v4, 0x0

    #@1a
    .line 580
    const/4 v5, 0x0

    #@1b
    .line 581
    const/4 v6, 0x0

    #@1c
    .line 582
    const/4 v7, 0x0

    #@1d
    .line 583
    const/4 v8, 0x0

    #@1e
    move-object v0, p0

    #@1f
    move-wide v10, p1

    #@20
    .line 576
    invoke-direct/range {v0 .. v11}, Landroid/media/AudioTrack;->native_setup(Ljava/lang/Object;Ljava/lang/Object;[IIIIII[IJ)I

    #@23
    move-result v12

    #@24
    .line 586
    .local v12, "initResult":I
    if-eqz v12, :cond_0

    #@26
    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v1, "Error code "

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    const-string/jumbo v1, " when initializing AudioTrack."

    #@39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    invoke-static {v0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    #@44
    .line 588
    return-void

    #@45
    .line 591
    :cond_0
    const/4 v0, 0x0

    #@46
    aget v0, v9, v0

    #@48
    iput v0, p0, Landroid/media/AudioTrack;->mSessionId:I

    #@4a
    .line 593
    const/4 v0, 0x1

    #@4b
    iput v0, p0, Landroid/media/AudioTrack;->mState:I

    #@4d
    .line 570
    .end local v3    # "rates":[I
    .end local v9    # "session":[I
    .end local v12    # "initResult":I
    :cond_1
    return-void
.end method

.method protected finalize()V
    .locals 0

    #@0
    .prologue
    .line 979
    invoke-virtual {p0}, Landroid/media/AudioTrack;->baseRelease()V

    #@3
    .line 980
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_finalize()V

    #@6
    .line 978
    return-void
.end method

.method public flush()V
    .locals 2

    #@0
    .prologue
    .line 1812
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    #@2
    const/4 v1, 0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 1814
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_flush()V

    #@8
    .line 1815
    const/4 v0, 0x0

    #@9
    iput-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    #@b
    .line 1816
    const/4 v0, 0x0

    #@c
    iput v0, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    #@e
    .line 1811
    :cond_0
    return-void
.end method

.method public getAudioFormat()I
    .locals 1

    #@0
    .prologue
    .line 1043
    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    #@2
    return v0
.end method

.method public getAudioSessionId()I
    .locals 1

    #@0
    .prologue
    .line 1347
    iget v0, p0, Landroid/media/AudioTrack;->mSessionId:I

    #@2
    return v0
.end method

.method public getBufferCapacityInFrames()I
    .locals 1

    #@0
    .prologue
    .line 1193
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_buffer_capacity_frames()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getBufferSizeInFrames()I
    .locals 1

    #@0
    .prologue
    .line 1137
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_buffer_size_frames()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getChannelConfiguration()I
    .locals 1

    #@0
    .prologue
    .line 1067
    iget v0, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    #@2
    return v0
.end method

.method public getChannelCount()I
    .locals 1

    #@0
    .prologue
    .line 1092
    iget v0, p0, Landroid/media/AudioTrack;->mChannelCount:I

    #@2
    return v0
.end method

.method public getFormat()Landroid/media/AudioFormat;
    .locals 3

    #@0
    .prologue
    .line 1076
    new-instance v1, Landroid/media/AudioFormat$Builder;

    #@2
    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    #@5
    .line 1077
    iget v2, p0, Landroid/media/AudioTrack;->mSampleRate:I

    #@7
    .line 1076
    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    #@a
    move-result-object v1

    #@b
    .line 1078
    iget v2, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    #@d
    .line 1076
    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    #@10
    move-result-object v0

    #@11
    .line 1079
    .local v0, "builder":Landroid/media/AudioFormat$Builder;
    iget v1, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 1080
    iget v1, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    #@17
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    #@1a
    .line 1082
    :cond_0
    iget v1, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    #@1c
    if-eqz v1, :cond_1

    #@1e
    .line 1083
    iget v1, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    #@20
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelIndexMask(I)Landroid/media/AudioFormat$Builder;

    #@23
    .line 1085
    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    #@26
    move-result-object v1

    #@27
    return-object v1
.end method

.method public getLatency()I
    .locals 1

    #@0
    .prologue
    .line 1248
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_latency()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method protected getNativeFrameCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1204
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_buffer_capacity_frames()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getNotificationMarkerPosition()I
    .locals 1

    #@0
    .prologue
    .line 1213
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_marker_pos()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getPlayState()I
    .locals 2

    #@0
    .prologue
    .line 1114
    iget-object v0, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 1115
    :try_start_0
    iget v1, p0, Landroid/media/AudioTrack;->mPlayState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 1114
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public getPlaybackHeadPosition()I
    .locals 1

    #@0
    .prologue
    .line 1236
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_position()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getPlaybackParams()Landroid/media/PlaybackParams;
    .locals 1

    #@0
    .prologue
    .line 1035
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_playback_params()Landroid/media/PlaybackParams;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getPlaybackRate()I
    .locals 1

    #@0
    .prologue
    .line 1025
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_playback_rate()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getPositionNotificationPeriod()I
    .locals 1

    #@0
    .prologue
    .line 1221
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_pos_update_period()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getPreferredDevice()Landroid/media/AudioDeviceInfo;
    .locals 1

    #@0
    .prologue
    .line 2437
    monitor-enter p0

    #@1
    .line 2438
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    .line 2437
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public getRoutedDevice()Landroid/media/AudioDeviceInfo;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2449
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_getRoutedDeviceId()I

    #@4
    move-result v0

    #@5
    .line 2450
    .local v0, "deviceId":I
    if-nez v0, :cond_0

    #@7
    .line 2451
    return-object v4

    #@8
    .line 2454
    :cond_0
    const/4 v3, 0x2

    #@9
    invoke-static {v3}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    #@c
    move-result-object v1

    #@d
    .line 2455
    .local v1, "devices":[Landroid/media/AudioDeviceInfo;
    const/4 v2, 0x0

    #@e
    .local v2, "i":I
    :goto_0
    array-length v3, v1

    #@f
    if-ge v2, v3, :cond_2

    #@11
    .line 2456
    aget-object v3, v1, v2

    #@13
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getId()I

    #@16
    move-result v3

    #@17
    if-ne v3, v0, :cond_1

    #@19
    .line 2457
    aget-object v3, v1, v2

    #@1b
    return-object v3

    #@1c
    .line 2455
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 2460
    :cond_2
    return-object v4
.end method

.method public getSampleRate()I
    .locals 1

    #@0
    .prologue
    .line 1018
    iget v0, p0, Landroid/media/AudioTrack;->mSampleRate:I

    #@2
    return v0
.end method

.method public getState()I
    .locals 1

    #@0
    .prologue
    .line 1104
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    #@2
    return v0
.end method

.method public getStreamType()I
    .locals 1

    #@0
    .prologue
    .line 1054
    iget v0, p0, Landroid/media/AudioTrack;->mStreamType:I

    #@2
    return v0
.end method

.method public getTimestamp(Landroid/media/AudioTimestamp;)Z
    .locals 5
    .param p1, "timestamp"    # Landroid/media/AudioTimestamp;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1392
    if-nez p1, :cond_0

    #@4
    .line 1393
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@6
    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@9
    throw v2

    #@a
    .line 1396
    :cond_0
    const/4 v2, 0x2

    #@b
    new-array v0, v2, [J

    #@d
    .line 1397
    .local v0, "longArray":[J
    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_get_timestamp([J)I

    #@10
    move-result v1

    #@11
    .line 1398
    .local v1, "ret":I
    if-eqz v1, :cond_1

    #@13
    .line 1399
    return v3

    #@14
    .line 1401
    :cond_1
    aget-wide v2, v0, v3

    #@16
    iput-wide v2, p1, Landroid/media/AudioTimestamp;->framePosition:J

    #@18
    .line 1402
    aget-wide v2, v0, v4

    #@1a
    iput-wide v2, p1, Landroid/media/AudioTimestamp;->nanoTime:J

    #@1c
    .line 1403
    return v4
.end method

.method public getTimestampWithStatus(Landroid/media/AudioTimestamp;)I
    .locals 4
    .param p1, "timestamp"    # Landroid/media/AudioTimestamp;

    #@0
    .prologue
    .line 1434
    if-nez p1, :cond_0

    #@2
    .line 1435
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@7
    throw v2

    #@8
    .line 1438
    :cond_0
    const/4 v2, 0x2

    #@9
    new-array v0, v2, [J

    #@b
    .line 1439
    .local v0, "longArray":[J
    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_get_timestamp([J)I

    #@e
    move-result v1

    #@f
    .line 1440
    .local v1, "ret":I
    const/4 v2, 0x0

    #@10
    aget-wide v2, v0, v2

    #@12
    iput-wide v2, p1, Landroid/media/AudioTimestamp;->framePosition:J

    #@14
    .line 1441
    const/4 v2, 0x1

    #@15
    aget-wide v2, v0, v2

    #@17
    iput-wide v2, p1, Landroid/media/AudioTimestamp;->nanoTime:J

    #@19
    .line 1442
    return v1
.end method

.method public getUnderrunCount()I
    .locals 1

    #@0
    .prologue
    .line 1265
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_underrun_count()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public final native native_release()V
.end method

.method public pause()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 1783
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    #@2
    const/4 v1, 0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 1784
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "pause() called on uninitialized AudioTrack."

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 1789
    :cond_0
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    #@10
    monitor-enter v1

    #@11
    .line 1790
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_pause()V

    #@14
    .line 1791
    const/4 v0, 0x2

    #@15
    iput v0, p0, Landroid/media/AudioTrack;->mPlayState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit v1

    #@18
    .line 1782
    return-void

    #@19
    .line 1789
    :catchall_0
    move-exception v0

    #@1a
    monitor-exit v1

    #@1b
    throw v0
.end method

.method public play()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 1741
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    #@2
    const/4 v1, 0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 1742
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "play() called on uninitialized AudioTrack."

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 1744
    :cond_0
    invoke-virtual {p0}, Landroid/media/AudioTrack;->baseStart()V

    #@11
    .line 1745
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    #@13
    monitor-enter v1

    #@14
    .line 1746
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_start()V

    #@17
    .line 1747
    const/4 v0, 0x3

    #@18
    iput v0, p0, Landroid/media/AudioTrack;->mPlayState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    monitor-exit v1

    #@1b
    .line 1740
    return-void

    #@1c
    .line 1745
    :catchall_0
    move-exception v0

    #@1d
    monitor-exit v1

    #@1e
    throw v0
.end method

.method playerSetAuxEffectSendLevel(F)I
    .locals 2
    .param p1, "level"    # F

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2397
    invoke-static {p1}, Landroid/media/AudioTrack;->clampGainOrLevel(F)F

    #@4
    move-result p1

    #@5
    .line 2398
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_setAuxEffectSendLevel(F)I

    #@8
    move-result v0

    #@9
    .line 2399
    .local v0, "err":I
    if-nez v0, :cond_0

    #@b
    :goto_0
    return v1

    #@c
    :cond_0
    const/4 v1, -0x1

    #@d
    goto :goto_0
.end method

.method playerSetVolume(FF)V
    .locals 0
    .param p1, "leftVolume"    # F
    .param p2, "rightVolume"    # F

    #@0
    .prologue
    .line 1517
    invoke-static {p1}, Landroid/media/AudioTrack;->clampGainOrLevel(F)F

    #@3
    move-result p1

    #@4
    .line 1518
    invoke-static {p2}, Landroid/media/AudioTrack;->clampGainOrLevel(F)F

    #@7
    move-result p2

    #@8
    .line 1520
    invoke-direct {p0, p1, p2}, Landroid/media/AudioTrack;->native_setVolume(FF)V

    #@b
    .line 1516
    return-void
.end method

.method public release()V
    .locals 2

    #@0
    .prologue
    .line 968
    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioTrack;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 972
    :goto_0
    invoke-virtual {p0}, Landroid/media/AudioTrack;->baseRelease()V

    #@6
    .line 973
    invoke-virtual {p0}, Landroid/media/AudioTrack;->native_release()V

    #@9
    .line 974
    const/4 v1, 0x0

    #@a
    iput v1, p0, Landroid/media/AudioTrack;->mState:I

    #@c
    .line 964
    return-void

    #@d
    .line 969
    :catch_0
    move-exception v0

    #@e
    .local v0, "ise":Ljava/lang/IllegalStateException;
    goto :goto_0
.end method

.method public reloadStaticData()I
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 2336
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    #@3
    if-eq v0, v1, :cond_0

    #@5
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    #@7
    if-eq v0, v1, :cond_1

    #@9
    .line 2337
    :cond_0
    const/4 v0, -0x3

    #@a
    return v0

    #@b
    .line 2339
    :cond_1
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_reload_static()I

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/media/AudioRouting$OnRoutingChangedListener;

    #@0
    .prologue
    .line 2523
    iget-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    #@2
    monitor-enter v1

    #@3
    .line 2524
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 2525
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    #@d
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    .line 2527
    :cond_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->testDisableNativeRoutingCallbacksLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v1

    #@14
    .line 2522
    return-void

    #@15
    .line 2523
    :catchall_0
    move-exception v0

    #@16
    monitor-exit v1

    #@17
    throw v0
.end method

.method public removeOnRoutingChangedListener(Landroid/media/AudioTrack$OnRoutingChangedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/AudioTrack$OnRoutingChangedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2584
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V

    #@3
    .line 2583
    return-void
.end method

.method public setAuxEffectSendLevel(F)I
    .locals 1
    .param p1, "level"    # F

    #@0
    .prologue
    .line 2389
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 2390
    const/4 v0, -0x3

    #@5
    return v0

    #@6
    .line 2392
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->baseSetAuxEffectSendLevel(F)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public setBufferSizeInFrames(I)I
    .locals 1
    .param p1, "bufferSizeInFrames"    # I

    #@0
    .prologue
    .line 1164
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    #@2
    if-eqz v0, :cond_0

    #@4
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    #@6
    if-nez v0, :cond_1

    #@8
    .line 1165
    :cond_0
    const/4 v0, -0x3

    #@9
    return v0

    #@a
    .line 1167
    :cond_1
    if-gez p1, :cond_2

    #@c
    .line 1168
    const/4 v0, -0x2

    #@d
    return v0

    #@e
    .line 1170
    :cond_2
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_buffer_size_frames(I)I

    #@11
    move-result v0

    #@12
    return v0
.end method

.method public setLoopPoints(III)I
    .locals 2
    .param p1, "startInFrames"    # I
    .param p2, "endInFrames"    # I
    .param p3, "loopCount"    # I

    #@0
    .prologue
    .line 1686
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    #@2
    const/4 v1, 0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    #@7
    if-nez v0, :cond_1

    #@9
    .line 1688
    :cond_0
    const/4 v0, -0x3

    #@a
    return v0

    #@b
    .line 1687
    :cond_1
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getPlayState()I

    #@e
    move-result v0

    #@f
    const/4 v1, 0x3

    #@10
    if-eq v0, v1, :cond_0

    #@12
    .line 1690
    if-nez p3, :cond_3

    #@14
    .line 1696
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioTrack;->native_set_loop(III)I

    #@17
    move-result v0

    #@18
    return v0

    #@19
    .line 1692
    :cond_3
    if-ltz p1, :cond_4

    #@1b
    iget v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    #@1d
    if-lt p1, v0, :cond_5

    #@1f
    .line 1694
    :cond_4
    :goto_0
    const/4 v0, -0x2

    #@20
    return v0

    #@21
    .line 1693
    :cond_5
    if-ge p1, p2, :cond_4

    #@23
    iget v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    #@25
    if-le p2, v0, :cond_2

    #@27
    goto :goto_0
.end method

.method public setNotificationMarkerPosition(I)I
    .locals 1
    .param p1, "markerInFrames"    # I

    #@0
    .prologue
    .line 1604
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1605
    const/4 v0, -0x3

    #@5
    return v0

    #@6
    .line 1607
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_marker_pos(I)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public setPlaybackHeadPosition(I)I
    .locals 2
    .param p1, "positionInFrames"    # I

    #@0
    .prologue
    .line 1644
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    #@2
    const/4 v1, 0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    #@7
    if-nez v0, :cond_1

    #@9
    .line 1646
    :cond_0
    const/4 v0, -0x3

    #@a
    return v0

    #@b
    .line 1645
    :cond_1
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getPlayState()I

    #@e
    move-result v0

    #@f
    const/4 v1, 0x3

    #@10
    if-eq v0, v1, :cond_0

    #@12
    .line 1648
    if-ltz p1, :cond_2

    #@14
    iget v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    #@16
    if-le p1, v0, :cond_3

    #@18
    .line 1649
    :cond_2
    const/4 v0, -0x2

    #@19
    return v0

    #@1a
    .line 1651
    :cond_3
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_position(I)I

    #@1d
    move-result v0

    #@1e
    return v0
.end method

.method public setPlaybackParams(Landroid/media/PlaybackParams;)V
    .locals 2
    .param p1, "params"    # Landroid/media/PlaybackParams;

    #@0
    .prologue
    .line 1587
    if-nez p1, :cond_0

    #@2
    .line 1588
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "params is null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 1590
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_playback_params(Landroid/media/PlaybackParams;)V

    #@e
    .line 1586
    return-void
.end method

.method public setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;

    #@0
    .prologue
    .line 1456
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/media/AudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V

    #@4
    .line 1455
    return-void
.end method

.method public setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1469
    if-eqz p1, :cond_0

    #@3
    .line 1470
    new-instance v0, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    #@5
    invoke-direct {v0, p0, p0, p1, p2}, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;-><init>(Landroid/media/AudioTrack;Landroid/media/AudioTrack;Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V

    #@8
    iput-object v0, p0, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    #@a
    .line 1468
    :goto_0
    return-void

    #@b
    .line 1472
    :cond_0
    iput-object v0, p0, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    #@d
    goto :goto_0
.end method

.method public setPlaybackRate(I)I
    .locals 2
    .param p1, "sampleRateInHz"    # I

    #@0
    .prologue
    .line 1562
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    #@2
    const/4 v1, 0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 1563
    const/4 v0, -0x3

    #@6
    return v0

    #@7
    .line 1565
    :cond_0
    if-gtz p1, :cond_1

    #@9
    .line 1566
    const/4 v0, -0x2

    #@a
    return v0

    #@b
    .line 1568
    :cond_1
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_playback_rate(I)I

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public setPositionNotificationPeriod(I)I
    .locals 1
    .param p1, "periodInFrames"    # I

    #@0
    .prologue
    .line 1618
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1619
    const/4 v0, -0x3

    #@5
    return v0

    #@6
    .line 1621
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_pos_update_period(I)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z
    .locals 3
    .param p1, "deviceInfo"    # Landroid/media/AudioDeviceInfo;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2418
    if-eqz p1, :cond_0

    #@3
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->isSink()Z

    #@6
    move-result v2

    #@7
    if-eqz v2, :cond_3

    #@9
    .line 2421
    :cond_0
    if-eqz p1, :cond_1

    #@b
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getId()I

    #@e
    move-result v0

    #@f
    .line 2422
    .local v0, "preferredDeviceId":I
    :cond_1
    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_setOutputDevice(I)Z

    #@12
    move-result v1

    #@13
    .line 2423
    .local v1, "status":Z
    if-eqz v1, :cond_2

    #@15
    .line 2424
    monitor-enter p0

    #@16
    .line 2425
    :try_start_0
    iput-object p1, p0, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    monitor-exit p0

    #@19
    .line 2428
    :cond_2
    return v1

    #@1a
    .line 2419
    .end local v0    # "preferredDeviceId":I
    .end local v1    # "status":Z
    :cond_3
    return v0

    #@1b
    .line 2424
    .restart local v0    # "preferredDeviceId":I
    .restart local v1    # "status":Z
    :catchall_0
    move-exception v2

    #@1c
    monitor-exit p0

    #@1d
    throw v2
.end method

.method protected setState(I)V
    .locals 0
    .param p1, "state"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1708
    iput p1, p0, Landroid/media/AudioTrack;->mState:I

    #@2
    .line 1707
    return-void
.end method

.method public setStereoVolume(FF)I
    .locals 2
    .param p1, "leftGain"    # F
    .param p2, "rightGain"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1507
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1508
    const/4 v0, -0x3

    #@6
    return v0

    #@7
    .line 1511
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioTrack;->baseSetVolume(FF)V

    #@a
    .line 1512
    return v1
.end method

.method public setVolume(F)I
    .locals 1
    .param p1, "gain"    # F

    #@0
    .prologue
    .line 1539
    invoke-virtual {p0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1761
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 1762
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "stop() called on uninitialized AudioTrack."

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 1766
    :cond_0
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    #@10
    monitor-enter v1

    #@11
    .line 1767
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_stop()V

    #@14
    .line 1768
    const/4 v0, 0x1

    #@15
    iput v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    #@17
    .line 1769
    const/4 v0, 0x0

    #@18
    iput-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    #@1a
    .line 1770
    const/4 v0, 0x0

    #@1b
    iput v0, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    monitor-exit v1

    #@1e
    .line 1760
    return-void

    #@1f
    .line 1766
    :catchall_0
    move-exception v0

    #@20
    monitor-exit v1

    #@21
    throw v0
.end method

.method public write(Ljava/nio/ByteBuffer;II)I
    .locals 8
    .param p1, "audioData"    # Ljava/nio/ByteBuffer;
    .param p2, "sizeInBytes"    # I
    .param p3, "writeMode"    # I

    #@0
    .prologue
    const/4 v3, -0x2

    #@1
    const/4 v7, 0x1

    #@2
    const/4 v5, 0x0

    #@3
    .line 2176
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    #@5
    if-nez v0, :cond_0

    #@7
    .line 2177
    const-string/jumbo v0, "android.media.AudioTrack"

    #@a
    const-string/jumbo v1, "AudioTrack.write() called in invalid state STATE_UNINITIALIZED"

    #@d
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 2178
    const/4 v0, -0x3

    #@11
    return v0

    #@12
    .line 2181
    :cond_0
    if-eqz p3, :cond_1

    #@14
    if-eq p3, v7, :cond_1

    #@16
    .line 2182
    const-string/jumbo v0, "android.media.AudioTrack"

    #@19
    const-string/jumbo v1, "AudioTrack.write() called with invalid blocking mode"

    #@1c
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 2183
    return v3

    #@20
    .line 2186
    :cond_1
    if-eqz p1, :cond_2

    #@22
    if-gez p2, :cond_3

    #@24
    .line 2187
    :cond_2
    const-string/jumbo v0, "android.media.AudioTrack"

    #@27
    new-instance v1, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v2, "AudioTrack.write() called with invalid size ("

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    const-string/jumbo v2, ") value"

    #@3a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v1

    #@42
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@45
    .line 2188
    return v3

    #@46
    .line 2186
    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@49
    move-result v0

    #@4a
    if-gt p2, v0, :cond_2

    #@4c
    .line 2191
    const/4 v6, 0x0

    #@4d
    .line 2192
    .local v6, "ret":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    #@50
    move-result v0

    #@51
    if-eqz v0, :cond_7

    #@53
    .line 2194
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@56
    move-result v2

    #@57
    iget v4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    #@59
    .line 2195
    if-nez p3, :cond_4

    #@5b
    move v5, v7

    #@5c
    :cond_4
    move-object v0, p0

    #@5d
    move-object v1, p1

    #@5e
    move v3, p2

    #@5f
    .line 2193
    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;->native_write_native_bytes(Ljava/lang/Object;IIIZ)I

    #@62
    move-result v6

    #@63
    .line 2203
    :goto_0
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    #@65
    if-nez v0, :cond_5

    #@67
    .line 2204
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    #@69
    const/4 v1, 0x2

    #@6a
    if-ne v0, v1, :cond_5

    #@6c
    .line 2205
    if-lez v6, :cond_5

    #@6e
    .line 2207
    iput v7, p0, Landroid/media/AudioTrack;->mState:I

    #@70
    .line 2210
    :cond_5
    if-lez v6, :cond_6

    #@72
    .line 2211
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@75
    move-result v0

    #@76
    add-int/2addr v0, v6

    #@77
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@7a
    .line 2214
    :cond_6
    return v6

    #@7b
    .line 2197
    :cond_7
    invoke-static {p1}, Ljava/nio/NioUtils;->unsafeArray(Ljava/nio/ByteBuffer;)[B

    #@7e
    move-result-object v1

    #@7f
    .line 2198
    invoke-static {p1}, Ljava/nio/NioUtils;->unsafeArrayOffset(Ljava/nio/ByteBuffer;)I

    #@82
    move-result v0

    #@83
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@86
    move-result v2

    #@87
    add-int/2addr v2, v0

    #@88
    .line 2199
    iget v4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    #@8a
    .line 2200
    if-nez p3, :cond_8

    #@8c
    move v5, v7

    #@8d
    :cond_8
    move-object v0, p0

    #@8e
    move v3, p2

    #@8f
    .line 2197
    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;->native_write_byte([BIIIZ)I

    #@92
    move-result v6

    #@93
    goto :goto_0
.end method

.method public write(Ljava/nio/ByteBuffer;IIJ)I
    .locals 8
    .param p1, "audioData"    # Ljava/nio/ByteBuffer;
    .param p2, "sizeInBytes"    # I
    .param p3, "writeMode"    # I
    .param p4, "timestamp"    # J

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v7, -0x2

    #@2
    const/4 v6, -0x3

    #@3
    const/4 v5, 0x0

    #@4
    const/4 v4, 0x0

    #@5
    .line 2249
    iget v2, p0, Landroid/media/AudioTrack;->mState:I

    #@7
    if-nez v2, :cond_0

    #@9
    .line 2250
    const-string/jumbo v2, "android.media.AudioTrack"

    #@c
    const-string/jumbo v3, "AudioTrack.write() called in invalid state STATE_UNINITIALIZED"

    #@f
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 2251
    return v6

    #@13
    .line 2254
    :cond_0
    if-eqz p3, :cond_1

    #@15
    if-eq p3, v3, :cond_1

    #@17
    .line 2255
    const-string/jumbo v2, "android.media.AudioTrack"

    #@1a
    const-string/jumbo v3, "AudioTrack.write() called with invalid blocking mode"

    #@1d
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 2256
    return v7

    #@21
    .line 2259
    :cond_1
    iget v2, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    #@23
    if-eq v2, v3, :cond_2

    #@25
    .line 2260
    const-string/jumbo v2, "android.media.AudioTrack"

    #@28
    const-string/jumbo v3, "AudioTrack.write() with timestamp called for non-streaming mode track"

    #@2b
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    .line 2261
    return v6

    #@2f
    .line 2264
    :cond_2
    iget-object v2, p0, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    #@31
    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getFlags()I

    #@34
    move-result v2

    #@35
    and-int/lit8 v2, v2, 0x10

    #@37
    if-nez v2, :cond_3

    #@39
    .line 2265
    const-string/jumbo v2, "android.media.AudioTrack"

    #@3c
    const-string/jumbo v3, "AudioTrack.write() called on a regular AudioTrack. Ignoring pts..."

    #@3f
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@42
    .line 2266
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    #@45
    move-result v2

    #@46
    return v2

    #@47
    .line 2269
    :cond_3
    if-eqz p1, :cond_4

    #@49
    if-gez p2, :cond_5

    #@4b
    .line 2270
    :cond_4
    const-string/jumbo v2, "android.media.AudioTrack"

    #@4e
    new-instance v3, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string/jumbo v4, "AudioTrack.write() called with invalid size ("

    #@56
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v3

    #@5a
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v3

    #@5e
    const-string/jumbo v4, ") value"

    #@61
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v3

    #@65
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v3

    #@69
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6c
    .line 2271
    return v7

    #@6d
    .line 2269
    :cond_5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@70
    move-result v2

    #@71
    if-gt p2, v2, :cond_4

    #@73
    .line 2275
    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    #@75
    if-nez v2, :cond_6

    #@77
    .line 2276
    const/16 v2, 0x10

    #@79
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@7c
    move-result-object v2

    #@7d
    iput-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    #@7f
    .line 2277
    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    #@81
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@83
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@86
    .line 2278
    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    #@88
    const v3, 0x55550001

    #@8b
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@8e
    .line 2279
    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    #@90
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@93
    .line 2280
    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    #@95
    invoke-virtual {v2, p4, p5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    #@98
    .line 2281
    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    #@9a
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@9d
    .line 2282
    iput p2, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    #@9f
    .line 2286
    :cond_6
    const/4 v0, 0x0

    #@a0
    .line 2287
    .local v0, "ret":I
    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    #@a2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    #@a5
    move-result v2

    #@a6
    if-eqz v2, :cond_8

    #@a8
    .line 2288
    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    #@aa
    iget-object v3, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    #@ac
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    #@af
    move-result v3

    #@b0
    invoke-virtual {p0, v2, v3, p3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    #@b3
    move-result v0

    #@b4
    .line 2289
    if-gez v0, :cond_7

    #@b6
    .line 2290
    const-string/jumbo v2, "android.media.AudioTrack"

    #@b9
    const-string/jumbo v3, "AudioTrack.write() could not write timestamp header!"

    #@bc
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@bf
    .line 2291
    iput-object v5, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    #@c1
    .line 2292
    iput v4, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    #@c3
    .line 2293
    return v0

    #@c4
    .line 2295
    :cond_7
    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    #@c6
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    #@c9
    move-result v2

    #@ca
    if-lez v2, :cond_8

    #@cc
    .line 2296
    const-string/jumbo v2, "android.media.AudioTrack"

    #@cf
    const-string/jumbo v3, "AudioTrack.write() partial timestamp header written."

    #@d2
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@d5
    .line 2297
    return v4

    #@d6
    .line 2302
    :cond_8
    iget v2, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    #@d8
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    #@db
    move-result v1

    #@dc
    .line 2303
    .local v1, "sizeToWrite":I
    invoke-virtual {p0, p1, v1, p3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    #@df
    move-result v0

    #@e0
    .line 2304
    if-gez v0, :cond_9

    #@e2
    .line 2305
    const-string/jumbo v2, "android.media.AudioTrack"

    #@e5
    const-string/jumbo v3, "AudioTrack.write() could not write audio data!"

    #@e8
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@eb
    .line 2306
    iput-object v5, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    #@ed
    .line 2307
    iput v4, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    #@ef
    .line 2308
    return v0

    #@f0
    .line 2311
    :cond_9
    iget v2, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    #@f2
    sub-int/2addr v2, v0

    #@f3
    iput v2, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    #@f5
    .line 2312
    iget v2, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    #@f7
    if-nez v2, :cond_a

    #@f9
    .line 2313
    iput-object v5, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    #@fb
    .line 2316
    :cond_a
    return v0
.end method

.method public write([BII)I
    .locals 1
    .param p1, "audioData"    # [B
    .param p2, "offsetInBytes"    # I
    .param p3, "sizeInBytes"    # I

    #@0
    .prologue
    .line 1857
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/AudioTrack;->write([BIII)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public write([BIII)I
    .locals 8
    .param p1, "audioData"    # [B
    .param p2, "offsetInBytes"    # I
    .param p3, "sizeInBytes"    # I
    .param p4, "writeMode"    # I

    #@0
    .prologue
    const/4 v2, -0x2

    #@1
    const/4 v7, 0x1

    #@2
    const/4 v5, 0x0

    #@3
    .line 1905
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    #@5
    if-eqz v0, :cond_0

    #@7
    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    #@9
    const/4 v1, 0x4

    #@a
    if-ne v0, v1, :cond_1

    #@c
    .line 1906
    :cond_0
    const/4 v0, -0x3

    #@d
    return v0

    #@e
    .line 1909
    :cond_1
    if-eqz p4, :cond_2

    #@10
    if-eq p4, v7, :cond_2

    #@12
    .line 1910
    const-string/jumbo v0, "android.media.AudioTrack"

    #@15
    const-string/jumbo v1, "AudioTrack.write() called with invalid blocking mode"

    #@18
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    .line 1911
    return v2

    #@1c
    .line 1914
    :cond_2
    if-eqz p1, :cond_3

    #@1e
    if-gez p2, :cond_4

    #@20
    .line 1917
    :cond_3
    return v2

    #@21
    .line 1914
    :cond_4
    if-ltz p3, :cond_3

    #@23
    .line 1915
    add-int v0, p2, p3

    #@25
    if-ltz v0, :cond_3

    #@27
    .line 1916
    add-int v0, p2, p3

    #@29
    array-length v1, p1

    #@2a
    if-gt v0, v1, :cond_3

    #@2c
    .line 1920
    iget v4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    #@2e
    .line 1921
    if-nez p4, :cond_5

    #@30
    move v5, v7

    #@31
    :cond_5
    move-object v0, p0

    #@32
    move-object v1, p1

    #@33
    move v2, p2

    #@34
    move v3, p3

    #@35
    .line 1920
    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;->native_write_byte([BIIIZ)I

    #@38
    move-result v6

    #@39
    .line 1923
    .local v6, "ret":I
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    #@3b
    if-nez v0, :cond_6

    #@3d
    .line 1924
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    #@3f
    const/4 v1, 0x2

    #@40
    if-ne v0, v1, :cond_6

    #@42
    .line 1925
    if-lez v6, :cond_6

    #@44
    .line 1927
    iput v7, p0, Landroid/media/AudioTrack;->mState:I

    #@46
    .line 1930
    :cond_6
    return v6
.end method

.method public write([FIII)I
    .locals 8
    .param p1, "audioData"    # [F
    .param p2, "offsetInFloats"    # I
    .param p3, "sizeInFloats"    # I
    .param p4, "writeMode"    # I

    #@0
    .prologue
    const/4 v3, -0x2

    #@1
    const/4 v2, -0x3

    #@2
    const/4 v7, 0x1

    #@3
    const/4 v5, 0x0

    #@4
    .line 2095
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    #@6
    if-nez v0, :cond_0

    #@8
    .line 2096
    const-string/jumbo v0, "android.media.AudioTrack"

    #@b
    const-string/jumbo v1, "AudioTrack.write() called in invalid state STATE_UNINITIALIZED"

    #@e
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 2097
    return v2

    #@12
    .line 2100
    :cond_0
    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    #@14
    const/4 v1, 0x4

    #@15
    if-eq v0, v1, :cond_1

    #@17
    .line 2101
    const-string/jumbo v0, "android.media.AudioTrack"

    #@1a
    const-string/jumbo v1, "AudioTrack.write(float[] ...) requires format ENCODING_PCM_FLOAT"

    #@1d
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 2102
    return v2

    #@21
    .line 2105
    :cond_1
    if-eqz p4, :cond_2

    #@23
    if-eq p4, v7, :cond_2

    #@25
    .line 2106
    const-string/jumbo v0, "android.media.AudioTrack"

    #@28
    const-string/jumbo v1, "AudioTrack.write() called with invalid blocking mode"

    #@2b
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    .line 2107
    return v3

    #@2f
    .line 2110
    :cond_2
    if-eqz p1, :cond_3

    #@31
    if-gez p2, :cond_4

    #@33
    .line 2113
    :cond_3
    const-string/jumbo v0, "android.media.AudioTrack"

    #@36
    const-string/jumbo v1, "AudioTrack.write() called with invalid array, offset, or size"

    #@39
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3c
    .line 2114
    return v3

    #@3d
    .line 2110
    :cond_4
    if-ltz p3, :cond_3

    #@3f
    .line 2111
    add-int v0, p2, p3

    #@41
    if-ltz v0, :cond_3

    #@43
    .line 2112
    add-int v0, p2, p3

    #@45
    array-length v1, p1

    #@46
    if-gt v0, v1, :cond_3

    #@48
    .line 2117
    iget v4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    #@4a
    .line 2118
    if-nez p4, :cond_5

    #@4c
    move v5, v7

    #@4d
    :cond_5
    move-object v0, p0

    #@4e
    move-object v1, p1

    #@4f
    move v2, p2

    #@50
    move v3, p3

    #@51
    .line 2117
    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;->native_write_float([FIIIZ)I

    #@54
    move-result v6

    #@55
    .line 2120
    .local v6, "ret":I
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    #@57
    if-nez v0, :cond_6

    #@59
    .line 2121
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    #@5b
    const/4 v1, 0x2

    #@5c
    if-ne v0, v1, :cond_6

    #@5e
    .line 2122
    if-lez v6, :cond_6

    #@60
    .line 2124
    iput v7, p0, Landroid/media/AudioTrack;->mState:I

    #@62
    .line 2127
    :cond_6
    return v6
.end method

.method public write([SII)I
    .locals 1
    .param p1, "audioData"    # [S
    .param p2, "offsetInShorts"    # I
    .param p3, "sizeInShorts"    # I

    #@0
    .prologue
    .line 1968
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/AudioTrack;->write([SIII)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public write([SIII)I
    .locals 8
    .param p1, "audioData"    # [S
    .param p2, "offsetInShorts"    # I
    .param p3, "sizeInShorts"    # I
    .param p4, "writeMode"    # I

    #@0
    .prologue
    const/4 v2, -0x2

    #@1
    const/4 v7, 0x1

    #@2
    const/4 v5, 0x0

    #@3
    .line 2014
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    #@5
    if-eqz v0, :cond_0

    #@7
    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    #@9
    const/4 v1, 0x4

    #@a
    if-ne v0, v1, :cond_1

    #@c
    .line 2015
    :cond_0
    const/4 v0, -0x3

    #@d
    return v0

    #@e
    .line 2018
    :cond_1
    if-eqz p4, :cond_2

    #@10
    if-eq p4, v7, :cond_2

    #@12
    .line 2019
    const-string/jumbo v0, "android.media.AudioTrack"

    #@15
    const-string/jumbo v1, "AudioTrack.write() called with invalid blocking mode"

    #@18
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    .line 2020
    return v2

    #@1c
    .line 2023
    :cond_2
    if-eqz p1, :cond_3

    #@1e
    if-gez p2, :cond_4

    #@20
    .line 2026
    :cond_3
    return v2

    #@21
    .line 2023
    :cond_4
    if-ltz p3, :cond_3

    #@23
    .line 2024
    add-int v0, p2, p3

    #@25
    if-ltz v0, :cond_3

    #@27
    .line 2025
    add-int v0, p2, p3

    #@29
    array-length v1, p1

    #@2a
    if-gt v0, v1, :cond_3

    #@2c
    .line 2029
    iget v4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    #@2e
    .line 2030
    if-nez p4, :cond_5

    #@30
    move v5, v7

    #@31
    :cond_5
    move-object v0, p0

    #@32
    move-object v1, p1

    #@33
    move v2, p2

    #@34
    move v3, p3

    #@35
    .line 2029
    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;->native_write_short([SIIIZ)I

    #@38
    move-result v6

    #@39
    .line 2032
    .local v6, "ret":I
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    #@3b
    if-nez v0, :cond_6

    #@3d
    .line 2033
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    #@3f
    const/4 v1, 0x2

    #@40
    if-ne v0, v1, :cond_6

    #@42
    .line 2034
    if-lez v6, :cond_6

    #@44
    .line 2036
    iput v7, p0, Landroid/media/AudioTrack;->mState:I

    #@46
    .line 2039
    :cond_6
    return v6
.end method
