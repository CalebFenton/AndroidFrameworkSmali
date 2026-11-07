.class Landroid/icu/number/Precision$SignificantRounderImpl;
.super Landroid/icu/number/Precision;
.source "Precision.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/number/Precision;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SignificantRounderImpl"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field final blacklist maxSig:I

.field final blacklist minSig:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 663
    const-class v0, Landroid/icu/number/Precision;

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .registers 3
    .param p1, "minSig"    # I
    .param p2, "maxSig"    # I

    .line 667
    invoke-direct {p0}, Landroid/icu/number/Precision;-><init>()V

    .line 668
    iput p1, p0, Landroid/icu/number/Precision$SignificantRounderImpl;->minSig:I

    .line 669
    iput p2, p0, Landroid/icu/number/Precision$SignificantRounderImpl;->maxSig:I

    .line 670
    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/icu/impl/number/DecimalQuantity;)V
    .registers 4
    .param p1, "value"    # Landroid/icu/impl/number/DecimalQuantity;

    .line 674
    iget v0, p0, Landroid/icu/number/Precision$SignificantRounderImpl;->maxSig:I

    invoke-static {p1, v0}, Landroid/icu/number/Precision;->-$$Nest$smgetRoundingMagnitudeSignificant(Landroid/icu/impl/number/DecimalQuantity;I)I

    move-result v0

    iget-object v1, p0, Landroid/icu/number/Precision$SignificantRounderImpl;->mathContext:Ljava/math/MathContext;

    invoke-interface {p1, v0, v1}, Landroid/icu/impl/number/DecimalQuantity;->roundToMagnitude(ILjava/math/MathContext;)V

    .line 675
    iget v0, p0, Landroid/icu/number/Precision$SignificantRounderImpl;->minSig:I

    invoke-static {p1, v0}, Landroid/icu/number/Precision;->-$$Nest$smgetDisplayMagnitudeSignificant(Landroid/icu/impl/number/DecimalQuantity;I)I

    move-result v0

    neg-int v0, v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/icu/number/Precision$SignificantRounderImpl;->setResolvedMinFraction(Landroid/icu/impl/number/DecimalQuantity;I)V

    .line 677
    invoke-interface {p1}, Landroid/icu/impl/number/DecimalQuantity;->isZeroish()Z

    move-result v0

    if-eqz v0, :cond_28

    iget v0, p0, Landroid/icu/number/Precision$SignificantRounderImpl;->minSig:I

    if-lez v0, :cond_28

    .line 678
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/icu/impl/number/DecimalQuantity;->setMinInteger(I)V

    .line 680
    :cond_28
    return-void
.end method

.method public blacklist apply(Landroid/icu/impl/number/DecimalQuantity;I)V
    .registers 4
    .param p1, "quantity"    # Landroid/icu/impl/number/DecimalQuantity;
    .param p2, "minInt"    # I

    .line 687
    nop

    .line 688
    iget v0, p0, Landroid/icu/number/Precision$SignificantRounderImpl;->minSig:I

    sub-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Landroid/icu/number/Precision$SignificantRounderImpl;->setResolvedMinFraction(Landroid/icu/impl/number/DecimalQuantity;I)V

    .line 689
    return-void
.end method

.method blacklist createCopy()Landroid/icu/number/Precision$SignificantRounderImpl;
    .registers 4

    .line 693
    new-instance v0, Landroid/icu/number/Precision$SignificantRounderImpl;

    iget v1, p0, Landroid/icu/number/Precision$SignificantRounderImpl;->minSig:I

    iget v2, p0, Landroid/icu/number/Precision$SignificantRounderImpl;->maxSig:I

    invoke-direct {v0, v1, v2}, Landroid/icu/number/Precision$SignificantRounderImpl;-><init>(II)V

    .line 694
    .local v0, "copy":Landroid/icu/number/Precision$SignificantRounderImpl;
    invoke-virtual {p0, v0}, Landroid/icu/number/Precision$SignificantRounderImpl;->createCopyHelper(Landroid/icu/number/Precision;)V

    .line 695
    return-object v0
.end method

.method bridge synthetic blacklist createCopy()Landroid/icu/number/Precision;
    .registers 2

    .line 663
    invoke-virtual {p0}, Landroid/icu/number/Precision$SignificantRounderImpl;->createCopy()Landroid/icu/number/Precision$SignificantRounderImpl;

    move-result-object v0

    return-object v0
.end method
