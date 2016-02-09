.class public Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
.super Landroid/os/BatteryStats$LongCounter;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LongSamplingCounter"
.end annotation


# instance fields
.field mCount:J

.field mLastCount:J

.field mLoadedCount:J

.field mPluggedCount:J

.field final mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

.field mUnpluggedCount:J


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V
    .locals 0
    .param p1, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@0
    .prologue
    .line 831
    invoke-direct {p0}, Landroid/os/BatteryStats$LongCounter;-><init>()V

    #@3
    .line 832
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@5
    .line 833
    invoke-virtual {p1, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    #@8
    .line 831
    return-void
.end method

.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .locals 2
    .param p1, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p2, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 821
    invoke-direct {p0}, Landroid/os/BatteryStats$LongCounter;-><init>()V

    #@3
    .line 822
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@5
    .line 823
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@8
    move-result-wide v0

    #@9
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mPluggedCount:J

    #@b
    .line 824
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mPluggedCount:J

    #@d
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    #@f
    .line 825
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@12
    move-result-wide v0

    #@13
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mLoadedCount:J

    #@15
    .line 826
    const-wide/16 v0, 0x0

    #@17
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mLastCount:J

    #@19
    .line 827
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@1c
    move-result-wide v0

    #@1d
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mUnpluggedCount:J

    #@1f
    .line 828
    invoke-virtual {p1, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    #@22
    .line 821
    return-void
.end method


# virtual methods
.method addCountLocked(J)V
    .locals 3
    .param p1, "count"    # J

    #@0
    .prologue
    .line 873
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    #@2
    add-long/2addr v0, p1

    #@3
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    #@5
    .line 872
    return-void
.end method

.method detach()V
    .locals 1

    #@0
    .prologue
    .line 888
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@2
    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->remove(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    #@5
    .line 887
    return-void
.end method

.method public getCountLocked(I)J
    .locals 4
    .param p1, "which"    # I

    #@0
    .prologue
    .line 854
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    #@2
    .line 855
    .local v0, "val":J
    const/4 v2, 0x2

    #@3
    if-ne p1, v2, :cond_1

    #@5
    .line 856
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mUnpluggedCount:J

    #@7
    sub-long/2addr v0, v2

    #@8
    .line 861
    :cond_0
    :goto_0
    return-wide v0

    #@9
    .line 857
    :cond_1
    if-eqz p1, :cond_0

    #@b
    .line 858
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mLoadedCount:J

    #@d
    sub-long/2addr v0, v2

    #@e
    goto :goto_0
.end method

.method public logState(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 866
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const-string/jumbo v1, "mCount="

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    #@12
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    .line 867
    const-string/jumbo v1, " mLoadedCount="

    #@19
    .line 866
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    .line 867
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mLoadedCount:J

    #@1f
    .line 866
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    .line 867
    const-string/jumbo v1, " mLastCount="

    #@26
    .line 866
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    .line 867
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mLastCount:J

    #@2c
    .line 866
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    .line 868
    const-string/jumbo v1, " mUnpluggedCount="

    #@33
    .line 866
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    .line 868
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mUnpluggedCount:J

    #@39
    .line 866
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    .line 869
    const-string/jumbo v1, " mPluggedCount="

    #@40
    .line 866
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v0

    #@44
    .line 869
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mPluggedCount:J

    #@46
    .line 866
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@49
    move-result-object v0

    #@4a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v0

    #@4e
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@51
    .line 865
    return-void
.end method

.method public onTimeStarted(JJJ)V
    .locals 2
    .param p1, "elapsedRealtime"    # J
    .param p3, "baseUptime"    # J
    .param p5, "baseRealtime"    # J

    #@0
    .prologue
    .line 844
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mPluggedCount:J

    #@2
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mUnpluggedCount:J

    #@4
    .line 845
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mPluggedCount:J

    #@6
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    #@8
    .line 843
    return-void
.end method

.method public onTimeStopped(JJJ)V
    .locals 2
    .param p1, "elapsedRealtime"    # J
    .param p3, "baseUptime"    # J
    .param p5, "baseRealtime"    # J

    #@0
    .prologue
    .line 850
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    #@2
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mPluggedCount:J

    #@4
    .line 849
    return-void
.end method

.method readSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 896
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@3
    move-result-wide v0

    #@4
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mLoadedCount:J

    #@6
    .line 897
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mLoadedCount:J

    #@8
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    #@a
    .line 898
    const-wide/16 v0, 0x0

    #@c
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mLastCount:J

    #@e
    .line 899
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mLoadedCount:J

    #@10
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mPluggedCount:J

    #@12
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mUnpluggedCount:J

    #@14
    .line 895
    return-void
.end method

.method reset(Z)V
    .locals 2
    .param p1, "detachIfReset"    # Z

    #@0
    .prologue
    const-wide/16 v0, 0x0

    #@2
    .line 880
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    #@4
    .line 881
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mUnpluggedCount:J

    #@6
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mPluggedCount:J

    #@8
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mLastCount:J

    #@a
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mLoadedCount:J

    #@c
    .line 882
    if-eqz p1, :cond_0

    #@e
    .line 883
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    #@11
    .line 879
    :cond_0
    return-void
.end method

.method writeSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 892
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    #@2
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@5
    .line 891
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 837
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    #@2
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@5
    .line 838
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mLoadedCount:J

    #@7
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@a
    .line 839
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mUnpluggedCount:J

    #@c
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@f
    .line 836
    return-void
.end method
