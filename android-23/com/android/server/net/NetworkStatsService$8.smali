.class Lcom/android/server/net/NetworkStatsService$8;
.super Landroid/net/INetworkStatsSession$Stub;
.source "NetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/net/NetworkStatsService;->createSession(Ljava/lang/String;Z)Landroid/net/INetworkStatsSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCallingPackage:Ljava/lang/String;

.field private mUidComplete:Lcom/android/server/net/NetworkStatsCollection;

.field private mUidTagComplete:Lcom/android/server/net/NetworkStatsCollection;

.field final synthetic this$0:Lcom/android/server/net/NetworkStatsService;

.field final synthetic val$callingPackage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/net/NetworkStatsService;
    .param p2, "val$callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 462
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$8;->this$0:Lcom/android/server/net/NetworkStatsService;

    #@2
    iput-object p2, p0, Lcom/android/server/net/NetworkStatsService$8;->val$callingPackage:Ljava/lang/String;

    #@4
    invoke-direct {p0}, Landroid/net/INetworkStatsSession$Stub;-><init>()V

    #@7
    .line 465
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$8;->val$callingPackage:Ljava/lang/String;

    #@9
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$8;->mCallingPackage:Ljava/lang/String;

    #@b
    .line 462
    return-void
.end method

.method private getUidComplete()Lcom/android/server/net/NetworkStatsCollection;
    .locals 2

    #@0
    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$8;->this$0:Lcom/android/server/net/NetworkStatsService;

    #@2
    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->-get2(Lcom/android/server/net/NetworkStatsService;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 469
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$8;->mUidComplete:Lcom/android/server/net/NetworkStatsCollection;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 470
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$8;->this$0:Lcom/android/server/net/NetworkStatsService;

    #@d
    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->-get3(Lcom/android/server/net/NetworkStatsService;)Lcom/android/server/net/NetworkStatsRecorder;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$8;->mUidComplete:Lcom/android/server/net/NetworkStatsCollection;

    #@17
    .line 472
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$8;->mUidComplete:Lcom/android/server/net/NetworkStatsCollection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    monitor-exit v1

    #@1a
    return-object v0

    #@1b
    .line 468
    :catchall_0
    move-exception v0

    #@1c
    monitor-exit v1

    #@1d
    throw v0
.end method

.method private getUidTagComplete()Lcom/android/server/net/NetworkStatsCollection;
    .locals 2

    #@0
    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$8;->this$0:Lcom/android/server/net/NetworkStatsService;

    #@2
    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->-get2(Lcom/android/server/net/NetworkStatsService;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 478
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$8;->mUidTagComplete:Lcom/android/server/net/NetworkStatsCollection;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 479
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$8;->this$0:Lcom/android/server/net/NetworkStatsService;

    #@d
    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->-get4(Lcom/android/server/net/NetworkStatsService;)Lcom/android/server/net/NetworkStatsRecorder;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$8;->mUidTagComplete:Lcom/android/server/net/NetworkStatsCollection;

    #@17
    .line 481
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$8;->mUidTagComplete:Lcom/android/server/net/NetworkStatsCollection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    monitor-exit v1

    #@1a
    return-object v0

    #@1b
    .line 477
    :catchall_0
    move-exception v0

    #@1c
    monitor-exit v1

    #@1d
    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 556
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$8;->mUidComplete:Lcom/android/server/net/NetworkStatsCollection;

    #@3
    .line 557
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$8;->mUidTagComplete:Lcom/android/server/net/NetworkStatsCollection;

    #@5
    .line 555
    return-void
.end method

.method public getDeviceSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .locals 10
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    #@0
    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$8;->this$0:Lcom/android/server/net/NetworkStatsService;

    #@2
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$8;->mCallingPackage:Ljava/lang/String;

    #@4
    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsService;->-wrap3(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)V

    #@7
    .line 495
    new-instance v8, Landroid/net/NetworkStats;

    #@9
    sub-long v0, p4, p2

    #@b
    const/4 v2, 0x1

    #@c
    invoke-direct {v8, v0, v1, v2}, Landroid/net/NetworkStats;-><init>(JI)V

    #@f
    .line 496
    .local v8, "result":Landroid/net/NetworkStats;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@12
    move-result-wide v6

    #@13
    .line 498
    .local v6, "ident":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$8;->this$0:Lcom/android/server/net/NetworkStatsService;

    #@15
    move-object v1, p1

    #@16
    move-wide v2, p2

    #@17
    move-wide v4, p4

    #@18
    invoke-static/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsService;->-wrap1(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v8, v0}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 500
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@22
    .line 502
    return-object v8

    #@23
    .line 499
    :catchall_0
    move-exception v0

    #@24
    .line 500
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@27
    .line 499
    throw v0
.end method

.method public getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;
    .locals 1
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "fields"    # I

    #@0
    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$8;->this$0:Lcom/android/server/net/NetworkStatsService;

    #@2
    invoke-static {v0, p1, p2}, Lcom/android/server/net/NetworkStatsService;->-wrap0(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;
    .locals 6
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "fields"    # I

    #@0
    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$8;->this$0:Lcom/android/server/net/NetworkStatsService;

    #@2
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$8;->mCallingPackage:Ljava/lang/String;

    #@4
    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsService;->-wrap2(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)V

    #@7
    .line 534
    if-nez p4, :cond_0

    #@9
    .line 535
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$8;->getUidComplete()Lcom/android/server/net/NetworkStatsCollection;

    #@c
    move-result-object v0

    #@d
    move-object v1, p1

    #@e
    move v2, p2

    #@f
    move v3, p3

    #@10
    move v4, p4

    #@11
    move v5, p5

    #@12
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    #@15
    move-result-object v0

    #@16
    return-object v0

    #@17
    .line 537
    :cond_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$8;->getUidTagComplete()Lcom/android/server/net/NetworkStatsCollection;

    #@1a
    move-result-object v0

    #@1b
    move-object v1, p1

    #@1c
    move v2, p2

    #@1d
    move v3, p3

    #@1e
    move v4, p4

    #@1f
    move v5, p5

    #@20
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    #@23
    move-result-object v0

    #@24
    return-object v0
.end method

.method public getHistoryIntervalForUid(Landroid/net/NetworkTemplate;IIIIJJ)Landroid/net/NetworkStatsHistory;
    .locals 10
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "fields"    # I
    .param p6, "start"    # J
    .param p8, "end"    # J

    #@0
    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$8;->this$0:Lcom/android/server/net/NetworkStatsService;

    #@2
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$8;->mCallingPackage:Ljava/lang/String;

    #@4
    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsService;->-wrap2(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)V

    #@7
    .line 546
    if-nez p4, :cond_0

    #@9
    .line 547
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$8;->getUidComplete()Lcom/android/server/net/NetworkStatsCollection;

    #@c
    move-result-object v0

    #@d
    move-object v1, p1

    #@e
    move v2, p2

    #@f
    move v3, p3

    #@10
    move v4, p4

    #@11
    move v5, p5

    #@12
    move-wide/from16 v6, p6

    #@14
    move-wide/from16 v8, p8

    #@16
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;IIIIJJ)Landroid/net/NetworkStatsHistory;

    #@19
    move-result-object v0

    #@1a
    return-object v0

    #@1b
    .line 549
    :cond_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$8;->getUidTagComplete()Lcom/android/server/net/NetworkStatsCollection;

    #@1e
    move-result-object v0

    #@1f
    move-object v1, p1

    #@20
    move v2, p2

    #@21
    move v3, p3

    #@22
    move v4, p4

    #@23
    move v5, p5

    #@24
    move-wide/from16 v6, p6

    #@26
    move-wide/from16 v8, p8

    #@28
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;IIIIJJ)Landroid/net/NetworkStatsHistory;

    #@2b
    move-result-object v0

    #@2c
    return-object v0
.end method

.method public getRelevantUids()[I
    .locals 2

    #@0
    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$8;->this$0:Lcom/android/server/net/NetworkStatsService;

    #@2
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$8;->mCallingPackage:Ljava/lang/String;

    #@4
    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsService;->-wrap2(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)V

    #@7
    .line 488
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$8;->getUidComplete()Lcom/android/server/net/NetworkStatsCollection;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->getRelevantUids()[I

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;
    .locals 8
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .param p6, "includeTags"    # Z

    #@0
    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$8;->this$0:Lcom/android/server/net/NetworkStatsService;

    #@2
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$8;->mCallingPackage:Ljava/lang/String;

    #@4
    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsService;->-wrap2(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)V

    #@7
    .line 521
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$8;->getUidComplete()Lcom/android/server/net/NetworkStatsCollection;

    #@a
    move-result-object v0

    #@b
    move-object v1, p1

    #@c
    move-wide v2, p2

    #@d
    move-wide v4, p4

    #@e
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsCollection;->getSummary(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    #@11
    move-result-object v6

    #@12
    .line 522
    .local v6, "stats":Landroid/net/NetworkStats;
    if-eqz p6, :cond_0

    #@14
    .line 523
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$8;->getUidTagComplete()Lcom/android/server/net/NetworkStatsCollection;

    #@17
    move-result-object v0

    #@18
    move-object v1, p1

    #@19
    move-wide v2, p2

    #@1a
    move-wide v4, p4

    #@1b
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsCollection;->getSummary(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    #@1e
    move-result-object v7

    #@1f
    .line 525
    .local v7, "tagStats":Landroid/net/NetworkStats;
    invoke-virtual {v6, v7}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    #@22
    .line 527
    .end local v7    # "tagStats":Landroid/net/NetworkStats;
    :cond_0
    return-object v6
.end method

.method public getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .locals 6
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    #@0
    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$8;->this$0:Lcom/android/server/net/NetworkStatsService;

    #@2
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$8;->mCallingPackage:Ljava/lang/String;

    #@4
    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsService;->-wrap3(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)V

    #@7
    .line 509
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$8;->this$0:Lcom/android/server/net/NetworkStatsService;

    #@9
    move-object v1, p1

    #@a
    move-wide v2, p2

    #@b
    move-wide v4, p4

    #@c
    invoke-static/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsService;->-wrap1(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method
