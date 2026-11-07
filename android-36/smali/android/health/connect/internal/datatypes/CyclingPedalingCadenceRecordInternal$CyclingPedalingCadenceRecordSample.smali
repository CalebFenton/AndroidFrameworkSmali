.class public final Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal$CyclingPedalingCadenceRecordSample;
.super Ljava/lang/Object;
.source "CyclingPedalingCadenceRecordInternal.java"

# interfaces
.implements Landroid/health/connect/internal/datatypes/SeriesRecordInternal$Sample;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CyclingPedalingCadenceRecordSample"
.end annotation


# instance fields
.field private final blacklist mEpochMillis:J

.field private final blacklist mRevolutionsPerMinute:D


# direct methods
.method public constructor blacklist <init>(DJ)V
    .registers 5
    .param p1, "revolutionsPerMinute"    # D
    .param p3, "epochMillis"    # J

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal$CyclingPedalingCadenceRecordSample;->mRevolutionsPerMinute:D

    .line 116
    iput-wide p3, p0, Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal$CyclingPedalingCadenceRecordSample;->mEpochMillis:J

    .line 117
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "object"    # Ljava/lang/Object;

    .line 129
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    instance-of v0, p1, Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal$CyclingPedalingCadenceRecordSample;

    if-eqz v0, :cond_1c

    .line 134
    move-object v0, p1

    check-cast v0, Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal$CyclingPedalingCadenceRecordSample;

    .line 137
    .local v0, "other":Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal$CyclingPedalingCadenceRecordSample;
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal$CyclingPedalingCadenceRecordSample;->getEpochMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal$CyclingPedalingCadenceRecordSample;->getEpochMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    return v1

    .line 139
    .end local v0    # "other":Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal$CyclingPedalingCadenceRecordSample;
    :cond_1c
    return v1
.end method

.method public blacklist getEpochMillis()J
    .registers 3

    .line 124
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal$CyclingPedalingCadenceRecordSample;->mEpochMillis:J

    return-wide v0
.end method

.method public blacklist getRevolutionsPerMinute()D
    .registers 3

    .line 120
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal$CyclingPedalingCadenceRecordSample;->mRevolutionsPerMinute:D

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 144
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/CyclingPedalingCadenceRecordInternal$CyclingPedalingCadenceRecordSample;->getEpochMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
