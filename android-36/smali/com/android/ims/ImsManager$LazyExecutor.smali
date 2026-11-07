.class Lcom/android/ims/ImsManager$LazyExecutor;
.super Ljava/lang/Object;
.source "ImsManager.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyExecutor"
.end annotation


# instance fields
.field private blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/ims/ImsManager-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/ims/ImsManager$LazyExecutor;-><init>()V

    return-void
.end method

.method private declared-synchronized blacklist startExecutorIfNeeded()V
    .registers 2

    monitor-enter p0

    .line 243
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsManager$LazyExecutor;->mExecutor:Ljava/util/concurrent/Executor;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    .line 244
    :cond_7
    :try_start_7
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/ImsManager$LazyExecutor;->mExecutor:Ljava/util/concurrent/Executor;
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_f

    .line 245
    monitor-exit p0

    return-void

    .line 242
    .end local p0    # "this":Lcom/android/ims/ImsManager$LazyExecutor;
    :catchall_f
    move-exception v0

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v0
.end method


# virtual methods
.method public whitelist test-api execute(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 238
    invoke-direct {p0}, Lcom/android/ims/ImsManager$LazyExecutor;->startExecutorIfNeeded()V

    .line 239
    iget-object v0, p0, Lcom/android/ims/ImsManager$LazyExecutor;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 240
    return-void
.end method
