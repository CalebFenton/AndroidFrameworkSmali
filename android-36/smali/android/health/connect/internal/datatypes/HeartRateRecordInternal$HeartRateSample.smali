.class public final Landroid/health/connect/internal/datatypes/HeartRateRecordInternal$HeartRateSample;
.super Ljava/lang/Object;
.source "HeartRateRecordInternal.java"

# interfaces
.implements Landroid/health/connect/internal/datatypes/SeriesRecordInternal$Sample;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/internal/datatypes/HeartRateRecordInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HeartRateSample"
.end annotation


# instance fields
.field private final blacklist mBeatsPerMinute:I

.field private final blacklist mEpochMillis:J


# direct methods
.method public constructor blacklist <init>(IJ)V
    .registers 4
    .param p1, "beatsPerMinute"    # I
    .param p2, "epochMillis"    # J

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Landroid/health/connect/internal/datatypes/HeartRateRecordInternal$HeartRateSample;->mBeatsPerMinute:I

    .line 46
    iput-wide p2, p0, Landroid/health/connect/internal/datatypes/HeartRateRecordInternal$HeartRateSample;->mEpochMillis:J

    .line 47
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "object"    # Ljava/lang/Object;

    .line 59
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    instance-of v0, p1, Landroid/health/connect/internal/datatypes/HeartRateRecordInternal$HeartRateSample;

    if-eqz v0, :cond_1c

    .line 60
    move-object v0, p1

    check-cast v0, Landroid/health/connect/internal/datatypes/HeartRateRecordInternal$HeartRateSample;

    .line 62
    .local v0, "other":Landroid/health/connect/internal/datatypes/HeartRateRecordInternal$HeartRateSample;
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/HeartRateRecordInternal$HeartRateSample;->getEpochMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/health/connect/internal/datatypes/HeartRateRecordInternal$HeartRateSample;->getEpochMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    return v1

    .line 64
    .end local v0    # "other":Landroid/health/connect/internal/datatypes/HeartRateRecordInternal$HeartRateSample;
    :cond_1c
    return v1
.end method

.method public blacklist getBeatsPerMinute()I
    .registers 2

    .line 50
    iget v0, p0, Landroid/health/connect/internal/datatypes/HeartRateRecordInternal$HeartRateSample;->mBeatsPerMinute:I

    return v0
.end method

.method public blacklist getEpochMillis()J
    .registers 3

    .line 54
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/HeartRateRecordInternal$HeartRateSample;->mEpochMillis:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 69
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/HeartRateRecordInternal$HeartRateSample;->getEpochMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
