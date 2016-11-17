.class final Lsun/nio/ch/CompletedFuture;
.super Ljava/lang/Object;
.source "CompletedFuture.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final exc:Ljava/lang/Throwable;

.field private final result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .param p2, "exc"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 42
    .local p0, "this":Lsun/nio/ch/CompletedFuture;, "Lsun/nio/ch/CompletedFuture<TV;>;"
    .local p1, "result":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 43
    iput-object p1, p0, Lsun/nio/ch/CompletedFuture;->result:Ljava/lang/Object;

    #@5
    .line 44
    iput-object p2, p0, Lsun/nio/ch/CompletedFuture;->exc:Ljava/lang/Throwable;

    #@7
    .line 42
    return-void
.end method

.method static withFailure(Ljava/lang/Throwable;)Lsun/nio/ch/CompletedFuture;
    .locals 3
    .param p0, "exc"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lsun/nio/ch/CompletedFuture",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 53
    instance-of v1, p0, Ljava/io/IOException;

    #@2
    if-nez v1, :cond_0

    #@4
    instance-of v1, p0, Ljava/lang/SecurityException;

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 55
    :cond_0
    :goto_0
    new-instance v1, Lsun/nio/ch/CompletedFuture;

    #@a
    const/4 v2, 0x0

    #@b
    invoke-direct {v1, v2, p0}, Lsun/nio/ch/CompletedFuture;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@e
    return-object v1

    #@f
    .line 54
    :cond_1
    new-instance v0, Ljava/io/IOException;

    #@11
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    #@14
    .end local p0    # "exc":Ljava/lang/Throwable;
    .local v0, "exc":Ljava/lang/Throwable;
    move-object p0, v0

    #@15
    .end local v0    # "exc":Ljava/lang/Throwable;
    .restart local p0    # "exc":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method static withResult(Ljava/lang/Object;)Lsun/nio/ch/CompletedFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;)",
            "Lsun/nio/ch/CompletedFuture",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 48
    .local p0, "result":Ljava/lang/Object;, "TV;"
    new-instance v0, Lsun/nio/ch/CompletedFuture;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Lsun/nio/ch/CompletedFuture;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@6
    return-object v0
.end method

.method static withResult(Ljava/lang/Object;Ljava/lang/Throwable;)Lsun/nio/ch/CompletedFuture;
    .locals 1
    .param p1, "exc"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;",
            "Ljava/lang/Throwable;",
            ")",
            "Lsun/nio/ch/CompletedFuture",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 59
    .local p0, "result":Ljava/lang/Object;, "TV;"
    if-nez p1, :cond_0

    #@2
    .line 60
    invoke-static {p0}, Lsun/nio/ch/CompletedFuture;->withResult(Ljava/lang/Object;)Lsun/nio/ch/CompletedFuture;

    #@5
    move-result-object v0

    #@6
    return-object v0

    #@7
    .line 62
    :cond_0
    invoke-static {p1}, Lsun/nio/ch/CompletedFuture;->withFailure(Ljava/lang/Throwable;)Lsun/nio/ch/CompletedFuture;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1
    .param p1, "mayInterruptIfRunning"    # Z

    #@0
    .prologue
    .line 94
    .local p0, "this":Lsun/nio/ch/CompletedFuture;, "Lsun/nio/ch/CompletedFuture<TV;>;"
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    #@0
    .prologue
    .line 68
    .local p0, "this":Lsun/nio/ch/CompletedFuture;, "Lsun/nio/ch/CompletedFuture<TV;>;"
    iget-object v0, p0, Lsun/nio/ch/CompletedFuture;->exc:Ljava/lang/Throwable;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 69
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    #@6
    iget-object v1, p0, Lsun/nio/ch/CompletedFuture;->exc:Ljava/lang/Throwable;

    #@8
    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    #@b
    throw v0

    #@c
    .line 70
    :cond_0
    iget-object v0, p0, Lsun/nio/ch/CompletedFuture;->result:Ljava/lang/Object;

    #@e
    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 2
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    #@0
    .prologue
    .line 75
    .local p0, "this":Lsun/nio/ch/CompletedFuture;, "Lsun/nio/ch/CompletedFuture<TV;>;"
    if-nez p3, :cond_0

    #@2
    .line 76
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 77
    :cond_0
    iget-object v0, p0, Lsun/nio/ch/CompletedFuture;->exc:Ljava/lang/Throwable;

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 78
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    #@e
    iget-object v1, p0, Lsun/nio/ch/CompletedFuture;->exc:Ljava/lang/Throwable;

    #@10
    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    #@13
    throw v0

    #@14
    .line 79
    :cond_1
    iget-object v0, p0, Lsun/nio/ch/CompletedFuture;->result:Ljava/lang/Object;

    #@16
    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    #@0
    .prologue
    .line 84
    .local p0, "this":Lsun/nio/ch/CompletedFuture;, "Lsun/nio/ch/CompletedFuture<TV;>;"
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isDone()Z
    .locals 1

    #@0
    .prologue
    .line 89
    .local p0, "this":Lsun/nio/ch/CompletedFuture;, "Lsun/nio/ch/CompletedFuture<TV;>;"
    const/4 v0, 0x1

    #@1
    return v0
.end method
