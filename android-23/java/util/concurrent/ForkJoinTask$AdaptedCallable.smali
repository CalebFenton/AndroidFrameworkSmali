.class final Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;
.super Ljava/util/concurrent/ForkJoinTask;
.source "ForkJoinTask.java"

# interfaces
.implements Ljava/util/concurrent/RunnableFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ForkJoinTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AdaptedCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ForkJoinTask",
        "<TT;>;",
        "Ljava/util/concurrent/RunnableFuture",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2763fe86dcb18e30L


# instance fields
.field final callable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<+TT;>;"
        }
    .end annotation
.end field

.field result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<+TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1402
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;, "Ljava/util/concurrent/ForkJoinTask<TV;>.AdaptedCallable<TT;>;"
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<+TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;-><init>()V

    #@3
    .line 1403
    if-nez p1, :cond_0

    #@5
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@a
    throw v0

    #@b
    .line 1404
    :cond_0
    iput-object p1, p0, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;->callable:Ljava/util/concurrent/Callable;

    #@d
    .line 1402
    return-void
.end method


# virtual methods
.method public final exec()Z
    .locals 3

    #@0
    .prologue
    .line 1410
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;, "Ljava/util/concurrent/ForkJoinTask<TV;>.AdaptedCallable<TT;>;"
    :try_start_0
    iget-object v2, p0, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;->callable:Ljava/util/concurrent/Callable;

    #@2
    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    iput-object v2, p0, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;->result:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    .line 1411
    const/4 v2, 0x1

    #@9
    return v2

    #@a
    .line 1414
    :catch_0
    move-exception v0

    #@b
    .line 1415
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    #@d
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@10
    throw v2

    #@11
    .line 1412
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    #@12
    .line 1413
    .local v1, "rex":Ljava/lang/RuntimeException;
    throw v1
.end method

.method public final getRawResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 1406
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;, "Ljava/util/concurrent/ForkJoinTask<TV;>.AdaptedCallable<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;->result:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public final run()V
    .locals 0

    #@0
    .prologue
    .line 1418
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;, "Ljava/util/concurrent/ForkJoinTask<TV;>.AdaptedCallable<TT;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;->invoke()Ljava/lang/Object;

    #@3
    return-void
.end method

.method public final setRawResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1407
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;, "Ljava/util/concurrent/ForkJoinTask<TV;>.AdaptedCallable<TT;>;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;->result:Ljava/lang/Object;

    #@2
    return-void
.end method
