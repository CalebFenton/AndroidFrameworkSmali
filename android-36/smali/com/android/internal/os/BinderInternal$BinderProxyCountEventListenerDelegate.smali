.class Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListenerDelegate;
.super Ljava/lang/Object;
.source "BinderInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BinderInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BinderProxyCountEventListenerDelegate"
.end annotation


# instance fields
.field private blacklist mBinderProxyCountEventListener:Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListener;

.field private blacklist mHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic blacklist $r8$lambda$uTwGgNRFwJEB9sy_0L2mCEH5G9c(Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListenerDelegate;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListenerDelegate;->lambda$notifyLimitReached$0(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$zK4q70eO0uQPQRK57ImSP_uYHr0(Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListenerDelegate;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListenerDelegate;->lambda$notifyWarningReached$1(I)V

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/os/BinderInternal-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListenerDelegate;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$notifyLimitReached$0(I)V
    .registers 3
    .param p1, "uid"    # I

    .line 303
    iget-object v0, p0, Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListenerDelegate;->mBinderProxyCountEventListener:Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListener;

    invoke-interface {v0, p1}, Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListener;->onLimitReached(I)V

    return-void
.end method

.method private synthetic blacklist lambda$notifyWarningReached$1(I)V
    .registers 3
    .param p1, "uid"    # I

    .line 312
    iget-object v0, p0, Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListenerDelegate;->mBinderProxyCountEventListener:Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListener;

    invoke-interface {v0, p1}, Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListener;->onWarningThresholdReached(I)V

    return-void
.end method


# virtual methods
.method blacklist notifyLimitReached(I)V
    .registers 4
    .param p1, "uid"    # I

    .line 301
    monitor-enter p0

    .line 302
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListenerDelegate;->mBinderProxyCountEventListener:Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListener;

    if-eqz v0, :cond_f

    .line 303
    iget-object v0, p0, Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListenerDelegate;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListenerDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListenerDelegate$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListenerDelegate;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 305
    :cond_f
    monitor-exit p0

    .line 306
    return-void

    .line 305
    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_11

    throw v0
.end method

.method blacklist notifyWarningReached(I)V
    .registers 4
    .param p1, "uid"    # I

    .line 309
    monitor-enter p0

    .line 310
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListenerDelegate;->mBinderProxyCountEventListener:Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListener;

    if-eqz v0, :cond_f

    .line 311
    iget-object v0, p0, Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListenerDelegate;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListenerDelegate$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListenerDelegate$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListenerDelegate;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 314
    :cond_f
    monitor-exit p0

    .line 315
    return-void

    .line 314
    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_11

    throw v0
.end method

.method blacklist setListener(Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListener;Landroid/os/Handler;)V
    .registers 4
    .param p1, "listener"    # Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 294
    monitor-enter p0

    .line 295
    :try_start_1
    iput-object p1, p0, Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListenerDelegate;->mBinderProxyCountEventListener:Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListener;

    .line 296
    iput-object p2, p0, Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListenerDelegate;->mHandler:Landroid/os/Handler;

    .line 297
    monitor-exit p0

    .line 298
    return-void

    .line 297
    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7

    throw v0
.end method
