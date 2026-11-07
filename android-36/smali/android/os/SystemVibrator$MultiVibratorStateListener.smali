.class public Landroid/os/SystemVibrator$MultiVibratorStateListener;
.super Ljava/lang/Object;
.source "SystemVibrator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemVibrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiVibratorStateListener"
.end annotation


# instance fields
.field private final blacklist mDelegate:Landroid/os/Vibrator$OnVibratorStateChangedListener;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mInitializedMask:I

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mVibratingMask:I

.field private final blacklist mVibratorListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/SystemVibrator$SingleVibratorStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$K2An7Yb63Nm4Tfp2PtkYXTEgdnY(Landroid/os/SystemVibrator$MultiVibratorStateListener;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/os/SystemVibrator$MultiVibratorStateListener;->lambda$onVibrating$0(IZ)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/os/Vibrator$OnVibratorStateChangedListener;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/os/Vibrator$OnVibratorStateChangedListener;

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mLock:Ljava/lang/Object;

    .line 354
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mVibratorListeners:Landroid/util/SparseArray;

    .line 365
    iput-object p1, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mExecutor:Ljava/util/concurrent/Executor;

    .line 366
    iput-object p2, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mDelegate:Landroid/os/Vibrator$OnVibratorStateChangedListener;

    .line 367
    return-void
.end method

.method private synthetic blacklist lambda$onVibrating$0(IZ)V
    .registers 14
    .param p1, "vibratorIdx"    # I
    .param p2, "vibrating"    # Z

    .line 417
    iget-object v0, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 419
    :try_start_3
    iget-object v1, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mVibratorListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x1

    shl-int v1, v2, v1

    sub-int/2addr v1, v2

    .line 422
    .local v1, "allInitializedMask":I
    iget v3, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mVibratingMask:I

    const/4 v4, 0x0

    if-eqz v3, :cond_14

    move v3, v2

    goto :goto_15

    :cond_14
    move v3, v4

    .line 423
    .local v3, "previousIsAnyVibrating":Z
    :goto_15
    iget v5, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mInitializedMask:I

    if-ne v5, v1, :cond_1b

    move v5, v2

    goto :goto_1c

    :cond_1b
    move v5, v4

    .line 426
    .local v5, "previousAreAllInitialized":Z
    :goto_1c
    shl-int v6, v2, p1

    .line 427
    .local v6, "vibratorMask":I
    iget v7, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mInitializedMask:I

    or-int/2addr v7, v6

    iput v7, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mInitializedMask:I

    .line 430
    iget v7, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mVibratingMask:I

    and-int/2addr v7, v6

    if-eqz v7, :cond_2a

    move v7, v2

    goto :goto_2b

    :cond_2a
    move v7, v4

    .line 431
    .local v7, "previousVibrating":Z
    :goto_2b
    if-eq v7, p2, :cond_32

    .line 432
    iget v8, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mVibratingMask:I

    xor-int/2addr v8, v6

    iput v8, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mVibratingMask:I

    .line 436
    :cond_32
    iget v8, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mVibratingMask:I

    if-eqz v8, :cond_38

    move v8, v2

    goto :goto_39

    :cond_38
    move v8, v4

    .line 437
    .local v8, "isAnyVibrating":Z
    :goto_39
    iget v9, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mInitializedMask:I

    if-ne v9, v1, :cond_3f

    move v9, v2

    goto :goto_40

    :cond_3f
    move v9, v4

    .line 442
    .local v9, "areAllInitialized":Z
    :goto_40
    if-eq v3, v8, :cond_44

    move v10, v2

    goto :goto_45

    :cond_44
    move v10, v4

    .line 443
    .local v10, "isStateChanging":Z
    :goto_45
    if-eqz v9, :cond_4c

    if-eqz v5, :cond_4b

    if-eqz v10, :cond_4c

    :cond_4b
    goto :goto_4d

    :cond_4c
    move v2, v4

    .line 445
    .end local v1    # "allInitializedMask":I
    .end local v3    # "previousIsAnyVibrating":Z
    .end local v5    # "previousAreAllInitialized":Z
    .end local v6    # "vibratorMask":I
    .end local v7    # "previousVibrating":Z
    .end local v9    # "areAllInitialized":Z
    .end local v10    # "isStateChanging":Z
    .local v2, "shouldNotifyStateChange":Z
    :goto_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_56

    .line 447
    if-eqz v2, :cond_55

    .line 448
    iget-object v0, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mDelegate:Landroid/os/Vibrator$OnVibratorStateChangedListener;

    invoke-interface {v0, v8}, Landroid/os/Vibrator$OnVibratorStateChangedListener;->onVibratorStateChanged(Z)V

    .line 450
    :cond_55
    return-void

    .line 445
    .end local v2    # "shouldNotifyStateChange":Z
    .end local v8    # "isAnyVibrating":Z
    :catchall_56
    move-exception v1

    :try_start_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw v1
.end method


# virtual methods
.method public blacklist hasRegisteredListeners()Z
    .registers 3

    .line 371
    iget-object v0, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 372
    :try_start_3
    iget-object v1, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mVibratorListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    monitor-exit v0

    return v1

    .line 373
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public blacklist onVibrating(IZ)V
    .registers 5
    .param p1, "vibratorIdx"    # I
    .param p2, "vibrating"    # Z

    .line 414
    iget-object v0, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/os/SystemVibrator$MultiVibratorStateListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroid/os/SystemVibrator$MultiVibratorStateListener$$ExternalSyntheticLambda0;-><init>(Landroid/os/SystemVibrator$MultiVibratorStateListener;IZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 451
    return-void
.end method

.method public blacklist register(Landroid/os/VibratorManager;[I)V
    .registers 11
    .param p1, "vibratorManager"    # Landroid/os/VibratorManager;
    .param p2, "vibratorIds"    # [I

    .line 378
    iget-object v0, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 379
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    array-length v2, p2

    if-ge v1, v2, :cond_2f

    .line 380
    aget v2, p2, v1

    .line 381
    .local v2, "vibratorId":I
    new-instance v3, Landroid/os/SystemVibrator$SingleVibratorStateListener;

    invoke-direct {v3, p0, v1}, Landroid/os/SystemVibrator$SingleVibratorStateListener;-><init>(Landroid/os/SystemVibrator$MultiVibratorStateListener;I)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_31

    .line 383
    .local v3, "listener":Landroid/os/SystemVibrator$SingleVibratorStateListener;
    :try_start_e
    invoke-virtual {p1, v2}, Landroid/os/VibratorManager;->getVibrator(I)Landroid/os/Vibrator;

    move-result-object v4

    iget-object v5, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v4, v5, v3}, Landroid/os/Vibrator;->addVibratorStateListener(Ljava/util/concurrent/Executor;Landroid/os/Vibrator$OnVibratorStateChangedListener;)V

    .line 385
    iget-object v4, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mVibratorListeners:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_1c} :catch_20
    .catchall {:try_start_e .. :try_end_1c} :catchall_31

    .line 395
    nop

    .line 379
    .end local v2    # "vibratorId":I
    .end local v3    # "listener":Landroid/os/SystemVibrator$SingleVibratorStateListener;
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 386
    .restart local v2    # "vibratorId":I
    .restart local v3    # "listener":Landroid/os/SystemVibrator$SingleVibratorStateListener;
    :catch_20
    move-exception v4

    .line 388
    .local v4, "e":Ljava/lang/RuntimeException;
    :try_start_21
    invoke-virtual {p0, p1}, Landroid/os/SystemVibrator$MultiVibratorStateListener;->unregister(Landroid/os/VibratorManager;)V
    :try_end_24
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_24} :catch_25
    .catchall {:try_start_21 .. :try_end_24} :catchall_31

    .line 393
    goto :goto_2d

    .line 389
    :catch_25
    move-exception v5

    .line 390
    .local v5, "e1":Ljava/lang/RuntimeException;
    :try_start_26
    const-string v6, "Vibrator"

    const-string v7, "Failed to unregister listener while recovering from a failed register call"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 394
    .end local v5    # "e1":Ljava/lang/RuntimeException;
    :goto_2d
    nop

    .end local p0    # "this":Landroid/os/SystemVibrator$MultiVibratorStateListener;
    .end local p1    # "vibratorManager":Landroid/os/VibratorManager;
    .end local p2    # "vibratorIds":[I
    throw v4

    .line 397
    .end local v1    # "i":I
    .end local v2    # "vibratorId":I
    .end local v3    # "listener":Landroid/os/SystemVibrator$SingleVibratorStateListener;
    .end local v4    # "e":Ljava/lang/RuntimeException;
    .restart local p0    # "this":Landroid/os/SystemVibrator$MultiVibratorStateListener;
    .restart local p1    # "vibratorManager":Landroid/os/VibratorManager;
    .restart local p2    # "vibratorIds":[I
    :cond_2f
    monitor-exit v0

    .line 398
    return-void

    .line 397
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_26 .. :try_end_33} :catchall_31

    throw v1
.end method

.method public blacklist unregister(Landroid/os/VibratorManager;)V
    .registers 7
    .param p1, "vibratorManager"    # Landroid/os/VibratorManager;

    .line 402
    iget-object v0, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 403
    :try_start_3
    iget-object v1, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mVibratorListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .local v1, "i":I
    :goto_9
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_28

    .line 404
    iget-object v2, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mVibratorListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 405
    .local v2, "vibratorId":I
    iget-object v3, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mVibratorListeners:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/SystemVibrator$SingleVibratorStateListener;

    .line 406
    .local v3, "listener":Landroid/os/SystemVibrator$SingleVibratorStateListener;
    invoke-virtual {p1, v2}, Landroid/os/VibratorManager;->getVibrator(I)Landroid/os/Vibrator;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Vibrator;->removeVibratorStateListener(Landroid/os/Vibrator$OnVibratorStateChangedListener;)V

    .line 407
    iget-object v4, p0, Landroid/os/SystemVibrator$MultiVibratorStateListener;->mVibratorListeners:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 408
    .end local v2    # "vibratorId":I
    .end local v3    # "listener":Landroid/os/SystemVibrator$SingleVibratorStateListener;
    goto :goto_9

    .line 409
    .end local v1    # "i":I
    :cond_28
    monitor-exit v0

    .line 410
    return-void

    .line 409
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v1
.end method
