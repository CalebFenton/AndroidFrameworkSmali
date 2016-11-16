.class final Lcom/android/server/display/DisplayPowerState$PhotonicModulator;
.super Ljava/lang/Thread;
.source "DisplayPowerState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PhotonicModulator"
.end annotation


# static fields
.field private static final INITIAL_BACKLIGHT:I = -0x1

.field private static final INITIAL_SCREEN_STATE:I = 0x1


# instance fields
.field private mActualBacklight:I

.field private mActualState:I

.field private mBacklightChangeInProgress:Z

.field private final mLock:Ljava/lang/Object;

.field private mPendingBacklight:I

.field private mPendingState:I

.field private mStateChangeInProgress:Z

.field final synthetic this$0:Lcom/android/server/display/DisplayPowerState;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayPowerState;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/display/DisplayPowerState;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, -0x1

    #@2
    .line 354
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    #@4
    .line 355
    const-string/jumbo v0, "PhotonicModulator"

    #@7
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    #@a
    .line 345
    new-instance v0, Ljava/lang/Object;

    #@c
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    #@11
    .line 347
    iput v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingState:I

    #@13
    .line 348
    iput v1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I

    #@15
    .line 349
    iput v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualState:I

    #@17
    .line 350
    iput v1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualBacklight:I

    #@19
    .line 354
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 384
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 385
    :try_start_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@6
    .line 386
    const-string/jumbo v0, "Photonic Modulator State:"

    #@9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c
    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "  mPendingState="

    #@14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    iget v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingState:I

    #@1a
    invoke-static {v2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@29
    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v2, "  mPendingBacklight="

    #@31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v0

    #@35
    iget v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I

    #@37
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v0

    #@3b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v0

    #@3f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@42
    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string/jumbo v2, "  mActualState="

    #@4a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v0

    #@4e
    iget v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualState:I

    #@50
    invoke-static {v2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    #@53
    move-result-object v2

    #@54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v0

    #@58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v0

    #@5c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5f
    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string/jumbo v2, "  mActualBacklight="

    #@67
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v0

    #@6b
    iget v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualBacklight:I

    #@6d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@70
    move-result-object v0

    #@71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v0

    #@75
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@78
    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    #@7a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7d
    const-string/jumbo v2, "  mStateChangeInProgress="

    #@80
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v0

    #@84
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mStateChangeInProgress:Z

    #@86
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@89
    move-result-object v0

    #@8a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8d
    move-result-object v0

    #@8e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@91
    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    #@93
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@96
    const-string/jumbo v2, "  mBacklightChangeInProgress="

    #@99
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v0

    #@9d
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mBacklightChangeInProgress:Z

    #@9f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v0

    #@a3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a6
    move-result-object v0

    #@a7
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@aa
    monitor-exit v1

    #@ab
    .line 383
    return-void

    #@ac
    .line 384
    :catchall_0
    move-exception v0

    #@ad
    monitor-exit v1

    #@ae
    throw v0
.end method

.method public run()V
    .locals 8

    #@0
    .prologue
    .line 404
    :goto_0
    iget-object v6, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v6

    #@3
    .line 405
    :try_start_0
    iget v3, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingState:I

    #@5
    .line 406
    .local v3, "state":I
    iget v5, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualState:I

    #@7
    if-eq v3, v5, :cond_4

    #@9
    const/4 v4, 0x1

    #@a
    .line 407
    .local v4, "stateChanged":Z
    :goto_1
    iget v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I

    #@c
    .line 408
    .local v0, "backlight":I
    iget v5, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualBacklight:I

    #@e
    if-eq v0, v5, :cond_5

    #@10
    const/4 v1, 0x1

    #@11
    .line 409
    .local v1, "backlightChanged":Z
    :goto_2
    if-nez v4, :cond_0

    #@13
    .line 411
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    #@15
    invoke-static {v5}, Lcom/android/server/display/DisplayPowerState;->-wrap1(Lcom/android/server/display/DisplayPowerState;)V

    #@18
    .line 412
    const/4 v5, 0x0

    #@19
    iput-boolean v5, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mStateChangeInProgress:Z

    #@1b
    .line 414
    :cond_0
    if-nez v1, :cond_1

    #@1d
    .line 415
    const/4 v5, 0x0

    #@1e
    iput-boolean v5, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mBacklightChangeInProgress:Z

    #@20
    .line 417
    :cond_1
    if-nez v4, :cond_2

    #@22
    if-eqz v1, :cond_6

    #@24
    .line 423
    :cond_2
    iput v3, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualState:I

    #@26
    .line 424
    iput v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualBacklight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    monitor-exit v6

    #@29
    .line 428
    invoke-static {}, Lcom/android/server/display/DisplayPowerState;->-get0()Z

    #@2c
    move-result v5

    #@2d
    if-eqz v5, :cond_3

    #@2f
    .line 429
    const-string/jumbo v5, "DisplayPowerState"

    #@32
    new-instance v6, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v7, "Updating screen state: state="

    #@3a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v6

    #@3e
    .line 430
    invoke-static {v3}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    #@41
    move-result-object v7

    #@42
    .line 429
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v6

    #@46
    .line 430
    const-string/jumbo v7, ", backlight="

    #@49
    .line 429
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v6

    #@4d
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@50
    move-result-object v6

    #@51
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v6

    #@55
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@58
    .line 432
    :cond_3
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    #@5a
    invoke-static {v5}, Lcom/android/server/display/DisplayPowerState;->-get1(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/display/DisplayBlanker;

    #@5d
    move-result-object v5

    #@5e
    invoke-interface {v5, v3, v0}, Lcom/android/server/display/DisplayBlanker;->requestDisplayState(II)V

    #@61
    goto :goto_0

    #@62
    .line 406
    .end local v0    # "backlight":I
    .end local v1    # "backlightChanged":Z
    .end local v4    # "stateChanged":Z
    :cond_4
    const/4 v4, 0x0

    #@63
    .restart local v4    # "stateChanged":Z
    goto :goto_1

    #@64
    .line 408
    .restart local v0    # "backlight":I
    :cond_5
    const/4 v1, 0x0

    #@65
    .restart local v1    # "backlightChanged":Z
    goto :goto_2

    #@66
    .line 419
    :cond_6
    :try_start_1
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    #@68
    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6b
    :goto_3
    monitor-exit v6

    #@6c
    goto :goto_0

    #@6d
    .line 404
    .end local v0    # "backlight":I
    .end local v1    # "backlightChanged":Z
    .end local v3    # "state":I
    .end local v4    # "stateChanged":Z
    :catchall_0
    move-exception v5

    #@6e
    monitor-exit v6

    #@6f
    throw v5

    #@70
    .line 420
    .restart local v0    # "backlight":I
    .restart local v1    # "backlightChanged":Z
    .restart local v3    # "state":I
    .restart local v4    # "stateChanged":Z
    :catch_0
    move-exception v2

    #@71
    .local v2, "ex":Ljava/lang/InterruptedException;
    goto :goto_3
.end method

.method public setState(II)Z
    .locals 7
    .param p1, "state"    # I
    .param p2, "backlight"    # I

    #@0
    .prologue
    .line 359
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 360
    :try_start_0
    iget v3, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingState:I

    #@5
    if-eq p1, v3, :cond_3

    #@7
    const/4 v2, 0x1

    #@8
    .line 361
    .local v2, "stateChanged":Z
    :goto_0
    iget v3, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I

    #@a
    if-eq p2, v3, :cond_4

    #@c
    const/4 v0, 0x1

    #@d
    .line 362
    .local v0, "backlightChanged":Z
    :goto_1
    if-nez v2, :cond_0

    #@f
    if-eqz v0, :cond_2

    #@11
    .line 363
    :cond_0
    invoke-static {}, Lcom/android/server/display/DisplayPowerState;->-get0()Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_1

    #@17
    .line 364
    const-string/jumbo v3, "DisplayPowerState"

    #@1a
    new-instance v5, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v6, "Requesting new screen state: state="

    #@22
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v5

    #@26
    .line 365
    invoke-static {p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    #@29
    move-result-object v6

    #@2a
    .line 364
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v5

    #@2e
    .line 365
    const-string/jumbo v6, ", backlight="

    #@31
    .line 364
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v5

    #@35
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v5

    #@39
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v5

    #@3d
    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    .line 368
    :cond_1
    iput p1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingState:I

    #@42
    .line 369
    iput p2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I

    #@44
    .line 371
    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mStateChangeInProgress:Z

    #@46
    if-nez v3, :cond_5

    #@48
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mBacklightChangeInProgress:Z

    #@4a
    .line 372
    :goto_2
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mStateChangeInProgress:Z

    #@4c
    .line 373
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mBacklightChangeInProgress:Z

    #@4e
    .line 375
    if-nez v1, :cond_2

    #@50
    .line 376
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    #@52
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    #@55
    .line 379
    :cond_2
    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mStateChangeInProgress:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@57
    if-eqz v3, :cond_6

    #@59
    const/4 v3, 0x0

    #@5a
    :goto_3
    monitor-exit v4

    #@5b
    return v3

    #@5c
    .line 360
    .end local v0    # "backlightChanged":Z
    .end local v2    # "stateChanged":Z
    :cond_3
    const/4 v2, 0x0

    #@5d
    .restart local v2    # "stateChanged":Z
    goto :goto_0

    #@5e
    .line 361
    :cond_4
    const/4 v0, 0x0

    #@5f
    .restart local v0    # "backlightChanged":Z
    goto :goto_1

    #@60
    .line 371
    :cond_5
    const/4 v1, 0x1

    #@61
    .local v1, "changeInProgress":Z
    goto :goto_2

    #@62
    .line 379
    .end local v1    # "changeInProgress":Z
    :cond_6
    const/4 v3, 0x1

    #@63
    goto :goto_3

    #@64
    .line 359
    .end local v0    # "backlightChanged":Z
    .end local v2    # "stateChanged":Z
    :catchall_0
    move-exception v3

    #@65
    monitor-exit v4

    #@66
    throw v3
.end method
