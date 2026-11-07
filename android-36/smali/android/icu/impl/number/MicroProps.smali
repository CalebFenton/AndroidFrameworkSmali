.class public Landroid/icu/impl/number/MicroProps;
.super Ljava/lang/Object;
.source "MicroProps.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/icu/impl/number/MicroPropsGenerator;


# instance fields
.field public blacklist currencyAsDecimal:Ljava/lang/String;

.field public blacklist decimal:Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

.field private volatile greylist-max-o exhausted:Z

.field public blacklist gender:Ljava/lang/String;

.field public blacklist grouping:Landroid/icu/impl/number/Grouper;

.field private final greylist-max-o immutable:Z

.field public blacklist indexOfQuantity:I

.field public blacklist integerWidth:Landroid/icu/number/IntegerWidth;

.field public blacklist mixedMeasures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/util/Measure;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist modInner:Landroid/icu/impl/number/Modifier;

.field public blacklist modMiddle:Landroid/icu/impl/number/Modifier;

.field public blacklist modOuter:Landroid/icu/impl/number/Modifier;

.field public blacklist nsName:Ljava/lang/String;

.field public blacklist outputUnit:Landroid/icu/util/MeasureUnit;

.field public blacklist padding:Landroid/icu/impl/number/Padder;

.field public blacklist rounder:Landroid/icu/number/Precision;

.field public blacklist sign:Landroid/icu/number/NumberFormatter$SignDisplay;

.field public blacklist symbols:Landroid/icu/text/DecimalFormatSymbols;

.field public blacklist useCurrency:Z


# direct methods
.method public constructor blacklist <init>(Z)V
    .registers 3
    .param p1, "immutable"    # Z

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/impl/number/MicroProps;->indexOfQuantity:I

    .line 80
    iput-boolean p1, p0, Landroid/icu/impl/number/MicroProps;->immutable:Z

    .line 81
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 112
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 113
    :catch_5
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public blacklist processQuantity(Landroid/icu/impl/number/DecimalQuantity;)Landroid/icu/impl/number/MicroProps;
    .registers 4
    .param p1, "quantity"    # Landroid/icu/impl/number/DecimalQuantity;

    .line 98
    iget-boolean v0, p0, Landroid/icu/impl/number/MicroProps;->immutable:Z

    if-eqz v0, :cond_b

    .line 99
    invoke-virtual {p0}, Landroid/icu/impl/number/MicroProps;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/number/MicroProps;

    return-object v0

    .line 100
    :cond_b
    iget-boolean v0, p0, Landroid/icu/impl/number/MicroProps;->exhausted:Z

    if-nez v0, :cond_13

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/impl/number/MicroProps;->exhausted:Z

    .line 105
    return-object p0

    .line 102
    :cond_13
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Cannot re-use a mutable MicroProps in the quantity chain"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
