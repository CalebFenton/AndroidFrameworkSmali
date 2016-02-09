.class public abstract Lcom/android/internal/os/BatteryStatsImpl$Timer;
.super Landroid/os/BatteryStats$Timer;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Timer"
.end annotation


# instance fields
.field mCount:I

.field mLastCount:I

.field mLastTime:J

.field mLoadedCount:I

.field mLoadedTime:J

.field final mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

.field mTimeBeforeMark:J

.field mTotalTime:J

.field final mType:I

.field mUnpluggedCount:I

.field mUnpluggedTime:J


# direct methods
.method constructor <init>(ILcom/android/internal/os/BatteryStatsImpl$TimeBase;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@0
    .prologue
    .line 973
    invoke-direct {p0}, Landroid/os/BatteryStats$Timer;-><init>()V

    #@3
    .line 974
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mType:I

    #@5
    .line 975
    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@7
    .line 976
    invoke-virtual {p2, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    #@a
    .line 973
    return-void
.end method

.method constructor <init>(ILcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p3, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 956
    invoke-direct {p0}, Landroid/os/BatteryStats$Timer;-><init>()V

    #@3
    .line 957
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mType:I

    #@5
    .line 958
    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@7
    .line 960
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    #@a
    move-result v0

    #@b
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mCount:I

    #@d
    .line 961
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    #@10
    move-result v0

    #@11
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLoadedCount:I

    #@13
    .line 962
    const/4 v0, 0x0

    #@14
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLastCount:I

    #@16
    .line 963
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v0

    #@1a
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mUnpluggedCount:I

    #@1c
    .line 964
    invoke-virtual {p3}, Landroid/os/Parcel;->readLong()J

    #@1f
    move-result-wide v0

    #@20
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTime:J

    #@22
    .line 965
    invoke-virtual {p3}, Landroid/os/Parcel;->readLong()J

    #@25
    move-result-wide v0

    #@26
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLoadedTime:J

    #@28
    .line 966
    const-wide/16 v0, 0x0

    #@2a
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLastTime:J

    #@2c
    .line 967
    invoke-virtual {p3}, Landroid/os/Parcel;->readLong()J

    #@2f
    move-result-wide v0

    #@30
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mUnpluggedTime:J

    #@32
    .line 968
    invoke-virtual {p3}, Landroid/os/Parcel;->readLong()J

    #@35
    move-result-wide v0

    #@36
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBeforeMark:J

    #@38
    .line 969
    invoke-virtual {p2, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    #@3b
    .line 956
    return-void
.end method

.method public static writeTimerToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$Timer;J)V
    .locals 2
    .param p0, "out"    # Landroid/os/Parcel;
    .param p1, "timer"    # Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .param p2, "elapsedRealtimeUs"    # J

    #@0
    .prologue
    .line 1049
    if-nez p1, :cond_0

    #@2
    .line 1050
    const/4 v0, 0x0

    #@3
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 1051
    return-void

    #@7
    .line 1053
    :cond_0
    const/4 v0, 0x1

    #@8
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@b
    .line 1055
    invoke-virtual {p1, p0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeToParcel(Landroid/os/Parcel;J)V

    #@e
    .line 1048
    return-void
.end method


# virtual methods
.method protected abstract computeCurrentCountLocked()I
.end method

.method protected abstract computeRunTimeLocked(J)J
.end method

.method detach()V
    .locals 1

    #@0
    .prologue
    .line 997
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@2
    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->remove(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    #@5
    .line 996
    return-void
.end method

.method public getCountLocked(I)I
    .locals 2
    .param p1, "which"    # I

    #@0
    .prologue
    .line 1072
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeCurrentCountLocked()I

    #@3
    move-result v0

    #@4
    .line 1073
    .local v0, "val":I
    const/4 v1, 0x2

    #@5
    if-ne p1, v1, :cond_1

    #@7
    .line 1074
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mUnpluggedCount:I

    #@9
    sub-int/2addr v0, v1

    #@a
    .line 1079
    :cond_0
    :goto_0
    return v0

    #@b
    .line 1075
    :cond_1
    if-eqz p1, :cond_0

    #@d
    .line 1076
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLoadedCount:I

    #@f
    sub-int/2addr v0, v1

    #@10
    goto :goto_0
.end method

.method public getTimeSinceMarkLocked(J)J
    .locals 5
    .param p1, "elapsedRealtimeUs"    # J

    #@0
    .prologue
    .line 1084
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@2
    invoke-virtual {v2, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    #@5
    move-result-wide v2

    #@6
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeRunTimeLocked(J)J

    #@9
    move-result-wide v0

    #@a
    .line 1085
    .local v0, "val":J
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBeforeMark:J

    #@c
    sub-long v2, v0, v2

    #@e
    return-wide v2
.end method

.method public getTotalTimeLocked(JI)J
    .locals 5
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    #@0
    .prologue
    .line 1060
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@2
    invoke-virtual {v2, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    #@5
    move-result-wide v2

    #@6
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeRunTimeLocked(J)J

    #@9
    move-result-wide v0

    #@a
    .line 1061
    .local v0, "val":J
    const/4 v2, 0x2

    #@b
    if-ne p3, v2, :cond_1

    #@d
    .line 1062
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mUnpluggedTime:J

    #@f
    sub-long/2addr v0, v2

    #@10
    .line 1067
    :cond_0
    :goto_0
    return-wide v0

    #@11
    .line 1063
    :cond_1
    if-eqz p3, :cond_0

    #@13
    .line 1064
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLoadedTime:J

    #@15
    sub-long/2addr v0, v2

    #@16
    goto :goto_0
.end method

.method public logState(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1090
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
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mCount:I

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    .line 1091
    const-string/jumbo v1, " mLoadedCount="

    #@19
    .line 1090
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    .line 1091
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLoadedCount:I

    #@1f
    .line 1090
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    .line 1091
    const-string/jumbo v1, " mLastCount="

    #@26
    .line 1090
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    .line 1091
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLastCount:I

    #@2c
    .line 1090
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    .line 1092
    const-string/jumbo v1, " mUnpluggedCount="

    #@33
    .line 1090
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    .line 1092
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mUnpluggedCount:I

    #@39
    .line 1090
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@44
    .line 1093
    new-instance v0, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    const-string/jumbo v1, "mTotalTime="

    #@50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v0

    #@54
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTime:J

    #@56
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@59
    move-result-object v0

    #@5a
    .line 1094
    const-string/jumbo v1, " mLoadedTime="

    #@5d
    .line 1093
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v0

    #@61
    .line 1094
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLoadedTime:J

    #@63
    .line 1093
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@66
    move-result-object v0

    #@67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v0

    #@6b
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@6e
    .line 1095
    new-instance v0, Ljava/lang/StringBuilder;

    #@70
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@73
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v0

    #@77
    const-string/jumbo v1, "mLastTime="

    #@7a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v0

    #@7e
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLastTime:J

    #@80
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@83
    move-result-object v0

    #@84
    .line 1096
    const-string/jumbo v1, " mUnpluggedTime="

    #@87
    .line 1095
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v0

    #@8b
    .line 1096
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mUnpluggedTime:J

    #@8d
    .line 1095
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@90
    move-result-object v0

    #@91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object v0

    #@95
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@98
    .line 1089
    return-void
.end method

.method public onTimeStarted(JJJ)V
    .locals 3
    .param p1, "elapsedRealtime"    # J
    .param p3, "timeBaseUptime"    # J
    .param p5, "baseRealtime"    # J

    #@0
    .prologue
    .line 1019
    invoke-virtual {p0, p5, p6}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeRunTimeLocked(J)J

    #@3
    move-result-wide v0

    #@4
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mUnpluggedTime:J

    #@6
    .line 1020
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mCount:I

    #@8
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mUnpluggedCount:I

    #@a
    .line 1013
    return-void
.end method

.method public onTimeStopped(JJJ)V
    .locals 3
    .param p1, "elapsedRealtime"    # J
    .param p3, "baseUptime"    # J
    .param p5, "baseRealtime"    # J

    #@0
    .prologue
    .line 1034
    invoke-virtual {p0, p5, p6}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeRunTimeLocked(J)J

    #@3
    move-result-wide v0

    #@4
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTime:J

    #@6
    .line 1035
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeCurrentCountLocked()I

    #@9
    move-result v0

    #@a
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mCount:I

    #@c
    .line 1029
    return-void
.end method

.method readSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1108
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@3
    move-result-wide v0

    #@4
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLoadedTime:J

    #@6
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTime:J

    #@8
    .line 1109
    const-wide/16 v0, 0x0

    #@a
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLastTime:J

    #@c
    .line 1110
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTime:J

    #@e
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mUnpluggedTime:J

    #@10
    .line 1111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@13
    move-result v0

    #@14
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLoadedCount:I

    #@16
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mCount:I

    #@18
    .line 1112
    const/4 v0, 0x0

    #@19
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLastCount:I

    #@1b
    .line 1113
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mCount:I

    #@1d
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mUnpluggedCount:I

    #@1f
    .line 1116
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTime:J

    #@21
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBeforeMark:J

    #@23
    .line 1106
    return-void
.end method

.method reset(Z)Z
    .locals 3
    .param p1, "detachIfReset"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const-wide/16 v0, 0x0

    #@3
    .line 988
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBeforeMark:J

    #@5
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLastTime:J

    #@7
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLoadedTime:J

    #@9
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTime:J

    #@b
    .line 989
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLastCount:I

    #@d
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLoadedCount:I

    #@f
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mCount:I

    #@11
    .line 990
    if-eqz p1, :cond_0

    #@13
    .line 991
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->detach()V

    #@16
    .line 993
    :cond_0
    const/4 v0, 0x1

    #@17
    return v0
.end method

.method writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "elapsedRealtimeUs"    # J

    #@0
    .prologue
    .line 1101
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@2
    invoke-virtual {v2, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    #@5
    move-result-wide v2

    #@6
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeRunTimeLocked(J)J

    #@9
    move-result-wide v0

    #@a
    .line 1102
    .local v0, "runTime":J
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@d
    .line 1103
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mCount:I

    #@f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 1100
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;J)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "elapsedRealtimeUs"    # J

    #@0
    .prologue
    .line 1003
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mCount:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 1004
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLoadedCount:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 1005
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mUnpluggedCount:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 1006
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@11
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    #@14
    move-result-wide v0

    #@15
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeRunTimeLocked(J)J

    #@18
    move-result-wide v0

    #@19
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@1c
    .line 1007
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLoadedTime:J

    #@1e
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@21
    .line 1008
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mUnpluggedTime:J

    #@23
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@26
    .line 1009
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBeforeMark:J

    #@28
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@2b
    .line 1000
    return-void
.end method
