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
.field final greylist-max-o action:Ljava/lang/Runnable;

.field final greylist-max-o executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "action"    # Ljava/lang/Runnable;

    .line 2895
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2896
    iput-object p1, p0, Ljava/util/concurrent/CompletableFuture$TaskSubmitter;->executor:Ljava/util/concurrent/Executor;

    .line 2897
    iput-object p2, p0, Ljava/util/concurrent/CompletableFuture$TaskSubmitter;->action:Ljava/lang/Runnable;

    .line 2898
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 2899
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$TaskSubmitter;->executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture$TaskSubmitter;->action:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
