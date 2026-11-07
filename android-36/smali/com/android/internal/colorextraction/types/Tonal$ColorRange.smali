.class public Lcom/android/internal/colorextraction/types/Tonal$ColorRange;
.super Ljava/lang/Object;
.source "Tonal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/colorextraction/types/Tonal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColorRange"
.end annotation


# instance fields
.field private blacklist mHue:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLightness:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSaturation:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 443
    .local p1, "hue":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    .local p2, "saturation":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    .local p3, "lightness":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    iput-object p1, p0, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;->mHue:Landroid/util/Range;

    .line 445
    iput-object p2, p0, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;->mSaturation:Landroid/util/Range;

    .line 446
    iput-object p3, p0, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;->mLightness:Landroid/util/Range;

    .line 447
    return-void
.end method


# virtual methods
.method public blacklist containsColor(FFF)Z
    .registers 7
    .param p1, "h"    # F
    .param p2, "s"    # F
    .param p3, "l"    # F

    .line 450
    iget-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;->mHue:Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 451
    return v1

    .line 452
    :cond_e
    iget-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;->mSaturation:Landroid/util/Range;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 453
    return v1

    .line 454
    :cond_1b
    iget-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;->mLightness:Landroid/util/Range;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 455
    return v1

    .line 457
    :cond_28
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getCenter()[F
    .registers 7

    .line 461
    iget-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;->mHue:Landroid/util/Range;

    .line 462
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;->mHue:Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;->mHue:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;->mSaturation:Landroid/util/Range;

    .line 463
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v3, p0, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;->mSaturation:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, p0, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;->mSaturation:Landroid/util/Range;

    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    iget-object v3, p0, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;->mLightness:Landroid/util/Range;

    .line 464
    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, p0, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;->mLightness:Landroid/util/Range;

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v5, p0, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;->mLightness:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v2

    add-float/2addr v3, v4

    const/4 v2, 0x3

    new-array v2, v2, [F

    const/4 v4, 0x0

    aput v0, v2, v4

    const/4 v0, 0x1

    aput v1, v2, v0

    const/4 v0, 0x2

    aput v3, v2, v0

    .line 461
    return-object v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 470
    iget-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;->mHue:Landroid/util/Range;

    iget-object v1, p0, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;->mSaturation:Landroid/util/Range;

    iget-object v2, p0, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;->mLightness:Landroid/util/Range;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "H: %s, S: %s, L %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
