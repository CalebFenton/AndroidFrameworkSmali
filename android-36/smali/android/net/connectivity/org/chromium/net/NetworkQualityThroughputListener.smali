.class public abstract Landroid/net/connectivity/org/chromium/net/NetworkQualityThroughputListener;
.super Ljava/lang/Object;
.source "NetworkQualityThroughputListener.java"


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor blacklist <init>(Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    if-eqz p1, :cond_8

    .line 22
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/NetworkQualityThroughputListener;->mExecutor:Ljava/util/concurrent/Executor;

    .line 23
    return-void

    .line 20
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Executor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist getExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 26
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkQualityThroughputListener;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public abstract blacklist onThroughputObservation(IJI)V
.end method
