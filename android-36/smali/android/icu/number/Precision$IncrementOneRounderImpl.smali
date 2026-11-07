.class Landroid/icu/number/Precision$IncrementOneRounderImpl;
.super Landroid/icu/number/Precision$IncrementRounderImpl;
.source "Precision.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/number/Precision;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IncrementOneRounderImpl"
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

    .line 801
    invoke-direct {p0, p1}, Landroid/icu/number/Precision$IncrementRounderImpl;-><init>(Ljava/math/BigDecimal;)V

    .line 802
    iput p2, p0, Landroid/icu/number/Precision$IncrementOneRounderImpl;->minFrac:I

    .line 803
    iput p3, p0, Landroid/icu/number/Precision$IncrementOneRounderImpl;->maxFrac:I

    .line 804
    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/icu/impl/number/DecimalQuantity;)V
    .registers 4
    .param p1, "value"    # Landroid/icu/impl/number/DecimalQuantity;

    .line 808
    iget v0, p0, Landroid/icu/number/Precision$IncrementOneRounderImpl;->maxFrac:I

    neg-int v0, v0

    iget-object v1, p0, Landroid/icu/number/Precision$IncrementOneRounderImpl;->mathContext:Ljava/math/MathContext;

    invoke-interface {p1, v0, v1}, Landroid/icu/impl/number/DecimalQuantity;->roundToMagnitude(ILjava/math/MathContext;)V

    .line 809
    iget v0, p0, Landroid/icu/number/Precision$IncrementOneRounderImpl;->minFrac:I

    invoke-virtual {p0, p1, v0}, Landroid/icu/number/Precision$IncrementOneRounderImpl;->setResolvedMinFraction(Landroid/icu/impl/number/DecimalQuantity;I)V

    .line 810
    return-void
.end method

.method blacklist createCopy()Landroid/icu/number/Precision$IncrementOneRounderImpl;
    .registers 5

    .line 814
    new-instance v0, Landroid/icu/number/Precision$IncrementOneRounderImpl;

    iget-object v1, p0, Landroid/icu/number/Precision$IncrementOneRounderImpl;->increment:Ljava/math/BigDecimal;

    iget v2, p0, Landroid/icu/number/Precision$IncrementOneRounderImpl;->minFrac:I

    iget v3, p0, Landroid/icu/number/Precision$IncrementOneRounderImpl;->maxFrac:I

    invoke-direct {v0, v1, v2, v3}, Landroid/icu/number/Precision$IncrementOneRounderImpl;-><init>(Ljava/math/BigDecimal;II)V

    .line 815
    .local v0, "copy":Landroid/icu/number/Precision$IncrementOneRounderImpl;
    invoke-virtual {p0, v0}, Landroid/icu/number/Precision$IncrementOneRounderImpl;->createCopyHelper(Landroid/icu/number/Precision;)V

    .line 816
    return-object v0
.end method

.method bridge synthetic blacklist createCopy()Landroid/icu/number/Precision$IncrementRounderImpl;
    .registers 2

    .line 796
    invoke-virtual {p0}, Landroid/icu/number/Precision$IncrementOneRounderImpl;->createCopy()Landroid/icu/number/Precision$IncrementOneRounderImpl;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic blacklist createCopy()Landroid/icu/number/Precision;
    .registers 2

    .line 796
    invoke-virtual {p0}, Landroid/icu/number/Precision$IncrementOneRounderImpl;->createCopy()Landroid/icu/number/Precision$IncrementOneRounderImpl;

    move-result-object v0

    return-object v0
.end method
