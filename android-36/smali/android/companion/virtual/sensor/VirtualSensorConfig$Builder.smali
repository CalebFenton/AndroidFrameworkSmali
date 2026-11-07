.class public final Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;
.super Ljava/lang/Object;
.source "VirtualSensorConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/sensor/VirtualSensorConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final blacklist FLAG_MEMORY_FILE_DIRECT_CHANNEL_SUPPORTED:I = 0x400


# instance fields
.field private blacklist mFlags:I

.field blacklist mHighestDirectReportRateLevel:I

.field private blacklist mMaxDelay:I

.field private blacklist mMaximumRange:F

.field private blacklist mMinDelay:I

.field private final blacklist mName:Ljava/lang/String;

.field private blacklist mPower:F

.field private blacklist mResolution:F

.field private final blacklist mType:I

.field private blacklist mVendor:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(ILjava/lang/String;)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    if-lez p1, :cond_10

    .line 325
    iput p1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mType:I

    .line 326
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mName:Ljava/lang/String;

    .line 327
    return-void

    .line 323
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Virtual sensor type must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/companion/virtual/sensor/VirtualSensorConfig;
    .registers 14

    .line 334
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mHighestDirectReportRateLevel:I

    if-lez v0, :cond_1c

    .line 335
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_14

    .line 339
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    iget v1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mHighestDirectReportRateLevel:I

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    iput v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    goto :goto_1c

    .line 336
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Setting direct channel type is required for sensors with direct channel support."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :cond_1c
    :goto_1c
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    and-int/lit16 v0, v0, 0x400

    if-lez v0, :cond_2f

    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mHighestDirectReportRateLevel:I

    if-eqz v0, :cond_27

    goto :goto_2f

    .line 343
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Highest direct report rate level is required for sensors with direct channel support."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    :cond_2f
    :goto_2f
    new-instance v2, Landroid/companion/virtual/sensor/VirtualSensorConfig;

    iget v3, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mType:I

    iget-object v4, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mName:Ljava/lang/String;

    iget-object v5, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mVendor:Ljava/lang/String;

    iget v6, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mMaximumRange:F

    iget v7, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mResolution:F

    iget v8, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mPower:F

    iget v9, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mMinDelay:I

    iget v10, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mMaxDelay:I

    iget v11, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    const/4 v12, 0x0

    invoke-direct/range {v2 .. v12}, Landroid/companion/virtual/sensor/VirtualSensorConfig;-><init>(ILjava/lang/String;Ljava/lang/String;FFFIIILandroid/companion/virtual/sensor/VirtualSensorConfig-IA;)V

    return-object v2
.end method

.method public blacklist setAdditionalInfoSupported(Z)Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;
    .registers 3
    .param p1, "additionalInfoSupported"    # Z

    .line 479
    if-eqz p1, :cond_9

    .line 480
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    goto :goto_f

    .line 482
    :cond_9
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    .line 484
    :goto_f
    return-object p0
.end method

.method public whitelist setDirectChannelTypesSupported(I)Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;
    .registers 4
    .param p1, "memoryTypes"    # I

    .line 439
    and-int/lit8 v0, p1, 0x1

    if-lez v0, :cond_b

    .line 440
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    goto :goto_11

    .line 442
    :cond_b
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    .line 444
    :goto_11
    and-int/lit8 v0, p1, -0x2

    if-gtz v0, :cond_16

    .line 449
    return-object p0

    .line 445
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only TYPE_MEMORY_FILE direct channels can be supported for virtual sensors."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setHighestDirectReportRateLevel(I)Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;
    .registers 2
    .param p1, "rateLevel"    # I

    .line 422
    iput p1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mHighestDirectReportRateLevel:I

    .line 423
    return-object p0
.end method

.method public whitelist setMaxDelay(I)Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;
    .registers 2
    .param p1, "maxDelay"    # I

    .line 410
    iput p1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mMaxDelay:I

    .line 411
    return-object p0
.end method

.method public whitelist setMaximumRange(F)Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;
    .registers 2
    .param p1, "maximumRange"    # F

    .line 366
    iput p1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mMaximumRange:F

    .line 367
    return-object p0
.end method

.method public whitelist setMinDelay(I)Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;
    .registers 2
    .param p1, "minDelay"    # I

    .line 399
    iput p1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mMinDelay:I

    .line 400
    return-object p0
.end method

.method public whitelist setPower(F)Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;
    .registers 2
    .param p1, "power"    # F

    .line 388
    iput p1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mPower:F

    .line 389
    return-object p0
.end method

.method public whitelist setReportingMode(I)Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;
    .registers 5
    .param p1, "reportingMode"    # I

    .line 500
    if-eqz p1, :cond_25

    const/4 v0, 0x1

    if-eq p1, v0, :cond_25

    const/4 v0, 0x2

    if-eq p1, v0, :cond_25

    const/4 v0, 0x3

    if-ne p1, v0, :cond_c

    goto :goto_25

    .line 504
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid reporting mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 506
    :cond_25
    :goto_25
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    shl-int/lit8 v1, p1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    .line 507
    return-object p0
.end method

.method public whitelist setResolution(F)Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;
    .registers 2
    .param p1, "resolution"    # F

    .line 377
    iput p1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mResolution:F

    .line 378
    return-object p0
.end method

.method public whitelist setVendor(Ljava/lang/String;)Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;
    .registers 2
    .param p1, "vendor"    # Ljava/lang/String;

    .line 355
    iput-object p1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mVendor:Ljava/lang/String;

    .line 356
    return-object p0
.end method

.method public whitelist setWakeUpSensor(Z)Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;
    .registers 3
    .param p1, "wakeUpSensor"    # Z

    .line 460
    if-eqz p1, :cond_9

    .line 461
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    goto :goto_f

    .line 463
    :cond_9
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    .line 465
    :goto_f
    return-object p0
.end method
