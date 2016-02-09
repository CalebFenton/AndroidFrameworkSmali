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

.field private mChangeInProgress:Z

.field private final mLock:Ljava/lang/Object;

.field private mPendingBacklight:I

.field private mPendingState:I

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
    .line 346
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    #@4
    .line 347
    const-string/jumbo v0, "PhotonicModulator"

    #@7
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    #@a
    .line 338
    new-instance v0, Ljava/lang/Object;

    #@c
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    #@11
    .line 340
    iput v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingState:I

    #@13
    .line 341
    iput v1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I

    #@15
    .line 342
    iput v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualState:I

    #@17
    .line 343
    iput v1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualBacklight:I

    #@19
    .line 346
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 371
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 372
    :try_start_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@6
    .line 373
    const-string/jumbo v0, "Photonic Modulator State:"

    #@9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c
    .line 374
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
    .line 375
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
    .line 376
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
    .line 377
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
    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    #@7a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7d
    const-string/jumbo v2, "  mChangeInProgress="

    #@80
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v0

    #@84
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mChangeInProgress:Z

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@91
    monitor-exit v1

    #@92
    .line 370
    return-void

    #@93
    .line 371
    :catchall_0
    move-exception v0

    #@94
    monitor-exit v1

    #@95
    throw v0
.end method

.method public run()V
    .locals 8

    #@0
    .prologue
    .line 390
    :goto_0
    iget-object v6, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v6

    #@3
    .line 391
    :try_start_0
    iget v3, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingState:I

    #@5
    .line 392
    .local v3, "state":I
    iget v5, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualState:I

    #@7
    if-eq v3, v5, :cond_2

    #@9
    const/4 v4, 0x1

    #@a
    .line 393
    .local v4, "stateChanged":Z
    :goto_1
    iget v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I

    #@c
    .line 394
    .local v0, "backlight":I
    iget v5, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualBacklight:I

    #@e
    if-eq v0, v5, :cond_3

    #@10
    const/4 v1, 0x1

    #@11
    .line 395
    .local v1, "backlightChanged":Z
    :goto_2
    if-nez v4, :cond_0

    #@13
    if-eqz v1, :cond_4

    #@15
    .line 404
    :cond_0
    iput v3, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualState:I

    #@17
    .line 405
    iput v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualBacklight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    monitor-exit v6

    #@1a
    .line 409
    invoke-static {}, Lcom/android/server/display/DisplayPowerState;->-get0()Z

    #@1d
    move-result v5

    #@1e
    if-eqz v5, :cond_1

    #@20
    .line 410
    const-string/jumbo v5, "DisplayPowerState"

    #@23
    new-instance v6, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v7, "Updating screen state: state="

    #@2b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v6

    #@2f
    .line 411
    invoke-static {v3}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    #@32
    move-result-object v7

    #@33
    .line 410
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v6

    #@37
    .line 411
    const-string/jumbo v7, ", backlight="

    #@3a
    .line 410
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v6

    #@3e
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@41
    move-result-object v6

    #@42
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v6

    #@46
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@49
    .line 413
    :cond_1
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    #@4b
    invoke-static {v5}, Lcom/android/server/display/DisplayPowerState;->-get1(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/display/DisplayBlanker;

    #@4e
    move-result-object v5

    #@4f
    invoke-interface {v5, v3, v0}, Lcom/android/server/display/DisplayBlanker;->requestDisplayState(II)V

    #@52
    goto :goto_0

    #@53
    .line 392
    .end local v0    # "backlight":I
    .end local v1    # "backlightChanged":Z
    .end local v4    # "stateChanged":Z
    :cond_2
    const/4 v4, 0x0

    #@54
    .restart local v4    # "stateChanged":Z
    goto :goto_1

    #@55
    .line 394
    .restart local v0    # "backlight":I
    :cond_3
    const/4 v1, 0x0

    #@56
    .restart local v1    # "backlightChanged":Z
    goto :goto_2

    #@57
    .line 397
    :cond_4
    const/4 v5, 0x0

    #@58
    :try_start_1
    iput-boolean v5, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mChangeInProgress:Z

    #@5a
    .line 398
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    #@5c
    invoke-static {v5}, Lcom/android/server/display/DisplayPowerState;->-wrap1(Lcom/android/server/display/DisplayPowerState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5f
    .line 400
    :try_start_2
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    #@61
    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@64
    :goto_3
    monitor-exit v6

    #@65
    goto :goto_0

    #@66
    .line 390
    .end local v0    # "backlight":I
    .end local v1    # "backlightChanged":Z
    .end local v3    # "state":I
    .end local v4    # "stateChanged":Z
    :catchall_0
    move-exception v5

    #@67
    monitor-exit v6

    #@68
    throw v5

    #@69
    .line 401
    .restart local v0    # "backlight":I
    .restart local v1    # "backlightChanged":Z
    .restart local v3    # "state":I
    .restart local v4    # "stateChanged":Z
    :catch_0
    move-exception v2

    #@6a
    .local v2, "ex":Ljava/lang/InterruptedException;
    goto :goto_3
.end method

.method public setState(II)Z
    .locals 5
    .param p1, "state"    # I
    .param p2, "backlight"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 351
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 352
    :try_start_0
    iget v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingState:I

    #@6
    if-ne p1, v2, :cond_0

    #@8
    iget v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I

    #@a
    if-eq p2, v2, :cond_2

    #@c
    .line 353
    :cond_0
    invoke-static {}, Lcom/android/server/display/DisplayPowerState;->-get0()Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_1

    #@12
    .line 354
    const-string/jumbo v2, "DisplayPowerState"

    #@15
    new-instance v3, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v4, "Requesting new screen state: state="

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    .line 355
    invoke-static {p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    #@24
    move-result-object v4

    #@25
    .line 354
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    .line 355
    const-string/jumbo v4, ", backlight="

    #@2c
    .line 354
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3b
    .line 358
    :cond_1
    iput p1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingState:I

    #@3d
    .line 359
    iput p2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I

    #@3f
    .line 361
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mChangeInProgress:Z

    #@41
    if-nez v2, :cond_2

    #@43
    .line 362
    const/4 v2, 0x1

    #@44
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mChangeInProgress:Z

    #@46
    .line 363
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    #@48
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    #@4b
    .line 366
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mChangeInProgress:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4d
    if-eqz v2, :cond_3

    #@4f
    const/4 v0, 0x0

    #@50
    :cond_3
    monitor-exit v1

    #@51
    return v0

    #@52
    .line 351
    :catchall_0
    move-exception v0

    #@53
    monitor-exit v1

    #@54
    throw v0
.end method
