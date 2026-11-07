.class public abstract Landroid/health/connect/datatypes/InstantRecord;
.super Landroid/health/connect/datatypes/Record;
.source "InstantRecord.java"


# instance fields
.field private final blacklist mTime:Ljava/time/Instant;

.field private final blacklist mZoneOffset:Ljava/time/ZoneOffset;


# direct methods
.method constructor blacklist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Z)V
    .registers 8
    .param p1, "metadata"    # Landroid/health/connect/datatypes/Metadata;
    .param p2, "time"    # Ljava/time/Instant;
    .param p3, "zoneOffset"    # Ljava/time/ZoneOffset;
    .param p4, "skipValidation"    # Z

    .line 42
    invoke-direct {p0, p1}, Landroid/health/connect/datatypes/Record;-><init>(Landroid/health/connect/datatypes/Metadata;)V

    .line 43
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    if-nez p4, :cond_3d

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/time/Instant;->isAfter(Ljava/time/Instant;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_3d

    .line 46
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Record time must not be in the future, record time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " currentTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 50
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_3d
    :goto_3d
    iput-object p2, p0, Landroid/health/connect/datatypes/InstantRecord;->mTime:Ljava/time/Instant;

    .line 53
    iput-object p3, p0, Landroid/health/connect/datatypes/InstantRecord;->mZoneOffset:Ljava/time/ZoneOffset;

    .line 54
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "object"    # Ljava/lang/Object;

    .line 81
    invoke-super {p0, p1}, Landroid/health/connect/datatypes/Record;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    .line 82
    move-object v0, p1

    check-cast v0, Landroid/health/connect/datatypes/InstantRecord;

    .line 83
    .local v0, "other":Landroid/health/connect/datatypes/InstantRecord;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/InstantRecord;->getTime()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/health/connect/datatypes/InstantRecord;->getTime()Ljava/time/Instant;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2e

    .line 84
    invoke-virtual {p0}, Landroid/health/connect/datatypes/InstantRecord;->getZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v2

    invoke-virtual {v0}, Landroid/health/connect/datatypes/InstantRecord;->getZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const/4 v1, 0x1

    goto :goto_2f

    :cond_2e
    nop

    .line 83
    :goto_2f
    return v1

    .line 86
    .end local v0    # "other":Landroid/health/connect/datatypes/InstantRecord;
    :cond_30
    return v1
.end method

.method public whitelist getTime()Ljava/time/Instant;
    .registers 2

    .line 61
    iget-object v0, p0, Landroid/health/connect/datatypes/InstantRecord;->mTime:Ljava/time/Instant;

    return-object v0
.end method

.method public whitelist getZoneOffset()Ljava/time/ZoneOffset;
    .registers 2

    .line 69
    iget-object v0, p0, Landroid/health/connect/datatypes/InstantRecord;->mZoneOffset:Ljava/time/ZoneOffset;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 92
    invoke-super {p0}, Landroid/health/connect/datatypes/Record;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/health/connect/datatypes/InstantRecord;->getTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/datatypes/InstantRecord;->getZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
