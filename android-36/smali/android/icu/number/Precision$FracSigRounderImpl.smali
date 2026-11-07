.class Landroid/icu/number/Precision$FracSigRounderImpl;
.super Landroid/icu/number/Precision;
.source "Precision.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/number/Precision;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FracSigRounderImpl"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field final blacklist maxFrac:I

.field final blacklist maxSig:I

.field final blacklist minFrac:I

.field final blacklist minSig:I

.field final blacklist priority:Landroid/icu/number/NumberFormatter$RoundingPriority;

.field final blacklist retain:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 699
    const-class v0, Landroid/icu/number/Precision;

    return-void
.end method

.method public constructor blacklist <init>(IIIILandroid/icu/number/NumberFormatter$RoundingPriority;Z)V
    .registers 7
    .param p1, "minFrac"    # I
    .param p2, "maxFrac"    # I
    .param p3, "minSig"    # I
    .param p4, "maxSig"    # I
    .param p5, "priority"    # Landroid/icu/number/NumberFormatter$RoundingPriority;
    .param p6, "retain"    # Z

    .line 708
    invoke-direct {p0}, Landroid/icu/number/Precision;-><init>()V

    .line 709
    iput p1, p0, Landroid/icu/number/Precision$FracSigRounderImpl;->minFrac:I

    .line 710
    iput p2, p0, Landroid/icu/number/Precision$FracSigRounderImpl;->maxFrac:I

    .line 711
    iput p3, p0, Landroid/icu/number/Precision$FracSigRounderImpl;->minSig:I

    .line 712
    iput p4, p0, Landroid/icu/number/Precision$FracSigRounderImpl;->maxSig:I

    .line 713
    iput-object p5, p0, Landroid/icu/number/Precision$FracSigRounderImpl;->priority:Landroid/icu/number/NumberFormatter$RoundingPriority;

    .line 714
    iput-boolean p6, p0, Landroid/icu/number/Precision$FracSigRounderImpl;->retain:Z

    .line 715
    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/icu/impl/number/DecimalQuantity;)V
    .registers 10
    .param p1, "value"    # Landroid/icu/impl/number/DecimalQuantity;

    .line 719
    iget v0, p0, Landroid/icu/number/Precision$FracSigRounderImpl;->maxFrac:I

    invoke-static {v0}, Landroid/icu/number/Precision;->-$$Nest$smgetRoundingMagnitudeFraction(I)I

    move-result v0

    .line 720
    .local v0, "roundingMag1":I
    iget v1, p0, Landroid/icu/number/Precision$FracSigRounderImpl;->maxSig:I

    invoke-static {p1, v1}, Landroid/icu/number/Precision;->-$$Nest$smgetRoundingMagnitudeSignificant(Landroid/icu/impl/number/DecimalQuantity;I)I

    move-result v1

    .line 722
    .local v1, "roundingMag2":I
    iget-object v2, p0, Landroid/icu/number/Precision$FracSigRounderImpl;->priority:Landroid/icu/number/NumberFormatter$RoundingPriority;

    sget-object v3, Landroid/icu/number/NumberFormatter$RoundingPriority;->RELAXED:Landroid/icu/number/NumberFormatter$RoundingPriority;

    if-ne v2, v3, :cond_17

    .line 723
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .local v2, "roundingMag":I
    goto :goto_1b

    .line 725
    .end local v2    # "roundingMag":I
    :cond_17
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 727
    .restart local v2    # "roundingMag":I
    :goto_1b
    invoke-interface {p1}, Landroid/icu/impl/number/DecimalQuantity;->isZeroish()Z

    move-result v3

    if-nez v3, :cond_3a

    .line 728
    invoke-interface {p1}, Landroid/icu/impl/number/DecimalQuantity;->getMagnitude()I

    move-result v3

    .line 729
    .local v3, "upperMag":I
    iget-object v4, p0, Landroid/icu/number/Precision$FracSigRounderImpl;->mathContext:Ljava/math/MathContext;

    invoke-interface {p1, v2, v4}, Landroid/icu/impl/number/DecimalQuantity;->roundToMagnitude(ILjava/math/MathContext;)V

    .line 730
    invoke-interface {p1}, Landroid/icu/impl/number/DecimalQuantity;->isZeroish()Z

    move-result v4

    if-nez v4, :cond_3a

    invoke-interface {p1}, Landroid/icu/impl/number/DecimalQuantity;->getMagnitude()I

    move-result v4

    if-eq v4, v3, :cond_3a

    if-ne v0, v1, :cond_3a

    .line 732
    add-int/lit8 v1, v1, 0x1

    .line 736
    .end local v3    # "upperMag":I
    :cond_3a
    iget v3, p0, Landroid/icu/number/Precision$FracSigRounderImpl;->minFrac:I

    invoke-static {v3}, Landroid/icu/number/Precision;->-$$Nest$smgetDisplayMagnitudeFraction(I)I

    move-result v3

    .line 737
    .local v3, "displayMag1":I
    iget v4, p0, Landroid/icu/number/Precision$FracSigRounderImpl;->minSig:I

    invoke-static {p1, v4}, Landroid/icu/number/Precision;->-$$Nest$smgetDisplayMagnitudeSignificant(Landroid/icu/impl/number/DecimalQuantity;I)I

    move-result v4

    .line 739
    .local v4, "displayMag2":I
    iget-boolean v5, p0, Landroid/icu/number/Precision$FracSigRounderImpl;->retain:Z

    if-eqz v5, :cond_4f

    .line 741
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    .local v5, "displayMag":I
    goto :goto_61

    .line 742
    .end local v5    # "displayMag":I
    :cond_4f
    iget-object v5, p0, Landroid/icu/number/Precision$FracSigRounderImpl;->priority:Landroid/icu/number/NumberFormatter$RoundingPriority;

    sget-object v6, Landroid/icu/number/NumberFormatter$RoundingPriority;->RELAXED:Landroid/icu/number/NumberFormatter$RoundingPriority;

    if-ne v5, v6, :cond_5b

    .line 743
    if-gt v1, v0, :cond_59

    .line 744
    move v5, v4

    .restart local v5    # "displayMag":I
    goto :goto_61

    .line 746
    .end local v5    # "displayMag":I
    :cond_59
    move v5, v3

    .restart local v5    # "displayMag":I
    goto :goto_61

    .line 749
    .end local v5    # "displayMag":I
    :cond_5b
    nop

    .line 750
    if-gt v1, v0, :cond_60

    .line 751
    move v5, v3

    .restart local v5    # "displayMag":I
    goto :goto_61

    .line 753
    .end local v5    # "displayMag":I
    :cond_60
    move v5, v4

    .line 756
    .restart local v5    # "displayMag":I
    :goto_61
    const/4 v6, 0x0

    neg-int v7, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, p1, v6}, Landroid/icu/number/Precision$FracSigRounderImpl;->setResolvedMinFraction(Landroid/icu/impl/number/DecimalQuantity;I)V

    .line 757
    return-void
.end method

.method blacklist createCopy()Landroid/icu/number/Precision$FracSigRounderImpl;
    .registers 8

    .line 761
    new-instance v0, Landroid/icu/number/Precision$FracSigRounderImpl;

    iget v1, p0, Landroid/icu/number/Precision$FracSigRounderImpl;->minFrac:I

    iget v2, p0, Landroid/icu/number/Precision$FracSigRounderImpl;->maxFrac:I

    iget v3, p0, Landroid/icu/number/Precision$FracSigRounderImpl;->minSig:I

    iget v4, p0, Landroid/icu/number/Precision$FracSigRounderImpl;->maxSig:I

    iget-object v5, p0, Landroid/icu/number/Precision$FracSigRounderImpl;->priority:Landroid/icu/number/NumberFormatter$RoundingPriority;

    iget-boolean v6, p0, Landroid/icu/number/Precision$FracSigRounderImpl;->retain:Z

    invoke-direct/range {v0 .. v6}, Landroid/icu/number/Precision$FracSigRounderImpl;-><init>(IIIILandroid/icu/number/NumberFormatter$RoundingPriority;Z)V

    .line 762
    .local v0, "copy":Landroid/icu/number/Precision$FracSigRounderImpl;
    invoke-virtual {p0, v0}, Landroid/icu/number/Precision$FracSigRounderImpl;->createCopyHelper(Landroid/icu/number/Precision;)V

    .line 763
    return-object v0
.end method

.method bridge synthetic blacklist createCopy()Landroid/icu/number/Precision;
    .registers 2

    .line 699
    invoke-virtual {p0}, Landroid/icu/number/Precision$FracSigRounderImpl;->createCopy()Landroid/icu/number/Precision$FracSigRounderImpl;

    move-result-object v0

    return-object v0
.end method
