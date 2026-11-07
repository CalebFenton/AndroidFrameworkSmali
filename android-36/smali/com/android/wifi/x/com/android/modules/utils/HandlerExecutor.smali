.class public Lcom/android/wifi/x/com/android/modules/utils/HandlerExecutor;
.super Ljava/lang/Object;
.source "HandlerExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field private final blacklist mHandler:Landroid/os/Handler;


# direct methods
.method public constructor blacklist <init>(Landroid/os/Handler;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/Handler;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/wifi/x/com/android/modules/utils/HandlerExecutor;->mHandler:Landroid/os/Handler;

    .line 35
    return-void
.end method


# virtual methods
.method public whitelist test-api execute(Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "command"    # Ljava/lang/Runnable;

    .line 39
    iget-object v0, p0, Lcom/android/wifi/x/com/android/modules/utils/HandlerExecutor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 42
    return-void

    .line 40
    :cond_9
    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/wifi/x/com/android/modules/utils/HandlerExecutor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is shutting down"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
