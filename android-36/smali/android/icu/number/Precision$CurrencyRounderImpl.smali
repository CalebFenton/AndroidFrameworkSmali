.class Landroid/icu/number/Precision$CurrencyRounderImpl;
.super Landroid/icu/number/CurrencyPrecision;
.source "Precision.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/number/Precision;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CurrencyRounderImpl"
.end annotation


# instance fields
.field final blacklist usage:Landroid/icu/util/Currency$CurrencyUsage;


# direct methods
.method public constructor blacklist <init>(Landroid/icu/util/Currency$CurrencyUsage;)V
    .registers 2
    .param p1, "usage"    # Landroid/icu/util/Currency$CurrencyUsage;

    .line 850
    invoke-direct {p0}, Landroid/icu/number/CurrencyPrecision;-><init>()V

    .line 851
    iput-object p1, p0, Landroid/icu/number/Precision$CurrencyRounderImpl;->usage:Landroid/icu/util/Currency$CurrencyUsage;

    .line 852
    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/icu/impl/number/DecimalQuantity;)V
    .registers 3
    .param p1, "value"    # Landroid/icu/impl/number/DecimalQuantity;

    .line 857
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method blacklist createCopy()Landroid/icu/number/Precision$CurrencyRounderImpl;
    .registers 3

    .line 862
    new-instance v0, Landroid/icu/number/Precision$CurrencyRounderImpl;

    iget-object v1, p0, Landroid/icu/number/Precision$CurrencyRounderImpl;->usage:Landroid/icu/util/Currency$CurrencyUsage;

    invoke-direct {v0, v1}, Landroid/icu/number/Precision$CurrencyRounderImpl;-><init>(Landroid/icu/util/Currency$CurrencyUsage;)V

    .line 863
    .local v0, "copy":Landroid/icu/number/Precision$CurrencyRounderImpl;
    invoke-virtual {p0, v0}, Landroid/icu/number/Precision$CurrencyRounderImpl;->createCopyHelper(Landroid/icu/number/Precision;)V

    .line 864
    return-object v0
.end method

.method bridge synthetic blacklist createCopy()Landroid/icu/number/Precision;
    .registers 2

    .line 847
    invoke-virtual {p0}, Landroid/icu/number/Precision$CurrencyRounderImpl;->createCopy()Landroid/icu/number/Precision$CurrencyRounderImpl;

    move-result-object v0

    return-object v0
.end method
