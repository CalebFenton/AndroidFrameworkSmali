.class final Ljava/util/concurrent/CompletableFuture$TaskSubmitter;
.super Ljava/lang/Object;
.source "CompletableFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TaskSubmitter"
.end annotation


# instance fields
.field final action:Ljava/lang/Runnable;

.field final executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "action"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 2663
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$TaskSubmitter;, "Ljava/util/concurrent/CompletableFuture<TT;>.TaskSubmitter;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2664
    iput-object p1, p0, Ljava/util/concurrent/CompletableFuture$TaskSubmitter;->executor:Ljava/util/concurrent/Executor;

    #@5
    .line 2665
    iput-object p2, p0, Ljava/util/concurrent/CompletableFuture$TaskSubmitter;->action:Ljava/lang/Runnable;

    #@7
    .line 2663
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 2667
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$TaskSubmitter;, "Ljava/util/concurrent/CompletableFuture<TT;>.TaskSubmitter;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$TaskSubmitter;->executor:Ljava/util/concurrent/Executor;

    #@2
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture$TaskSubmitter;->action:Ljava/lang/Runnable;

    #@4
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    #@7
    return-void
.end method
