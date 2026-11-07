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
        "Ljava/util/concurrent/ForkJoinTask<",
        "Ljava/lang/Void;",
        ">;",
        "Ljava/util/concurrent/RunnableFuture<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x489d6925990d6e4eL


# instance fields
.field final greylist-max-o runnable:Ljava/lang/Runnable;


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 1402
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;-><init>()V

    .line 1403
    if-eqz p1, :cond_8

    .line 1404
    iput-object p1, p0, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnableAction;->runnable:Ljava/lang/Runnable;

    .line 1405
    return-void

    .line 1403
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final whitelist test-api exec()Z
    .registers 2

    .line 1408
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnableAction;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic whitelist test-api getRawResult()Ljava/lang/Object;
    .registers 2

    .line 1398
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnableAction;->getRawResult()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist getRawResult()Ljava/lang/Void;
    .registers 2

    .line 1406
    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist test-api run()V
    .registers 1

    .line 1409
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnableAction;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic whitelist test-api setRawResult(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1398
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnableAction;->setRawResult(Ljava/lang/Void;)V

    return-void
.end method

.method public final greylist-max-o setRawResult(Ljava/lang/Void;)V
    .registers 2
    .param p1, "v"    # Ljava/lang/Void;

    .line 1407
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[Wrapped task = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnableAction;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
