.class public Landroid/os/SynchronousResultReceiver;
.super Landroid/os/ResultReceiver;
.source "SynchronousResultReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/SynchronousResultReceiver$Result;
    }
.end annotation


# instance fields
.field private final mFuture:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Landroid/os/SynchronousResultReceiver$Result;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 48
    const/4 v0, 0x0

    #@1
    check-cast v0, Landroid/os/Handler;

    #@3
    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    #@6
    .line 45
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    #@8
    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    #@b
    iput-object v0, p0, Landroid/os/SynchronousResultReceiver;->mFuture:Ljava/util/concurrent/CompletableFuture;

    #@d
    .line 47
    return-void
.end method


# virtual methods
.method public awaitResult(J)Landroid/os/SynchronousResultReceiver$Result;
    .locals 7
    .param p1, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    #@0
    .prologue
    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v4

    #@4
    add-long v0, v4, p1

    #@6
    .line 65
    .local v0, "deadline":J
    :goto_0
    const-wide/16 v4, 0x0

    #@8
    cmp-long v4, p1, v4

    #@a
    if-ltz v4, :cond_0

    #@c
    .line 67
    :try_start_0
    iget-object v4, p0, Landroid/os/SynchronousResultReceiver;->mFuture:Ljava/util/concurrent/CompletableFuture;

    #@e
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@10
    invoke-virtual {v4, p1, p2, v5}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    #@13
    move-result-object v4

    #@14
    check-cast v4, Landroid/os/SynchronousResultReceiver$Result;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    return-object v4

    #@17
    .line 71
    :catch_0
    move-exception v2

    #@18
    .line 74
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@1b
    move-result-wide v4

    #@1c
    sub-long v4, v0, v4

    #@1e
    sub-long/2addr p1, v4

    #@1f
    goto :goto_0

    #@20
    .line 68
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v3

    #@21
    .line 70
    .local v3, "e":Ljava/util/concurrent/ExecutionException;
    new-instance v4, Ljava/lang/AssertionError;

    #@23
    const-string/jumbo v5, "Error receiving response"

    #@26
    invoke-direct {v4, v5, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@29
    throw v4

    #@2a
    .line 77
    .end local v3    # "e":Ljava/util/concurrent/ExecutionException;
    :cond_0
    new-instance v4, Ljava/util/concurrent/TimeoutException;

    #@2c
    invoke-direct {v4}, Ljava/util/concurrent/TimeoutException;-><init>()V

    #@2f
    throw v4
.end method

.method protected final onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 53
    invoke-super {p0, p1, p2}, Landroid/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    #@3
    .line 54
    iget-object v0, p0, Landroid/os/SynchronousResultReceiver;->mFuture:Ljava/util/concurrent/CompletableFuture;

    #@5
    new-instance v1, Landroid/os/SynchronousResultReceiver$Result;

    #@7
    invoke-direct {v1, p1, p2}, Landroid/os/SynchronousResultReceiver$Result;-><init>(ILandroid/os/Bundle;)V

    #@a
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    #@d
    .line 52
    return-void
.end method
