.class abstract Landroid/accounts/AccountManager$Future2Task;
.super Landroid/accounts/AccountManager$BaseFutureTask;
.source "AccountManager.java"

# interfaces
.implements Landroid/accounts/AccountManagerFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/AccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Future2Task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/accounts/AccountManager$BaseFutureTask",
        "<TT;>;",
        "Landroid/accounts/AccountManagerFuture",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final mCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/accounts/AccountManager;


# direct methods
.method public constructor <init>(Landroid/accounts/AccountManager;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/accounts/AccountManager;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Landroid/accounts/AccountManagerCallback",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2060
    .local p0, "this":Landroid/accounts/AccountManager$Future2Task;, "Landroid/accounts/AccountManager$Future2Task<TT;>;"
    .local p3, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<TT;>;"
    iput-object p1, p0, Landroid/accounts/AccountManager$Future2Task;->this$0:Landroid/accounts/AccountManager;

    #@2
    .line 2061
    invoke-direct {p0, p1, p2}, Landroid/accounts/AccountManager$BaseFutureTask;-><init>(Landroid/accounts/AccountManager;Landroid/os/Handler;)V

    #@5
    .line 2062
    iput-object p3, p0, Landroid/accounts/AccountManager$Future2Task;->mCallback:Landroid/accounts/AccountManagerCallback;

    #@7
    .line 2060
    return-void
.end method

.method private internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 9
    .param p1, "timeout"    # Ljava/lang/Long;
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/accounts/AccountManager$Future2Task;, "Landroid/accounts/AccountManager$Future2Task<TT;>;"
    const/4 v8, 0x1

    #@1
    .line 2082
    invoke-virtual {p0}, Landroid/accounts/AccountManager$Future2Task;->isDone()Z

    #@4
    move-result v5

    #@5
    if-nez v5, :cond_0

    #@7
    .line 2083
    iget-object v5, p0, Landroid/accounts/AccountManager$Future2Task;->this$0:Landroid/accounts/AccountManager;

    #@9
    invoke-static {v5}, Landroid/accounts/AccountManager;->-wrap1(Landroid/accounts/AccountManager;)V

    #@c
    .line 2086
    :cond_0
    if-nez p1, :cond_1

    #@e
    .line 2087
    :try_start_0
    invoke-virtual {p0}, Landroid/accounts/AccountManager$Future2Task;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    move-result-object v5

    #@12
    .line 2113
    invoke-virtual {p0, v8}, Landroid/accounts/AccountManager$Future2Task;->cancel(Z)Z

    #@15
    .line 2087
    return-object v5

    #@16
    .line 2089
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    #@19
    move-result-wide v6

    #@1a
    invoke-virtual {p0, v6, v7, p2}, Landroid/accounts/AccountManager$Future2Task;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    move-result-object v5

    #@1e
    .line 2113
    invoke-virtual {p0, v8}, Landroid/accounts/AccountManager$Future2Task;->cancel(Z)Z

    #@21
    .line 2089
    return-object v5

    #@22
    .line 2097
    :catch_0
    move-exception v3

    #@23
    .line 2098
    .local v3, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_2
    invoke-virtual {v3}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    #@26
    move-result-object v0

    #@27
    .line 2099
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v5, v0, Ljava/io/IOException;

    #@29
    if-eqz v5, :cond_2

    #@2b
    .line 2100
    check-cast v0, Ljava/io/IOException;

    #@2d
    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2e
    .line 2112
    .end local v3    # "e":Ljava/util/concurrent/ExecutionException;
    :catchall_0
    move-exception v5

    #@2f
    .line 2113
    invoke-virtual {p0, v8}, Landroid/accounts/AccountManager$Future2Task;->cancel(Z)Z

    #@32
    .line 2112
    throw v5

    #@33
    .line 2101
    .restart local v0    # "cause":Ljava/lang/Throwable;
    .restart local v3    # "e":Ljava/util/concurrent/ExecutionException;
    :cond_2
    :try_start_3
    instance-of v5, v0, Ljava/lang/UnsupportedOperationException;

    #@35
    if-eqz v5, :cond_3

    #@37
    .line 2102
    new-instance v5, Landroid/accounts/AuthenticatorException;

    #@39
    invoke-direct {v5, v0}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/Throwable;)V

    #@3c
    throw v5

    #@3d
    .line 2103
    :cond_3
    instance-of v5, v0, Landroid/accounts/AuthenticatorException;

    #@3f
    if-eqz v5, :cond_4

    #@41
    .line 2104
    check-cast v0, Landroid/accounts/AuthenticatorException;

    #@43
    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    #@44
    .line 2105
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_4
    instance-of v5, v0, Ljava/lang/RuntimeException;

    #@46
    if-eqz v5, :cond_5

    #@48
    .line 2106
    check-cast v0, Ljava/lang/RuntimeException;

    #@4a
    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    #@4b
    .line 2107
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_5
    instance-of v5, v0, Ljava/lang/Error;

    #@4d
    if-eqz v5, :cond_6

    #@4f
    .line 2108
    check-cast v0, Ljava/lang/Error;

    #@51
    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    #@52
    .line 2110
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_6
    new-instance v5, Ljava/lang/IllegalStateException;

    #@54
    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    #@57
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@58
    .line 2095
    .end local v0    # "cause":Ljava/lang/Throwable;
    .end local v3    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v2

    #@59
    .line 2113
    .local v2, "e":Ljava/util/concurrent/CancellationException;
    invoke-virtual {p0, v8}, Landroid/accounts/AccountManager$Future2Task;->cancel(Z)Z

    #@5c
    .line 2115
    .end local v2    # "e":Ljava/util/concurrent/CancellationException;
    :goto_0
    new-instance v5, Landroid/accounts/OperationCanceledException;

    #@5e
    invoke-direct {v5}, Landroid/accounts/OperationCanceledException;-><init>()V

    #@61
    throw v5

    #@62
    .line 2093
    :catch_2
    move-exception v4

    #@63
    .line 2113
    .local v4, "e":Ljava/util/concurrent/TimeoutException;
    invoke-virtual {p0, v8}, Landroid/accounts/AccountManager$Future2Task;->cancel(Z)Z

    #@66
    goto :goto_0

    #@67
    .line 2091
    .end local v4    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_3
    move-exception v1

    #@68
    .line 2113
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {p0, v8}, Landroid/accounts/AccountManager$Future2Task;->cancel(Z)Z

    #@6b
    goto :goto_0
.end method


# virtual methods
.method protected done()V
    .locals 1

    #@0
    .prologue
    .line 2066
    .local p0, "this":Landroid/accounts/AccountManager$Future2Task;, "Landroid/accounts/AccountManager$Future2Task<TT;>;"
    iget-object v0, p0, Landroid/accounts/AccountManager$Future2Task;->mCallback:Landroid/accounts/AccountManagerCallback;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2067
    new-instance v0, Landroid/accounts/AccountManager$Future2Task$1;

    #@6
    invoke-direct {v0, p0}, Landroid/accounts/AccountManager$Future2Task$1;-><init>(Landroid/accounts/AccountManager$Future2Task;)V

    #@9
    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager$Future2Task;->postRunnableToHandler(Ljava/lang/Runnable;)V

    #@c
    .line 2065
    :cond_0
    return-void
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/accounts/AccountManager$Future2Task;, "Landroid/accounts/AccountManager$Future2Task<TT;>;"
    const/4 v0, 0x0

    #@1
    .line 2120
    invoke-direct {p0, v0, v0}, Landroid/accounts/AccountManager$Future2Task;->internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 2125
    .local p0, "this":Landroid/accounts/AccountManager$Future2Task;, "Landroid/accounts/AccountManager$Future2Task<TT;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p3}, Landroid/accounts/AccountManager$Future2Task;->internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public start()Landroid/accounts/AccountManager$Future2Task;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/accounts/AccountManager$Future2Task",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2076
    .local p0, "this":Landroid/accounts/AccountManager$Future2Task;, "Landroid/accounts/AccountManager$Future2Task<TT;>;"
    invoke-virtual {p0}, Landroid/accounts/AccountManager$Future2Task;->startTask()V

    #@3
    .line 2077
    return-object p0
.end method
