.class public abstract Landroid/net/connectivity/org/chromium/net/NetworkQualityRttListener;
.super Ljava/lang/Object;
.source "NetworkQualityRttListener.java"


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor blacklist <init>(Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    if-eqz p1, :cond_8

    .line 26
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/NetworkQualityRttListener;->mExecutor:Ljava/util/concurrent/Executor;

    .line 27
    return-void

    .line 24
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Executor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist getExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 30
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkQualityRttListener;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public abstract blacklist onRttObservation(IJI)V
.end method
