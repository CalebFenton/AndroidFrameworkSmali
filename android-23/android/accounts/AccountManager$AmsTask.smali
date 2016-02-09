.class abstract Landroid/accounts/AccountManager$AmsTask;
.super Ljava/util/concurrent/FutureTask;
.source "AccountManager.java"

# interfaces
.implements Landroid/accounts/AccountManagerFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/AccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AmsTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accounts/AccountManager$AmsTask$Response;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<",
        "Landroid/os/Bundle;",
        ">;",
        "Landroid/accounts/AccountManagerFuture",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final mActivity:Landroid/app/Activity;

.field final mCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field final mHandler:Landroid/os/Handler;

.field final mResponse:Landroid/accounts/IAccountManagerResponse;

.field final synthetic this$0:Landroid/accounts/AccountManager;


# direct methods
.method static synthetic -wrap0(Landroid/accounts/AccountManager$AmsTask;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Landroid/accounts/AccountManager$AmsTask;->setException(Ljava/lang/Throwable;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;)V
    .locals 2
    .param p1, "this$0"    # Landroid/accounts/AccountManager;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/os/Handler;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1873
    .local p4, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    iput-object p1, p0, Landroid/accounts/AccountManager$AmsTask;->this$0:Landroid/accounts/AccountManager;

    #@2
    .line 1874
    new-instance v0, Landroid/accounts/AccountManager$AmsTask$1;

    #@4
    invoke-direct {v0, p1}, Landroid/accounts/AccountManager$AmsTask$1;-><init>(Landroid/accounts/AccountManager;)V

    #@7
    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    #@a
    .line 1880
    iput-object p3, p0, Landroid/accounts/AccountManager$AmsTask;->mHandler:Landroid/os/Handler;

    #@c
    .line 1881
    iput-object p4, p0, Landroid/accounts/AccountManager$AmsTask;->mCallback:Landroid/accounts/AccountManagerCallback;

    #@e
    .line 1882
    iput-object p2, p0, Landroid/accounts/AccountManager$AmsTask;->mActivity:Landroid/app/Activity;

    #@10
    .line 1883
    new-instance v0, Landroid/accounts/AccountManager$AmsTask$Response;

    #@12
    const/4 v1, 0x0

    #@13
    invoke-direct {v0, p0, v1}, Landroid/accounts/AccountManager$AmsTask$Response;-><init>(Landroid/accounts/AccountManager$AmsTask;Landroid/accounts/AccountManager$AmsTask$Response;)V

    #@16
    iput-object v0, p0, Landroid/accounts/AccountManager$AmsTask;->mResponse:Landroid/accounts/IAccountManagerResponse;

    #@18
    .line 1873
    return-void
.end method

.method private internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Landroid/os/Bundle;
    .locals 9
    .param p1, "timeout"    # Ljava/lang/Long;
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    .line 1909
    invoke-virtual {p0}, Landroid/accounts/AccountManager$AmsTask;->isDone()Z

    #@4
    move-result v5

    #@5
    if-nez v5, :cond_0

    #@7
    .line 1910
    iget-object v5, p0, Landroid/accounts/AccountManager$AmsTask;->this$0:Landroid/accounts/AccountManager;

    #@9
    invoke-static {v5}, Landroid/accounts/AccountManager;->-wrap1(Landroid/accounts/AccountManager;)V

    #@c
    .line 1913
    :cond_0
    if-nez p1, :cond_1

    #@e
    .line 1914
    :try_start_0
    invoke-virtual {p0}, Landroid/accounts/AccountManager$AmsTask;->get()Ljava/lang/Object;

    #@11
    move-result-object v5

    #@12
    check-cast v5, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 1940
    invoke-virtual {p0, v8}, Landroid/accounts/AccountManager$AmsTask;->cancel(Z)Z

    #@17
    .line 1914
    return-object v5

    #@18
    .line 1916
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    #@1b
    move-result-wide v6

    #@1c
    invoke-virtual {p0, v6, v7, p2}, Landroid/accounts/AccountManager$AmsTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    #@1f
    move-result-object v5

    #@20
    check-cast v5, Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    .line 1940
    invoke-virtual {p0, v8}, Landroid/accounts/AccountManager$AmsTask;->cancel(Z)Z

    #@25
    .line 1916
    return-object v5

    #@26
    .line 1924
    :catch_0
    move-exception v3

    #@27
    .line 1925
    .local v3, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_2
    invoke-virtual {v3}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    #@2a
    move-result-object v0

    #@2b
    .line 1926
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v5, v0, Ljava/io/IOException;

    #@2d
    if-eqz v5, :cond_2

    #@2f
    .line 1927
    check-cast v0, Ljava/io/IOException;

    #@31
    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@32
    .line 1939
    .end local v3    # "e":Ljava/util/concurrent/ExecutionException;
    :catchall_0
    move-exception v5

    #@33
    .line 1940
    invoke-virtual {p0, v8}, Landroid/accounts/AccountManager$AmsTask;->cancel(Z)Z

    #@36
    .line 1939
    throw v5

    #@37
    .line 1928
    .restart local v0    # "cause":Ljava/lang/Throwable;
    .restart local v3    # "e":Ljava/util/concurrent/ExecutionException;
    :cond_2
    :try_start_3
    instance-of v5, v0, Ljava/lang/UnsupportedOperationException;

    #@39
    if-eqz v5, :cond_3

    #@3b
    .line 1929
    new-instance v5, Landroid/accounts/AuthenticatorException;

    #@3d
    invoke-direct {v5, v0}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/Throwable;)V

    #@40
    throw v5

    #@41
    .line 1930
    :cond_3
    instance-of v5, v0, Landroid/accounts/AuthenticatorException;

    #@43
    if-eqz v5, :cond_4

    #@45
    .line 1931
    check-cast v0, Landroid/accounts/AuthenticatorException;

    #@47
    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    #@48
    .line 1932
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_4
    instance-of v5, v0, Ljava/lang/RuntimeException;

    #@4a
    if-eqz v5, :cond_5

    #@4c
    .line 1933
    check-cast v0, Ljava/lang/RuntimeException;

    #@4e
    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    #@4f
    .line 1934
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_5
    instance-of v5, v0, Ljava/lang/Error;

    #@51
    if-eqz v5, :cond_6

    #@53
    .line 1935
    check-cast v0, Ljava/lang/Error;

    #@55
    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    #@56
    .line 1937
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_6
    new-instance v5, Ljava/lang/IllegalStateException;

    #@58
    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    #@5b
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@5c
    .line 1922
    .end local v0    # "cause":Ljava/lang/Throwable;
    .end local v3    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v1

    #@5d
    .line 1940
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {p0, v8}, Landroid/accounts/AccountManager$AmsTask;->cancel(Z)Z

    #@60
    .line 1942
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_0
    new-instance v5, Landroid/accounts/OperationCanceledException;

    #@62
    invoke-direct {v5}, Landroid/accounts/OperationCanceledException;-><init>()V

    #@65
    throw v5

    #@66
    .line 1920
    :catch_2
    move-exception v4

    #@67
    .line 1940
    .local v4, "e":Ljava/util/concurrent/TimeoutException;
    invoke-virtual {p0, v8}, Landroid/accounts/AccountManager$AmsTask;->cancel(Z)Z

    #@6a
    goto :goto_0

    #@6b
    .line 1918
    .end local v4    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_3
    move-exception v2

    #@6c
    .line 1919
    .local v2, "e":Ljava/util/concurrent/CancellationException;
    :try_start_4
    new-instance v5, Landroid/accounts/OperationCanceledException;

    #@6e
    invoke-direct {v5}, Landroid/accounts/OperationCanceledException;-><init>()V

    #@71
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method


# virtual methods
.method public abstract doWork()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method protected done()V
    .locals 3

    #@0
    .prologue
    .line 1956
    iget-object v0, p0, Landroid/accounts/AccountManager$AmsTask;->mCallback:Landroid/accounts/AccountManagerCallback;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1957
    iget-object v0, p0, Landroid/accounts/AccountManager$AmsTask;->this$0:Landroid/accounts/AccountManager;

    #@6
    iget-object v1, p0, Landroid/accounts/AccountManager$AmsTask;->mHandler:Landroid/os/Handler;

    #@8
    iget-object v2, p0, Landroid/accounts/AccountManager$AmsTask;->mCallback:Landroid/accounts/AccountManagerCallback;

    #@a
    invoke-static {v0, v1, v2, p0}, Landroid/accounts/AccountManager;->-wrap2(Landroid/accounts/AccountManager;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/AccountManagerFuture;)V

    #@d
    .line 1955
    :cond_0
    return-void
.end method

.method public getResult()Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1947
    invoke-direct {p0, v0, v0}, Landroid/accounts/AccountManager$AmsTask;->internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Landroid/os/Bundle;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getResult(JLjava/util/concurrent/TimeUnit;)Landroid/os/Bundle;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 1952
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p3}, Landroid/accounts/AccountManager$AmsTask;->internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Landroid/os/Bundle;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public bridge synthetic getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 1945
    invoke-virtual {p0}, Landroid/accounts/AccountManager$AmsTask;->getResult()Landroid/os/Bundle;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 1950
    invoke-virtual {p0, p1, p2, p3}, Landroid/accounts/AccountManager$AmsTask;->getResult(JLjava/util/concurrent/TimeUnit;)Landroid/os/Bundle;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected set(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1899
    if-nez p1, :cond_0

    #@2
    .line 1900
    const-string/jumbo v0, "AccountManager"

    #@5
    const-string/jumbo v1, "the bundle must not be null"

    #@8
    new-instance v2, Ljava/lang/Exception;

    #@a
    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    #@d
    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    .line 1902
    :cond_0
    invoke-super {p0, p1}, Ljava/util/concurrent/FutureTask;->set(Ljava/lang/Object;)V

    #@13
    .line 1895
    return-void
.end method

.method protected bridge synthetic set(Ljava/lang/Object;)V
    .locals 0
    .param p1, "bundle"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1895
    check-cast p1, Landroid/os/Bundle;

    #@2
    .end local p1    # "bundle":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/accounts/AccountManager$AmsTask;->set(Landroid/os/Bundle;)V

    #@5
    return-void
.end method

.method public final start()Landroid/accounts/AccountManagerFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1888
    :try_start_0
    invoke-virtual {p0}, Landroid/accounts/AccountManager$AmsTask;->doWork()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 1892
    :goto_0
    return-object p0

    #@4
    .line 1889
    :catch_0
    move-exception v0

    #@5
    .line 1890
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager$AmsTask;->setException(Ljava/lang/Throwable;)V

    #@8
    goto :goto_0
.end method
