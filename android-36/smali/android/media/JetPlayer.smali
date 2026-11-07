.class public Landroid/media/JetPlayer;
.super Ljava/lang/Object;
.source "JetPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/JetPlayer$NativeEventHandler;,
        Landroid/media/JetPlayer$OnJetEventListener;
    }
.end annotation


# static fields
.field private static final greylist-max-o JET_EVENT:I = 0x1

.field private static final greylist-max-o JET_EVENT_CHAN_MASK:I = 0x3c000

.field private static final greylist-max-o JET_EVENT_CHAN_SHIFT:I = 0xe

.field private static final greylist-max-o JET_EVENT_CTRL_MASK:I = 0x3f80

.field private static final greylist-max-o JET_EVENT_CTRL_SHIFT:I = 0x7

.field private static final greylist-max-o JET_EVENT_SEG_MASK:I = -0x1000000

.field private static final greylist-max-o JET_EVENT_SEG_SHIFT:I = 0x18

.field private static final greylist-max-o JET_EVENT_TRACK_MASK:I = 0xfc0000

.field private static final greylist-max-o JET_EVENT_TRACK_SHIFT:I = 0x12

.field private static final greylist-max-o JET_EVENT_VAL_MASK:I = 0x7f

.field private static final greylist-max-o JET_NUMQUEUEDSEGMENT_UPDATE:I = 0x3

.field private static final greylist-max-o JET_OUTPUT_CHANNEL_CONFIG:I = 0xc

.field private static final greylist-max-o JET_OUTPUT_RATE:I = 0x5622

.field private static final greylist-max-o JET_PAUSE_UPDATE:I = 0x4

.field private static final greylist-max-o JET_USERID_UPDATE:I = 0x2

.field private static greylist-max-o MAXTRACKS:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "JetPlayer-J"

.field private static greylist-max-o singletonRef:Landroid/media/JetPlayer;


# instance fields
.field private greylist-max-o mEventHandler:Landroid/media/JetPlayer$NativeEventHandler;

.field private final greylist-max-o mEventListenerLock:Ljava/lang/Object;

.field private greylist-max-o mInitializationLooper:Landroid/os/Looper;

.field private greylist-max-o mJetEventListener:Landroid/media/JetPlayer$OnJetEventListener;

.field private greylist-max-r mNativePlayerInJavaObj:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmEventListenerLock(Landroid/media/JetPlayer;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/JetPlayer;->mEventListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmJetEventListener(Landroid/media/JetPlayer;)Landroid/media/JetPlayer$OnJetEventListener;
    .registers 1

    iget-object p0, p0, Landroid/media/JetPlayer;->mJetEventListener:Landroid/media/JetPlayer$OnJetEventListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smloge(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Landroid/media/JetPlayer;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 71
    const/16 v0, 0x20

    sput v0, Landroid/media/JetPlayer;->MAXTRACKS:I

    .line 122
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 6

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/JetPlayer;->mEventHandler:Landroid/media/JetPlayer$NativeEventHandler;

    .line 110
    iput-object v0, p0, Landroid/media/JetPlayer;->mInitializationLooper:Landroid/os/Looper;

    .line 115
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/JetPlayer;->mEventListenerLock:Ljava/lang/Object;

    .line 117
    iput-object v0, p0, Landroid/media/JetPlayer;->mJetEventListener:Landroid/media/JetPlayer$OnJetEventListener;

    .line 163
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/media/JetPlayer;->mInitializationLooper:Landroid/os/Looper;

    if-nez v0, :cond_1f

    .line 164
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/media/JetPlayer;->mInitializationLooper:Landroid/os/Looper;

    .line 167
    :cond_1f
    const/16 v0, 0x5622

    const/16 v1, 0xc

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    .line 170
    .local v0, "buffSizeInBytes":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_47

    const/4 v1, -0x2

    if-eq v0, v1, :cond_47

    .line 173
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 174
    invoke-static {}, Landroid/media/JetPlayer;->getMaxTracks()I

    move-result v3

    .line 178
    invoke-static {v2}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result v4

    mul-int/2addr v4, v2

    div-int v2, v0, v4

    .line 177
    const/16 v4, 0x4b0

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 173
    invoke-direct {p0, v1, v3, v2}, Landroid/media/JetPlayer;->native_setup(Ljava/lang/Object;II)Z

    .line 181
    :cond_47
    return-void
.end method

.method public static whitelist getJetPlayer()Landroid/media/JetPlayer;
    .registers 1

    .line 144
    sget-object v0, Landroid/media/JetPlayer;->singletonRef:Landroid/media/JetPlayer;

    if-nez v0, :cond_b

    .line 145
    new-instance v0, Landroid/media/JetPlayer;

    invoke-direct {v0}, Landroid/media/JetPlayer;-><init>()V

    sput-object v0, Landroid/media/JetPlayer;->singletonRef:Landroid/media/JetPlayer;

    .line 147
    :cond_b
    sget-object v0, Landroid/media/JetPlayer;->singletonRef:Landroid/media/JetPlayer;

    return-object v0
.end method

.method public static whitelist getMaxTracks()I
    .registers 1

    .line 208
    sget v0, Landroid/media/JetPlayer;->MAXTRACKS:I

    return v0
.end method

.method private static greylist-max-o logd(Ljava/lang/String;)V
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;

    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ android.media.JetPlayer ] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JetPlayer-J"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    return-void
.end method

.method private static greylist-max-o loge(Ljava/lang/String;)V
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;

    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ android.media.JetPlayer ] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JetPlayer-J"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    return-void
.end method

.method private final native greylist-max-o native_clearQueue()Z
.end method

.method private final native greylist-max-o native_closeJetFile()Z
.end method

.method private final native greylist-max-o native_finalize()V
.end method

.method private final native greylist-max-o native_loadJetFromFile(Ljava/lang/String;)Z
.end method

.method private final native greylist-max-o native_loadJetFromFileD(Ljava/io/FileDescriptor;JJ)Z
.end method

.method private final native greylist-max-o native_pauseJet()Z
.end method

.method private final native greylist-max-o native_playJet()Z
.end method

.method private final native greylist-max-o native_queueJetSegment(IIIIIB)Z
.end method

.method private final native greylist-max-o native_queueJetSegmentMuteArray(IIII[ZB)Z
.end method

.method private final native greylist-max-o native_release()V
.end method

.method private final native greylist-max-o native_setMuteArray([ZZ)Z
.end method

.method private final native greylist-max-o native_setMuteFlag(IZZ)Z
.end method

.method private final native greylist-max-o native_setMuteFlags(IZ)Z
.end method

.method private final native greylist-max-o native_setup(Ljava/lang/Object;II)Z
.end method

.method private final native greylist-max-o native_triggerClip(I)Z
.end method

.method private static greylist-max-r postEventFromNative(Ljava/lang/Object;III)V
    .registers 7
    .param p0, "jetplayer_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .line 569
    move-object v0, p0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/JetPlayer;

    .line 571
    .local v0, "jet":Landroid/media/JetPlayer;
    if-eqz v0, :cond_1b

    iget-object v1, v0, Landroid/media/JetPlayer;->mEventHandler:Landroid/media/JetPlayer$NativeEventHandler;

    if-eqz v1, :cond_1b

    .line 572
    iget-object v1, v0, Landroid/media/JetPlayer;->mEventHandler:Landroid/media/JetPlayer$NativeEventHandler;

    .line 573
    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, p3, v2}, Landroid/media/JetPlayer$NativeEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 574
    .local v1, "m":Landroid/os/Message;
    iget-object v2, v0, Landroid/media/JetPlayer;->mEventHandler:Landroid/media/JetPlayer$NativeEventHandler;

    invoke-virtual {v2, v1}, Landroid/media/JetPlayer$NativeEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 577
    .end local v1    # "m":Landroid/os/Message;
    :cond_1b
    return-void
.end method


# virtual methods
.method public whitelist clearQueue()Z
    .registers 2

    .line 395
    invoke-direct {p0}, Landroid/media/JetPlayer;->native_clearQueue()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 156
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public whitelist closeJetFile()Z
    .registers 2

    .line 244
    invoke-direct {p0}, Landroid/media/JetPlayer;->native_closeJetFile()Z

    move-result v0

    return v0
.end method

.method protected whitelist test-api finalize()V
    .registers 1

    .line 185
    invoke-direct {p0}, Landroid/media/JetPlayer;->native_finalize()V

    .line 186
    return-void
.end method

.method public whitelist loadJetFile(Landroid/content/res/AssetFileDescriptor;)Z
    .registers 8
    .param p1, "afd"    # Landroid/content/res/AssetFileDescriptor;

    .line 231
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    .line 232
    .local v4, "len":J
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-ltz v0, :cond_19

    .line 235
    nop

    .line 236
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    .line 235
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/media/JetPlayer;->native_loadJetFromFileD(Ljava/io/FileDescriptor;JJ)Z

    move-result v1

    return v1

    .line 233
    :cond_19
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "no length for fd"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist loadJetFile(Ljava/lang/String;)Z
    .registers 3
    .param p1, "path"    # Ljava/lang/String;

    .line 221
    invoke-direct {p0, p1}, Landroid/media/JetPlayer;->native_loadJetFromFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist pause()Z
    .registers 2

    .line 262
    invoke-direct {p0}, Landroid/media/JetPlayer;->native_pauseJet()Z

    move-result v0

    return v0
.end method

.method public whitelist play()Z
    .registers 2

    .line 253
    invoke-direct {p0}, Landroid/media/JetPlayer;->native_playJet()Z

    move-result v0

    return v0
.end method

.method public whitelist queueJetSegment(IIIIIB)Z
    .registers 8
    .param p1, "segmentNum"    # I
    .param p2, "libNum"    # I
    .param p3, "repeatCount"    # I
    .param p4, "transpose"    # I
    .param p5, "muteFlags"    # I
    .param p6, "userID"    # B

    .line 289
    invoke-direct/range {p0 .. p6}, Landroid/media/JetPlayer;->native_queueJetSegment(IIIIIB)Z

    move-result v0

    return v0
.end method

.method public whitelist queueJetSegmentMuteArray(IIII[ZB)Z
    .registers 9
    .param p1, "segmentNum"    # I
    .param p2, "libNum"    # I
    .param p3, "repeatCount"    # I
    .param p4, "transpose"    # I
    .param p5, "muteArray"    # [Z
    .param p6, "userID"    # B

    .line 318
    array-length v0, p5

    invoke-static {}, Landroid/media/JetPlayer;->getMaxTracks()I

    move-result v1

    if-eq v0, v1, :cond_9

    .line 319
    const/4 v0, 0x0

    return v0

    .line 321
    :cond_9
    invoke-direct/range {p0 .. p6}, Landroid/media/JetPlayer;->native_queueJetSegmentMuteArray(IIII[ZB)Z

    move-result v0

    return v0
.end method

.method public whitelist release()V
    .registers 2

    .line 195
    invoke-direct {p0}, Landroid/media/JetPlayer;->native_release()V

    .line 196
    const/4 v0, 0x0

    sput-object v0, Landroid/media/JetPlayer;->singletonRef:Landroid/media/JetPlayer;

    .line 197
    return-void
.end method

.method public whitelist setEventListener(Landroid/media/JetPlayer$OnJetEventListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/media/JetPlayer$OnJetEventListener;

    .line 466
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/JetPlayer;->setEventListener(Landroid/media/JetPlayer$OnJetEventListener;Landroid/os/Handler;)V

    .line 467
    return-void
.end method

.method public whitelist setEventListener(Landroid/media/JetPlayer$OnJetEventListener;Landroid/os/Handler;)V
    .registers 6
    .param p1, "listener"    # Landroid/media/JetPlayer$OnJetEventListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 477
    iget-object v0, p0, Landroid/media/JetPlayer;->mEventListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 479
    :try_start_3
    iput-object p1, p0, Landroid/media/JetPlayer;->mJetEventListener:Landroid/media/JetPlayer$OnJetEventListener;

    .line 481
    if-eqz p1, :cond_1f

    .line 482
    if-eqz p2, :cond_15

    .line 483
    new-instance v1, Landroid/media/JetPlayer$NativeEventHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, p0, v2}, Landroid/media/JetPlayer$NativeEventHandler;-><init>(Landroid/media/JetPlayer;Landroid/media/JetPlayer;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/JetPlayer;->mEventHandler:Landroid/media/JetPlayer$NativeEventHandler;

    goto :goto_22

    .line 486
    :cond_15
    new-instance v1, Landroid/media/JetPlayer$NativeEventHandler;

    iget-object v2, p0, Landroid/media/JetPlayer;->mInitializationLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, p0, v2}, Landroid/media/JetPlayer$NativeEventHandler;-><init>(Landroid/media/JetPlayer;Landroid/media/JetPlayer;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/JetPlayer;->mEventHandler:Landroid/media/JetPlayer$NativeEventHandler;

    goto :goto_22

    .line 489
    :cond_1f
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/JetPlayer;->mEventHandler:Landroid/media/JetPlayer$NativeEventHandler;

    .line 492
    :goto_22
    monitor-exit v0

    .line 493
    return-void

    .line 492
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public whitelist setMuteArray([ZZ)Z
    .registers 5
    .param p1, "muteArray"    # [Z
    .param p2, "sync"    # Z

    .line 353
    array-length v0, p1

    invoke-static {}, Landroid/media/JetPlayer;->getMaxTracks()I

    move-result v1

    if-eq v0, v1, :cond_9

    .line 354
    const/4 v0, 0x0

    return v0

    .line 355
    :cond_9
    invoke-direct {p0, p1, p2}, Landroid/media/JetPlayer;->native_setMuteArray([ZZ)Z

    move-result v0

    return v0
.end method

.method public whitelist setMuteFlag(IZZ)Z
    .registers 5
    .param p1, "trackId"    # I
    .param p2, "muteFlag"    # Z
    .param p3, "sync"    # Z

    .line 370
    invoke-direct {p0, p1, p2, p3}, Landroid/media/JetPlayer;->native_setMuteFlag(IZZ)Z

    move-result v0

    return v0
.end method

.method public whitelist setMuteFlags(IZ)Z
    .registers 4
    .param p1, "muteFlags"    # I
    .param p2, "sync"    # Z

    .line 337
    invoke-direct {p0, p1, p2}, Landroid/media/JetPlayer;->native_setMuteFlags(IZ)Z

    move-result v0

    return v0
.end method

.method public whitelist triggerClip(I)Z
    .registers 3
    .param p1, "clipId"    # I

    .line 386
    invoke-direct {p0, p1}, Landroid/media/JetPlayer;->native_triggerClip(I)Z

    move-result v0

    return v0
.end method
