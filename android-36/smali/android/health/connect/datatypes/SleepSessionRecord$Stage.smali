.class public Landroid/health/connect/datatypes/SleepSessionRecord$Stage;
.super Ljava/lang/Object;
.source "SleepSessionRecord.java"

# interfaces
.implements Landroid/health/connect/datatypes/TimeInterval$TimeIntervalHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/SleepSessionRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stage"
.end annotation


# instance fields
.field private final blacklist mInterval:Landroid/health/connect/datatypes/TimeInterval;

.field private final blacklist mStageType:I


# direct methods
.method public constructor whitelist <init>(Ljava/time/Instant;Ljava/time/Instant;I)V
    .registers 6
    .param p1, "startTime"    # Ljava/time/Instant;
    .param p2, "endTime"    # Ljava/time/Instant;
    .param p3, "stageType"    # I

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    sget-object v0, Landroid/health/connect/datatypes/SleepSessionRecord$StageType;->VALID_TYPES:Ljava/util/Set;

    const-class v1, Landroid/health/connect/datatypes/SleepSessionRecord$StageType;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v0, v1}, Landroid/health/connect/datatypes/validation/ValidationUtils;->validateIntDefValue(ILjava/util/Set;Ljava/lang/String;)V

    .line 165
    new-instance v0, Landroid/health/connect/datatypes/TimeInterval;

    invoke-direct {v0, p1, p2}, Landroid/health/connect/datatypes/TimeInterval;-><init>(Ljava/time/Instant;Ljava/time/Instant;)V

    iput-object v0, p0, Landroid/health/connect/datatypes/SleepSessionRecord$Stage;->mInterval:Landroid/health/connect/datatypes/TimeInterval;

    .line 166
    iput p3, p0, Landroid/health/connect/datatypes/SleepSessionRecord$Stage;->mStageType:I

    .line 167
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 195
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 196
    :cond_4
    instance-of v1, p1, Landroid/health/connect/datatypes/SleepSessionRecord$Stage;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 197
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/health/connect/datatypes/SleepSessionRecord$Stage;

    .line 198
    .local v1, "that":Landroid/health/connect/datatypes/SleepSessionRecord$Stage;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SleepSessionRecord$Stage;->getType()I

    move-result v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/SleepSessionRecord$Stage;->getType()I

    move-result v4

    if-ne v3, v4, :cond_40

    .line 199
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SleepSessionRecord$Stage;->getStartTime()Ljava/time/Instant;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/SleepSessionRecord$Stage;->getStartTime()Ljava/time/Instant;

    move-result-object v5

    invoke-virtual {v5}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_40

    .line 200
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SleepSessionRecord$Stage;->getEndTime()Ljava/time/Instant;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/SleepSessionRecord$Stage;->getEndTime()Ljava/time/Instant;

    move-result-object v5

    invoke-virtual {v5}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_40

    goto :goto_41

    :cond_40
    move v0, v2

    .line 198
    :goto_41
    return v0
.end method

.method public whitelist getEndTime()Ljava/time/Instant;
    .registers 2

    .line 178
    iget-object v0, p0, Landroid/health/connect/datatypes/SleepSessionRecord$Stage;->mInterval:Landroid/health/connect/datatypes/TimeInterval;

    invoke-virtual {v0}, Landroid/health/connect/datatypes/TimeInterval;->getEndTime()Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getInterval()Landroid/health/connect/datatypes/TimeInterval;
    .registers 2

    .line 190
    iget-object v0, p0, Landroid/health/connect/datatypes/SleepSessionRecord$Stage;->mInterval:Landroid/health/connect/datatypes/TimeInterval;

    return-object v0
.end method

.method public whitelist getStartTime()Ljava/time/Instant;
    .registers 2

    .line 172
    iget-object v0, p0, Landroid/health/connect/datatypes/SleepSessionRecord$Stage;->mInterval:Landroid/health/connect/datatypes/TimeInterval;

    invoke-virtual {v0}, Landroid/health/connect/datatypes/TimeInterval;->getStartTime()Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 184
    iget v0, p0, Landroid/health/connect/datatypes/SleepSessionRecord$Stage;->mStageType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 205
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SleepSessionRecord$Stage;->getStartTime()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {p0}, Landroid/health/connect/datatypes/SleepSessionRecord$Stage;->getEndTime()Ljava/time/Instant;

    move-result-object v1

    iget v2, p0, Landroid/health/connect/datatypes/SleepSessionRecord$Stage;->mStageType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist toInternalStage()Landroid/health/connect/internal/datatypes/SleepStageInternal;
    .registers 4

    .line 210
    new-instance v0, Landroid/health/connect/internal/datatypes/SleepStageInternal;

    invoke-direct {v0}, Landroid/health/connect/internal/datatypes/SleepStageInternal;-><init>()V

    .line 211
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SleepSessionRecord$Stage;->getStartTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/SleepStageInternal;->setStartTime(J)Landroid/health/connect/internal/datatypes/SleepStageInternal;

    move-result-object v0

    .line 212
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SleepSessionRecord$Stage;->getEndTime()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/health/connect/internal/datatypes/SleepStageInternal;->setEndTime(J)Landroid/health/connect/internal/datatypes/SleepStageInternal;

    move-result-object v0

    .line 213
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SleepSessionRecord$Stage;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/internal/datatypes/SleepStageInternal;->setStageType(I)Landroid/health/connect/internal/datatypes/SleepStageInternal;

    move-result-object v0

    .line 210
    return-object v0
.end method
