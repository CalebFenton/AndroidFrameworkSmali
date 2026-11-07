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
        "Ljava/util/concurrent/FutureTask<",
        "Landroid/os/Bundle;",
        ">;",
        "Landroid/accounts/AccountManagerFuture<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final greylist-max-p mActivity:Landroid/app/Activity;

.field final greylist-max-o mCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field final greylist-max-p mHandler:Landroid/os/Handler;

.field final greylist-max-p mResponse:Landroid/accounts/IAccountManagerResponse;

.field final synthetic blacklist this$0:Landroid/accounts/AccountManager;


# direct methods
.method public constructor blacklist <init>(Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;)V
    .registers 6
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/os/Handler;",
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 2352
    .local p4, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    iput-object p1, p0, Landroid/accounts/AccountManager$AmsTask;->this$0:Landroid/accounts/AccountManager;

    .line 2353
    new-instance v0, Landroid/accounts/AccountManager$AmsTask$1;

    invoke-direct {v0, p1}, Landroid/accounts/AccountManager$AmsTask$1;-><init>(Landroid/accounts/AccountManager;)V

    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 2360
    iput-object p3, p0, Landroid/accounts/AccountManager$AmsTask;->mHandler:Landroid/os/Handler;

    .line 2361
    iput-object p4, p0, Landroid/accounts/AccountManager$AmsTask;->mCallback:Landroid/accounts/AccountManagerCallback;

    .line 2362
    iput-object p2, p0, Landroid/accounts/AccountManager$AmsTask;->mActivity:Landroid/app/Activity;

    .line 2363
    new-instance p1, Landroid/accounts/AccountManager$AmsTask$Response;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroid/accounts/AccountManager$AmsTask$Response;-><init>(Landroid/accounts/AccountManager$AmsTask;Landroid/accounts/AccountManager-IA;)V

    iput-object p1, p0, Landroid/accounts/AccountManager$AmsTask;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 2364
    return-void
.end method

.method static synthetic blacklist access$000(Landroid/accounts/AccountManager$AmsTask;Ljava/lang/Throwable;)V
    .registers 2
    .param p0, "x0"    # Landroid/accounts/AccountManager$AmsTask;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .line 2344
    invoke-virtual {p0, p1}, Landroid/accounts/AccountManager$AmsTask;->setException(Ljava/lang/Throwable;)V

    return-void
.end method

.method private greylist-max-o internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Landroid/os/Bundle;
    .registers 7
    .param p1, "timeout"    # Ljava/lang/Long;
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    .line 2390
    invoke-virtual {p0}, Landroid/accounts/AccountManager$AmsTask;->isDone()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2391
    iget-object v0, p0, Landroid/accounts/AccountManager$AmsTask;->this$0:Landroid/accounts/AccountManager;

    invoke-static {v0}, Landroid/accounts/AccountManager;->-$$Nest$mensureNotOnMainThread(Landroid/accounts/AccountManager;)V

    .line 2394
    :cond_b
    const/4 v0, 0x1

    if-nez p1, :cond_18

    .line 2395
    :try_start_e
    invoke-virtual {p0}, Landroid/accounts/AccountManager$AmsTask;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;
    :try_end_14
    .catch Ljava/util/concurrent/CancellationException; {:try_start_e .. :try_end_14} :catch_5d
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_e .. :try_end_14} :catch_5d
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_14} :catch_5d
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_e .. :try_end_14} :catch_28
    .catchall {:try_start_e .. :try_end_14} :catchall_26

    .line 2417
    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager$AmsTask;->cancel(Z)Z

    .line 2395
    return-object v1

    .line 2397
    :cond_18
    :try_start_18
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2, p2}, Landroid/accounts/AccountManager$AmsTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;
    :try_end_22
    .catch Ljava/util/concurrent/CancellationException; {:try_start_18 .. :try_end_22} :catch_5d
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_18 .. :try_end_22} :catch_5d
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_22} :catch_5d
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_18 .. :try_end_22} :catch_28
    .catchall {:try_start_18 .. :try_end_22} :catchall_26

    .line 2417
    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager$AmsTask;->cancel(Z)Z

    .line 2397
    return-object v1

    .line 2417
    :catchall_26
    move-exception v1

    goto :goto_64

    .line 2401
    :catch_28
    move-exception v1

    .line 2402
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_29
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 2403
    .local v2, "cause":Ljava/lang/Throwable;
    instance-of v3, v2, Ljava/io/IOException;

    if-nez v3, :cond_59

    .line 2405
    instance-of v3, v2, Ljava/lang/UnsupportedOperationException;

    if-nez v3, :cond_53

    .line 2407
    instance-of v3, v2, Landroid/accounts/AuthenticatorException;

    if-nez v3, :cond_4f

    .line 2409
    instance-of v3, v2, Ljava/lang/RuntimeException;

    if-nez v3, :cond_4b

    .line 2411
    instance-of v3, v2, Ljava/lang/Error;

    if-eqz v3, :cond_45

    .line 2412
    move-object v3, v2

    check-cast v3, Ljava/lang/Error;

    .end local p0    # "this":Landroid/accounts/AccountManager$AmsTask;
    .end local p1    # "timeout":Ljava/lang/Long;
    .end local p2    # "unit":Ljava/util/concurrent/TimeUnit;
    throw v3

    .line 2414
    .restart local p0    # "this":Landroid/accounts/AccountManager$AmsTask;
    .restart local p1    # "timeout":Ljava/lang/Long;
    .restart local p2    # "unit":Ljava/util/concurrent/TimeUnit;
    :cond_45
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/accounts/AccountManager$AmsTask;
    .end local p1    # "timeout":Ljava/lang/Long;
    .end local p2    # "unit":Ljava/util/concurrent/TimeUnit;
    throw v3

    .line 2410
    .restart local p0    # "this":Landroid/accounts/AccountManager$AmsTask;
    .restart local p1    # "timeout":Ljava/lang/Long;
    .restart local p2    # "unit":Ljava/util/concurrent/TimeUnit;
    :cond_4b
    move-object v3, v2

    check-cast v3, Ljava/lang/RuntimeException;

    .end local p0    # "this":Landroid/accounts/AccountManager$AmsTask;
    .end local p1    # "timeout":Ljava/lang/Long;
    .end local p2    # "unit":Ljava/util/concurrent/TimeUnit;
    throw v3

    .line 2408
    .restart local p0    # "this":Landroid/accounts/AccountManager$AmsTask;
    .restart local p1    # "timeout":Ljava/lang/Long;
    .restart local p2    # "unit":Ljava/util/concurrent/TimeUnit;
    :cond_4f
    move-object v3, v2

    check-cast v3, Landroid/accounts/AuthenticatorException;

    .end local p0    # "this":Landroid/accounts/AccountManager$AmsTask;
    .end local p1    # "timeout":Ljava/lang/Long;
    .end local p2    # "unit":Ljava/util/concurrent/TimeUnit;
    throw v3

    .line 2406
    .restart local p0    # "this":Landroid/accounts/AccountManager$AmsTask;
    .restart local p1    # "timeout":Ljava/lang/Long;
    .restart local p2    # "unit":Ljava/util/concurrent/TimeUnit;
    :cond_53
    new-instance v3, Landroid/accounts/AuthenticatorException;

    invoke-direct {v3, v2}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/accounts/AccountManager$AmsTask;
    .end local p1    # "timeout":Ljava/lang/Long;
    .end local p2    # "unit":Ljava/util/concurrent/TimeUnit;
    throw v3

    .line 2404
    .restart local p0    # "this":Landroid/accounts/AccountManager$AmsTask;
    .restart local p1    # "timeout":Ljava/lang/Long;
    .restart local p2    # "unit":Ljava/util/concurrent/TimeUnit;
    :cond_59
    move-object v3, v2

    check-cast v3, Ljava/io/IOException;

    .end local p0    # "this":Landroid/accounts/AccountManager$AmsTask;
    .end local p1    # "timeout":Ljava/lang/Long;
    .end local p2    # "unit":Ljava/util/concurrent/TimeUnit;
    throw v3

    .line 2399
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    .end local v2    # "cause":Ljava/lang/Throwable;
    .restart local p0    # "this":Landroid/accounts/AccountManager$AmsTask;
    .restart local p1    # "timeout":Ljava/lang/Long;
    .restart local p2    # "unit":Ljava/util/concurrent/TimeUnit;
    :catch_5d
    move-exception v1

    .line 2400
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Landroid/accounts/OperationCanceledException;

    invoke-direct {v2, v1}, Landroid/accounts/OperationCanceledException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/accounts/AccountManager$AmsTask;
    .end local p1    # "timeout":Ljava/lang/Long;
    .end local p2    # "unit":Ljava/util/concurrent/TimeUnit;
    throw v2
    :try_end_64
    .catchall {:try_start_29 .. :try_end_64} :catchall_26

    .line 2417
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Landroid/accounts/AccountManager$AmsTask;
    .restart local p1    # "timeout":Ljava/lang/Long;
    .restart local p2    # "unit":Ljava/util/concurrent/TimeUnit;
    :goto_64
    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager$AmsTask;->cancel(Z)Z

    .line 2418
    throw v1
.end method


# virtual methods
.method public abstract greylist-max-o doWork()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method protected whitelist test-api done()V
    .registers 4

    .line 2435
    iget-object v0, p0, Landroid/accounts/AccountManager$AmsTask;->mCallback:Landroid/accounts/AccountManagerCallback;

    if-eqz v0, :cond_d

    .line 2436
    iget-object v0, p0, Landroid/accounts/AccountManager$AmsTask;->this$0:Landroid/accounts/AccountManager;

    iget-object v1, p0, Landroid/accounts/AccountManager$AmsTask;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/accounts/AccountManager$AmsTask;->mCallback:Landroid/accounts/AccountManagerCallback;

    invoke-static {v0, v1, v2, p0}, Landroid/accounts/AccountManager;->-$$Nest$mpostToHandler(Landroid/accounts/AccountManager;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/AccountManagerFuture;)V

    .line 2438
    :cond_d
    return-void
.end method

.method public blacklist getResult()Landroid/os/Bundle;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    .line 2424
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/accounts/AccountManager$AmsTask;->internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getResult(JLjava/util/concurrent/TimeUnit;)Landroid/os/Bundle;
    .registers 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    .line 2430
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Landroid/accounts/AccountManager$AmsTask;->internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist getResult()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    .line 2344
    invoke-virtual {p0}, Landroid/accounts/AccountManager$AmsTask;->getResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    .line 2344
    invoke-virtual {p0, p1, p2, p3}, Landroid/accounts/AccountManager$AmsTask;->getResult(JLjava/util/concurrent/TimeUnit;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method protected greylist-max-o set(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 2380
    if-nez p1, :cond_f

    .line 2381
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "AccountManager"

    const-string/jumbo v2, "the bundle must not be null"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2383
    :cond_f
    invoke-super {p0, p1}, Ljava/util/concurrent/FutureTask;->set(Ljava/lang/Object;)V

    .line 2384
    return-void
.end method

.method protected bridge synthetic whitelist test-api set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 2344
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/accounts/AccountManager$AmsTask;->set(Landroid/os/Bundle;)V

    return-void
.end method

.method public final greylist-max-o start()Landroid/accounts/AccountManagerFuture;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 2368
    :try_start_0
    invoke-virtual {p0}, Landroid/accounts/AccountManager$AmsTask;->doWork()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 2371
    goto :goto_8

    .line 2369
    :catch_4
    move-exception v0

    .line 2370
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager$AmsTask;->setException(Ljava/lang/Throwable;)V

    .line 2372
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_8
    return-object p0
.end method
