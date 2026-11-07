.class public final Landroid/health/connect/datatypes/SpeedRecord$SpeedRecordSample;
.super Ljava/lang/Object;
.source "SpeedRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/SpeedRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpeedRecordSample"
.end annotation


# instance fields
.field private final blacklist mSpeed:Landroid/health/connect/datatypes/units/Velocity;

.field private final blacklist mTime:Ljava/time/Instant;


# direct methods
.method public constructor whitelist <init>(Landroid/health/connect/datatypes/units/Velocity;Ljava/time/Instant;)V
    .registers 4
    .param p1, "speed"    # Landroid/health/connect/datatypes/units/Velocity;
    .param p2, "time"    # Ljava/time/Instant;

    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/health/connect/datatypes/SpeedRecord$SpeedRecordSample;-><init>(Landroid/health/connect/datatypes/units/Velocity;Ljava/time/Instant;Z)V

    .line 132
    return-void
.end method

.method public constructor blacklist <init>(Landroid/health/connect/datatypes/units/Velocity;Ljava/time/Instant;Z)V
    .registers 11
    .param p1, "speed"    # Landroid/health/connect/datatypes/units/Velocity;
    .param p2, "time"    # Ljava/time/Instant;
    .param p3, "skipValidation"    # Z

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    if-nez p3, :cond_1b

    .line 147
    invoke-virtual {p1}, Landroid/health/connect/datatypes/units/Velocity;->getInMetersPerSecond()D

    move-result-wide v0

    const-wide v4, 0x412e848000000000L    # 1000000.0

    const-string v6, "speed"

    const-wide/16 v2, 0x0

    invoke-static/range {v0 .. v6}, Landroid/health/connect/datatypes/validation/ValidationUtils;->requireInRange(DDDLjava/lang/String;)V

    .line 149
    :cond_1b
    iput-object p2, p0, Landroid/health/connect/datatypes/SpeedRecord$SpeedRecordSample;->mTime:Ljava/time/Instant;

    .line 150
    iput-object p1, p0, Landroid/health/connect/datatypes/SpeedRecord$SpeedRecordSample;->mSpeed:Landroid/health/connect/datatypes/units/Velocity;

    .line 151
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "object"    # Ljava/lang/Object;

    .line 177
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_34

    instance-of v0, p1, Landroid/health/connect/datatypes/SpeedRecord$SpeedRecordSample;

    if-eqz v0, :cond_34

    .line 178
    move-object v0, p1

    check-cast v0, Landroid/health/connect/datatypes/SpeedRecord$SpeedRecordSample;

    .line 179
    .local v0, "other":Landroid/health/connect/datatypes/SpeedRecord$SpeedRecordSample;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SpeedRecord$SpeedRecordSample;->getSpeed()Landroid/health/connect/datatypes/units/Velocity;

    move-result-object v2

    invoke-virtual {v0}, Landroid/health/connect/datatypes/SpeedRecord$SpeedRecordSample;->getSpeed()Landroid/health/connect/datatypes/units/Velocity;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/health/connect/datatypes/units/Velocity;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 180
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SpeedRecord$SpeedRecordSample;->getTime()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/health/connect/datatypes/SpeedRecord$SpeedRecordSample;->getTime()Ljava/time/Instant;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_32

    const/4 v1, 0x1

    goto :goto_33

    :cond_32
    nop

    .line 179
    :goto_33
    return v1

    .line 182
    .end local v0    # "other":Landroid/health/connect/datatypes/SpeedRecord$SpeedRecordSample;
    :cond_34
    return v1
.end method

.method public whitelist getSpeed()Landroid/health/connect/datatypes/units/Velocity;
    .registers 2

    .line 158
    iget-object v0, p0, Landroid/health/connect/datatypes/SpeedRecord$SpeedRecordSample;->mSpeed:Landroid/health/connect/datatypes/units/Velocity;

    return-object v0
.end method

.method public whitelist getTime()Ljava/time/Instant;
    .registers 2

    .line 166
    iget-object v0, p0, Landroid/health/connect/datatypes/SpeedRecord$SpeedRecordSample;->mTime:Ljava/time/Instant;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 192
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/health/connect/datatypes/SpeedRecord$SpeedRecordSample;->getSpeed()Landroid/health/connect/datatypes/units/Velocity;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/datatypes/SpeedRecord$SpeedRecordSample;->getTime()Ljava/time/Instant;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
