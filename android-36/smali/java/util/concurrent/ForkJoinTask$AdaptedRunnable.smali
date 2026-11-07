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
        "Ljava/util/concurrent/ForkJoinTask<",
        "TT;>;",
        "Ljava/util/concurrent/RunnableFuture<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x489d6925990d6e4eL


# instance fields
.field greylist-max-o result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final greylist-max-o runnable:Ljava/lang/Runnable;


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .registers 4
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TT;)V"
        }
    .end annotation

    .line 1380
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;, "Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable<TT;>;"
    .local p2, "result":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;-><init>()V

    .line 1381
    if-eqz p1, :cond_a

    .line 1382
    iput-object p1, p0, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;->runnable:Ljava/lang/Runnable;

    .line 1383
    iput-object p2, p0, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;->result:Ljava/lang/Object;

    .line 1384
    return-void

    .line 1381
    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final whitelist test-api exec()Z
    .registers 2

    .line 1387
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;, "Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x1

    return v0
.end method

.method public final whitelist test-api getRawResult()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1385
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;, "Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public final whitelist test-api run()V
    .registers 1

    .line 1388
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;, "Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable<TT;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final whitelist test-api setRawResult(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1386
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;, "Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable<TT;>;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;->result:Ljava/lang/Object;

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1390
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;, "Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[Wrapped task = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
