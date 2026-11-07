.class public Landroid/icu/number/LocalizedNumberRangeFormatter;
.super Landroid/icu/number/NumberRangeFormatterSettings;
.source "LocalizedNumberRangeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/icu/number/NumberRangeFormatterSettings<",
        "Landroid/icu/number/LocalizedNumberRangeFormatter;",
        ">;"
    }
.end annotation


# instance fields
.field private volatile blacklist fImpl:Landroid/icu/number/NumberRangeFormatterImpl;


# direct methods
.method constructor blacklist <init>(Landroid/icu/number/NumberRangeFormatterSettings;ILjava/lang/Object;)V
    .registers 4
    .param p2, "key"    # I
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/number/NumberRangeFormatterSettings<",
            "*>;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 22
    .local p1, "parent":Landroid/icu/number/NumberRangeFormatterSettings;, "Landroid/icu/number/NumberRangeFormatterSettings<*>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/number/NumberRangeFormatterSettings;-><init>(Landroid/icu/number/NumberRangeFormatterSettings;ILjava/lang/Object;)V

    .line 23
    return-void
.end method


# virtual methods
.method blacklist create(ILjava/lang/Object;)Landroid/icu/number/LocalizedNumberRangeFormatter;
    .registers 4
    .param p1, "key"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 101
    new-instance v0, Landroid/icu/number/LocalizedNumberRangeFormatter;

    invoke-direct {v0, p0, p1, p2}, Landroid/icu/number/LocalizedNumberRangeFormatter;-><init>(Landroid/icu/number/NumberRangeFormatterSettings;ILjava/lang/Object;)V

    return-object v0
.end method

.method bridge synthetic blacklist create(ILjava/lang/Object;)Landroid/icu/number/NumberRangeFormatterSettings;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 17
    invoke-virtual {p0, p1, p2}, Landroid/icu/number/LocalizedNumberRangeFormatter;->create(ILjava/lang/Object;)Landroid/icu/number/LocalizedNumberRangeFormatter;

    move-result-object p1

    return-object p1
.end method

.method blacklist formatImpl(Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/number/DecimalQuantity;Z)Landroid/icu/number/FormattedNumberRange;
    .registers 6
    .param p1, "first"    # Landroid/icu/impl/number/DecimalQuantity;
    .param p2, "second"    # Landroid/icu/impl/number/DecimalQuantity;
    .param p3, "equalBeforeRounding"    # Z

    .line 93
    iget-object v0, p0, Landroid/icu/number/LocalizedNumberRangeFormatter;->fImpl:Landroid/icu/number/NumberRangeFormatterImpl;

    if-nez v0, :cond_f

    .line 94
    new-instance v0, Landroid/icu/number/NumberRangeFormatterImpl;

    invoke-virtual {p0}, Landroid/icu/number/LocalizedNumberRangeFormatter;->resolve()Landroid/icu/impl/number/range/RangeMacroProps;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/number/NumberRangeFormatterImpl;-><init>(Landroid/icu/impl/number/range/RangeMacroProps;)V

    iput-object v0, p0, Landroid/icu/number/LocalizedNumberRangeFormatter;->fImpl:Landroid/icu/number/NumberRangeFormatterImpl;

    .line 96
    :cond_f
    iget-object v0, p0, Landroid/icu/number/LocalizedNumberRangeFormatter;->fImpl:Landroid/icu/number/NumberRangeFormatterImpl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/icu/number/NumberRangeFormatterImpl;->format(Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/number/DecimalQuantity;Z)Landroid/icu/number/FormattedNumberRange;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api formatRange(DD)Landroid/icu/number/FormattedNumberRange;
    .registers 8
    .param p1, "first"    # D
    .param p3, "second"    # D

    .line 54
    new-instance v0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-direct {v0, p1, p2}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>(D)V

    .line 55
    .local v0, "dq1":Landroid/icu/impl/number/DecimalQuantity;
    new-instance v1, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-direct {v1, p3, p4}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>(D)V

    .line 58
    .local v1, "dq2":Landroid/icu/impl/number/DecimalQuantity;
    cmpl-double v2, p1, p3

    if-nez v2, :cond_10

    const/4 v2, 0x1

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    invoke-virtual {p0, v0, v1, v2}, Landroid/icu/number/LocalizedNumberRangeFormatter;->formatImpl(Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/number/DecimalQuantity;Z)Landroid/icu/number/FormattedNumberRange;

    move-result-object v2

    return-object v2
.end method

.method public whitelist test-api formatRange(II)Landroid/icu/number/FormattedNumberRange;
    .registers 6
    .param p1, "first"    # I
    .param p2, "second"    # I

    .line 37
    new-instance v0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-direct {v0, p1}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>(I)V

    .line 38
    .local v0, "dq1":Landroid/icu/impl/number/DecimalQuantity;
    new-instance v1, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-direct {v1, p2}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>(I)V

    .line 39
    .local v1, "dq2":Landroid/icu/impl/number/DecimalQuantity;
    if-ne p1, p2, :cond_e

    const/4 v2, 0x1

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    invoke-virtual {p0, v0, v1, v2}, Landroid/icu/number/LocalizedNumberRangeFormatter;->formatImpl(Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/number/DecimalQuantity;Z)Landroid/icu/number/FormattedNumberRange;

    move-result-object v2

    return-object v2
.end method

.method public whitelist test-api formatRange(Ljava/lang/Number;Ljava/lang/Number;)Landroid/icu/number/FormattedNumberRange;
    .registers 6
    .param p1, "first"    # Ljava/lang/Number;
    .param p2, "second"    # Ljava/lang/Number;

    .line 74
    if-eqz p1, :cond_17

    if-eqz p2, :cond_17

    .line 77
    new-instance v0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-direct {v0, p1}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>(Ljava/lang/Number;)V

    .line 78
    .local v0, "dq1":Landroid/icu/impl/number/DecimalQuantity;
    new-instance v1, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-direct {v1, p2}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>(Ljava/lang/Number;)V

    .line 79
    .local v1, "dq2":Landroid/icu/impl/number/DecimalQuantity;
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/icu/number/LocalizedNumberRangeFormatter;->formatImpl(Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/number/DecimalQuantity;Z)Landroid/icu/number/FormattedNumberRange;

    move-result-object v2

    return-object v2

    .line 75
    .end local v0    # "dq1":Landroid/icu/impl/number/DecimalQuantity;
    .end local v1    # "dq2":Landroid/icu/impl/number/DecimalQuantity;
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot format null values in range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api withoutLocale()Landroid/icu/number/UnlocalizedNumberRangeFormatter;
    .registers 4

    .line 89
    new-instance v0, Landroid/icu/number/UnlocalizedNumberRangeFormatter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroid/icu/number/UnlocalizedNumberRangeFormatter;-><init>(Landroid/icu/number/NumberRangeFormatterSettings;ILjava/lang/Object;)V

    return-object v0
.end method
