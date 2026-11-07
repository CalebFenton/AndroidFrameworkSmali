.class abstract Ljava/util/concurrent/CompletableFuture$Completion;
.super Ljava/util/concurrent/ForkJoinTask;
.source "CompletableFuture.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/util/concurrent/CompletableFuture$AsynchronousCompletionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Completion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ForkJoinTask<",
        "Ljava/lang/Void;",
        ">;",
        "Ljava/lang/Runnable;",
        "Ljava/util/concurrent/CompletableFuture$AsynchronousCompletionTask;"
    }
.end annotation


# instance fields
.field volatile greylist-max-o next:Ljava/util/concurrent/CompletableFuture$Completion;


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 443
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api exec()Z
    .registers 2

    .line 459
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture$Completion;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic whitelist test-api getRawResult()Ljava/lang/Object;
    .registers 2

    .line 442
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture$Completion;->getRawResult()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist getRawResult()Ljava/lang/Void;
    .registers 2

    .line 460
    const/4 v0, 0x0

    return-object v0
.end method

.method abstract greylist-max-o isLive()Z
.end method

.method public final whitelist test-api run()V
    .registers 2

    .line 458
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture$Completion;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

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

    .line 442
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture$Completion;->setRawResult(Ljava/lang/Void;)V

    return-void
.end method

.method public final greylist-max-o setRawResult(Ljava/lang/Void;)V
    .registers 2
    .param p1, "v"    # Ljava/lang/Void;

    .line 461
    return-void
.end method

.method abstract greylist-max-o tryFire(I)Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/CompletableFuture<",
            "*>;"
        }
    .end annotation
.end method
