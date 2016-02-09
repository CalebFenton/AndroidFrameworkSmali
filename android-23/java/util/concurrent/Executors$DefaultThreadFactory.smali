.class Ljava/util/concurrent/Executors$DefaultThreadFactory;
.super Ljava/lang/Object;
.source "Executors.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/Executors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DefaultThreadFactory"
.end annotation


# static fields
.field private static final poolNumber:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final group:Ljava/lang/ThreadGroup;

.field private final namePrefix:Ljava/lang/String;

.field private final threadNumber:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 511
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@6
    sput-object v0, Ljava/util/concurrent/Executors$DefaultThreadFactory;->poolNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    #@8
    .line 510
    return-void
.end method

.method constructor <init>()V
    .locals 3

    #@0
    .prologue
    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 513
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    #@5
    const/4 v2, 0x1

    #@6
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@9
    iput-object v1, p0, Ljava/util/concurrent/Executors$DefaultThreadFactory;->threadNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    #@b
    .line 517
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@e
    move-result-object v0

    #@f
    .line 518
    .local v0, "s":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    #@11
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->getThreadGroup()Ljava/lang/ThreadGroup;

    #@14
    move-result-object v1

    #@15
    :goto_0
    iput-object v1, p0, Ljava/util/concurrent/Executors$DefaultThreadFactory;->group:Ljava/lang/ThreadGroup;

    #@17
    .line 520
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v2, "pool-"

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    .line 521
    sget-object v2, Ljava/util/concurrent/Executors$DefaultThreadFactory;->poolNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    #@25
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    #@28
    move-result v2

    #@29
    .line 520
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    .line 522
    const-string/jumbo v2, "-thread-"

    #@30
    .line 520
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    iput-object v1, p0, Ljava/util/concurrent/Executors$DefaultThreadFactory;->namePrefix:Ljava/lang/String;

    #@3a
    .line 516
    return-void

    #@3b
    .line 519
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v1}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    #@42
    move-result-object v1

    #@43
    goto :goto_0
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 7
    .param p1, "r"    # Ljava/lang/Runnable;

    #@0
    .prologue
    const/4 v6, 0x5

    #@1
    .line 526
    new-instance v0, Ljava/lang/Thread;

    #@3
    iget-object v1, p0, Ljava/util/concurrent/Executors$DefaultThreadFactory;->group:Ljava/lang/ThreadGroup;

    #@5
    .line 527
    new-instance v2, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    iget-object v3, p0, Ljava/util/concurrent/Executors$DefaultThreadFactory;->namePrefix:Ljava/lang/String;

    #@c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    iget-object v3, p0, Ljava/util/concurrent/Executors$DefaultThreadFactory;->threadNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    #@12
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    #@15
    move-result v3

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    .line 528
    const-wide/16 v4, 0x0

    #@20
    move-object v2, p1

    #@21
    .line 526
    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    #@24
    .line 529
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->isDaemon()Z

    #@27
    move-result v1

    #@28
    if-eqz v1, :cond_0

    #@2a
    .line 530
    const/4 v1, 0x0

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    #@2e
    .line 531
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    #@31
    move-result v1

    #@32
    if-eq v1, v6, :cond_1

    #@34
    .line 532
    invoke-virtual {v0, v6}, Ljava/lang/Thread;->setPriority(I)V

    #@37
    .line 533
    :cond_1
    return-object v0
.end method
