.class public abstract Landroid/icu/number/NumberFormatterSettings;
.super Ljava/lang/Object;
.source "NumberFormatterSettings.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/icu/number/NumberFormatterSettings<",
        "*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final blacklist KEY_DECIMAL:I = 0xc

.field static final blacklist KEY_GROUPING:I = 0x6

.field static final blacklist KEY_INTEGER:I = 0x8

.field static final blacklist KEY_LOCALE:I = 0x1

.field static final blacklist KEY_MACROS:I = 0x0

.field static final blacklist KEY_MAX:I = 0x12

.field static final blacklist KEY_NOTATION:I = 0x2

.field static final blacklist KEY_PADDER:I = 0x7

.field static final blacklist KEY_PER_UNIT:I = 0xf

.field static final blacklist KEY_PRECISION:I = 0x4

.field static final blacklist KEY_ROUNDING_MODE:I = 0x5

.field static final blacklist KEY_SCALE:I = 0xd

.field static final blacklist KEY_SIGN:I = 0xb

.field static final blacklist KEY_SYMBOLS:I = 0x9

.field static final blacklist KEY_THRESHOLD:I = 0xe

.field static final blacklist KEY_UNIT:I = 0x3

.field static final blacklist KEY_UNIT_DISPLAY_CASE:I = 0x11

.field static final blacklist KEY_UNIT_WIDTH:I = 0xa

.field static final blacklist KEY_USAGE:I = 0x10


# instance fields
.field private final blacklist key:I

.field private final blacklist parent:Landroid/icu/number/NumberFormatterSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/number/NumberFormatterSettings<",
            "*>;"
        }
    .end annotation
.end field

.field private volatile blacklist resolvedMacros:Landroid/icu/impl/number/MacroProps;

.field private final blacklist value:Ljava/lang/Object;


# direct methods
.method constructor blacklist <init>(Landroid/icu/number/NumberFormatterSettings;ILjava/lang/Object;)V
    .registers 4
    .param p2, "key"    # I
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/number/NumberFormatterSettings<",
            "*>;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 58
    .local p0, "this":Landroid/icu/number/NumberFormatterSettings;, "Landroid/icu/number/NumberFormatterSettings<TT;>;"
    .local p1, "parent":Landroid/icu/number/NumberFormatterSettings;, "Landroid/icu/number/NumberFormatterSettings<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Landroid/icu/number/NumberFormatterSettings;->parent:Landroid/icu/number/NumberFormatterSettings;

    .line 60
    iput p2, p0, Landroid/icu/number/NumberFormatterSettings;->key:I

    .line 61
    iput-object p3, p0, Landroid/icu/number/NumberFormatterSettings;->value:Ljava/lang/Object;

    .line 62
    return-void
.end method


# virtual methods
.method abstract blacklist create(ILjava/lang/Object;)Landroid/icu/number/NumberFormatterSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method public whitelist test-api decimal(Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;)Landroid/icu/number/NumberFormatterSettings;
    .registers 3
    .param p1, "style"    # Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;",
            ")TT;"
        }
    .end annotation

    .line 444
    .local p0, "this":Landroid/icu/number/NumberFormatterSettings;, "Landroid/icu/number/NumberFormatterSettings<TT;>;"
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p1}, Landroid/icu/number/NumberFormatterSettings;->create(ILjava/lang/Object;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api displayOptions(Landroid/icu/text/DisplayOptions;)Landroid/icu/number/NumberFormatterSettings;
    .registers 5
    .param p1, "displayOptions"    # Landroid/icu/text/DisplayOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/DisplayOptions;",
            ")TT;"
        }
    .end annotation

    .line 541
    .local p0, "this":Landroid/icu/number/NumberFormatterSettings;, "Landroid/icu/number/NumberFormatterSettings<TT;>;"
    invoke-virtual {p1}, Landroid/icu/text/DisplayOptions;->getGrammaticalCase()Landroid/icu/text/DisplayOptions$GrammaticalCase;

    move-result-object v0

    sget-object v1, Landroid/icu/text/DisplayOptions$GrammaticalCase;->UNDEFINED:Landroid/icu/text/DisplayOptions$GrammaticalCase;

    const/16 v2, 0x11

    if-ne v0, v1, :cond_10

    .line 542
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Landroid/icu/number/NumberFormatterSettings;->create(ILjava/lang/Object;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object v0

    return-object v0

    .line 545
    :cond_10
    invoke-virtual {p1}, Landroid/icu/text/DisplayOptions;->getGrammaticalCase()Landroid/icu/text/DisplayOptions$GrammaticalCase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/DisplayOptions$GrammaticalCase;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Landroid/icu/number/NumberFormatterSettings;->create(ILjava/lang/Object;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 716
    .local p0, "this":Landroid/icu/number/NumberFormatterSettings;, "Landroid/icu/number/NumberFormatterSettings<TT;>;"
    if-ne p0, p1, :cond_4

    .line 717
    const/4 v0, 0x1

    return v0

    .line 719
    :cond_4
    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 720
    return v0

    .line 722
    :cond_8
    instance-of v1, p1, Landroid/icu/number/NumberFormatterSettings;

    if-nez v1, :cond_d

    .line 723
    return v0

    .line 725
    :cond_d
    invoke-virtual {p0}, Landroid/icu/number/NumberFormatterSettings;->resolve()Landroid/icu/impl/number/MacroProps;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Landroid/icu/number/NumberFormatterSettings;

    invoke-virtual {v1}, Landroid/icu/number/NumberFormatterSettings;->resolve()Landroid/icu/impl/number/MacroProps;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/impl/number/MacroProps;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api grouping(Landroid/icu/number/NumberFormatter$GroupingStrategy;)Landroid/icu/number/NumberFormatterSettings;
    .registers 3
    .param p1, "strategy"    # Landroid/icu/number/NumberFormatter$GroupingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/number/NumberFormatter$GroupingStrategy;",
            ")TT;"
        }
    .end annotation

    .line 256
    .local p0, "this":Landroid/icu/number/NumberFormatterSettings;, "Landroid/icu/number/NumberFormatterSettings<TT;>;"
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Landroid/icu/number/NumberFormatterSettings;->create(ILjava/lang/Object;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 708
    .local p0, "this":Landroid/icu/number/NumberFormatterSettings;, "Landroid/icu/number/NumberFormatterSettings<TT;>;"
    invoke-virtual {p0}, Landroid/icu/number/NumberFormatterSettings;->resolve()Landroid/icu/impl/number/MacroProps;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/impl/number/MacroProps;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api integerWidth(Landroid/icu/number/IntegerWidth;)Landroid/icu/number/NumberFormatterSettings;
    .registers 3
    .param p1, "style"    # Landroid/icu/number/IntegerWidth;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/number/IntegerWidth;",
            ")TT;"
        }
    .end annotation

    .line 283
    .local p0, "this":Landroid/icu/number/NumberFormatterSettings;, "Landroid/icu/number/NumberFormatterSettings<TT;>;"
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Landroid/icu/number/NumberFormatterSettings;->create(ILjava/lang/Object;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object v0

    return-object v0
.end method

.method public blacklist macros(Landroid/icu/impl/number/MacroProps;)Landroid/icu/number/NumberFormatterSettings;
    .registers 3
    .param p1, "macros"    # Landroid/icu/impl/number/MacroProps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/number/MacroProps;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 569
    .local p0, "this":Landroid/icu/number/NumberFormatterSettings;, "Landroid/icu/number/NumberFormatterSettings<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/icu/number/NumberFormatterSettings;->create(ILjava/lang/Object;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api notation(Landroid/icu/number/Notation;)Landroid/icu/number/NumberFormatterSettings;
    .registers 3
    .param p1, "notation"    # Landroid/icu/number/Notation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/number/Notation;",
            ")TT;"
        }
    .end annotation

    .line 92
    .local p0, "this":Landroid/icu/number/NumberFormatterSettings;, "Landroid/icu/number/NumberFormatterSettings<TT;>;"
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/icu/number/NumberFormatterSettings;->create(ILjava/lang/Object;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object v0

    return-object v0
.end method

.method public blacklist padding(Landroid/icu/impl/number/Padder;)Landroid/icu/number/NumberFormatterSettings;
    .registers 3
    .param p1, "padder"    # Landroid/icu/impl/number/Padder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/number/Padder;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 580
    .local p0, "this":Landroid/icu/number/NumberFormatterSettings;, "Landroid/icu/number/NumberFormatterSettings<TT;>;"
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Landroid/icu/number/NumberFormatterSettings;->create(ILjava/lang/Object;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api perUnit(Landroid/icu/util/MeasureUnit;)Landroid/icu/number/NumberFormatterSettings;
    .registers 3
    .param p1, "perUnit"    # Landroid/icu/util/MeasureUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/MeasureUnit;",
            ")TT;"
        }
    .end annotation

    .line 169
    .local p0, "this":Landroid/icu/number/NumberFormatterSettings;, "Landroid/icu/number/NumberFormatterSettings<TT;>;"
    const/16 v0, 0xf

    invoke-virtual {p0, v0, p1}, Landroid/icu/number/NumberFormatterSettings;->create(ILjava/lang/Object;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api precision(Landroid/icu/number/Precision;)Landroid/icu/number/NumberFormatterSettings;
    .registers 3
    .param p1, "precision"    # Landroid/icu/number/Precision;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/number/Precision;",
            ")TT;"
        }
    .end annotation

    .line 202
    .local p0, "this":Landroid/icu/number/NumberFormatterSettings;, "Landroid/icu/number/NumberFormatterSettings<TT;>;"
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Landroid/icu/number/NumberFormatterSettings;->create(ILjava/lang/Object;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object v0

    return-object v0
.end method

.method blacklist resolve()Landroid/icu/impl/number/MacroProps;
    .registers 11

    .line 621
    .local p0, "this":Landroid/icu/number/NumberFormatterSettings;, "Landroid/icu/number/NumberFormatterSettings<TT;>;"
    iget-object v0, p0, Landroid/icu/number/NumberFormatterSettings;->resolvedMacros:Landroid/icu/impl/number/MacroProps;

    if-eqz v0, :cond_7

    .line 622
    iget-object v0, p0, Landroid/icu/number/NumberFormatterSettings;->resolvedMacros:Landroid/icu/impl/number/MacroProps;

    return-object v0

    .line 628
    :cond_7
    new-instance v0, Landroid/icu/impl/number/MacroProps;

    invoke-direct {v0}, Landroid/icu/impl/number/MacroProps;-><init>()V

    .line 630
    .local v0, "macros":Landroid/icu/impl/number/MacroProps;
    const-wide/16 v1, 0x0

    .line 631
    .local v1, "seen":J
    move-object v3, p0

    .line 632
    .local v3, "current":Landroid/icu/number/NumberFormatterSettings;, "Landroid/icu/number/NumberFormatterSettings<*>;"
    :goto_f
    if-eqz v3, :cond_c4

    .line 633
    const-wide/16 v4, 0x1

    iget v6, v3, Landroid/icu/number/NumberFormatterSettings;->key:I

    shl-long/2addr v4, v6

    .line 634
    .local v4, "keyBitmask":J
    const-wide/16 v6, 0x0

    and-long v8, v1, v4

    cmp-long v6, v6, v8

    if-eqz v6, :cond_21

    .line 635
    iget-object v3, v3, Landroid/icu/number/NumberFormatterSettings;->parent:Landroid/icu/number/NumberFormatterSettings;

    .line 636
    goto :goto_f

    .line 638
    :cond_21
    or-long/2addr v1, v4

    .line 639
    iget v6, v3, Landroid/icu/number/NumberFormatterSettings;->key:I

    packed-switch v6, :pswitch_data_c8

    .line 695
    new-instance v6, Ljava/lang/AssertionError;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown key: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Landroid/icu/number/NumberFormatterSettings;->key:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 692
    :pswitch_42
    iget-object v6, v3, Landroid/icu/number/NumberFormatterSettings;->value:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iput-object v6, v0, Landroid/icu/impl/number/MacroProps;->unitDisplayCase:Ljava/lang/String;

    .line 693
    goto/16 :goto_c0

    .line 689
    :pswitch_4a
    iget-object v6, v3, Landroid/icu/number/NumberFormatterSettings;->value:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iput-object v6, v0, Landroid/icu/impl/number/MacroProps;->usage:Ljava/lang/String;

    .line 690
    goto/16 :goto_c0

    .line 686
    :pswitch_52
    iget-object v6, v3, Landroid/icu/number/NumberFormatterSettings;->value:Ljava/lang/Object;

    check-cast v6, Landroid/icu/util/MeasureUnit;

    iput-object v6, v0, Landroid/icu/impl/number/MacroProps;->perUnit:Landroid/icu/util/MeasureUnit;

    .line 687
    goto/16 :goto_c0

    .line 683
    :pswitch_5a
    iget-object v6, v3, Landroid/icu/number/NumberFormatterSettings;->value:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    iput-object v6, v0, Landroid/icu/impl/number/MacroProps;->threshold:Ljava/lang/Long;

    .line 684
    goto :goto_c0

    .line 680
    :pswitch_61
    iget-object v6, v3, Landroid/icu/number/NumberFormatterSettings;->value:Ljava/lang/Object;

    check-cast v6, Landroid/icu/number/Scale;

    iput-object v6, v0, Landroid/icu/impl/number/MacroProps;->scale:Landroid/icu/number/Scale;

    .line 681
    goto :goto_c0

    .line 677
    :pswitch_68
    iget-object v6, v3, Landroid/icu/number/NumberFormatterSettings;->value:Ljava/lang/Object;

    check-cast v6, Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    iput-object v6, v0, Landroid/icu/impl/number/MacroProps;->decimal:Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    .line 678
    goto :goto_c0

    .line 674
    :pswitch_6f
    iget-object v6, v3, Landroid/icu/number/NumberFormatterSettings;->value:Ljava/lang/Object;

    check-cast v6, Landroid/icu/number/NumberFormatter$SignDisplay;

    iput-object v6, v0, Landroid/icu/impl/number/MacroProps;->sign:Landroid/icu/number/NumberFormatter$SignDisplay;

    .line 675
    goto :goto_c0

    .line 671
    :pswitch_76
    iget-object v6, v3, Landroid/icu/number/NumberFormatterSettings;->value:Ljava/lang/Object;

    check-cast v6, Landroid/icu/number/NumberFormatter$UnitWidth;

    iput-object v6, v0, Landroid/icu/impl/number/MacroProps;->unitWidth:Landroid/icu/number/NumberFormatter$UnitWidth;

    .line 672
    goto :goto_c0

    .line 668
    :pswitch_7d
    iget-object v6, v3, Landroid/icu/number/NumberFormatterSettings;->value:Ljava/lang/Object;

    iput-object v6, v0, Landroid/icu/impl/number/MacroProps;->symbols:Ljava/lang/Object;

    .line 669
    goto :goto_c0

    .line 665
    :pswitch_82
    iget-object v6, v3, Landroid/icu/number/NumberFormatterSettings;->value:Ljava/lang/Object;

    check-cast v6, Landroid/icu/number/IntegerWidth;

    iput-object v6, v0, Landroid/icu/impl/number/MacroProps;->integerWidth:Landroid/icu/number/IntegerWidth;

    .line 666
    goto :goto_c0

    .line 662
    :pswitch_89
    iget-object v6, v3, Landroid/icu/number/NumberFormatterSettings;->value:Ljava/lang/Object;

    check-cast v6, Landroid/icu/impl/number/Padder;

    iput-object v6, v0, Landroid/icu/impl/number/MacroProps;->padder:Landroid/icu/impl/number/Padder;

    .line 663
    goto :goto_c0

    .line 659
    :pswitch_90
    iget-object v6, v3, Landroid/icu/number/NumberFormatterSettings;->value:Ljava/lang/Object;

    iput-object v6, v0, Landroid/icu/impl/number/MacroProps;->grouping:Ljava/lang/Object;

    .line 660
    goto :goto_c0

    .line 656
    :pswitch_95
    iget-object v6, v3, Landroid/icu/number/NumberFormatterSettings;->value:Ljava/lang/Object;

    check-cast v6, Ljava/math/RoundingMode;

    iput-object v6, v0, Landroid/icu/impl/number/MacroProps;->roundingMode:Ljava/math/RoundingMode;

    .line 657
    goto :goto_c0

    .line 653
    :pswitch_9c
    iget-object v6, v3, Landroid/icu/number/NumberFormatterSettings;->value:Ljava/lang/Object;

    check-cast v6, Landroid/icu/number/Precision;

    iput-object v6, v0, Landroid/icu/impl/number/MacroProps;->precision:Landroid/icu/number/Precision;

    .line 654
    goto :goto_c0

    .line 650
    :pswitch_a3
    iget-object v6, v3, Landroid/icu/number/NumberFormatterSettings;->value:Ljava/lang/Object;

    check-cast v6, Landroid/icu/util/MeasureUnit;

    iput-object v6, v0, Landroid/icu/impl/number/MacroProps;->unit:Landroid/icu/util/MeasureUnit;

    .line 651
    goto :goto_c0

    .line 647
    :pswitch_aa
    iget-object v6, v3, Landroid/icu/number/NumberFormatterSettings;->value:Ljava/lang/Object;

    check-cast v6, Landroid/icu/number/Notation;

    iput-object v6, v0, Landroid/icu/impl/number/MacroProps;->notation:Landroid/icu/number/Notation;

    .line 648
    goto :goto_c0

    .line 644
    :pswitch_b1
    iget-object v6, v3, Landroid/icu/number/NumberFormatterSettings;->value:Ljava/lang/Object;

    check-cast v6, Landroid/icu/util/ULocale;

    iput-object v6, v0, Landroid/icu/impl/number/MacroProps;->loc:Landroid/icu/util/ULocale;

    .line 645
    goto :goto_c0

    .line 641
    :pswitch_b8
    iget-object v6, v3, Landroid/icu/number/NumberFormatterSettings;->value:Ljava/lang/Object;

    check-cast v6, Landroid/icu/impl/number/MacroProps;

    invoke-virtual {v0, v6}, Landroid/icu/impl/number/MacroProps;->fallback(Landroid/icu/impl/number/MacroProps;)V

    .line 642
    nop

    .line 697
    :goto_c0
    iget-object v3, v3, Landroid/icu/number/NumberFormatterSettings;->parent:Landroid/icu/number/NumberFormatterSettings;

    .line 698
    .end local v4    # "keyBitmask":J
    goto/16 :goto_f

    .line 699
    :cond_c4
    iput-object v0, p0, Landroid/icu/number/NumberFormatterSettings;->resolvedMacros:Landroid/icu/impl/number/MacroProps;

    .line 700
    return-object v0

    nop

    :pswitch_data_c8
    .packed-switch 0x0
        :pswitch_b8
        :pswitch_b1
        :pswitch_aa
        :pswitch_a3
        :pswitch_9c
        :pswitch_95
        :pswitch_90
        :pswitch_89
        :pswitch_82
        :pswitch_7d
        :pswitch_76
        :pswitch_6f
        :pswitch_68
        :pswitch_61
        :pswitch_5a
        :pswitch_52
        :pswitch_4a
        :pswitch_42
    .end packed-switch
.end method

.method public whitelist test-api roundingMode(Ljava/math/RoundingMode;)Landroid/icu/number/NumberFormatterSettings;
    .registers 3
    .param p1, "roundingMode"    # Ljava/math/RoundingMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/math/RoundingMode;",
            ")TT;"
        }
    .end annotation

    .line 225
    .local p0, "this":Landroid/icu/number/NumberFormatterSettings;, "Landroid/icu/number/NumberFormatterSettings<TT;>;"
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Landroid/icu/number/NumberFormatterSettings;->create(ILjava/lang/Object;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api scale(Landroid/icu/number/Scale;)Landroid/icu/number/NumberFormatterSettings;
    .registers 3
    .param p1, "scale"    # Landroid/icu/number/Scale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/number/Scale;",
            ")TT;"
        }
    .end annotation

    .line 472
    .local p0, "this":Landroid/icu/number/NumberFormatterSettings;, "Landroid/icu/number/NumberFormatterSettings<TT;>;"
    const/16 v0, 0xd

    invoke-virtual {p0, v0, p1}, Landroid/icu/number/NumberFormatterSettings;->create(ILjava/lang/Object;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api sign(Landroid/icu/number/NumberFormatter$SignDisplay;)Landroid/icu/number/NumberFormatterSettings;
    .registers 3
    .param p1, "style"    # Landroid/icu/number/NumberFormatter$SignDisplay;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/number/NumberFormatter$SignDisplay;",
            ")TT;"
        }
    .end annotation

    .line 416
    .local p0, "this":Landroid/icu/number/NumberFormatterSettings;, "Landroid/icu/number/NumberFormatterSettings<TT;>;"
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p1}, Landroid/icu/number/NumberFormatterSettings;->create(ILjava/lang/Object;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api symbols(Landroid/icu/text/DecimalFormatSymbols;)Landroid/icu/number/NumberFormatterSettings;
    .registers 3
    .param p1, "symbols"    # Landroid/icu/text/DecimalFormatSymbols;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/DecimalFormatSymbols;",
            ")TT;"
        }
    .end annotation

    .line 326
    .local p0, "this":Landroid/icu/number/NumberFormatterSettings;, "Landroid/icu/number/NumberFormatterSettings<TT;>;"
    invoke-virtual {p1}, Landroid/icu/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Landroid/icu/text/DecimalFormatSymbols;

    .line 327
    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1}, Landroid/icu/number/NumberFormatterSettings;->create(ILjava/lang/Object;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api symbols(Landroid/icu/text/NumberingSystem;)Landroid/icu/number/NumberFormatterSettings;
    .registers 3
    .param p1, "ns"    # Landroid/icu/text/NumberingSystem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/NumberingSystem;",
            ")TT;"
        }
    .end annotation

    .line 360
    .local p0, "this":Landroid/icu/number/NumberFormatterSettings;, "Landroid/icu/number/NumberFormatterSettings<TT;>;"
    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1}, Landroid/icu/number/NumberFormatterSettings;->create(ILjava/lang/Object;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object v0

    return-object v0
.end method

.method public blacklist threshold(Ljava/lang/Long;)Landroid/icu/number/NumberFormatterSettings;
    .registers 3
    .param p1, "threshold"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 592
    .local p0, "this":Landroid/icu/number/NumberFormatterSettings;, "Landroid/icu/number/NumberFormatterSettings<TT;>;"
    const/16 v0, 0xe

    invoke-virtual {p0, v0, p1}, Landroid/icu/number/NumberFormatterSettings;->create(ILjava/lang/Object;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toSkeleton()Ljava/lang/String;
    .registers 2

    .line 615
    .local p0, "this":Landroid/icu/number/NumberFormatterSettings;, "Landroid/icu/number/NumberFormatterSettings<TT;>;"
    invoke-virtual {p0}, Landroid/icu/number/NumberFormatterSettings;->resolve()Landroid/icu/impl/number/MacroProps;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/number/NumberSkeletonImpl;->generate(Landroid/icu/impl/number/MacroProps;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api unit(Landroid/icu/util/MeasureUnit;)Landroid/icu/number/NumberFormatterSettings;
    .registers 3
    .param p1, "unit"    # Landroid/icu/util/MeasureUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/MeasureUnit;",
            ")TT;"
        }
    .end annotation

    .line 143
    .local p0, "this":Landroid/icu/number/NumberFormatterSettings;, "Landroid/icu/number/NumberFormatterSettings<TT;>;"
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Landroid/icu/number/NumberFormatterSettings;->create(ILjava/lang/Object;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object v0

    return-object v0
.end method

.method public blacklist unitDisplayCase(Ljava/lang/String;)Landroid/icu/number/NumberFormatterSettings;
    .registers 3
    .param p1, "unitDisplayCase"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 558
    .local p0, "this":Landroid/icu/number/NumberFormatterSettings;, "Landroid/icu/number/NumberFormatterSettings<TT;>;"
    const/16 v0, 0x11

    invoke-virtual {p0, v0, p1}, Landroid/icu/number/NumberFormatterSettings;->create(ILjava/lang/Object;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api unitWidth(Landroid/icu/number/NumberFormatter$UnitWidth;)Landroid/icu/number/NumberFormatterSettings;
    .registers 3
    .param p1, "style"    # Landroid/icu/number/NumberFormatter$UnitWidth;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/number/NumberFormatter$UnitWidth;",
            ")TT;"
        }
    .end annotation

    .line 388
    .local p0, "this":Landroid/icu/number/NumberFormatterSettings;, "Landroid/icu/number/NumberFormatterSettings<TT;>;"
    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Landroid/icu/number/NumberFormatterSettings;->create(ILjava/lang/Object;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api usage(Ljava/lang/String;)Landroid/icu/number/NumberFormatterSettings;
    .registers 4
    .param p1, "usage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 526
    .local p0, "this":Landroid/icu/number/NumberFormatterSettings;, "Landroid/icu/number/NumberFormatterSettings<TT;>;"
    const/16 v0, 0x10

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 527
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/icu/number/NumberFormatterSettings;->create(ILjava/lang/Object;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object v0

    return-object v0

    .line 530
    :cond_10
    invoke-virtual {p0, v0, p1}, Landroid/icu/number/NumberFormatterSettings;->create(ILjava/lang/Object;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object v0

    return-object v0
.end method
