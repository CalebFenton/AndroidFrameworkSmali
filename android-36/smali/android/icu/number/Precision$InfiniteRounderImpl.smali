.class Landroid/icu/number/Precision$InfiniteRounderImpl;
.super Landroid/icu/number/Precision;
.source "Precision.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/number/Precision;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InfiniteRounderImpl"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 623
    invoke-direct {p0}, Landroid/icu/number/Precision;-><init>()V

    .line 624
    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/icu/impl/number/DecimalQuantity;)V
    .registers 3
    .param p1, "value"    # Landroid/icu/impl/number/DecimalQuantity;

    .line 628
    invoke-interface {p1}, Landroid/icu/impl/number/DecimalQuantity;->roundToInfinity()V

    .line 629
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/icu/number/Precision$InfiniteRounderImpl;->setResolvedMinFraction(Landroid/icu/impl/number/DecimalQuantity;I)V

    .line 630
    return-void
.end method

.method blacklist createCopy()Landroid/icu/number/Precision$InfiniteRounderImpl;
    .registers 2

    .line 634
    new-instance v0, Landroid/icu/number/Precision$InfiniteRounderImpl;

    invoke-direct {v0}, Landroid/icu/number/Precision$InfiniteRounderImpl;-><init>()V

    .line 635
    .local v0, "copy":Landroid/icu/number/Precision$InfiniteRounderImpl;
    invoke-virtual {p0, v0}, Landroid/icu/number/Precision$InfiniteRounderImpl;->createCopyHelper(Landroid/icu/number/Precision;)V

    .line 636
    return-object v0
.end method

.method bridge synthetic blacklist createCopy()Landroid/icu/number/Precision;
    .registers 2

    .line 621
    invoke-virtual {p0}, Landroid/icu/number/Precision$InfiniteRounderImpl;->createCopy()Landroid/icu/number/Precision$InfiniteRounderImpl;

    move-result-object v0

    return-object v0
.end method
