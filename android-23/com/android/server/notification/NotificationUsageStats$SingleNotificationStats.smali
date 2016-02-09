.class public Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;
.super Ljava/lang/Object;
.source "NotificationUsageStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationUsageStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleNotificationStats"
.end annotation


# instance fields
.field public airtimeCount:J

.field public airtimeExpandedMs:J

.field public airtimeMs:J

.field public currentAirtimeExpandedStartElapsedMs:J

.field public currentAirtimeStartElapsedMs:J

.field private isExpanded:Z

.field private isVisible:Z

.field public posttimeElapsedMs:J

.field public posttimeToDismissMs:J

.field public posttimeToFirstAirtimeMs:J

.field public posttimeToFirstClickMs:J

.field public posttimeToFirstVisibleExpansionMs:J

.field public userExpansionCount:J


# direct methods
.method public constructor <init>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const-wide/16 v2, 0x0

    #@3
    const-wide/16 v0, -0x1

    #@5
    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@8
    .line 532
    iput-boolean v4, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isVisible:Z

    #@a
    .line 533
    iput-boolean v4, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isExpanded:Z

    #@c
    .line 535
    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeElapsedMs:J

    #@e
    .line 537
    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstClickMs:J

    #@10
    .line 539
    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToDismissMs:J

    #@12
    .line 541
    iput-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeCount:J

    #@14
    .line 543
    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstAirtimeMs:J

    #@16
    .line 548
    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeStartElapsedMs:J

    #@18
    .line 550
    iput-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeMs:J

    #@1a
    .line 555
    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstVisibleExpansionMs:J

    #@1c
    .line 560
    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeExpandedStartElapsedMs:J

    #@1e
    .line 562
    iput-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeExpandedMs:J

    #@20
    .line 564
    iput-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->userExpansionCount:J

    #@22
    .line 531
    return-void
.end method

.method private updateVisiblyExpandedStats()V
    .locals 6

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    .line 651
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@5
    move-result-wide v0

    #@6
    .line 652
    .local v0, "elapsedNowMs":J
    iget-boolean v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isExpanded:Z

    #@8
    if-eqz v2, :cond_2

    #@a
    iget-boolean v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isVisible:Z

    #@c
    if-eqz v2, :cond_2

    #@e
    .line 654
    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeExpandedStartElapsedMs:J

    #@10
    cmp-long v2, v2, v4

    #@12
    if-gez v2, :cond_0

    #@14
    .line 655
    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeExpandedStartElapsedMs:J

    #@16
    .line 657
    :cond_0
    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstVisibleExpansionMs:J

    #@18
    cmp-long v2, v2, v4

    #@1a
    if-gez v2, :cond_1

    #@1c
    .line 658
    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeElapsedMs:J

    #@1e
    sub-long v2, v0, v2

    #@20
    iput-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstVisibleExpansionMs:J

    #@22
    .line 650
    :cond_1
    :goto_0
    return-void

    #@23
    .line 662
    :cond_2
    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeExpandedStartElapsedMs:J

    #@25
    cmp-long v2, v2, v4

    #@27
    if-ltz v2, :cond_1

    #@29
    .line 663
    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeExpandedMs:J

    #@2b
    iget-wide v4, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeExpandedStartElapsedMs:J

    #@2d
    sub-long v4, v0, v4

    #@2f
    add-long/2addr v2, v4

    #@30
    iput-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeExpandedMs:J

    #@32
    .line 664
    const-wide/16 v2, -0x1

    #@34
    iput-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeExpandedStartElapsedMs:J

    #@36
    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 1

    #@0
    .prologue
    .line 671
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->onVisibilityChanged(Z)V

    #@4
    .line 670
    return-void
.end method

.method public getCurrentAirtimeExpandedMs()J
    .locals 6

    #@0
    .prologue
    .line 583
    iget-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeExpandedMs:J

    #@2
    .line 585
    .local v0, "result":J
    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeExpandedStartElapsedMs:J

    #@4
    const-wide/16 v4, 0x0

    #@6
    cmp-long v2, v2, v4

    #@8
    if-ltz v2, :cond_0

    #@a
    .line 586
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@d
    move-result-wide v2

    #@e
    iget-wide v4, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeExpandedStartElapsedMs:J

    #@10
    sub-long/2addr v2, v4

    #@11
    add-long/2addr v0, v2

    #@12
    .line 588
    :cond_0
    return-wide v0
.end method

.method public getCurrentAirtimeMs()J
    .locals 6

    #@0
    .prologue
    .line 574
    iget-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeMs:J

    #@2
    .line 576
    .local v0, "result":J
    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeStartElapsedMs:J

    #@4
    const-wide/16 v4, 0x0

    #@6
    cmp-long v2, v2, v4

    #@8
    if-ltz v2, :cond_0

    #@a
    .line 577
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@d
    move-result-wide v2

    #@e
    iget-wide v4, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeStartElapsedMs:J

    #@10
    sub-long/2addr v2, v4

    #@11
    add-long/2addr v0, v2

    #@12
    .line 579
    :cond_0
    return-wide v0
.end method

.method public getCurrentPosttimeMs()J
    .locals 4

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 567
    iget-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeElapsedMs:J

    #@4
    cmp-long v0, v0, v2

    #@6
    if-gez v0, :cond_0

    #@8
    .line 568
    return-wide v2

    #@9
    .line 570
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@c
    move-result-wide v0

    #@d
    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeElapsedMs:J

    #@f
    sub-long/2addr v0, v2

    #@10
    return-wide v0
.end method

.method public onCancel()V
    .locals 0

    #@0
    .prologue
    .line 611
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->finish()V

    #@3
    .line 610
    return-void
.end method

.method public onClick()V
    .locals 4

    #@0
    .prologue
    .line 595
    iget-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstClickMs:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-gez v0, :cond_0

    #@8
    .line 596
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@b
    move-result-wide v0

    #@c
    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeElapsedMs:J

    #@e
    sub-long/2addr v0, v2

    #@f
    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstClickMs:J

    #@11
    .line 594
    :cond_0
    return-void
.end method

.method public onDismiss()V
    .locals 4

    #@0
    .prologue
    .line 604
    iget-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToDismissMs:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-gez v0, :cond_0

    #@8
    .line 605
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@b
    move-result-wide v0

    #@c
    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeElapsedMs:J

    #@e
    sub-long/2addr v0, v2

    #@f
    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToDismissMs:J

    #@11
    .line 607
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->finish()V

    #@14
    .line 603
    return-void
.end method

.method public onExpansionChanged(ZZ)V
    .locals 4
    .param p1, "userAction"    # Z
    .param p2, "expanded"    # Z

    #@0
    .prologue
    .line 643
    iput-boolean p2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isExpanded:Z

    #@2
    .line 644
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isExpanded:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    if-eqz p1, :cond_0

    #@8
    .line 645
    iget-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->userExpansionCount:J

    #@a
    const-wide/16 v2, 0x1

    #@c
    add-long/2addr v0, v2

    #@d
    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->userExpansionCount:J

    #@f
    .line 647
    :cond_0
    invoke-direct {p0}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->updateVisiblyExpandedStats()V

    #@12
    .line 642
    return-void
.end method

.method public onRemoved()V
    .locals 0

    #@0
    .prologue
    .line 615
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->finish()V

    #@3
    .line 614
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 10
    .param p1, "visible"    # Z

    #@0
    .prologue
    const-wide/16 v8, 0x0

    #@2
    .line 619
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@5
    move-result-wide v0

    #@6
    .line 620
    .local v0, "elapsedNowMs":J
    iget-boolean v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isVisible:Z

    #@8
    .line 621
    .local v2, "wasVisible":Z
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isVisible:Z

    #@a
    .line 622
    if-eqz p1, :cond_3

    #@c
    .line 623
    iget-wide v4, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeStartElapsedMs:J

    #@e
    cmp-long v3, v4, v8

    #@10
    if-gez v3, :cond_0

    #@12
    .line 624
    iget-wide v4, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeCount:J

    #@14
    const-wide/16 v6, 0x1

    #@16
    add-long/2addr v4, v6

    #@17
    iput-wide v4, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeCount:J

    #@19
    .line 625
    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeStartElapsedMs:J

    #@1b
    .line 627
    :cond_0
    iget-wide v4, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstAirtimeMs:J

    #@1d
    cmp-long v3, v4, v8

    #@1f
    if-gez v3, :cond_1

    #@21
    .line 628
    iget-wide v4, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeElapsedMs:J

    #@23
    sub-long v4, v0, v4

    #@25
    iput-wide v4, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstAirtimeMs:J

    #@27
    .line 637
    :cond_1
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isVisible:Z

    #@29
    if-eq v2, v3, :cond_2

    #@2b
    .line 638
    invoke-direct {p0}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->updateVisiblyExpandedStats()V

    #@2e
    .line 618
    :cond_2
    return-void

    #@2f
    .line 631
    :cond_3
    iget-wide v4, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeStartElapsedMs:J

    #@31
    cmp-long v3, v4, v8

    #@33
    if-ltz v3, :cond_1

    #@35
    .line 632
    iget-wide v4, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeMs:J

    #@37
    iget-wide v6, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeStartElapsedMs:J

    #@39
    sub-long v6, v0, v6

    #@3b
    add-long/2addr v4, v6

    #@3c
    iput-wide v4, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeMs:J

    #@3e
    .line 633
    const-wide/16 v4, -0x1

    #@40
    iput-wide v4, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeStartElapsedMs:J

    #@42
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "SingleNotificationStats{posttimeElapsedMs="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 677
    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeElapsedMs:J

    #@e
    .line 676
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 678
    const-string/jumbo v1, ", posttimeToFirstClickMs="

    #@15
    .line 676
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 678
    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstClickMs:J

    #@1b
    .line 676
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 679
    const-string/jumbo v1, ", posttimeToDismissMs="

    #@22
    .line 676
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 679
    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToDismissMs:J

    #@28
    .line 676
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 680
    const-string/jumbo v1, ", airtimeCount="

    #@2f
    .line 676
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 680
    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeCount:J

    #@35
    .line 676
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 681
    const-string/jumbo v1, ", airtimeMs="

    #@3c
    .line 676
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    .line 681
    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeMs:J

    #@42
    .line 676
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    .line 682
    const-string/jumbo v1, ", currentAirtimeStartElapsedMs="

    #@49
    .line 676
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    .line 682
    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeStartElapsedMs:J

    #@4f
    .line 676
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    .line 683
    const-string/jumbo v1, ", airtimeExpandedMs="

    #@56
    .line 676
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v0

    #@5a
    .line 683
    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeExpandedMs:J

    #@5c
    .line 676
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v0

    #@60
    .line 684
    const-string/jumbo v1, ", posttimeToFirstVisibleExpansionMs="

    #@63
    .line 676
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v0

    #@67
    .line 684
    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstVisibleExpansionMs:J

    #@69
    .line 676
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v0

    #@6d
    .line 685
    const-string/jumbo v1, ", currentAirtimeExpandedSEMs="

    #@70
    .line 676
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v0

    #@74
    .line 685
    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeExpandedStartElapsedMs:J

    #@76
    .line 676
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@79
    move-result-object v0

    #@7a
    .line 686
    const/16 v1, 0x7d

    #@7c
    .line 676
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v0

    #@80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v0

    #@84
    return-object v0
.end method
