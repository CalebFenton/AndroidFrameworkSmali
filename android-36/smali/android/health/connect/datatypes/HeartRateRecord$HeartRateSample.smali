.class public final Landroid/health/connect/datatypes/HeartRateRecord$HeartRateSample;
.super Ljava/lang/Object;
.source "HeartRateRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/HeartRateRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HeartRateSample"
.end annotation


# instance fields
.field private final blacklist mBeatsPerMinute:J

.field private final blacklist mTime:Ljava/time/Instant;


# direct methods
.method public constructor whitelist <init>(JLjava/time/Instant;)V
    .registers 5
    .param p1, "beatsPerMinute"    # J
    .param p3, "time"    # Ljava/time/Instant;

    .line 161
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/health/connect/datatypes/HeartRateRecord$HeartRateSample;-><init>(JLjava/time/Instant;Z)V

    .line 162
    return-void
.end method

.method public constructor blacklist <init>(JLjava/time/Instant;Z)V
    .registers 12
    .param p1, "beatsPerMinute"    # J
    .param p3, "time"    # Ljava/time/Instant;
    .param p4, "skipValidation"    # Z

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    if-nez p4, :cond_13

    .line 175
    const-wide/16 v4, 0x12c

    const-string v6, "beatsPerMinute"

    const-wide/16 v2, 0x1

    move-wide v0, p1

    .end local p1    # "beatsPerMinute":J
    .local v0, "beatsPerMinute":J
    invoke-static/range {v0 .. v6}, Landroid/health/connect/datatypes/validation/ValidationUtils;->requireInRange(JJJLjava/lang/String;)V

    goto :goto_14

    .line 174
    .end local v0    # "beatsPerMinute":J
    .restart local p1    # "beatsPerMinute":J
    :cond_13
    move-wide v0, p1

    .line 178
    .end local p1    # "beatsPerMinute":J
    .restart local v0    # "beatsPerMinute":J
    :goto_14
    iput-wide v0, p0, Landroid/health/connect/datatypes/HeartRateRecord$HeartRateSample;->mBeatsPerMinute:J

    .line 179
    iput-object p3, p0, Landroid/health/connect/datatypes/HeartRateRecord$HeartRateSample;->mTime:Ljava/time/Instant;

    .line 180
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "object"    # Ljava/lang/Object;

    .line 205
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    instance-of v0, p1, Landroid/health/connect/datatypes/HeartRateRecord$HeartRateSample;

    if-eqz v0, :cond_32

    .line 206
    move-object v0, p1

    check-cast v0, Landroid/health/connect/datatypes/HeartRateRecord$HeartRateSample;

    .line 207
    .local v0, "other":Landroid/health/connect/datatypes/HeartRateRecord$HeartRateSample;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/HeartRateRecord$HeartRateSample;->getBeatsPerMinute()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/health/connect/datatypes/HeartRateRecord$HeartRateSample;->getBeatsPerMinute()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_30

    .line 208
    invoke-virtual {p0}, Landroid/health/connect/datatypes/HeartRateRecord$HeartRateSample;->getTime()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/health/connect/datatypes/HeartRateRecord$HeartRateSample;->getTime()Ljava/time/Instant;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_30

    const/4 v1, 0x1

    goto :goto_31

    :cond_30
    nop

    .line 207
    :goto_31
    return v1

    .line 210
    .end local v0    # "other":Landroid/health/connect/datatypes/HeartRateRecord$HeartRateSample;
    :cond_32
    return v1
.end method

.method public whitelist getBeatsPerMinute()J
    .registers 3

    .line 186
    iget-wide v0, p0, Landroid/health/connect/datatypes/HeartRateRecord$HeartRateSample;->mBeatsPerMinute:J

    return-wide v0
.end method

.method public whitelist getTime()Ljava/time/Instant;
    .registers 2

    .line 194
    iget-object v0, p0, Landroid/health/connect/datatypes/HeartRateRecord$HeartRateSample;->mTime:Ljava/time/Instant;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 220
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/health/connect/datatypes/HeartRateRecord$HeartRateSample;->getBeatsPerMinute()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/datatypes/HeartRateRecord$HeartRateSample;->getTime()Ljava/time/Instant;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
