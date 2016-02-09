.class Lcom/android/server/NativeDaemonConnector$ResponseQueue;
.super Ljava/lang/Object;
.source "NativeDaemonConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NativeDaemonConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResponseQueue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    }
.end annotation


# instance fields
.field private mMaxCount:I

.field private final mPendingCmds:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "maxCount"    # I

    #@0
    .prologue
    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 574
    new-instance v0, Ljava/util/LinkedList;

    #@5
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    #@a
    .line 575
    iput p1, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mMaxCount:I

    #@c
    .line 573
    return-void
.end method


# virtual methods
.method public add(ILcom/android/server/NativeDaemonEvent;)V
    .locals 9
    .param p1, "cmdNum"    # I
    .param p2, "response"    # Lcom/android/server/NativeDaemonEvent;

    #@0
    .prologue
    .line 579
    const/4 v1, 0x0

    #@1
    .line 580
    .local v1, "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    iget-object v6, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    #@3
    monitor-enter v6

    #@4
    .line 581
    :try_start_0
    iget-object v5, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    #@6
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v4

    #@a
    .local v4, "pendingCmd$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v5

    #@e
    if-eqz v5, :cond_4

    #@10
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v3

    #@14
    check-cast v3, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;

    #@16
    .line 582
    .local v3, "pendingCmd":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    iget v5, v3, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->cmdNum:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@18
    if-ne v5, p1, :cond_0

    #@1a
    .line 583
    move-object v1, v3

    #@1b
    .local v1, "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    move-object v2, v1

    #@1c
    .line 587
    .end local v1    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    .end local v3    # "pendingCmd":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    .local v2, "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    :goto_0
    if-nez v2, :cond_3

    #@1e
    .line 589
    :goto_1
    :try_start_1
    iget-object v5, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    #@20
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    #@23
    move-result v5

    #@24
    iget v7, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mMaxCount:I

    #@26
    if-lt v5, v7, :cond_1

    #@28
    .line 590
    const-string/jumbo v5, "NativeDaemonConnector.ResponseQueue"

    #@2b
    .line 591
    new-instance v7, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v8, "more buffered than allowed: "

    #@33
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v7

    #@37
    iget-object v8, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    #@39
    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    #@3c
    move-result v8

    #@3d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v7

    #@41
    .line 592
    const-string/jumbo v8, " >= "

    #@44
    .line 591
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v7

    #@48
    .line 592
    iget v8, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mMaxCount:I

    #@4a
    .line 591
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v7

    #@4e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v7

    #@52
    .line 590
    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@55
    .line 594
    iget-object v5, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    #@57
    invoke-virtual {v5}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    #@5a
    move-result-object v3

    #@5b
    check-cast v3, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;

    #@5d
    .line 595
    .restart local v3    # "pendingCmd":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    const-string/jumbo v5, "NativeDaemonConnector.ResponseQueue"

    #@60
    .line 596
    new-instance v7, Ljava/lang/StringBuilder;

    #@62
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@65
    const-string/jumbo v8, "Removing request: "

    #@68
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v7

    #@6c
    iget-object v8, v3, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->logCmd:Ljava/lang/String;

    #@6e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v7

    #@72
    const-string/jumbo v8, " ("

    #@75
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v7

    #@79
    .line 597
    iget v8, v3, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->cmdNum:I

    #@7b
    .line 596
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v7

    #@7f
    .line 597
    const-string/jumbo v8, ")"

    #@82
    .line 596
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v7

    #@86
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@89
    move-result-object v7

    #@8a
    .line 595
    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@8d
    goto :goto_1

    #@8e
    .line 580
    .end local v3    # "pendingCmd":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    :catchall_0
    move-exception v5

    #@8f
    move-object v1, v2

    #@90
    .end local v2    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    .end local v4    # "pendingCmd$iterator":Ljava/util/Iterator;
    :goto_2
    monitor-exit v6

    #@91
    throw v5

    #@92
    .line 599
    .restart local v2    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    .restart local v4    # "pendingCmd$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_2
    new-instance v1, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;

    #@94
    const/4 v5, 0x0

    #@95
    invoke-direct {v1, p1, v5}, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;-><init>(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@98
    .line 600
    .end local v2    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    .restart local v1    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    :try_start_3
    iget-object v5, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    #@9a
    invoke-virtual {v5, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    #@9d
    .line 602
    :goto_3
    iget v5, v1, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    #@9f
    add-int/lit8 v5, v5, 0x1

    #@a1
    iput v5, v1, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    #@a3
    .line 605
    iget v5, v1, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    #@a5
    if-nez v5, :cond_2

    #@a7
    iget-object v5, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    #@a9
    invoke-virtual {v5, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@ac
    :cond_2
    monitor-exit v6

    #@ad
    .line 608
    :try_start_4
    iget-object v5, v1, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->responses:Ljava/util/concurrent/BlockingQueue;

    #@af
    invoke-interface {v5, p2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    #@b2
    .line 578
    :goto_4
    return-void

    #@b3
    .line 609
    :catch_0
    move-exception v0

    #@b4
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_4

    #@b5
    .line 580
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    .end local v4    # "pendingCmd$iterator":Ljava/util/Iterator;
    :catchall_1
    move-exception v5

    #@b6
    goto :goto_2

    #@b7
    .restart local v2    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    .restart local v4    # "pendingCmd$iterator":Ljava/util/Iterator;
    :cond_3
    move-object v1, v2

    #@b8
    .end local v2    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    .restart local v1    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    goto :goto_3

    #@b9
    .local v1, "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    :cond_4
    move-object v2, v1

    #@ba
    .restart local v2    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    goto/16 :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 643
    const-string/jumbo v2, "Pending requests:"

    #@3
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 644
    iget-object v3, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    #@8
    monitor-enter v3

    #@9
    .line 645
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    #@b
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .local v1, "pendingCmd$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_0

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;

    #@1b
    .line 646
    .local v0, "pendingCmd":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    new-instance v2, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v4, "  Cmd "

    #@23
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    iget v4, v0, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->cmdNum:I

    #@29
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    const-string/jumbo v4, " - "

    #@30
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    iget-object v4, v0, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->logCmd:Ljava/lang/String;

    #@36
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@41
    goto :goto_0

    #@42
    .line 644
    .end local v0    # "pendingCmd":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    .end local v1    # "pendingCmd$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@43
    monitor-exit v3

    #@44
    throw v2

    #@45
    .restart local v1    # "pendingCmd$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    #@46
    .line 642
    return-void
.end method

.method public remove(IJLjava/lang/String;)Lcom/android/server/NativeDaemonEvent;
    .locals 10
    .param p1, "cmdNum"    # I
    .param p2, "timeoutMs"    # J
    .param p4, "logCmd"    # Ljava/lang/String;

    #@0
    .prologue
    .line 615
    const/4 v2, 0x0

    #@1
    .line 616
    .local v2, "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    iget-object v8, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    #@3
    monitor-enter v8

    #@4
    .line 617
    :try_start_0
    iget-object v7, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    #@6
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v5

    #@a
    .local v5, "pendingCmd$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v7

    #@e
    if-eqz v7, :cond_4

    #@10
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v4

    #@14
    check-cast v4, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;

    #@16
    .line 618
    .local v4, "pendingCmd":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    iget v7, v4, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->cmdNum:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    if-ne v7, p1, :cond_0

    #@1a
    .line 619
    move-object v2, v4

    #@1b
    .local v2, "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    move-object v3, v2

    #@1c
    .line 623
    .end local v2    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    .end local v4    # "pendingCmd":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    .local v3, "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    :goto_0
    if-nez v3, :cond_3

    #@1e
    .line 624
    :try_start_1
    new-instance v2, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;

    #@20
    invoke-direct {v2, p1, p4}, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@23
    .line 625
    .end local v3    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    .restart local v2    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    :try_start_2
    iget-object v7, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    #@25
    invoke-virtual {v7, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    #@28
    .line 627
    :goto_1
    iget v7, v2, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    #@2a
    add-int/lit8 v7, v7, -0x1

    #@2c
    iput v7, v2, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    #@2e
    .line 630
    iget v7, v2, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    #@30
    if-nez v7, :cond_1

    #@32
    iget-object v7, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    #@34
    invoke-virtual {v7, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@37
    :cond_1
    monitor-exit v8

    #@38
    .line 632
    const/4 v6, 0x0

    #@39
    .line 634
    .local v6, "result":Lcom/android/server/NativeDaemonEvent;
    :try_start_3
    iget-object v7, v2, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->responses:Ljava/util/concurrent/BlockingQueue;

    #@3b
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@3d
    invoke-interface {v7, p2, p3, v8}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    #@40
    move-result-object v7

    #@41
    move-object v0, v7

    #@42
    check-cast v0, Lcom/android/server/NativeDaemonEvent;

    #@44
    move-object v6, v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    #@45
    .line 636
    .end local v6    # "result":Lcom/android/server/NativeDaemonEvent;
    :goto_2
    if-nez v6, :cond_2

    #@47
    .line 637
    const-string/jumbo v7, "NativeDaemonConnector.ResponseQueue"

    #@4a
    const-string/jumbo v8, "Timeout waiting for response"

    #@4d
    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@50
    .line 639
    :cond_2
    return-object v6

    #@51
    .line 616
    .end local v2    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    .end local v5    # "pendingCmd$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    #@52
    :goto_3
    monitor-exit v8

    #@53
    throw v7

    #@54
    .line 635
    .restart local v2    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    .restart local v5    # "pendingCmd$iterator":Ljava/util/Iterator;
    .restart local v6    # "result":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v1

    #@55
    .local v1, "e":Ljava/lang/InterruptedException;
    goto :goto_2

    #@56
    .line 616
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    .end local v6    # "result":Lcom/android/server/NativeDaemonEvent;
    .restart local v3    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    :catchall_1
    move-exception v7

    #@57
    move-object v2, v3

    #@58
    .end local v3    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    .restart local v2    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    goto :goto_3

    #@59
    .end local v2    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    .restart local v3    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    :cond_3
    move-object v2, v3

    #@5a
    .end local v3    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    .restart local v2    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    goto :goto_1

    #@5b
    .local v2, "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    :cond_4
    move-object v3, v2

    #@5c
    .restart local v3    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    goto :goto_0
.end method
