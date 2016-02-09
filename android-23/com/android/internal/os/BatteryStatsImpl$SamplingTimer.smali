.class public final Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
.super Lcom/android/internal/os/BatteryStatsImpl$Timer;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SamplingTimer"
.end annotation


# instance fields
.field mCurrentReportedCount:I

.field mCurrentReportedTotalTime:J

.field mTimeBaseRunning:Z

.field mTrackingReportedValues:Z

.field mUnpluggedReportedCount:I

.field mUnpluggedReportedTotalTime:J

.field mUpdateVersion:I


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .locals 4
    .param p1, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p2, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1161
    invoke-direct {p0, v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Timer;-><init>(ILcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    #@5
    .line 1162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v2

    #@9
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    #@b
    .line 1163
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@e
    move-result v2

    #@f
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedCount:I

    #@11
    .line 1164
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@14
    move-result-wide v2

    #@15
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTime:J

    #@17
    .line 1165
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@1a
    move-result-wide v2

    #@1b
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedTotalTime:J

    #@1d
    .line 1166
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@20
    move-result v2

    #@21
    if-ne v2, v0, :cond_0

    #@23
    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    #@25
    .line 1167
    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    #@28
    move-result v0

    #@29
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mTimeBaseRunning:Z

    #@2b
    .line 1160
    return-void

    #@2c
    :cond_0
    move v0, v1

    #@2d
    .line 1166
    goto :goto_0
.end method

.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Z)V
    .locals 1
    .param p1, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p2, "trackReportedValues"    # Z

    #@0
    .prologue
    .line 1171
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Timer;-><init>(ILcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    #@4
    .line 1172
    iput-boolean p2, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    #@6
    .line 1173
    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    #@9
    move-result v0

    #@a
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mTimeBaseRunning:Z

    #@c
    .line 1170
    return-void
.end method


# virtual methods
.method public addCurrentReportedCount(I)V
    .locals 1
    .param p1, "delta"    # I

    #@0
    .prologue
    .line 1201
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    #@2
    add-int/2addr v0, p1

    #@3
    invoke-virtual {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->updateCurrentReportedCount(I)V

    #@6
    .line 1200
    return-void
.end method

.method public addCurrentReportedTotalTime(J)V
    .locals 3
    .param p1, "delta"    # J

    #@0
    .prologue
    .line 1215
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTime:J

    #@2
    add-long/2addr v0, p1

    #@3
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->updateCurrentReportedTotalTime(J)V

    #@6
    .line 1214
    return-void
.end method

.method protected computeCurrentCountLocked()I
    .locals 3

    #@0
    .prologue
    .line 1246
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCount:I

    #@2
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mTimeBaseRunning:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 1247
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    #@c
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedCount:I

    #@e
    sub-int/2addr v0, v2

    #@f
    .line 1246
    :goto_0
    add-int/2addr v0, v1

    #@10
    return v0

    #@11
    .line 1247
    :cond_0
    const/4 v0, 0x0

    #@12
    goto :goto_0
.end method

.method protected computeRunTimeLocked(J)J
    .locals 6
    .param p1, "curBatteryRealtime"    # J

    #@0
    .prologue
    .line 1241
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mTotalTime:J

    #@2
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mTimeBaseRunning:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 1242
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTime:J

    #@c
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedTotalTime:J

    #@e
    sub-long/2addr v0, v4

    #@f
    .line 1241
    :goto_0
    add-long/2addr v0, v2

    #@10
    return-wide v0

    #@11
    .line 1242
    :cond_0
    const-wide/16 v0, 0x0

    #@13
    goto :goto_0
.end method

.method public getUpdateVersion()I
    .locals 1

    #@0
    .prologue
    .line 1187
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUpdateVersion:I

    #@2
    return v0
.end method

.method public logState(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1233
    invoke-super {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->logState(Landroid/util/Printer;Ljava/lang/String;)V

    #@3
    .line 1234
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    const-string/jumbo v1, "mCurrentReportedCount="

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 1235
    const-string/jumbo v1, " mUnpluggedReportedCount="

    #@1c
    .line 1234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    .line 1235
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedCount:I

    #@22
    .line 1234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 1236
    const-string/jumbo v1, " mCurrentReportedTotalTime="

    #@29
    .line 1234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    .line 1236
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTime:J

    #@2f
    .line 1234
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 1237
    const-string/jumbo v1, " mUnpluggedReportedTotalTime="

    #@36
    .line 1234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    .line 1237
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedTotalTime:J

    #@3c
    .line 1234
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v0

    #@44
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@47
    .line 1232
    return-void
.end method

.method public onTimeStarted(JJJ)V
    .locals 3
    .param p1, "elapsedRealtime"    # J
    .param p3, "baseUptime"    # J
    .param p5, "baseRealtime"    # J

    #@0
    .prologue
    .line 1219
    invoke-super/range {p0 .. p6}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->onTimeStarted(JJJ)V

    #@3
    .line 1220
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 1221
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTime:J

    #@9
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedTotalTime:J

    #@b
    .line 1222
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    #@d
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedCount:I

    #@f
    .line 1224
    :cond_0
    const/4 v0, 0x1

    #@10
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mTimeBaseRunning:Z

    #@12
    .line 1218
    return-void
.end method

.method public onTimeStopped(JJJ)V
    .locals 1
    .param p1, "elapsedRealtime"    # J
    .param p3, "baseUptime"    # J
    .param p5, "baseRealtime"    # J

    #@0
    .prologue
    .line 1228
    invoke-super/range {p0 .. p6}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->onTimeStopped(JJJ)V

    #@3
    .line 1229
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mTimeBaseRunning:Z

    #@6
    .line 1227
    return-void
.end method

.method readSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 1273
    invoke-super {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    #@4
    .line 1274
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@7
    move-result-wide v2

    #@8
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTime:J

    #@a
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedTotalTime:J

    #@c
    .line 1275
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v1

    #@10
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    #@12
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedCount:I

    #@14
    .line 1276
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@17
    move-result v1

    #@18
    if-ne v1, v0, :cond_0

    #@1a
    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    #@1c
    .line 1272
    return-void

    #@1d
    .line 1276
    :cond_0
    const/4 v0, 0x0

    #@1e
    goto :goto_0
.end method

.method reset(Z)Z
    .locals 1
    .param p1, "detachIfReset"    # Z

    #@0
    .prologue
    .line 1260
    invoke-super {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->reset(Z)Z

    #@3
    .line 1261
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->setStale()V

    #@6
    .line 1262
    const/4 v0, 0x1

    #@7
    return v0
.end method

.method public setStale()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1177
    iput-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    #@3
    .line 1178
    const-wide/16 v0, 0x0

    #@5
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedTotalTime:J

    #@7
    .line 1179
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedCount:I

    #@9
    .line 1176
    return-void
.end method

.method public setUpdateVersion(I)V
    .locals 0
    .param p1, "version"    # I

    #@0
    .prologue
    .line 1183
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUpdateVersion:I

    #@2
    .line 1182
    return-void
.end method

.method public updateCurrentReportedCount(I)V
    .locals 1
    .param p1, "count"    # I

    #@0
    .prologue
    .line 1191
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mTimeBaseRunning:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedCount:I

    #@6
    if-nez v0, :cond_0

    #@8
    .line 1193
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedCount:I

    #@a
    .line 1195
    const/4 v0, 0x1

    #@b
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    #@d
    .line 1197
    :cond_0
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    #@f
    .line 1190
    return-void
.end method

.method public updateCurrentReportedTotalTime(J)V
    .locals 5
    .param p1, "totalTime"    # J

    #@0
    .prologue
    .line 1205
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mTimeBaseRunning:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedTotalTime:J

    #@6
    const-wide/16 v2, 0x0

    #@8
    cmp-long v0, v0, v2

    #@a
    if-nez v0, :cond_0

    #@c
    .line 1207
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedTotalTime:J

    #@e
    .line 1209
    const/4 v0, 0x1

    #@f
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    #@11
    .line 1211
    :cond_0
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTime:J

    #@13
    .line 1204
    return-void
.end method

.method writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "batteryRealtime"    # J

    #@0
    .prologue
    .line 1266
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    #@3
    .line 1267
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTime:J

    #@5
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@8
    .line 1268
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    #@a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 1269
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    #@f
    if-eqz v0, :cond_0

    #@11
    const/4 v0, 0x1

    #@12
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 1265
    return-void

    #@16
    .line 1269
    :cond_0
    const/4 v0, 0x0

    #@17
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;J)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "elapsedRealtimeUs"    # J

    #@0
    .prologue
    .line 1251
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeToParcel(Landroid/os/Parcel;J)V

    #@3
    .line 1252
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    #@5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@8
    .line 1253
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedCount:I

    #@a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 1254
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTime:J

    #@f
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@12
    .line 1255
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedTotalTime:J

    #@14
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@17
    .line 1256
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    #@19
    if-eqz v0, :cond_0

    #@1b
    const/4 v0, 0x1

    #@1c
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 1250
    return-void

    #@20
    .line 1256
    :cond_0
    const/4 v0, 0x0

    #@21
    goto :goto_0
.end method
