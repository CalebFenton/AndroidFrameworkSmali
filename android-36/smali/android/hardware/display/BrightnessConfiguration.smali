.class public final Landroid/hardware/display/BrightnessConfiguration;
.super Ljava/lang/Object;
.source "BrightnessConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/BrightnessConfiguration$Builder;
    }
.end annotation


# static fields
.field private static final blacklist ATTR_CATEGORY:Ljava/lang/String; = "category"

.field private static final blacklist ATTR_COLLECT_COLOR:Ljava/lang/String; = "collect-color"

.field private static final blacklist ATTR_DESCRIPTION:Ljava/lang/String; = "description"

.field private static final blacklist ATTR_LUX:Ljava/lang/String; = "lux"

.field private static final blacklist ATTR_MODEL_LOWER_BOUND:Ljava/lang/String; = "model-lower-bound"

.field private static final blacklist ATTR_MODEL_TIMEOUT:Ljava/lang/String; = "model-timeout"

.field private static final blacklist ATTR_MODEL_UPPER_BOUND:Ljava/lang/String; = "model-upper-bound"

.field private static final blacklist ATTR_NITS:Ljava/lang/String; = "nits"

.field private static final blacklist ATTR_PACKAGE_NAME:Ljava/lang/String; = "package-name"

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/display/BrightnessConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SHORT_TERM_TIMEOUT_UNSET:J = -0x1L

.field private static final blacklist TAG_BRIGHTNESS_CORRECTION:Ljava/lang/String; = "brightness-correction"

.field private static final blacklist TAG_BRIGHTNESS_CORRECTIONS:Ljava/lang/String; = "brightness-corrections"

.field private static final blacklist TAG_BRIGHTNESS_CURVE:Ljava/lang/String; = "brightness-curve"

.field private static final blacklist TAG_BRIGHTNESS_PARAMS:Ljava/lang/String; = "brightness-params"

.field private static final blacklist TAG_BRIGHTNESS_POINT:Ljava/lang/String; = "brightness-point"


# instance fields
.field private final blacklist mCorrectionsByCategory:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/display/BrightnessCorrection;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCorrectionsByPackageName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/display/BrightnessCorrection;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mDescription:Ljava/lang/String;

.field private final greylist-max-o mLux:[F

.field private final greylist-max-o mNits:[F

.field private final blacklist mShortTermModelLowerLuxMultiplier:F

.field private final blacklist mShortTermModelTimeout:J

.field private final blacklist mShortTermModelUpperLuxMultiplier:F

.field private final blacklist mShouldCollectColorSamples:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 300
    new-instance v0, Landroid/hardware/display/BrightnessConfiguration$1;

    invoke-direct {v0}, Landroid/hardware/display/BrightnessConfiguration$1;-><init>()V

    sput-object v0, Landroid/hardware/display/BrightnessConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>([F[FLjava/util/Map;Ljava/util/Map;Ljava/lang/String;ZJFF)V
    .registers 11
    .param p1, "lux"    # [F
    .param p2, "nits"    # [F
    .param p5, "description"    # Ljava/lang/String;
    .param p6, "shouldCollectColorSamples"    # Z
    .param p7, "shortTermModelTimeout"    # J
    .param p9, "shortTermModelLowerLuxMultiplier"    # F
    .param p10, "shortTermModelUpperLuxMultiplier"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[F",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/display/BrightnessCorrection;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/display/BrightnessCorrection;",
            ">;",
            "Ljava/lang/String;",
            "ZJFF)V"
        }
    .end annotation

    .line 85
    .local p3, "correctionsByPackageName":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/display/BrightnessCorrection;>;"
    .local p4, "correctionsByCategory":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/hardware/display/BrightnessCorrection;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Landroid/hardware/display/BrightnessConfiguration;->mLux:[F

    .line 87
    iput-object p2, p0, Landroid/hardware/display/BrightnessConfiguration;->mNits:[F

    .line 88
    iput-object p3, p0, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByPackageName:Ljava/util/Map;

    .line 89
    iput-object p4, p0, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByCategory:Ljava/util/Map;

    .line 90
    iput-object p5, p0, Landroid/hardware/display/BrightnessConfiguration;->mDescription:Ljava/lang/String;

    .line 91
    iput-boolean p6, p0, Landroid/hardware/display/BrightnessConfiguration;->mShouldCollectColorSamples:Z

    .line 92
    iput-wide p7, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelTimeout:J

    .line 93
    iput p9, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelLowerLuxMultiplier:F

    .line 94
    iput p10, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelUpperLuxMultiplier:F

    .line 95
    return-void
.end method

.method synthetic constructor blacklist <init>([F[FLjava/util/Map;Ljava/util/Map;Ljava/lang/String;ZJFFLandroid/hardware/display/BrightnessConfiguration-IA;)V
    .registers 12

    invoke-direct/range {p0 .. p10}, Landroid/hardware/display/BrightnessConfiguration;-><init>([F[FLjava/util/Map;Ljava/util/Map;Ljava/lang/String;ZJFF)V

    return-void
.end method

.method private blacklist checkFloatEquals(FF)Z
    .registers 5
    .param p1, "one"    # F
    .param p2, "two"    # F

    .line 294
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 295
    return v1

    .line 297
    :cond_e
    cmpl-float v0, p1, p2

    if-nez v0, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method private static blacklist loadFloatFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)F
    .registers 4
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "attribute"    # Ljava/lang/String;

    .line 489
    const/4 v0, 0x0

    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-interface {p0, v0, p1, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static blacklist loadFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/hardware/display/BrightnessConfiguration;
    .registers 21
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 412
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 413
    .local v1, "description":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 414
    .local v2, "luxList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 415
    .local v3, "nitsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 416
    .local v4, "correctionsByPackageName":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/display/BrightnessCorrection;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 417
    .local v5, "correctionsByCategory":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/hardware/display/BrightnessCorrection;>;"
    const/4 v6, 0x0

    .line 418
    .local v6, "shouldCollectColorSamples":Z
    const-wide/16 v7, -0x1

    .line 419
    .local v7, "shortTermModelTimeout":J
    const/high16 v9, 0x7fc00000    # Float.NaN

    .line 420
    .local v9, "shortTermModelLowerLuxMultiplier":F
    const/high16 v10, 0x7fc00000    # Float.NaN

    .line 421
    .local v10, "shortTermModelUpperLuxMultiplier":F
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v11

    .line 422
    .local v11, "configDepth":I
    :goto_22
    invoke-static {v0, v11}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v12

    if-eqz v12, :cond_f2

    .line 423
    const-string v12, "brightness-curve"

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    const/4 v13, 0x0

    if-eqz v12, :cond_6e

    .line 424
    const-string v12, "description"

    invoke-interface {v0, v13, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 425
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v12

    .line 426
    .local v12, "curveDepth":I
    :goto_3f
    invoke-static {v0, v12}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v13

    if-eqz v13, :cond_6d

    .line 427
    const-string v13, "brightness-point"

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_52

    .line 428
    goto :goto_3f

    .line 430
    :cond_52
    const-string v13, "lux"

    invoke-static {v0, v13}, Landroid/hardware/display/BrightnessConfiguration;->loadFloatFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)F

    move-result v13

    .line 431
    .local v13, "lux":F
    const-string v14, "nits"

    invoke-static {v0, v14}, Landroid/hardware/display/BrightnessConfiguration;->loadFloatFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)F

    move-result v14

    .line 432
    .local v14, "nits":F
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    .end local v13    # "lux":F
    .end local v14    # "nits":F
    goto :goto_3f

    .line 435
    .end local v12    # "curveDepth":I
    :cond_6d
    goto :goto_22

    :cond_6e
    const-string v12, "brightness-corrections"

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_ba

    .line 436
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v12

    .line 437
    .local v12, "correctionsDepth":I
    :goto_7e
    invoke-static {v0, v12}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v14

    if-eqz v14, :cond_b7

    .line 438
    const-string v14, "brightness-correction"

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_91

    .line 439
    goto :goto_7e

    .line 441
    :cond_91
    const-string v14, "package-name"

    invoke-interface {v0, v13, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 442
    .local v14, "packageName":Ljava/lang/String;
    const-string v15, "category"

    move/from16 v16, v11

    .end local v11    # "configDepth":I
    .local v16, "configDepth":I
    const/4 v11, -0x1

    invoke-interface {v0, v13, v15, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v15

    .line 443
    .local v15, "category":I
    invoke-static {v0}, Landroid/hardware/display/BrightnessCorrection;->loadFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/hardware/display/BrightnessCorrection;

    move-result-object v13

    .line 444
    .local v13, "correction":Landroid/hardware/display/BrightnessCorrection;
    if-eqz v14, :cond_aa

    .line 445
    invoke-interface {v4, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b3

    .line 446
    :cond_aa
    if-eq v15, v11, :cond_b3

    .line 447
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v5, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    .end local v13    # "correction":Landroid/hardware/display/BrightnessCorrection;
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v15    # "category":I
    :cond_b3
    :goto_b3
    move/from16 v11, v16

    const/4 v13, 0x0

    goto :goto_7e

    .line 437
    .end local v16    # "configDepth":I
    .restart local v11    # "configDepth":I
    :cond_b7
    move/from16 v16, v11

    .end local v11    # "configDepth":I
    .end local v12    # "correctionsDepth":I
    .restart local v16    # "configDepth":I
    goto :goto_ed

    .line 450
    .end local v16    # "configDepth":I
    .restart local v11    # "configDepth":I
    :cond_ba
    move/from16 v16, v11

    .end local v11    # "configDepth":I
    .restart local v16    # "configDepth":I
    const-string v11, "brightness-params"

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_ed

    .line 451
    nop

    .line 452
    const-string v11, "collect-color"

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-interface {v0, v13, v11, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 453
    const-string v11, "model-timeout"

    invoke-static {v0, v11}, Landroid/hardware/display/BrightnessConfiguration;->loadLongFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    .line 454
    .local v11, "timeout":Ljava/lang/Long;
    if-eqz v11, :cond_dd

    .line 455
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 457
    :cond_dd
    const-string v12, "model-lower-bound"

    invoke-static {v0, v12}, Landroid/hardware/display/BrightnessConfiguration;->loadFloatFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)F

    move-result v9

    .line 458
    const-string v12, "model-upper-bound"

    invoke-static {v0, v12}, Landroid/hardware/display/BrightnessConfiguration;->loadFloatFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)F

    move-result v10

    .line 459
    .end local v11    # "timeout":Ljava/lang/Long;
    move/from16 v11, v16

    goto/16 :goto_22

    .line 450
    :cond_ed
    :goto_ed
    nop

    .line 422
    move/from16 v11, v16

    goto/16 :goto_22

    .line 461
    .end local v16    # "configDepth":I
    .local v11, "configDepth":I
    :cond_f2
    move/from16 v16, v11

    .end local v11    # "configDepth":I
    .restart local v16    # "configDepth":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    .line 462
    .local v11, "n":I
    new-array v12, v11, [F

    .line 463
    .local v12, "lux":[F
    new-array v13, v11, [F

    .line 464
    .local v13, "nits":[F
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_fd
    if-ge v14, v11, :cond_11a

    .line 465
    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    aput v15, v12, v14

    .line 466
    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    aput v15, v13, v14

    .line 464
    add-int/lit8 v14, v14, 0x1

    goto :goto_fd

    .line 468
    .end local v14    # "i":I
    :cond_11a
    new-instance v14, Landroid/hardware/display/BrightnessConfiguration$Builder;

    invoke-direct {v14, v12, v13}, Landroid/hardware/display/BrightnessConfiguration$Builder;-><init>([F[F)V

    .line 470
    .local v14, "builder":Landroid/hardware/display/BrightnessConfiguration$Builder;
    invoke-virtual {v14, v1}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setDescription(Ljava/lang/String;)Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 471
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_12a
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_150

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    .line 472
    .local v17, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/hardware/display/BrightnessCorrection;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Ljava/lang/String;

    .line 473
    .local v0, "packageName":Ljava/lang/String;
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v1

    .end local v1    # "description":Ljava/lang/String;
    .local v19, "description":Ljava/lang/String;
    move-object/from16 v1, v18

    check-cast v1, Landroid/hardware/display/BrightnessCorrection;

    .line 474
    .local v1, "correction":Landroid/hardware/display/BrightnessCorrection;
    invoke-virtual {v14, v0, v1}, Landroid/hardware/display/BrightnessConfiguration$Builder;->addCorrectionByPackageName(Ljava/lang/String;Landroid/hardware/display/BrightnessCorrection;)Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 475
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "correction":Landroid/hardware/display/BrightnessCorrection;
    .end local v17    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/hardware/display/BrightnessCorrection;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    goto :goto_12a

    .line 476
    .end local v19    # "description":Ljava/lang/String;
    .local v1, "description":Ljava/lang/String;
    :cond_150
    move-object/from16 v19, v1

    .end local v1    # "description":Ljava/lang/String;
    .restart local v19    # "description":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_180

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 477
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/hardware/display/BrightnessCorrection;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 478
    .restart local v15    # "category":I
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    check-cast v0, Landroid/hardware/display/BrightnessCorrection;

    .line 479
    .local v0, "correction":Landroid/hardware/display/BrightnessCorrection;
    invoke-virtual {v14, v15, v0}, Landroid/hardware/display/BrightnessConfiguration$Builder;->addCorrectionByCategory(ILandroid/hardware/display/BrightnessCorrection;)Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 480
    .end local v0    # "correction":Landroid/hardware/display/BrightnessCorrection;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/hardware/display/BrightnessCorrection;>;"
    .end local v15    # "category":I
    move-object/from16 v0, v18

    goto :goto_15a

    .line 481
    :cond_180
    invoke-virtual {v14, v6}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setShouldCollectColorSamples(Z)Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 482
    invoke-virtual {v14, v7, v8}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setShortTermModelTimeoutMillis(J)Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 483
    invoke-virtual {v14, v9}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setShortTermModelLowerLuxMultiplier(F)Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 484
    invoke-virtual {v14, v10}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setShortTermModelUpperLuxMultiplier(F)Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 485
    invoke-virtual {v14}, Landroid/hardware/display/BrightnessConfiguration$Builder;->build()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist loadLongFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Long;
    .registers 5
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "attribute"    # Ljava/lang/String;

    .line 494
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_a

    return-object v0

    .line 495
    :catch_a
    move-exception v1

    .line 496
    .local v1, "e":Ljava/lang/Exception;
    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 216
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 274
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 275
    return v0

    .line 277
    :cond_4
    instance-of v1, p1, Landroid/hardware/display/BrightnessConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 278
    return v2

    .line 280
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/hardware/display/BrightnessConfiguration;

    .line 281
    .local v1, "other":Landroid/hardware/display/BrightnessConfiguration;
    iget-object v3, p0, Landroid/hardware/display/BrightnessConfiguration;->mLux:[F

    iget-object v4, v1, Landroid/hardware/display/BrightnessConfiguration;->mLux:[F

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_62

    iget-object v3, p0, Landroid/hardware/display/BrightnessConfiguration;->mNits:[F

    iget-object v4, v1, Landroid/hardware/display/BrightnessConfiguration;->mNits:[F

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_62

    iget-object v3, p0, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByPackageName:Ljava/util/Map;

    iget-object v4, v1, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByPackageName:Ljava/util/Map;

    .line 282
    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    iget-object v3, p0, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByCategory:Ljava/util/Map;

    iget-object v4, v1, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByCategory:Ljava/util/Map;

    .line 283
    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    iget-object v3, p0, Landroid/hardware/display/BrightnessConfiguration;->mDescription:Ljava/lang/String;

    iget-object v4, v1, Landroid/hardware/display/BrightnessConfiguration;->mDescription:Ljava/lang/String;

    .line 284
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    iget-boolean v3, p0, Landroid/hardware/display/BrightnessConfiguration;->mShouldCollectColorSamples:Z

    iget-boolean v4, v1, Landroid/hardware/display/BrightnessConfiguration;->mShouldCollectColorSamples:Z

    if-ne v3, v4, :cond_62

    iget-wide v3, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelTimeout:J

    iget-wide v5, v1, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelTimeout:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_62

    iget v3, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelLowerLuxMultiplier:F

    iget v4, v1, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelLowerLuxMultiplier:F

    .line 287
    invoke-direct {p0, v3, v4}, Landroid/hardware/display/BrightnessConfiguration;->checkFloatEquals(FF)Z

    move-result v3

    if-eqz v3, :cond_62

    iget v3, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelUpperLuxMultiplier:F

    iget v4, v1, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelUpperLuxMultiplier:F

    .line 289
    invoke-direct {p0, v3, v4}, Landroid/hardware/display/BrightnessConfiguration;->checkFloatEquals(FF)Z

    move-result v3

    if-eqz v3, :cond_62

    goto :goto_63

    :cond_62
    move v0, v2

    .line 281
    :goto_63
    return v0
.end method

.method public whitelist getCorrectionByCategory(I)Landroid/hardware/display/BrightnessCorrection;
    .registers 4
    .param p1, "category"    # I

    .line 134
    iget-object v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByCategory:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/BrightnessCorrection;

    return-object v0
.end method

.method public whitelist getCorrectionByPackageName(Ljava/lang/String;)Landroid/hardware/display/BrightnessCorrection;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 121
    iget-object v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByPackageName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/BrightnessCorrection;

    return-object v0
.end method

.method public whitelist getCurve()Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "[F[F>;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mLux:[F

    iget-object v1, p0, Landroid/hardware/display/BrightnessConfiguration;->mLux:[F

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/BrightnessConfiguration;->mNits:[F

    iget-object v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mNits:[F

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getDescription()Ljava/lang/String;
    .registers 2

    .line 142
    iget-object v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getShortTermModelLowerLuxMultiplier()F
    .registers 2

    .line 186
    iget v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelLowerLuxMultiplier:F

    return v0
.end method

.method public whitelist getShortTermModelTimeoutMillis()J
    .registers 3

    .line 162
    iget-wide v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelTimeout:J

    return-wide v0
.end method

.method public whitelist getShortTermModelUpperLuxMultiplier()F
    .registers 2

    .line 174
    iget v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelUpperLuxMultiplier:F

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 257
    const/4 v0, 0x1

    .line 258
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mLux:[F

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([F)I

    move-result v2

    add-int/2addr v1, v2

    .line 259
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mNits:[F

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([F)I

    move-result v2

    add-int/2addr v0, v2

    .line 260
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByPackageName:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 261
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByCategory:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 262
    .end local v1    # "result":I
    .restart local v0    # "result":I
    iget-object v1, p0, Landroid/hardware/display/BrightnessConfiguration;->mDescription:Ljava/lang/String;

    if-eqz v1, :cond_33

    .line 263
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mDescription:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 265
    :cond_33
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mShouldCollectColorSamples:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 266
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelTimeout:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    .line 267
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelLowerLuxMultiplier:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v1, v2

    .line 268
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelUpperLuxMultiplier:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 269
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public blacklist saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 10
    .param p1, "serializer"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 347
    const/4 v0, 0x0

    const-string v1, "brightness-curve"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 348
    iget-object v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mDescription:Ljava/lang/String;

    if-eqz v2, :cond_11

    .line 349
    const-string v2, "description"

    iget-object v3, p0, Landroid/hardware/display/BrightnessConfiguration;->mDescription:Ljava/lang/String;

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 351
    :cond_11
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    iget-object v3, p0, Landroid/hardware/display/BrightnessConfiguration;->mLux:[F

    array-length v3, v3

    if-ge v2, v3, :cond_34

    .line 352
    const-string v3, "brightness-point"

    invoke-interface {p1, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 353
    iget-object v4, p0, Landroid/hardware/display/BrightnessConfiguration;->mLux:[F

    aget v4, v4, v2

    const-string v5, "lux"

    invoke-interface {p1, v0, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 354
    iget-object v4, p0, Landroid/hardware/display/BrightnessConfiguration;->mNits:[F

    aget v4, v4, v2

    const-string v5, "nits"

    invoke-interface {p1, v0, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 355
    invoke-interface {p1, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 351
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 357
    .end local v2    # "i":I
    :cond_34
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 359
    const-string v1, "brightness-corrections"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 361
    iget-object v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByPackageName:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_46
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "brightness-correction"

    if-eqz v3, :cond_6f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 362
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/hardware/display/BrightnessCorrection;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 363
    .local v5, "packageName":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/display/BrightnessCorrection;

    .line 364
    .local v6, "correction":Landroid/hardware/display/BrightnessCorrection;
    invoke-interface {p1, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 365
    const-string v7, "package-name"

    invoke-interface {p1, v0, v7, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 366
    invoke-virtual {v6, p1}, Landroid/hardware/display/BrightnessCorrection;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 367
    invoke-interface {p1, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 368
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/hardware/display/BrightnessCorrection;>;"
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "correction":Landroid/hardware/display/BrightnessCorrection;
    goto :goto_46

    .line 369
    :cond_6f
    iget-object v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByCategory:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_79
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 370
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/hardware/display/BrightnessCorrection;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 371
    .local v5, "category":I
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/display/BrightnessCorrection;

    .line 372
    .restart local v6    # "correction":Landroid/hardware/display/BrightnessCorrection;
    invoke-interface {p1, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 373
    const-string v7, "category"

    invoke-interface {p1, v0, v7, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 374
    invoke-virtual {v6, p1}, Landroid/hardware/display/BrightnessCorrection;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 375
    invoke-interface {p1, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 376
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/hardware/display/BrightnessCorrection;>;"
    .end local v5    # "category":I
    .end local v6    # "correction":Landroid/hardware/display/BrightnessCorrection;
    goto :goto_79

    .line 377
    :cond_a4
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 379
    const-string v1, "brightness-params"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 380
    iget-boolean v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mShouldCollectColorSamples:Z

    if-eqz v2, :cond_b6

    .line 381
    const-string v2, "collect-color"

    const/4 v3, 0x1

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 383
    :cond_b6
    iget-wide v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelTimeout:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_c5

    .line 384
    const-string v2, "model-timeout"

    iget-wide v3, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelTimeout:J

    invoke-interface {p1, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 386
    :cond_c5
    iget v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelLowerLuxMultiplier:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_d4

    .line 387
    const-string v2, "model-lower-bound"

    iget v3, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelLowerLuxMultiplier:F

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 390
    :cond_d4
    iget v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelUpperLuxMultiplier:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_e3

    .line 391
    const-string v2, "model-upper-bound"

    iget v3, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelUpperLuxMultiplier:F

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 394
    :cond_e3
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 395
    return-void
.end method

.method public whitelist shouldCollectColorSamples()Z
    .registers 2

    .line 150
    iget-boolean v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mShouldCollectColorSamples:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 8

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BrightnessConfiguration{["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/hardware/display/BrightnessConfiguration;->mLux:[F

    array-length v1, v1

    .line 224
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    const-string v3, ", "

    if-ge v2, v1, :cond_36

    .line 225
    if-eqz v2, :cond_14

    .line 226
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    :cond_14
    const-string v4, "("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/display/BrightnessConfiguration;->mLux:[F

    aget v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/display/BrightnessConfiguration;->mNits:[F

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 230
    .end local v2    # "i":I
    :cond_36
    const-string v2, "], {"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    iget-object v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByPackageName:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_45
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_80

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 232
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/hardware/display/BrightnessCorrection;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\': "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/hardware/display/BrightnessCorrection;>;"
    goto :goto_45

    .line 234
    :cond_80
    iget-object v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByCategory:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_bd

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 235
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/hardware/display/BrightnessCorrection;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/hardware/display/BrightnessCorrection;>;"
    goto :goto_8a

    .line 237
    :cond_bd
    const-string v2, "}, \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    iget-object v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mDescription:Ljava/lang/String;

    if-eqz v2, :cond_cb

    .line 239
    iget-object v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    :cond_cb
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", shouldCollectColorSamples = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/hardware/display/BrightnessConfiguration;->mShouldCollectColorSamples:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    iget-wide v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelTimeout:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_103

    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", shortTermModelTimeout = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelTimeout:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    :cond_103
    iget v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelLowerLuxMultiplier:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_123

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", shortTermModelLowerLuxMultiplier = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelLowerLuxMultiplier:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    :cond_123
    iget v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelLowerLuxMultiplier:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_143

    .line 249
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", shortTermModelUpperLuxMultiplier = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelUpperLuxMultiplier:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    :cond_143
    const-string v2, "\'}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 191
    iget-object v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mLux:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 192
    iget-object v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mNits:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 193
    iget-object v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByPackageName:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget-object v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByPackageName:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 195
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/hardware/display/BrightnessCorrection;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 196
    .local v2, "packageName":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/BrightnessCorrection;

    .line 197
    .local v3, "correction":Landroid/hardware/display/BrightnessCorrection;
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v3, p1, p2}, Landroid/hardware/display/BrightnessCorrection;->writeToParcel(Landroid/os/Parcel;I)V

    .line 199
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/hardware/display/BrightnessCorrection;>;"
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "correction":Landroid/hardware/display/BrightnessCorrection;
    goto :goto_1d

    .line 200
    :cond_3c
    iget-object v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByCategory:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    iget-object v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByCategory:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_72

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 202
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/hardware/display/BrightnessCorrection;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 203
    .local v2, "category":I
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/BrightnessCorrection;

    .line 204
    .restart local v3    # "correction":Landroid/hardware/display/BrightnessCorrection;
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    invoke-virtual {v3, p1, p2}, Landroid/hardware/display/BrightnessCorrection;->writeToParcel(Landroid/os/Parcel;I)V

    .line 206
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/hardware/display/BrightnessCorrection;>;"
    .end local v2    # "category":I
    .end local v3    # "correction":Landroid/hardware/display/BrightnessCorrection;
    goto :goto_4f

    .line 207
    :cond_72
    iget-object v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 208
    iget-boolean v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mShouldCollectColorSamples:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 209
    iget-wide v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelTimeout:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 210
    iget v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelLowerLuxMultiplier:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 211
    iget v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelUpperLuxMultiplier:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 212
    return-void
.end method
