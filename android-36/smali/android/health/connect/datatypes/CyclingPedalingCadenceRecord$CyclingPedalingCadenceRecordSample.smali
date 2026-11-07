.class public final Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$CyclingPedalingCadenceRecordSample;
.super Ljava/lang/Object;
.source "CyclingPedalingCadenceRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CyclingPedalingCadenceRecordSample"
.end annotation


# instance fields
.field private final blacklist mRevolutionsPerMinute:D

.field private final blacklist mTime:Ljava/time/Instant;


# direct methods
.method public constructor whitelist <init>(DLjava/time/Instant;)V
    .registers 5
    .param p1, "revolutionsPerMinute"    # D
    .param p3, "time"    # Ljava/time/Instant;

    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$CyclingPedalingCadenceRecordSample;-><init>(DLjava/time/Instant;Z)V

    .line 137
    return-void
.end method

.method public constructor blacklist <init>(DLjava/time/Instant;Z)V
    .registers 12
    .param p1, "revolutionsPerMinute"    # D
    .param p3, "time"    # Ljava/time/Instant;
    .param p4, "skipValidation"    # Z

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    if-nez p4, :cond_16

    .line 151
    const-wide v4, 0x40c3880000000000L    # 10000.0

    const-string v6, "revolutionsPerMinute"

    const-wide/16 v2, 0x0

    move-wide v0, p1

    .end local p1    # "revolutionsPerMinute":D
    .local v0, "revolutionsPerMinute":D
    invoke-static/range {v0 .. v6}, Landroid/health/connect/datatypes/validation/ValidationUtils;->requireInRange(DDDLjava/lang/String;)V

    goto :goto_17

    .line 150
    .end local v0    # "revolutionsPerMinute":D
    .restart local p1    # "revolutionsPerMinute":D
    :cond_16
    move-wide v0, p1

    .line 154
    .end local p1    # "revolutionsPerMinute":D
    .restart local v0    # "revolutionsPerMinute":D
    :goto_17
    iput-object p3, p0, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$CyclingPedalingCadenceRecordSample;->mTime:Ljava/time/Instant;

    .line 155
    iput-wide v0, p0, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$CyclingPedalingCadenceRecordSample;->mRevolutionsPerMinute:D

    .line 156
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "object"    # Ljava/lang/Object;

    .line 181
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    instance-of v0, p1, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$CyclingPedalingCadenceRecordSample;

    if-eqz v0, :cond_32

    .line 182
    move-object v0, p1

    check-cast v0, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$CyclingPedalingCadenceRecordSample;

    .line 184
    .local v0, "other":Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$CyclingPedalingCadenceRecordSample;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$CyclingPedalingCadenceRecordSample;->getRevolutionsPerMinute()D

    move-result-wide v2

    invoke-virtual {v0}, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$CyclingPedalingCadenceRecordSample;->getRevolutionsPerMinute()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-nez v2, :cond_30

    .line 185
    invoke-virtual {p0}, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$CyclingPedalingCadenceRecordSample;->getTime()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$CyclingPedalingCadenceRecordSample;->getTime()Ljava/time/Instant;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_30

    const/4 v1, 0x1

    goto :goto_31

    :cond_30
    nop

    .line 184
    :goto_31
    return v1

    .line 187
    .end local v0    # "other":Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$CyclingPedalingCadenceRecordSample;
    :cond_32
    return v1
.end method

.method public whitelist getRevolutionsPerMinute()D
    .registers 3

    .line 162
    iget-wide v0, p0, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$CyclingPedalingCadenceRecordSample;->mRevolutionsPerMinute:D

    return-wide v0
.end method

.method public whitelist getTime()Ljava/time/Instant;
    .registers 2

    .line 170
    iget-object v0, p0, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$CyclingPedalingCadenceRecordSample;->mTime:Ljava/time/Instant;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 197
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$CyclingPedalingCadenceRecordSample;->getRevolutionsPerMinute()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/datatypes/CyclingPedalingCadenceRecord$CyclingPedalingCadenceRecordSample;->getTime()Ljava/time/Instant;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
