.class public final Landroid/health/connect/datatypes/SkinTemperatureRecord$Delta;
.super Ljava/lang/Object;
.source "SkinTemperatureRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/SkinTemperatureRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Delta"
.end annotation


# instance fields
.field private final blacklist mDelta:Landroid/health/connect/datatypes/units/TemperatureDelta;

.field private final blacklist mTime:Ljava/time/Instant;


# direct methods
.method public constructor whitelist <init>(Landroid/health/connect/datatypes/units/TemperatureDelta;Ljava/time/Instant;)V
    .registers 4
    .param p1, "delta"    # Landroid/health/connect/datatypes/units/TemperatureDelta;
    .param p2, "time"    # Ljava/time/Instant;

    .line 248
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/health/connect/datatypes/SkinTemperatureRecord$Delta;-><init>(Landroid/health/connect/datatypes/units/TemperatureDelta;Ljava/time/Instant;Z)V

    .line 249
    return-void
.end method

.method public constructor blacklist <init>(Landroid/health/connect/datatypes/units/TemperatureDelta;Ljava/time/Instant;Z)V
    .registers 11
    .param p1, "delta"    # Landroid/health/connect/datatypes/units/TemperatureDelta;
    .param p2, "time"    # Ljava/time/Instant;
    .param p3, "skipValidation"    # Z

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    if-nez p3, :cond_18

    .line 264
    invoke-virtual {p1}, Landroid/health/connect/datatypes/units/TemperatureDelta;->getInCelsius()D

    move-result-wide v0

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    const-string v6, "temperature delta"

    const-wide/high16 v2, -0x3fc2000000000000L    # -30.0

    invoke-static/range {v0 .. v6}, Landroid/health/connect/datatypes/validation/ValidationUtils;->requireInRange(DDDLjava/lang/String;)V

    .line 266
    :cond_18
    iput-object p1, p0, Landroid/health/connect/datatypes/SkinTemperatureRecord$Delta;->mDelta:Landroid/health/connect/datatypes/units/TemperatureDelta;

    .line 267
    iput-object p2, p0, Landroid/health/connect/datatypes/SkinTemperatureRecord$Delta;->mTime:Ljava/time/Instant;

    .line 268
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "object"    # Ljava/lang/Object;

    .line 294
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 295
    :cond_4
    instance-of v1, p1, Landroid/health/connect/datatypes/SkinTemperatureRecord$Delta;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 296
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/health/connect/datatypes/SkinTemperatureRecord$Delta;

    .line 297
    .local v1, "that":Landroid/health/connect/datatypes/SkinTemperatureRecord$Delta;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SkinTemperatureRecord$Delta;->getDelta()Landroid/health/connect/datatypes/units/TemperatureDelta;

    move-result-object v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/SkinTemperatureRecord$Delta;->getDelta()Landroid/health/connect/datatypes/units/TemperatureDelta;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 298
    invoke-virtual {p0}, Landroid/health/connect/datatypes/SkinTemperatureRecord$Delta;->getTime()Ljava/time/Instant;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/SkinTemperatureRecord$Delta;->getTime()Ljava/time/Instant;

    move-result-object v5

    invoke-virtual {v5}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_30

    goto :goto_31

    :cond_30
    move v0, v2

    .line 297
    :goto_31
    return v0
.end method

.method public whitelist getDelta()Landroid/health/connect/datatypes/units/TemperatureDelta;
    .registers 2

    .line 275
    iget-object v0, p0, Landroid/health/connect/datatypes/SkinTemperatureRecord$Delta;->mDelta:Landroid/health/connect/datatypes/units/TemperatureDelta;

    return-object v0
.end method

.method public whitelist getTime()Ljava/time/Instant;
    .registers 2

    .line 283
    iget-object v0, p0, Landroid/health/connect/datatypes/SkinTemperatureRecord$Delta;->mTime:Ljava/time/Instant;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 306
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/health/connect/datatypes/SkinTemperatureRecord$Delta;->getDelta()Landroid/health/connect/datatypes/units/TemperatureDelta;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/datatypes/SkinTemperatureRecord$Delta;->getTime()Ljava/time/Instant;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
