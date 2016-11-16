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
.field protected final mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

.field protected mCount:I

.field protected mLastCount:I

.field protected mLastTime:J

.field protected mLoadedCount:I

.field protected mLoadedTime:J

.field protected final mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

.field protected mTimeBeforeMark:J

.field protected mTotalTime:J

.field protected final mType:I

.field protected mUnpluggedCount:I

.field protected mUnpluggedTime:J


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;)V
    .locals 0
    .param p1, "clocks"    # Lcom/android/internal/os/BatteryStatsImpl$Clocks;
    .param p2, "type"    # I
    .param p3, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@0
    .prologue
    .line 1089
    invoke-direct {p0}, Landroid/os/BatteryStats$Timer;-><init>()V

    #@3
    .line 1090
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@5
    .line 1091
    iput p2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mType:I

    #@7
    .line 1092
    iput-object p3, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@9
    .line 1093
    invoke-virtual {p3, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    #@c
    .line 1089
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .locals 2
    .param p1, "clocks"    # Lcom/android/internal/os/BatteryStatsImpl$Clocks;
    .param p2, "type"    # I
    .param p3, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p4, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1071
    invoke-direct {p0}, Landroid/os/BatteryStats$Timer;-><init>()V

    #@3
    .line 1072
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    #@5
    .line 1073
    iput p2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mType:I

    #@7
    .line 1074
    iput-object p3, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@9
    .line 1076
    invoke-virtual {p4}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mCount:I

    #@f
    .line 1077
    invoke-virtual {p4}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLoadedCount:I

    #@15
    .line 1078
    const/4 v0, 0x0

    #@16
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLastCount:I

    #@18
    .line 1079
    invoke-virtual {p4}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v0

    #@1c
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mUnpluggedCount:I

    #@1e
    .line 1080
    invoke-virtual {p4}, Landroid/os/Parcel;->readLong()J

    #@21
    move-result-wide v0

    #@22
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTime:J

    #@24
    .line 1081
    invoke-virtual {p4}, Landroid/os/Parcel;->readLong()J

    #@27
    move-result-wide v0

    #@28
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLoadedTime:J

    #@2a
    .line 1082
    const-wide/16 v0, 0x0

    #@2c
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLastTime:J

    #@2e
    .line 1083
    invoke-virtual {p4}, Landroid/os/Parcel;->readLong()J

    #@31
    move-result-wide v0

    #@32
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mUnpluggedTime:J

    #@34
    .line 1084
    invoke-virtual {p4}, Landroid/os/Parcel;->readLong()J

    #@37
    move-result-wide v0

    #@38
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBeforeMark:J

    #@3a
    .line 1085
    invoke-virtual {p3, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    #@3d
    .line 1071
    return-void
.end method

.method public static writeTimerToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$Timer;J)V
    .locals 2
    .param p0, "out"    # Landroid/os/Parcel;
    .param p1, "timer"    # Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .param p2, "elapsedRealtimeUs"    # J

    #@0
    .prologue
    .line 1166
    if-nez p1, :cond_0

    #@2
    .line 1167
    const/4 v0, 0x0

    #@3
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 1168
    return-void

    #@7
    .line 1170
    :cond_0
    const/4 v0, 0x1

    #@8
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@b
    .line 1172
    invoke-virtual {p1, p0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeToParcel(Landroid/os/Parcel;J)V

    #@e
    .line 1165
    return-void
.end method


# virtual methods
.method protected abstract computeCurrentCountLocked()I
.end method

.method protected abstract computeRunTimeLocked(J)J
.end method

.method public detach()V
    .locals 1

    #@0
    .prologue
    .line 1114
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@2
    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->remove(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    #@5
    .line 1113
    return-void
.end method

.method public getCountLocked(I)I
    .locals 2
    .param p1, "which"    # I

    #@0
    .prologue
    .line 1189
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeCurrentCountLocked()I

    #@3
    move-result v0

    #@4
    .line 1190
    .local v0, "val":I
    const/4 v1, 0x2

    #@5
    if-ne p1, v1, :cond_1

    #@7
    .line 1191
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mUnpluggedCount:I

    #@9
    sub-int/2addr v0, v1

    #@a
    .line 1196
    :cond_0
    :goto_0
    return v0

    #@b
    .line 1192
    :cond_1
    if-eqz p1, :cond_0

    #@d
    .line 1193
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
    .line 1201
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
    .line 1202
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
    .line 1177
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
    .line 1178
    .local v0, "val":J
    const/4 v2, 0x2

    #@b
    if-ne p3, v2, :cond_1

    #@d
    .line 1179
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mUnpluggedTime:J

    #@f
    sub-long/2addr v0, v2

    #@10
    .line 1184
    :cond_0
    :goto_0
    return-wide v0

    #@11
    .line 1180
    :cond_1
    if-eqz p3, :cond_0

    #@13
    .line 1181
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
    .line 1207
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
    .line 1208
    const-string/jumbo v1, " mLoadedCount="

    #@19
    .line 1207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    .line 1208
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLoadedCount:I

    #@1f
    .line 1207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    .line 1208
    const-string/jumbo v1, " mLastCount="

    #@26
    .line 1207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    .line 1208
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLastCount:I

    #@2c
    .line 1207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    .line 1209
    const-string/jumbo v1, " mUnpluggedCount="

    #@33
    .line 1207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    .line 1209
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mUnpluggedCount:I

    #@39
    .line 1207
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
    .line 1210
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
    .line 1211
    const-string/jumbo v1, " mLoadedTime="

    #@5d
    .line 1210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v0

    #@61
    .line 1211
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLoadedTime:J

    #@63
    .line 1210
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
    .line 1212
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
    .line 1213
    const-string/jumbo v1, " mUnpluggedTime="

    #@87
    .line 1212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v0

    #@8b
    .line 1213
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mUnpluggedTime:J

    #@8d
    .line 1212
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
    .line 1206
    return-void
.end method

.method public onTimeStarted(JJJ)V
    .locals 3
    .param p1, "elapsedRealtime"    # J
    .param p3, "timeBaseUptime"    # J
    .param p5, "baseRealtime"    # J

    #@0
    .prologue
    .line 1136
    invoke-virtual {p0, p5, p6}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeRunTimeLocked(J)J

    #@3
    move-result-wide v0

    #@4
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mUnpluggedTime:J

    #@6
    .line 1137
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeCurrentCountLocked()I

    #@9
    move-result v0

    #@a
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mUnpluggedCount:I

    #@c
    .line 1130
    return-void
.end method

.method public onTimeStopped(JJJ)V
    .locals 3
    .param p1, "elapsedRealtime"    # J
    .param p3, "baseUptime"    # J
    .param p5, "baseRealtime"    # J

    #@0
    .prologue
    .line 1151
    invoke-virtual {p0, p5, p6}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeRunTimeLocked(J)J

    #@3
    move-result-wide v0

    #@4
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTime:J

    #@6
    .line 1152
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeCurrentCountLocked()I

    #@9
    move-result v0

    #@a
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mCount:I

    #@c
    .line 1146
    return-void
.end method

.method public readSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1225
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@3
    move-result-wide v0

    #@4
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLoadedTime:J

    #@6
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTime:J

    #@8
    .line 1226
    const-wide/16 v0, 0x0

    #@a
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLastTime:J

    #@c
    .line 1227
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTime:J

    #@e
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mUnpluggedTime:J

    #@10
    .line 1228
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@13
    move-result v0

    #@14
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLoadedCount:I

    #@16
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mCount:I

    #@18
    .line 1229
    const/4 v0, 0x0

    #@19
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLastCount:I

    #@1b
    .line 1230
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mCount:I

    #@1d
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mUnpluggedCount:I

    #@1f
    .line 1233
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTime:J

    #@21
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBeforeMark:J

    #@23
    .line 1223
    return-void
.end method

.method public reset(Z)Z
    .locals 3
    .param p1, "detachIfReset"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const-wide/16 v0, 0x0

    #@3
    .line 1105
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBeforeMark:J

    #@5
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLastTime:J

    #@7
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLoadedTime:J

    #@9
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTime:J

    #@b
    .line 1106
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLastCount:I

    #@d
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLoadedCount:I

    #@f
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mCount:I

    #@11
    .line 1107
    if-eqz p1, :cond_0

    #@13
    .line 1108
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->detach()V

    #@16
    .line 1110
    :cond_0
    const/4 v0, 0x1

    #@17
    return v0
.end method

.method public writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "elapsedRealtimeUs"    # J

    #@0
    .prologue
    .line 1218
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
    .line 1219
    .local v0, "runTime":J
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@d
    .line 1220
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeCurrentCountLocked()I

    #@10
    move-result v2

    #@11
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1217
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;J)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "elapsedRealtimeUs"    # J

    #@0
    .prologue
    .line 1120
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeCurrentCountLocked()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@7
    .line 1121
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLoadedCount:I

    #@9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 1122
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mUnpluggedCount:I

    #@e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1123
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    #@13
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    #@16
    move-result-wide v0

    #@17
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeRunTimeLocked(J)J

    #@1a
    move-result-wide v0

    #@1b
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@1e
    .line 1124
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mLoadedTime:J

    #@20
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@23
    .line 1125
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mUnpluggedTime:J

    #@25
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@28
    .line 1126
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBeforeMark:J

    #@2a
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@2d
    .line 1117
    return-void
.end method
