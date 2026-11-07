.class public final Landroid/health/connect/internal/datatypes/NutritionRecordInternal;
.super Landroid/health/connect/internal/datatypes/IntervalRecordInternal;
.source "NutritionRecordInternal.java"


# annotations
.annotation runtime Landroid/health/connect/datatypes/Identifier;
    recordIdentifier = 0x8
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/health/connect/internal/datatypes/IntervalRecordInternal<",
        "Landroid/health/connect/datatypes/NutritionRecord;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mBiotin:D

.field private blacklist mCaffeine:D

.field private blacklist mCalcium:D

.field private blacklist mChloride:D

.field private blacklist mCholesterol:D

.field private blacklist mChromium:D

.field private blacklist mCopper:D

.field private blacklist mDietaryFiber:D

.field private blacklist mEnergy:D

.field private blacklist mEnergyFromFat:D

.field private blacklist mFolate:D

.field private blacklist mFolicAcid:D

.field private blacklist mIodine:D

.field private blacklist mIron:D

.field private blacklist mMagnesium:D

.field private blacklist mManganese:D

.field private blacklist mMealName:Ljava/lang/String;

.field private blacklist mMealType:I

.field private blacklist mMolybdenum:D

.field private blacklist mMonounsaturatedFat:D

.field private blacklist mNiacin:D

.field private blacklist mPantothenicAcid:D

.field private blacklist mPhosphorus:D

.field private blacklist mPolyunsaturatedFat:D

.field private blacklist mPotassium:D

.field private blacklist mProtein:D

.field private blacklist mRiboflavin:D

.field private blacklist mSaturatedFat:D

.field private blacklist mSelenium:D

.field private blacklist mSodium:D

.field private blacklist mSugar:D

.field private blacklist mThiamin:D

.field private blacklist mTotalCarbohydrate:D

.field private blacklist mTotalFat:D

.field private blacklist mTransFat:D

.field private blacklist mUnsaturatedFat:D

.field private blacklist mVitaminA:D

.field private blacklist mVitaminB12:D

.field private blacklist mVitaminB6:D

.field private blacklist mVitaminC:D

.field private blacklist mVitaminD:D

.field private blacklist mVitaminE:D

.field private blacklist mVitaminK:D

.field private blacklist mZinc:D


# direct methods
.method public constructor blacklist <init>()V
    .registers 4

    .line 35
    invoke-direct {p0}, Landroid/health/connect/internal/datatypes/IntervalRecordInternal;-><init>()V

    .line 36
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mUnsaturatedFat:D

    .line 37
    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mPotassium:D

    .line 38
    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mThiamin:D

    .line 39
    const/4 v2, -0x1

    iput v2, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mMealType:I

    .line 40
    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mTransFat:D

    .line 41
    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mManganese:D

    .line 42
    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mEnergyFromFat:D

    .line 43
    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mCaffeine:D

    .line 44
    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mDietaryFiber:D

    .line 45
    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mSelenium:D

    .line 46
    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mVitaminB6:D

    .line 47
    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mProtein:D

    .line 48
    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mChloride:D

    .line 49
    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mCholesterol:D

    .line 50
    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mCopper:D

    .line 51
    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mIodine:D

    .line 52
    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mVitaminB12:D

    .line 53
    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mZinc:D

    .line 54
    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mRiboflavin:D

    .line 55
    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mEnergy:D

    .line 56
    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mMolybdenum:D

    .line 57
    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mPhosphorus:D

    .line 58
    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mChromium:D

    .line 59
    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mTotalFat:D

    .line 60
    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mCalcium:D

    .line 61
    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mVitaminC:D

    .line 62
    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mVitaminE:D

    .line 63
    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mBiotin:D

    .line 64
    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mVitaminD:D

    .line 65
    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mNiacin:D

    .line 66
    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mMagnesium:D

    .line 67
    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mTotalCarbohydrate:D

    .line 68
    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mVitaminK:D

    .line 69
    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mPolyunsaturatedFat:D

    .line 70
    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mSaturatedFat:D

    .line 71
    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mSodium:D

    .line 72
    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mFolate:D

    .line 73
    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mMonounsaturatedFat:D

    .line 74
    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mPantothenicAcid:D

    .line 79
    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mIron:D

    .line 80
    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mVitaminA:D

    .line 81
    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mFolicAcid:D

    .line 82
    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mSugar:D

    return-void
.end method


# virtual methods
.method public blacklist getBiotin()D
    .registers 3

    .line 383
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mBiotin:D

    return-wide v0
.end method

.method public blacklist getCaffeine()D
    .registers 3

    .line 163
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mCaffeine:D

    return-wide v0
.end method

.method public blacklist getCalcium()D
    .registers 3

    .line 350
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mCalcium:D

    return-wide v0
.end method

.method public blacklist getChloride()D
    .registers 3

    .line 218
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mChloride:D

    return-wide v0
.end method

.method public blacklist getCholesterol()D
    .registers 3

    .line 229
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mCholesterol:D

    return-wide v0
.end method

.method public blacklist getChromium()D
    .registers 3

    .line 328
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mChromium:D

    return-wide v0
.end method

.method public blacklist getCopper()D
    .registers 3

    .line 240
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mCopper:D

    return-wide v0
.end method

.method public blacklist getDietaryFiber()D
    .registers 3

    .line 174
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mDietaryFiber:D

    return-wide v0
.end method

.method public blacklist getEnergy()D
    .registers 3

    .line 295
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mEnergy:D

    return-wide v0
.end method

.method public blacklist getEnergyFromFat()D
    .registers 3

    .line 152
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mEnergyFromFat:D

    return-wide v0
.end method

.method public blacklist getFolate()D
    .registers 3

    .line 482
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mFolate:D

    return-wide v0
.end method

.method public blacklist getFolicAcid()D
    .registers 3

    .line 548
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mFolicAcid:D

    return-wide v0
.end method

.method public blacklist getIodine()D
    .registers 3

    .line 251
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mIodine:D

    return-wide v0
.end method

.method public blacklist getIron()D
    .registers 3

    .line 526
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mIron:D

    return-wide v0
.end method

.method public blacklist getMagnesium()D
    .registers 3

    .line 416
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mMagnesium:D

    return-wide v0
.end method

.method public blacklist getManganese()D
    .registers 3

    .line 141
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mManganese:D

    return-wide v0
.end method

.method public blacklist getMealName()Ljava/lang/String;
    .registers 2

    .line 515
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mMealName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getMealType()I
    .registers 2

    .line 119
    iget v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mMealType:I

    return v0
.end method

.method public blacklist getMolybdenum()D
    .registers 3

    .line 306
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mMolybdenum:D

    return-wide v0
.end method

.method public blacklist getMonounsaturatedFat()D
    .registers 3

    .line 493
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mMonounsaturatedFat:D

    return-wide v0
.end method

.method public blacklist getNiacin()D
    .registers 3

    .line 405
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mNiacin:D

    return-wide v0
.end method

.method public blacklist getPantothenicAcid()D
    .registers 3

    .line 504
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mPantothenicAcid:D

    return-wide v0
.end method

.method public blacklist getPhosphorus()D
    .registers 3

    .line 317
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mPhosphorus:D

    return-wide v0
.end method

.method public blacklist getPolyunsaturatedFat()D
    .registers 3

    .line 449
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mPolyunsaturatedFat:D

    return-wide v0
.end method

.method public blacklist getPotassium()D
    .registers 3

    .line 96
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mPotassium:D

    return-wide v0
.end method

.method public blacklist getProtein()D
    .registers 3

    .line 207
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mProtein:D

    return-wide v0
.end method

.method public blacklist getRiboflavin()D
    .registers 3

    .line 284
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mRiboflavin:D

    return-wide v0
.end method

.method public blacklist getSaturatedFat()D
    .registers 3

    .line 460
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mSaturatedFat:D

    return-wide v0
.end method

.method public blacklist getSelenium()D
    .registers 3

    .line 185
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mSelenium:D

    return-wide v0
.end method

.method public blacklist getSodium()D
    .registers 3

    .line 471
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mSodium:D

    return-wide v0
.end method

.method public blacklist getSugar()D
    .registers 3

    .line 559
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mSugar:D

    return-wide v0
.end method

.method public blacklist getThiamin()D
    .registers 3

    .line 107
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mThiamin:D

    return-wide v0
.end method

.method public blacklist getTotalCarbohydrate()D
    .registers 3

    .line 427
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mTotalCarbohydrate:D

    return-wide v0
.end method

.method public blacklist getTotalFat()D
    .registers 3

    .line 339
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mTotalFat:D

    return-wide v0
.end method

.method public blacklist getTransFat()D
    .registers 3

    .line 130
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mTransFat:D

    return-wide v0
.end method

.method public blacklist getUnsaturatedFat()D
    .registers 3

    .line 85
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mUnsaturatedFat:D

    return-wide v0
.end method

.method public blacklist getVitaminA()D
    .registers 3

    .line 537
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mVitaminA:D

    return-wide v0
.end method

.method public blacklist getVitaminB12()D
    .registers 3

    .line 262
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mVitaminB12:D

    return-wide v0
.end method

.method public blacklist getVitaminB6()D
    .registers 3

    .line 196
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mVitaminB6:D

    return-wide v0
.end method

.method public blacklist getVitaminC()D
    .registers 3

    .line 361
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mVitaminC:D

    return-wide v0
.end method

.method public blacklist getVitaminD()D
    .registers 3

    .line 394
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mVitaminD:D

    return-wide v0
.end method

.method public blacklist getVitaminE()D
    .registers 3

    .line 372
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mVitaminE:D

    return-wide v0
.end method

.method public blacklist getVitaminK()D
    .registers 3

    .line 438
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mVitaminK:D

    return-wide v0
.end method

.method public blacklist getZinc()D
    .registers 3

    .line 273
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mZinc:D

    return-wide v0
.end method

.method blacklist populateIntervalRecordFrom(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 624
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mUnsaturatedFat:D

    .line 625
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mPotassium:D

    .line 626
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mThiamin:D

    .line 627
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mMealType:I

    .line 628
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mTransFat:D

    .line 629
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mManganese:D

    .line 630
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mEnergyFromFat:D

    .line 631
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mCaffeine:D

    .line 632
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mDietaryFiber:D

    .line 633
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mSelenium:D

    .line 634
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mVitaminB6:D

    .line 635
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mProtein:D

    .line 636
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mChloride:D

    .line 637
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mCholesterol:D

    .line 638
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mCopper:D

    .line 639
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mIodine:D

    .line 640
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mVitaminB12:D

    .line 641
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mZinc:D

    .line 642
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mRiboflavin:D

    .line 643
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mEnergy:D

    .line 644
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mMolybdenum:D

    .line 645
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mPhosphorus:D

    .line 646
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mChromium:D

    .line 647
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mTotalFat:D

    .line 648
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mCalcium:D

    .line 649
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mVitaminC:D

    .line 650
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mVitaminE:D

    .line 651
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mBiotin:D

    .line 652
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mVitaminD:D

    .line 653
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mNiacin:D

    .line 654
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mMagnesium:D

    .line 655
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mTotalCarbohydrate:D

    .line 656
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mVitaminK:D

    .line 657
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mPolyunsaturatedFat:D

    .line 658
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mSaturatedFat:D

    .line 659
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mSodium:D

    .line 660
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mFolate:D

    .line 661
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mMonounsaturatedFat:D

    .line 662
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mPantothenicAcid:D

    .line 663
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mMealName:Ljava/lang/String;

    .line 664
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mIron:D

    .line 665
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mVitaminA:D

    .line 666
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mFolicAcid:D

    .line 667
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mSugar:D

    .line 668
    return-void
.end method

.method blacklist populateIntervalRecordTo(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 672
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mUnsaturatedFat:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 673
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mPotassium:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 674
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mThiamin:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 675
    iget v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mMealType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 676
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mTransFat:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 677
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mManganese:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 678
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mEnergyFromFat:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 679
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mCaffeine:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 680
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mDietaryFiber:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 681
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mSelenium:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 682
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mVitaminB6:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 683
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mProtein:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 684
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mChloride:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 685
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mCholesterol:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 686
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mCopper:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 687
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mIodine:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 688
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mVitaminB12:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 689
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mZinc:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 690
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mRiboflavin:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 691
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mEnergy:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 692
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mMolybdenum:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 693
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mPhosphorus:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 694
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mChromium:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 695
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mTotalFat:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 696
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mCalcium:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 697
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mVitaminC:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 698
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mVitaminE:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 699
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mBiotin:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 700
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mVitaminD:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 701
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mNiacin:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 702
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mMagnesium:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 703
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mTotalCarbohydrate:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 704
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mVitaminK:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 705
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mPolyunsaturatedFat:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 706
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mSaturatedFat:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 707
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mSodium:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 708
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mFolate:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 709
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mMonounsaturatedFat:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 710
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mPantothenicAcid:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 711
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mMealName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 712
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mIron:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 713
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mVitaminA:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 714
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mFolicAcid:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 715
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mSugar:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 716
    return-void
.end method

.method public blacklist setBiotin(D)Landroid/health/connect/internal/datatypes/NutritionRecordInternal;
    .registers 3
    .param p1, "biotin"    # D

    .line 389
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mBiotin:D

    .line 390
    return-object p0
.end method

.method public blacklist setCaffeine(D)Landroid/health/connect/internal/datatypes/NutritionRecordInternal;
    .registers 3
    .param p1, "caffeine"    # D

    .line 169
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mCaffeine:D

    .line 170
    return-object p0
.end method

.method public blacklist setCalcium(D)Landroid/health/connect/internal/datatypes/NutritionRecordInternal;
    .registers 3
    .param p1, "calcium"    # D

    .line 356
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mCalcium:D

    .line 357
    return-object p0
.end method

.method public blacklist setChloride(D)Landroid/health/connect/internal/datatypes/NutritionRecordInternal;
    .registers 3
    .param p1, "chloride"    # D

    .line 224
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mChloride:D

    .line 225
    return-object p0
.end method

.method public blacklist setCholesterol(D)Landroid/health/connect/internal/datatypes/NutritionRecordInternal;
    .registers 3
    .param p1, "cholesterol"    # D

    .line 235
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mCholesterol:D

    .line 236
    return-object p0
.end method

.method public blacklist setChromium(D)Landroid/health/connect/internal/datatypes/NutritionRecordInternal;
    .registers 3
    .param p1, "chromium"    # D

    .line 334
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mChromium:D

    .line 335
    return-object p0
.end method

.method public blacklist setCopper(D)Landroid/health/connect/internal/datatypes/NutritionRecordInternal;
    .registers 3
    .param p1, "copper"    # D

    .line 246
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mCopper:D

    .line 247
    return-object p0
.end method

.method public blacklist setDietaryFiber(D)Landroid/health/connect/internal/datatypes/NutritionRecordInternal;
    .registers 3
    .param p1, "dietaryFiber"    # D

    .line 180
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mDietaryFiber:D

    .line 181
    return-object p0
.end method

.method public blacklist setEnergy(D)Landroid/health/connect/internal/datatypes/NutritionRecordInternal;
    .registers 3
    .param p1, "energy"    # D

    .line 301
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mEnergy:D

    .line 302
    return-object p0
.end method

.method public blacklist setEnergyFromFat(D)Landroid/health/connect/internal/datatypes/NutritionRecordInternal;
    .registers 3
    .param p1, "energyFromFat"    # D

    .line 158
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mEnergyFromFat:D

    .line 159
    return-object p0
.end method

.method public blacklist setFolate(D)Landroid/health/connect/internal/datatypes/NutritionRecordInternal;
    .registers 3
    .param p1, "folate"    # D

    .line 488
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mFolate:D

    .line 489
    return-object p0
.end method

.method public blacklist setFolicAcid(D)Landroid/health/connect/internal/datatypes/NutritionRecordInternal;
    .registers 3
    .param p1, "folicAcid"    # D

    .line 554
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mFolicAcid:D

    .line 555
    return-object p0
.end method

.method public blacklist setIodine(D)Landroid/health/connect/internal/datatypes/NutritionRecordInternal;
    .registers 3
    .param p1, "iodine"    # D

    .line 257
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mIodine:D

    .line 258
    return-object p0
.end method

.method public blacklist setIron(D)Landroid/health/connect/internal/datatypes/NutritionRecordInternal;
    .registers 3
    .param p1, "iron"    # D

    .line 532
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mIron:D

    .line 533
    return-object p0
.end method

.method public blacklist setMagnesium(D)Landroid/health/connect/internal/datatypes/NutritionRecordInternal;
    .registers 3
    .param p1, "magnesium"    # D

    .line 422
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mMagnesium:D

    .line 423
    return-object p0
.end method

.method public blacklist setManganese(D)Landroid/health/connect/internal/datatypes/NutritionRecordInternal;
    .registers 3
    .param p1, "manganese"    # D

    .line 147
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mManganese:D

    .line 148
    return-object p0
.end method

.method public blacklist setMealName(Ljava/lang/String;)Landroid/health/connect/internal/datatypes/NutritionRecordInternal;
    .registers 2
    .param p1, "mealName"    # Ljava/lang/String;

    .line 521
    iput-object p1, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mMealName:Ljava/lang/String;

    .line 522
    return-object p0
.end method

.method public blacklist setMealType(I)Landroid/health/connect/internal/datatypes/NutritionRecordInternal;
    .registers 2
    .param p1, "mealType"    # I

    .line 125
    iput p1, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mMealType:I

    .line 126
    return-object p0
.end method

.method public blacklist setMolybdenum(D)Landroid/health/connect/internal/datatypes/NutritionRecordInternal;
    .registers 3
    .param p1, "molybdenum"    # D

    .line 312
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mMolybdenum:D

    .line 313
    return-object p0
.end method

.method public blacklist setMonounsaturatedFat(D)Landroid/health/connect/internal/datatypes/NutritionRecordInternal;
    .registers 3
    .param p1, "monounsaturatedFat"    # D

    .line 499
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mMonounsaturatedFat:D

    .line 500
    return-object p0
.end method

.method public blacklist setNiacin(D)Landroid/health/connect/internal/datatypes/NutritionRecordInternal;
    .registers 3
    .param p1, "niacin"    # D

    .line 411
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mNiacin:D

    .line 412
    return-object p0
.end method

.method public blacklist setPantothenicAcid(D)Landroid/health/connect/internal/datatypes/NutritionRecordInternal;
    .registers 3
    .param p1, "pantothenicAcid"    # D

    .line 510
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mPantothenicAcid:D

    .line 511
    return-object p0
.end method

.method public blacklist setPhosphorus(D)Landroid/health/connect/internal/datatypes/NutritionRecordInternal;
    .registers 3
    .param p1, "phosphorus"    # D

    .line 323
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mPhosphorus:D

    .line 324
    return-object p0
.end method

.method public blacklist setPolyunsaturatedFat(D)Landroid/health/connect/internal/datatypes/NutritionRecordInternal;
    .registers 3
    .param p1, "polyunsaturatedFat"    # D

    .line 455
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mPolyunsaturatedFat:D

    .line 456
    return-object p0
.end method

.method public blacklist setPotassium(D)Landroid/health/connect/internal/datatypes/NutritionRecordInternal;
    .registers 3
    .param p1, "potassium"    # D

    .line 102
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mPotassium:D

    .line 103
    return-object p0
.end method

.method public blacklist setProtein(D)Landroid/health/connect/internal/datatypes/NutritionRecordInternal;
    .registers 3
    .param p1, "protein"    # D

    .line 213
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mProtein:D

    .line 214
    return-object p0
.end method

.method public blacklist setRiboflavin(D)Landroid/health/connect/internal/datatypes/NutritionRecordInternal;
    .registers 3
    .param p1, "riboflavin"    # D

    .line 290
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mRiboflavin:D

    .line 291
    return-object p0
.end method

.method public blacklist setSaturatedFat(D)Landroid/health/connect/internal/datatypes/NutritionRecordInternal;
    .registers 3
    .param p1, "saturatedFat"    # D

    .line 466
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mSaturatedFat:D

    .line 467
    return-object p0
.end method

.method public blacklist setSelenium(D)Landroid/health/connect/internal/datatypes/NutritionRecordInternal;
    .registers 3
    .param p1, "selenium"    # D

    .line 191
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mSelenium:D

    .line 192
    return-object p0
.end method

.method public blacklist setSodium(D)Landroid/health/connect/internal/datatypes/NutritionRecordInternal;
    .registers 3
    .param p1, "sodium"    # D

    .line 477
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mSodium:D

    .line 478
    return-object p0
.end method

.method public blacklist setSugar(D)Landroid/health/connect/internal/datatypes/NutritionRecordInternal;
    .registers 3
    .param p1, "sugar"    # D

    .line 565
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mSugar:D

    .line 566
    return-object p0
.end method

.method public blacklist setThiamin(D)Landroid/health/connect/internal/datatypes/NutritionRecordInternal;
    .registers 3
    .param p1, "thiamin"    # D

    .line 113
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mThiamin:D

    .line 114
    return-object p0
.end method

.method public blacklist setTotalCarbohydrate(D)Landroid/health/connect/internal/datatypes/NutritionRecordInternal;
    .registers 3
    .param p1, "totalCarbohydrate"    # D

    .line 433
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mTotalCarbohydrate:D

    .line 434
    return-object p0
.end method

.method public blacklist setTotalFat(D)Landroid/health/connect/internal/datatypes/NutritionRecordInternal;
    .registers 3
    .param p1, "totalFat"    # D

    .line 345
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mTotalFat:D

    .line 346
    return-object p0
.end method

.method public blacklist setTransFat(D)Landroid/health/connect/internal/datatypes/NutritionRecordInternal;
    .registers 3
    .param p1, "transFat"    # D

    .line 136
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mTransFat:D

    .line 137
    return-object p0
.end method

.method public blacklist setUnsaturatedFat(D)Landroid/health/connect/internal/datatypes/NutritionRecordInternal;
    .registers 3
    .param p1, "unsaturatedFat"    # D

    .line 91
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mUnsaturatedFat:D

    .line 92
    return-object p0
.end method

.method public blacklist setVitaminA(D)Landroid/health/connect/internal/datatypes/NutritionRecordInternal;
    .registers 3
    .param p1, "vitaminA"    # D

    .line 543
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mVitaminA:D

    .line 544
    return-object p0
.end method

.method public blacklist setVitaminB12(D)Landroid/health/connect/internal/datatypes/NutritionRecordInternal;
    .registers 3
    .param p1, "vitaminB12"    # D

    .line 268
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mVitaminB12:D

    .line 269
    return-object p0
.end method

.method public blacklist setVitaminB6(D)Landroid/health/connect/internal/datatypes/NutritionRecordInternal;
    .registers 3
    .param p1, "vitaminB6"    # D

    .line 202
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mVitaminB6:D

    .line 203
    return-object p0
.end method

.method public blacklist setVitaminC(D)Landroid/health/connect/internal/datatypes/NutritionRecordInternal;
    .registers 3
    .param p1, "vitaminC"    # D

    .line 367
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mVitaminC:D

    .line 368
    return-object p0
.end method

.method public blacklist setVitaminD(D)Landroid/health/connect/internal/datatypes/NutritionRecordInternal;
    .registers 3
    .param p1, "vitaminD"    # D

    .line 400
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mVitaminD:D

    .line 401
    return-object p0
.end method

.method public blacklist setVitaminE(D)Landroid/health/connect/internal/datatypes/NutritionRecordInternal;
    .registers 3
    .param p1, "vitaminE"    # D

    .line 378
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mVitaminE:D

    .line 379
    return-object p0
.end method

.method public blacklist setVitaminK(D)Landroid/health/connect/internal/datatypes/NutritionRecordInternal;
    .registers 3
    .param p1, "vitaminK"    # D

    .line 444
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mVitaminK:D

    .line 445
    return-object p0
.end method

.method public blacklist setZinc(D)Landroid/health/connect/internal/datatypes/NutritionRecordInternal;
    .registers 3
    .param p1, "zinc"    # D

    .line 279
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->mZinc:D

    .line 280
    return-object p0
.end method

.method public blacklist toExternalRecord()Landroid/health/connect/datatypes/NutritionRecord;
    .registers 5

    .line 572
    new-instance v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->buildMetaData()Landroid/health/connect/datatypes/Metadata;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->getStartTime()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->getEndTime()Ljava/time/Instant;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/health/connect/datatypes/NutritionRecord$Builder;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/Instant;)V

    .line 573
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->getUnsaturatedFat()D

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/health/connect/datatypes/units/Mass;->fromGrams(D)Landroid/health/connect/datatypes/units/Mass;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/NutritionRecord$Builder;->setUnsaturatedFat(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;

    move-result-object v0

    .line 574
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->getPotassium()D

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/health/connect/datatypes/units/Mass;->fromGrams(D)Landroid/health/connect/datatypes/units/Mass;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/NutritionRecord$Builder;->setPotassium(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;

    move-result-object v0

    .line 575
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->getThiamin()D

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/health/connect/datatypes/units/Mass;->fromGrams(D)Landroid/health/connect/datatypes/units/Mass;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/NutritionRecord$Builder;->setThiamin(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;

    move-result-object v0

    .line 576
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->getMealType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/NutritionRecord$Builder;->setMealType(I)Landroid/health/connect/datatypes/NutritionRecord$Builder;

    move-result-object v0

    .line 577
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->getTransFat()D

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/health/connect/datatypes/units/Mass;->fromGrams(D)Landroid/health/connect/datatypes/units/Mass;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/NutritionRecord$Builder;->setTransFat(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;

    move-result-object v0

    .line 578
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->getManganese()D

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/health/connect/datatypes/units/Mass;->fromGrams(D)Landroid/health/connect/datatypes/units/Mass;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/NutritionRecord$Builder;->setManganese(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;

    move-result-object v0

    .line 579
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->getEnergyFromFat()D

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/health/connect/datatypes/units/Energy;->fromCalories(D)Landroid/health/connect/datatypes/units/Energy;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/NutritionRecord$Builder;->setEnergyFromFat(Landroid/health/connect/datatypes/units/Energy;)Landroid/health/connect/datatypes/NutritionRecord$Builder;

    move-result-object v0

    .line 580
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->getCaffeine()D

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/health/connect/datatypes/units/Mass;->fromGrams(D)Landroid/health/connect/datatypes/units/Mass;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/NutritionRecord$Builder;->setCaffeine(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;

    move-result-object v0

    .line 581
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->getDietaryFiber()D

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/health/connect/datatypes/units/Mass;->fromGrams(D)Landroid/health/connect/datatypes/units/Mass;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/NutritionRecord$Builder;->setDietaryFiber(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;

    move-result-object v0

    .line 582
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->getSelenium()D

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/health/connect/datatypes/units/Mass;->fromGrams(D)Landroid/health/connect/datatypes/units/Mass;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/NutritionRecord$Builder;->setSelenium(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;

    move-result-object v0

    .line 583
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->getVitaminB6()D

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/health/connect/datatypes/units/Mass;->fromGrams(D)Landroid/health/connect/datatypes/units/Mass;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/NutritionRecord$Builder;->setVitaminB6(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;

    move-result-object v0

    .line 584
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->getProtein()D

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/health/connect/datatypes/units/Mass;->fromGrams(D)Landroid/health/connect/datatypes/units/Mass;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/NutritionRecord$Builder;->setProtein(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;

    move-result-object v0

    .line 585
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->getChloride()D

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/health/connect/datatypes/units/Mass;->fromGrams(D)Landroid/health/connect/datatypes/units/Mass;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/NutritionRecord$Builder;->setChloride(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;

    move-result-object v0

    .line 586
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->getCholesterol()D

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/health/connect/datatypes/units/Mass;->fromGrams(D)Landroid/health/connect/datatypes/units/Mass;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/NutritionRecord$Builder;->setCholesterol(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;

    move-result-object v0

    .line 587
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->getCopper()D

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/health/connect/datatypes/units/Mass;->fromGrams(D)Landroid/health/connect/datatypes/units/Mass;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/NutritionRecord$Builder;->setCopper(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;

    move-result-object v0

    .line 588
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->getIodine()D

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/health/connect/datatypes/units/Mass;->fromGrams(D)Landroid/health/connect/datatypes/units/Mass;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/NutritionRecord$Builder;->setIodine(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;

    move-result-object v0

    .line 589
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->getVitaminB12()D

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/health/connect/datatypes/units/Mass;->fromGrams(D)Landroid/health/connect/datatypes/units/Mass;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/NutritionRecord$Builder;->setVitaminB12(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;

    move-result-object v0

    .line 590
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->getZinc()D

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/health/connect/datatypes/units/Mass;->fromGrams(D)Landroid/health/connect/datatypes/units/Mass;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/NutritionRecord$Builder;->setZinc(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;

    move-result-object v0

    .line 591
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->getRiboflavin()D

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/health/connect/datatypes/units/Mass;->fromGrams(D)Landroid/health/connect/datatypes/units/Mass;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/NutritionRecord$Builder;->setRiboflavin(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;

    move-result-object v0

    .line 592
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->getEnergy()D

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/health/connect/datatypes/units/Energy;->fromCalories(D)Landroid/health/connect/datatypes/units/Energy;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/NutritionRecord$Builder;->setEnergy(Landroid/health/connect/datatypes/units/Energy;)Landroid/health/connect/datatypes/NutritionRecord$Builder;

    move-result-object v0

    .line 593
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->getMolybdenum()D

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/health/connect/datatypes/units/Mass;->fromGrams(D)Landroid/health/connect/datatypes/units/Mass;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/NutritionRecord$Builder;->setMolybdenum(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;

    move-result-object v0

    .line 594
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->getPhosphorus()D

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/health/connect/datatypes/units/Mass;->fromGrams(D)Landroid/health/connect/datatypes/units/Mass;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/NutritionRecord$Builder;->setPhosphorus(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;

    move-result-object v0

    .line 595
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->getChromium()D

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/health/connect/datatypes/units/Mass;->fromGrams(D)Landroid/health/connect/datatypes/units/Mass;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/NutritionRecord$Builder;->setChromium(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;

    move-result-object v0

    .line 596
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->getTotalFat()D

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/health/connect/datatypes/units/Mass;->fromGrams(D)Landroid/health/connect/datatypes/units/Mass;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/NutritionRecord$Builder;->setTotalFat(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;

    move-result-object v0

    .line 597
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->getCalcium()D

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/health/connect/datatypes/units/Mass;->fromGrams(D)Landroid/health/connect/datatypes/units/Mass;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/NutritionRecord$Builder;->setCalcium(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;

    move-result-object v0

    .line 598
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->getVitaminC()D

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/health/connect/datatypes/units/Mass;->fromGrams(D)Landroid/health/connect/datatypes/units/Mass;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/NutritionRecord$Builder;->setVitaminC(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;

    move-result-object v0

    .line 599
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->getVitaminE()D

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/health/connect/datatypes/units/Mass;->fromGrams(D)Landroid/health/connect/datatypes/units/Mass;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/NutritionRecord$Builder;->setVitaminE(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;

    move-result-object v0

    .line 600
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->getBiotin()D

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/health/connect/datatypes/units/Mass;->fromGrams(D)Landroid/health/connect/datatypes/units/Mass;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/NutritionRecord$Builder;->setBiotin(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;

    move-result-object v0

    .line 601
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->getVitaminD()D

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/health/connect/datatypes/units/Mass;->fromGrams(D)Landroid/health/connect/datatypes/units/Mass;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/NutritionRecord$Builder;->setVitaminD(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;

    move-result-object v0

    .line 602
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->getNiacin()D

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/health/connect/datatypes/units/Mass;->fromGrams(D)Landroid/health/connect/datatypes/units/Mass;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/NutritionRecord$Builder;->setNiacin(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;

    move-result-object v0

    .line 603
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->getMagnesium()D

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/health/connect/datatypes/units/Mass;->fromGrams(D)Landroid/health/connect/datatypes/units/Mass;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/NutritionRecord$Builder;->setMagnesium(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;

    move-result-object v0

    .line 604
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->getTotalCarbohydrate()D

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/health/connect/datatypes/units/Mass;->fromGrams(D)Landroid/health/connect/datatypes/units/Mass;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/NutritionRecord$Builder;->setTotalCarbohydrate(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;

    move-result-object v0

    .line 605
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->getVitaminK()D

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/health/connect/datatypes/units/Mass;->fromGrams(D)Landroid/health/connect/datatypes/units/Mass;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/NutritionRecord$Builder;->setVitaminK(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;

    move-result-object v0

    .line 606
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->getPolyunsaturatedFat()D

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/health/connect/datatypes/units/Mass;->fromGrams(D)Landroid/health/connect/datatypes/units/Mass;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/NutritionRecord$Builder;->setPolyunsaturatedFat(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;

    move-result-object v0

    .line 607
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->getSaturatedFat()D

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/health/connect/datatypes/units/Mass;->fromGrams(D)Landroid/health/connect/datatypes/units/Mass;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/NutritionRecord$Builder;->setSaturatedFat(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;

    move-result-object v0

    .line 608
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->getSodium()D

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/health/connect/datatypes/units/Mass;->fromGrams(D)Landroid/health/connect/datatypes/units/Mass;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/NutritionRecord$Builder;->setSodium(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;

    move-result-object v0

    .line 609
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->getFolate()D

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/health/connect/datatypes/units/Mass;->fromGrams(D)Landroid/health/connect/datatypes/units/Mass;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/NutritionRecord$Builder;->setFolate(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;

    move-result-object v0

    .line 610
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->getMonounsaturatedFat()D

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/health/connect/datatypes/units/Mass;->fromGrams(D)Landroid/health/connect/datatypes/units/Mass;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/NutritionRecord$Builder;->setMonounsaturatedFat(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;

    move-result-object v0

    .line 611
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->getPantothenicAcid()D

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/health/connect/datatypes/units/Mass;->fromGrams(D)Landroid/health/connect/datatypes/units/Mass;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/NutritionRecord$Builder;->setPantothenicAcid(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;

    move-result-object v0

    .line 612
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->getMealName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/NutritionRecord$Builder;->setMealName(Ljava/lang/String;)Landroid/health/connect/datatypes/NutritionRecord$Builder;

    move-result-object v0

    .line 613
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->getIron()D

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/health/connect/datatypes/units/Mass;->fromGrams(D)Landroid/health/connect/datatypes/units/Mass;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/NutritionRecord$Builder;->setIron(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;

    move-result-object v0

    .line 614
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->getVitaminA()D

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/health/connect/datatypes/units/Mass;->fromGrams(D)Landroid/health/connect/datatypes/units/Mass;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/NutritionRecord$Builder;->setVitaminA(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;

    move-result-object v0

    .line 615
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->getFolicAcid()D

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/health/connect/datatypes/units/Mass;->fromGrams(D)Landroid/health/connect/datatypes/units/Mass;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/NutritionRecord$Builder;->setFolicAcid(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;

    move-result-object v0

    .line 616
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->getSugar()D

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/health/connect/datatypes/units/Mass;->fromGrams(D)Landroid/health/connect/datatypes/units/Mass;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/NutritionRecord$Builder;->setSugar(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;

    move-result-object v0

    .line 617
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->getStartZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/NutritionRecord$Builder;->setStartZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/NutritionRecord$Builder;

    move-result-object v0

    .line 618
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->getEndZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/health/connect/datatypes/NutritionRecord$Builder;->setEndZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/NutritionRecord$Builder;

    move-result-object v0

    .line 619
    invoke-virtual {v0}, Landroid/health/connect/datatypes/NutritionRecord$Builder;->buildWithoutValidation()Landroid/health/connect/datatypes/NutritionRecord;

    move-result-object v0

    .line 572
    return-object v0
.end method

.method public bridge synthetic blacklist toExternalRecord()Landroid/health/connect/datatypes/Record;
    .registers 2

    .line 34
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/NutritionRecordInternal;->toExternalRecord()Landroid/health/connect/datatypes/NutritionRecord;

    move-result-object v0

    return-object v0
.end method
