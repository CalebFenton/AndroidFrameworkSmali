.class Landroid/icu/number/Precision$IncrementFiveRounderImpl;
.super Landroid/icu/number/Precision$IncrementRounderImpl;
.source "Precision.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/number/Precision;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IncrementFiveRounderImpl"
.end annotation


# instance fields
.field final blacklist maxFrac:I

.field final blacklist minFrac:I


# direct methods
.method public constructor blacklist <init>(Ljava/math/BigDecimal;II)V
    .registers 4
    .param p1, "increment"    # Ljava/math/BigDecimal;
    .param p2, "minFrac"    # I
    .param p3, "maxFrac"    # I

    .line 828
    invoke-direct {p0, p1}, Landroid/icu/number/Precision$IncrementRounderImpl;-><init>(Ljava/math/BigDecimal;)V

    .line 829
    iput p2, p0, Landroid/icu/number/Precision$IncrementFiveRounderImpl;->minFrac:I

    .line 830
    iput p3, p0, Landroid/icu/number/Precision$IncrementFiveRounderImpl;->maxFrac:I

    .line 831
    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/icu/impl/number/DecimalQuantity;)V
    .registers 4
    .param p1, "value"    # Landroid/icu/impl/number/DecimalQuantity;

    .line 835
    iget v0, p0, Landroid/icu/number/Precision$IncrementFiveRounderImpl;->maxFrac:I

    neg-int v0, v0

    iget-object v1, p0, Landroid/icu/number/Precision$IncrementFiveRounderImpl;->mathContext:Ljava/math/MathContext;

    invoke-interface {p1, v0, v1}, Landroid/icu/impl/number/DecimalQuantity;->roundToNickel(ILjava/math/MathContext;)V

    .line 836
    iget v0, p0, Landroid/icu/number/Precision$IncrementFiveRounderImpl;->minFrac:I

    invoke-virtual {p0, p1, v0}, Landroid/icu/number/Precision$IncrementFiveRounderImpl;->setResolvedMinFraction(Landroid/icu/impl/number/DecimalQuantity;I)V

    .line 837
    return-void
.end method

.method blacklist createCopy()Landroid/icu/number/Precision$IncrementFiveRounderImpl;
    .registers 5

    .line 841
    new-instance v0, Landroid/icu/number/Precision$IncrementFiveRounderImpl;

    iget-object v1, p0, Landroid/icu/number/Precision$IncrementFiveRounderImpl;->increment:Ljava/math/BigDecimal;

    iget v2, p0, Landroid/icu/number/Precision$IncrementFiveRounderImpl;->minFrac:I

    iget v3, p0, Landroid/icu/number/Precision$IncrementFiveRounderImpl;->maxFrac:I

    invoke-direct {v0, v1, v2, v3}, Landroid/icu/number/Precision$IncrementFiveRounderImpl;-><init>(Ljava/math/BigDecimal;II)V

    .line 842
    .local v0, "copy":Landroid/icu/number/Precision$IncrementFiveRounderImpl;
    invoke-virtual {p0, v0}, Landroid/icu/number/Precision$IncrementFiveRounderImpl;->createCopyHelper(Landroid/icu/number/Precision;)V

    .line 843
    return-object v0
.end method

.method bridge synthetic blacklist createCopy()Landroid/icu/number/Precision$IncrementRounderImpl;
    .registers 2

    .line 823
    invoke-virtual {p0}, Landroid/icu/number/Precision$IncrementFiveRounderImpl;->createCopy()Landroid/icu/number/Precision$IncrementFiveRounderImpl;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic blacklist createCopy()Landroid/icu/number/Precision;
    .registers 2

    .line 823
    invoke-virtual {p0}, Landroid/icu/number/Precision$IncrementFiveRounderImpl;->createCopy()Landroid/icu/number/Precision$IncrementFiveRounderImpl;

    move-result-object v0

    return-object v0
.end method
