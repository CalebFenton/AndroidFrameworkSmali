.class final Ljava/util/concurrent/ForkJoinTask$RunnableExecuteAction;
.super Ljava/util/concurrent/ForkJoinTask;
.source "ForkJoinTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ForkJoinTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RunnableExecuteAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ForkJoinTask<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x489d6925990d6e4eL


# instance fields
.field final greylist-max-o runnable:Ljava/lang/Runnable;


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 1422
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;-><init>()V

    .line 1423
    if-eqz p1, :cond_8

    .line 1424
    iput-object p1, p0, Ljava/util/concurrent/ForkJoinTask$RunnableExecuteAction;->runnable:Ljava/lang/Runnable;

    .line 1425
    return-void

    .line 1423
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final whitelist test-api exec()Z
    .registers 2

    .line 1428
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinTask$RunnableExecuteAction;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic whitelist test-api getRawResult()Ljava/lang/Object;
    .registers 2

    .line 1419
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask$RunnableExecuteAction;->getRawResult()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist getRawResult()Ljava/lang/Void;
    .registers 2

    .line 1426
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api setRawResult(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1419
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ForkJoinTask$RunnableExecuteAction;->setRawResult(Ljava/lang/Void;)V

    return-void
.end method

.method public final greylist-max-o setRawResult(Ljava/lang/Void;)V
    .registers 2
    .param p1, "v"    # Ljava/lang/Void;

    .line 1427
    return-void
.end method

.method blacklist trySetException(Ljava/lang/Throwable;)I
    .registers 6
    .param p1, "ex"    # Ljava/lang/Throwable;

    .line 1431
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ForkJoinTask$RunnableExecuteAction;->trySetThrown(Ljava/lang/Throwable;)I

    move-result v0

    move v1, v0

    .local v1, "s":I
    invoke-static {v0}, Ljava/util/concurrent/ForkJoinTask$RunnableExecuteAction;->isExceptionalStatus(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1432
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    move-object v2, v0

    .line 1433
    .local v2, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    move-object v3, v0

    .local v3, "h":Ljava/lang/Thread$UncaughtExceptionHandler;
    if-eqz v0, :cond_1c

    .line 1435
    :try_start_17
    invoke-interface {v3, v2, p1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1b

    .line 1437
    goto :goto_1c

    .line 1436
    :catchall_1b
    move-exception v0

    .line 1439
    .end local v2    # "t":Ljava/lang/Thread;
    .end local v3    # "h":Ljava/lang/Thread$UncaughtExceptionHandler;
    :cond_1c
    :goto_1c
    return v1
.end method
