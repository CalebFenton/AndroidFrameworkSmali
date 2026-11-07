.class public Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;
.super Ljava/util/ArrayDeque;
.source "ServiceConnector.java"

# interfaces
.implements Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector;
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Impl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/util/ArrayDeque<",
        "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Job<",
        "TI;*>;>;",
        "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector<",
        "TI;>;",
        "Landroid/content/ServiceConnection;",
        "Landroid/os/IBinder$DeathRecipient;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field static final blacklist DEBUG:Z = false

.field private static final blacklist DEFAULT_DISCONNECT_TIMEOUT_MS:J = 0x3a98L

.field private static final blacklist DEFAULT_REQUEST_TIMEOUT_MS:J = 0x7530L

.field static final blacklist LOG_TAG:Ljava/lang/String; = "ServiceConnector.Impl"


# instance fields
.field private final blacklist mBinderAsInterface:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Landroid/os/IBinder;",
            "TI;>;"
        }
    .end annotation
.end field

.field private blacklist mBinding:Z

.field private final blacklist mBindingFlags:I

.field protected final blacklist mContext:Landroid/content/Context;

.field protected final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mIntent:Landroid/content/Intent;

.field private final blacklist mMainHandler:Landroid/os/Handler;

.field private final blacklist mQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Job<",
            "TI;*>;>;"
        }
    .end annotation
.end field

.field private volatile blacklist mService:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
        }
    .end annotation
.end field

.field private final blacklist mServiceConnection:Landroid/content/ServiceConnection;

.field private blacklist mServiceConnectionFutureCache:Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl<",
            "TI;>.CompletionAwareJob<TI;TI;>;"
        }
    .end annotation
.end field

.field private volatile blacklist mServiceLifecycleCallbacks:Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks<",
            "TI;>;"
        }
    .end annotation
.end field

.field private final blacklist mTimeoutDisconnect:Ljava/lang/Runnable;

.field private blacklist mUnbinding:Z

.field private final blacklist mUnfinishedJobs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl<",
            "TI;>.CompletionAwareJob<TI;*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$a6Ras_mPUQ9aORUOgc3stzOcpKY(Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Job;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->lambda$enqueue$1(Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Job;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmQueue(Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;)Ljava/util/Queue;
    .registers 1

    iget-object p0, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mQueue:Ljava/util/Queue;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUnfinishedJobs(Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mUnfinishedJobs:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mmaybeScheduleUnbindTimeout(Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;)V
    .registers 1

    invoke-direct {p0}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->maybeScheduleUnbindTimeout()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "bindingFlags"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "II",
            "Ljava/util/function/Function<",
            "Landroid/os/IBinder;",
            "TI;>;)V"
        }
    .end annotation

    .line 293
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;, "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl<TI;>;"
    .local p5, "binderAsInterface":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/IBinder;TI;>;"
    invoke-direct {p0}, Ljava/util/ArrayDeque;-><init>()V

    .line 254
    iput-object p0, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mQueue:Ljava/util/Queue;

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mUnfinishedJobs:Ljava/util/List;

    .line 257
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mMainHandler:Landroid/os/Handler;

    .line 258
    iput-object p0, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 259
    iput-object p0, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mTimeoutDisconnect:Ljava/lang/Runnable;

    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mServiceLifecycleCallbacks:Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;

    .line 271
    iput-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    .line 272
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mBinding:Z

    .line 273
    iput-boolean v1, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mUnbinding:Z

    .line 275
    iput-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mServiceConnectionFutureCache:Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    .line 294
    invoke-static {p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mContext:Landroid/content/Context;

    .line 295
    iput-object p2, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mIntent:Landroid/content/Intent;

    .line 296
    iput p3, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mBindingFlags:I

    .line 297
    iput-object p5, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mBinderAsInterface:Ljava/util/function/Function;

    .line 299
    invoke-virtual {p0}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->getJobHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mHandler:Landroid/os/Handler;

    .line 300
    new-instance v0, Landroid/permission/jarjar/android/os/HandlerExecutor;

    iget-object v1, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/permission/jarjar/android/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 301
    return-void
.end method

.method private blacklist cancelTimeout()V
    .registers 3

    .line 475
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;, "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl<TI;>;"
    iget-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mTimeoutDisconnect:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 476
    return-void
.end method

.method static blacklist castOrNull(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<BASE:",
            "Ljava/lang/Object;",
            "T:TBASE;>(TBASE;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 491
    .local p0, "instance":Ljava/lang/Object;, "TBASE;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, p0

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0
.end method

.method private blacklist dispatchOnBinderDied()V
    .registers 2

    .line 666
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;, "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl<TI;>;"
    iget-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mServiceLifecycleCallbacks:Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;

    .line 667
    .local v0, "serviceLifecycleCallbacks":Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;, "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks<TI;>;"
    if-eqz v0, :cond_7

    .line 668
    invoke-interface {v0}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;->onBinderDied()V

    .line 670
    :cond_7
    return-void
.end method

.method private blacklist dispatchOnServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V
    .registers 4
    .param p2, "isConnected"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;Z)V"
        }
    .end annotation

    .line 373
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;, "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl<TI;>;"
    .local p1, "service":Landroid/os/IInterface;, "TI;"
    iget-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mServiceLifecycleCallbacks:Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;

    .line 374
    .local v0, "serviceLifecycleCallbacks":Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;, "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks<TI;>;"
    if-eqz v0, :cond_d

    .line 375
    if-eqz p2, :cond_a

    .line 376
    invoke-interface {v0, p1}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;->onConnected(Landroid/os/IInterface;)V

    goto :goto_d

    .line 378
    :cond_a
    invoke-interface {v0, p1}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;->onDisconnected(Landroid/os/IInterface;)V

    .line 381
    :cond_d
    :goto_d
    invoke-virtual {p0, p1, p2}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->onServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V

    .line 382
    return-void
.end method

.method private blacklist enqueue(Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl<",
            "TI;>.CompletionAwareJob<TI;*>;)V"
        }
    .end annotation

    .line 436
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;, "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl<TI;>;"
    .local p1, "task":Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;, "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl<TI;>.CompletionAwareJob<TI;*>;"
    invoke-direct {p0, p1}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->enqueue(Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Job;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 437
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to post a job to handler. Likely "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mHandler:Landroid/os/Handler;

    .line 439
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is exiting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 437
    invoke-virtual {p1, v0}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 441
    :cond_2d
    return-void
.end method

.method private blacklist enqueue(Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Job;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Job<",
            "TI;*>;)Z"
        }
    .end annotation

    .line 444
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;, "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl<TI;>;"
    .local p1, "job":Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Job;, "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Job<TI;*>;"
    invoke-direct {p0}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->cancelTimeout()V

    .line 445
    iget-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl$$ExternalSyntheticLambda0;-><init>(Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Job;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method private blacklist isBound()Z
    .registers 2

    .line 546
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;, "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl<TI;>;"
    iget-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method static synthetic blacklist lambda$connect$0(Landroid/os/IInterface;)Landroid/os/IInterface;
    .registers 1
    .param p0, "s"    # Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 424
    return-object p0
.end method

.method private synthetic blacklist lambda$enqueue$1(Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Job;)V
    .registers 2
    .param p1, "job"    # Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Job;

    .line 445
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;, "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl<TI;>;"
    invoke-virtual {p0, p1}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->enqueueJobThread(Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Job;)V

    return-void
.end method

.method private blacklist logTrace()V
    .registers 4

    .line 736
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;, "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl<TI;>;"
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "ServiceConnector.Impl"

    const-string v2, "See stacktrace"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 737
    return-void
.end method

.method private blacklist maybeScheduleUnbindTimeout()V
    .registers 2

    .line 528
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;, "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl<TI;>;"
    iget-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mUnfinishedJobs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 529
    invoke-direct {p0}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->scheduleUnbindTimeout()V

    .line 531
    :cond_13
    return-void
.end method

.method private blacklist onTimeout()V
    .registers 1

    .line 681
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;, "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl<TI;>;"
    invoke-virtual {p0}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->unbind()V

    .line 682
    return-void
.end method

.method private blacklist processQueue()V
    .registers 6

    .line 500
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;, "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl<TI;>;"
    nop

    :goto_1
    iget-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Job;

    move-object v1, v0

    .local v1, "job":Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Job;, "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Job<TI;*>;"
    if-eqz v0, :cond_38

    .line 501
    const-class v0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    invoke-static {v1, v0}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->castOrNull(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    .line 503
    .local v0, "task":Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;
    :try_start_14
    iget-object v2, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    .line 504
    .local v2, "service":Landroid/os/IInterface;, "TI;"
    if-nez v2, :cond_19

    .line 505
    return-void

    .line 507
    :cond_19
    invoke-interface {v1, v2}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Job;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 511
    .local v3, "result":Ljava/lang/Object;
    if-eqz v0, :cond_32

    .line 512
    iget-boolean v4, v0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->mAsync:Z

    if-eqz v4, :cond_2f

    .line 513
    iget-object v4, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mUnfinishedJobs:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 514
    move-object v4, v3

    check-cast v4, Ljava/util/concurrent/CompletionStage;

    invoke-interface {v4, v0}, Ljava/util/concurrent/CompletionStage;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletionStage;

    goto :goto_32

    .line 516
    :cond_2f
    invoke-virtual {v0, v3}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->complete(Ljava/lang/Object;)Z
    :try_end_32
    .catchall {:try_start_14 .. :try_end_32} :catchall_33

    .line 521
    .end local v2    # "service":Landroid/os/IInterface;, "TI;"
    .end local v3    # "result":Ljava/lang/Object;
    :cond_32
    :goto_32
    goto :goto_37

    .line 519
    :catchall_33
    move-exception v2

    .line 520
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v1, v2}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->completeExceptionally(Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Job;Ljava/lang/Throwable;)V

    .line 522
    .end local v0    # "task":Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_37
    goto :goto_1

    .line 524
    :cond_38
    invoke-direct {p0}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->maybeScheduleUnbindTimeout()V

    .line 525
    return-void
.end method

.method private blacklist scheduleUnbindTimeout()V
    .registers 5

    .line 537
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;, "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl<TI;>;"
    invoke-virtual {p0}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->getAutoDisconnectTimeoutMs()J

    move-result-wide v0

    .line 538
    .local v0, "timeout":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_11

    .line 539
    iget-object v2, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mTimeoutDisconnect:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 543
    :cond_11
    return-void
.end method

.method private blacklist stateToString()Ljava/lang/String;
    .registers 2

    .line 724
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;, "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl<TI;>;"
    iget-boolean v0, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mBinding:Z

    if-eqz v0, :cond_7

    .line 725
    const-string v0, "Binding..."

    return-object v0

    .line 726
    :cond_7
    iget-boolean v0, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mUnbinding:Z

    if-eqz v0, :cond_e

    .line 727
    const-string v0, "Unbinding..."

    return-object v0

    .line 728
    :cond_e
    invoke-direct {p0}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->isBound()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 729
    const-string v0, "Bound"

    return-object v0

    .line 731
    :cond_17
    const-string v0, "Unbound"

    return-object v0
.end method


# virtual methods
.method protected blacklist bindService(Landroid/content/ServiceConnection;)Z
    .registers 6
    .param p1, "serviceConnection"    # Landroid/content/ServiceConnection;

    .line 343
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;, "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl<TI;>;"
    iget-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mIntent:Landroid/content/Intent;

    iget v2, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mBindingFlags:I

    or-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/content/Context;->bindService(Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z

    move-result v0

    return v0
.end method

.method protected blacklist binderAsInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 3
    .param p1, "service"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TI;"
        }
    .end annotation

    .line 356
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;, "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl<TI;>;"
    iget-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mBinderAsInterface:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;

    return-object v0
.end method

.method public whitelist binderDied()V
    .registers 2

    .line 660
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;, "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl<TI;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    .line 661
    invoke-virtual {p0}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->unbind()V

    .line 662
    invoke-direct {p0}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->dispatchOnBinderDied()V

    .line 663
    return-void
.end method

.method protected blacklist cancelPendingJobs()V
    .registers 4

    .line 602
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;, "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl<TI;>;"
    nop

    :goto_1
    iget-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Job;

    move-object v1, v0

    .local v1, "job":Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Job;, "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Job<TI;*>;"
    if-eqz v0, :cond_1b

    .line 606
    const-class v0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    invoke-static {v1, v0}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->castOrNull(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    .line 607
    .local v0, "task":Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;
    if-eqz v0, :cond_1a

    .line 608
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->cancel(Z)Z

    .line 610
    .end local v0    # "task":Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;
    :cond_1a
    goto :goto_1

    .line 611
    :cond_1b
    return-void
.end method

.method blacklist completeExceptionally(Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Job;Ljava/lang/Throwable;)V
    .registers 7
    .param p2, "ex"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Job<",
            "**>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 479
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;, "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl<TI;>;"
    .local p1, "job":Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Job;, "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Job<**>;"
    const-class v0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    invoke-static {p1, v0}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->castOrNull(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    .line 480
    .local v0, "task":Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;
    const/4 v1, 0x0

    .line 481
    .local v1, "taskChanged":Z
    if-eqz v0, :cond_f

    .line 482
    invoke-virtual {v0, p2}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->completeExceptionally(Ljava/lang/Throwable;)Z

    move-result v1

    .line 484
    :cond_f
    if-eqz v0, :cond_12

    goto :goto_2a

    .line 485
    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Job failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ServiceConnector.Impl"

    invoke-static {v3, v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 487
    :goto_2a
    return-void
.end method

.method public declared-synchronized blacklist connect()Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<",
            "TI;>;"
        }
    .end annotation

    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;, "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl<TI;>;"
    monitor-enter p0

    .line 422
    :try_start_1
    iget-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mServiceConnectionFutureCache:Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    if-nez v0, :cond_24

    .line 423
    new-instance v0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    invoke-direct {v0, p0}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;-><init>(Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;)V

    iput-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mServiceConnectionFutureCache:Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    .line 424
    iget-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mServiceConnectionFutureCache:Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    new-instance v1, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl$$ExternalSyntheticLambda1;-><init>()V

    iput-object v1, v0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->mDelegate:Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Job;

    .line 425
    iget-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    .line 426
    .local v0, "service":Landroid/os/IInterface;, "TI;"
    if-eqz v0, :cond_1f

    .line 427
    iget-object v1, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mServiceConnectionFutureCache:Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    invoke-virtual {v1, v0}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->complete(Ljava/lang/Object;)Z

    goto :goto_24

    .line 429
    .end local p0    # "this":Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;, "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl<TI;>;"
    :cond_1f
    iget-object v1, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mServiceConnectionFutureCache:Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    invoke-direct {p0, v1}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->enqueue(Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;)V

    .line 432
    .end local v0    # "service":Landroid/os/IInterface;, "TI;"
    :cond_24
    :goto_24
    iget-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mServiceConnectionFutureCache:Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_28

    monitor-exit p0

    return-object v0

    .line 421
    :catchall_28
    move-exception v0

    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 703
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;, "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl<TI;>;"
    const-string v0, "  "

    .line 704
    .local v0, "tab":Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "ServiceConnector:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 705
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v2, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mIntent:Landroid/content/Intent;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 706
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "userId: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v2, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mContext:Landroid/content/Context;

    .line 707
    invoke-virtual {v2}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 708
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    .line 709
    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-direct {p0}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->stateToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 710
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    .line 711
    const-string v2, "Pending jobs: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v2, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 718
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    .line 719
    const-string v2, "Unfinished async jobs: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v2, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mUnfinishedJobs:Ljava/util/List;

    .line 720
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 721
    return-void
.end method

.method blacklist enqueueJobThread(Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Job;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Job<",
            "TI;*>;)V"
        }
    .end annotation

    .line 452
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;, "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl<TI;>;"
    .local p1, "job":Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Job;, "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Job<TI;*>;"
    invoke-direct {p0}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->cancelTimeout()V

    .line 453
    iget-boolean v0, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mUnbinding:Z

    if-eqz v0, :cond_23

    .line 454
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service is unbinding. Ignoring "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->completeExceptionally(Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Job;Ljava/lang/Throwable;)V

    goto :goto_7e

    .line 456
    :cond_23
    iget-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 457
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to add to queue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->completeExceptionally(Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Job;Ljava/lang/Throwable;)V

    goto :goto_7e

    .line 459
    :cond_47
    invoke-direct {p0}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->isBound()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 460
    invoke-direct {p0}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->processQueue()V

    goto :goto_7e

    .line 461
    :cond_51
    iget-boolean v0, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mBinding:Z

    if-nez v0, :cond_7e

    .line 462
    iget-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->bindService(Landroid/content/ServiceConnection;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 463
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mBinding:Z

    goto :goto_7e

    .line 465
    :cond_61
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to bind to service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->completeExceptionally(Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Job;Ljava/lang/Throwable;)V

    .line 469
    :cond_7e
    :goto_7e
    return-void
.end method

.method protected blacklist getAutoDisconnectTimeoutMs()J
    .registers 3

    .line 317
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;, "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl<TI;>;"
    const-wide/16 v0, 0x3a98

    return-wide v0
.end method

.method protected blacklist getJobHandler()Landroid/os/Handler;
    .registers 2

    .line 307
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;, "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl<TI;>;"
    iget-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method protected blacklist getRequestTimeoutMs()J
    .registers 3

    .line 330
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;, "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl<TI;>;"
    const-wide/16 v0, 0x7530

    return-wide v0
.end method

.method public whitelist onBindingDied(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 652
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;, "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl<TI;>;"
    invoke-virtual {p0}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->binderDied()V

    .line 653
    return-void
.end method

.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 8
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 615
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;, "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl<TI;>;"
    iget-boolean v0, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mUnbinding:Z

    const-string v1, "ServiceConnector.Impl"

    if-eqz v0, :cond_1d

    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring onServiceConnected due to ongoing unbinding: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    return-void

    .line 622
    :cond_1d
    invoke-virtual {p0, p2}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->binderAsInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    .line 623
    .local v0, "service":Landroid/os/IInterface;, "TI;"
    iput-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    .line 624
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mBinding:Z

    .line 626
    :try_start_26
    invoke-interface {p2, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_29} :catch_2a

    .line 629
    goto :goto_47

    .line 627
    :catch_2a
    move-exception v2

    .line 628
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onServiceConnected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 630
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_47
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->dispatchOnServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V

    .line 631
    invoke-direct {p0}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->processQueue()V

    .line 632
    return-void
.end method

.method protected blacklist onServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V
    .registers 3
    .param p2, "isConnected"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;Z)V"
        }
    .end annotation

    .line 387
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;, "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl<TI;>;"
    .local p1, "service":Landroid/os/IInterface;, "TI;"
    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 639
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;, "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl<TI;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mBinding:Z

    .line 640
    iget-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    .line 641
    .local v0, "service":Landroid/os/IInterface;, "TI;"
    if-eqz v0, :cond_e

    .line 642
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->dispatchOnServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V

    .line 643
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    .line 645
    :cond_e
    return-void
.end method

.method protected blacklist onServiceUnbound()V
    .registers 1

    .line 369
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;, "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl<TI;>;"
    return-void
.end method

.method public blacklist post(Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$VoidJob;)Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$VoidJob<",
            "TI;>;)",
            "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 400
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;, "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl<TI;>;"
    .local p1, "job":Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$VoidJob;, "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$VoidJob<TI;>;"
    invoke-virtual {p0, p1}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->postForResult(Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Job;)Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    move-result-object v0

    return-object v0
.end method

.method public blacklist postAsync(Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Job;)Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Job<",
            "TI;",
            "Ljava/util/concurrent/CompletableFuture<",
            "TR;>;>;)",
            "Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture<",
            "TR;>;"
        }
    .end annotation

    .line 413
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;, "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl<TI;>;"
    .local p1, "job":Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Job;, "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Job<TI;Ljava/util/concurrent/CompletableFuture<TR;>;>;"
    new-instance v0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    invoke-direct {v0, p0}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;-><init>(Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;)V

    .line 414
    .local v0, "task":Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;, "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl<TI;>.CompletionAwareJob<TI;TR;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Job;

    iput-object v1, v0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->mDelegate:Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Job;

    .line 415
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->mAsync:Z

    .line 416
    invoke-direct {p0, v0}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->enqueue(Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;)V

    .line 417
    return-object v0
.end method

.method public bridge synthetic blacklist postForResult(Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Job;)Landroid/permission/jarjar/com/android/internal/infra/AndroidFuture;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 245
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;, "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl<TI;>;"
    invoke-virtual {p0, p1}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->postForResult(Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Job;)Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    move-result-object p1

    return-object p1
.end method

.method public blacklist postForResult(Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Job;)Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Job<",
            "TI;TR;>;)",
            "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl<",
            "TI;>.CompletionAwareJob<TI;TR;>;"
        }
    .end annotation

    .line 405
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;, "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl<TI;>;"
    .local p1, "job":Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Job;, "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Job<TI;TR;>;"
    new-instance v0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    invoke-direct {v0, p0}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;-><init>(Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;)V

    .line 406
    .local v0, "task":Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;, "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl<TI;>.CompletionAwareJob<TI;TR;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Job;

    iput-object v1, v0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->mDelegate:Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Job;

    .line 407
    invoke-direct {p0, v0}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->enqueue(Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;)V

    .line 408
    return-object v0
.end method

.method public whitelist test-api run()V
    .registers 1

    .line 674
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;, "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl<TI;>;"
    invoke-direct {p0}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->onTimeout()V

    .line 675
    return-void
.end method

.method public blacklist run(Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$VoidJob;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$VoidJob<",
            "TI;>;)Z"
        }
    .end annotation

    .line 395
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;, "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl<TI;>;"
    .local p1, "job":Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$VoidJob;, "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$VoidJob<TI;>;"
    invoke-direct {p0, p1}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->enqueue(Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Job;)Z

    move-result v0

    return v0
.end method

.method public blacklist setServiceLifecycleCallbacks(Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks<",
            "TI;>;)V"
        }
    .end annotation

    .line 560
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;, "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl<TI;>;"
    .local p1, "callbacks":Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;, "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks<TI;>;"
    iput-object p1, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mServiceLifecycleCallbacks:Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;

    .line 561
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 686
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;, "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl<TI;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ServiceConnector@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 687
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    rem-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mIntent:Landroid/content/Intent;

    .line 688
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 689
    const-string v1, ")["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->stateToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 690
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    const-string v2, ", "

    if-nez v1, :cond_5c

    .line 691
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " pending job(s)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    :cond_5c
    iget-object v1, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mUnfinishedJobs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_77

    .line 697
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mUnfinishedJobs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unfinished async job(s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    :cond_77
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist unbind()V
    .registers 3

    .line 554
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;, "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl<TI;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mUnbinding:Z

    .line 555
    iget-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl$$ExternalSyntheticLambda2;-><init>(Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 556
    return-void
.end method

.method blacklist unbindJobThread()V
    .registers 9

    .line 564
    .local p0, "this":Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;, "Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl<TI;>;"
    invoke-direct {p0}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->cancelTimeout()V

    .line 565
    iget-object v0, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    .line 569
    .local v0, "service":Landroid/os/IInterface;, "TI;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    move v3, v1

    goto :goto_c

    :cond_b
    move v3, v2

    .line 570
    .local v3, "wasBound":Z
    :goto_c
    if-nez v3, :cond_12

    iget-boolean v4, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mBinding:Z

    if-eqz v4, :cond_33

    .line 572
    :cond_12
    :try_start_12
    iget-object v4, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_19} :catch_1a

    .line 577
    goto :goto_33

    .line 573
    :catch_1a
    move-exception v4

    .line 576
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "ServiceConnector.Impl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to unbind: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :cond_33
    :goto_33
    const/4 v4, 0x0

    if-eqz v3, :cond_42

    .line 580
    invoke-direct {p0, v0, v2}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->dispatchOnServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V

    .line 581
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v5, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 582
    iput-object v4, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    .line 584
    :cond_42
    iput-boolean v2, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mBinding:Z

    .line 585
    iput-boolean v2, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mUnbinding:Z

    .line 586
    monitor-enter p0

    .line 587
    :try_start_47
    iget-object v2, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mServiceConnectionFutureCache:Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    if-eqz v2, :cond_52

    .line 588
    iget-object v2, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mServiceConnectionFutureCache:Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    invoke-virtual {v2, v1}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->cancel(Z)Z

    .line 589
    iput-object v4, p0, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->mServiceConnectionFutureCache:Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    .line 591
    :cond_52
    monitor-exit p0
    :try_end_53
    .catchall {:try_start_47 .. :try_end_53} :catchall_5c

    .line 593
    invoke-virtual {p0}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->cancelPendingJobs()V

    .line 595
    if-eqz v3, :cond_5b

    .line 596
    invoke-virtual {p0}, Landroid/permission/jarjar/com/android/internal/infra/ServiceConnector$Impl;->onServiceUnbound()V

    .line 598
    :cond_5b
    return-void

    .line 591
    :catchall_5c
    move-exception v1

    :try_start_5d
    monitor-exit p0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw v1
.end method
