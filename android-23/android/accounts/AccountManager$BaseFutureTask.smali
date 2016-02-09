.class abstract Landroid/accounts/AccountManager$BaseFutureTask;
.super Ljava/util/concurrent/FutureTask;
.source "AccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/AccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "BaseFutureTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accounts/AccountManager$BaseFutureTask$Response;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final mHandler:Landroid/os/Handler;

.field public final mResponse:Landroid/accounts/IAccountManagerResponse;

.field final synthetic this$0:Landroid/accounts/AccountManager;


# direct methods
.method static synthetic -wrap0(Landroid/accounts/AccountManager$BaseFutureTask;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Landroid/accounts/AccountManager$BaseFutureTask;->setException(Ljava/lang/Throwable;)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Landroid/accounts/AccountManager$BaseFutureTask;Ljava/lang/Object;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Landroid/accounts/AccountManager$BaseFutureTask;->set(Ljava/lang/Object;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/accounts/AccountManager;Landroid/os/Handler;)V
    .locals 1
    .param p1, "this$0"    # Landroid/accounts/AccountManager;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 2000
    .local p0, "this":Landroid/accounts/AccountManager$BaseFutureTask;, "Landroid/accounts/AccountManager$BaseFutureTask<TT;>;"
    iput-object p1, p0, Landroid/accounts/AccountManager$BaseFutureTask;->this$0:Landroid/accounts/AccountManager;

    #@2
    .line 2001
    new-instance v0, Landroid/accounts/AccountManager$BaseFutureTask$1;

    #@4
    invoke-direct {v0, p1}, Landroid/accounts/AccountManager$BaseFutureTask$1;-><init>(Landroid/accounts/AccountManager;)V

    #@7
    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    #@a
    .line 2006
    iput-object p2, p0, Landroid/accounts/AccountManager$BaseFutureTask;->mHandler:Landroid/os/Handler;

    #@c
    .line 2007
    new-instance v0, Landroid/accounts/AccountManager$BaseFutureTask$Response;

    #@e
    invoke-direct {v0, p0}, Landroid/accounts/AccountManager$BaseFutureTask$Response;-><init>(Landroid/accounts/AccountManager$BaseFutureTask;)V

    #@11
    iput-object v0, p0, Landroid/accounts/AccountManager$BaseFutureTask;->mResponse:Landroid/accounts/IAccountManagerResponse;

    #@13
    .line 2000
    return-void
.end method


# virtual methods
.method public abstract bundleToResult(Landroid/os/Bundle;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation
.end method

.method public abstract doWork()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method protected postRunnableToHandler(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 2015
    .local p0, "this":Landroid/accounts/AccountManager$BaseFutureTask;, "Landroid/accounts/AccountManager$BaseFutureTask<TT;>;"
    iget-object v1, p0, Landroid/accounts/AccountManager$BaseFutureTask;->mHandler:Landroid/os/Handler;

    #@2
    if-nez v1, :cond_0

    #@4
    iget-object v1, p0, Landroid/accounts/AccountManager$BaseFutureTask;->this$0:Landroid/accounts/AccountManager;

    #@6
    invoke-static {v1}, Landroid/accounts/AccountManager;->-get1(Landroid/accounts/AccountManager;)Landroid/os/Handler;

    #@9
    move-result-object v0

    #@a
    .line 2016
    .local v0, "handler":Landroid/os/Handler;
    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@d
    .line 2014
    return-void

    #@e
    .line 2015
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    iget-object v0, p0, Landroid/accounts/AccountManager$BaseFutureTask;->mHandler:Landroid/os/Handler;

    #@10
    .restart local v0    # "handler":Landroid/os/Handler;
    goto :goto_0
.end method

.method protected startTask()V
    .locals 1

    #@0
    .prologue
    .line 2021
    .local p0, "this":Landroid/accounts/AccountManager$BaseFutureTask;, "Landroid/accounts/AccountManager$BaseFutureTask<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Landroid/accounts/AccountManager$BaseFutureTask;->doWork()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 2019
    :goto_0
    return-void

    #@4
    .line 2022
    :catch_0
    move-exception v0

    #@5
    .line 2023
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager$BaseFutureTask;->setException(Ljava/lang/Throwable;)V

    #@8
    goto :goto_0
.end method
