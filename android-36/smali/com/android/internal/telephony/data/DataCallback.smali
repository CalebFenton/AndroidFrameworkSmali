.class public Lcom/android/internal/telephony/data/DataCallback;
.super Ljava/lang/Object;
.source "DataCallback.java"


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor blacklist <init>(Ljava/util/concurrent/Executor;)V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataCallback;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public blacklist getExecutor()Ljava/util/concurrent/Executor;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataCallback;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public blacklist invokeFromExecutor(Ljava/lang/Runnable;)V
    .registers 2

    .line 58
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataCallback;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
