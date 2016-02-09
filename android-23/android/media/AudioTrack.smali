.class public Landroid/media/AudioTrack;
.super Ljava/lang/Object;
.source "AudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioTrack$Builder;,
        Landroid/media/AudioTrack$OnRoutingChangedListener;,
        Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;,
        Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;,
        Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;
    }
.end annotation


# static fields
.field private static final CHANNEL_COUNT_MAX:I = 0x8

.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x2

.field public static final ERROR_INVALID_OPERATION:I = -0x3

.field private static final ERROR_NATIVESETUP_AUDIOSYSTEM:I = -0x10

.field private static final ERROR_NATIVESETUP_INVALIDCHANNELMASK:I = -0x11

.field private static final ERROR_NATIVESETUP_INVALIDFORMAT:I = -0x12

.field private static final ERROR_NATIVESETUP_INVALIDSTREAMTYPE:I = -0x13

.field private static final ERROR_NATIVESETUP_NATIVEINITFAILED:I = -0x14

.field private static final GAIN_MAX:F = 1.0f

.field private static final GAIN_MIN:F = 0.0f

.field public static final MODE_STATIC:I = 0x0

.field public static final MODE_STREAM:I = 0x1

.field private static final NATIVE_EVENT_MARKER:I = 0x3

.field private static final NATIVE_EVENT_NEW_POS:I = 0x4

.field public static final PLAYSTATE_PAUSED:I = 0x2

.field public static final PLAYSTATE_PLAYING:I = 0x3

.field public static final PLAYSTATE_STOPPED:I = 0x1

.field private static final SAMPLE_RATE_HZ_MAX:I = 0x2ee00

.field private static final SAMPLE_RATE_HZ_MIN:I = 0xfa0

.field public static final STATE_INITIALIZED:I = 0x1

.field public static final STATE_NO_STATIC_DATA:I = 0x2

.field public static final STATE_UNINITIALIZED:I = 0x0

.field public static final SUCCESS:I = 0x0

.field private static final SUPPORTED_OUT_CHANNELS:I = 0x1cfc

.field private static final TAG:Ljava/lang/String; = "android.media.AudioTrack"

.field public static final WRITE_BLOCKING:I = 0x0

.field public static final WRITE_NON_BLOCKING:I = 0x1


# instance fields
.field private final mAppOps:Lcom/android/internal/app/IAppOpsService;

.field private final mAttributes:Landroid/media/AudioAttributes;

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

.field private mNativeTrackInJavaObj:J

.field private mPlayState:I

.field private final mPlayStateLock:Ljava/lang/Object;

.field private mPreferredDevice:Landroid/media/AudioDeviceInfo;

.field private mRoutingChangeListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/media/AudioTrack$OnRoutingChangedListener;",
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
    .line 359
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
    .line 358
    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    #@b
    .line 357
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
    .line 401
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
    .line 404
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
    .line 401
    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    #@29
    .line 399
    return-void
.end method

.method public constructor <init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V
    .locals 20
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
    .line 433
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 218
    const/4 v2, 0x0

    #@4
    move-object/from16 v0, p0

    #@6
    iput v2, v0, Landroid/media/AudioTrack;->mState:I

    #@8
    .line 223
    const/4 v2, 0x1

    #@9
    move-object/from16 v0, p0

    #@b
    iput v2, v0, Landroid/media/AudioTrack;->mPlayState:I

    #@d
    .line 227
    new-instance v2, Ljava/lang/Object;

    #@f
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    #@12
    move-object/from16 v0, p0

    #@14
    iput-object v2, v0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    #@16
    .line 233
    const/4 v2, 0x0

    #@17
    move-object/from16 v0, p0

    #@19
    iput v2, v0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    #@1b
    .line 234
    const/4 v2, 0x0

    #@1c
    move-object/from16 v0, p0

    #@1e
    iput v2, v0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    #@20
    .line 250
    const/4 v2, 0x1

    #@21
    move-object/from16 v0, p0

    #@23
    iput v2, v0, Landroid/media/AudioTrack;->mChannelCount:I

    #@25
    .line 254
    const/4 v2, 0x4

    #@26
    move-object/from16 v0, p0

    #@28
    iput v2, v0, Landroid/media/AudioTrack;->mChannelMask:I

    #@2a
    .line 263
    const/4 v2, 0x3

    #@2b
    move-object/from16 v0, p0

    #@2d
    iput v2, v0, Landroid/media/AudioTrack;->mStreamType:I

    #@2f
    .line 269
    const/4 v2, 0x1

    #@30
    move-object/from16 v0, p0

    #@32
    iput v2, v0, Landroid/media/AudioTrack;->mDataLoadMode:I

    #@34
    .line 275
    const/4 v2, 0x4

    #@35
    move-object/from16 v0, p0

    #@37
    iput v2, v0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    #@39
    .line 279
    const/4 v2, 0x0

    #@3a
    move-object/from16 v0, p0

    #@3c
    iput v2, v0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    #@3e
    .line 290
    const/4 v2, 0x0

    #@3f
    move-object/from16 v0, p0

    #@41
    iput v2, v0, Landroid/media/AudioTrack;->mSessionId:I

    #@43
    .line 298
    const/4 v2, 0x0

    #@44
    move-object/from16 v0, p0

    #@46
    iput-object v2, v0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    #@48
    .line 302
    const/4 v2, 0x0

    #@49
    move-object/from16 v0, p0

    #@4b
    iput v2, v0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    #@4d
    .line 2164
    const/4 v2, 0x0

    #@4e
    move-object/from16 v0, p0

    #@50
    iput-object v2, v0, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    #@52
    .line 2242
    new-instance v2, Landroid/util/ArrayMap;

    #@54
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    #@57
    .line 2241
    move-object/from16 v0, p0

    #@59
    iput-object v2, v0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    #@5b
    .line 438
    if-nez p1, :cond_0

    #@5d
    .line 439
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@5f
    const-string/jumbo v7, "Illegal null AudioAttributes"

    #@62
    invoke-direct {v2, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@65
    throw v2

    #@66
    .line 441
    :cond_0
    if-nez p2, :cond_1

    #@68
    .line 442
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@6a
    const-string/jumbo v7, "Illegal null AudioFormat"

    #@6d
    invoke-direct {v2, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@70
    throw v2

    #@71
    .line 447
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@74
    move-result-object v19

    #@75
    .local v19, "looper":Landroid/os/Looper;
    if-nez v19, :cond_2

    #@77
    .line 448
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@7a
    move-result-object v19

    #@7b
    .line 451
    :cond_2
    const/4 v3, 0x0

    #@7c
    .line 452
    .local v3, "rate":I
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    #@7f
    move-result v2

    #@80
    and-int/lit8 v2, v2, 0x2

    #@82
    if-eqz v2, :cond_7

    #@84
    .line 454
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getSampleRate()I

    #@87
    move-result v3

    #@88
    .line 461
    :cond_3
    :goto_0
    const/4 v5, 0x0

    #@89
    .line 462
    .local v5, "channelIndexMask":I
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    #@8c
    move-result v2

    #@8d
    and-int/lit8 v2, v2, 0x8

    #@8f
    if-eqz v2, :cond_4

    #@91
    .line 464
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelIndexMask()I

    #@94
    move-result v5

    #@95
    .line 466
    :cond_4
    const/4 v4, 0x0

    #@96
    .line 467
    .local v4, "channelMask":I
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    #@99
    move-result v2

    #@9a
    and-int/lit8 v2, v2, 0x4

    #@9c
    if-eqz v2, :cond_8

    #@9e
    .line 469
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelMask()I

    #@a1
    move-result v4

    #@a2
    .line 474
    :cond_5
    :goto_1
    const/4 v6, 0x1

    #@a3
    .line 475
    .local v6, "encoding":I
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    #@a6
    move-result v2

    #@a7
    and-int/lit8 v2, v2, 0x1

    #@a9
    if-eqz v2, :cond_6

    #@ab
    .line 476
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getEncoding()I

    #@ae
    move-result v6

    #@af
    :cond_6
    move-object/from16 v2, p0

    #@b1
    move/from16 v7, p4

    #@b3
    .line 478
    invoke-direct/range {v2 .. v7}, Landroid/media/AudioTrack;->audioParamCheck(IIIII)V

    #@b6
    .line 479
    const/4 v2, -0x1

    #@b7
    move-object/from16 v0, p0

    #@b9
    iput v2, v0, Landroid/media/AudioTrack;->mStreamType:I

    #@bb
    .line 481
    move-object/from16 v0, p0

    #@bd
    move/from16 v1, p3

    #@bf
    invoke-direct {v0, v1}, Landroid/media/AudioTrack;->audioBuffSizeCheck(I)V

    #@c2
    .line 483
    move-object/from16 v0, v19

    #@c4
    move-object/from16 v1, p0

    #@c6
    iput-object v0, v1, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    #@c8
    .line 484
    const-string/jumbo v2, "appops"

    #@cb
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@ce
    move-result-object v17

    #@cf
    .line 485
    .local v17, "b":Landroid/os/IBinder;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    #@d2
    move-result-object v2

    #@d3
    move-object/from16 v0, p0

    #@d5
    iput-object v2, v0, Landroid/media/AudioTrack;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    #@d7
    .line 487
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    #@d9
    move-object/from16 v0, p1

    #@db
    invoke-direct {v2, v0}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    #@de
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    #@e1
    move-result-object v2

    #@e2
    move-object/from16 v0, p0

    #@e4
    iput-object v2, v0, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    #@e6
    .line 489
    if-gez p5, :cond_9

    #@e8
    .line 490
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@ea
    new-instance v7, Ljava/lang/StringBuilder;

    #@ec
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@ef
    const-string/jumbo v8, "Invalid audio session ID: "

    #@f2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v7

    #@f6
    move/from16 v0, p5

    #@f8
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v7

    #@fc
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ff
    move-result-object v7

    #@100
    invoke-direct {v2, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@103
    throw v2

    #@104
    .line 456
    .end local v4    # "channelMask":I
    .end local v5    # "channelIndexMask":I
    .end local v6    # "encoding":I
    .end local v17    # "b":Landroid/os/IBinder;
    :cond_7
    invoke-static {}, Landroid/media/AudioSystem;->getPrimaryOutputSamplingRate()I

    #@107
    move-result v3

    #@108
    .line 457
    if-gtz v3, :cond_3

    #@10a
    .line 458
    const v3, 0xac44

    #@10d
    goto/16 :goto_0

    #@10f
    .line 470
    .restart local v4    # "channelMask":I
    .restart local v5    # "channelIndexMask":I
    :cond_8
    if-nez v5, :cond_5

    #@111
    .line 471
    const/16 v4, 0xc

    #@113
    goto :goto_1

    #@114
    .line 493
    .restart local v6    # "encoding":I
    .restart local v17    # "b":Landroid/os/IBinder;
    :cond_9
    const/4 v2, 0x1

    #@115
    new-array v0, v2, [I

    #@117
    move-object/from16 v16, v0

    #@119
    .line 494
    .local v16, "session":[I
    const/4 v2, 0x0

    #@11a
    aput p5, v16, v2

    #@11c
    .line 496
    new-instance v8, Ljava/lang/ref/WeakReference;

    #@11e
    move-object/from16 v0, p0

    #@120
    invoke-direct {v8, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@123
    move-object/from16 v0, p0

    #@125
    iget-object v9, v0, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    #@127
    .line 497
    move-object/from16 v0, p0

    #@129
    iget v10, v0, Landroid/media/AudioTrack;->mSampleRate:I

    #@12b
    move-object/from16 v0, p0

    #@12d
    iget v11, v0, Landroid/media/AudioTrack;->mChannelMask:I

    #@12f
    move-object/from16 v0, p0

    #@131
    iget v12, v0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    #@133
    move-object/from16 v0, p0

    #@135
    iget v13, v0, Landroid/media/AudioTrack;->mAudioFormat:I

    #@137
    .line 498
    move-object/from16 v0, p0

    #@139
    iget v14, v0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    #@13b
    move-object/from16 v0, p0

    #@13d
    iget v15, v0, Landroid/media/AudioTrack;->mDataLoadMode:I

    #@13f
    move-object/from16 v7, p0

    #@141
    .line 496
    invoke-direct/range {v7 .. v16}, Landroid/media/AudioTrack;->native_setup(Ljava/lang/Object;Ljava/lang/Object;IIIIII[I)I

    #@144
    move-result v18

    #@145
    .line 499
    .local v18, "initResult":I
    if-eqz v18, :cond_a

    #@147
    .line 500
    new-instance v2, Ljava/lang/StringBuilder;

    #@149
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14c
    const-string/jumbo v7, "Error code "

    #@14f
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@152
    move-result-object v2

    #@153
    move/from16 v0, v18

    #@155
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@158
    move-result-object v2

    #@159
    const-string/jumbo v7, " when initializing AudioTrack."

    #@15c
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15f
    move-result-object v2

    #@160
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@163
    move-result-object v2

    #@164
    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    #@167
    .line 501
    return-void

    #@168
    .line 504
    :cond_a
    const/4 v2, 0x0

    #@169
    aget v2, v16, v2

    #@16b
    move-object/from16 v0, p0

    #@16d
    iput v2, v0, Landroid/media/AudioTrack;->mSessionId:I

    #@16f
    .line 506
    move-object/from16 v0, p0

    #@171
    iget v2, v0, Landroid/media/AudioTrack;->mDataLoadMode:I

    #@173
    if-nez v2, :cond_b

    #@175
    .line 507
    const/4 v2, 0x2

    #@176
    move-object/from16 v0, p0

    #@178
    iput v2, v0, Landroid/media/AudioTrack;->mState:I

    #@17a
    .line 435
    :goto_2
    return-void

    #@17b
    .line 509
    :cond_b
    const/4 v2, 0x1

    #@17c
    move-object/from16 v0, p0

    #@17e
    iput v2, v0, Landroid/media/AudioTrack;->mState:I

    #@180
    goto :goto_2
.end method

.method private audioBuffSizeCheck(I)V
    .locals 3
    .param p1, "audioBufferSize"    # I

    #@0
    .prologue
    .line 853
    iget v1, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    #@2
    invoke-static {v1}, Landroid/media/AudioFormat;->isEncodingLinearPcm(I)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 854
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
    .line 858
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
    .line 859
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@1b
    const-string/jumbo v2, "Invalid audio buffer size."

    #@1e
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v1

    #@22
    .line 856
    .end local v0    # "frameSizeInBytes":I
    :cond_1
    const/4 v0, 0x1

    #@23
    .restart local v0    # "frameSizeInBytes":I
    goto :goto_0

    #@24
    .line 862
    :cond_2
    iput p1, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    #@26
    .line 863
    div-int v1, p1, v0

    #@28
    iput v1, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    #@2a
    .line 849
    return-void
.end method

.method private audioParamCheck(IIIII)V
    .locals 5
    .param p1, "sampleRateInHz"    # I
    .param p2, "channelConfig"    # I
    .param p3, "channelIndexMask"    # I
    .param p4, "audioFormat"    # I
    .param p5, "mode"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 727
    const/16 v2, 0xfa0

    #@4
    if-lt p1, v2, :cond_0

    #@6
    const v2, 0x2ee00

    #@9
    if-le p1, v2, :cond_1

    #@b
    .line 728
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@d
    new-instance v3, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    .line 729
    const-string/jumbo v4, "Hz is not a supported sample rate."

    #@19
    .line 728
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v2

    #@25
    .line 731
    :cond_1
    iput p1, p0, Landroid/media/AudioTrack;->mSampleRate:I

    #@27
    .line 735
    iput p2, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    #@29
    .line 737
    sparse-switch p2, :sswitch_data_0

    #@2c
    .line 750
    if-nez p2, :cond_2

    #@2e
    if-eqz p3, :cond_2

    #@30
    .line 751
    iput v3, p0, Landroid/media/AudioTrack;->mChannelCount:I

    #@32
    .line 762
    :goto_0
    iput p3, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    #@34
    .line 763
    iget v2, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    #@36
    if-eqz v2, :cond_5

    #@38
    .line 765
    const/16 v1, 0xff

    #@3a
    .line 766
    .local v1, "indexMask":I
    and-int/lit16 v2, p3, -0x100

    #@3c
    if-eqz v2, :cond_4

    #@3e
    .line 767
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@40
    new-instance v3, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v4, "Unsupported channel index configuration "

    #@48
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v3

    #@4c
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v3

    #@50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v3

    #@54
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@57
    throw v2

    #@58
    .line 741
    .end local v1    # "indexMask":I
    :sswitch_0
    iput v4, p0, Landroid/media/AudioTrack;->mChannelCount:I

    #@5a
    .line 742
    const/4 v2, 0x4

    #@5b
    iput v2, p0, Landroid/media/AudioTrack;->mChannelMask:I

    #@5d
    goto :goto_0

    #@5e
    .line 746
    :sswitch_1
    const/4 v2, 0x2

    #@5f
    iput v2, p0, Landroid/media/AudioTrack;->mChannelCount:I

    #@61
    .line 747
    const/16 v2, 0xc

    #@63
    iput v2, p0, Landroid/media/AudioTrack;->mChannelMask:I

    #@65
    goto :goto_0

    #@66
    .line 754
    :cond_2
    invoke-static {p2}, Landroid/media/AudioTrack;->isMultichannelConfigSupported(I)Z

    #@69
    move-result v2

    #@6a
    if-nez v2, :cond_3

    #@6c
    .line 756
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@6e
    const-string/jumbo v3, "Unsupported channel configuration."

    #@71
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@74
    throw v2

    #@75
    .line 758
    :cond_3
    iput p2, p0, Landroid/media/AudioTrack;->mChannelMask:I

    #@77
    .line 759
    invoke-static {p2}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    #@7a
    move-result v2

    #@7b
    iput v2, p0, Landroid/media/AudioTrack;->mChannelCount:I

    #@7d
    goto :goto_0

    #@7e
    .line 770
    .restart local v1    # "indexMask":I
    :cond_4
    invoke-static {p3}, Ljava/lang/Integer;->bitCount(I)I

    #@81
    move-result v0

    #@82
    .line 771
    .local v0, "channelIndexCount":I
    iget v2, p0, Landroid/media/AudioTrack;->mChannelCount:I

    #@84
    if-nez v2, :cond_7

    #@86
    .line 772
    iput v0, p0, Landroid/media/AudioTrack;->mChannelCount:I

    #@88
    .line 780
    .end local v0    # "channelIndexCount":I
    .end local v1    # "indexMask":I
    :cond_5
    if-ne p4, v4, :cond_6

    #@8a
    .line 781
    const/4 p4, 0x2

    #@8b
    .line 784
    :cond_6
    invoke-static {p4}, Landroid/media/AudioFormat;->isPublicEncoding(I)Z

    #@8e
    move-result v2

    #@8f
    if-nez v2, :cond_8

    #@91
    .line 785
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@93
    const-string/jumbo v3, "Unsupported audio encoding."

    #@96
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@99
    throw v2

    #@9a
    .line 773
    .restart local v0    # "channelIndexCount":I
    .restart local v1    # "indexMask":I
    :cond_7
    iget v2, p0, Landroid/media/AudioTrack;->mChannelCount:I

    #@9c
    if-eq v2, v0, :cond_5

    #@9e
    .line 774
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@a0
    const-string/jumbo v3, "Channel count must match"

    #@a3
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a6
    throw v2

    #@a7
    .line 787
    .end local v0    # "channelIndexCount":I
    .end local v1    # "indexMask":I
    :cond_8
    iput p4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    #@a9
    .line 791
    if-eq p5, v4, :cond_a

    #@ab
    if-eqz p5, :cond_a

    #@ad
    .line 793
    :cond_9
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@af
    const-string/jumbo v3, "Invalid mode."

    #@b2
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b5
    throw v2

    #@b6
    .line 792
    :cond_a
    if-eq p5, v4, :cond_b

    #@b8
    iget v2, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    #@ba
    invoke-static {v2}, Landroid/media/AudioFormat;->isEncodingLinearPcm(I)Z

    #@bd
    move-result v2

    #@be
    if-eqz v2, :cond_9

    #@c0
    .line 795
    :cond_b
    iput p5, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    #@c2
    .line 724
    return-void

    #@c3
    .line 737
    nop

    #@c4
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
    .locals 6

    #@0
    .prologue
    .line 2288
    iget-object v5, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    #@2
    monitor-enter v5

    #@3
    .line 2289
    :try_start_0
    iget-object v4, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v3

    #@9
    .local v3, "values":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;>;"
    monitor-exit v5

    #@a
    .line 2291
    invoke-static {}, Landroid/media/AudioManager;->resetAudioPortGeneration()I

    #@d
    .line 2292
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v1

    #@11
    .local v1, "delegate$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_1

    #@17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;

    #@1d
    .line 2293
    .local v0, "delegate":Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;
    invoke-virtual {v0}, Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    #@20
    move-result-object v2

    #@21
    .line 2294
    .local v2, "handler":Landroid/os/Handler;
    if-eqz v2, :cond_0

    #@23
    .line 2295
    const/16 v4, 0x3e8

    #@25
    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@28
    goto :goto_0

    #@29
    .line 2288
    .end local v0    # "delegate":Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;
    .end local v1    # "delegate$iterator":Ljava/util/Iterator;
    .end local v2    # "handler":Landroid/os/Handler;
    .end local v3    # "values":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;>;"
    :catchall_0
    move-exception v4

    #@2a
    monitor-exit v5

    #@2b
    throw v4

    #@2c
    .line 2286
    .restart local v1    # "delegate$iterator":Ljava/util/Iterator;
    .restart local v3    # "values":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;>;"
    :cond_1
    return-void
.end method

.method private static clampGainOrLevel(F)F
    .locals 1
    .param p0, "gainOrLevel"    # F

    #@0
    .prologue
    .line 1262
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1263
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@b
    throw v0

    #@c
    .line 1265
    :cond_0
    const/4 v0, 0x0

    #@d
    cmpg-float v0, p0, v0

    #@f
    if-gez v0, :cond_2

    #@11
    .line 1266
    const/4 p0, 0x0

    #@12
    .line 1270
    :cond_1
    :goto_0
    return p0

    #@13
    .line 1267
    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    #@15
    cmpl-float v0, p0, v0

    #@17
    if-lez v0, :cond_1

    #@19
    .line 1268
    const/high16 p0, 0x3f800000    # 1.0f

    #@1b
    goto :goto_0
.end method

.method public static getMaxVolume()F
    .locals 1

    #@0
    .prologue
    .line 909
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
    .line 1123
    const/4 v0, 0x0

    #@2
    .line 1124
    .local v0, "channelCount":I
    sparse-switch p1, :sswitch_data_0

    #@5
    .line 1134
    invoke-static {p1}, Landroid/media/AudioTrack;->isMultichannelConfigSupported(I)Z

    #@8
    move-result v2

    #@9
    if-nez v2, :cond_0

    #@b
    .line 1135
    const-string/jumbo v2, "getMinBufferSize(): Invalid channel configuration."

    #@e
    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    #@11
    .line 1136
    return v4

    #@12
    .line 1127
    :sswitch_0
    const/4 v0, 0x1

    #@13
    .line 1142
    :goto_0
    invoke-static {p2}, Landroid/media/AudioFormat;->isPublicEncoding(I)Z

    #@16
    move-result v2

    #@17
    if-nez v2, :cond_1

    #@19
    .line 1143
    const-string/jumbo v2, "getMinBufferSize(): Invalid audio format."

    #@1c
    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    #@1f
    .line 1144
    return v4

    #@20
    .line 1131
    :sswitch_1
    const/4 v0, 0x2

    #@21
    .line 1132
    goto :goto_0

    #@22
    .line 1138
    :cond_0
    invoke-static {p1}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    #@25
    move-result v0

    #@26
    goto :goto_0

    #@27
    .line 1148
    :cond_1
    const/16 v2, 0xfa0

    #@29
    if-lt p0, v2, :cond_2

    #@2b
    const v2, 0x2ee00

    #@2e
    if-le p0, v2, :cond_3

    #@30
    .line 1149
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
    .line 1150
    return v4

    #@4f
    .line 1153
    :cond_3
    invoke-static {p0, v0, p2}, Landroid/media/AudioTrack;->native_get_min_buff_size(III)I

    #@52
    move-result v1

    #@53
    .line 1154
    .local v1, "size":I
    if-gtz v1, :cond_4

    #@55
    .line 1155
    const-string/jumbo v2, "getMinBufferSize(): error querying hardware"

    #@58
    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    #@5b
    .line 1156
    const/4 v2, -0x1

    #@5c
    return v2

    #@5d
    .line 1159
    :cond_4
    return v1

    #@5e
    .line 1124
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
    .line 897
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public static getNativeOutputSampleRate(I)I
    .locals 1
    .param p0, "streamType"    # I

    #@0
    .prologue
    .line 1099
    invoke-static {p0}, Landroid/media/AudioTrack;->native_get_output_sample_rate(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private static isMultichannelConfigSupported(I)Z
    .locals 8
    .param p0, "channelConfig"    # I

    #@0
    .prologue
    const/16 v7, 0x8

    #@2
    const/4 v6, 0x0

    #@3
    .line 805
    and-int/lit16 v4, p0, 0x1cfc

    #@5
    if-eq v4, p0, :cond_0

    #@7
    .line 806
    const-string/jumbo v4, "Channel configuration features unsupported channels"

    #@a
    invoke-static {v4}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    #@d
    .line 807
    return v6

    #@e
    .line 809
    :cond_0
    invoke-static {p0}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    #@11
    move-result v1

    #@12
    .line 810
    .local v1, "channelCount":I
    if-le v1, v7, :cond_1

    #@14
    .line 811
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
    .line 812
    const-string/jumbo v5, ">"

    #@27
    .line 811
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v4

    #@33
    invoke-static {v4}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    #@36
    .line 813
    return v6

    #@37
    .line 819
    :cond_1
    const/16 v2, 0xc

    #@39
    .line 820
    .local v2, "frontPair":I
    and-int/lit8 v4, p0, 0xc

    #@3b
    const/16 v5, 0xc

    #@3d
    if-eq v4, v5, :cond_2

    #@3f
    .line 821
    const-string/jumbo v4, "Front channels must be present in multichannel configurations"

    #@42
    invoke-static {v4}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    #@45
    .line 822
    return v6

    #@46
    .line 825
    :cond_2
    const/16 v0, 0xc0

    #@48
    .line 826
    .local v0, "backPair":I
    and-int/lit16 v4, p0, 0xc0

    #@4a
    if-eqz v4, :cond_3

    #@4c
    .line 827
    and-int/lit16 v4, p0, 0xc0

    #@4e
    const/16 v5, 0xc0

    #@50
    if-eq v4, v5, :cond_3

    #@52
    .line 828
    const-string/jumbo v4, "Rear channels can\'t be used independently"

    #@55
    invoke-static {v4}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    #@58
    .line 829
    return v6

    #@59
    .line 833
    :cond_3
    const/16 v3, 0x1800

    #@5b
    .line 834
    .local v3, "sidePair":I
    and-int/lit16 v4, p0, 0x1800

    #@5d
    if-eqz v4, :cond_4

    #@5f
    .line 835
    and-int/lit16 v4, p0, 0x1800

    #@61
    const/16 v5, 0x1800

    #@63
    if-eq v4, v5, :cond_4

    #@65
    .line 836
    const-string/jumbo v4, "Side channels can\'t be used independently"

    #@68
    invoke-static {v4}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    #@6b
    .line 837
    return v6

    #@6c
    .line 839
    :cond_4
    const/4 v4, 0x1

    #@6d
    return v4
.end method

.method private isRestricted()Z
    .locals 8

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1536
    iget-object v4, p0, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    #@3
    invoke-virtual {v4}, Landroid/media/AudioAttributes;->getAllFlags()I

    #@6
    move-result v4

    #@7
    and-int/lit8 v4, v4, 0x40

    #@9
    if-eqz v4, :cond_0

    #@b
    .line 1537
    return v3

    #@c
    .line 1540
    :cond_0
    :try_start_0
    iget v4, p0, Landroid/media/AudioTrack;->mStreamType:I

    #@e
    invoke-static {v4}, Landroid/media/AudioAttributes;->usageForLegacyStreamType(I)I

    #@11
    move-result v2

    #@12
    .line 1541
    .local v2, "usage":I
    iget-object v4, p0, Landroid/media/AudioTrack;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    #@14
    .line 1542
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@17
    move-result v5

    #@18
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    #@1b
    move-result-object v6

    #@1c
    .line 1541
    const/16 v7, 0x1c

    #@1e
    invoke-interface {v4, v7, v2, v5, v6}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    move-result v1

    #@22
    .line 1543
    .local v1, "mode":I
    if-eqz v1, :cond_1

    #@24
    const/4 v3, 0x1

    #@25
    :cond_1
    return v3

    #@26
    .line 1544
    .end local v1    # "mode":I
    .end local v2    # "usage":I
    :catch_0
    move-exception v0

    #@27
    .line 1545
    .local v0, "e":Landroid/os/RemoteException;
    return v3
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2542
    const-string/jumbo v0, "android.media.AudioTrack"

    #@3
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 2541
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2546
    const-string/jumbo v0, "android.media.AudioTrack"

    #@3
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 2545
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

.method private final native native_get_latency()I
.end method

.method private final native native_get_marker_pos()I
.end method

.method private static final native native_get_min_buff_size(III)I
.end method

.method private final native native_get_native_frame_count()I
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

.method private final native native_pause()V
.end method

.method private final native native_release()V
.end method

.method private final native native_reload_static()I
.end method

.method private final native native_setAuxEffectSendLevel(F)I
.end method

.method private final native native_setOutputDevice(I)Z
.end method

.method private final native native_setVolume(FF)V
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

.method private final native native_setup(Ljava/lang/Object;Ljava/lang/Object;IIIIII[I)I
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
    .line 2436
    check-cast p0, Ljava/lang/ref/WeakReference;

    #@2
    .end local p0    # "audiotrack_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v3

    #@6
    check-cast v3, Landroid/media/AudioTrack;

    #@8
    .line 2437
    .local v3, "track":Landroid/media/AudioTrack;
    if-nez v3, :cond_0

    #@a
    .line 2438
    return-void

    #@b
    .line 2441
    :cond_0
    const/16 v4, 0x3e8

    #@d
    if-ne p1, v4, :cond_1

    #@f
    .line 2442
    invoke-direct {v3}, Landroid/media/AudioTrack;->broadcastRoutingChange()V

    #@12
    .line 2443
    return-void

    #@13
    .line 2445
    :cond_1
    iget-object v0, v3, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    #@15
    .line 2446
    .local v0, "delegate":Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;
    if-eqz v0, :cond_2

    #@17
    .line 2447
    invoke-virtual {v0}, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    #@1a
    move-result-object v1

    #@1b
    .line 2448
    .local v1, "handler":Landroid/os/Handler;
    if-eqz v1, :cond_2

    #@1d
    .line 2449
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@20
    move-result-object v2

    #@21
    .line 2450
    .local v2, "m":Landroid/os/Message;
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@24
    .line 2434
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "m":Landroid/os/Message;
    :cond_2
    return-void
.end method


# virtual methods
.method public addOnRoutingChangedListener(Landroid/media/AudioTrack$OnRoutingChangedListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "listener"    # Landroid/media/AudioTrack$OnRoutingChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 2255
    if-eqz p1, :cond_0

    #@2
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    #@4
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 2254
    .end local p2    # "handler":Landroid/os/Handler;
    :cond_0
    :goto_0
    return-void

    #@b
    .line 2256
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_1
    iget-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    #@d
    monitor-enter v1

    #@e
    .line 2257
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    #@10
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    #@13
    move-result v0

    #@14
    if-nez v0, :cond_2

    #@16
    .line 2258
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_enableDeviceCallback()V

    #@19
    .line 2260
    :cond_2
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    #@1b
    .line 2261
    new-instance v2, Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;

    #@1d
    .line 2262
    if-eqz p2, :cond_3

    #@1f
    .line 2261
    .end local p2    # "handler":Landroid/os/Handler;
    :goto_1
    invoke-direct {v2, p0, p0, p1, p2}, Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;-><init>(Landroid/media/AudioTrack;Landroid/media/AudioTrack;Landroid/media/AudioTrack$OnRoutingChangedListener;Landroid/os/Handler;)V

    #@22
    .line 2260
    invoke-virtual {v0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    monitor-exit v1

    #@26
    goto :goto_0

    #@27
    .line 2262
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_3
    :try_start_1
    new-instance p2, Landroid/os/Handler;

    #@29
    .end local p2    # "handler":Landroid/os/Handler;
    iget-object v3, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    #@2b
    invoke-direct {p2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    goto :goto_1

    #@2f
    .line 2256
    :catchall_0
    move-exception v0

    #@30
    monitor-exit v1

    #@31
    throw v0
.end method

.method public attachAuxEffect(I)I
    .locals 1
    .param p1, "effectId"    # I

    #@0
    .prologue
    .line 2125
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 2126
    const/4 v0, -0x3

    #@5
    return v0

    #@6
    .line 2128
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_attachAuxEffect(I)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method protected finalize()V
    .locals 0

    #@0
    .prologue
    .line 884
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_finalize()V

    #@3
    .line 883
    return-void
.end method

.method public flush()V
    .locals 2

    #@0
    .prologue
    .line 1610
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    #@2
    const/4 v1, 0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 1612
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_flush()V

    #@8
    .line 1613
    const/4 v0, 0x0

    #@9
    iput-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    #@b
    .line 1614
    const/4 v0, 0x0

    #@c
    iput v0, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    #@e
    .line 1609
    :cond_0
    return-void
.end method

.method public getAudioFormat()I
    .locals 1

    #@0
    .prologue
    .line 941
    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    #@2
    return v0
.end method

.method public getAudioSessionId()I
    .locals 1

    #@0
    .prologue
    .line 1169
    iget v0, p0, Landroid/media/AudioTrack;->mSessionId:I

    #@2
    return v0
.end method

.method public getBufferSizeInFrames()I
    .locals 1

    #@0
    .prologue
    .line 1037
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_native_frame_count()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getChannelConfiguration()I
    .locals 1

    #@0
    .prologue
    .line 965
    iget v0, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    #@2
    return v0
.end method

.method public getChannelCount()I
    .locals 1

    #@0
    .prologue
    .line 990
    iget v0, p0, Landroid/media/AudioTrack;->mChannelCount:I

    #@2
    return v0
.end method

.method public getFormat()Landroid/media/AudioFormat;
    .locals 3

    #@0
    .prologue
    .line 974
    new-instance v1, Landroid/media/AudioFormat$Builder;

    #@2
    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    #@5
    .line 975
    iget v2, p0, Landroid/media/AudioTrack;->mSampleRate:I

    #@7
    .line 974
    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    #@a
    move-result-object v1

    #@b
    .line 976
    iget v2, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    #@d
    .line 974
    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    #@10
    move-result-object v0

    #@11
    .line 977
    .local v0, "builder":Landroid/media/AudioFormat$Builder;
    iget v1, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 978
    iget v1, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    #@17
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    #@1a
    .line 980
    :cond_0
    iget v1, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    #@1c
    if-eqz v1, :cond_1

    #@1e
    .line 981
    iget v1, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    #@20
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelIndexMask(I)Landroid/media/AudioFormat$Builder;

    #@23
    .line 983
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
    .line 1092
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
    .line 1048
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_native_frame_count()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getNotificationMarkerPosition()I
    .locals 1

    #@0
    .prologue
    .line 1057
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
    .line 1012
    iget-object v0, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 1013
    :try_start_0
    iget v1, p0, Landroid/media/AudioTrack;->mPlayState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 1012
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
    .line 1080
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
    .line 933
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
    .line 923
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
    .line 1065
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
    .line 2194
    monitor-enter p0

    #@1
    .line 2195
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    .line 2194
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
    .line 2221
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_getRoutedDeviceId()I

    #@4
    move-result v0

    #@5
    .line 2222
    .local v0, "deviceId":I
    if-nez v0, :cond_0

    #@7
    .line 2223
    return-object v4

    #@8
    .line 2226
    :cond_0
    const/4 v3, 0x2

    #@9
    invoke-static {v3}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    #@c
    move-result-object v1

    #@d
    .line 2227
    .local v1, "devices":[Landroid/media/AudioDeviceInfo;
    const/4 v2, 0x0

    #@e
    .local v2, "i":I
    :goto_0
    array-length v3, v1

    #@f
    if-ge v2, v3, :cond_2

    #@11
    .line 2228
    aget-object v3, v1, v2

    #@13
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getId()I

    #@16
    move-result v3

    #@17
    if-ne v3, v0, :cond_1

    #@19
    .line 2229
    aget-object v3, v1, v2

    #@1b
    return-object v3

    #@1c
    .line 2227
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 2232
    :cond_2
    return-object v4
.end method

.method public getSampleRate()I
    .locals 1

    #@0
    .prologue
    .line 916
    iget v0, p0, Landroid/media/AudioTrack;->mSampleRate:I

    #@2
    return v0
.end method

.method public getState()I
    .locals 1

    #@0
    .prologue
    .line 1002
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    #@2
    return v0
.end method

.method public getStreamType()I
    .locals 1

    #@0
    .prologue
    .line 952
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
    .line 1214
    if-nez p1, :cond_0

    #@4
    .line 1215
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@6
    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@9
    throw v2

    #@a
    .line 1218
    :cond_0
    const/4 v2, 0x2

    #@b
    new-array v0, v2, [J

    #@d
    .line 1219
    .local v0, "longArray":[J
    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_get_timestamp([J)I

    #@10
    move-result v1

    #@11
    .line 1220
    .local v1, "ret":I
    if-eqz v1, :cond_1

    #@13
    .line 1221
    return v3

    #@14
    .line 1223
    :cond_1
    aget-wide v2, v0, v3

    #@16
    iput-wide v2, p1, Landroid/media/AudioTimestamp;->framePosition:J

    #@18
    .line 1224
    aget-wide v2, v0, v4

    #@1a
    iput-wide v2, p1, Landroid/media/AudioTimestamp;->nanoTime:J

    #@1c
    .line 1225
    return v4
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
    .line 1581
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    #@2
    const/4 v1, 0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 1582
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "pause() called on uninitialized AudioTrack."

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 1587
    :cond_0
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    #@10
    monitor-enter v1

    #@11
    .line 1588
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_pause()V

    #@14
    .line 1589
    const/4 v0, 0x2

    #@15
    iput v0, p0, Landroid/media/AudioTrack;->mPlayState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit v1

    #@18
    .line 1580
    return-void

    #@19
    .line 1587
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
    .line 1523
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    #@2
    const/4 v1, 0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 1524
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "play() called on uninitialized AudioTrack."

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 1526
    :cond_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->isRestricted()Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 1527
    const/4 v0, 0x0

    #@15
    invoke-virtual {p0, v0}, Landroid/media/AudioTrack;->setVolume(F)I

    #@18
    .line 1529
    :cond_1
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    #@1a
    monitor-enter v1

    #@1b
    .line 1530
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_start()V

    #@1e
    .line 1531
    const/4 v0, 0x3

    #@1f
    iput v0, p0, Landroid/media/AudioTrack;->mPlayState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    monitor-exit v1

    #@22
    .line 1522
    return-void

    #@23
    .line 1529
    :catchall_0
    move-exception v0

    #@24
    monitor-exit v1

    #@25
    throw v0
.end method

.method public release()V
    .locals 2

    #@0
    .prologue
    .line 874
    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioTrack;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 878
    :goto_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_release()V

    #@6
    .line 879
    const/4 v1, 0x0

    #@7
    iput v1, p0, Landroid/media/AudioTrack;->mState:I

    #@9
    .line 870
    return-void

    #@a
    .line 875
    :catch_0
    move-exception v0

    #@b
    .local v0, "ise":Ljava/lang/IllegalStateException;
    goto :goto_0
.end method

.method public reloadStaticData()I
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 2097
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    #@3
    if-eq v0, v1, :cond_0

    #@5
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    #@7
    if-eq v0, v1, :cond_1

    #@9
    .line 2098
    :cond_0
    const/4 v0, -0x3

    #@a
    return v0

    #@b
    .line 2100
    :cond_1
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_reload_static()I

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public removeOnRoutingChangedListener(Landroid/media/AudioTrack$OnRoutingChangedListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/media/AudioTrack$OnRoutingChangedListener;

    #@0
    .prologue
    .line 2273
    iget-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    #@2
    monitor-enter v1

    #@3
    .line 2274
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 2275
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    #@d
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    .line 2277
    :cond_0
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    #@12
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    #@15
    move-result v0

    #@16
    if-nez v0, :cond_1

    #@18
    .line 2278
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_disableDeviceCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    :cond_1
    monitor-exit v1

    #@1c
    .line 2272
    return-void

    #@1d
    .line 2273
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit v1

    #@1f
    throw v0
.end method

.method public setAuxEffectSendLevel(F)I
    .locals 3
    .param p1, "level"    # F

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2150
    invoke-direct {p0}, Landroid/media/AudioTrack;->isRestricted()Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 2151
    return v1

    #@8
    .line 2153
    :cond_0
    iget v2, p0, Landroid/media/AudioTrack;->mState:I

    #@a
    if-nez v2, :cond_1

    #@c
    .line 2154
    const/4 v1, -0x3

    #@d
    return v1

    #@e
    .line 2156
    :cond_1
    invoke-static {p1}, Landroid/media/AudioTrack;->clampGainOrLevel(F)F

    #@11
    move-result p1

    #@12
    .line 2157
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_setAuxEffectSendLevel(F)I

    #@15
    move-result v0

    #@16
    .line 2158
    .local v0, "err":I
    if-nez v0, :cond_2

    #@18
    :goto_0
    return v1

    #@19
    :cond_2
    const/4 v1, -0x1

    #@1a
    goto :goto_0
.end method

.method public setLoopPoints(III)I
    .locals 2
    .param p1, "startInFrames"    # I
    .param p2, "endInFrames"    # I
    .param p3, "loopCount"    # I

    #@0
    .prologue
    .line 1468
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
    .line 1470
    :cond_0
    const/4 v0, -0x3

    #@a
    return v0

    #@b
    .line 1469
    :cond_1
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getPlayState()I

    #@e
    move-result v0

    #@f
    const/4 v1, 0x3

    #@10
    if-eq v0, v1, :cond_0

    #@12
    .line 1472
    if-nez p3, :cond_3

    #@14
    .line 1478
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioTrack;->native_set_loop(III)I

    #@17
    move-result v0

    #@18
    return v0

    #@19
    .line 1474
    :cond_3
    if-ltz p1, :cond_4

    #@1b
    iget v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    #@1d
    if-lt p1, v0, :cond_5

    #@1f
    .line 1476
    :cond_4
    :goto_0
    const/4 v0, -0x2

    #@20
    return v0

    #@21
    .line 1475
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
    .line 1386
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1387
    const/4 v0, -0x3

    #@5
    return v0

    #@6
    .line 1389
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
    .line 1426
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
    .line 1428
    :cond_0
    const/4 v0, -0x3

    #@a
    return v0

    #@b
    .line 1427
    :cond_1
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getPlayState()I

    #@e
    move-result v0

    #@f
    const/4 v1, 0x3

    #@10
    if-eq v0, v1, :cond_0

    #@12
    .line 1430
    if-ltz p1, :cond_2

    #@14
    iget v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    #@16
    if-le p1, v0, :cond_3

    #@18
    .line 1431
    :cond_2
    const/4 v0, -0x2

    #@19
    return v0

    #@1a
    .line 1433
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
    .line 1369
    if-nez p1, :cond_0

    #@2
    .line 1370
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "params is null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 1372
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_playback_params(Landroid/media/PlaybackParams;)V

    #@e
    .line 1368
    return-void
.end method

.method public setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;

    #@0
    .prologue
    .line 1240
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/media/AudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V

    #@4
    .line 1239
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
    .line 1253
    if-eqz p1, :cond_0

    #@3
    .line 1254
    new-instance v0, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    #@5
    invoke-direct {v0, p0, p0, p1, p2}, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;-><init>(Landroid/media/AudioTrack;Landroid/media/AudioTrack;Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V

    #@8
    iput-object v0, p0, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    #@a
    .line 1252
    :goto_0
    return-void

    #@b
    .line 1256
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
    .line 1344
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    #@2
    const/4 v1, 0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 1345
    const/4 v0, -0x3

    #@6
    return v0

    #@7
    .line 1347
    :cond_0
    if-gtz p1, :cond_1

    #@9
    .line 1348
    const/4 v0, -0x2

    #@a
    return v0

    #@b
    .line 1350
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
    .line 1400
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1401
    const/4 v0, -0x3

    #@5
    return v0

    #@6
    .line 1403
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
    .line 2176
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->isSink()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_2

    #@8
    .line 2179
    :cond_0
    if-eqz p1, :cond_3

    #@a
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getId()I

    #@d
    move-result v0

    #@e
    .line 2180
    .local v0, "preferredDeviceId":I
    :goto_0
    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_setOutputDevice(I)Z

    #@11
    move-result v1

    #@12
    .line 2181
    .local v1, "status":Z
    if-eqz v1, :cond_1

    #@14
    .line 2182
    monitor-enter p0

    #@15
    .line 2183
    :try_start_0
    iput-object p1, p0, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit p0

    #@18
    .line 2186
    :cond_1
    return v1

    #@19
    .line 2177
    .end local v0    # "preferredDeviceId":I
    .end local v1    # "status":Z
    :cond_2
    const/4 v2, 0x0

    #@1a
    return v2

    #@1b
    .line 2179
    :cond_3
    const/4 v0, 0x0

    #@1c
    .restart local v0    # "preferredDeviceId":I
    goto :goto_0

    #@1d
    .line 2182
    .restart local v1    # "status":Z
    :catchall_0
    move-exception v2

    #@1e
    monitor-exit p0

    #@1f
    throw v2
.end method

.method protected setState(I)V
    .locals 0
    .param p1, "state"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1490
    iput p1, p0, Landroid/media/AudioTrack;->mState:I

    #@2
    .line 1489
    return-void
.end method

.method public setStereoVolume(FF)I
    .locals 2
    .param p1, "leftGain"    # F
    .param p2, "rightGain"    # F

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1290
    invoke-direct {p0}, Landroid/media/AudioTrack;->isRestricted()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 1291
    return v1

    #@8
    .line 1293
    :cond_0
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    #@a
    if-nez v0, :cond_1

    #@c
    .line 1294
    const/4 v0, -0x3

    #@d
    return v0

    #@e
    .line 1297
    :cond_1
    invoke-static {p1}, Landroid/media/AudioTrack;->clampGainOrLevel(F)F

    #@11
    move-result p1

    #@12
    .line 1298
    invoke-static {p2}, Landroid/media/AudioTrack;->clampGainOrLevel(F)F

    #@15
    move-result p2

    #@16
    .line 1300
    invoke-direct {p0, p1, p2}, Landroid/media/AudioTrack;->native_setVolume(FF)V

    #@19
    .line 1302
    return v1
.end method

.method public setVolume(F)I
    .locals 1
    .param p1, "gain"    # F

    #@0
    .prologue
    .line 1321
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
    .line 1559
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 1560
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "stop() called on uninitialized AudioTrack."

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 1564
    :cond_0
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    #@10
    monitor-enter v1

    #@11
    .line 1565
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_stop()V

    #@14
    .line 1566
    const/4 v0, 0x1

    #@15
    iput v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    #@17
    .line 1567
    const/4 v0, 0x0

    #@18
    iput-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    #@1a
    .line 1568
    const/4 v0, 0x0

    #@1b
    iput v0, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    monitor-exit v1

    #@1e
    .line 1558
    return-void

    #@1f
    .line 1564
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
    .line 1943
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    #@5
    if-nez v0, :cond_0

    #@7
    .line 1944
    const-string/jumbo v0, "android.media.AudioTrack"

    #@a
    const-string/jumbo v1, "AudioTrack.write() called in invalid state STATE_UNINITIALIZED"

    #@d
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 1945
    const/4 v0, -0x3

    #@11
    return v0

    #@12
    .line 1948
    :cond_0
    if-eqz p3, :cond_1

    #@14
    if-eq p3, v7, :cond_1

    #@16
    .line 1949
    const-string/jumbo v0, "android.media.AudioTrack"

    #@19
    const-string/jumbo v1, "AudioTrack.write() called with invalid blocking mode"

    #@1c
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 1950
    return v3

    #@20
    .line 1953
    :cond_1
    if-eqz p1, :cond_2

    #@22
    if-gez p2, :cond_3

    #@24
    .line 1954
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
    .line 1955
    return v3

    #@46
    .line 1953
    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@49
    move-result v0

    #@4a
    if-gt p2, v0, :cond_2

    #@4c
    .line 1958
    const/4 v6, 0x0

    #@4d
    .line 1959
    .local v6, "ret":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    #@50
    move-result v0

    #@51
    if-eqz v0, :cond_7

    #@53
    .line 1961
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@56
    move-result v2

    #@57
    iget v4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    #@59
    .line 1962
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
    .line 1960
    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;->native_write_native_bytes(Ljava/lang/Object;IIIZ)I

    #@62
    move-result v6

    #@63
    .line 1970
    :goto_0
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    #@65
    if-nez v0, :cond_5

    #@67
    .line 1971
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    #@69
    const/4 v1, 0x2

    #@6a
    if-ne v0, v1, :cond_5

    #@6c
    .line 1972
    if-lez v6, :cond_5

    #@6e
    .line 1974
    iput v7, p0, Landroid/media/AudioTrack;->mState:I

    #@70
    .line 1977
    :cond_5
    if-lez v6, :cond_6

    #@72
    .line 1978
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@75
    move-result v0

    #@76
    add-int/2addr v0, v6

    #@77
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@7a
    .line 1981
    :cond_6
    return v6

    #@7b
    .line 1964
    :cond_7
    invoke-static {p1}, Ljava/nio/NioUtils;->unsafeArray(Ljava/nio/ByteBuffer;)[B

    #@7e
    move-result-object v1

    #@7f
    .line 1965
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
    .line 1966
    iget v4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    #@8a
    .line 1967
    if-nez p3, :cond_8

    #@8c
    move v5, v7

    #@8d
    :cond_8
    move-object v0, p0

    #@8e
    move v3, p2

    #@8f
    .line 1964
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
    .line 2010
    iget v2, p0, Landroid/media/AudioTrack;->mState:I

    #@7
    if-nez v2, :cond_0

    #@9
    .line 2011
    const-string/jumbo v2, "android.media.AudioTrack"

    #@c
    const-string/jumbo v3, "AudioTrack.write() called in invalid state STATE_UNINITIALIZED"

    #@f
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 2012
    return v6

    #@13
    .line 2015
    :cond_0
    if-eqz p3, :cond_1

    #@15
    if-eq p3, v3, :cond_1

    #@17
    .line 2016
    const-string/jumbo v2, "android.media.AudioTrack"

    #@1a
    const-string/jumbo v3, "AudioTrack.write() called with invalid blocking mode"

    #@1d
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 2017
    return v7

    #@21
    .line 2020
    :cond_1
    iget v2, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    #@23
    if-eq v2, v3, :cond_2

    #@25
    .line 2021
    const-string/jumbo v2, "android.media.AudioTrack"

    #@28
    const-string/jumbo v3, "AudioTrack.write() with timestamp called for non-streaming mode track"

    #@2b
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    .line 2022
    return v6

    #@2f
    .line 2025
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
    .line 2026
    const-string/jumbo v2, "android.media.AudioTrack"

    #@3c
    const-string/jumbo v3, "AudioTrack.write() called on a regular AudioTrack. Ignoring pts..."

    #@3f
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@42
    .line 2027
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    #@45
    move-result v2

    #@46
    return v2

    #@47
    .line 2030
    :cond_3
    if-eqz p1, :cond_4

    #@49
    if-gez p2, :cond_5

    #@4b
    .line 2031
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
    .line 2032
    return v7

    #@6d
    .line 2030
    :cond_5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@70
    move-result v2

    #@71
    if-gt p2, v2, :cond_4

    #@73
    .line 2036
    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    #@75
    if-nez v2, :cond_6

    #@77
    .line 2037
    const/16 v2, 0x10

    #@79
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@7c
    move-result-object v2

    #@7d
    iput-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    #@7f
    .line 2038
    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    #@81
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@83
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@86
    .line 2039
    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    #@88
    const v3, 0x55550001

    #@8b
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@8e
    .line 2040
    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    #@90
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@93
    .line 2041
    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    #@95
    invoke-virtual {v2, p4, p5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    #@98
    .line 2042
    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    #@9a
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@9d
    .line 2043
    iput p2, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    #@9f
    .line 2047
    :cond_6
    const/4 v0, 0x0

    #@a0
    .line 2048
    .local v0, "ret":I
    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    #@a2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    #@a5
    move-result v2

    #@a6
    if-eqz v2, :cond_8

    #@a8
    .line 2049
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
    .line 2050
    if-gez v0, :cond_7

    #@b6
    .line 2051
    const-string/jumbo v2, "android.media.AudioTrack"

    #@b9
    const-string/jumbo v3, "AudioTrack.write() could not write timestamp header!"

    #@bc
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@bf
    .line 2052
    iput-object v5, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    #@c1
    .line 2053
    iput v4, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    #@c3
    .line 2054
    return v0

    #@c4
    .line 2056
    :cond_7
    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    #@c6
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    #@c9
    move-result v2

    #@ca
    if-lez v2, :cond_8

    #@cc
    .line 2057
    const-string/jumbo v2, "android.media.AudioTrack"

    #@cf
    const-string/jumbo v3, "AudioTrack.write() partial timestamp header written."

    #@d2
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@d5
    .line 2058
    return v4

    #@d6
    .line 2063
    :cond_8
    iget v2, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    #@d8
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    #@db
    move-result v1

    #@dc
    .line 2064
    .local v1, "sizeToWrite":I
    invoke-virtual {p0, p1, v1, p3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    #@df
    move-result v0

    #@e0
    .line 2065
    if-gez v0, :cond_9

    #@e2
    .line 2066
    const-string/jumbo v2, "android.media.AudioTrack"

    #@e5
    const-string/jumbo v3, "AudioTrack.write() could not write audio data!"

    #@e8
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@eb
    .line 2067
    iput-object v5, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    #@ed
    .line 2068
    iput v4, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    #@ef
    .line 2069
    return v0

    #@f0
    .line 2072
    :cond_9
    iget v2, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    #@f2
    sub-int/2addr v2, v0

    #@f3
    iput v2, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    #@f5
    .line 2073
    iget v2, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    #@f7
    if-nez v2, :cond_a

    #@f9
    .line 2074
    iput-object v5, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    #@fb
    .line 2077
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
    .line 1650
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
    .line 1692
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
    .line 1693
    :cond_0
    const/4 v0, -0x3

    #@d
    return v0

    #@e
    .line 1696
    :cond_1
    if-eqz p4, :cond_2

    #@10
    if-eq p4, v7, :cond_2

    #@12
    .line 1697
    const-string/jumbo v0, "android.media.AudioTrack"

    #@15
    const-string/jumbo v1, "AudioTrack.write() called with invalid blocking mode"

    #@18
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    .line 1698
    return v2

    #@1c
    .line 1701
    :cond_2
    if-eqz p1, :cond_3

    #@1e
    if-gez p2, :cond_4

    #@20
    .line 1704
    :cond_3
    return v2

    #@21
    .line 1701
    :cond_4
    if-ltz p3, :cond_3

    #@23
    .line 1702
    add-int v0, p2, p3

    #@25
    if-ltz v0, :cond_3

    #@27
    .line 1703
    add-int v0, p2, p3

    #@29
    array-length v1, p1

    #@2a
    if-gt v0, v1, :cond_3

    #@2c
    .line 1707
    iget v4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    #@2e
    .line 1708
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
    .line 1707
    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;->native_write_byte([BIIIZ)I

    #@38
    move-result v6

    #@39
    .line 1710
    .local v6, "ret":I
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    #@3b
    if-nez v0, :cond_6

    #@3d
    .line 1711
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    #@3f
    const/4 v1, 0x2

    #@40
    if-ne v0, v1, :cond_6

    #@42
    .line 1712
    if-lez v6, :cond_6

    #@44
    .line 1714
    iput v7, p0, Landroid/media/AudioTrack;->mState:I

    #@46
    .line 1717
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
    .line 1868
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    #@6
    if-nez v0, :cond_0

    #@8
    .line 1869
    const-string/jumbo v0, "android.media.AudioTrack"

    #@b
    const-string/jumbo v1, "AudioTrack.write() called in invalid state STATE_UNINITIALIZED"

    #@e
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 1870
    return v2

    #@12
    .line 1873
    :cond_0
    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    #@14
    const/4 v1, 0x4

    #@15
    if-eq v0, v1, :cond_1

    #@17
    .line 1874
    const-string/jumbo v0, "android.media.AudioTrack"

    #@1a
    const-string/jumbo v1, "AudioTrack.write(float[] ...) requires format ENCODING_PCM_FLOAT"

    #@1d
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 1875
    return v2

    #@21
    .line 1878
    :cond_1
    if-eqz p4, :cond_2

    #@23
    if-eq p4, v7, :cond_2

    #@25
    .line 1879
    const-string/jumbo v0, "android.media.AudioTrack"

    #@28
    const-string/jumbo v1, "AudioTrack.write() called with invalid blocking mode"

    #@2b
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    .line 1880
    return v3

    #@2f
    .line 1883
    :cond_2
    if-eqz p1, :cond_3

    #@31
    if-gez p2, :cond_4

    #@33
    .line 1886
    :cond_3
    const-string/jumbo v0, "android.media.AudioTrack"

    #@36
    const-string/jumbo v1, "AudioTrack.write() called with invalid array, offset, or size"

    #@39
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3c
    .line 1887
    return v3

    #@3d
    .line 1883
    :cond_4
    if-ltz p3, :cond_3

    #@3f
    .line 1884
    add-int v0, p2, p3

    #@41
    if-ltz v0, :cond_3

    #@43
    .line 1885
    add-int v0, p2, p3

    #@45
    array-length v1, p1

    #@46
    if-gt v0, v1, :cond_3

    #@48
    .line 1890
    iget v4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    #@4a
    .line 1891
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
    .line 1890
    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;->native_write_float([FIIIZ)I

    #@54
    move-result v6

    #@55
    .line 1893
    .local v6, "ret":I
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    #@57
    if-nez v0, :cond_6

    #@59
    .line 1894
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    #@5b
    const/4 v1, 0x2

    #@5c
    if-ne v0, v1, :cond_6

    #@5e
    .line 1895
    if-lez v6, :cond_6

    #@60
    .line 1897
    iput v7, p0, Landroid/media/AudioTrack;->mState:I

    #@62
    .line 1900
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
    .line 1751
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
    .line 1792
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
    .line 1793
    :cond_0
    const/4 v0, -0x3

    #@d
    return v0

    #@e
    .line 1796
    :cond_1
    if-eqz p4, :cond_2

    #@10
    if-eq p4, v7, :cond_2

    #@12
    .line 1797
    const-string/jumbo v0, "android.media.AudioTrack"

    #@15
    const-string/jumbo v1, "AudioTrack.write() called with invalid blocking mode"

    #@18
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    .line 1798
    return v2

    #@1c
    .line 1801
    :cond_2
    if-eqz p1, :cond_3

    #@1e
    if-gez p2, :cond_4

    #@20
    .line 1804
    :cond_3
    return v2

    #@21
    .line 1801
    :cond_4
    if-ltz p3, :cond_3

    #@23
    .line 1802
    add-int v0, p2, p3

    #@25
    if-ltz v0, :cond_3

    #@27
    .line 1803
    add-int v0, p2, p3

    #@29
    array-length v1, p1

    #@2a
    if-gt v0, v1, :cond_3

    #@2c
    .line 1807
    iget v4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    #@2e
    .line 1808
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
    .line 1807
    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;->native_write_short([SIIIZ)I

    #@38
    move-result v6

    #@39
    .line 1810
    .local v6, "ret":I
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    #@3b
    if-nez v0, :cond_6

    #@3d
    .line 1811
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    #@3f
    const/4 v1, 0x2

    #@40
    if-ne v0, v1, :cond_6

    #@42
    .line 1812
    if-lez v6, :cond_6

    #@44
    .line 1814
    iput v7, p0, Landroid/media/AudioTrack;->mState:I

    #@46
    .line 1817
    :cond_6
    return v6
.end method
