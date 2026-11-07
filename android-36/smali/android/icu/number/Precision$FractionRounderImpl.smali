.class Landroid/icu/number/Precision$FractionRounderImpl;
.super Landroid/icu/number/FractionPrecision;
.source "Precision.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/number/Precision;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FractionRounderImpl"
.end annotation


# instance fields
.field final blacklist maxFrac:I

.field final blacklist minFrac:I


# direct methods
.method public constructor blacklist <init>(II)V
    .registers 3
    .param p1, "minFrac"    # I
    .param p2, "maxFrac"    # I

    .line 644
    invoke-direct {p0}, Landroid/icu/number/FractionPrecision;-><init>()V

    .line 645
    iput p1, p0, Landroid/icu/number/Precision$FractionRounderImpl;->minFrac:I

    .line 646
    iput p2, p0, Landroid/icu/number/Precision$FractionRounderImpl;->maxFrac:I

    .line 647
    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/icu/impl/number/DecimalQuantity;)V
    .registers 4
    .param p1, "value"    # Landroid/icu/impl/number/DecimalQuantity;

    .line 651
    iget v0, p0, Landroid/icu/number/Precision$FractionRounderImpl;->maxFrac:I

    invoke-static {v0}, Landroid/icu/number/Precision;->-$$Nest$smgetRoundingMagnitudeFraction(I)I

    move-result v0

    iget-object v1, p0, Landroid/icu/number/Precision$FractionRounderImpl;->mathContext:Ljava/math/MathContext;

    invoke-interface {p1, v0, v1}, Landroid/icu/impl/number/DecimalQuantity;->roundToMagnitude(ILjava/math/MathContext;)V

    .line 652
    iget v0, p0, Landroid/icu/number/Precision$FractionRounderImpl;->minFrac:I

    invoke-static {v0}, Landroid/icu/number/Precision;->-$$Nest$smgetDisplayMagnitudeFraction(I)I

    move-result v0

    neg-int v0, v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/icu/number/Precision$FractionRounderImpl;->setResolvedMinFraction(Landroid/icu/impl/number/DecimalQuantity;I)V

    .line 653
    return-void
.end method

.method blacklist createCopy()Landroid/icu/number/Precision$FractionRounderImpl;
    .registers 4

    .line 657
    new-instance v0, Landroid/icu/number/Precision$FractionRounderImpl;

    iget v1, p0, Landroid/icu/number/Precision$FractionRounderImpl;->minFrac:I

    iget v2, p0, Landroid/icu/number/Precision$FractionRounderImpl;->maxFrac:I

    invoke-direct {v0, v1, v2}, Landroid/icu/number/Precision$FractionRounderImpl;-><init>(II)V

    .line 658
    .local v0, "copy":Landroid/icu/number/Precision$FractionRounderImpl;
    invoke-virtual {p0, v0}, Landroid/icu/number/Precision$FractionRounderImpl;->createCopyHelper(Landroid/icu/number/Precision;)V

    .line 659
    return-object v0
.end method

.method bridge synthetic blacklist createCopy()Landroid/icu/number/Precision;
    .registers 2

    .line 640
    invoke-virtual {p0}, Landroid/icu/number/Precision$FractionRounderImpl;->createCopy()Landroid/icu/number/Precision$FractionRounderImpl;

    move-result-object v0

    return-object v0
.end method
