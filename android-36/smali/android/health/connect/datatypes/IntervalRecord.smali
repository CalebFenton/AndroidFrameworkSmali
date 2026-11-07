.class public abstract Landroid/health/connect/datatypes/IntervalRecord;
.super Landroid/health/connect/datatypes/Record;
.source "IntervalRecord.java"


# instance fields
.field private final blacklist mEndTime:Ljava/time/Instant;

.field private final blacklist mEndZoneOffset:Ljava/time/ZoneOffset;

.field private final blacklist mStartTime:Ljava/time/Instant;

.field private final blacklist mStartZoneOffset:Ljava/time/ZoneOffset;


# direct methods
.method constructor blacklist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;ZZ)V
    .registers 12
    .param p1, "metadata"    # Landroid/health/connect/datatypes/Metadata;
    .param p2, "startTime"    # Ljava/time/Instant;
    .param p3, "startZoneOffset"    # Ljava/time/ZoneOffset;
    .param p4, "endTime"    # Ljava/time/Instant;
    .param p5, "endZoneOffset"    # Ljava/time/ZoneOffset;
    .param p6, "skipValidation"    # Z
    .param p7, "enforceFutureTimeRestrictions"    # Z

    .line 50
    invoke-direct {p0, p1}, Landroid/health/connect/datatypes/Record;-><init>(Landroid/health/connect/datatypes/Metadata;)V

    .line 51
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    if-nez p6, :cond_45

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/time/Instant;->isAfter(Ljava/time/Instant;)Z

    move-result v0

    if-eqz v0, :cond_45

    if-nez p7, :cond_1e

    goto :goto_45

    .line 56
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Record start time must not be in the future, start time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " currentTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 60
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_45
    :goto_45
    invoke-virtual {p4}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_5a

    .line 69
    iput-object p2, p0, Landroid/health/connect/datatypes/IntervalRecord;->mStartTime:Ljava/time/Instant;

    .line 70
    iput-object p3, p0, Landroid/health/connect/datatypes/IntervalRecord;->mStartZoneOffset:Ljava/time/ZoneOffset;

    .line 71
    iput-object p4, p0, Landroid/health/connect/datatypes/IntervalRecord;->mEndTime:Ljava/time/Instant;

    .line 72
    iput-object p5, p0, Landroid/health/connect/datatypes/IntervalRecord;->mEndZoneOffset:Ljava/time/ZoneOffset;

    .line 73
    return-void

    .line 63
    :cond_5a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "end time in millis needs to be after start time in millis. startTime instant: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " endTime instant: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "object"    # Ljava/lang/Object;

    .line 112
    invoke-super {p0, p1}, Landroid/health/connect/datatypes/Record;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_52

    .line 113
    move-object v0, p1

    check-cast v0, Landroid/health/connect/datatypes/IntervalRecord;

    .line 114
    .local v0, "other":Landroid/health/connect/datatypes/IntervalRecord;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/IntervalRecord;->getStartTime()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/health/connect/datatypes/IntervalRecord;->getStartTime()Ljava/time/Instant;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_50

    .line 115
    invoke-virtual {p0}, Landroid/health/connect/datatypes/IntervalRecord;->getEndTime()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/health/connect/datatypes/IntervalRecord;->getEndTime()Ljava/time/Instant;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_50

    .line 116
    invoke-virtual {p0}, Landroid/health/connect/datatypes/IntervalRecord;->getStartZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v2

    invoke-virtual {v0}, Landroid/health/connect/datatypes/IntervalRecord;->getStartZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 117
    invoke-virtual {p0}, Landroid/health/connect/datatypes/IntervalRecord;->getEndZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v2

    invoke-virtual {v0}, Landroid/health/connect/datatypes/IntervalRecord;->getEndZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    const/4 v1, 0x1

    goto :goto_51

    :cond_50
    nop

    .line 114
    :goto_51
    return v1

    .line 119
    .end local v0    # "other":Landroid/health/connect/datatypes/IntervalRecord;
    :cond_52
    return v1
.end method

.method public whitelist getEndTime()Ljava/time/Instant;
    .registers 2

    .line 93
    iget-object v0, p0, Landroid/health/connect/datatypes/IntervalRecord;->mEndTime:Ljava/time/Instant;

    return-object v0
.end method

.method public whitelist getEndZoneOffset()Ljava/time/ZoneOffset;
    .registers 2

    .line 100
    iget-object v0, p0, Landroid/health/connect/datatypes/IntervalRecord;->mEndZoneOffset:Ljava/time/ZoneOffset;

    return-object v0
.end method

.method public whitelist getStartTime()Ljava/time/Instant;
    .registers 2

    .line 79
    iget-object v0, p0, Landroid/health/connect/datatypes/IntervalRecord;->mStartTime:Ljava/time/Instant;

    return-object v0
.end method

.method public whitelist getStartZoneOffset()Ljava/time/ZoneOffset;
    .registers 2

    .line 86
    iget-object v0, p0, Landroid/health/connect/datatypes/IntervalRecord;->mStartZoneOffset:Ljava/time/ZoneOffset;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 128
    nop

    .line 129
    invoke-super {p0}, Landroid/health/connect/datatypes/Record;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 130
    invoke-virtual {p0}, Landroid/health/connect/datatypes/IntervalRecord;->getStartTime()Ljava/time/Instant;

    move-result-object v1

    .line 131
    invoke-virtual {p0}, Landroid/health/connect/datatypes/IntervalRecord;->getStartZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v2

    .line 132
    invoke-virtual {p0}, Landroid/health/connect/datatypes/IntervalRecord;->getEndTime()Ljava/time/Instant;

    move-result-object v3

    .line 133
    invoke-virtual {p0}, Landroid/health/connect/datatypes/IntervalRecord;->getEndZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 128
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
