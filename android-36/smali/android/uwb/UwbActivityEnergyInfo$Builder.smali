.class public final Landroid/uwb/UwbActivityEnergyInfo$Builder;
.super Ljava/lang/Object;
.source "UwbActivityEnergyInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/uwb/UwbActivityEnergyInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mControllerIdleDurationMillis:J

.field private blacklist mControllerRxDurationMillis:J

.field private blacklist mControllerTxDurationMillis:J

.field private blacklist mControllerWakeCount:J

.field private blacklist mStackState:I

.field private blacklist mTimeSinceBootMillis:J


# direct methods
.method public constructor whitelist <init>()V
    .registers 4

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/uwb/UwbActivityEnergyInfo$Builder;->mTimeSinceBootMillis:J

    .line 177
    const/4 v2, -0x1

    iput v2, p0, Landroid/uwb/UwbActivityEnergyInfo$Builder;->mStackState:I

    .line 178
    iput-wide v0, p0, Landroid/uwb/UwbActivityEnergyInfo$Builder;->mControllerTxDurationMillis:J

    .line 179
    iput-wide v0, p0, Landroid/uwb/UwbActivityEnergyInfo$Builder;->mControllerRxDurationMillis:J

    .line 180
    iput-wide v0, p0, Landroid/uwb/UwbActivityEnergyInfo$Builder;->mControllerIdleDurationMillis:J

    .line 181
    iput-wide v0, p0, Landroid/uwb/UwbActivityEnergyInfo$Builder;->mControllerWakeCount:J

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/uwb/UwbActivityEnergyInfo;
    .registers 15

    .line 280
    iget-wide v0, p0, Landroid/uwb/UwbActivityEnergyInfo$Builder;->mTimeSinceBootMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_b6

    .line 285
    iget v0, p0, Landroid/uwb/UwbActivityEnergyInfo$Builder;->mStackState:I

    if-eqz v0, :cond_1f

    iget v0, p0, Landroid/uwb/UwbActivityEnergyInfo$Builder;->mStackState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1f

    iget v0, p0, Landroid/uwb/UwbActivityEnergyInfo$Builder;->mStackState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_17

    goto :goto_1f

    .line 288
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "invalid UWB stack state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_1f
    :goto_1f
    iget-wide v0, p0, Landroid/uwb/UwbActivityEnergyInfo$Builder;->mControllerTxDurationMillis:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_9b

    .line 296
    iget-wide v0, p0, Landroid/uwb/UwbActivityEnergyInfo$Builder;->mControllerRxDurationMillis:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_80

    .line 301
    iget-wide v0, p0, Landroid/uwb/UwbActivityEnergyInfo$Builder;->mControllerIdleDurationMillis:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_65

    .line 306
    iget-wide v0, p0, Landroid/uwb/UwbActivityEnergyInfo$Builder;->mControllerWakeCount:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4a

    .line 311
    new-instance v1, Landroid/uwb/UwbActivityEnergyInfo;

    iget-wide v2, p0, Landroid/uwb/UwbActivityEnergyInfo$Builder;->mTimeSinceBootMillis:J

    iget v4, p0, Landroid/uwb/UwbActivityEnergyInfo$Builder;->mStackState:I

    iget-wide v5, p0, Landroid/uwb/UwbActivityEnergyInfo$Builder;->mControllerTxDurationMillis:J

    iget-wide v7, p0, Landroid/uwb/UwbActivityEnergyInfo$Builder;->mControllerRxDurationMillis:J

    iget-wide v9, p0, Landroid/uwb/UwbActivityEnergyInfo$Builder;->mControllerIdleDurationMillis:J

    iget-wide v11, p0, Landroid/uwb/UwbActivityEnergyInfo$Builder;->mControllerWakeCount:J

    const/4 v13, 0x0

    invoke-direct/range {v1 .. v13}, Landroid/uwb/UwbActivityEnergyInfo;-><init>(JIJJJJLandroid/uwb/UwbActivityEnergyInfo-IA;)V

    return-object v1

    .line 307
    :cond_4a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wakeCount must be >= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/uwb/UwbActivityEnergyInfo$Builder;->mControllerWakeCount:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_65
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "idleDurationMillis must be >= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/uwb/UwbActivityEnergyInfo$Builder;->mControllerIdleDurationMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_80
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rxDurationMillis must be >= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/uwb/UwbActivityEnergyInfo$Builder;->mControllerRxDurationMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_9b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "txDurationMillis must be >= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/uwb/UwbActivityEnergyInfo$Builder;->mControllerTxDurationMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_b6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timeSinceBootMillis must be >= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/uwb/UwbActivityEnergyInfo$Builder;->mTimeSinceBootMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setControllerIdleDurationMillis(J)Landroid/uwb/UwbActivityEnergyInfo$Builder;
    .registers 5
    .param p1, "idleDurationMillis"    # J

    .line 250
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_9

    .line 253
    iput-wide p1, p0, Landroid/uwb/UwbActivityEnergyInfo$Builder;->mControllerIdleDurationMillis:J

    .line 254
    return-object p0

    .line 251
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "idleDurationMillis must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setControllerRxDurationMillis(J)Landroid/uwb/UwbActivityEnergyInfo$Builder;
    .registers 5
    .param p1, "rxDurationMillis"    # J

    .line 234
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_9

    .line 237
    iput-wide p1, p0, Landroid/uwb/UwbActivityEnergyInfo$Builder;->mControllerRxDurationMillis:J

    .line 238
    return-object p0

    .line 235
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rxDurationMillis must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setControllerTxDurationMillis(J)Landroid/uwb/UwbActivityEnergyInfo$Builder;
    .registers 5
    .param p1, "txDurationMillis"    # J

    .line 220
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_9

    .line 223
    iput-wide p1, p0, Landroid/uwb/UwbActivityEnergyInfo$Builder;->mControllerTxDurationMillis:J

    .line 224
    return-object p0

    .line 221
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "txDurationMillis must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setControllerWakeCount(J)Landroid/uwb/UwbActivityEnergyInfo$Builder;
    .registers 5
    .param p1, "wakeCount"    # J

    .line 264
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_9

    .line 267
    iput-wide p1, p0, Landroid/uwb/UwbActivityEnergyInfo$Builder;->mControllerWakeCount:J

    .line 268
    return-object p0

    .line 265
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "wakeCount must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setStackState(I)Landroid/uwb/UwbActivityEnergyInfo$Builder;
    .registers 4
    .param p1, "stackState"    # I

    .line 204
    if-eqz p1, :cond_11

    const/4 v0, 0x1

    if-eq p1, v0, :cond_11

    const/4 v0, 0x2

    if-ne p1, v0, :cond_9

    goto :goto_11

    .line 207
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid UWB stack state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_11
    :goto_11
    iput p1, p0, Landroid/uwb/UwbActivityEnergyInfo$Builder;->mStackState:I

    .line 210
    return-object p0
.end method

.method public whitelist setTimeSinceBootMillis(J)Landroid/uwb/UwbActivityEnergyInfo$Builder;
    .registers 5
    .param p1, "timeSinceBootMillis"    # J

    .line 190
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_9

    .line 193
    iput-wide p1, p0, Landroid/uwb/UwbActivityEnergyInfo$Builder;->mTimeSinceBootMillis:J

    .line 194
    return-object p0

    .line 191
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeSinceBootMillis must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
