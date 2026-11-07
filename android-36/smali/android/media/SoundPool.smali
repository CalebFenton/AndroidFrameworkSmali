.class public Landroid/media/SoundPool;
.super Landroid/media/PlayerBase;
.source "SoundPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/SoundPool$EventHandler;,
        Landroid/media/SoundPool$OnLoadCompleteListener;,
        Landroid/media/SoundPool$Builder;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z

.field private static final greylist-max-o SAMPLE_LOADED:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SoundPool"


# instance fields
.field private final greylist-max-o mAttributes:Landroid/media/AudioAttributes;

.field private final blacklist mEventHandler:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/media/SoundPool$EventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mHasAppOpsPlayAudio:Z

.field private greylist-max-o mNativeContext:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Landroid/media/SoundPool;->DEBUG:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 119
    const-string v0, "soundpool"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 127
    const-string v0, "SoundPool"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/SoundPool;->DEBUG:Z

    return-void
.end method

.method public constructor whitelist <init>(III)V
    .registers 7
    .param p1, "maxStreams"    # I
    .param p2, "streamType"    # I
    .param p3, "srcQuality"    # I

    .line 153
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 154
    invoke-virtual {v0, p2}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 153
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v0, v2}, Landroid/media/SoundPool;-><init>(Landroid/content/Context;ILandroid/media/AudioAttributes;I)V

    .line 156
    const-string v0, "SoundPool"

    const-string v1, "SoundPool()"

    invoke-static {p2, v0, v1}, Landroid/media/PlayerBase;->deprecateStreamTypeForPlayback(ILjava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;ILandroid/media/AudioAttributes;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "maxStreams"    # I
    .param p3, "attributes"    # Landroid/media/AudioAttributes;
    .param p4, "sessionId"    # I

    .line 161
    const/4 v0, 0x3

    invoke-direct {p0, p3, v0}, Landroid/media/PlayerBase;-><init>(Landroid/media/AudioAttributes;I)V

    .line 129
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/media/SoundPool;->mEventHandler:Ljava/util/concurrent/atomic/AtomicReference;

    .line 164
    invoke-virtual {p0}, Landroid/media/SoundPool;->getCurrentOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, p3, v0}, Landroid/media/SoundPool;->native_setup(ILjava/lang/Object;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_20

    .line 167
    iput-object p3, p0, Landroid/media/SoundPool;->mAttributes:Landroid/media/AudioAttributes;

    .line 169
    invoke-static {p1, p4}, Landroid/media/SoundPool;->resolvePlaybackSessionId(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/SoundPool;->baseRegisterPlayer(I)V

    .line 170
    return-void

    .line 165
    :cond_20
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Native setup failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor blacklist <init>(Landroid/content/Context;ILandroid/media/AudioAttributes;ILandroid/media/SoundPool-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/SoundPool;-><init>(Landroid/content/Context;ILandroid/media/AudioAttributes;I)V

    return-void
.end method

.method private final native greylist-max-o _load(Ljava/io/FileDescriptor;JJI)I
.end method

.method private final native greylist-max-o _mute(Z)V
.end method

.method private final native blacklist _play(IFFIIFI)I
.end method

.method private final native greylist-max-o _setVolume(IFF)V
.end method

.method private final native greylist-max-o native_release()V
.end method

.method private native blacklist native_setup(ILjava/lang/Object;Ljava/lang/String;)I
.end method

.method private blacklist postEventFromNative(IIILjava/lang/Object;)V
    .registers 7
    .param p1, "msg"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 534
    iget-object v0, p0, Landroid/media/SoundPool;->mEventHandler:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 535
    .local v0, "eventHandler":Landroid/os/Handler;
    if-nez v0, :cond_b

    .line 536
    return-void

    .line 538
    :cond_b
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 539
    .local v1, "message":Landroid/os/Message;
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 540
    return-void
.end method


# virtual methods
.method public final native whitelist autoPause()V
.end method

.method public final native whitelist autoResume()V
.end method

.method protected whitelist test-api finalize()V
    .registers 1

    .line 186
    invoke-virtual {p0}, Landroid/media/SoundPool;->release()V

    return-void
.end method

.method public whitelist load(Landroid/content/Context;II)I
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "priority"    # I

    .line 228
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 229
    .local v1, "afd":Landroid/content/res/AssetFileDescriptor;
    const/4 v0, 0x0

    .line 230
    .local v0, "id":I
    if-eqz v1, :cond_24

    .line 231
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v4

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v6

    move-object v2, p0

    move v8, p3

    .end local p3    # "priority":I
    .local v8, "priority":I
    invoke-direct/range {v2 .. v8}, Landroid/media/SoundPool;->_load(Ljava/io/FileDescriptor;JJI)I

    move-result p3

    .line 233
    .end local v0    # "id":I
    .local p3, "id":I
    :try_start_1d
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_21

    .line 236
    goto :goto_22

    .line 234
    :catch_21
    move-exception v0

    .line 238
    :goto_22
    move v0, p3

    goto :goto_25

    .line 230
    .end local v8    # "priority":I
    .restart local v0    # "id":I
    .local p3, "priority":I
    :cond_24
    move v8, p3

    .line 238
    .end local p3    # "priority":I
    .restart local v8    # "priority":I
    :goto_25
    return v0
.end method

.method public whitelist load(Landroid/content/res/AssetFileDescriptor;I)I
    .registers 10
    .param p1, "afd"    # Landroid/content/res/AssetFileDescriptor;
    .param p2, "priority"    # I

    .line 250
    if-eqz p1, :cond_24

    .line 251
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    .line 252
    .local v4, "len":J
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-ltz v0, :cond_1b

    .line 255
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    move-object v0, p0

    move v6, p2

    .end local p2    # "priority":I
    .local v6, "priority":I
    invoke-direct/range {v0 .. v6}, Landroid/media/SoundPool;->_load(Ljava/io/FileDescriptor;JJI)I

    move-result p2

    return p2

    .line 253
    .end local v6    # "priority":I
    .restart local p2    # "priority":I
    :cond_1b
    move v6, p2

    .end local p2    # "priority":I
    .restart local v6    # "priority":I
    new-instance p2, Landroid/util/AndroidRuntimeException;

    const-string v0, "no length for fd"

    invoke-direct {p2, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 257
    .end local v4    # "len":J
    .end local v6    # "priority":I
    .restart local p2    # "priority":I
    :cond_24
    move v6, p2

    .end local p2    # "priority":I
    .restart local v6    # "priority":I
    const/4 p2, 0x0

    return p2
.end method

.method public whitelist load(Ljava/io/FileDescriptor;JJI)I
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "offset"    # J
    .param p4, "length"    # J
    .param p6, "priority"    # I

    .line 276
    invoke-direct/range {p0 .. p6}, Landroid/media/SoundPool;->_load(Ljava/io/FileDescriptor;JJI)I

    move-result v0

    return v0
.end method

.method public whitelist load(Ljava/lang/String;I)I
    .registers 13
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "priority"    # I

    .line 197
    const/4 v1, 0x0

    .line 199
    .local v1, "id":I
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    .local v0, "f":Ljava/io/File;
    const/high16 v2, 0x10000000

    invoke-static {v0, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 202
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_26

    .line 203
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_16} :catch_28

    const-wide/16 v5, 0x0

    move-object v3, p0

    move v9, p2

    .end local p2    # "priority":I
    .local v9, "priority":I
    :try_start_1a
    invoke-direct/range {v3 .. v9}, Landroid/media/SoundPool;->_load(Ljava/io/FileDescriptor;JJI)I

    move-result p2

    move v1, p2

    .line 204
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_22} :catch_23

    goto :goto_27

    .line 206
    .end local v0    # "f":Ljava/io/File;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_23
    move-exception v0

    move-object p2, v0

    goto :goto_2b

    .line 202
    .end local v9    # "priority":I
    .restart local v0    # "f":Ljava/io/File;
    .restart local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local p2    # "priority":I
    :cond_26
    move v9, p2

    .line 208
    .end local v0    # "f":Ljava/io/File;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local p2    # "priority":I
    .restart local v9    # "priority":I
    :goto_27
    goto :goto_43

    .line 206
    .end local v9    # "priority":I
    .restart local p2    # "priority":I
    :catch_28
    move-exception v0

    move v9, p2

    move-object p2, v0

    .line 207
    .restart local v9    # "priority":I
    .local p2, "e":Ljava/io/IOException;
    :goto_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error loading "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SoundPool"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .end local p2    # "e":Ljava/io/IOException;
    :goto_43
    return v1
.end method

.method public final native whitelist pause(I)V
.end method

.method public final whitelist play(IFFIIF)I
    .registers 18
    .param p1, "soundID"    # I
    .param p2, "leftVolume"    # F
    .param p3, "rightVolume"    # F
    .param p4, "priority"    # I
    .param p5, "loop"    # I
    .param p6, "rate"    # F

    .line 319
    const-wide/16 v1, 0x100

    :try_start_2
    const-string v0, "SoundPool.play"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 320
    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/media/SoundPool;->baseStart([I)V

    .line 321
    invoke-virtual {p0}, Landroid/media/SoundPool;->getPlayerIId()I

    move-result v10

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v3 .. v10}, Landroid/media/SoundPool;->_play(IFFIIFI)I

    move-result v0
    :try_end_1e
    .catchall {:try_start_2 .. :try_end_1e} :catchall_22

    .line 323
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 321
    return v0

    .line 323
    :catchall_22
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 324
    throw v0
.end method

.method greylist-max-o playerApplyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I
    .registers 4
    .param p1, "configuration"    # Landroid/media/VolumeShaper$Configuration;
    .param p2, "operation"    # Landroid/media/VolumeShaper$Operation;

    .line 407
    const/4 v0, -0x1

    return v0
.end method

.method greylist-max-o playerGetVolumeShaperState(I)Landroid/media/VolumeShaper$State;
    .registers 3
    .param p1, "id"    # I

    .line 412
    const/4 v0, 0x0

    return-object v0
.end method

.method greylist-max-o playerPause()V
    .registers 1

    .line 435
    return-void
.end method

.method greylist-max-o playerSetAuxEffectSendLevel(ZF)I
    .registers 4
    .param p1, "muting"    # Z
    .param p2, "level"    # F

    .line 424
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o playerSetVolume(ZFF)V
    .registers 4
    .param p1, "muting"    # Z
    .param p2, "leftVolume"    # F
    .param p3, "rightVolume"    # F

    .line 418
    invoke-direct {p0, p1}, Landroid/media/SoundPool;->_mute(Z)V

    .line 419
    return-void
.end method

.method greylist-max-o playerStart()V
    .registers 1

    .line 430
    return-void
.end method

.method greylist-max-o playerStop()V
    .registers 1

    .line 440
    return-void
.end method

.method public final whitelist release()V
    .registers 1

    .line 180
    invoke-virtual {p0}, Landroid/media/SoundPool;->baseRelease()V

    .line 181
    invoke-direct {p0}, Landroid/media/SoundPool;->native_release()V

    .line 182
    return-void
.end method

.method public final native whitelist resume(I)V
.end method

.method public final native whitelist setLoop(II)V
.end method

.method public whitelist setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/media/SoundPool$OnLoadCompleteListener;

    .line 504
    const/4 v0, 0x0

    if-nez p1, :cond_9

    .line 505
    iget-object v1, p0, Landroid/media/SoundPool;->mEventHandler:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 506
    return-void

    .line 510
    :cond_9
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    move-object v2, v1

    .local v2, "looper":Landroid/os/Looper;
    if-eqz v1, :cond_1b

    .line 511
    iget-object v0, p0, Landroid/media/SoundPool;->mEventHandler:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Landroid/media/SoundPool$EventHandler;

    invoke-direct {v1, p0, v2, p1}, Landroid/media/SoundPool$EventHandler;-><init>(Landroid/media/SoundPool;Landroid/os/Looper;Landroid/media/SoundPool$OnLoadCompleteListener;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_32

    .line 512
    :cond_1b
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    move-object v2, v1

    if-eqz v1, :cond_2d

    .line 513
    iget-object v0, p0, Landroid/media/SoundPool;->mEventHandler:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Landroid/media/SoundPool$EventHandler;

    invoke-direct {v1, p0, v2, p1}, Landroid/media/SoundPool$EventHandler;-><init>(Landroid/media/SoundPool;Landroid/os/Looper;Landroid/media/SoundPool$OnLoadCompleteListener;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_32

    .line 515
    :cond_2d
    iget-object v1, p0, Landroid/media/SoundPool;->mEventHandler:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 517
    :goto_32
    return-void
.end method

.method public final native whitelist setPriority(II)V
.end method

.method public final native whitelist setRate(IF)V
.end method

.method public greylist-max-o setVolume(IF)V
    .registers 3
    .param p1, "streamID"    # I
    .param p2, "volume"    # F

    .line 447
    invoke-virtual {p0, p1, p2, p2}, Landroid/media/SoundPool;->setVolume(IFF)V

    .line 448
    return-void
.end method

.method public final whitelist setVolume(IFF)V
    .registers 4
    .param p1, "streamID"    # I
    .param p2, "leftVolume"    # F
    .param p3, "rightVolume"    # F

    .line 400
    invoke-direct {p0, p1, p2, p3}, Landroid/media/SoundPool;->_setVolume(IFF)V

    .line 401
    return-void
.end method

.method public final native whitelist stop(I)V
.end method

.method public final native whitelist unload(I)Z
.end method
