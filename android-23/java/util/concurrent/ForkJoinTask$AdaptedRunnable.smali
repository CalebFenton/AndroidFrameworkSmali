.class final Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;
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
    name = "AdaptedRunnable"
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
.field private static final serialVersionUID:J = 0x489d6925990d6e4eL


# instance fields
.field result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1348
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;, "Ljava/util/concurrent/ForkJoinTask<TV;>.AdaptedRunnable<TT;>;"
    .local p2, "result":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;-><init>()V

    #@3
    .line 1349
    if-nez p1, :cond_0

    #@5
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@a
    throw v0

    #@b
    .line 1350
    :cond_0
    iput-object p1, p0, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;->runnable:Ljava/lang/Runnable;

    #@d
    .line 1351
    iput-object p2, p0, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;->result:Ljava/lang/Object;

    #@f
    .line 1348
    return-void
.end method


# virtual methods
.method public final exec()Z
    .locals 1

    #@0
    .prologue
    .line 1355
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;, "Ljava/util/concurrent/ForkJoinTask<TV;>.AdaptedRunnable<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;->runnable:Ljava/lang/Runnable;

    #@2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@5
    const/4 v0, 0x1

    #@6
    return v0
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
    .line 1353
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;, "Ljava/util/concurrent/ForkJoinTask<TV;>.AdaptedRunnable<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;->result:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public final run()V
    .locals 0

    #@0
    .prologue
    .line 1356
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;, "Ljava/util/concurrent/ForkJoinTask<TV;>.AdaptedRunnable<TT;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;->invoke()Ljava/lang/Object;

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
    .line 1354
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;, "Ljava/util/concurrent/ForkJoinTask<TV;>.AdaptedRunnable<TT;>;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;->result:Ljava/lang/Object;

    #@2
    return-void
.end method
