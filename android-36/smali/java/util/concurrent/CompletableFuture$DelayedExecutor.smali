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
.field final greylist-max-o delay:J

.field final greylist-max-o executor:Ljava/util/concurrent/Executor;

.field final greylist-max-o unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method constructor greylist-max-o <init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/Executor;)V
    .registers 5
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .line 2883
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2884
    iput-wide p1, p0, Ljava/util/concurrent/CompletableFuture$DelayedExecutor;->delay:J

    iput-object p3, p0, Ljava/util/concurrent/CompletableFuture$DelayedExecutor;->unit:Ljava/util/concurrent/TimeUnit;

    iput-object p4, p0, Ljava/util/concurrent/CompletableFuture$DelayedExecutor;->executor:Ljava/util/concurrent/Executor;

    .line 2885
    return-void
.end method


# virtual methods
.method public whitelist test-api execute(Ljava/lang/Runnable;)V
    .registers 6
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 2887
    new-instance v0, Ljava/util/concurrent/CompletableFuture$TaskSubmitter;

    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture$DelayedExecutor;->executor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, p1}, Ljava/util/concurrent/CompletableFuture$TaskSubmitter;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    iget-wide v1, p0, Ljava/util/concurrent/CompletableFuture$DelayedExecutor;->delay:J

    iget-object v3, p0, Ljava/util/concurrent/CompletableFuture$DelayedExecutor;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2, v3}, Ljava/util/concurrent/CompletableFuture$Delayer;->delay(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 2888
    return-void
.end method
