.class public Lcom/android/internal/os/BatteryStatsImpl$Counter;
.super Landroid/os/BatteryStats$Counter;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Counter"
.end annotation


# instance fields
.field final mCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field mLastCount:I

.field mLoadedCount:I

.field mPluggedCount:I

.field final mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

.field mUnpluggedCount:I


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V
    .locals 1
    .param p1, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@0
    .prologue
    .line 726
    invoke-direct {p0}, Landroid/os/BatteryStats$Counter;-><init>()V

    #@3
    .line 709
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@a
    .line 727
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@c
    .line 728
    invoke-virtual {p1, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    #@f
    .line 726
    return-void
.end method

.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .locals 2
    .param p1, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p2, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 716
    invoke-direct {p0}, Landroid/os/BatteryStats$Counter;-><init>()V

    #@3
    .line 709
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@a
    .line 717
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@c
    .line 718
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v0

    #@10
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mPluggedCount:I

    #@12
    .line 719
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@14
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mPluggedCount:I

    #@16
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    #@19
    .line 720
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v0

    #@1d
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mLoadedCount:I

    #@1f
    .line 721
    const/4 v0, 0x0

    #@20
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mLastCount:I

    #@22
    .line 722
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v0

    #@26
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mUnpluggedCount:I

    #@28
    .line 723
    invoke-virtual {p1, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    #@2b
    .line 716
    return-void
.end method

.method public static writeCounterToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$Counter;)V
    .locals 1
    .param p0, "out"    # Landroid/os/Parcel;
    .param p1, "counter"    # Lcom/android/internal/os/BatteryStatsImpl$Counter;

    #@0
    .prologue
    .line 753
    if-nez p1, :cond_0

    #@2
    .line 754
    const/4 v0, 0x0

    #@3
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 755
    return-void

    #@7
    .line 757
    :cond_0
    const/4 v0, 0x1

    #@8
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@b
    .line 759
    invoke-virtual {p1, p0}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->writeToParcel(Landroid/os/Parcel;)V

    #@e
    .line 752
    return-void
.end method


# virtual methods
.method detach()V
    .locals 1

    #@0
    .prologue
    .line 797
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@2
    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->remove(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    #@5
    .line 796
    return-void
.end method

.method public getCountLocked(I)I
    .locals 2
    .param p1, "which"    # I

    #@0
    .prologue
    .line 764
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@5
    move-result v0

    #@6
    .line 765
    .local v0, "val":I
    const/4 v1, 0x2

    #@7
    if-ne p1, v1, :cond_1

    #@9
    .line 766
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mUnpluggedCount:I

    #@b
    sub-int/2addr v0, v1

    #@c
    .line 771
    :cond_0
    :goto_0
    return v0

    #@d
    .line 767
    :cond_1
    if-eqz p1, :cond_0

    #@f
    .line 768
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mLoadedCount:I

    #@11
    sub-int/2addr v0, v1

    #@12
    goto :goto_0
.end method

.method public logState(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 775
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
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@12
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@15
    move-result v1

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    .line 776
    const-string/jumbo v1, " mLoadedCount="

    #@1d
    .line 775
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    .line 776
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mLoadedCount:I

    #@23
    .line 775
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    .line 776
    const-string/jumbo v1, " mLastCount="

    #@2a
    .line 775
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    .line 776
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mLastCount:I

    #@30
    .line 775
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    .line 777
    const-string/jumbo v1, " mUnpluggedCount="

    #@37
    .line 775
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v0

    #@3b
    .line 777
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mUnpluggedCount:I

    #@3d
    .line 775
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    .line 778
    const-string/jumbo v1, " mPluggedCount="

    #@44
    .line 775
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v0

    #@48
    .line 778
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mPluggedCount:I

    #@4a
    .line 775
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v0

    #@4e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v0

    #@52
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@55
    .line 774
    return-void
.end method

.method public onTimeStarted(JJJ)V
    .locals 2
    .param p1, "elapsedRealtime"    # J
    .param p3, "baseUptime"    # J
    .param p5, "baseRealtime"    # J

    #@0
    .prologue
    .line 738
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mPluggedCount:I

    #@2
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mUnpluggedCount:I

    #@4
    .line 739
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@6
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mPluggedCount:I

    #@8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    #@b
    .line 737
    return-void
.end method

.method public onTimeStopped(JJJ)V
    .locals 1
    .param p1, "elapsedRealtime"    # J
    .param p3, "baseUptime"    # J
    .param p5, "baseRealtime"    # J

    #@0
    .prologue
    .line 743
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@5
    move-result v0

    #@6
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mPluggedCount:I

    #@8
    .line 742
    return-void
.end method

.method readSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 806
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mLoadedCount:I

    #@6
    .line 807
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@8
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mLoadedCount:I

    #@a
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    #@d
    .line 808
    const/4 v0, 0x0

    #@e
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mLastCount:I

    #@10
    .line 809
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mLoadedCount:I

    #@12
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mPluggedCount:I

    #@14
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mUnpluggedCount:I

    #@16
    .line 805
    return-void
.end method

.method reset(Z)V
    .locals 2
    .param p1, "detachIfReset"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 789
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@3
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    #@6
    .line 790
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mUnpluggedCount:I

    #@8
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mPluggedCount:I

    #@a
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mLastCount:I

    #@c
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mLoadedCount:I

    #@e
    .line 791
    if-eqz p1, :cond_0

    #@10
    .line 792
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->detach()V

    #@13
    .line 788
    :cond_0
    return-void
.end method

.method stepAtomic()V
    .locals 1

    #@0
    .prologue
    .line 782
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    #@5
    .line 781
    return-void
.end method

.method writeSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 801
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@5
    move-result v0

    #@6
    .line 802
    .local v0, "count":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@9
    .line 800
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 732
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@5
    move-result v0

    #@6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@9
    .line 733
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mLoadedCount:I

    #@b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@e
    .line 734
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Counter;->mUnpluggedCount:I

    #@10
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 731
    return-void
.end method
