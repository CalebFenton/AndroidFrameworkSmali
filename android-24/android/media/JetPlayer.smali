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
.field private static final JET_EVENT:I = 0x1

.field private static final JET_EVENT_CHAN_MASK:I = 0x3c000

.field private static final JET_EVENT_CHAN_SHIFT:I = 0xe

.field private static final JET_EVENT_CTRL_MASK:I = 0x3f80

.field private static final JET_EVENT_CTRL_SHIFT:I = 0x7

.field private static final JET_EVENT_SEG_MASK:I = -0x1000000

.field private static final JET_EVENT_SEG_SHIFT:I = 0x18

.field private static final JET_EVENT_TRACK_MASK:I = 0xfc0000

.field private static final JET_EVENT_TRACK_SHIFT:I = 0x12

.field private static final JET_EVENT_VAL_MASK:I = 0x7f

.field private static final JET_NUMQUEUEDSEGMENT_UPDATE:I = 0x3

.field private static final JET_OUTPUT_CHANNEL_CONFIG:I = 0xc

.field private static final JET_OUTPUT_RATE:I = 0x5622

.field private static final JET_PAUSE_UPDATE:I = 0x4

.field private static final JET_USERID_UPDATE:I = 0x2

.field private static MAXTRACKS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "JetPlayer-J"

.field private static singletonRef:Landroid/media/JetPlayer;


# instance fields
.field private mEventHandler:Landroid/media/JetPlayer$NativeEventHandler;

.field private final mEventListenerLock:Ljava/lang/Object;

.field private mInitializationLooper:Landroid/os/Looper;

.field private mJetEventListener:Landroid/media/JetPlayer$OnJetEventListener;

.field private mNativePlayerInJavaObj:J


# direct methods
.method static synthetic -get0(Landroid/media/JetPlayer;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/JetPlayer;->mEventListenerLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/media/JetPlayer;)Landroid/media/JetPlayer$OnJetEventListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/JetPlayer;->mJetEventListener:Landroid/media/JetPlayer$OnJetEventListener;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Landroid/media/JetPlayer;->loge(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 72
    const/16 v0, 0x20

    #@2
    sput v0, Landroid/media/JetPlayer;->MAXTRACKS:I

    #@4
    .line 63
    return-void
.end method

.method private constructor <init>()V
    .locals 5

    #@0
    .prologue
    const/4 v3, 0x2

    #@1
    const/4 v2, 0x0

    #@2
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 106
    iput-object v2, p0, Landroid/media/JetPlayer;->mEventHandler:Landroid/media/JetPlayer$NativeEventHandler;

    #@7
    .line 111
    iput-object v2, p0, Landroid/media/JetPlayer;->mInitializationLooper:Landroid/os/Looper;

    #@9
    .line 116
    new-instance v1, Ljava/lang/Object;

    #@b
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@e
    iput-object v1, p0, Landroid/media/JetPlayer;->mEventListenerLock:Ljava/lang/Object;

    #@10
    .line 118
    iput-object v2, p0, Landroid/media/JetPlayer;->mJetEventListener:Landroid/media/JetPlayer$OnJetEventListener;

    #@12
    .line 160
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@15
    move-result-object v1

    #@16
    iput-object v1, p0, Landroid/media/JetPlayer;->mInitializationLooper:Landroid/os/Looper;

    #@18
    if-nez v1, :cond_0

    #@1a
    .line 161
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@1d
    move-result-object v1

    #@1e
    iput-object v1, p0, Landroid/media/JetPlayer;->mInitializationLooper:Landroid/os/Looper;

    #@20
    .line 164
    :cond_0
    const/16 v1, 0x5622

    #@22
    .line 165
    const/16 v2, 0xc

    #@24
    .line 164
    invoke-static {v1, v2, v3}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    #@27
    move-result v0

    #@28
    .line 167
    .local v0, "buffSizeInBytes":I
    const/4 v1, -0x1

    #@29
    if-eq v0, v1, :cond_1

    #@2b
    .line 168
    const/4 v1, -0x2

    #@2c
    if-eq v0, v1, :cond_1

    #@2e
    .line 170
    new-instance v1, Ljava/lang/ref/WeakReference;

    #@30
    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@33
    .line 171
    invoke-static {}, Landroid/media/JetPlayer;->getMaxTracks()I

    #@36
    move-result v2

    #@37
    .line 175
    invoke-static {v3}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    #@3a
    move-result v3

    #@3b
    mul-int/lit8 v3, v3, 0x2

    #@3d
    .line 174
    div-int v3, v0, v3

    #@3f
    const/16 v4, 0x4b0

    #@41
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    #@44
    move-result v3

    #@45
    .line 170
    invoke-direct {p0, v1, v2, v3}, Landroid/media/JetPlayer;->native_setup(Ljava/lang/Object;II)Z

    #@48
    .line 157
    :cond_1
    return-void
.end method

.method public static getJetPlayer()Landroid/media/JetPlayer;
    .locals 1

    #@0
    .prologue
    .line 141
    sget-object v0, Landroid/media/JetPlayer;->singletonRef:Landroid/media/JetPlayer;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 142
    new-instance v0, Landroid/media/JetPlayer;

    #@6
    invoke-direct {v0}, Landroid/media/JetPlayer;-><init>()V

    #@9
    sput-object v0, Landroid/media/JetPlayer;->singletonRef:Landroid/media/JetPlayer;

    #@b
    .line 144
    :cond_0
    sget-object v0, Landroid/media/JetPlayer;->singletonRef:Landroid/media/JetPlayer;

    #@d
    return-object v0
.end method

.method public static getMaxTracks()I
    .locals 1

    #@0
    .prologue
    .line 204
    sget v0, Landroid/media/JetPlayer;->MAXTRACKS:I

    #@2
    return v0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 583
    const-string/jumbo v0, "JetPlayer-J"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "[ android.media.JetPlayer ] "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 582
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 587
    const-string/jumbo v0, "JetPlayer-J"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "[ android.media.JetPlayer ] "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 586
    return-void
.end method

.method private final native native_clearQueue()Z
.end method

.method private final native native_closeJetFile()Z
.end method

.method private final native native_finalize()V
.end method

.method private final native native_loadJetFromFile(Ljava/lang/String;)Z
.end method

.method private final native native_loadJetFromFileD(Ljava/io/FileDescriptor;JJ)Z
.end method

.method private final native native_pauseJet()Z
.end method

.method private final native native_playJet()Z
.end method

.method private final native native_queueJetSegment(IIIIIB)Z
.end method

.method private final native native_queueJetSegmentMuteArray(IIII[ZB)Z
.end method

.method private final native native_release()V
.end method

.method private final native native_setMuteArray([ZZ)Z
.end method

.method private final native native_setMuteFlag(IZZ)Z
.end method

.method private final native native_setMuteFlags(IZ)Z
.end method

.method private final native native_setup(Ljava/lang/Object;II)Z
.end method

.method private final native native_triggerClip(I)Z
.end method

.method private static postEventFromNative(Ljava/lang/Object;III)V
    .locals 4
    .param p0, "jetplayer_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 566
    check-cast p0, Ljava/lang/ref/WeakReference;

    #@3
    .end local p0    # "jetplayer_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/media/JetPlayer;

    #@9
    .line 568
    .local v0, "jet":Landroid/media/JetPlayer;
    if-eqz v0, :cond_0

    #@b
    iget-object v2, v0, Landroid/media/JetPlayer;->mEventHandler:Landroid/media/JetPlayer$NativeEventHandler;

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 570
    iget-object v2, v0, Landroid/media/JetPlayer;->mEventHandler:Landroid/media/JetPlayer$NativeEventHandler;

    #@11
    invoke-virtual {v2, p1, p2, p3, v3}, Landroid/media/JetPlayer$NativeEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@14
    move-result-object v1

    #@15
    .line 571
    .local v1, "m":Landroid/os/Message;
    iget-object v2, v0, Landroid/media/JetPlayer;->mEventHandler:Landroid/media/JetPlayer$NativeEventHandler;

    #@17
    invoke-virtual {v2, v1}, Landroid/media/JetPlayer$NativeEventHandler;->sendMessage(Landroid/os/Message;)Z

    #@1a
    .line 564
    .end local v1    # "m":Landroid/os/Message;
    :cond_0
    return-void
.end method


# virtual methods
.method public clearQueue()Z
    .locals 1

    #@0
    .prologue
    .line 391
    invoke-direct {p0}, Landroid/media/JetPlayer;->native_clearQueue()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 153
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    #@2
    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    #@5
    throw v0
.end method

.method public closeJetFile()Z
    .locals 1

    #@0
    .prologue
    .line 240
    invoke-direct {p0}, Landroid/media/JetPlayer;->native_closeJetFile()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method protected finalize()V
    .locals 0

    #@0
    .prologue
    .line 182
    invoke-direct {p0}, Landroid/media/JetPlayer;->native_finalize()V

    #@3
    .line 181
    return-void
.end method

.method public loadJetFile(Landroid/content/res/AssetFileDescriptor;)Z
    .locals 6
    .param p1, "afd"    # Landroid/content/res/AssetFileDescriptor;

    #@0
    .prologue
    .line 227
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    #@3
    move-result-wide v4

    #@4
    .line 228
    .local v4, "len":J
    const-wide/16 v0, 0x0

    #@6
    cmp-long v0, v4, v0

    #@8
    if-gez v0, :cond_0

    #@a
    .line 229
    new-instance v0, Landroid/util/AndroidRuntimeException;

    #@c
    const-string/jumbo v1, "no length for fd"

    #@f
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 232
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    #@1a
    move-result-wide v2

    #@1b
    move-object v0, p0

    #@1c
    .line 231
    invoke-direct/range {v0 .. v5}, Landroid/media/JetPlayer;->native_loadJetFromFileD(Ljava/io/FileDescriptor;JJ)Z

    #@1f
    move-result v0

    #@20
    return v0
.end method

.method public loadJetFile(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 217
    invoke-direct {p0, p1}, Landroid/media/JetPlayer;->native_loadJetFromFile(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public pause()Z
    .locals 1

    #@0
    .prologue
    .line 258
    invoke-direct {p0}, Landroid/media/JetPlayer;->native_pauseJet()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public play()Z
    .locals 1

    #@0
    .prologue
    .line 249
    invoke-direct {p0}, Landroid/media/JetPlayer;->native_playJet()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public queueJetSegment(IIIIIB)Z
    .locals 1
    .param p1, "segmentNum"    # I
    .param p2, "libNum"    # I
    .param p3, "repeatCount"    # I
    .param p4, "transpose"    # I
    .param p5, "muteFlags"    # I
    .param p6, "userID"    # B

    #@0
    .prologue
    .line 285
    invoke-direct/range {p0 .. p6}, Landroid/media/JetPlayer;->native_queueJetSegment(IIIIIB)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public queueJetSegmentMuteArray(IIII[ZB)Z
    .locals 2
    .param p1, "segmentNum"    # I
    .param p2, "libNum"    # I
    .param p3, "repeatCount"    # I
    .param p4, "transpose"    # I
    .param p5, "muteArray"    # [Z
    .param p6, "userID"    # B

    #@0
    .prologue
    .line 314
    array-length v0, p5

    #@1
    invoke-static {}, Landroid/media/JetPlayer;->getMaxTracks()I

    #@4
    move-result v1

    #@5
    if-eq v0, v1, :cond_0

    #@7
    .line 315
    const/4 v0, 0x0

    #@8
    return v0

    #@9
    .line 317
    :cond_0
    invoke-direct/range {p0 .. p6}, Landroid/media/JetPlayer;->native_queueJetSegmentMuteArray(IIII[ZB)Z

    #@c
    move-result v0

    #@d
    return v0
.end method

.method public release()V
    .locals 1

    #@0
    .prologue
    .line 192
    invoke-direct {p0}, Landroid/media/JetPlayer;->native_release()V

    #@3
    .line 193
    const/4 v0, 0x0

    #@4
    sput-object v0, Landroid/media/JetPlayer;->singletonRef:Landroid/media/JetPlayer;

    #@6
    .line 191
    return-void
.end method

.method public setEventListener(Landroid/media/JetPlayer$OnJetEventListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/JetPlayer$OnJetEventListener;

    #@0
    .prologue
    .line 463
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/media/JetPlayer;->setEventListener(Landroid/media/JetPlayer$OnJetEventListener;Landroid/os/Handler;)V

    #@4
    .line 462
    return-void
.end method

.method public setEventListener(Landroid/media/JetPlayer$OnJetEventListener;Landroid/os/Handler;)V
    .locals 3
    .param p1, "listener"    # Landroid/media/JetPlayer$OnJetEventListener;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 475
    iget-object v1, p0, Landroid/media/JetPlayer;->mEventListenerLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 477
    :try_start_0
    iput-object p1, p0, Landroid/media/JetPlayer;->mJetEventListener:Landroid/media/JetPlayer$OnJetEventListener;

    #@5
    .line 479
    if-eqz p1, :cond_1

    #@7
    .line 480
    if-eqz p2, :cond_0

    #@9
    .line 481
    new-instance v0, Landroid/media/JetPlayer$NativeEventHandler;

    #@b
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@e
    move-result-object v2

    #@f
    invoke-direct {v0, p0, p0, v2}, Landroid/media/JetPlayer$NativeEventHandler;-><init>(Landroid/media/JetPlayer;Landroid/media/JetPlayer;Landroid/os/Looper;)V

    #@12
    iput-object v0, p0, Landroid/media/JetPlayer;->mEventHandler:Landroid/media/JetPlayer$NativeEventHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    :goto_0
    monitor-exit v1

    #@15
    .line 474
    return-void

    #@16
    .line 484
    :cond_0
    :try_start_1
    new-instance v0, Landroid/media/JetPlayer$NativeEventHandler;

    #@18
    iget-object v2, p0, Landroid/media/JetPlayer;->mInitializationLooper:Landroid/os/Looper;

    #@1a
    invoke-direct {v0, p0, p0, v2}, Landroid/media/JetPlayer$NativeEventHandler;-><init>(Landroid/media/JetPlayer;Landroid/media/JetPlayer;Landroid/os/Looper;)V

    #@1d
    iput-object v0, p0, Landroid/media/JetPlayer;->mEventHandler:Landroid/media/JetPlayer$NativeEventHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    goto :goto_0

    #@20
    .line 475
    :catchall_0
    move-exception v0

    #@21
    monitor-exit v1

    #@22
    throw v0

    #@23
    .line 487
    :cond_1
    const/4 v0, 0x0

    #@24
    :try_start_2
    iput-object v0, p0, Landroid/media/JetPlayer;->mEventHandler:Landroid/media/JetPlayer$NativeEventHandler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@26
    goto :goto_0
.end method

.method public setMuteArray([ZZ)Z
    .locals 2
    .param p1, "muteArray"    # [Z
    .param p2, "sync"    # Z

    #@0
    .prologue
    .line 349
    array-length v0, p1

    #@1
    invoke-static {}, Landroid/media/JetPlayer;->getMaxTracks()I

    #@4
    move-result v1

    #@5
    if-eq v0, v1, :cond_0

    #@7
    .line 350
    const/4 v0, 0x0

    #@8
    return v0

    #@9
    .line 351
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/media/JetPlayer;->native_setMuteArray([ZZ)Z

    #@c
    move-result v0

    #@d
    return v0
.end method

.method public setMuteFlag(IZZ)Z
    .locals 1
    .param p1, "trackId"    # I
    .param p2, "muteFlag"    # Z
    .param p3, "sync"    # Z

    #@0
    .prologue
    .line 366
    invoke-direct {p0, p1, p2, p3}, Landroid/media/JetPlayer;->native_setMuteFlag(IZZ)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public setMuteFlags(IZ)Z
    .locals 1
    .param p1, "muteFlags"    # I
    .param p2, "sync"    # Z

    #@0
    .prologue
    .line 333
    invoke-direct {p0, p1, p2}, Landroid/media/JetPlayer;->native_setMuteFlags(IZ)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public triggerClip(I)Z
    .locals 1
    .param p1, "clipId"    # I

    #@0
    .prologue
    .line 382
    invoke-direct {p0, p1}, Landroid/media/JetPlayer;->native_triggerClip(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method
