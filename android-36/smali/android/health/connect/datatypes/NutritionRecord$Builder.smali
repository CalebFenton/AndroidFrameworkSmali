.class public final Landroid/health/connect/datatypes/NutritionRecord$Builder;
.super Ljava/lang/Object;
.source "NutritionRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/NutritionRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBiotin:Landroid/health/connect/datatypes/units/Mass;

.field private blacklist mCaffeine:Landroid/health/connect/datatypes/units/Mass;

.field private blacklist mCalcium:Landroid/health/connect/datatypes/units/Mass;

.field private blacklist mChloride:Landroid/health/connect/datatypes/units/Mass;

.field private blacklist mCholesterol:Landroid/health/connect/datatypes/units/Mass;

.field private blacklist mChromium:Landroid/health/connect/datatypes/units/Mass;

.field private blacklist mCopper:Landroid/health/connect/datatypes/units/Mass;

.field private blacklist mDietaryFiber:Landroid/health/connect/datatypes/units/Mass;

.field private final blacklist mEndTime:Ljava/time/Instant;

.field private blacklist mEndZoneOffset:Ljava/time/ZoneOffset;

.field private blacklist mEnergy:Landroid/health/connect/datatypes/units/Energy;

.field private blacklist mEnergyFromFat:Landroid/health/connect/datatypes/units/Energy;

.field private blacklist mFolate:Landroid/health/connect/datatypes/units/Mass;

.field private blacklist mFolicAcid:Landroid/health/connect/datatypes/units/Mass;

.field private blacklist mIodine:Landroid/health/connect/datatypes/units/Mass;

.field private blacklist mIron:Landroid/health/connect/datatypes/units/Mass;

.field private blacklist mMagnesium:Landroid/health/connect/datatypes/units/Mass;

.field private blacklist mManganese:Landroid/health/connect/datatypes/units/Mass;

.field private blacklist mMealName:Ljava/lang/String;

.field private blacklist mMealType:I

.field private final blacklist mMetadata:Landroid/health/connect/datatypes/Metadata;

.field private blacklist mMolybdenum:Landroid/health/connect/datatypes/units/Mass;

.field private blacklist mMonounsaturatedFat:Landroid/health/connect/datatypes/units/Mass;

.field private blacklist mNiacin:Landroid/health/connect/datatypes/units/Mass;

.field private blacklist mPantothenicAcid:Landroid/health/connect/datatypes/units/Mass;

.field private blacklist mPhosphorus:Landroid/health/connect/datatypes/units/Mass;

.field private blacklist mPolyunsaturatedFat:Landroid/health/connect/datatypes/units/Mass;

.field private blacklist mPotassium:Landroid/health/connect/datatypes/units/Mass;

.field private blacklist mProtein:Landroid/health/connect/datatypes/units/Mass;

.field private blacklist mRiboflavin:Landroid/health/connect/datatypes/units/Mass;

.field private blacklist mSaturatedFat:Landroid/health/connect/datatypes/units/Mass;

.field private blacklist mSelenium:Landroid/health/connect/datatypes/units/Mass;

.field private blacklist mSodium:Landroid/health/connect/datatypes/units/Mass;

.field private final blacklist mStartTime:Ljava/time/Instant;

.field private blacklist mStartZoneOffset:Ljava/time/ZoneOffset;

.field private blacklist mSugar:Landroid/health/connect/datatypes/units/Mass;

.field private blacklist mThiamin:Landroid/health/connect/datatypes/units/Mass;

.field private blacklist mTotalCarbohydrate:Landroid/health/connect/datatypes/units/Mass;

.field private blacklist mTotalFat:Landroid/health/connect/datatypes/units/Mass;

.field private blacklist mTransFat:Landroid/health/connect/datatypes/units/Mass;

.field private blacklist mUnsaturatedFat:Landroid/health/connect/datatypes/units/Mass;

.field private blacklist mVitaminA:Landroid/health/connect/datatypes/units/Mass;

.field private blacklist mVitaminB12:Landroid/health/connect/datatypes/units/Mass;

.field private blacklist mVitaminB6:Landroid/health/connect/datatypes/units/Mass;

.field private blacklist mVitaminC:Landroid/health/connect/datatypes/units/Mass;

.field private blacklist mVitaminD:Landroid/health/connect/datatypes/units/Mass;

.field private blacklist mVitaminE:Landroid/health/connect/datatypes/units/Mass;

.field private blacklist mVitaminK:Landroid/health/connect/datatypes/units/Mass;

.field private blacklist mZinc:Landroid/health/connect/datatypes/units/Mass;


# direct methods
.method public constructor whitelist <init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/Instant;)V
    .registers 5
    .param p1, "metadata"    # Landroid/health/connect/datatypes/Metadata;
    .param p2, "startTime"    # Ljava/time/Instant;
    .param p3, "endTime"    # Ljava/time/Instant;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iput-object p1, p0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    .line 105
    iput-object p2, p0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mStartTime:Ljava/time/Instant;

    .line 106
    iput-object p3, p0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mEndTime:Ljava/time/Instant;

    .line 107
    invoke-static {}, Ljava/time/ZoneOffset;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    .line 108
    invoke-static {}, Ljava/time/ZoneOffset;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    .line 109
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/health/connect/datatypes/NutritionRecord;
    .registers 55

    .line 733
    move-object/from16 v0, p0

    new-instance v1, Landroid/health/connect/datatypes/NutritionRecord;

    iget-object v2, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    iget-object v3, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mStartTime:Ljava/time/Instant;

    iget-object v4, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    iget-object v5, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mEndTime:Ljava/time/Instant;

    iget-object v6, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    iget-object v7, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mUnsaturatedFat:Landroid/health/connect/datatypes/units/Mass;

    iget-object v8, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mPotassium:Landroid/health/connect/datatypes/units/Mass;

    iget-object v9, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mThiamin:Landroid/health/connect/datatypes/units/Mass;

    iget v10, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mMealType:I

    iget-object v11, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mTransFat:Landroid/health/connect/datatypes/units/Mass;

    iget-object v12, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mManganese:Landroid/health/connect/datatypes/units/Mass;

    iget-object v13, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mEnergyFromFat:Landroid/health/connect/datatypes/units/Energy;

    iget-object v14, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mCaffeine:Landroid/health/connect/datatypes/units/Mass;

    iget-object v15, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mDietaryFiber:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v16, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mSelenium:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v17, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mVitaminB6:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v18, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mProtein:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v19, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mChloride:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v20, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mCholesterol:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v21, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mCopper:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v22, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mIodine:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v23, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mVitaminB12:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v24, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mZinc:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v25, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mRiboflavin:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v26, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mEnergy:Landroid/health/connect/datatypes/units/Energy;

    move-object/from16 v27, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mMolybdenum:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v28, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mPhosphorus:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v29, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mChromium:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v30, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mTotalFat:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v31, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mCalcium:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v32, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mVitaminC:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v33, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mVitaminE:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v34, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mBiotin:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v35, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mVitaminD:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v36, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mNiacin:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v37, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mMagnesium:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v38, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mTotalCarbohydrate:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v39, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mVitaminK:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v40, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mPolyunsaturatedFat:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v41, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mSaturatedFat:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v42, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mSodium:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v43, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mFolate:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v44, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mMonounsaturatedFat:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v45, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mPantothenicAcid:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v46, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mMealName:Ljava/lang/String;

    move-object/from16 v47, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mIron:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v48, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mVitaminA:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v49, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mFolicAcid:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v50, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mSugar:Landroid/health/connect/datatypes/units/Mass;

    const/16 v51, 0x0

    const/16 v52, 0x0

    move-object/from16 v53, v50

    move-object/from16 v50, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v26

    move-object/from16 v26, v27

    move-object/from16 v27, v28

    move-object/from16 v28, v29

    move-object/from16 v29, v30

    move-object/from16 v30, v31

    move-object/from16 v31, v32

    move-object/from16 v32, v33

    move-object/from16 v33, v34

    move-object/from16 v34, v35

    move-object/from16 v35, v36

    move-object/from16 v36, v37

    move-object/from16 v37, v38

    move-object/from16 v38, v39

    move-object/from16 v39, v40

    move-object/from16 v40, v41

    move-object/from16 v41, v42

    move-object/from16 v42, v43

    move-object/from16 v43, v44

    move-object/from16 v44, v45

    move-object/from16 v45, v46

    move-object/from16 v46, v47

    move-object/from16 v47, v48

    move-object/from16 v48, v49

    move-object/from16 v49, v53

    invoke-direct/range {v1 .. v52}, Landroid/health/connect/datatypes/NutritionRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;ILandroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Energy;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Energy;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Ljava/lang/String;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;ZLandroid/health/connect/datatypes/NutritionRecord-IA;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public blacklist buildWithoutValidation()Landroid/health/connect/datatypes/NutritionRecord;
    .registers 55

    .line 675
    move-object/from16 v0, p0

    new-instance v1, Landroid/health/connect/datatypes/NutritionRecord;

    iget-object v2, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mMetadata:Landroid/health/connect/datatypes/Metadata;

    iget-object v3, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mStartTime:Ljava/time/Instant;

    iget-object v4, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    iget-object v5, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mEndTime:Ljava/time/Instant;

    iget-object v6, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    iget-object v7, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mUnsaturatedFat:Landroid/health/connect/datatypes/units/Mass;

    iget-object v8, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mPotassium:Landroid/health/connect/datatypes/units/Mass;

    iget-object v9, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mThiamin:Landroid/health/connect/datatypes/units/Mass;

    iget v10, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mMealType:I

    iget-object v11, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mTransFat:Landroid/health/connect/datatypes/units/Mass;

    iget-object v12, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mManganese:Landroid/health/connect/datatypes/units/Mass;

    iget-object v13, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mEnergyFromFat:Landroid/health/connect/datatypes/units/Energy;

    iget-object v14, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mCaffeine:Landroid/health/connect/datatypes/units/Mass;

    iget-object v15, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mDietaryFiber:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v16, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mSelenium:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v17, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mVitaminB6:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v18, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mProtein:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v19, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mChloride:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v20, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mCholesterol:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v21, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mCopper:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v22, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mIodine:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v23, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mVitaminB12:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v24, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mZinc:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v25, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mRiboflavin:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v26, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mEnergy:Landroid/health/connect/datatypes/units/Energy;

    move-object/from16 v27, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mMolybdenum:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v28, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mPhosphorus:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v29, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mChromium:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v30, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mTotalFat:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v31, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mCalcium:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v32, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mVitaminC:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v33, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mVitaminE:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v34, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mBiotin:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v35, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mVitaminD:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v36, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mNiacin:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v37, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mMagnesium:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v38, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mTotalCarbohydrate:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v39, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mVitaminK:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v40, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mPolyunsaturatedFat:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v41, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mSaturatedFat:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v42, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mSodium:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v43, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mFolate:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v44, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mMonounsaturatedFat:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v45, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mPantothenicAcid:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v46, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mMealName:Ljava/lang/String;

    move-object/from16 v47, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mIron:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v48, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mVitaminA:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v49, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mFolicAcid:Landroid/health/connect/datatypes/units/Mass;

    move-object/from16 v50, v1

    iget-object v1, v0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mSugar:Landroid/health/connect/datatypes/units/Mass;

    const/16 v51, 0x1

    const/16 v52, 0x0

    move-object/from16 v53, v50

    move-object/from16 v50, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v26

    move-object/from16 v26, v27

    move-object/from16 v27, v28

    move-object/from16 v28, v29

    move-object/from16 v29, v30

    move-object/from16 v30, v31

    move-object/from16 v31, v32

    move-object/from16 v32, v33

    move-object/from16 v33, v34

    move-object/from16 v34, v35

    move-object/from16 v35, v36

    move-object/from16 v36, v37

    move-object/from16 v37, v38

    move-object/from16 v38, v39

    move-object/from16 v39, v40

    move-object/from16 v40, v41

    move-object/from16 v41, v42

    move-object/from16 v42, v43

    move-object/from16 v43, v44

    move-object/from16 v44, v45

    move-object/from16 v45, v46

    move-object/from16 v46, v47

    move-object/from16 v47, v48

    move-object/from16 v48, v49

    move-object/from16 v49, v53

    invoke-direct/range {v1 .. v52}, Landroid/health/connect/datatypes/NutritionRecord;-><init>(Landroid/health/connect/datatypes/Metadata;Ljava/time/Instant;Ljava/time/ZoneOffset;Ljava/time/Instant;Ljava/time/ZoneOffset;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;ILandroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Energy;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Energy;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Ljava/lang/String;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;Landroid/health/connect/datatypes/units/Mass;ZLandroid/health/connect/datatypes/NutritionRecord-IA;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public whitelist clearEndZoneOffset()Landroid/health/connect/datatypes/NutritionRecord$Builder;
    .registers 2

    .line 139
    invoke-static {}, Landroid/health/connect/datatypes/RecordUtils;->getDefaultZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    .line 140
    return-object p0
.end method

.method public whitelist clearStartZoneOffset()Landroid/health/connect/datatypes/NutritionRecord$Builder;
    .registers 2

    .line 132
    invoke-static {}, Landroid/health/connect/datatypes/RecordUtils;->getDefaultZoneOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    .line 133
    return-object p0
.end method

.method public whitelist setBiotin(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;
    .registers 2
    .param p1, "biotin"    # Landroid/health/connect/datatypes/units/Mass;

    .line 474
    iput-object p1, p0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mBiotin:Landroid/health/connect/datatypes/units/Mass;

    .line 475
    return-object p0
.end method

.method public whitelist setCaffeine(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;
    .registers 2
    .param p1, "caffeine"    # Landroid/health/connect/datatypes/units/Mass;

    .line 234
    iput-object p1, p0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mCaffeine:Landroid/health/connect/datatypes/units/Mass;

    .line 235
    return-object p0
.end method

.method public whitelist setCalcium(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;
    .registers 2
    .param p1, "calcium"    # Landroid/health/connect/datatypes/units/Mass;

    .line 438
    iput-object p1, p0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mCalcium:Landroid/health/connect/datatypes/units/Mass;

    .line 439
    return-object p0
.end method

.method public whitelist setChloride(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;
    .registers 2
    .param p1, "chloride"    # Landroid/health/connect/datatypes/units/Mass;

    .line 294
    iput-object p1, p0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mChloride:Landroid/health/connect/datatypes/units/Mass;

    .line 295
    return-object p0
.end method

.method public whitelist setCholesterol(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;
    .registers 2
    .param p1, "cholesterol"    # Landroid/health/connect/datatypes/units/Mass;

    .line 306
    iput-object p1, p0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mCholesterol:Landroid/health/connect/datatypes/units/Mass;

    .line 307
    return-object p0
.end method

.method public whitelist setChromium(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;
    .registers 2
    .param p1, "chromium"    # Landroid/health/connect/datatypes/units/Mass;

    .line 414
    iput-object p1, p0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mChromium:Landroid/health/connect/datatypes/units/Mass;

    .line 415
    return-object p0
.end method

.method public whitelist setCopper(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;
    .registers 2
    .param p1, "copper"    # Landroid/health/connect/datatypes/units/Mass;

    .line 318
    iput-object p1, p0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mCopper:Landroid/health/connect/datatypes/units/Mass;

    .line 319
    return-object p0
.end method

.method public whitelist setDietaryFiber(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;
    .registers 2
    .param p1, "dietaryFiber"    # Landroid/health/connect/datatypes/units/Mass;

    .line 246
    iput-object p1, p0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mDietaryFiber:Landroid/health/connect/datatypes/units/Mass;

    .line 247
    return-object p0
.end method

.method public whitelist setEndZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/NutritionRecord$Builder;
    .registers 2
    .param p1, "endZoneOffset"    # Ljava/time/ZoneOffset;

    .line 123
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iput-object p1, p0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mEndZoneOffset:Ljava/time/ZoneOffset;

    .line 126
    return-object p0
.end method

.method public whitelist setEnergy(Landroid/health/connect/datatypes/units/Energy;)Landroid/health/connect/datatypes/NutritionRecord$Builder;
    .registers 2
    .param p1, "energy"    # Landroid/health/connect/datatypes/units/Energy;

    .line 378
    iput-object p1, p0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mEnergy:Landroid/health/connect/datatypes/units/Energy;

    .line 379
    return-object p0
.end method

.method public whitelist setEnergyFromFat(Landroid/health/connect/datatypes/units/Energy;)Landroid/health/connect/datatypes/NutritionRecord$Builder;
    .registers 2
    .param p1, "energyFromFat"    # Landroid/health/connect/datatypes/units/Energy;

    .line 222
    iput-object p1, p0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mEnergyFromFat:Landroid/health/connect/datatypes/units/Energy;

    .line 223
    return-object p0
.end method

.method public whitelist setFolate(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;
    .registers 2
    .param p1, "folate"    # Landroid/health/connect/datatypes/units/Mass;

    .line 582
    iput-object p1, p0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mFolate:Landroid/health/connect/datatypes/units/Mass;

    .line 583
    return-object p0
.end method

.method public whitelist setFolicAcid(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;
    .registers 2
    .param p1, "folicAcid"    # Landroid/health/connect/datatypes/units/Mass;

    .line 653
    iput-object p1, p0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mFolicAcid:Landroid/health/connect/datatypes/units/Mass;

    .line 654
    return-object p0
.end method

.method public whitelist setIodine(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;
    .registers 2
    .param p1, "iodine"    # Landroid/health/connect/datatypes/units/Mass;

    .line 330
    iput-object p1, p0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mIodine:Landroid/health/connect/datatypes/units/Mass;

    .line 331
    return-object p0
.end method

.method public whitelist setIron(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;
    .registers 2
    .param p1, "iron"    # Landroid/health/connect/datatypes/units/Mass;

    .line 629
    iput-object p1, p0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mIron:Landroid/health/connect/datatypes/units/Mass;

    .line 630
    return-object p0
.end method

.method public whitelist setMagnesium(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;
    .registers 2
    .param p1, "magnesium"    # Landroid/health/connect/datatypes/units/Mass;

    .line 510
    iput-object p1, p0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mMagnesium:Landroid/health/connect/datatypes/units/Mass;

    .line 511
    return-object p0
.end method

.method public whitelist setManganese(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;
    .registers 2
    .param p1, "manganese"    # Landroid/health/connect/datatypes/units/Mass;

    .line 210
    iput-object p1, p0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mManganese:Landroid/health/connect/datatypes/units/Mass;

    .line 211
    return-object p0
.end method

.method public whitelist setMealName(Ljava/lang/String;)Landroid/health/connect/datatypes/NutritionRecord$Builder;
    .registers 2
    .param p1, "mealName"    # Ljava/lang/String;

    .line 617
    iput-object p1, p0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mMealName:Ljava/lang/String;

    .line 618
    return-object p0
.end method

.method public whitelist setMealType(I)Landroid/health/connect/datatypes/NutritionRecord$Builder;
    .registers 2
    .param p1, "mealType"    # I

    .line 186
    iput p1, p0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mMealType:I

    .line 187
    return-object p0
.end method

.method public whitelist setMolybdenum(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;
    .registers 2
    .param p1, "molybdenum"    # Landroid/health/connect/datatypes/units/Mass;

    .line 390
    iput-object p1, p0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mMolybdenum:Landroid/health/connect/datatypes/units/Mass;

    .line 391
    return-object p0
.end method

.method public whitelist setMonounsaturatedFat(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;
    .registers 2
    .param p1, "monounsaturatedFat"    # Landroid/health/connect/datatypes/units/Mass;

    .line 594
    iput-object p1, p0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mMonounsaturatedFat:Landroid/health/connect/datatypes/units/Mass;

    .line 595
    return-object p0
.end method

.method public whitelist setNiacin(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;
    .registers 2
    .param p1, "niacin"    # Landroid/health/connect/datatypes/units/Mass;

    .line 498
    iput-object p1, p0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mNiacin:Landroid/health/connect/datatypes/units/Mass;

    .line 499
    return-object p0
.end method

.method public whitelist setPantothenicAcid(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;
    .registers 2
    .param p1, "pantothenicAcid"    # Landroid/health/connect/datatypes/units/Mass;

    .line 606
    iput-object p1, p0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mPantothenicAcid:Landroid/health/connect/datatypes/units/Mass;

    .line 607
    return-object p0
.end method

.method public whitelist setPhosphorus(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;
    .registers 2
    .param p1, "phosphorus"    # Landroid/health/connect/datatypes/units/Mass;

    .line 402
    iput-object p1, p0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mPhosphorus:Landroid/health/connect/datatypes/units/Mass;

    .line 403
    return-object p0
.end method

.method public whitelist setPolyunsaturatedFat(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;
    .registers 2
    .param p1, "polyunsaturatedFat"    # Landroid/health/connect/datatypes/units/Mass;

    .line 546
    iput-object p1, p0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mPolyunsaturatedFat:Landroid/health/connect/datatypes/units/Mass;

    .line 547
    return-object p0
.end method

.method public whitelist setPotassium(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;
    .registers 2
    .param p1, "potassium"    # Landroid/health/connect/datatypes/units/Mass;

    .line 163
    iput-object p1, p0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mPotassium:Landroid/health/connect/datatypes/units/Mass;

    .line 164
    return-object p0
.end method

.method public whitelist setProtein(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;
    .registers 2
    .param p1, "protein"    # Landroid/health/connect/datatypes/units/Mass;

    .line 282
    iput-object p1, p0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mProtein:Landroid/health/connect/datatypes/units/Mass;

    .line 283
    return-object p0
.end method

.method public whitelist setRiboflavin(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;
    .registers 2
    .param p1, "riboflavin"    # Landroid/health/connect/datatypes/units/Mass;

    .line 366
    iput-object p1, p0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mRiboflavin:Landroid/health/connect/datatypes/units/Mass;

    .line 367
    return-object p0
.end method

.method public whitelist setSaturatedFat(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;
    .registers 2
    .param p1, "saturatedFat"    # Landroid/health/connect/datatypes/units/Mass;

    .line 558
    iput-object p1, p0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mSaturatedFat:Landroid/health/connect/datatypes/units/Mass;

    .line 559
    return-object p0
.end method

.method public whitelist setSelenium(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;
    .registers 2
    .param p1, "selenium"    # Landroid/health/connect/datatypes/units/Mass;

    .line 258
    iput-object p1, p0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mSelenium:Landroid/health/connect/datatypes/units/Mass;

    .line 259
    return-object p0
.end method

.method public whitelist setSodium(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;
    .registers 2
    .param p1, "sodium"    # Landroid/health/connect/datatypes/units/Mass;

    .line 570
    iput-object p1, p0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mSodium:Landroid/health/connect/datatypes/units/Mass;

    .line 571
    return-object p0
.end method

.method public whitelist setStartZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/datatypes/NutritionRecord$Builder;
    .registers 2
    .param p1, "startZoneOffset"    # Ljava/time/ZoneOffset;

    .line 114
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iput-object p1, p0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mStartZoneOffset:Ljava/time/ZoneOffset;

    .line 117
    return-object p0
.end method

.method public whitelist setSugar(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;
    .registers 2
    .param p1, "sugar"    # Landroid/health/connect/datatypes/units/Mass;

    .line 665
    iput-object p1, p0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mSugar:Landroid/health/connect/datatypes/units/Mass;

    .line 666
    return-object p0
.end method

.method public whitelist setThiamin(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;
    .registers 2
    .param p1, "thiamin"    # Landroid/health/connect/datatypes/units/Mass;

    .line 175
    iput-object p1, p0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mThiamin:Landroid/health/connect/datatypes/units/Mass;

    .line 176
    return-object p0
.end method

.method public whitelist setTotalCarbohydrate(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;
    .registers 2
    .param p1, "totalCarbohydrate"    # Landroid/health/connect/datatypes/units/Mass;

    .line 522
    iput-object p1, p0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mTotalCarbohydrate:Landroid/health/connect/datatypes/units/Mass;

    .line 523
    return-object p0
.end method

.method public whitelist setTotalFat(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;
    .registers 2
    .param p1, "totalFat"    # Landroid/health/connect/datatypes/units/Mass;

    .line 426
    iput-object p1, p0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mTotalFat:Landroid/health/connect/datatypes/units/Mass;

    .line 427
    return-object p0
.end method

.method public whitelist setTransFat(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;
    .registers 2
    .param p1, "transFat"    # Landroid/health/connect/datatypes/units/Mass;

    .line 198
    iput-object p1, p0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mTransFat:Landroid/health/connect/datatypes/units/Mass;

    .line 199
    return-object p0
.end method

.method public whitelist setUnsaturatedFat(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;
    .registers 2
    .param p1, "unsaturatedFat"    # Landroid/health/connect/datatypes/units/Mass;

    .line 151
    iput-object p1, p0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mUnsaturatedFat:Landroid/health/connect/datatypes/units/Mass;

    .line 152
    return-object p0
.end method

.method public whitelist setVitaminA(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;
    .registers 2
    .param p1, "vitaminA"    # Landroid/health/connect/datatypes/units/Mass;

    .line 641
    iput-object p1, p0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mVitaminA:Landroid/health/connect/datatypes/units/Mass;

    .line 642
    return-object p0
.end method

.method public whitelist setVitaminB12(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;
    .registers 2
    .param p1, "vitaminB12"    # Landroid/health/connect/datatypes/units/Mass;

    .line 342
    iput-object p1, p0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mVitaminB12:Landroid/health/connect/datatypes/units/Mass;

    .line 343
    return-object p0
.end method

.method public whitelist setVitaminB6(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;
    .registers 2
    .param p1, "vitaminB6"    # Landroid/health/connect/datatypes/units/Mass;

    .line 270
    iput-object p1, p0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mVitaminB6:Landroid/health/connect/datatypes/units/Mass;

    .line 271
    return-object p0
.end method

.method public whitelist setVitaminC(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;
    .registers 2
    .param p1, "vitaminC"    # Landroid/health/connect/datatypes/units/Mass;

    .line 450
    iput-object p1, p0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mVitaminC:Landroid/health/connect/datatypes/units/Mass;

    .line 451
    return-object p0
.end method

.method public whitelist setVitaminD(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;
    .registers 2
    .param p1, "vitaminD"    # Landroid/health/connect/datatypes/units/Mass;

    .line 486
    iput-object p1, p0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mVitaminD:Landroid/health/connect/datatypes/units/Mass;

    .line 487
    return-object p0
.end method

.method public whitelist setVitaminE(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;
    .registers 2
    .param p1, "vitaminE"    # Landroid/health/connect/datatypes/units/Mass;

    .line 462
    iput-object p1, p0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mVitaminE:Landroid/health/connect/datatypes/units/Mass;

    .line 463
    return-object p0
.end method

.method public whitelist setVitaminK(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;
    .registers 2
    .param p1, "vitaminK"    # Landroid/health/connect/datatypes/units/Mass;

    .line 534
    iput-object p1, p0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mVitaminK:Landroid/health/connect/datatypes/units/Mass;

    .line 535
    return-object p0
.end method

.method public whitelist setZinc(Landroid/health/connect/datatypes/units/Mass;)Landroid/health/connect/datatypes/NutritionRecord$Builder;
    .registers 2
    .param p1, "zinc"    # Landroid/health/connect/datatypes/units/Mass;

    .line 354
    iput-object p1, p0, Landroid/health/connect/datatypes/NutritionRecord$Builder;->mZinc:Landroid/health/connect/datatypes/units/Mass;

    .line 355
    return-object p0
.end method
