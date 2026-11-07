.class public Landroid/hardware/display/BrightnessConfiguration$Builder;
.super Ljava/lang/Object;
.source "BrightnessConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/BrightnessConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final blacklist MAX_CORRECTIONS_BY_CATEGORY:I = 0x14

.field private static final blacklist MAX_CORRECTIONS_BY_PACKAGE_NAME:I = 0x14


# instance fields
.field private blacklist mCorrectionsByCategory:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/display/BrightnessCorrection;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCorrectionsByPackageName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/display/BrightnessCorrection;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mCurveLux:[F

.field private greylist-max-o mCurveNits:[F

.field private greylist-max-o mDescription:Ljava/lang/String;

.field private blacklist mShortTermModelLowerLuxMultiplier:F

.field private blacklist mShortTermModelTimeout:J

.field private blacklist mShortTermModelUpperLuxMultiplier:F

.field private blacklist mShouldCollectColorSamples:Z


# direct methods
.method public constructor whitelist <init>([F[F)V
    .registers 8
    .param p1, "lux"    # [F
    .param p2, "nits"    # [F

    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 513
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/hardware/display/BrightnessConfiguration$Builder;->mShortTermModelTimeout:J

    .line 514
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroid/hardware/display/BrightnessConfiguration$Builder;->mShortTermModelLowerLuxMultiplier:F

    .line 515
    iput v0, p0, Landroid/hardware/display/BrightnessConfiguration$Builder;->mShortTermModelUpperLuxMultiplier:F

    .line 529
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    array-length v0, p1

    if-eqz v0, :cond_5c

    array-length v0, p2

    if-eqz v0, :cond_5c

    .line 534
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_54

    .line 537
    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_4c

    .line 540
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const-string v3, "lux"

    invoke-static {p1, v2, v1, v3}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([FFFLjava/lang/String;)[F

    .line 541
    const-string v4, "nits"

    invoke-static {p2, v2, v1, v4}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([FFFLjava/lang/String;)[F

    .line 542
    const/4 v1, 0x1

    invoke-static {p1, v1, v3}, Landroid/hardware/display/BrightnessConfiguration$Builder;->checkMonotonic([FZLjava/lang/String;)V

    .line 543
    invoke-static {p2, v0, v4}, Landroid/hardware/display/BrightnessConfiguration$Builder;->checkMonotonic([FZLjava/lang/String;)V

    .line 544
    iput-object p1, p0, Landroid/hardware/display/BrightnessConfiguration$Builder;->mCurveLux:[F

    .line 545
    iput-object p2, p0, Landroid/hardware/display/BrightnessConfiguration$Builder;->mCurveNits:[F

    .line 546
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/BrightnessConfiguration$Builder;->mCorrectionsByPackageName:Ljava/util/Map;

    .line 547
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/BrightnessConfiguration$Builder;->mCorrectionsByCategory:Ljava/util/Map;

    .line 548
    return-void

    .line 538
    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Initial control point must be for 0 lux"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 535
    :cond_54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Lux and nits arrays must be the same length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 532
    :cond_5c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Lux and nits arrays must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o checkMonotonic([FZLjava/lang/String;)V
    .registers 9
    .param p0, "vals"    # [F
    .param p1, "strictlyIncreasing"    # Z
    .param p2, "name"    # Ljava/lang/String;

    .line 721
    array-length v0, p0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_5

    .line 722
    return-void

    .line 724
    :cond_5
    const/4 v0, 0x0

    aget v0, p0, v0

    .line 725
    .local v0, "prev":F
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_9
    array-length v2, p0

    if-ge v1, v2, :cond_44

    .line 726
    aget v2, p0, v1

    cmpl-float v2, v0, v2

    if-gtz v2, :cond_20

    aget v2, p0, v1

    cmpl-float v2, v0, v2

    if-nez v2, :cond_1b

    if-eqz p1, :cond_1b

    goto :goto_20

    .line 730
    :cond_1b
    aget v0, p0, v1

    .line 725
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 727
    :cond_20
    :goto_20
    if-eqz p1, :cond_25

    const-string v2, "strictly increasing"

    goto :goto_27

    :cond_25
    const-string v2, "monotonic"

    .line 728
    .local v2, "condition":Ljava/lang/String;
    :goto_27
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " values must be "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 732
    .end local v1    # "i":I
    .end local v2    # "condition":Ljava/lang/String;
    :cond_44
    return-void
.end method


# virtual methods
.method public whitelist addCorrectionByCategory(ILandroid/hardware/display/BrightnessCorrection;)Landroid/hardware/display/BrightnessConfiguration$Builder;
    .registers 5
    .param p1, "category"    # I
    .param p2, "correction"    # Landroid/hardware/display/BrightnessCorrection;

    .line 619
    const-string v0, "correction must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 620
    iget-object v0, p0, Landroid/hardware/display/BrightnessConfiguration$Builder;->mCorrectionsByCategory:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p0}, Landroid/hardware/display/BrightnessConfiguration$Builder;->getMaxCorrectionsByCategory()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 623
    iget-object v0, p0, Landroid/hardware/display/BrightnessConfiguration$Builder;->mCorrectionsByCategory:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    return-object p0

    .line 621
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Too many corrections by category"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addCorrectionByPackageName(Ljava/lang/String;Landroid/hardware/display/BrightnessCorrection;)Landroid/hardware/display/BrightnessConfiguration$Builder;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "correction"    # Landroid/hardware/display/BrightnessCorrection;

    .line 590
    const-string v0, "packageName must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 591
    const-string v0, "correction must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 592
    iget-object v0, p0, Landroid/hardware/display/BrightnessConfiguration$Builder;->mCorrectionsByPackageName:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p0}, Landroid/hardware/display/BrightnessConfiguration$Builder;->getMaxCorrectionsByPackageName()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 595
    iget-object v0, p0, Landroid/hardware/display/BrightnessConfiguration$Builder;->mCorrectionsByPackageName:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    return-object p0

    .line 593
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Too many corrections by package name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist build()Landroid/hardware/display/BrightnessConfiguration;
    .registers 14

    .line 711
    iget-object v0, p0, Landroid/hardware/display/BrightnessConfiguration$Builder;->mCurveLux:[F

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/hardware/display/BrightnessConfiguration$Builder;->mCurveNits:[F

    if-eqz v0, :cond_21

    .line 714
    new-instance v1, Landroid/hardware/display/BrightnessConfiguration;

    iget-object v2, p0, Landroid/hardware/display/BrightnessConfiguration$Builder;->mCurveLux:[F

    iget-object v3, p0, Landroid/hardware/display/BrightnessConfiguration$Builder;->mCurveNits:[F

    iget-object v4, p0, Landroid/hardware/display/BrightnessConfiguration$Builder;->mCorrectionsByPackageName:Ljava/util/Map;

    iget-object v5, p0, Landroid/hardware/display/BrightnessConfiguration$Builder;->mCorrectionsByCategory:Ljava/util/Map;

    iget-object v6, p0, Landroid/hardware/display/BrightnessConfiguration$Builder;->mDescription:Ljava/lang/String;

    iget-boolean v7, p0, Landroid/hardware/display/BrightnessConfiguration$Builder;->mShouldCollectColorSamples:Z

    iget-wide v8, p0, Landroid/hardware/display/BrightnessConfiguration$Builder;->mShortTermModelTimeout:J

    iget v10, p0, Landroid/hardware/display/BrightnessConfiguration$Builder;->mShortTermModelLowerLuxMultiplier:F

    iget v11, p0, Landroid/hardware/display/BrightnessConfiguration$Builder;->mShortTermModelUpperLuxMultiplier:F

    const/4 v12, 0x0

    invoke-direct/range {v1 .. v12}, Landroid/hardware/display/BrightnessConfiguration;-><init>([F[FLjava/util/Map;Ljava/util/Map;Ljava/lang/String;ZJFFLandroid/hardware/display/BrightnessConfiguration-IA;)V

    return-object v1

    .line 712
    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A curve must be set!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getMaxCorrectionsByCategory()I
    .registers 2

    .line 567
    const/16 v0, 0x14

    return v0
.end method

.method public whitelist getMaxCorrectionsByPackageName()I
    .registers 2

    .line 557
    const/16 v0, 0x14

    return v0
.end method

.method public whitelist setDescription(Ljava/lang/String;)Landroid/hardware/display/BrightnessConfiguration$Builder;
    .registers 2
    .param p1, "description"    # Ljava/lang/String;

    .line 635
    iput-object p1, p0, Landroid/hardware/display/BrightnessConfiguration$Builder;->mDescription:Ljava/lang/String;

    .line 636
    return-object p0
.end method

.method public whitelist setShortTermModelLowerLuxMultiplier(F)Landroid/hardware/display/BrightnessConfiguration$Builder;
    .registers 4
    .param p1, "shortTermModelLowerLuxMultiplier"    # F

    .line 699
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_8

    .line 702
    iput p1, p0, Landroid/hardware/display/BrightnessConfiguration$Builder;->mShortTermModelLowerLuxMultiplier:F

    .line 703
    return-object p0

    .line 700
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative lux multiplier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setShortTermModelTimeoutMillis(J)Landroid/hardware/display/BrightnessConfiguration$Builder;
    .registers 3
    .param p1, "shortTermModelTimeoutMillis"    # J

    .line 662
    iput-wide p1, p0, Landroid/hardware/display/BrightnessConfiguration$Builder;->mShortTermModelTimeout:J

    .line 663
    return-object p0
.end method

.method public whitelist setShortTermModelUpperLuxMultiplier(F)Landroid/hardware/display/BrightnessConfiguration$Builder;
    .registers 4
    .param p1, "shortTermModelUpperLuxMultiplier"    # F

    .line 679
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_8

    .line 682
    iput p1, p0, Landroid/hardware/display/BrightnessConfiguration$Builder;->mShortTermModelUpperLuxMultiplier:F

    .line 683
    return-object p0

    .line 680
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative lux multiplier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setShouldCollectColorSamples(Z)Landroid/hardware/display/BrightnessConfiguration$Builder;
    .registers 2
    .param p1, "shouldCollectColorSamples"    # Z

    .line 648
    iput-boolean p1, p0, Landroid/hardware/display/BrightnessConfiguration$Builder;->mShouldCollectColorSamples:Z

    .line 649
    return-object p0
.end method
