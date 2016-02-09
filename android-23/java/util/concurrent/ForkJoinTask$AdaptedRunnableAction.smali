.class final Ljava/util/concurrent/ForkJoinTask$AdaptedRunnableAction;
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
    name = "AdaptedRunnableAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ForkJoinTask",
        "<",
        "Ljava/lang/Void;",
        ">;",
        "Ljava/util/concurrent/RunnableFuture",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x489d6925990d6e4eL


# instance fields
.field final runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 1366
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask$AdaptedRunnableAction;, "Ljava/util/concurrent/ForkJoinTask<TV;>.AdaptedRunnableAction;"
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;-><init>()V

    #@3
    .line 1367
    if-nez p1, :cond_0

    #@5
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@a
    throw v0

    #@b
    .line 1368
    :cond_0
    iput-object p1, p0, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnableAction;->runnable:Ljava/lang/Runnable;

    #@d
    .line 1366
    return-void
.end method


# virtual methods
.method public final exec()Z
    .locals 1

    #@0
    .prologue
    .line 1372
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask$AdaptedRunnableAction;, "Ljava/util/concurrent/ForkJoinTask<TV;>.AdaptedRunnableAction;"
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnableAction;->runnable:Ljava/lang/Runnable;

    #@2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@5
    const/4 v0, 0x1

    #@6
    return v0
.end method

.method public bridge synthetic getRawResult()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 1370
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask$AdaptedRunnableAction;, "Ljava/util/concurrent/ForkJoinTask<TV;>.AdaptedRunnableAction;"
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnableAction;->getRawResult()Ljava/lang/Void;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final getRawResult()Ljava/lang/Void;
    .locals 1

    #@0
    .prologue
    .line 1370
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask$AdaptedRunnableAction;, "Ljava/util/concurrent/ForkJoinTask<TV;>.AdaptedRunnableAction;"
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public final run()V
    .locals 0

    #@0
    .prologue
    .line 1373
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask$AdaptedRunnableAction;, "Ljava/util/concurrent/ForkJoinTask<TV;>.AdaptedRunnableAction;"
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnableAction;->invoke()Ljava/lang/Object;

    #@3
    return-void
.end method

.method public bridge synthetic setRawResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1371
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask$AdaptedRunnableAction;, "Ljava/util/concurrent/ForkJoinTask<TV;>.AdaptedRunnableAction;"
    check-cast p1, Ljava/lang/Void;

    #@2
    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnableAction;->setRawResult(Ljava/lang/Void;)V

    #@5
    return-void
.end method

.method public final setRawResult(Ljava/lang/Void;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/Void;

    #@0
    .prologue
    .line 1371
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask$AdaptedRunnableAction;, "Ljava/util/concurrent/ForkJoinTask<TV;>.AdaptedRunnableAction;"
    return-void
.end method
