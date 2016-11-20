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
        "Ljava/util/concurrent/ForkJoinTask",
        "<",
        "Ljava/lang/Void;",
        ">;",
        "Ljava/lang/Runnable;",
        "Ljava/util/concurrent/CompletableFuture$AsynchronousCompletionTask;"
    }
.end annotation


# instance fields
.field volatile next:Ljava/util/concurrent/CompletableFuture$Completion;


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 406
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$Completion;, "Ljava/util/concurrent/CompletableFuture<TT;>.Completion;"
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public final exec()Z
    .locals 1

    #@0
    .prologue
    .line 422
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$Completion;, "Ljava/util/concurrent/CompletableFuture<TT;>.Completion;"
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture$Completion;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    #@4
    const/4 v0, 0x0

    #@5
    return v0
.end method

.method public bridge synthetic getRawResult()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 423
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$Completion;, "Ljava/util/concurrent/CompletableFuture<TT;>.Completion;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture$Completion;->getRawResult()Ljava/lang/Void;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final getRawResult()Ljava/lang/Void;
    .locals 1

    #@0
    .prologue
    .line 423
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$Completion;, "Ljava/util/concurrent/CompletableFuture<TT;>.Completion;"
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method abstract isLive()Z
.end method

.method public final run()V
    .locals 1

    #@0
    .prologue
    .line 421
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$Completion;, "Ljava/util/concurrent/CompletableFuture<TT;>.Completion;"
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture$Completion;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    #@4
    return-void
.end method

.method public bridge synthetic setRawResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 424
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$Completion;, "Ljava/util/concurrent/CompletableFuture<TT;>.Completion;"
    check-cast p1, Ljava/lang/Void;

    #@2
    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture$Completion;->setRawResult(Ljava/lang/Void;)V

    #@5
    return-void
.end method

.method public final setRawResult(Ljava/lang/Void;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/Void;

    #@0
    .prologue
    .line 424
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$Completion;, "Ljava/util/concurrent/CompletableFuture<TT;>.Completion;"
    return-void
.end method

.method abstract tryFire(I)Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;"
        }
    .end annotation
.end method
