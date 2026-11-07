.class public Landroid/icu/number/Precision$BogusRounder;
.super Landroid/icu/number/Precision;
.source "Precision.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/number/Precision;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BogusRounder"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 586
    invoke-direct {p0}, Landroid/icu/number/Precision;-><init>()V

    .line 587
    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/icu/impl/number/DecimalQuantity;)V
    .registers 4
    .param p1, "value"    # Landroid/icu/impl/number/DecimalQuantity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 597
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "BogusRounder must not be applied"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method blacklist createCopy()Landroid/icu/number/Precision$BogusRounder;
    .registers 2

    .line 602
    new-instance v0, Landroid/icu/number/Precision$BogusRounder;

    invoke-direct {v0}, Landroid/icu/number/Precision$BogusRounder;-><init>()V

    .line 603
    .local v0, "copy":Landroid/icu/number/Precision$BogusRounder;
    invoke-virtual {p0, v0}, Landroid/icu/number/Precision$BogusRounder;->createCopyHelper(Landroid/icu/number/Precision;)V

    .line 604
    return-object v0
.end method

.method bridge synthetic blacklist createCopy()Landroid/icu/number/Precision;
    .registers 2

    .line 578
    invoke-virtual {p0}, Landroid/icu/number/Precision$BogusRounder;->createCopy()Landroid/icu/number/Precision$BogusRounder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist into(Landroid/icu/number/Precision;)Landroid/icu/number/Precision;
    .registers 3
    .param p1, "precision"    # Landroid/icu/number/Precision;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 615
    invoke-virtual {p1}, Landroid/icu/number/Precision;->createCopy()Landroid/icu/number/Precision;

    move-result-object v0

    .line 616
    .local v0, "copy":Landroid/icu/number/Precision;
    invoke-virtual {p0, v0}, Landroid/icu/number/Precision$BogusRounder;->createCopyHelper(Landroid/icu/number/Precision;)V

    .line 617
    return-object v0
.end method
