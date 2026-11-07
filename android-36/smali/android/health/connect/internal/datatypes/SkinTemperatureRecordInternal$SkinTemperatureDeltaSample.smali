.class public final Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal$SkinTemperatureDeltaSample;
.super Ljava/lang/Object;
.source "SkinTemperatureRecordInternal.java"

# interfaces
.implements Landroid/health/connect/internal/datatypes/SeriesRecordInternal$Sample;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SkinTemperatureDeltaSample"
.end annotation


# instance fields
.field private final blacklist mEpochMillis:J

.field private final blacklist mTemperatureDeltaInCelsius:D


# direct methods
.method public constructor blacklist <init>(DJ)V
    .registers 5
    .param p1, "temperatureDeltaInCelsius"    # D
    .param p3, "epochMillis"    # J

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal$SkinTemperatureDeltaSample;->mTemperatureDeltaInCelsius:D

    .line 141
    iput-wide p3, p0, Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal$SkinTemperatureDeltaSample;->mEpochMillis:J

    .line 142
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "object"    # Ljava/lang/Object;

    .line 154
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    instance-of v0, p1, Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal$SkinTemperatureDeltaSample;

    if-eqz v0, :cond_1c

    .line 156
    move-object v0, p1

    check-cast v0, Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal$SkinTemperatureDeltaSample;

    .line 158
    .local v0, "other":Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal$SkinTemperatureDeltaSample;
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal$SkinTemperatureDeltaSample;->mEpochMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal$SkinTemperatureDeltaSample;->mEpochMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    return v1

    .line 160
    .end local v0    # "other":Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal$SkinTemperatureDeltaSample;
    :cond_1c
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 165
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal$SkinTemperatureDeltaSample;->mEpochMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist mEpochMillis()J
    .registers 3

    .line 149
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal$SkinTemperatureDeltaSample;->mEpochMillis:J

    return-wide v0
.end method

.method public blacklist mTemperatureDeltaInCelsius()D
    .registers 3

    .line 145
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/SkinTemperatureRecordInternal$SkinTemperatureDeltaSample;->mTemperatureDeltaInCelsius:D

    return-wide v0
.end method
