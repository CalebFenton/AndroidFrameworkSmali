.class Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TimeBase"
.end annotation


# instance fields
.field private final mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;",
            ">;"
        }
    .end annotation
.end field

.field private mPastRealtime:J

.field private mPastUptime:J

.field private mRealtime:J

.field private mRealtimeStart:J

.field private mRunning:Z

.field private mUnpluggedRealtime:J

.field private mUnpluggedUptime:J

.field private mUptime:J

.field private mUptimeStart:J


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 513
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mObservers:Ljava/util/ArrayList;

    #@a
    .line 512
    return-void
.end method


# virtual methods
.method public add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V
    .locals 1
    .param p1, "observer"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;

    #@0
    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mObservers:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 556
    return-void
.end method

.method public computeRealtime(JI)J
    .locals 5
    .param p1, "curTime"    # J
    .param p3, "which"    # I

    #@0
    .prologue
    .line 602
    packed-switch p3, :pswitch_data_0

    #@3
    .line 610
    const-wide/16 v0, 0x0

    #@5
    return-wide v0

    #@6
    .line 604
    :pswitch_0
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtime:J

    #@8
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    #@b
    move-result-wide v2

    #@c
    add-long/2addr v0, v2

    #@d
    return-wide v0

    #@e
    .line 606
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    #@11
    move-result-wide v0

    #@12
    return-wide v0

    #@13
    .line 608
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    #@16
    move-result-wide v0

    #@17
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedRealtime:J

    #@19
    sub-long/2addr v0, v2

    #@1a
    return-wide v0

    #@1b
    .line 602
    nop

    #@1c
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public computeUptime(JI)J
    .locals 5
    .param p1, "curTime"    # J
    .param p3, "which"    # I

    #@0
    .prologue
    .line 590
    packed-switch p3, :pswitch_data_0

    #@3
    .line 598
    const-wide/16 v0, 0x0

    #@5
    return-wide v0

    #@6
    .line 592
    :pswitch_0
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptime:J

    #@8
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getUptime(J)J

    #@b
    move-result-wide v2

    #@c
    add-long/2addr v0, v2

    #@d
    return-wide v0

    #@e
    .line 594
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getUptime(J)J

    #@11
    move-result-wide v0

    #@12
    return-wide v0

    #@13
    .line 596
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getUptime(J)J

    #@16
    move-result-wide v0

    #@17
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedUptime:J

    #@19
    sub-long/2addr v0, v2

    #@1a
    return-wide v0

    #@1b
    .line 590
    nop

    #@1c
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const-wide/16 v4, 0x3e8

    #@3
    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    const/16 v1, 0x80

    #@7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@a
    .line 529
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d
    const-string/jumbo v1, "mRunning="

    #@10
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRunning:Z

    #@15
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    #@18
    .line 530
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@1b
    .line 531
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    .line 532
    const-string/jumbo v1, "mUptime="

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    .line 533
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptime:J

    #@26
    div-long/2addr v2, v4

    #@27
    invoke-static {v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@2a
    .line 534
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@31
    .line 535
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@34
    .line 536
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    .line 537
    const-string/jumbo v1, "mRealtime="

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    .line 538
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtime:J

    #@3f
    div-long/2addr v2, v4

    #@40
    invoke-static {v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@43
    .line 539
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v1

    #@47
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4a
    .line 540
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@4d
    .line 541
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    .line 542
    const-string/jumbo v1, "mPastUptime="

    #@53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    .line 543
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastUptime:J

    #@58
    div-long/2addr v2, v4

    #@59
    invoke-static {v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@5c
    const-string/jumbo v1, "mUptimeStart="

    #@5f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    .line 544
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptimeStart:J

    #@64
    div-long/2addr v2, v4

    #@65
    invoke-static {v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@68
    .line 545
    const-string/jumbo v1, "mUnpluggedUptime="

    #@6b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedUptime:J

    #@70
    div-long/2addr v2, v4

    #@71
    invoke-static {v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@74
    .line 546
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v1

    #@78
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7b
    .line 547
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@7e
    .line 548
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    .line 549
    const-string/jumbo v1, "mPastRealtime="

    #@84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    .line 550
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastRealtime:J

    #@89
    div-long/2addr v2, v4

    #@8a
    invoke-static {v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@8d
    const-string/jumbo v1, "mRealtimeStart="

    #@90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    .line 551
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtimeStart:J

    #@95
    div-long/2addr v2, v4

    #@96
    invoke-static {v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@99
    .line 552
    const-string/jumbo v1, "mUnpluggedRealtime="

    #@9c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedRealtime:J

    #@a1
    div-long/2addr v2, v4

    #@a2
    invoke-static {v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    #@a5
    .line 553
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a8
    move-result-object v1

    #@a9
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ac
    .line 527
    return-void
.end method

.method public getRealtime(J)J
    .locals 5
    .param p1, "curTime"    # J

    #@0
    .prologue
    .line 622
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastRealtime:J

    #@2
    .line 623
    .local v0, "time":J
    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRunning:Z

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 624
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtimeStart:J

    #@8
    sub-long v2, p1, v2

    #@a
    add-long/2addr v0, v2

    #@b
    .line 626
    :cond_0
    return-wide v0
.end method

.method public getRealtimeStart()J
    .locals 2

    #@0
    .prologue
    .line 634
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtimeStart:J

    #@2
    return-wide v0
.end method

.method public getUptime(J)J
    .locals 5
    .param p1, "curTime"    # J

    #@0
    .prologue
    .line 614
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastUptime:J

    #@2
    .line 615
    .local v0, "time":J
    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRunning:Z

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 616
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptimeStart:J

    #@8
    sub-long v2, p1, v2

    #@a
    add-long/2addr v0, v2

    #@b
    .line 618
    :cond_0
    return-wide v0
.end method

.method public getUptimeStart()J
    .locals 2

    #@0
    .prologue
    .line 630
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptimeStart:J

    #@2
    return-wide v0
.end method

.method public init(JJ)V
    .locals 3
    .param p1, "uptime"    # J
    .param p3, "realtime"    # J

    #@0
    .prologue
    const-wide/16 v0, 0x0

    #@2
    .line 567
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtime:J

    #@4
    .line 568
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptime:J

    #@6
    .line 569
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastUptime:J

    #@8
    .line 570
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastRealtime:J

    #@a
    .line 571
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptimeStart:J

    #@c
    .line 572
    iput-wide p3, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtimeStart:J

    #@e
    .line 573
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptimeStart:J

    #@10
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getUptime(J)J

    #@13
    move-result-wide v0

    #@14
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedUptime:J

    #@16
    .line 574
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtimeStart:J

    #@18
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    #@1b
    move-result-wide v0

    #@1c
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedRealtime:J

    #@1e
    .line 566
    return-void
.end method

.method public isRunning()Z
    .locals 1

    #@0
    .prologue
    .line 638
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRunning:Z

    #@2
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 680
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRunning:Z

    #@3
    .line 681
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@6
    move-result-wide v0

    #@7
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptime:J

    #@9
    .line 682
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@c
    move-result-wide v0

    #@d
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastUptime:J

    #@f
    .line 683
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@12
    move-result-wide v0

    #@13
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptimeStart:J

    #@15
    .line 684
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@18
    move-result-wide v0

    #@19
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtime:J

    #@1b
    .line 685
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@1e
    move-result-wide v0

    #@1f
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastRealtime:J

    #@21
    .line 686
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@24
    move-result-wide v0

    #@25
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtimeStart:J

    #@27
    .line 687
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@2a
    move-result-wide v0

    #@2b
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedUptime:J

    #@2d
    .line 688
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@30
    move-result-wide v0

    #@31
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedRealtime:J

    #@33
    .line 679
    return-void
.end method

.method public readSummaryFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 670
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@3
    move-result-wide v0

    #@4
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptime:J

    #@6
    .line 671
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@9
    move-result-wide v0

    #@a
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtime:J

    #@c
    .line 669
    return-void
.end method

.method public remove(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V
    .locals 3
    .param p1, "observer"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;

    #@0
    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mObservers:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 562
    const-string/jumbo v0, "BatteryStatsImpl"

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "Removed unknown observer: "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 560
    :cond_0
    return-void
.end method

.method public reset(JJ)V
    .locals 5
    .param p1, "uptime"    # J
    .param p3, "realtime"    # J

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 578
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRunning:Z

    #@4
    if-nez v0, :cond_0

    #@6
    .line 579
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastUptime:J

    #@8
    .line 580
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastRealtime:J

    #@a
    .line 577
    :goto_0
    return-void

    #@b
    .line 582
    :cond_0
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptimeStart:J

    #@d
    .line 583
    iput-wide p3, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtimeStart:J

    #@f
    .line 584
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getUptime(J)J

    #@12
    move-result-wide v0

    #@13
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedUptime:J

    #@15
    .line 585
    invoke-virtual {p0, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    #@18
    move-result-wide v0

    #@19
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedRealtime:J

    #@1b
    goto :goto_0
.end method

.method public setRunning(ZJJ)Z
    .locals 10
    .param p1, "running"    # Z
    .param p2, "uptime"    # J
    .param p4, "realtime"    # J

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 642
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRunning:Z

    #@3
    if-eq v1, p1, :cond_2

    #@5
    .line 643
    iput-boolean p1, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRunning:Z

    #@7
    .line 644
    if-eqz p1, :cond_0

    #@9
    .line 645
    iput-wide p2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptimeStart:J

    #@b
    .line 646
    iput-wide p4, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtimeStart:J

    #@d
    .line 647
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getUptime(J)J

    #@10
    move-result-wide v4

    #@11
    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedUptime:J

    #@13
    .line 648
    .local v4, "batteryUptime":J
    invoke-virtual {p0, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    #@16
    move-result-wide v6

    #@17
    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedRealtime:J

    #@19
    .line 650
    .local v6, "batteryRealtime":J
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mObservers:Ljava/util/ArrayList;

    #@1b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@1e
    move-result v1

    #@1f
    add-int/lit8 v0, v1, -0x1

    #@21
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@23
    .line 651
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mObservers:Ljava/util/ArrayList;

    #@25
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@28
    move-result-object v1

    #@29
    check-cast v1, Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;

    #@2b
    move-wide v2, p4

    #@2c
    invoke-interface/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;->onTimeStarted(JJJ)V

    #@2f
    .line 650
    add-int/lit8 v0, v0, -0x1

    #@31
    goto :goto_0

    #@32
    .line 654
    .end local v0    # "i":I
    .end local v4    # "batteryUptime":J
    .end local v6    # "batteryRealtime":J
    :cond_0
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastUptime:J

    #@34
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptimeStart:J

    #@36
    sub-long v8, p2, v8

    #@38
    add-long/2addr v2, v8

    #@39
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastUptime:J

    #@3b
    .line 655
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastRealtime:J

    #@3d
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtimeStart:J

    #@3f
    sub-long v8, p4, v8

    #@41
    add-long/2addr v2, v8

    #@42
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastRealtime:J

    #@44
    .line 657
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getUptime(J)J

    #@47
    move-result-wide v4

    #@48
    .line 658
    .restart local v4    # "batteryUptime":J
    invoke-virtual {p0, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    #@4b
    move-result-wide v6

    #@4c
    .line 660
    .restart local v6    # "batteryRealtime":J
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mObservers:Ljava/util/ArrayList;

    #@4e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@51
    move-result v1

    #@52
    add-int/lit8 v0, v1, -0x1

    #@54
    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_1

    #@56
    .line 661
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mObservers:Ljava/util/ArrayList;

    #@58
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5b
    move-result-object v1

    #@5c
    check-cast v1, Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;

    #@5e
    move-wide v2, p4

    #@5f
    invoke-interface/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;->onTimeStopped(JJJ)V

    #@62
    .line 660
    add-int/lit8 v0, v0, -0x1

    #@64
    goto :goto_1

    #@65
    .line 664
    :cond_1
    const/4 v1, 0x1

    #@66
    return v1

    #@67
    .line 666
    .end local v0    # "i":I
    .end local v4    # "batteryUptime":J
    .end local v6    # "batteryRealtime":J
    :cond_2
    return v2
.end method

.method public writeSummaryToParcel(Landroid/os/Parcel;JJ)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "uptime"    # J
    .param p4, "realtime"    # J

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 675
    invoke-virtual {p0, p2, p3, v2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->computeUptime(JI)J

    #@4
    move-result-wide v0

    #@5
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@8
    .line 676
    invoke-virtual {p0, p4, p5, v2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->computeRealtime(JI)J

    #@b
    move-result-wide v0

    #@c
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@f
    .line 674
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;JJ)V
    .locals 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "uptime"    # J
    .param p4, "realtime"    # J

    #@0
    .prologue
    .line 692
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getUptime(J)J

    #@3
    move-result-wide v2

    #@4
    .line 693
    .local v2, "runningUptime":J
    invoke-virtual {p0, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    #@7
    move-result-wide v0

    #@8
    .line 694
    .local v0, "runningRealtime":J
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptime:J

    #@a
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@d
    .line 695
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    #@10
    .line 696
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptimeStart:J

    #@12
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@15
    .line 697
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtime:J

    #@17
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@1a
    .line 698
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@1d
    .line 699
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtimeStart:J

    #@1f
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@22
    .line 700
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedUptime:J

    #@24
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@27
    .line 701
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedRealtime:J

    #@29
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@2c
    .line 691
    return-void
.end method
