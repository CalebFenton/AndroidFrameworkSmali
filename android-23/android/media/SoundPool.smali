.class public Landroid/media/SoundPool;
.super Ljava/lang/Object;
.source "SoundPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/SoundPool$OnLoadCompleteListener;,
        Landroid/media/SoundPool$EventHandler;,
        Landroid/media/SoundPool$Builder;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final SAMPLE_LOADED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SoundPool"


# instance fields
.field private final mAppOps:Lcom/android/internal/app/IAppOpsService;

.field private final mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

.field private final mAttributes:Landroid/media/AudioAttributes;

.field private mEventHandler:Landroid/media/SoundPool$EventHandler;

.field private mHasAppOpsPlayAudio:Z

.field private final mLock:Ljava/lang/Object;

.field private mNativeContext:J

.field private mOnLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    #@0
    sget-boolean v0, Landroid/media/SoundPool;->DEBUG:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/media/SoundPool;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/SoundPool;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/media/SoundPool;)Landroid/media/SoundPool$OnLoadCompleteListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/SoundPool;->mOnLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/media/SoundPool;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/media/SoundPool;->updateAppOpsPlayAudio()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 115
    const-string/jumbo v0, "soundpool"

    #@3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    #@6
    .line 123
    const-string/jumbo v0, "SoundPool"

    #@9
    const/4 v1, 0x3

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@d
    move-result v0

    #@e
    sput-boolean v0, Landroid/media/SoundPool;->DEBUG:Z

    #@10
    .line 114
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "maxStreams"    # I
    .param p2, "streamType"    # I
    .param p3, "srcQuality"    # I

    #@0
    .prologue
    .line 153
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    #@2
    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    #@5
    invoke-virtual {v0, p2}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    #@c
    move-result-object v0

    #@d
    .line 152
    invoke-direct {p0, p1, v0}, Landroid/media/SoundPool;-><init>(ILandroid/media/AudioAttributes;)V

    #@10
    .line 151
    return-void
.end method

.method private constructor <init>(ILandroid/media/AudioAttributes;)V
    .locals 7
    .param p1, "maxStreams"    # I
    .param p2, "attributes"    # Landroid/media/AudioAttributes;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 158
    new-instance v2, Ljava/lang/ref/WeakReference;

    #@6
    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@9
    invoke-direct {p0, v2, p1, p2}, Landroid/media/SoundPool;->native_setup(Ljava/lang/Object;ILjava/lang/Object;)I

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 159
    new-instance v2, Ljava/lang/RuntimeException;

    #@11
    const-string/jumbo v3, "Native setup failed"

    #@14
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@17
    throw v2

    #@18
    .line 161
    :cond_0
    new-instance v2, Ljava/lang/Object;

    #@1a
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    #@1d
    iput-object v2, p0, Landroid/media/SoundPool;->mLock:Ljava/lang/Object;

    #@1f
    .line 162
    iput-object p2, p0, Landroid/media/SoundPool;->mAttributes:Landroid/media/AudioAttributes;

    #@21
    .line 163
    const-string/jumbo v2, "appops"

    #@24
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@27
    move-result-object v0

    #@28
    .line 164
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    #@2b
    move-result-object v2

    #@2c
    iput-object v2, p0, Landroid/media/SoundPool;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    #@2e
    .line 166
    invoke-direct {p0}, Landroid/media/SoundPool;->updateAppOpsPlayAudio()V

    #@31
    .line 168
    new-instance v2, Landroid/media/SoundPool$1;

    #@33
    invoke-direct {v2, p0}, Landroid/media/SoundPool$1;-><init>(Landroid/media/SoundPool;)V

    #@36
    iput-object v2, p0, Landroid/media/SoundPool;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    #@38
    .line 178
    :try_start_0
    iget-object v2, p0, Landroid/media/SoundPool;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    #@3a
    .line 179
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    iget-object v4, p0, Landroid/media/SoundPool;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    #@40
    .line 178
    const/16 v5, 0x1c

    #@42
    invoke-interface {v2, v5, v3, v4}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@45
    .line 156
    :goto_0
    return-void

    #@46
    .line 180
    :catch_0
    move-exception v1

    #@47
    .line 181
    .local v1, "e":Landroid/os/RemoteException;
    iput-boolean v6, p0, Landroid/media/SoundPool;->mHasAppOpsPlayAudio:Z

    #@49
    goto :goto_0
.end method

.method synthetic constructor <init>(ILandroid/media/AudioAttributes;Landroid/media/SoundPool;)V
    .locals 0
    .param p1, "maxStreams"    # I
    .param p2, "attributes"    # Landroid/media/AudioAttributes;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/media/SoundPool;-><init>(ILandroid/media/AudioAttributes;)V

    #@3
    return-void
.end method

.method private final native _load(Ljava/io/FileDescriptor;JJI)I
.end method

.method private final native _play(IFFIIF)I
.end method

.method private final native _setVolume(IFF)V
.end method

.method private isRestricted()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 496
    iget-object v1, p0, Landroid/media/SoundPool;->mAttributes:Landroid/media/AudioAttributes;

    #@3
    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getAllFlags()I

    #@6
    move-result v1

    #@7
    and-int/lit8 v1, v1, 0x40

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 497
    return v0

    #@c
    .line 499
    :cond_0
    iget-boolean v1, p0, Landroid/media/SoundPool;->mHasAppOpsPlayAudio:Z

    #@e
    if-eqz v1, :cond_1

    #@10
    :goto_0
    return v0

    #@11
    :cond_1
    const/4 v0, 0x1

    #@12
    goto :goto_0
.end method

.method private final native native_release()V
.end method

.method private final native native_setup(Ljava/lang/Object;ILjava/lang/Object;)I
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .param p0, "ref"    # Ljava/lang/Object;
    .param p1, "msg"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 526
    check-cast p0, Ljava/lang/ref/WeakReference;

    #@2
    .end local p0    # "ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/media/SoundPool;

    #@8
    .line 527
    .local v1, "soundPool":Landroid/media/SoundPool;
    if-nez v1, :cond_0

    #@a
    .line 528
    return-void

    #@b
    .line 530
    :cond_0
    iget-object v2, v1, Landroid/media/SoundPool;->mEventHandler:Landroid/media/SoundPool$EventHandler;

    #@d
    if-eqz v2, :cond_1

    #@f
    .line 531
    iget-object v2, v1, Landroid/media/SoundPool;->mEventHandler:Landroid/media/SoundPool$EventHandler;

    #@11
    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/media/SoundPool$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@14
    move-result-object v0

    #@15
    .line 532
    .local v0, "m":Landroid/os/Message;
    iget-object v2, v1, Landroid/media/SoundPool;->mEventHandler:Landroid/media/SoundPool$EventHandler;

    #@17
    invoke-virtual {v2, v0}, Landroid/media/SoundPool$EventHandler;->sendMessage(Landroid/os/Message;)Z

    #@1a
    .line 525
    .end local v0    # "m":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method private updateAppOpsPlayAudio()V
    .locals 8

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 504
    :try_start_0
    iget-object v2, p0, Landroid/media/SoundPool;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    #@3
    .line 505
    iget-object v4, p0, Landroid/media/SoundPool;->mAttributes:Landroid/media/AudioAttributes;

    #@5
    invoke-virtual {v4}, Landroid/media/AudioAttributes;->getUsage()I

    #@8
    move-result v4

    #@9
    .line 506
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@c
    move-result v5

    #@d
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    #@10
    move-result-object v6

    #@11
    .line 504
    const/16 v7, 0x1c

    #@13
    invoke-interface {v2, v7, v4, v5, v6}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I

    #@16
    move-result v1

    #@17
    .line 507
    .local v1, "mode":I
    if-nez v1, :cond_0

    #@19
    const/4 v2, 0x1

    #@1a
    :goto_0
    iput-boolean v2, p0, Landroid/media/SoundPool;->mHasAppOpsPlayAudio:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 502
    .end local v1    # "mode":I
    :goto_1
    return-void

    #@1d
    .restart local v1    # "mode":I
    :cond_0
    move v2, v3

    #@1e
    .line 507
    goto :goto_0

    #@1f
    .line 508
    .end local v1    # "mode":I
    :catch_0
    move-exception v0

    #@20
    .line 509
    .local v0, "e":Landroid/os/RemoteException;
    iput-boolean v3, p0, Landroid/media/SoundPool;->mHasAppOpsPlayAudio:Z

    #@22
    goto :goto_1
.end method


# virtual methods
.method public final native autoPause()V
.end method

.method public final native autoResume()V
.end method

.method protected finalize()V
    .locals 0

    #@0
    .prologue
    .line 203
    invoke-virtual {p0}, Landroid/media/SoundPool;->release()V

    #@3
    return-void
.end method

.method public load(Landroid/content/Context;II)I
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "priority"    # I

    #@0
    .prologue
    .line 245
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    #@7
    move-result-object v7

    #@8
    .line 246
    .local v7, "afd":Landroid/content/res/AssetFileDescriptor;
    const/4 v9, 0x0

    #@9
    .line 247
    .local v9, "id":I
    if-eqz v7, :cond_0

    #@b
    .line 248
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    #@12
    move-result-wide v2

    #@13
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    #@16
    move-result-wide v4

    #@17
    move-object v0, p0

    #@18
    move v6, p3

    #@19
    invoke-direct/range {v0 .. v6}, Landroid/media/SoundPool;->_load(Ljava/io/FileDescriptor;JJI)I

    #@1c
    move-result v9

    #@1d
    .line 250
    :try_start_0
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    .line 255
    :cond_0
    :goto_0
    return v9

    #@21
    .line 251
    :catch_0
    move-exception v8

    #@22
    .local v8, "ex":Ljava/io/IOException;
    goto :goto_0
.end method

.method public load(Landroid/content/res/AssetFileDescriptor;I)I
    .locals 7
    .param p1, "afd"    # Landroid/content/res/AssetFileDescriptor;
    .param p2, "priority"    # I

    #@0
    .prologue
    .line 267
    if-eqz p1, :cond_1

    #@2
    .line 268
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    #@5
    move-result-wide v4

    #@6
    .line 269
    .local v4, "len":J
    const-wide/16 v0, 0x0

    #@8
    cmp-long v0, v4, v0

    #@a
    if-gez v0, :cond_0

    #@c
    .line 270
    new-instance v0, Landroid/util/AndroidRuntimeException;

    #@e
    const-string/jumbo v1, "no length for fd"

    #@11
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 272
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    #@1c
    move-result-wide v2

    #@1d
    move-object v0, p0

    #@1e
    move v6, p2

    #@1f
    invoke-direct/range {v0 .. v6}, Landroid/media/SoundPool;->_load(Ljava/io/FileDescriptor;JJI)I

    #@22
    move-result v0

    #@23
    return v0

    #@24
    .line 274
    .end local v4    # "len":J
    :cond_1
    const/4 v0, 0x0

    #@25
    return v0
.end method

.method public load(Ljava/io/FileDescriptor;JJI)I
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "offset"    # J
    .param p4, "length"    # J
    .param p6, "priority"    # I

    #@0
    .prologue
    .line 293
    invoke-direct/range {p0 .. p6}, Landroid/media/SoundPool;->_load(Ljava/io/FileDescriptor;JJI)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public load(Ljava/lang/String;I)I
    .locals 11
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "priority"    # I

    #@0
    .prologue
    .line 214
    const/4 v10, 0x0

    #@1
    .line 216
    .local v10, "id":I
    :try_start_0
    new-instance v8, Ljava/io/File;

    #@3
    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@6
    .line 218
    .local v8, "f":Ljava/io/File;
    const/high16 v0, 0x10000000

    #@8
    .line 217
    invoke-static {v8, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    #@b
    move-result-object v9

    #@c
    .line 219
    .local v9, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v9, :cond_0

    #@e
    .line 220
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@11
    move-result-object v1

    #@12
    const-wide/16 v2, 0x0

    #@14
    invoke-virtual {v8}, Ljava/io/File;->length()J

    #@17
    move-result-wide v4

    #@18
    move-object v0, p0

    #@19
    move v6, p2

    #@1a
    invoke-direct/range {v0 .. v6}, Landroid/media/SoundPool;->_load(Ljava/io/FileDescriptor;JJI)I

    #@1d
    move-result v10

    #@1e
    .line 221
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    .line 226
    .end local v8    # "f":Ljava/io/File;
    .end local v9    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_0
    :goto_0
    return v10

    #@22
    .line 223
    :catch_0
    move-exception v7

    #@23
    .line 224
    .local v7, "e":Ljava/io/IOException;
    const-string/jumbo v0, "SoundPool"

    #@26
    new-instance v1, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v2, "error loading "

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3d
    goto :goto_0
.end method

.method public final native pause(I)V
.end method

.method public final play(IFFIIF)I
    .locals 1
    .param p1, "soundID"    # I
    .param p2, "leftVolume"    # F
    .param p3, "rightVolume"    # F
    .param p4, "priority"    # I
    .param p5, "loop"    # I
    .param p6, "rate"    # F

    #@0
    .prologue
    .line 334
    invoke-direct {p0}, Landroid/media/SoundPool;->isRestricted()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 335
    const/4 p3, 0x0

    #@7
    const/4 p2, 0x0

    #@8
    .line 337
    :cond_0
    invoke-direct/range {p0 .. p6}, Landroid/media/SoundPool;->_play(IFFIIF)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public final release()V
    .locals 3

    #@0
    .prologue
    .line 194
    :try_start_0
    iget-object v1, p0, Landroid/media/SoundPool;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    #@2
    iget-object v2, p0, Landroid/media/SoundPool;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    #@4
    invoke-interface {v1, v2}, Lcom/android/internal/app/IAppOpsService;->stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 198
    :goto_0
    invoke-direct {p0}, Landroid/media/SoundPool;->native_release()V

    #@a
    .line 192
    return-void

    #@b
    .line 195
    :catch_0
    move-exception v0

    #@c
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public final native resume(I)V
.end method

.method public final native setLoop(II)V
.end method

.method public setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/media/SoundPool$OnLoadCompleteListener;

    #@0
    .prologue
    .line 477
    iget-object v2, p0, Landroid/media/SoundPool;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 478
    if-eqz p1, :cond_2

    #@5
    .line 481
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@8
    move-result-object v0

    #@9
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    #@b
    .line 482
    new-instance v1, Landroid/media/SoundPool$EventHandler;

    #@d
    invoke-direct {v1, p0, v0}, Landroid/media/SoundPool$EventHandler;-><init>(Landroid/media/SoundPool;Landroid/os/Looper;)V

    #@10
    iput-object v1, p0, Landroid/media/SoundPool;->mEventHandler:Landroid/media/SoundPool$EventHandler;

    #@12
    .line 491
    .end local v0    # "looper":Landroid/os/Looper;
    :goto_0
    iput-object p1, p0, Landroid/media/SoundPool;->mOnLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    monitor-exit v2

    #@15
    .line 476
    return-void

    #@16
    .line 483
    .restart local v0    # "looper":Landroid/os/Looper;
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@19
    move-result-object v0

    #@1a
    if-eqz v0, :cond_1

    #@1c
    .line 484
    new-instance v1, Landroid/media/SoundPool$EventHandler;

    #@1e
    invoke-direct {v1, p0, v0}, Landroid/media/SoundPool$EventHandler;-><init>(Landroid/media/SoundPool;Landroid/os/Looper;)V

    #@21
    iput-object v1, p0, Landroid/media/SoundPool;->mEventHandler:Landroid/media/SoundPool$EventHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    goto :goto_0

    #@24
    .line 477
    .end local v0    # "looper":Landroid/os/Looper;
    :catchall_0
    move-exception v1

    #@25
    monitor-exit v2

    #@26
    throw v1

    #@27
    .line 486
    .restart local v0    # "looper":Landroid/os/Looper;
    :cond_1
    const/4 v1, 0x0

    #@28
    :try_start_2
    iput-object v1, p0, Landroid/media/SoundPool;->mEventHandler:Landroid/media/SoundPool$EventHandler;

    #@2a
    goto :goto_0

    #@2b
    .line 489
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_2
    const/4 v1, 0x0

    #@2c
    iput-object v1, p0, Landroid/media/SoundPool;->mEventHandler:Landroid/media/SoundPool$EventHandler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2e
    goto :goto_0
.end method

.method public final native setPriority(II)V
.end method

.method public final native setRate(IF)V
.end method

.method public setVolume(IF)V
    .locals 0
    .param p1, "streamID"    # I
    .param p2, "volume"    # F

    #@0
    .prologue
    .line 420
    invoke-virtual {p0, p1, p2, p2}, Landroid/media/SoundPool;->setVolume(IFF)V

    #@3
    .line 419
    return-void
.end method

.method public final setVolume(IFF)V
    .locals 1
    .param p1, "streamID"    # I
    .param p2, "leftVolume"    # F
    .param p3, "rightVolume"    # F

    #@0
    .prologue
    .line 409
    invoke-direct {p0}, Landroid/media/SoundPool;->isRestricted()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 410
    return-void

    #@7
    .line 412
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/media/SoundPool;->_setVolume(IFF)V

    #@a
    .line 408
    return-void
.end method

.method public final native stop(I)V
.end method

.method public final native unload(I)Z
.end method
