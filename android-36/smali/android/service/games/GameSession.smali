.class public abstract Landroid/service/games/GameSession;
.super Ljava/lang/Object;
.source "GameSession.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/games/GameSession$LifecycleState;,
        Landroid/service/games/GameSession$GameSessionRootView;,
        Landroid/service/games/GameSession$ScreenshotCallback;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "GameSession"


# instance fields
.field private blacklist mAreTransientInsetsVisibleDueToGesture:Z

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mGameSessionController:Landroid/service/games/IGameSessionController;

.field private blacklist mGameSessionRootView:Landroid/service/games/GameSession$GameSessionRootView;

.field final blacklist mInterface:Landroid/service/games/IGameSession;

.field private blacklist mLifecycleState:Landroid/service/games/GameSession$LifecycleState;

.field private blacklist mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

.field private blacklist mTaskId:I


# direct methods
.method public static synthetic blacklist $r8$lambda$GXAIOy5CjvIzjMJFbYdMgVPkZ1w(Landroid/service/games/GameSession;Landroid/service/games/GameSession$ScreenshotCallback;Landroid/service/games/GameScreenshotResult;Ljava/lang/Throwable;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/service/games/GameSession;->lambda$takeScreenshot$0(Landroid/service/games/GameSession$ScreenshotCallback;Landroid/service/games/GameScreenshotResult;Ljava/lang/Throwable;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdoDestroy(Landroid/service/games/GameSession;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/games/GameSession;->doDestroy()V

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Landroid/service/games/GameSession$1;

    invoke-direct {v0, p0}, Landroid/service/games/GameSession$1;-><init>(Landroid/service/games/GameSession;)V

    iput-object v0, p0, Landroid/service/games/GameSession;->mInterface:Landroid/service/games/IGameSession;

    .line 127
    sget-object v0, Landroid/service/games/GameSession$LifecycleState;->INITIALIZED:Landroid/service/games/GameSession$LifecycleState;

    iput-object v0, p0, Landroid/service/games/GameSession;->mLifecycleState:Landroid/service/games/GameSession$LifecycleState;

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/games/GameSession;->mAreTransientInsetsVisibleDueToGesture:Z

    return-void
.end method

.method private blacklist doDestroy()V
    .registers 2

    .line 161
    iget-object v0, p0, Landroid/service/games/GameSession;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->release()V

    .line 162
    sget-object v0, Landroid/service/games/GameSession$LifecycleState;->DESTROYED:Landroid/service/games/GameSession$LifecycleState;

    invoke-virtual {p0, v0}, Landroid/service/games/GameSession;->moveToState(Landroid/service/games/GameSession$LifecycleState;)V

    .line 163
    return-void
.end method

.method private blacklist handleScreenshotResult(Landroid/service/games/GameSession$ScreenshotCallback;Landroid/service/games/GameScreenshotResult;Ljava/lang/Throwable;)V
    .registers 8
    .param p1, "callback"    # Landroid/service/games/GameSession$ScreenshotCallback;
    .param p2, "result"    # Landroid/service/games/GameScreenshotResult;
    .param p3, "error"    # Ljava/lang/Throwable;

    .line 450
    const/4 v0, 0x0

    const-string v1, "GameSession"

    if-eqz p3, :cond_14

    .line 451
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 452
    invoke-interface {p1, v0}, Landroid/service/games/GameSession$ScreenshotCallback;->onFailure(I)V

    .line 454
    return-void

    .line 457
    :cond_14
    invoke-virtual {p2}, Landroid/service/games/GameScreenshotResult;->getStatus()I

    move-result v2

    .line 458
    .local v2, "status":I
    packed-switch v2, :pswitch_data_2a

    goto :goto_29

    .line 463
    :pswitch_1c
    const-string v3, "Error taking screenshot"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-interface {p1, v0}, Landroid/service/games/GameSession$ScreenshotCallback;->onFailure(I)V

    goto :goto_29

    .line 460
    :pswitch_25
    invoke-interface {p1}, Landroid/service/games/GameSession$ScreenshotCallback;->onSuccess()V

    .line 461
    nop

    .line 468
    :goto_29
    return-void

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_25
        :pswitch_1c
    .end packed-switch
.end method

.method static synthetic blacklist lambda$startActivityFromGameSessionForResult$1(Landroid/service/games/GameSessionActivityCallback;Landroid/service/games/GameSessionActivityResult;Ljava/lang/Throwable;)V
    .registers 5
    .param p0, "callback"    # Landroid/service/games/GameSessionActivityCallback;
    .param p1, "result"    # Landroid/service/games/GameSessionActivityResult;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .line 506
    if-eqz p2, :cond_6

    .line 507
    invoke-interface {p0, p2}, Landroid/service/games/GameSessionActivityCallback;->onActivityStartFailed(Ljava/lang/Throwable;)V

    .line 508
    return-void

    .line 510
    :cond_6
    invoke-virtual {p1}, Landroid/service/games/GameSessionActivityResult;->getResultCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/service/games/GameSessionActivityResult;->getData()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Landroid/service/games/GameSessionActivityCallback;->onActivityResult(ILandroid/content/Intent;)V

    .line 511
    return-void
.end method

.method static synthetic blacklist lambda$startActivityFromGameSessionForResult$2(Landroid/service/games/GameSessionActivityCallback;Ljava/lang/Throwable;)V
    .registers 2
    .param p0, "callback"    # Landroid/service/games/GameSessionActivityCallback;
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 528
    invoke-interface {p0, p1}, Landroid/service/games/GameSessionActivityCallback;->onActivityStartFailed(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic blacklist lambda$takeScreenshot$0(Landroid/service/games/GameSession$ScreenshotCallback;Landroid/service/games/GameScreenshotResult;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "callback"    # Landroid/service/games/GameSession$ScreenshotCallback;
    .param p2, "result"    # Landroid/service/games/GameScreenshotResult;
    .param p3, "error"    # Ljava/lang/Throwable;

    .line 436
    invoke-direct {p0, p1, p2, p3}, Landroid/service/games/GameSession;->handleScreenshotResult(Landroid/service/games/GameSession$ScreenshotCallback;Landroid/service/games/GameScreenshotResult;Ljava/lang/Throwable;)V

    .line 437
    return-void
.end method


# virtual methods
.method public blacklist attach(Landroid/service/games/IGameSessionController;ILandroid/content/Context;Landroid/view/SurfaceControlViewHost;II)V
    .registers 9
    .param p1, "gameSessionController"    # Landroid/service/games/IGameSessionController;
    .param p2, "taskId"    # I
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "surfaceControlViewHost"    # Landroid/view/SurfaceControlViewHost;
    .param p5, "widthPx"    # I
    .param p6, "heightPx"    # I

    .line 146
    iput-object p1, p0, Landroid/service/games/GameSession;->mGameSessionController:Landroid/service/games/IGameSessionController;

    .line 147
    iput p2, p0, Landroid/service/games/GameSession;->mTaskId:I

    .line 148
    iput-object p3, p0, Landroid/service/games/GameSession;->mContext:Landroid/content/Context;

    .line 149
    iput-object p4, p0, Landroid/service/games/GameSession;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    .line 150
    new-instance v0, Landroid/service/games/GameSession$GameSessionRootView;

    iget-object v1, p0, Landroid/service/games/GameSession;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-direct {v0, p3, v1}, Landroid/service/games/GameSession$GameSessionRootView;-><init>(Landroid/content/Context;Landroid/view/SurfaceControlViewHost;)V

    iput-object v0, p0, Landroid/service/games/GameSession;->mGameSessionRootView:Landroid/service/games/GameSession$GameSessionRootView;

    .line 151
    iget-object v0, p0, Landroid/service/games/GameSession;->mGameSessionRootView:Landroid/service/games/GameSession$GameSessionRootView;

    invoke-virtual {p4, v0, p5, p6}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;II)V

    .line 152
    return-void
.end method

.method public blacklist dispatchTransientSystemBarVisibilityFromRevealGestureChanged(Z)V
    .registers 3
    .param p1, "visibleDueToGesture"    # Z

    .line 170
    iget-boolean v0, p0, Landroid/service/games/GameSession;->mAreTransientInsetsVisibleDueToGesture:Z

    if-eq v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 171
    .local v0, "didValueChange":Z
    :goto_7
    iput-boolean p1, p0, Landroid/service/games/GameSession;->mAreTransientInsetsVisibleDueToGesture:Z

    .line 172
    if-eqz v0, :cond_e

    .line 173
    invoke-virtual {p0, p1}, Landroid/service/games/GameSession;->onTransientSystemBarVisibilityFromRevealGestureChanged(Z)V

    .line 175
    :cond_e
    return-void
.end method

.method blacklist doCreate()V
    .registers 2

    .line 156
    sget-object v0, Landroid/service/games/GameSession$LifecycleState;->CREATED:Landroid/service/games/GameSession$LifecycleState;

    invoke-virtual {p0, v0}, Landroid/service/games/GameSession;->moveToState(Landroid/service/games/GameSession$LifecycleState;)V

    .line 157
    return-void
.end method

.method public blacklist moveToState(Landroid/service/games/GameSession$LifecycleState;)V
    .registers 4
    .param p1, "newLifecycleState"    # Landroid/service/games/GameSession$LifecycleState;

    .line 187
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_69

    .line 191
    iget-object v0, p0, Landroid/service/games/GameSession;->mLifecycleState:Landroid/service/games/GameSession$LifecycleState;

    if-ne v0, p1, :cond_f

    .line 193
    return-void

    .line 196
    :cond_f
    iget-object v0, p0, Landroid/service/games/GameSession;->mLifecycleState:Landroid/service/games/GameSession$LifecycleState;

    invoke-virtual {v0}, Landroid/service/games/GameSession$LifecycleState;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_72

    goto :goto_66

    .line 251
    :pswitch_1a
    return-void

    .line 236
    :pswitch_1b
    sget-object v0, Landroid/service/games/GameSession$LifecycleState;->TASK_FOCUSED:Landroid/service/games/GameSession$LifecycleState;

    if-ne p1, v0, :cond_23

    .line 237
    invoke-virtual {p0, v1}, Landroid/service/games/GameSession;->onGameTaskFocusChanged(Z)V

    goto :goto_66

    .line 238
    :cond_23
    sget-object v0, Landroid/service/games/GameSession$LifecycleState;->DESTROYED:Landroid/service/games/GameSession$LifecycleState;

    if-ne p1, v0, :cond_2b

    .line 239
    invoke-virtual {p0}, Landroid/service/games/GameSession;->onDestroy()V

    goto :goto_66

    .line 244
    :cond_2b
    return-void

    .line 223
    :pswitch_2c
    sget-object v0, Landroid/service/games/GameSession$LifecycleState;->TASK_UNFOCUSED:Landroid/service/games/GameSession$LifecycleState;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_35

    .line 224
    invoke-virtual {p0, v1}, Landroid/service/games/GameSession;->onGameTaskFocusChanged(Z)V

    goto :goto_66

    .line 225
    :cond_35
    sget-object v0, Landroid/service/games/GameSession$LifecycleState;->DESTROYED:Landroid/service/games/GameSession$LifecycleState;

    if-ne p1, v0, :cond_40

    .line 226
    invoke-virtual {p0, v1}, Landroid/service/games/GameSession;->onGameTaskFocusChanged(Z)V

    .line 227
    invoke-virtual {p0}, Landroid/service/games/GameSession;->onDestroy()V

    goto :goto_66

    .line 232
    :cond_40
    return-void

    .line 211
    :pswitch_41
    sget-object v0, Landroid/service/games/GameSession$LifecycleState;->TASK_FOCUSED:Landroid/service/games/GameSession$LifecycleState;

    if-ne p1, v0, :cond_49

    .line 212
    invoke-virtual {p0, v1}, Landroid/service/games/GameSession;->onGameTaskFocusChanged(Z)V

    goto :goto_66

    .line 213
    :cond_49
    sget-object v0, Landroid/service/games/GameSession$LifecycleState;->DESTROYED:Landroid/service/games/GameSession$LifecycleState;

    if-ne p1, v0, :cond_51

    .line 214
    invoke-virtual {p0}, Landroid/service/games/GameSession;->onDestroy()V

    goto :goto_66

    .line 219
    :cond_51
    return-void

    .line 198
    :pswitch_52
    sget-object v0, Landroid/service/games/GameSession$LifecycleState;->CREATED:Landroid/service/games/GameSession$LifecycleState;

    if-ne p1, v0, :cond_5a

    .line 199
    invoke-virtual {p0}, Landroid/service/games/GameSession;->onCreate()V

    goto :goto_66

    .line 200
    :cond_5a
    sget-object v0, Landroid/service/games/GameSession$LifecycleState;->DESTROYED:Landroid/service/games/GameSession$LifecycleState;

    if-ne p1, v0, :cond_65

    .line 201
    invoke-virtual {p0}, Landroid/service/games/GameSession;->onCreate()V

    .line 202
    invoke-virtual {p0}, Landroid/service/games/GameSession;->onDestroy()V

    goto :goto_66

    .line 207
    :cond_65
    return-void

    .line 254
    :goto_66
    iput-object p1, p0, Landroid/service/games/GameSession;->mLifecycleState:Landroid/service/games/GameSession$LifecycleState;

    .line 255
    return-void

    .line 188
    :cond_69
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "moveToState should be used only from the main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_52
        :pswitch_41
        :pswitch_2c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch
.end method

.method public whitelist onCreate()V
    .registers 1

    .line 263
    return-void
.end method

.method public whitelist onDestroy()V
    .registers 1

    .line 273
    return-void
.end method

.method public whitelist onGameTaskFocusChanged(Z)V
    .registers 2
    .param p1, "focused"    # Z

    .line 287
    return-void
.end method

.method public whitelist onTransientSystemBarVisibilityFromRevealGestureChanged(Z)V
    .registers 2
    .param p1, "visibleDueToGesture"    # Z

    .line 302
    return-void
.end method

.method public final whitelist restartGame()Z
    .registers 4

    .line 333
    :try_start_0
    iget-object v0, p0, Landroid/service/games/GameSession;->mGameSessionController:Landroid/service/games/IGameSessionController;

    iget v1, p0, Landroid/service/games/GameSession;->mTaskId:I

    invoke-interface {v0, v1}, Landroid/service/games/IGameSessionController;->restartGame(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_a

    .line 337
    nop

    .line 339
    const/4 v0, 0x1

    return v0

    .line 334
    :catch_a
    move-exception v0

    .line 335
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "GameSession"

    const-string v2, "Failed to restart game"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 336
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setTaskOverlayView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "layoutParams"    # Landroid/view/ViewGroup$LayoutParams;

    .line 319
    iget-object v0, p0, Landroid/service/games/GameSession;->mGameSessionRootView:Landroid/service/games/GameSession$GameSessionRootView;

    invoke-virtual {v0}, Landroid/service/games/GameSession$GameSessionRootView;->removeAllViews()V

    .line 320
    iget-object v0, p0, Landroid/service/games/GameSession;->mGameSessionRootView:Landroid/service/games/GameSession$GameSessionRootView;

    invoke-virtual {v0, p1, p2}, Landroid/service/games/GameSession$GameSessionRootView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 321
    return-void
.end method

.method public final whitelist startActivityFromGameSessionForResult(Landroid/content/Intent;Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/service/games/GameSessionActivityCallback;)V
    .registers 16
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callback"    # Landroid/service/games/GameSessionActivityCallback;

    .line 499
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    new-instance v1, Landroid/service/games/GameSession$$ExternalSyntheticLambda0;

    invoke-direct {v1, p4}, Landroid/service/games/GameSession$$ExternalSyntheticLambda0;-><init>(Landroid/service/games/GameSessionActivityCallback;)V

    .line 505
    invoke-virtual {v0, v1, p3}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v1

    .line 513
    .local v1, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/service/games/GameSessionActivityResult;>;"
    nop

    .line 514
    invoke-static {p1, p2, v1}, Landroid/service/games/GameSessionTrampolineActivity;->createIntent(Landroid/content/Intent;Landroid/os/Bundle;Lcom/android/internal/infra/AndroidFuture;)Landroid/content/Intent;

    move-result-object v8

    .line 519
    .local v8, "trampolineIntent":Landroid/content/Intent;
    invoke-virtual {v8}, Landroid/content/Intent;->collectExtraIntentKeys()V

    .line 522
    :try_start_1f
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v2

    iget-object v0, p0, Landroid/service/games/GameSession;->mContext:Landroid/content/Context;

    .line 523
    invoke-virtual {v0}, Landroid/content/Context;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v3

    iget-object v0, p0, Landroid/service/games/GameSession;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "GameSession"

    .line 524
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    iget v9, p0, Landroid/service/games/GameSession;->mTaskId:I

    .line 525
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    .line 522
    invoke-interface/range {v2 .. v10}, Landroid/app/IActivityTaskManager;->startActivityFromGameSession(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;II)I

    move-result v0

    .line 526
    .local v0, "result":I
    invoke-static {v0, v8}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_46
    .catchall {:try_start_1f .. :try_end_46} :catchall_47

    .line 529
    .end local v0    # "result":I
    goto :goto_50

    .line 527
    :catchall_47
    move-exception v0

    .line 528
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v2, Landroid/service/games/GameSession$$ExternalSyntheticLambda1;

    invoke-direct {v2, p4, v0}, Landroid/service/games/GameSession$$ExternalSyntheticLambda1;-><init>(Landroid/service/games/GameSessionActivityCallback;Ljava/lang/Throwable;)V

    invoke-interface {p3, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 530
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_50
    return-void
.end method

.method public whitelist takeScreenshot(Ljava/util/concurrent/Executor;Landroid/service/games/GameSession$ScreenshotCallback;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/service/games/GameSession$ScreenshotCallback;

    .line 430
    iget-object v0, p0, Landroid/service/games/GameSession;->mGameSessionController:Landroid/service/games/IGameSessionController;

    if-eqz v0, :cond_1f

    .line 434
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    new-instance v1, Landroid/service/games/GameSession$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p2}, Landroid/service/games/GameSession$$ExternalSyntheticLambda2;-><init>(Landroid/service/games/GameSession;Landroid/service/games/GameSession$ScreenshotCallback;)V

    .line 435
    invoke-virtual {v0, v1, p1}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    .line 440
    .local v0, "takeScreenshotResult":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/service/games/GameScreenshotResult;>;"
    :try_start_12
    iget-object v1, p0, Landroid/service/games/GameSession;->mGameSessionController:Landroid/service/games/IGameSessionController;

    iget v2, p0, Landroid/service/games/GameSession;->mTaskId:I

    invoke-interface {v1, v2, v0}, Landroid/service/games/IGameSessionController;->takeScreenshot(ILcom/android/internal/infra/AndroidFuture;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_19} :catch_1a

    .line 443
    goto :goto_1e

    .line 441
    :catch_1a
    move-exception v1

    .line 442
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 444
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_1e
    return-void

    .line 431
    .end local v0    # "takeScreenshotResult":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/service/games/GameScreenshotResult;>;"
    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not call before onCreate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
