.class Lcom/android/server/net/NetworkStatsService$7;
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
    .line 482
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$7;->this$0:Lcom/android/server/net/NetworkStatsService;

    #@2
    iput-object p2, p0, Lcom/android/server/net/NetworkStatsService$7;->val$callingPackage:Ljava/lang/String;

    #@4
    invoke-direct {p0}, Landroid/net/INetworkStatsSession$Stub;-><init>()V

    #@7
    .line 485
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$7;->val$callingPackage:Ljava/lang/String;

    #@9
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$7;->mCallingPackage:Ljava/lang/String;

    #@b
    .line 482
    return-void
.end method

.method private getUidComplete()Lcom/android/server/net/NetworkStatsCollection;
    .locals 2

    #@0
    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$7;->this$0:Lcom/android/server/net/NetworkStatsService;

    #@2
    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->-get2(Lcom/android/server/net/NetworkStatsService;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 489
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$7;->mUidComplete:Lcom/android/server/net/NetworkStatsCollection;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 490
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$7;->this$0:Lcom/android/server/net/NetworkStatsService;

    #@d
    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->-get3(Lcom/android/server/net/NetworkStatsService;)Lcom/android/server/net/NetworkStatsRecorder;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$7;->mUidComplete:Lcom/android/server/net/NetworkStatsCollection;

    #@17
    .line 492
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$7;->mUidComplete:Lcom/android/server/net/NetworkStatsCollection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    monitor-exit v1

    #@1a
    return-object v0

    #@1b
    .line 488
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
    .line 497
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$7;->this$0:Lcom/android/server/net/NetworkStatsService;

    #@2
    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->-get2(Lcom/android/server/net/NetworkStatsService;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 498
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$7;->mUidTagComplete:Lcom/android/server/net/NetworkStatsCollection;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 499
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$7;->this$0:Lcom/android/server/net/NetworkStatsService;

    #@d
    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->-get4(Lcom/android/server/net/NetworkStatsService;)Lcom/android/server/net/NetworkStatsRecorder;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$7;->mUidTagComplete:Lcom/android/server/net/NetworkStatsCollection;

    #@17
    .line 501
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$7;->mUidTagComplete:Lcom/android/server/net/NetworkStatsCollection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    monitor-exit v1

    #@1a
    return-object v0

    #@1b
    .line 497
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
    .line 592
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$7;->mUidComplete:Lcom/android/server/net/NetworkStatsCollection;

    #@3
    .line 593
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$7;->mUidTagComplete:Lcom/android/server/net/NetworkStatsCollection;

    #@5
    .line 591
    return-void
.end method

.method public getDeviceSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .locals 12
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    #@0
    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$7;->this$0:Lcom/android/server/net/NetworkStatsService;

    #@2
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$7;->mCallingPackage:Ljava/lang/String;

    #@4
    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsService;->-wrap2(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)I

    #@7
    move-result v7

    #@8
    .line 514
    .local v7, "accessLevel":I
    const/4 v0, 0x2

    #@9
    if-ge v7, v0, :cond_0

    #@b
    .line 515
    new-instance v0, Ljava/lang/SecurityException;

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v2, "Calling package "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService$7;->mCallingPackage:Ljava/lang/String;

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    .line 516
    const-string/jumbo v2, " cannot access device summary network stats"

    #@22
    .line 515
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v0

    #@2e
    .line 518
    :cond_0
    new-instance v10, Landroid/net/NetworkStats;

    #@30
    sub-long v0, p4, p2

    #@32
    const/4 v2, 0x1

    #@33
    invoke-direct {v10, v0, v1, v2}, Landroid/net/NetworkStats;-><init>(JI)V

    #@36
    .line 519
    .local v10, "result":Landroid/net/NetworkStats;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@39
    move-result-wide v8

    #@3a
    .line 525
    .local v8, "ident":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$7;->this$0:Lcom/android/server/net/NetworkStatsService;

    #@3c
    .line 526
    const/4 v6, 0x3

    #@3d
    move-object v1, p1

    #@3e
    move-wide v2, p2

    #@3f
    move-wide/from16 v4, p4

    #@41
    .line 525
    invoke-static/range {v0 .. v6}, Lcom/android/server/net/NetworkStatsService;->-wrap1(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;JJI)Landroid/net/NetworkStats;

    #@44
    move-result-object v0

    #@45
    .line 524
    invoke-virtual {v10, v0}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@48
    .line 528
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4b
    .line 530
    return-object v10

    #@4c
    .line 527
    :catchall_0
    move-exception v0

    #@4d
    .line 528
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@50
    .line 527
    throw v0
.end method

.method public getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;
    .locals 3
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "fields"    # I

    #@0
    .prologue
    .line 542
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$7;->this$0:Lcom/android/server/net/NetworkStatsService;

    #@2
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService$7;->mCallingPackage:Ljava/lang/String;

    #@4
    invoke-static {v1, v2}, Lcom/android/server/net/NetworkStatsService;->-wrap2(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)I

    #@7
    move-result v0

    #@8
    .line 543
    .local v0, "accessLevel":I
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$7;->this$0:Lcom/android/server/net/NetworkStatsService;

    #@a
    invoke-static {v1, p1, p2, v0}, Lcom/android/server/net/NetworkStatsService;->-wrap0(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;II)Landroid/net/NetworkStatsHistory;

    #@d
    move-result-object v1

    #@e
    return-object v1
.end method

.method public getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;
    .locals 7
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "fields"    # I

    #@0
    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$7;->this$0:Lcom/android/server/net/NetworkStatsService;

    #@2
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$7;->mCallingPackage:Ljava/lang/String;

    #@4
    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsService;->-wrap2(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)I

    #@7
    move-result v6

    #@8
    .line 564
    .local v6, "accessLevel":I
    if-nez p4, :cond_0

    #@a
    .line 565
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$7;->getUidComplete()Lcom/android/server/net/NetworkStatsCollection;

    #@d
    move-result-object v0

    #@e
    move-object v1, p1

    #@f
    move v2, p2

    #@10
    move v3, p3

    #@11
    move v4, p4

    #@12
    move v5, p5

    #@13
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;IIIII)Landroid/net/NetworkStatsHistory;

    #@16
    move-result-object v0

    #@17
    return-object v0

    #@18
    .line 568
    :cond_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$7;->getUidTagComplete()Lcom/android/server/net/NetworkStatsCollection;

    #@1b
    move-result-object v0

    #@1c
    move-object v1, p1

    #@1d
    move v2, p2

    #@1e
    move v3, p3

    #@1f
    move v4, p4

    #@20
    move v5, p5

    #@21
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;IIIII)Landroid/net/NetworkStatsHistory;

    #@24
    move-result-object v0

    #@25
    return-object v0
.end method

.method public getHistoryIntervalForUid(Landroid/net/NetworkTemplate;IIIIJJ)Landroid/net/NetworkStatsHistory;
    .locals 12
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "fields"    # I
    .param p6, "start"    # J
    .param p8, "end"    # J

    #@0
    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$7;->this$0:Lcom/android/server/net/NetworkStatsService;

    #@2
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$7;->mCallingPackage:Ljava/lang/String;

    #@4
    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsService;->-wrap2(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)I

    #@7
    move-result v10

    #@8
    .line 578
    .local v10, "accessLevel":I
    if-nez p4, :cond_0

    #@a
    .line 579
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$7;->getUidComplete()Lcom/android/server/net/NetworkStatsCollection;

    #@d
    move-result-object v0

    #@e
    move-object v1, p1

    #@f
    move v2, p2

    #@10
    move v3, p3

    #@11
    move/from16 v4, p4

    #@13
    move/from16 v5, p5

    #@15
    move-wide/from16 v6, p6

    #@17
    move-wide/from16 v8, p8

    #@19
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;IIIIJJI)Landroid/net/NetworkStatsHistory;

    #@1c
    move-result-object v0

    #@1d
    return-object v0

    #@1e
    .line 581
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@21
    move-result v0

    #@22
    if-ne p2, v0, :cond_1

    #@24
    .line 582
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$7;->getUidTagComplete()Lcom/android/server/net/NetworkStatsCollection;

    #@27
    move-result-object v0

    #@28
    move-object v1, p1

    #@29
    move v2, p2

    #@2a
    move v3, p3

    #@2b
    move/from16 v4, p4

    #@2d
    move/from16 v5, p5

    #@2f
    move-wide/from16 v6, p6

    #@31
    move-wide/from16 v8, p8

    #@33
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;IIIIJJI)Landroid/net/NetworkStatsHistory;

    #@36
    move-result-object v0

    #@37
    return-object v0

    #@38
    .line 585
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    #@3a
    new-instance v1, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v2, "Calling package "

    #@42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService$7;->mCallingPackage:Ljava/lang/String;

    #@48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v1

    #@4c
    .line 586
    const-string/jumbo v2, " cannot access tag information from a different uid"

    #@4f
    .line 585
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v1

    #@53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v1

    #@57
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@5a
    throw v0
.end method

.method public getRelevantUids()[I
    .locals 3

    #@0
    .prologue
    .line 507
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$7;->getUidComplete()Lcom/android/server/net/NetworkStatsCollection;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$7;->this$0:Lcom/android/server/net/NetworkStatsService;

    #@6
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService$7;->mCallingPackage:Ljava/lang/String;

    #@8
    invoke-static {v1, v2}, Lcom/android/server/net/NetworkStatsService;->-wrap2(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)I

    #@b
    move-result v1

    #@c
    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsCollection;->getRelevantUids(I)[I

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method public getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;
    .locals 10
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .param p6, "includeTags"    # Z

    #@0
    .prologue
    .line 549
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$7;->this$0:Lcom/android/server/net/NetworkStatsService;

    #@2
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$7;->mCallingPackage:Ljava/lang/String;

    #@4
    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsService;->-wrap2(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)I

    #@7
    move-result v6

    #@8
    .line 551
    .local v6, "accessLevel":I
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$7;->getUidComplete()Lcom/android/server/net/NetworkStatsCollection;

    #@b
    move-result-object v0

    #@c
    move-object v1, p1

    #@d
    move-wide v2, p2

    #@e
    move-wide v4, p4

    #@f
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/net/NetworkStatsCollection;->getSummary(Landroid/net/NetworkTemplate;JJI)Landroid/net/NetworkStats;

    #@12
    move-result-object v7

    #@13
    .line 552
    .local v7, "stats":Landroid/net/NetworkStats;
    if-eqz p6, :cond_0

    #@15
    .line 553
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$7;->getUidTagComplete()Lcom/android/server/net/NetworkStatsCollection;

    #@18
    move-result-object v0

    #@19
    move-object v1, p1

    #@1a
    move-wide v2, p2

    #@1b
    move-wide v4, p4

    #@1c
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/net/NetworkStatsCollection;->getSummary(Landroid/net/NetworkTemplate;JJI)Landroid/net/NetworkStats;

    #@1f
    move-result-object v8

    #@20
    .line 555
    .local v8, "tagStats":Landroid/net/NetworkStats;
    invoke-virtual {v7, v8}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    #@23
    .line 557
    .end local v8    # "tagStats":Landroid/net/NetworkStats;
    :cond_0
    return-object v7
.end method

.method public getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .locals 8
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    #@0
    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$7;->this$0:Lcom/android/server/net/NetworkStatsService;

    #@2
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$7;->mCallingPackage:Ljava/lang/String;

    #@4
    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsService;->-wrap2(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)I

    #@7
    move-result v6

    #@8
    .line 537
    .local v6, "accessLevel":I
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$7;->this$0:Lcom/android/server/net/NetworkStatsService;

    #@a
    move-object v1, p1

    #@b
    move-wide v2, p2

    #@c
    move-wide v4, p4

    #@d
    invoke-static/range {v0 .. v6}, Lcom/android/server/net/NetworkStatsService;->-wrap1(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;JJI)Landroid/net/NetworkStats;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method
