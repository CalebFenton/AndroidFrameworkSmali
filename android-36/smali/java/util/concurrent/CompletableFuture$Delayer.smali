.class final Ljava/util/concurrent/CompletableFuture$Delayer;
.super Ljava/lang/Object;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Delayer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/CompletableFuture$Delayer$DaemonThreadFactory;
    }
.end annotation


# static fields
.field static final greylist-max-o delayer:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 2871
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Ljava/util/concurrent/CompletableFuture$Delayer$DaemonThreadFactory;

    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture$Delayer$DaemonThreadFactory;-><init>()V

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v0, Ljava/util/concurrent/CompletableFuture$Delayer;->delayer:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 2873
    invoke-virtual {v0, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setRemoveOnCancelPolicy(Z)V

    .line 2874
    return-void
.end method

.method constructor greylist-max-o <init>()V
    .registers 1

    .line 2854
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static greylist-max-o delay(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .registers 5
    .param p0, "command"    # Ljava/lang/Runnable;
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
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

    .line 2857
    sget-object v0, Ljava/util/concurrent/CompletableFuture$Delayer;->delayer:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0, p0, p1, p2, p3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method
