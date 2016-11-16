.class final Ljava/util/concurrent/CompletableFuture$ThreadPerTaskExecutor;
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
    name = "ThreadPerTaskExecutor"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 377
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$ThreadPerTaskExecutor;, "Ljava/util/concurrent/CompletableFuture<TT;>.ThreadPerTaskExecutor;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 378
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$ThreadPerTaskExecutor;, "Ljava/util/concurrent/CompletableFuture<TT;>.ThreadPerTaskExecutor;"
    new-instance v0, Ljava/lang/Thread;

    #@2
    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #@5
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    #@8
    return-void
.end method
