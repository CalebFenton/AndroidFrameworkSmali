.class final Ljava/util/concurrent/CompletableFuture$Delayer$DaemonThreadFactory;
.super Ljava/lang/Object;
.source "CompletableFuture.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture$Delayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DaemonThreadFactory"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 2628
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$Delayer$DaemonThreadFactory;, "Ljava/util/concurrent/CompletableFuture<TT;>.Delayer.DaemonThreadFactory;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 2630
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$Delayer$DaemonThreadFactory;, "Ljava/util/concurrent/CompletableFuture<TT;>.Delayer.DaemonThreadFactory;"
    new-instance v0, Ljava/lang/Thread;

    #@2
    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #@5
    .line 2631
    .local v0, "t":Ljava/lang/Thread;
    const/4 v1, 0x1

    #@6
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    #@9
    .line 2632
    const-string/jumbo v1, "CompletableFutureDelayScheduler"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    #@f
    .line 2633
    return-object v0
.end method
