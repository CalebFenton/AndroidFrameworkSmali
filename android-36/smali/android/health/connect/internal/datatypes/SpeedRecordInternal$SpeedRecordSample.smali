.class public final Landroid/health/connect/internal/datatypes/SpeedRecordInternal$SpeedRecordSample;
.super Ljava/lang/Object;
.source "SpeedRecordInternal.java"

# interfaces
.implements Landroid/health/connect/internal/datatypes/SeriesRecordInternal$Sample;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/internal/datatypes/SpeedRecordInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpeedRecordSample"
.end annotation


# instance fields
.field private final blacklist mEpochMillis:J

.field private final blacklist mSpeed:D


# direct methods
.method public constructor blacklist <init>(DJ)V
    .registers 5
    .param p1, "speed"    # D
    .param p3, "epochMillis"    # J

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/SpeedRecordInternal$SpeedRecordSample;->mSpeed:D

    .line 108
    iput-wide p3, p0, Landroid/health/connect/internal/datatypes/SpeedRecordInternal$SpeedRecordSample;->mEpochMillis:J

    .line 109
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "object"    # Ljava/lang/Object;

    .line 121
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    instance-of v0, p1, Landroid/health/connect/internal/datatypes/SpeedRecordInternal$SpeedRecordSample;

    if-eqz v0, :cond_1c

    .line 122
    move-object v0, p1

    check-cast v0, Landroid/health/connect/internal/datatypes/SpeedRecordInternal$SpeedRecordSample;

    .line 124
    .local v0, "other":Landroid/health/connect/internal/datatypes/SpeedRecordInternal$SpeedRecordSample;
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/SpeedRecordInternal$SpeedRecordSample;->getEpochMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/health/connect/internal/datatypes/SpeedRecordInternal$SpeedRecordSample;->getEpochMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    return v1

    .line 126
    .end local v0    # "other":Landroid/health/connect/internal/datatypes/SpeedRecordInternal$SpeedRecordSample;
    :cond_1c
    return v1
.end method

.method public blacklist getEpochMillis()J
    .registers 3

    .line 116
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/SpeedRecordInternal$SpeedRecordSample;->mEpochMillis:J

    return-wide v0
.end method

.method public blacklist getSpeed()D
    .registers 3

    .line 112
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/SpeedRecordInternal$SpeedRecordSample;->mSpeed:D

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 131
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/SpeedRecordInternal$SpeedRecordSample;->getEpochMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
