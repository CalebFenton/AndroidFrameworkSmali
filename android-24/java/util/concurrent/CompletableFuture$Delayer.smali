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
.field static final delayer:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 2639
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    #@3
    .line 2640
    new-instance v1, Ljava/util/concurrent/CompletableFuture$Delayer$DaemonThreadFactory;

    #@5
    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture$Delayer$DaemonThreadFactory;-><init>()V

    #@8
    .line 2639
    invoke-direct {v0, v2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    #@b
    sput-object v0, Ljava/util/concurrent/CompletableFuture$Delayer;->delayer:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    #@d
    invoke-virtual {v0, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setRemoveOnCancelPolicy(Z)V

    #@10
    .line 2622
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 2622
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$Delayer;, "Ljava/util/concurrent/CompletableFuture<TT;>.Delayer;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static delay(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1
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
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2625
    sget-object v0, Ljava/util/concurrent/CompletableFuture$Delayer;->delayer:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    #@2
    invoke-virtual {v0, p0, p1, p2, p3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
