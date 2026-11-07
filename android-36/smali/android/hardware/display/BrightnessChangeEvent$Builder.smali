.class public Landroid/hardware/display/BrightnessChangeEvent$Builder;
.super Ljava/lang/Object;
.source "BrightnessChangeEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/BrightnessChangeEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mBatteryLevel:F

.field private greylist-max-o mBrightness:F

.field private blacklist mColorSampleDuration:J

.field private greylist-max-o mColorTemperature:I

.field private blacklist mColorValueBuckets:[J

.field private greylist-max-o mIsDefaultBrightnessConfig:Z

.field private greylist-max-o mIsUserSetBrightness:Z

.field private greylist-max-o mLastBrightness:F

.field private greylist-max-o mLuxTimestamps:[J

.field private greylist-max-o mLuxValues:[F

.field private greylist-max-o mNightMode:Z

.field private greylist-max-o mPackageName:Ljava/lang/String;

.field private greylist-max-o mPowerBrightnessFactor:F

.field private blacklist mReduceBrightColors:Z

.field private blacklist mReduceBrightColorsOffset:F

.field private blacklist mReduceBrightColorsStrength:I

.field private greylist-max-o mTimeStamp:J

.field private blacklist mUniqueDisplayId:Ljava/lang/String;

.field private greylist-max-o mUserId:I


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o build()Landroid/hardware/display/BrightnessChangeEvent;
    .registers 27

    .line 397
    move-object/from16 v0, p0

    new-instance v1, Landroid/hardware/display/BrightnessChangeEvent;

    iget v2, v0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mBrightness:F

    iget-wide v3, v0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mTimeStamp:J

    iget-object v5, v0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mPackageName:Ljava/lang/String;

    iget v6, v0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mUserId:I

    iget-object v7, v0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mUniqueDisplayId:Ljava/lang/String;

    iget-object v8, v0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mLuxValues:[F

    iget-object v9, v0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mLuxTimestamps:[J

    iget v10, v0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mBatteryLevel:F

    iget v11, v0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mPowerBrightnessFactor:F

    iget-boolean v12, v0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mNightMode:Z

    iget v13, v0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mColorTemperature:I

    iget-boolean v14, v0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mReduceBrightColors:Z

    iget v15, v0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mReduceBrightColorsStrength:I

    move-object/from16 v16, v1

    iget v1, v0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mReduceBrightColorsOffset:F

    move/from16 v17, v1

    iget v1, v0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mLastBrightness:F

    move/from16 v18, v1

    iget-boolean v1, v0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mIsDefaultBrightnessConfig:Z

    move/from16 v19, v1

    iget-boolean v1, v0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mIsUserSetBrightness:Z

    move/from16 v20, v1

    iget-object v1, v0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mColorValueBuckets:[J

    move-object/from16 v22, v1

    move/from16 v21, v2

    iget-wide v1, v0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mColorSampleDuration:J

    const/16 v23, 0x0

    move-wide/from16 v24, v1

    move-object/from16 v1, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v2, v21

    move-object/from16 v20, v22

    move-wide/from16 v21, v24

    invoke-direct/range {v1 .. v23}, Landroid/hardware/display/BrightnessChangeEvent;-><init>(FJLjava/lang/String;ILjava/lang/String;[F[JFFZIZIFFZZ[JJLandroid/hardware/display/BrightnessChangeEvent-IA;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public greylist-max-o setBatteryLevel(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    .registers 2
    .param p1, "batteryLevel"    # F

    .line 328
    iput p1, p0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mBatteryLevel:F

    .line 329
    return-object p0
.end method

.method public greylist-max-o setBrightness(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    .registers 2
    .param p1, "brightness"    # F

    .line 286
    iput p1, p0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mBrightness:F

    .line 287
    return-object p0
.end method

.method public greylist-max-o setColorTemperature(I)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    .registers 2
    .param p1, "colorTemperature"    # I

    .line 346
    iput p1, p0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mColorTemperature:I

    .line 347
    return-object p0
.end method

.method public blacklist setColorValues([JJ)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    .registers 4
    .param p1, "colorValueBuckets"    # [J
    .param p2, "colorSampleDuration"    # J

    .line 389
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    iput-object p1, p0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mColorValueBuckets:[J

    .line 391
    iput-wide p2, p0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mColorSampleDuration:J

    .line 392
    return-object p0
.end method

.method public greylist-max-o setIsDefaultBrightnessConfig(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    .registers 2
    .param p1, "isDefaultBrightnessConfig"    # Z

    .line 376
    iput-boolean p1, p0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mIsDefaultBrightnessConfig:Z

    .line 377
    return-object p0
.end method

.method public greylist-max-o setLastBrightness(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    .registers 2
    .param p1, "lastBrightness"    # F

    .line 370
    iput p1, p0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mLastBrightness:F

    .line 371
    return-object p0
.end method

.method public greylist-max-o setLuxTimestamps([J)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    .registers 2
    .param p1, "luxTimestamps"    # [J

    .line 322
    iput-object p1, p0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mLuxTimestamps:[J

    .line 323
    return-object p0
.end method

.method public greylist-max-o setLuxValues([F)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    .registers 2
    .param p1, "luxValues"    # [F

    .line 316
    iput-object p1, p0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mLuxValues:[F

    .line 317
    return-object p0
.end method

.method public greylist-max-o setNightMode(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    .registers 2
    .param p1, "nightMode"    # Z

    .line 340
    iput-boolean p1, p0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mNightMode:Z

    .line 341
    return-object p0
.end method

.method public greylist-max-o setPackageName(Ljava/lang/String;)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 298
    iput-object p1, p0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mPackageName:Ljava/lang/String;

    .line 299
    return-object p0
.end method

.method public greylist-max-o setPowerBrightnessFactor(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    .registers 2
    .param p1, "powerBrightnessFactor"    # F

    .line 334
    iput p1, p0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mPowerBrightnessFactor:F

    .line 335
    return-object p0
.end method

.method public blacklist setReduceBrightColors(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    .registers 2
    .param p1, "reduceBrightColors"    # Z

    .line 352
    iput-boolean p1, p0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mReduceBrightColors:Z

    .line 353
    return-object p0
.end method

.method public blacklist setReduceBrightColorsOffset(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    .registers 2
    .param p1, "offset"    # F

    .line 364
    iput p1, p0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mReduceBrightColorsOffset:F

    .line 365
    return-object p0
.end method

.method public blacklist setReduceBrightColorsStrength(I)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    .registers 2
    .param p1, "strength"    # I

    .line 358
    iput p1, p0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mReduceBrightColorsStrength:I

    .line 359
    return-object p0
.end method

.method public greylist-max-o setTimeStamp(J)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    .registers 3
    .param p1, "timeStamp"    # J

    .line 292
    iput-wide p1, p0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mTimeStamp:J

    .line 293
    return-object p0
.end method

.method public blacklist setUniqueDisplayId(Ljava/lang/String;)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    .registers 2
    .param p1, "uniqueId"    # Ljava/lang/String;

    .line 310
    iput-object p1, p0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mUniqueDisplayId:Ljava/lang/String;

    .line 311
    return-object p0
.end method

.method public greylist-max-o setUserBrightnessPoint(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    .registers 2
    .param p1, "isUserSetBrightness"    # Z

    .line 382
    iput-boolean p1, p0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mIsUserSetBrightness:Z

    .line 383
    return-object p0
.end method

.method public greylist-max-o setUserId(I)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    .registers 2
    .param p1, "userId"    # I

    .line 304
    iput p1, p0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mUserId:I

    .line 305
    return-object p0
.end method
