.class final Landroid/os/BugreportManager$DumpstateListener;
.super Landroid/os/IDumpstateListener$Stub;
.source "BugreportManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BugreportManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DumpstateListener"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/os/BugreportManager$BugreportCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mIsConsentDeferred:Z

.field private final blacklist mIsScreenshotRequested:Z

.field final synthetic blacklist this$0:Landroid/os/BugreportManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$O77GmYGqky7qv_V90Z4LcGi5Xzg(Landroid/os/BugreportManager$DumpstateListener;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/BugreportManager$DumpstateListener;->lambda$onProgress$0(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Ou_q5GHxol4VMrSoB665MiupE8w(Landroid/os/BugreportManager$DumpstateListener;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/BugreportManager$DumpstateListener;->lambda$onScreenshotTaken$4(Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$PV0u_XFWxqc6JVZ65jJHL0lXcn0(Landroid/os/BugreportManager$DumpstateListener;)V
    .registers 1

    invoke-direct {p0}, Landroid/os/BugreportManager$DumpstateListener;->lambda$onUiIntensiveBugreportDumpsFinished$5()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$_A2H6-GN7uCYIIFDdpoU0KbTT_I(Landroid/os/BugreportManager$DumpstateListener;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/BugreportManager$DumpstateListener;->lambda$onFinished$2(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$cwuMcIzx5eYpM25eem1LtOPsHzU(Landroid/os/BugreportManager$DumpstateListener;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/BugreportManager$DumpstateListener;->lambda$onError$1(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$g6yCoaLv53Y3QCBGoi4kKlwuXuc(Landroid/os/BugreportManager$DumpstateListener;)V
    .registers 1

    invoke-direct {p0}, Landroid/os/BugreportManager$DumpstateListener;->lambda$onFinished$3()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/BugreportManager;Ljava/util/concurrent/Executor;Landroid/os/BugreportManager$BugreportCallback;ZZ)V
    .registers 6
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/os/BugreportManager$BugreportCallback;
    .param p4, "isScreenshotRequested"    # Z
    .param p5, "isConsentDeferred"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 428
    iput-object p1, p0, Landroid/os/BugreportManager$DumpstateListener;->this$0:Landroid/os/BugreportManager;

    invoke-direct {p0}, Landroid/os/IDumpstateListener$Stub;-><init>()V

    .line 429
    iput-object p2, p0, Landroid/os/BugreportManager$DumpstateListener;->mExecutor:Ljava/util/concurrent/Executor;

    .line 430
    iput-object p3, p0, Landroid/os/BugreportManager$DumpstateListener;->mCallback:Landroid/os/BugreportManager$BugreportCallback;

    .line 431
    iput-boolean p4, p0, Landroid/os/BugreportManager$DumpstateListener;->mIsScreenshotRequested:Z

    .line 432
    iput-boolean p5, p0, Landroid/os/BugreportManager$DumpstateListener;->mIsConsentDeferred:Z

    .line 433
    return-void
.end method

.method private synthetic blacklist lambda$onError$1(I)V
    .registers 3
    .param p1, "errorCode"    # I

    .line 449
    iget-object v0, p0, Landroid/os/BugreportManager$DumpstateListener;->mCallback:Landroid/os/BugreportManager$BugreportCallback;

    invoke-virtual {v0, p1}, Landroid/os/BugreportManager$BugreportCallback;->onError(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onFinished$2(Ljava/lang/String;)V
    .registers 3
    .param p1, "bugreportFile"    # Ljava/lang/String;

    .line 460
    iget-object v0, p0, Landroid/os/BugreportManager$DumpstateListener;->mCallback:Landroid/os/BugreportManager$BugreportCallback;

    invoke-virtual {v0, p1}, Landroid/os/BugreportManager$BugreportCallback;->onFinished(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$onFinished$3()V
    .registers 2

    .line 462
    iget-object v0, p0, Landroid/os/BugreportManager$DumpstateListener;->mCallback:Landroid/os/BugreportManager$BugreportCallback;

    invoke-virtual {v0}, Landroid/os/BugreportManager$BugreportCallback;->onFinished()V

    return-void
.end method

.method private synthetic blacklist lambda$onProgress$0(I)V
    .registers 4
    .param p1, "progress"    # I

    .line 439
    iget-object v0, p0, Landroid/os/BugreportManager$DumpstateListener;->mCallback:Landroid/os/BugreportManager$BugreportCallback;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/os/BugreportManager$BugreportCallback;->onProgress(F)V

    return-void
.end method

.method private synthetic blacklist lambda$onScreenshotTaken$4(Z)V
    .registers 5
    .param p1, "success"    # Z

    .line 479
    if-eqz p1, :cond_6

    .line 480
    const v0, 0x10401c0

    goto :goto_9

    .line 481
    :cond_6
    const v0, 0x10401bf

    :goto_9
    nop

    .line 482
    .local v0, "message":I
    iget-object v1, p0, Landroid/os/BugreportManager$DumpstateListener;->this$0:Landroid/os/BugreportManager;

    invoke-static {v1}, Landroid/os/BugreportManager;->-$$Nest$fgetmContext(Landroid/os/BugreportManager;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 483
    return-void
.end method

.method private synthetic blacklist lambda$onUiIntensiveBugreportDumpsFinished$5()V
    .registers 2

    .line 490
    iget-object v0, p0, Landroid/os/BugreportManager$DumpstateListener;->mCallback:Landroid/os/BugreportManager$BugreportCallback;

    invoke-virtual {v0}, Landroid/os/BugreportManager$BugreportCallback;->onEarlyReportFinished()V

    return-void
.end method


# virtual methods
.method public blacklist onError(I)V
    .registers 6
    .param p1, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 447
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 449
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Landroid/os/BugreportManager$DumpstateListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1}, Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda1;-><init>(Landroid/os/BugreportManager$DumpstateListener;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 451
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 452
    nop

    .line 453
    return-void

    .line 451
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 452
    throw v2
.end method

.method public blacklist onFinished(Ljava/lang/String;)V
    .registers 6
    .param p1, "bugreportFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 457
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 459
    .local v0, "identity":J
    :try_start_4
    iget-boolean v2, p0, Landroid/os/BugreportManager$DumpstateListener;->mIsConsentDeferred:Z

    if-eqz v2, :cond_13

    .line 460
    iget-object v2, p0, Landroid/os/BugreportManager$DumpstateListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1}, Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda2;-><init>(Landroid/os/BugreportManager$DumpstateListener;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1d

    .line 462
    :cond_13
    iget-object v2, p0, Landroid/os/BugreportManager$DumpstateListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda3;-><init>(Landroid/os/BugreportManager$DumpstateListener;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_22

    .line 465
    :goto_1d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 466
    nop

    .line 467
    return-void

    .line 465
    :catchall_22
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 466
    throw v2
.end method

.method public blacklist onProgress(I)V
    .registers 6
    .param p1, "progress"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 437
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 439
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Landroid/os/BugreportManager$DumpstateListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda0;-><init>(Landroid/os/BugreportManager$DumpstateListener;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 441
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 442
    nop

    .line 443
    return-void

    .line 441
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 442
    throw v2
.end method

.method public blacklist onScreenshotTaken(Z)V
    .registers 4
    .param p1, "success"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 471
    iget-boolean v0, p0, Landroid/os/BugreportManager$DumpstateListener;->mIsScreenshotRequested:Z

    if-nez v0, :cond_5

    .line 472
    return-void

    .line 475
    :cond_5
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 476
    .local v0, "mainThreadHandler":Landroid/os/Handler;
    new-instance v1, Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda5;-><init>(Landroid/os/BugreportManager$DumpstateListener;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 484
    return-void
.end method

.method public blacklist onUiIntensiveBugreportDumpsFinished()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 488
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 490
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Landroid/os/BugreportManager$DumpstateListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda4;-><init>(Landroid/os/BugreportManager$DumpstateListener;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 492
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 493
    nop

    .line 494
    return-void

    .line 492
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 493
    throw v2
.end method
