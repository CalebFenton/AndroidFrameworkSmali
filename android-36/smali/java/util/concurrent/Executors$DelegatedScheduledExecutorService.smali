.class Ljava/util/concurrent/Executors$DelegatedScheduledExecutorService;
.super Ljava/util/concurrent/Executors$DelegatedExecutorService;
.source "Executors.java"

# interfaces
.implements Ljava/util/concurrent/ScheduledExecutorService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/Executors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DelegatedScheduledExecutorService"
.end annotation


# instance fields
.field private final greylist-max-o e:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 2
    .param p1, "executor"    # Ljava/util/concurrent/ScheduledExecutorService;

    .line 821
    invoke-direct {p0, p1}, Ljava/util/concurrent/Executors$DelegatedExecutorService;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 822
    iput-object p1, p0, Ljava/util/concurrent/Executors$DelegatedScheduledExecutorService;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 823
    return-void
.end method


# virtual methods
.method public whitelist test-api schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .registers 6
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "delay"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 825
    iget-object v0, p0, Ljava/util/concurrent/Executors$DelegatedScheduledExecutorService;->e:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .registers 6
    .param p2, "delay"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "TV;>;"
        }
    .end annotation

    .line 828
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/Executors$DelegatedScheduledExecutorService;->e:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .registers 14
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "initialDelay"    # J
    .param p4, "period"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 831
    iget-object v0, p0, Ljava/util/concurrent/Executors$DelegatedScheduledExecutorService;->e:Ljava/util/concurrent/ScheduledExecutorService;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    .end local p1    # "command":Ljava/lang/Runnable;
    .end local p2    # "initialDelay":J
    .end local p4    # "period":J
    .end local p6    # "unit":Ljava/util/concurrent/TimeUnit;
    .local v1, "command":Ljava/lang/Runnable;
    .local v2, "initialDelay":J
    .local v4, "period":J
    .local v6, "unit":Ljava/util/concurrent/TimeUnit;
    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .registers 14
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "initialDelay"    # J
    .param p4, "delay"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 834
    iget-object v0, p0, Ljava/util/concurrent/Executors$DelegatedScheduledExecutorService;->e:Ljava/util/concurrent/ScheduledExecutorService;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    .end local p1    # "command":Ljava/lang/Runnable;
    .end local p2    # "initialDelay":J
    .end local p4    # "delay":J
    .end local p6    # "unit":Ljava/util/concurrent/TimeUnit;
    .local v1, "command":Ljava/lang/Runnable;
    .local v2, "initialDelay":J
    .local v4, "delay":J
    .local v6, "unit":Ljava/util/concurrent/TimeUnit;
    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    return-object p1
.end method
