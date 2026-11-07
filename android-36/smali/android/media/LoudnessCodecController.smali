.class public Landroid/media/LoudnessCodecController;
.super Ljava/lang/Object;
.source "LoudnessCodecController.java"

# interfaces
.implements Landroid/media/permission/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "LoudnessCodecController"


# instance fields
.field private final blacklist mControllerLock:Ljava/lang/Object;

.field private final blacklist mLcDispatcher:Landroid/media/LoudnessCodecDispatcher;

.field private final blacklist mMediaCodecs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/media/LoudnessCodecInfo;",
            "Ljava/util/Set<",
            "Landroid/media/MediaCodec;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mSessionId:I


# direct methods
.method private constructor blacklist <init>(Landroid/media/LoudnessCodecDispatcher;I)V
    .registers 4
    .param p1, "lcDispatcher"    # Landroid/media/LoudnessCodecDispatcher;
    .param p2, "sessionId"    # I

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/LoudnessCodecController;->mControllerLock:Ljava/lang/Object;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/LoudnessCodecController;->mMediaCodecs:Ljava/util/HashMap;

    .line 186
    const-string v0, "Dispatcher cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/LoudnessCodecDispatcher;

    iput-object v0, p0, Landroid/media/LoudnessCodecController;->mLcDispatcher:Landroid/media/LoudnessCodecDispatcher;

    .line 187
    iput p2, p0, Landroid/media/LoudnessCodecController;->mSessionId:I

    .line 188
    return-void
.end method

.method public static whitelist create(I)Landroid/media/LoudnessCodecController;
    .registers 5
    .param p0, "sessionId"    # I

    .line 112
    new-instance v0, Landroid/media/LoudnessCodecDispatcher;

    .line 113
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/LoudnessCodecDispatcher;-><init>(Landroid/media/IAudioService;)V

    .line 114
    .local v0, "dispatcher":Landroid/media/LoudnessCodecDispatcher;
    new-instance v1, Landroid/media/LoudnessCodecController;

    invoke-direct {v1, v0, p0}, Landroid/media/LoudnessCodecController;-><init>(Landroid/media/LoudnessCodecDispatcher;I)V

    .line 116
    .local v1, "controller":Landroid/media/LoudnessCodecController;
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Landroid/media/LoudnessCodecController$1;

    invoke-direct {v3}, Landroid/media/LoudnessCodecController$1;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/LoudnessCodecDispatcher;->addLoudnessCodecListener(Landroid/media/LoudnessCodecController;Ljava/util/concurrent/Executor;Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;)V

    .line 118
    invoke-virtual {v0, p0}, Landroid/media/LoudnessCodecDispatcher;->startLoudnessCodecUpdates(I)V

    .line 119
    return-object v1
.end method

.method public static whitelist create(ILjava/util/concurrent/Executor;Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;)Landroid/media/LoudnessCodecController;
    .registers 5
    .param p0, "sessionId"    # I
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;

    .line 141
    const-string v0, "Executor cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 142
    const-string v0, "OnLoudnessCodecUpdateListener cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 144
    new-instance v0, Landroid/media/LoudnessCodecDispatcher;

    .line 145
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/LoudnessCodecDispatcher;-><init>(Landroid/media/IAudioService;)V

    .line 146
    .local v0, "dispatcher":Landroid/media/LoudnessCodecDispatcher;
    new-instance v1, Landroid/media/LoudnessCodecController;

    invoke-direct {v1, v0, p0}, Landroid/media/LoudnessCodecController;-><init>(Landroid/media/LoudnessCodecDispatcher;I)V

    .line 148
    .local v1, "controller":Landroid/media/LoudnessCodecController;
    invoke-virtual {v0, v1, p1, p2}, Landroid/media/LoudnessCodecDispatcher;->addLoudnessCodecListener(Landroid/media/LoudnessCodecController;Ljava/util/concurrent/Executor;Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;)V

    .line 149
    invoke-virtual {v0, p0}, Landroid/media/LoudnessCodecDispatcher;->startLoudnessCodecUpdates(I)V

    .line 150
    return-object v1
.end method

.method public static blacklist createForTesting(ILjava/util/concurrent/Executor;Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;Landroid/media/IAudioService;)Landroid/media/LoudnessCodecController;
    .registers 6
    .param p0, "sessionId"    # I
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;
    .param p3, "service"    # Landroid/media/IAudioService;

    .line 172
    const-string v0, "IAudioService cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 173
    const-string v0, "Executor cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 174
    const-string v0, "OnLoudnessCodecUpdateListener cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 176
    new-instance v0, Landroid/media/LoudnessCodecDispatcher;

    invoke-direct {v0, p3}, Landroid/media/LoudnessCodecDispatcher;-><init>(Landroid/media/IAudioService;)V

    .line 177
    .local v0, "dispatcher":Landroid/media/LoudnessCodecDispatcher;
    new-instance v1, Landroid/media/LoudnessCodecController;

    invoke-direct {v1, v0, p0}, Landroid/media/LoudnessCodecController;-><init>(Landroid/media/LoudnessCodecDispatcher;I)V

    .line 179
    .local v1, "controller":Landroid/media/LoudnessCodecController;
    invoke-virtual {v0, v1, p1, p2}, Landroid/media/LoudnessCodecDispatcher;->addLoudnessCodecListener(Landroid/media/LoudnessCodecController;Ljava/util/concurrent/Executor;Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;)V

    .line 180
    invoke-virtual {v0, p0}, Landroid/media/LoudnessCodecDispatcher;->startLoudnessCodecUpdates(I)V

    .line 181
    return-object v1
.end method

.method private static blacklist getCodecInfo(Landroid/media/MediaCodec;)Landroid/media/LoudnessCodecInfo;
    .registers 12
    .param p0, "mediaCodec"    # Landroid/media/MediaCodec;

    .line 349
    const-string v0, "channel-count"

    new-instance v1, Landroid/media/LoudnessCodecInfo;

    invoke-direct {v1}, Landroid/media/LoudnessCodecInfo;-><init>()V

    .line 350
    .local v1, "lci":Landroid/media/LoudnessCodecInfo;
    invoke-virtual {p0}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v2

    .line 351
    .local v2, "codecInfo":Landroid/media/MediaCodecInfo;
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "LoudnessCodecController"

    if-eqz v3, :cond_1a

    .line 353
    const-string v0, "MediaCodec used for encoding does not support loudness annotation"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    return-object v4

    .line 358
    :cond_1a
    :try_start_1a
    invoke-virtual {p0}, Landroid/media/MediaCodec;->getInputFormat()Landroid/media/MediaFormat;

    move-result-object v3

    .line 359
    .local v3, "inputFormat":Landroid/media/MediaFormat;
    const-string v6, "mime"

    invoke-virtual {v3, v6}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 360
    .local v6, "mimeType":Ljava/lang/String;
    const-string v7, "audio/mp4a-latm"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7
    :try_end_2a
    .catch Ljava/lang/IllegalStateException; {:try_start_1a .. :try_end_2a} :catch_69

    if-eqz v7, :cond_63

    .line 363
    const/4 v7, -0x1

    .line 364
    .local v7, "aacProfile":I
    const/4 v8, -0x1

    .line 366
    .local v8, "profile":I
    :try_start_2e
    const-string v9, "aac-profile"

    invoke-virtual {v3, v9}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v9
    :try_end_34
    .catch Ljava/lang/NullPointerException; {:try_start_2e .. :try_end_34} :catch_36
    .catch Ljava/lang/IllegalStateException; {:try_start_2e .. :try_end_34} :catch_69

    move v7, v9

    .line 369
    goto :goto_37

    .line 367
    :catch_36
    move-exception v9

    .line 371
    :goto_37
    :try_start_37
    const-string v9, "profile"

    invoke-virtual {v3, v9}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v9
    :try_end_3d
    .catch Ljava/lang/NullPointerException; {:try_start_37 .. :try_end_3d} :catch_3f
    .catch Ljava/lang/IllegalStateException; {:try_start_37 .. :try_end_3d} :catch_69

    move v8, v9

    .line 374
    goto :goto_40

    .line 372
    :catch_3f
    move-exception v9

    .line 375
    :goto_40
    const/4 v9, 0x1

    const/16 v10, 0x2a

    if-eq v7, v10, :cond_4b

    if-ne v8, v10, :cond_48

    goto :goto_4b

    .line 379
    :cond_48
    :try_start_48
    iput v9, v1, Landroid/media/LoudnessCodecInfo;->metadataType:I

    goto :goto_4e

    .line 377
    :cond_4b
    :goto_4b
    const/4 v10, 0x2

    iput v10, v1, Landroid/media/LoudnessCodecInfo;->metadataType:I

    .line 381
    .end local v7    # "aacProfile":I
    .end local v8    # "profile":I
    :goto_4e
    nop

    .line 386
    invoke-virtual {p0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v7

    .line 387
    .local v7, "outputFormat":Landroid/media/MediaFormat;
    invoke-virtual {v7, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v8

    .line 388
    invoke-virtual {v3, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    if-ge v8, v0, :cond_5e

    goto :goto_5f

    :cond_5e
    const/4 v9, 0x0

    :goto_5f
    iput-boolean v9, v1, Landroid/media/LoudnessCodecInfo;->isDownmixing:Z

    .line 392
    .end local v3    # "inputFormat":Landroid/media/MediaFormat;
    .end local v6    # "mimeType":Ljava/lang/String;
    .end local v7    # "outputFormat":Landroid/media/MediaFormat;
    nop

    .line 394
    return-object v1

    .line 382
    .restart local v3    # "inputFormat":Landroid/media/MediaFormat;
    .restart local v6    # "mimeType":Ljava/lang/String;
    :cond_63
    const-string v0, "MediaCodec mime type not supported for loudness annotation"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catch Ljava/lang/IllegalStateException; {:try_start_48 .. :try_end_68} :catch_69

    .line 383
    return-object v4

    .line 389
    .end local v3    # "inputFormat":Landroid/media/MediaFormat;
    .end local v6    # "mimeType":Ljava/lang/String;
    :catch_69
    move-exception v0

    .line 390
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v3, "MediaCodec is not configured"

    invoke-static {v5, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 391
    return-object v4
.end method

.method static synthetic blacklist lambda$addMediaCodec$0(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/media/MediaCodec;Landroid/media/LoudnessCodecInfo;Ljava/util/Set;)Ljava/util/Set;
    .registers 5
    .param p0, "containsCodec"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p1, "mc"    # Landroid/media/MediaCodec;
    .param p2, "info"    # Landroid/media/LoudnessCodecInfo;
    .param p3, "codecSet"    # Ljava/util/Set;

    .line 218
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 219
    return-object p3
.end method

.method static synthetic blacklist lambda$removeMediaCodec$1(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/media/MediaCodec;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/media/LoudnessCodecInfo;Ljava/util/Set;)Ljava/util/Set;
    .registers 6
    .param p0, "removedMc"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p1, "mediaCodec"    # Landroid/media/MediaCodec;
    .param p2, "removeInfo"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p3, "format"    # Landroid/media/LoudnessCodecInfo;
    .param p4, "mcs"    # Ljava/util/Set;

    .line 264
    invoke-interface {p4, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 265
    invoke-interface {p4}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 267
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 268
    const/4 v0, 0x0

    return-object v0

    .line 270
    :cond_13
    return-object p4
.end method


# virtual methods
.method public whitelist addMediaCodec(Landroid/media/MediaCodec;)Z
    .registers 10
    .param p1, "mediaCodec"    # Landroid/media/MediaCodec;

    .line 207
    const-string v0, "MediaCodec for addMediaCodec cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCodec;

    .line 209
    .local v0, "mc":Landroid/media/MediaCodec;
    invoke-static {v0}, Landroid/media/LoudnessCodecController;->getCodecInfo(Landroid/media/MediaCodec;)Landroid/media/LoudnessCodecInfo;

    move-result-object v1

    .line 211
    .local v1, "mcInfo":Landroid/media/LoudnessCodecInfo;
    const/4 v2, 0x0

    if-nez v1, :cond_17

    .line 212
    const-string v3, "LoudnessCodecController"

    const-string v4, "Could not extract codec loudness information"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return v2

    .line 215
    :cond_17
    iget-object v3, p0, Landroid/media/LoudnessCodecController;->mControllerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 216
    :try_start_1a
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 217
    .local v4, "containsCodec":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v2, p0, Landroid/media/LoudnessCodecController;->mMediaCodecs:Ljava/util/HashMap;

    new-instance v5, Landroid/media/LoudnessCodecController$$ExternalSyntheticLambda1;

    invoke-direct {v5, v4, v0}, Landroid/media/LoudnessCodecController$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/media/MediaCodec;)V

    invoke-virtual {v2, v1, v5}, Ljava/util/HashMap;->computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 221
    .local v2, "newSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/media/MediaCodec;>;"
    if-nez v2, :cond_3c

    .line 222
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    move-object v2, v5

    .line 223
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 224
    iget-object v5, p0, Landroid/media/LoudnessCodecController;->mMediaCodecs:Ljava/util/HashMap;

    invoke-virtual {v5, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    :cond_3c
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_50

    .line 230
    .end local v2    # "newSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/media/MediaCodec;>;"
    .end local v4    # "containsCodec":Ljava/util/concurrent/atomic/AtomicBoolean;
    monitor-exit v3
    :try_end_43
    .catchall {:try_start_1a .. :try_end_43} :catchall_69

    .line 232
    iget-object v2, p0, Landroid/media/LoudnessCodecController;->mLcDispatcher:Landroid/media/LoudnessCodecDispatcher;

    iget v3, p0, Landroid/media/LoudnessCodecController;->mSessionId:I

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v2, v3, v4, v1}, Landroid/media/LoudnessCodecDispatcher;->addLoudnessCodecInfo(IILandroid/media/LoudnessCodecInfo;)V

    .line 235
    const/4 v2, 0x1

    return v2

    .line 227
    .restart local v2    # "newSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/media/MediaCodec;>;"
    .restart local v4    # "containsCodec":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_50
    :try_start_50
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Loudness controller already added "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "mc":Landroid/media/MediaCodec;
    .end local v1    # "mcInfo":Landroid/media/LoudnessCodecInfo;
    .end local p0    # "this":Landroid/media/LoudnessCodecController;
    .end local p1    # "mediaCodec":Landroid/media/MediaCodec;
    throw v5

    .line 230
    .end local v2    # "newSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/media/MediaCodec;>;"
    .end local v4    # "containsCodec":Ljava/util/concurrent/atomic/AtomicBoolean;
    .restart local v0    # "mc":Landroid/media/MediaCodec;
    .restart local v1    # "mcInfo":Landroid/media/LoudnessCodecInfo;
    .restart local p0    # "this":Landroid/media/LoudnessCodecController;
    .restart local p1    # "mediaCodec":Landroid/media/MediaCodec;
    :catchall_69
    move-exception v2

    monitor-exit v3
    :try_end_6b
    .catchall {:try_start_50 .. :try_end_6b} :catchall_69

    throw v2
.end method

.method public whitelist test-api close()V
    .registers 3

    .line 326
    iget-object v0, p0, Landroid/media/LoudnessCodecController;->mControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 327
    :try_start_3
    iget-object v1, p0, Landroid/media/LoudnessCodecController;->mMediaCodecs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 328
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_11

    .line 329
    iget-object v0, p0, Landroid/media/LoudnessCodecController;->mLcDispatcher:Landroid/media/LoudnessCodecDispatcher;

    iget v1, p0, Landroid/media/LoudnessCodecController;->mSessionId:I

    invoke-virtual {v0, v1}, Landroid/media/LoudnessCodecDispatcher;->stopLoudnessCodecUpdates(I)V

    .line 330
    return-void

    .line 328
    :catchall_11
    move-exception v1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public whitelist getLoudnessCodecParams(Landroid/media/MediaCodec;)Landroid/os/Bundle;
    .registers 7
    .param p1, "mediaCodec"    # Landroid/media/MediaCodec;

    .line 302
    const-string v0, "MediaCodec cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 304
    invoke-static {p1}, Landroid/media/LoudnessCodecController;->getCodecInfo(Landroid/media/MediaCodec;)Landroid/media/LoudnessCodecInfo;

    move-result-object v0

    .line 305
    .local v0, "codecInfo":Landroid/media/LoudnessCodecInfo;
    if-eqz v0, :cond_31

    .line 309
    iget-object v1, p0, Landroid/media/LoudnessCodecController;->mControllerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 310
    :try_start_e
    iget-object v2, p0, Landroid/media/LoudnessCodecController;->mMediaCodecs:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 311
    .local v2, "codecs":Ljava/util/Set;, "Ljava/util/Set<Landroid/media/MediaCodec;>;"
    if-eqz v2, :cond_26

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 315
    .end local v2    # "codecs":Ljava/util/Set;, "Ljava/util/Set<Landroid/media/MediaCodec;>;"
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_e .. :try_end_1f} :catchall_2e

    .line 317
    iget-object v1, p0, Landroid/media/LoudnessCodecController;->mLcDispatcher:Landroid/media/LoudnessCodecDispatcher;

    invoke-virtual {v1, v0}, Landroid/media/LoudnessCodecDispatcher;->getLoudnessCodecParams(Landroid/media/LoudnessCodecInfo;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    .line 312
    .restart local v2    # "codecs":Ljava/util/Set;, "Ljava/util/Set<Landroid/media/MediaCodec;>;"
    :cond_26
    :try_start_26
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "MediaCodec was not added for loudness annotation"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "codecInfo":Landroid/media/LoudnessCodecInfo;
    .end local p0    # "this":Landroid/media/LoudnessCodecController;
    .end local p1    # "mediaCodec":Landroid/media/MediaCodec;
    throw v3

    .line 315
    .end local v2    # "codecs":Ljava/util/Set;, "Ljava/util/Set<Landroid/media/MediaCodec;>;"
    .restart local v0    # "codecInfo":Landroid/media/LoudnessCodecInfo;
    .restart local p0    # "this":Landroid/media/LoudnessCodecController;
    .restart local p1    # "mediaCodec":Landroid/media/MediaCodec;
    :catchall_2e
    move-exception v2

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_2e

    throw v2

    .line 306
    :cond_31
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "MediaCodec does not have valid codec information"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method blacklist getSessionId()I
    .registers 2

    .line 334
    iget v0, p0, Landroid/media/LoudnessCodecController;->mSessionId:I

    return v0
.end method

.method blacklist mediaCodecsConsume(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/Map$Entry<",
            "Landroid/media/LoudnessCodecInfo;",
            "Ljava/util/Set<",
            "Landroid/media/MediaCodec;",
            ">;>;>;)V"
        }
    .end annotation

    .line 340
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/Map$Entry<Landroid/media/LoudnessCodecInfo;Ljava/util/Set<Landroid/media/MediaCodec;>;>;>;"
    iget-object v0, p0, Landroid/media/LoudnessCodecController;->mControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 341
    :try_start_3
    iget-object v1, p0, Landroid/media/LoudnessCodecController;->mMediaCodecs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 342
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/media/LoudnessCodecInfo;Ljava/util/Set<Landroid/media/MediaCodec;>;>;"
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 343
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/media/LoudnessCodecInfo;Ljava/util/Set<Landroid/media/MediaCodec;>;>;"
    goto :goto_d

    .line 344
    :cond_1d
    monitor-exit v0

    .line 345
    return-void

    .line 344
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public whitelist removeMediaCodec(Landroid/media/MediaCodec;)V
    .registers 9
    .param p1, "mediaCodec"    # Landroid/media/MediaCodec;

    .line 253
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 254
    .local v0, "removedMc":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 256
    .local v2, "removeInfo":Ljava/util/concurrent/atomic/AtomicBoolean;
    const-string v1, "MediaCodec for removeMediaCodec cannot be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaCodec;

    invoke-static {v1}, Landroid/media/LoudnessCodecController;->getCodecInfo(Landroid/media/MediaCodec;)Landroid/media/LoudnessCodecInfo;

    move-result-object v1

    .line 259
    .local v1, "mcInfo":Landroid/media/LoudnessCodecInfo;
    if-eqz v1, :cond_57

    .line 262
    iget-object v3, p0, Landroid/media/LoudnessCodecController;->mControllerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 263
    :try_start_1c
    iget-object v4, p0, Landroid/media/LoudnessCodecController;->mMediaCodecs:Ljava/util/HashMap;

    new-instance v5, Landroid/media/LoudnessCodecController$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0, p1, v2}, Landroid/media/LoudnessCodecController$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/media/MediaCodec;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v4, v1, v5}, Ljava/util/HashMap;->computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    .line 272
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 276
    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_1c .. :try_end_2d} :catchall_54

    .line 278
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 279
    iget-object v3, p0, Landroid/media/LoudnessCodecController;->mLcDispatcher:Landroid/media/LoudnessCodecDispatcher;

    iget v4, p0, Landroid/media/LoudnessCodecController;->mSessionId:I

    invoke-virtual {v3, v4, v1}, Landroid/media/LoudnessCodecDispatcher;->removeLoudnessCodecInfo(ILandroid/media/LoudnessCodecInfo;)V

    .line 281
    :cond_3a
    return-void

    .line 273
    :cond_3b
    :try_start_3b
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loudness controller does not contain "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "removedMc":Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local v1    # "mcInfo":Landroid/media/LoudnessCodecInfo;
    .end local v2    # "removeInfo":Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local p0    # "this":Landroid/media/LoudnessCodecController;
    .end local p1    # "mediaCodec":Landroid/media/MediaCodec;
    throw v4

    .line 276
    .restart local v0    # "removedMc":Ljava/util/concurrent/atomic/AtomicBoolean;
    .restart local v1    # "mcInfo":Landroid/media/LoudnessCodecInfo;
    .restart local v2    # "removeInfo":Ljava/util/concurrent/atomic/AtomicBoolean;
    .restart local p0    # "this":Landroid/media/LoudnessCodecController;
    .restart local p1    # "mediaCodec":Landroid/media/MediaCodec;
    :catchall_54
    move-exception v4

    monitor-exit v3
    :try_end_56
    .catchall {:try_start_3b .. :try_end_56} :catchall_54

    throw v4

    .line 260
    :cond_57
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Could not extract codec loudness information"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
