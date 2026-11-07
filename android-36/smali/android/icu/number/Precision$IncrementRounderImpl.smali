.class Landroid/icu/number/Precision$IncrementRounderImpl;
.super Landroid/icu/number/Precision;
.source "Precision.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/number/Precision;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IncrementRounderImpl"
.end annotation


# instance fields
.field final blacklist increment:Ljava/math/BigDecimal;


# direct methods
.method public constructor blacklist <init>(Ljava/math/BigDecimal;)V
    .registers 2
    .param p1, "increment"    # Ljava/math/BigDecimal;

    .line 773
    invoke-direct {p0}, Landroid/icu/number/Precision;-><init>()V

    .line 774
    iput-object p1, p0, Landroid/icu/number/Precision$IncrementRounderImpl;->increment:Ljava/math/BigDecimal;

    .line 775
    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/icu/impl/number/DecimalQuantity;)V
    .registers 4
    .param p1, "value"    # Landroid/icu/impl/number/DecimalQuantity;

    .line 779
    iget-object v0, p0, Landroid/icu/number/Precision$IncrementRounderImpl;->increment:Ljava/math/BigDecimal;

    iget-object v1, p0, Landroid/icu/number/Precision$IncrementRounderImpl;->mathContext:Ljava/math/MathContext;

    invoke-interface {p1, v0, v1}, Landroid/icu/impl/number/DecimalQuantity;->roundToIncrement(Ljava/math/BigDecimal;Ljava/math/MathContext;)V

    .line 780
    iget-object v0, p0, Landroid/icu/number/Precision$IncrementRounderImpl;->increment:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/icu/number/Precision$IncrementRounderImpl;->setResolvedMinFraction(Landroid/icu/impl/number/DecimalQuantity;I)V

    .line 781
    return-void
.end method

.method blacklist createCopy()Landroid/icu/number/Precision$IncrementRounderImpl;
    .registers 3

    .line 785
    new-instance v0, Landroid/icu/number/Precision$IncrementRounderImpl;

    iget-object v1, p0, Landroid/icu/number/Precision$IncrementRounderImpl;->increment:Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Landroid/icu/number/Precision$IncrementRounderImpl;-><init>(Ljava/math/BigDecimal;)V

    .line 786
    .local v0, "copy":Landroid/icu/number/Precision$IncrementRounderImpl;
    invoke-virtual {p0, v0}, Landroid/icu/number/Precision$IncrementRounderImpl;->createCopyHelper(Landroid/icu/number/Precision;)V

    .line 787
    return-object v0
.end method

.method bridge synthetic blacklist createCopy()Landroid/icu/number/Precision;
    .registers 2

    .line 770
    invoke-virtual {p0}, Landroid/icu/number/Precision$IncrementRounderImpl;->createCopy()Landroid/icu/number/Precision$IncrementRounderImpl;

    move-result-object v0

    return-object v0
.end method
