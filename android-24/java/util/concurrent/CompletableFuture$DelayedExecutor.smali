.class final Ljava/util/concurrent/CompletableFuture$DelayedExecutor;
.super Ljava/lang/Object;
.source "CompletableFuture.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DelayedExecutor"
.end annotation


# instance fields
.field final delay:J

.field final executor:Ljava/util/concurrent/Executor;

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method constructor <init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    #@0
    .prologue
    .line 2651
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$DelayedExecutor;, "Ljava/util/concurrent/CompletableFuture<TT;>.DelayedExecutor;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2652
    iput-wide p1, p0, Ljava/util/concurrent/CompletableFuture$DelayedExecutor;->delay:J

    #@5
    iput-object p3, p0, Ljava/util/concurrent/CompletableFuture$DelayedExecutor;->unit:Ljava/util/concurrent/TimeUnit;

    #@7
    iput-object p4, p0, Ljava/util/concurrent/CompletableFuture$DelayedExecutor;->executor:Ljava/util/concurrent/Executor;

    #@9
    .line 2651
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "r"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 2655
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$DelayedExecutor;, "Ljava/util/concurrent/CompletableFuture<TT;>.DelayedExecutor;"
    new-instance v0, Ljava/util/concurrent/CompletableFuture$TaskSubmitter;

    #@2
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture$DelayedExecutor;->executor:Ljava/util/concurrent/Executor;

    #@4
    invoke-direct {v0, v1, p1}, Ljava/util/concurrent/CompletableFuture$TaskSubmitter;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    #@7
    iget-wide v2, p0, Ljava/util/concurrent/CompletableFuture$DelayedExecutor;->delay:J

    #@9
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture$DelayedExecutor;->unit:Ljava/util/concurrent/TimeUnit;

    #@b
    invoke-static {v0, v2, v3, v1}, Ljava/util/concurrent/CompletableFuture$Delayer;->delay(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    #@e
    .line 2654
    return-void
.end method
