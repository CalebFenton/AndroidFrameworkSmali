.class Landroid/icu/number/NumberRangeFormatterImpl;
.super Ljava/lang/Object;
.source "NumberRangeFormatterImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/number/NumberRangeFormatterImpl$NumberRangeDataSink;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field final blacklist fApproximatelyFormatter:Landroid/icu/number/NumberFormatterImpl;

.field final blacklist fCollapse:Landroid/icu/number/NumberRangeFormatter$RangeCollapse;

.field final blacklist fIdentityFallback:Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;

.field final blacklist fPluralRanges:Landroid/icu/impl/number/range/StandardPluralRanges;

.field blacklist fRangePattern:Ljava/lang/String;

.field final blacklist fSameFormatters:Z

.field final blacklist formatterImpl1:Landroid/icu/number/NumberFormatterImpl;

.field final blacklist formatterImpl2:Landroid/icu/number/NumberFormatterImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 34
    return-void
.end method

.method public constructor blacklist <init>(Landroid/icu/impl/number/range/RangeMacroProps;)V
    .registers 8
    .param p1, "macros"    # Landroid/icu/impl/number/range/RangeMacroProps;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iget-object v0, p1, Landroid/icu/impl/number/range/RangeMacroProps;->formatter1:Landroid/icu/number/UnlocalizedNumberFormatter;

    if-eqz v0, :cond_10

    .line 148
    iget-object v0, p1, Landroid/icu/impl/number/range/RangeMacroProps;->formatter1:Landroid/icu/number/UnlocalizedNumberFormatter;

    iget-object v1, p1, Landroid/icu/impl/number/range/RangeMacroProps;->loc:Landroid/icu/util/ULocale;

    invoke-virtual {v0, v1}, Landroid/icu/number/UnlocalizedNumberFormatter;->locale(Landroid/icu/util/ULocale;)Landroid/icu/number/LocalizedNumberFormatter;

    move-result-object v0

    goto :goto_16

    .line 149
    :cond_10
    iget-object v0, p1, Landroid/icu/impl/number/range/RangeMacroProps;->loc:Landroid/icu/util/ULocale;

    invoke-static {v0}, Landroid/icu/number/NumberFormatter;->withLocale(Landroid/icu/util/ULocale;)Landroid/icu/number/LocalizedNumberFormatter;

    move-result-object v0

    :goto_16
    nop

    .line 150
    .local v0, "formatter1":Landroid/icu/number/LocalizedNumberFormatter;
    iget-object v1, p1, Landroid/icu/impl/number/range/RangeMacroProps;->formatter2:Landroid/icu/number/UnlocalizedNumberFormatter;

    if-eqz v1, :cond_24

    .line 151
    iget-object v1, p1, Landroid/icu/impl/number/range/RangeMacroProps;->formatter2:Landroid/icu/number/UnlocalizedNumberFormatter;

    iget-object v2, p1, Landroid/icu/impl/number/range/RangeMacroProps;->loc:Landroid/icu/util/ULocale;

    invoke-virtual {v1, v2}, Landroid/icu/number/UnlocalizedNumberFormatter;->locale(Landroid/icu/util/ULocale;)Landroid/icu/number/LocalizedNumberFormatter;

    move-result-object v1

    goto :goto_2a

    .line 152
    :cond_24
    iget-object v1, p1, Landroid/icu/impl/number/range/RangeMacroProps;->loc:Landroid/icu/util/ULocale;

    invoke-static {v1}, Landroid/icu/number/NumberFormatter;->withLocale(Landroid/icu/util/ULocale;)Landroid/icu/number/LocalizedNumberFormatter;

    move-result-object v1

    :goto_2a
    nop

    .line 153
    .local v1, "formatter2":Landroid/icu/number/LocalizedNumberFormatter;
    new-instance v2, Landroid/icu/number/NumberFormatterImpl;

    invoke-virtual {v0}, Landroid/icu/number/LocalizedNumberFormatter;->resolve()Landroid/icu/impl/number/MacroProps;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/icu/number/NumberFormatterImpl;-><init>(Landroid/icu/impl/number/MacroProps;)V

    iput-object v2, p0, Landroid/icu/number/NumberRangeFormatterImpl;->formatterImpl1:Landroid/icu/number/NumberFormatterImpl;

    .line 154
    new-instance v2, Landroid/icu/number/NumberFormatterImpl;

    invoke-virtual {v1}, Landroid/icu/number/LocalizedNumberFormatter;->resolve()Landroid/icu/impl/number/MacroProps;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/icu/number/NumberFormatterImpl;-><init>(Landroid/icu/impl/number/MacroProps;)V

    iput-object v2, p0, Landroid/icu/number/NumberRangeFormatterImpl;->formatterImpl2:Landroid/icu/number/NumberFormatterImpl;

    .line 155
    iget v2, p1, Landroid/icu/impl/number/range/RangeMacroProps;->sameFormatters:I

    const/4 v3, 0x1

    if-eqz v2, :cond_48

    move v2, v3

    goto :goto_49

    :cond_48
    const/4 v2, 0x0

    :goto_49
    iput-boolean v2, p0, Landroid/icu/number/NumberRangeFormatterImpl;->fSameFormatters:Z

    .line 156
    iget-object v2, p1, Landroid/icu/impl/number/range/RangeMacroProps;->collapse:Landroid/icu/number/NumberRangeFormatter$RangeCollapse;

    if-eqz v2, :cond_52

    iget-object v2, p1, Landroid/icu/impl/number/range/RangeMacroProps;->collapse:Landroid/icu/number/NumberRangeFormatter$RangeCollapse;

    goto :goto_54

    :cond_52
    sget-object v2, Landroid/icu/number/NumberRangeFormatter$RangeCollapse;->AUTO:Landroid/icu/number/NumberRangeFormatter$RangeCollapse;

    :goto_54
    iput-object v2, p0, Landroid/icu/number/NumberRangeFormatterImpl;->fCollapse:Landroid/icu/number/NumberRangeFormatter$RangeCollapse;

    .line 157
    iget-object v2, p1, Landroid/icu/impl/number/range/RangeMacroProps;->identityFallback:Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;

    if-eqz v2, :cond_5d

    iget-object v2, p1, Landroid/icu/impl/number/range/RangeMacroProps;->identityFallback:Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;

    goto :goto_5f

    .line 158
    :cond_5d
    sget-object v2, Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;->APPROXIMATELY:Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;

    :goto_5f
    iput-object v2, p0, Landroid/icu/number/NumberRangeFormatterImpl;->fIdentityFallback:Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;

    .line 160
    iget-object v2, p0, Landroid/icu/number/NumberRangeFormatterImpl;->formatterImpl1:Landroid/icu/number/NumberFormatterImpl;

    invoke-virtual {v2}, Landroid/icu/number/NumberFormatterImpl;->getRawMicroProps()Landroid/icu/impl/number/MicroProps;

    move-result-object v2

    iget-object v2, v2, Landroid/icu/impl/number/MicroProps;->nsName:Ljava/lang/String;

    .line 161
    .local v2, "nsName":Ljava/lang/String;
    if-eqz v2, :cond_bb

    iget-boolean v4, p0, Landroid/icu/number/NumberRangeFormatterImpl;->fSameFormatters:Z

    if-nez v4, :cond_7d

    iget-object v4, p0, Landroid/icu/number/NumberRangeFormatterImpl;->formatterImpl2:Landroid/icu/number/NumberFormatterImpl;

    invoke-virtual {v4}, Landroid/icu/number/NumberFormatterImpl;->getRawMicroProps()Landroid/icu/impl/number/MicroProps;

    move-result-object v4

    iget-object v4, v4, Landroid/icu/impl/number/MicroProps;->nsName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bb

    .line 164
    :cond_7d
    iget-object v4, p1, Landroid/icu/impl/number/range/RangeMacroProps;->loc:Landroid/icu/util/ULocale;

    invoke-static {v4, v2, p0}, Landroid/icu/number/NumberRangeFormatterImpl;->getNumberRangeData(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/number/NumberRangeFormatterImpl;)V

    .line 166
    iget-boolean v4, p0, Landroid/icu/number/NumberRangeFormatterImpl;->fSameFormatters:Z

    if-eqz v4, :cond_af

    iget-object v4, p0, Landroid/icu/number/NumberRangeFormatterImpl;->fIdentityFallback:Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;

    sget-object v5, Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;->APPROXIMATELY:Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;

    if-eq v4, v5, :cond_92

    iget-object v4, p0, Landroid/icu/number/NumberRangeFormatterImpl;->fIdentityFallback:Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;

    sget-object v5, Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;->APPROXIMATELY_OR_SINGLE_VALUE:Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;

    if-ne v4, v5, :cond_af

    .line 169
    :cond_92
    new-instance v4, Landroid/icu/impl/number/MacroProps;

    invoke-direct {v4}, Landroid/icu/impl/number/MacroProps;-><init>()V

    .line 170
    .local v4, "approximatelyMacros":Landroid/icu/impl/number/MacroProps;
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v4, Landroid/icu/impl/number/MacroProps;->approximately:Ljava/lang/Boolean;

    .line 171
    new-instance v3, Landroid/icu/number/NumberFormatterImpl;

    .line 172
    invoke-virtual {v0, v4}, Landroid/icu/number/LocalizedNumberFormatter;->macros(Landroid/icu/impl/number/MacroProps;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object v5

    check-cast v5, Landroid/icu/number/LocalizedNumberFormatter;

    invoke-virtual {v5}, Landroid/icu/number/LocalizedNumberFormatter;->resolve()Landroid/icu/impl/number/MacroProps;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/icu/number/NumberFormatterImpl;-><init>(Landroid/icu/impl/number/MacroProps;)V

    iput-object v3, p0, Landroid/icu/number/NumberRangeFormatterImpl;->fApproximatelyFormatter:Landroid/icu/number/NumberFormatterImpl;

    .line 173
    .end local v4    # "approximatelyMacros":Landroid/icu/impl/number/MacroProps;
    goto :goto_b2

    .line 174
    :cond_af
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/icu/number/NumberRangeFormatterImpl;->fApproximatelyFormatter:Landroid/icu/number/NumberFormatterImpl;

    .line 178
    :goto_b2
    iget-object v3, p1, Landroid/icu/impl/number/range/RangeMacroProps;->loc:Landroid/icu/util/ULocale;

    invoke-static {v3}, Landroid/icu/impl/number/range/StandardPluralRanges;->forLocale(Landroid/icu/util/ULocale;)Landroid/icu/impl/number/range/StandardPluralRanges;

    move-result-object v3

    iput-object v3, p0, Landroid/icu/number/NumberRangeFormatterImpl;->fPluralRanges:Landroid/icu/impl/number/range/StandardPluralRanges;

    .line 179
    return-void

    .line 162
    :cond_bb
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Both formatters must have same numbering system"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private blacklist formatApproximately(Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/FormattedStringBuilder;Landroid/icu/impl/number/MicroProps;Landroid/icu/impl/number/MicroProps;)V
    .registers 10
    .param p1, "quantity1"    # Landroid/icu/impl/number/DecimalQuantity;
    .param p2, "quantity2"    # Landroid/icu/impl/number/DecimalQuantity;
    .param p3, "string"    # Landroid/icu/impl/FormattedStringBuilder;
    .param p4, "micros1"    # Landroid/icu/impl/number/MicroProps;
    .param p5, "micros2"    # Landroid/icu/impl/number/MicroProps;

    .line 258
    iget-boolean v0, p0, Landroid/icu/number/NumberRangeFormatterImpl;->fSameFormatters:Z

    if-eqz v0, :cond_26

    .line 260
    invoke-interface {p1}, Landroid/icu/impl/number/DecimalQuantity;->resetExponent()V

    .line 261
    iget-object v0, p0, Landroid/icu/number/NumberRangeFormatterImpl;->fApproximatelyFormatter:Landroid/icu/number/NumberFormatterImpl;

    invoke-virtual {v0, p1}, Landroid/icu/number/NumberFormatterImpl;->preProcess(Landroid/icu/impl/number/DecimalQuantity;)Landroid/icu/impl/number/MicroProps;

    move-result-object v0

    .line 262
    .local v0, "microsAppx":Landroid/icu/impl/number/MicroProps;
    const/4 v1, 0x0

    invoke-static {v0, p1, p3, v1}, Landroid/icu/number/NumberFormatterImpl;->writeNumber(Landroid/icu/impl/number/MicroProps;Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/FormattedStringBuilder;I)I

    move-result v2

    .line 264
    .local v2, "length":I
    iget-object v3, v0, Landroid/icu/impl/number/MicroProps;->modInner:Landroid/icu/impl/number/Modifier;

    invoke-interface {v3, p3, v1, v2}, Landroid/icu/impl/number/Modifier;->apply(Landroid/icu/impl/FormattedStringBuilder;II)I

    move-result v3

    add-int/2addr v2, v3

    .line 265
    iget-object v3, v0, Landroid/icu/impl/number/MicroProps;->modMiddle:Landroid/icu/impl/number/Modifier;

    invoke-interface {v3, p3, v1, v2}, Landroid/icu/impl/number/Modifier;->apply(Landroid/icu/impl/FormattedStringBuilder;II)I

    move-result v3

    add-int/2addr v2, v3

    .line 266
    iget-object v3, v0, Landroid/icu/impl/number/MicroProps;->modOuter:Landroid/icu/impl/number/Modifier;

    invoke-interface {v3, p3, v1, v2}, Landroid/icu/impl/number/Modifier;->apply(Landroid/icu/impl/FormattedStringBuilder;II)I

    .line 267
    .end local v0    # "microsAppx":Landroid/icu/impl/number/MicroProps;
    .end local v2    # "length":I
    goto :goto_29

    .line 268
    :cond_26
    invoke-direct/range {p0 .. p5}, Landroid/icu/number/NumberRangeFormatterImpl;->formatRange(Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/FormattedStringBuilder;Landroid/icu/impl/number/MicroProps;Landroid/icu/impl/number/MicroProps;)V

    .line 270
    :goto_29
    return-void
.end method

.method private blacklist formatRange(Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/FormattedStringBuilder;Landroid/icu/impl/number/MicroProps;Landroid/icu/impl/number/MicroProps;)V
    .registers 23
    .param p1, "quantity1"    # Landroid/icu/impl/number/DecimalQuantity;
    .param p2, "quantity2"    # Landroid/icu/impl/number/DecimalQuantity;
    .param p3, "string"    # Landroid/icu/impl/FormattedStringBuilder;
    .param p4, "micros1"    # Landroid/icu/impl/number/MicroProps;
    .param p5, "micros2"    # Landroid/icu/impl/number/MicroProps;

    .line 279
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    sget-object v4, Landroid/icu/number/NumberRangeFormatterImpl$1;->$SwitchMap$android$icu$number$NumberRangeFormatter$RangeCollapse:[I

    iget-object v5, v0, Landroid/icu/number/NumberRangeFormatterImpl;->fCollapse:Landroid/icu/number/NumberRangeFormatter$RangeCollapse;

    invoke-virtual {v5}, Landroid/icu/number/NumberRangeFormatter$RangeCollapse;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    packed-switch v4, :pswitch_data_232

    .line 334
    const/4 v4, 0x0

    .line 335
    .local v4, "collapseOuter":Z
    const/4 v6, 0x0

    .line 336
    .local v6, "collapseMiddle":Z
    const/4 v7, 0x0

    .local v7, "collapseInner":Z
    goto :goto_6f

    .line 285
    .end local v4    # "collapseOuter":Z
    .end local v6    # "collapseMiddle":Z
    .end local v7    # "collapseInner":Z
    :pswitch_1a
    iget-object v4, v2, Landroid/icu/impl/number/MicroProps;->modOuter:Landroid/icu/impl/number/Modifier;

    iget-object v6, v3, Landroid/icu/impl/number/MicroProps;->modOuter:Landroid/icu/impl/number/Modifier;

    invoke-interface {v4, v6}, Landroid/icu/impl/number/Modifier;->semanticallyEquivalent(Landroid/icu/impl/number/Modifier;)Z

    move-result v4

    .line 287
    .restart local v4    # "collapseOuter":Z
    if-nez v4, :cond_27

    .line 289
    const/4 v6, 0x0

    .line 290
    .restart local v6    # "collapseMiddle":Z
    const/4 v7, 0x0

    .line 291
    .restart local v7    # "collapseInner":Z
    goto :goto_6f

    .line 295
    .end local v6    # "collapseMiddle":Z
    .end local v7    # "collapseInner":Z
    :cond_27
    iget-object v6, v2, Landroid/icu/impl/number/MicroProps;->modMiddle:Landroid/icu/impl/number/Modifier;

    iget-object v7, v3, Landroid/icu/impl/number/MicroProps;->modMiddle:Landroid/icu/impl/number/Modifier;

    invoke-interface {v6, v7}, Landroid/icu/impl/number/Modifier;->semanticallyEquivalent(Landroid/icu/impl/number/Modifier;)Z

    move-result v6

    .line 297
    .restart local v6    # "collapseMiddle":Z
    if-nez v6, :cond_33

    .line 299
    const/4 v7, 0x0

    .line 300
    .restart local v7    # "collapseInner":Z
    goto :goto_6f

    .line 306
    .end local v7    # "collapseInner":Z
    :cond_33
    iget-object v7, v2, Landroid/icu/impl/number/MicroProps;->modMiddle:Landroid/icu/impl/number/Modifier;

    .line 307
    .local v7, "mm":Landroid/icu/impl/number/Modifier;
    iget-object v8, v0, Landroid/icu/number/NumberRangeFormatterImpl;->fCollapse:Landroid/icu/number/NumberRangeFormatter$RangeCollapse;

    sget-object v9, Landroid/icu/number/NumberRangeFormatter$RangeCollapse;->UNIT:Landroid/icu/number/NumberRangeFormatter$RangeCollapse;

    if-ne v8, v9, :cond_4d

    .line 311
    sget-object v8, Landroid/icu/text/NumberFormat$Field;->CURRENCY:Landroid/icu/text/NumberFormat$Field;

    invoke-interface {v7, v8}, Landroid/icu/impl/number/Modifier;->containsField(Ljava/text/Format$Field;)Z

    move-result v8

    if-nez v8, :cond_5a

    sget-object v8, Landroid/icu/text/NumberFormat$Field;->PERCENT:Landroid/icu/text/NumberFormat$Field;

    invoke-interface {v7, v8}, Landroid/icu/impl/number/Modifier;->containsField(Ljava/text/Format$Field;)Z

    move-result v8

    if-nez v8, :cond_5a

    .line 312
    const/4 v6, 0x0

    goto :goto_5a

    .line 314
    :cond_4d
    iget-object v8, v0, Landroid/icu/number/NumberRangeFormatterImpl;->fCollapse:Landroid/icu/number/NumberRangeFormatter$RangeCollapse;

    sget-object v9, Landroid/icu/number/NumberRangeFormatter$RangeCollapse;->AUTO:Landroid/icu/number/NumberRangeFormatter$RangeCollapse;

    if-ne v8, v9, :cond_5a

    .line 316
    invoke-interface {v7}, Landroid/icu/impl/number/Modifier;->getCodePointCount()I

    move-result v8

    if-gt v8, v5, :cond_5a

    .line 317
    const/4 v6, 0x0

    .line 321
    :cond_5a
    :goto_5a
    if-eqz v6, :cond_6d

    iget-object v8, v0, Landroid/icu/number/NumberRangeFormatterImpl;->fCollapse:Landroid/icu/number/NumberRangeFormatter$RangeCollapse;

    sget-object v9, Landroid/icu/number/NumberRangeFormatter$RangeCollapse;->ALL:Landroid/icu/number/NumberRangeFormatter$RangeCollapse;

    if-eq v8, v9, :cond_63

    goto :goto_6d

    .line 327
    :cond_63
    iget-object v8, v2, Landroid/icu/impl/number/MicroProps;->modInner:Landroid/icu/impl/number/Modifier;

    iget-object v9, v3, Landroid/icu/impl/number/MicroProps;->modInner:Landroid/icu/impl/number/Modifier;

    invoke-interface {v8, v9}, Landroid/icu/impl/number/Modifier;->semanticallyEquivalent(Landroid/icu/impl/number/Modifier;)Z

    move-result v8

    .line 330
    .local v8, "collapseInner":Z
    move v7, v8

    goto :goto_6f

    .line 322
    .end local v8    # "collapseInner":Z
    :cond_6d
    :goto_6d
    const/4 v8, 0x0

    .line 323
    .restart local v8    # "collapseInner":Z
    move v7, v8

    .line 342
    .end local v8    # "collapseInner":Z
    .local v7, "collapseInner":Z
    :goto_6f
    new-instance v8, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;

    invoke-direct {v8}, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;-><init>()V

    .line 344
    .local v8, "h":Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;
    iget-object v9, v0, Landroid/icu/number/NumberRangeFormatterImpl;->fRangePattern:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v1, v10, v8, v11}, Landroid/icu/impl/number/SimpleModifier;->formatTwoArgPattern(Ljava/lang/String;Landroid/icu/impl/FormattedStringBuilder;ILandroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;Ljava/text/Format$Field;)V

    .line 345
    nop

    .line 353
    if-nez v7, :cond_88

    iget-object v9, v2, Landroid/icu/impl/number/MicroProps;->modInner:Landroid/icu/impl/number/Modifier;

    invoke-interface {v9}, Landroid/icu/impl/number/Modifier;->getCodePointCount()I

    move-result v9

    if-lez v9, :cond_88

    move v9, v5

    goto :goto_89

    :cond_88
    move v9, v10

    .line 354
    .local v9, "repeatInner":Z
    :goto_89
    if-nez v6, :cond_95

    iget-object v12, v2, Landroid/icu/impl/number/MicroProps;->modMiddle:Landroid/icu/impl/number/Modifier;

    invoke-interface {v12}, Landroid/icu/impl/number/Modifier;->getCodePointCount()I

    move-result v12

    if-lez v12, :cond_95

    move v12, v5

    goto :goto_96

    :cond_95
    move v12, v10

    .line 355
    .local v12, "repeatMiddle":Z
    :goto_96
    if-nez v4, :cond_a2

    iget-object v13, v2, Landroid/icu/impl/number/MicroProps;->modOuter:Landroid/icu/impl/number/Modifier;

    invoke-interface {v13}, Landroid/icu/impl/number/Modifier;->getCodePointCount()I

    move-result v13

    if-lez v13, :cond_a2

    move v13, v5

    goto :goto_a3

    :cond_a2
    move v13, v10

    .line 356
    .local v13, "repeatOuter":Z
    :goto_a3
    if-nez v9, :cond_ad

    if-nez v12, :cond_ad

    if-eqz v13, :cond_aa

    goto :goto_ad

    :cond_aa
    move/from16 v16, v5

    goto :goto_ec

    .line 358
    :cond_ad
    :goto_ad
    invoke-virtual {v8}, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->index1()I

    move-result v14

    invoke-virtual {v1, v14}, Landroid/icu/impl/FormattedStringBuilder;->charAt(I)C

    move-result v14

    invoke-static {v14}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v14

    const/16 v15, 0x20

    if-nez v14, :cond_cd

    .line 359
    iget v14, v8, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthInfix:I

    move/from16 v16, v5

    invoke-virtual {v8}, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->index1()I

    move-result v5

    invoke-virtual {v1, v5, v15, v11}, Landroid/icu/impl/FormattedStringBuilder;->insertCodePoint(IILjava/lang/Object;)I

    move-result v5

    add-int/2addr v14, v5

    iput v14, v8, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthInfix:I

    goto :goto_cf

    .line 358
    :cond_cd
    move/from16 v16, v5

    .line 361
    :goto_cf
    invoke-virtual {v8}, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->index2()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v5}, Landroid/icu/impl/FormattedStringBuilder;->charAt(I)C

    move-result v5

    invoke-static {v5}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v5

    if-nez v5, :cond_ec

    .line 362
    iget v5, v8, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthInfix:I

    invoke-virtual {v8}, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->index2()I

    move-result v14

    invoke-virtual {v1, v14, v15, v11}, Landroid/icu/impl/FormattedStringBuilder;->insertCodePoint(IILjava/lang/Object;)I

    move-result v11

    add-int/2addr v5, v11

    iput v5, v8, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthInfix:I

    .line 367
    .end local v9    # "repeatInner":Z
    .end local v12    # "repeatMiddle":Z
    .end local v13    # "repeatOuter":Z
    :cond_ec
    :goto_ec
    iget v5, v8, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->length1:I

    invoke-virtual {v8}, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->index0()I

    move-result v9

    move-object/from16 v11, p1

    invoke-static {v2, v11, v1, v9}, Landroid/icu/number/NumberFormatterImpl;->writeNumber(Landroid/icu/impl/number/MicroProps;Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/FormattedStringBuilder;I)I

    move-result v9

    add-int/2addr v5, v9

    iput v5, v8, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->length1:I

    .line 369
    new-instance v5, Landroid/icu/impl/FormattedStringBuilder;

    invoke-direct {v5}, Landroid/icu/impl/FormattedStringBuilder;-><init>()V

    .line 370
    .local v5, "tempString":Landroid/icu/impl/FormattedStringBuilder;
    move-object/from16 v9, p2

    invoke-static {v3, v9, v5, v10}, Landroid/icu/number/NumberFormatterImpl;->writeNumber(Landroid/icu/impl/number/MicroProps;Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/FormattedStringBuilder;I)I

    .line 371
    iget v12, v8, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->length2:I

    invoke-virtual {v8}, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->index2()I

    move-result v13

    invoke-virtual {v1, v13, v5}, Landroid/icu/impl/FormattedStringBuilder;->insert(ILandroid/icu/impl/FormattedStringBuilder;)I

    move-result v13

    add-int/2addr v12, v13

    iput v12, v8, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->length2:I

    .line 375
    if-eqz v7, :cond_140

    .line 376
    iget-object v12, v2, Landroid/icu/impl/number/MicroProps;->modInner:Landroid/icu/impl/number/Modifier;

    iget-object v13, v3, Landroid/icu/impl/number/MicroProps;->modInner:Landroid/icu/impl/number/Modifier;

    invoke-virtual {v0, v12, v13}, Landroid/icu/number/NumberRangeFormatterImpl;->resolveModifierPlurals(Landroid/icu/impl/number/Modifier;Landroid/icu/impl/number/Modifier;)Landroid/icu/impl/number/Modifier;

    move-result-object v12

    .line 377
    .local v12, "mod":Landroid/icu/impl/number/Modifier;
    iget v13, v8, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthSuffix:I

    invoke-virtual {v8}, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->index0()I

    move-result v14

    invoke-virtual {v8}, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->index4()I

    move-result v15

    invoke-interface {v12, v1, v14, v15}, Landroid/icu/impl/number/Modifier;->apply(Landroid/icu/impl/FormattedStringBuilder;II)I

    move-result v14

    add-int/2addr v13, v14

    iput v13, v8, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthSuffix:I

    .line 378
    iget v13, v8, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthPrefix:I

    invoke-interface {v12}, Landroid/icu/impl/number/Modifier;->getPrefixLength()I

    move-result v14

    add-int/2addr v13, v14

    iput v13, v8, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthPrefix:I

    .line 379
    iget v13, v8, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthSuffix:I

    invoke-interface {v12}, Landroid/icu/impl/number/Modifier;->getPrefixLength()I

    move-result v14

    sub-int/2addr v13, v14

    iput v13, v8, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthSuffix:I

    .line 380
    .end local v12    # "mod":Landroid/icu/impl/number/Modifier;
    goto :goto_166

    .line 381
    :cond_140
    iget v12, v8, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->length1:I

    iget-object v13, v2, Landroid/icu/impl/number/MicroProps;->modInner:Landroid/icu/impl/number/Modifier;

    invoke-virtual {v8}, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->index0()I

    move-result v14

    invoke-virtual {v8}, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->index1()I

    move-result v15

    invoke-interface {v13, v1, v14, v15}, Landroid/icu/impl/number/Modifier;->apply(Landroid/icu/impl/FormattedStringBuilder;II)I

    move-result v13

    add-int/2addr v12, v13

    iput v12, v8, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->length1:I

    .line 382
    iget v12, v8, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->length2:I

    iget-object v13, v3, Landroid/icu/impl/number/MicroProps;->modInner:Landroid/icu/impl/number/Modifier;

    invoke-virtual {v8}, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->index2()I

    move-result v14

    invoke-virtual {v8}, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->index4()I

    move-result v15

    invoke-interface {v13, v1, v14, v15}, Landroid/icu/impl/number/Modifier;->apply(Landroid/icu/impl/FormattedStringBuilder;II)I

    move-result v13

    add-int/2addr v12, v13

    iput v12, v8, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->length2:I

    .line 385
    :goto_166
    if-eqz v6, :cond_194

    .line 386
    iget-object v12, v2, Landroid/icu/impl/number/MicroProps;->modMiddle:Landroid/icu/impl/number/Modifier;

    iget-object v13, v3, Landroid/icu/impl/number/MicroProps;->modMiddle:Landroid/icu/impl/number/Modifier;

    invoke-virtual {v0, v12, v13}, Landroid/icu/number/NumberRangeFormatterImpl;->resolveModifierPlurals(Landroid/icu/impl/number/Modifier;Landroid/icu/impl/number/Modifier;)Landroid/icu/impl/number/Modifier;

    move-result-object v12

    .line 387
    .restart local v12    # "mod":Landroid/icu/impl/number/Modifier;
    iget v13, v8, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthSuffix:I

    invoke-virtual {v8}, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->index0()I

    move-result v14

    invoke-virtual {v8}, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->index4()I

    move-result v15

    invoke-interface {v12, v1, v14, v15}, Landroid/icu/impl/number/Modifier;->apply(Landroid/icu/impl/FormattedStringBuilder;II)I

    move-result v14

    add-int/2addr v13, v14

    iput v13, v8, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthSuffix:I

    .line 388
    iget v13, v8, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthPrefix:I

    invoke-interface {v12}, Landroid/icu/impl/number/Modifier;->getPrefixLength()I

    move-result v14

    add-int/2addr v13, v14

    iput v13, v8, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthPrefix:I

    .line 389
    iget v13, v8, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthSuffix:I

    invoke-interface {v12}, Landroid/icu/impl/number/Modifier;->getPrefixLength()I

    move-result v14

    sub-int/2addr v13, v14

    iput v13, v8, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthSuffix:I

    .line 390
    .end local v12    # "mod":Landroid/icu/impl/number/Modifier;
    goto :goto_1ba

    .line 391
    :cond_194
    iget v12, v8, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->length1:I

    iget-object v13, v2, Landroid/icu/impl/number/MicroProps;->modMiddle:Landroid/icu/impl/number/Modifier;

    invoke-virtual {v8}, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->index0()I

    move-result v14

    invoke-virtual {v8}, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->index1()I

    move-result v15

    invoke-interface {v13, v1, v14, v15}, Landroid/icu/impl/number/Modifier;->apply(Landroid/icu/impl/FormattedStringBuilder;II)I

    move-result v13

    add-int/2addr v12, v13

    iput v12, v8, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->length1:I

    .line 392
    iget v12, v8, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->length2:I

    iget-object v13, v3, Landroid/icu/impl/number/MicroProps;->modMiddle:Landroid/icu/impl/number/Modifier;

    invoke-virtual {v8}, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->index2()I

    move-result v14

    invoke-virtual {v8}, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->index4()I

    move-result v15

    invoke-interface {v13, v1, v14, v15}, Landroid/icu/impl/number/Modifier;->apply(Landroid/icu/impl/FormattedStringBuilder;II)I

    move-result v13

    add-int/2addr v12, v13

    iput v12, v8, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->length2:I

    .line 395
    :goto_1ba
    if-eqz v4, :cond_1e8

    .line 396
    iget-object v12, v2, Landroid/icu/impl/number/MicroProps;->modOuter:Landroid/icu/impl/number/Modifier;

    iget-object v13, v3, Landroid/icu/impl/number/MicroProps;->modOuter:Landroid/icu/impl/number/Modifier;

    invoke-virtual {v0, v12, v13}, Landroid/icu/number/NumberRangeFormatterImpl;->resolveModifierPlurals(Landroid/icu/impl/number/Modifier;Landroid/icu/impl/number/Modifier;)Landroid/icu/impl/number/Modifier;

    move-result-object v12

    .line 397
    .restart local v12    # "mod":Landroid/icu/impl/number/Modifier;
    iget v13, v8, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthSuffix:I

    invoke-virtual {v8}, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->index0()I

    move-result v14

    invoke-virtual {v8}, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->index4()I

    move-result v15

    invoke-interface {v12, v1, v14, v15}, Landroid/icu/impl/number/Modifier;->apply(Landroid/icu/impl/FormattedStringBuilder;II)I

    move-result v14

    add-int/2addr v13, v14

    iput v13, v8, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthSuffix:I

    .line 398
    iget v13, v8, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthPrefix:I

    invoke-interface {v12}, Landroid/icu/impl/number/Modifier;->getPrefixLength()I

    move-result v14

    add-int/2addr v13, v14

    iput v13, v8, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthPrefix:I

    .line 399
    iget v13, v8, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthSuffix:I

    invoke-interface {v12}, Landroid/icu/impl/number/Modifier;->getPrefixLength()I

    move-result v14

    sub-int/2addr v13, v14

    iput v13, v8, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthSuffix:I

    .line 400
    .end local v12    # "mod":Landroid/icu/impl/number/Modifier;
    goto :goto_20e

    .line 401
    :cond_1e8
    iget v12, v8, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->length1:I

    iget-object v13, v2, Landroid/icu/impl/number/MicroProps;->modOuter:Landroid/icu/impl/number/Modifier;

    invoke-virtual {v8}, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->index0()I

    move-result v14

    invoke-virtual {v8}, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->index1()I

    move-result v15

    invoke-interface {v13, v1, v14, v15}, Landroid/icu/impl/number/Modifier;->apply(Landroid/icu/impl/FormattedStringBuilder;II)I

    move-result v13

    add-int/2addr v12, v13

    iput v12, v8, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->length1:I

    .line 402
    iget v12, v8, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->length2:I

    iget-object v13, v3, Landroid/icu/impl/number/MicroProps;->modOuter:Landroid/icu/impl/number/Modifier;

    invoke-virtual {v8}, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->index2()I

    move-result v14

    invoke-virtual {v8}, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->index4()I

    move-result v15

    invoke-interface {v13, v1, v14, v15}, Landroid/icu/impl/number/Modifier;->apply(Landroid/icu/impl/FormattedStringBuilder;II)I

    move-result v13

    add-int/2addr v12, v13

    iput v12, v8, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->length2:I

    .line 406
    :goto_20e
    sget-object v12, Landroid/icu/number/NumberRangeFormatter$SpanField;->NUMBER_RANGE_SPAN:Landroid/icu/number/NumberRangeFormatter$SpanField;

    .line 409
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 410
    invoke-virtual {v8}, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->index0()I

    move-result v13

    .line 411
    invoke-virtual {v8}, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->index1()I

    move-result v14

    .line 406
    invoke-static {v1, v12, v10, v13, v14}, Landroid/icu/impl/FormattedValueStringBuilderImpl;->applySpanRange(Landroid/icu/impl/FormattedStringBuilder;Landroid/icu/text/UFormat$SpanField;Ljava/lang/Object;II)V

    .line 412
    sget-object v10, Landroid/icu/number/NumberRangeFormatter$SpanField;->NUMBER_RANGE_SPAN:Landroid/icu/number/NumberRangeFormatter$SpanField;

    .line 415
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 416
    invoke-virtual {v8}, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->index2()I

    move-result v13

    .line 417
    invoke-virtual {v8}, Landroid/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->index3()I

    move-result v14

    .line 412
    invoke-static {v1, v10, v12, v13, v14}, Landroid/icu/impl/FormattedValueStringBuilderImpl;->applySpanRange(Landroid/icu/impl/FormattedStringBuilder;Landroid/icu/text/UFormat$SpanField;Ljava/lang/Object;II)V

    .line 418
    return-void

    nop

    :pswitch_data_232
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
    .end packed-switch
.end method

.method private blacklist formatSingleValue(Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/FormattedStringBuilder;Landroid/icu/impl/number/MicroProps;Landroid/icu/impl/number/MicroProps;)V
    .registers 8
    .param p1, "quantity1"    # Landroid/icu/impl/number/DecimalQuantity;
    .param p2, "quantity2"    # Landroid/icu/impl/number/DecimalQuantity;
    .param p3, "string"    # Landroid/icu/impl/FormattedStringBuilder;
    .param p4, "micros1"    # Landroid/icu/impl/number/MicroProps;
    .param p5, "micros2"    # Landroid/icu/impl/number/MicroProps;

    .line 247
    iget-boolean v0, p0, Landroid/icu/number/NumberRangeFormatterImpl;->fSameFormatters:Z

    if-eqz v0, :cond_d

    .line 248
    const/4 v0, 0x0

    invoke-static {p4, p1, p3, v0}, Landroid/icu/number/NumberFormatterImpl;->writeNumber(Landroid/icu/impl/number/MicroProps;Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/FormattedStringBuilder;I)I

    move-result v1

    .line 249
    .local v1, "length":I
    invoke-static {p4, p3, v0, v1}, Landroid/icu/number/NumberFormatterImpl;->writeAffixes(Landroid/icu/impl/number/MicroProps;Landroid/icu/impl/FormattedStringBuilder;II)I

    .line 250
    .end local v1    # "length":I
    goto :goto_10

    .line 251
    :cond_d
    invoke-direct/range {p0 .. p5}, Landroid/icu/number/NumberRangeFormatterImpl;->formatRange(Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/FormattedStringBuilder;Landroid/icu/impl/number/MicroProps;Landroid/icu/impl/number/MicroProps;)V

    .line 254
    :goto_10
    return-void
.end method

.method private static blacklist getNumberRangeData(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/number/NumberRangeFormatterImpl;)V
    .registers 8
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "nsName"    # Ljava/lang/String;
    .param p2, "out"    # Landroid/icu/number/NumberRangeFormatterImpl;

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Landroid/icu/number/NumberRangeFormatterImpl$NumberRangeDataSink;

    invoke-direct {v1, v0}, Landroid/icu/number/NumberRangeFormatterImpl$NumberRangeDataSink;-><init>(Ljava/lang/StringBuilder;)V

    .line 122
    .local v1, "sink":Landroid/icu/number/NumberRangeFormatterImpl$NumberRangeDataSink;
    const-string v2, "android/icu/impl/data/icudata"

    invoke-static {v2, p0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/ICUResourceBundle;

    .line 123
    .local v2, "resource":Landroid/icu/impl/ICUResourceBundle;
    const-string v3, "NumberElements/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const-string v3, "/miscPatterns"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, "key":Ljava/lang/String;
    :try_start_23
    invoke-virtual {v2, v3, v1}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V
    :try_end_26
    .catch Ljava/util/MissingResourceException; {:try_start_23 .. :try_end_26} :catch_27

    .line 131
    goto :goto_28

    .line 129
    :catch_27
    move-exception v4

    .line 134
    :goto_28
    invoke-virtual {v1}, Landroid/icu/number/NumberRangeFormatterImpl$NumberRangeDataSink;->isComplete()Z

    move-result v4

    if-nez v4, :cond_33

    .line 135
    const-string v4, "NumberElements/latn/miscPatterns"

    invoke-virtual {v2, v4, v1}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V

    .line 138
    :cond_33
    invoke-virtual {v1}, Landroid/icu/number/NumberRangeFormatterImpl$NumberRangeDataSink;->fillInDefaults()V

    .line 140
    iget-object v4, v1, Landroid/icu/number/NumberRangeFormatterImpl$NumberRangeDataSink;->rangePattern:Ljava/lang/String;

    iput-object v4, p2, Landroid/icu/number/NumberRangeFormatterImpl;->fRangePattern:Ljava/lang/String;

    .line 142
    return-void
.end method


# virtual methods
.method public blacklist format(Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/number/DecimalQuantity;Z)Landroid/icu/number/FormattedNumberRange;
    .registers 11
    .param p1, "quantity1"    # Landroid/icu/impl/number/DecimalQuantity;
    .param p2, "quantity2"    # Landroid/icu/impl/number/DecimalQuantity;
    .param p3, "equalBeforeRounding"    # Z

    .line 182
    new-instance v0, Landroid/icu/impl/FormattedStringBuilder;

    invoke-direct {v0}, Landroid/icu/impl/FormattedStringBuilder;-><init>()V

    move-object v4, v0

    .line 183
    .local v4, "string":Landroid/icu/impl/FormattedStringBuilder;
    iget-object v0, p0, Landroid/icu/number/NumberRangeFormatterImpl;->formatterImpl1:Landroid/icu/number/NumberFormatterImpl;

    invoke-virtual {v0, p1}, Landroid/icu/number/NumberFormatterImpl;->preProcess(Landroid/icu/impl/number/DecimalQuantity;)Landroid/icu/impl/number/MicroProps;

    move-result-object v5

    .line 185
    .local v5, "micros1":Landroid/icu/impl/number/MicroProps;
    iget-boolean v0, p0, Landroid/icu/number/NumberRangeFormatterImpl;->fSameFormatters:Z

    if-eqz v0, :cond_18

    .line 186
    iget-object v0, p0, Landroid/icu/number/NumberRangeFormatterImpl;->formatterImpl1:Landroid/icu/number/NumberFormatterImpl;

    invoke-virtual {v0, p2}, Landroid/icu/number/NumberFormatterImpl;->preProcess(Landroid/icu/impl/number/DecimalQuantity;)Landroid/icu/impl/number/MicroProps;

    move-result-object v0

    move-object v6, v0

    .local v0, "micros2":Landroid/icu/impl/number/MicroProps;
    goto :goto_1f

    .line 188
    .end local v0    # "micros2":Landroid/icu/impl/number/MicroProps;
    :cond_18
    iget-object v0, p0, Landroid/icu/number/NumberRangeFormatterImpl;->formatterImpl2:Landroid/icu/number/NumberFormatterImpl;

    invoke-virtual {v0, p2}, Landroid/icu/number/NumberFormatterImpl;->preProcess(Landroid/icu/impl/number/DecimalQuantity;)Landroid/icu/impl/number/MicroProps;

    move-result-object v0

    move-object v6, v0

    .line 196
    .local v6, "micros2":Landroid/icu/impl/number/MicroProps;
    :goto_1f
    iget-object v0, v5, Landroid/icu/impl/number/MicroProps;->modInner:Landroid/icu/impl/number/Modifier;

    iget-object v1, v6, Landroid/icu/impl/number/MicroProps;->modInner:Landroid/icu/impl/number/Modifier;

    invoke-interface {v0, v1}, Landroid/icu/impl/number/Modifier;->semanticallyEquivalent(Landroid/icu/impl/number/Modifier;)Z

    move-result v0

    if-eqz v0, :cond_7a

    iget-object v0, v5, Landroid/icu/impl/number/MicroProps;->modMiddle:Landroid/icu/impl/number/Modifier;

    iget-object v1, v6, Landroid/icu/impl/number/MicroProps;->modMiddle:Landroid/icu/impl/number/Modifier;

    .line 197
    invoke-interface {v0, v1}, Landroid/icu/impl/number/Modifier;->semanticallyEquivalent(Landroid/icu/impl/number/Modifier;)Z

    move-result v0

    if-eqz v0, :cond_77

    iget-object v0, v5, Landroid/icu/impl/number/MicroProps;->modOuter:Landroid/icu/impl/number/Modifier;

    iget-object v1, v6, Landroid/icu/impl/number/MicroProps;->modOuter:Landroid/icu/impl/number/Modifier;

    .line 198
    invoke-interface {v0, v1}, Landroid/icu/impl/number/Modifier;->semanticallyEquivalent(Landroid/icu/impl/number/Modifier;)Z

    move-result v0

    if-nez v0, :cond_40

    move-object v2, p1

    move-object v3, p2

    goto :goto_7c

    .line 205
    :cond_40
    if-eqz p3, :cond_45

    .line 206
    sget-object v0, Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;->EQUAL_BEFORE_ROUNDING:Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;

    .local v0, "identityResult":Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;
    goto :goto_50

    .line 207
    .end local v0    # "identityResult":Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;
    :cond_45
    invoke-interface {p1, p2}, Landroid/icu/impl/number/DecimalQuantity;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 208
    sget-object v0, Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;->EQUAL_AFTER_ROUNDING:Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;

    .restart local v0    # "identityResult":Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;
    goto :goto_50

    .line 210
    .end local v0    # "identityResult":Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;
    :cond_4e
    sget-object v0, Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;->NOT_EQUAL:Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;

    .line 215
    .restart local v0    # "identityResult":Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;
    :goto_50
    iget-object v1, p0, Landroid/icu/number/NumberRangeFormatterImpl;->fIdentityFallback:Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;

    invoke-virtual {p0, v1, v0}, Landroid/icu/number/NumberRangeFormatterImpl;->identity2d(Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;)I

    move-result v1

    sparse-switch v1, :sswitch_data_88

    .line 238
    move-object v2, p1

    move-object v3, p2

    .end local p1    # "quantity1":Landroid/icu/impl/number/DecimalQuantity;
    .end local p2    # "quantity2":Landroid/icu/impl/number/DecimalQuantity;
    .local v2, "quantity1":Landroid/icu/impl/number/DecimalQuantity;
    .local v3, "quantity2":Landroid/icu/impl/number/DecimalQuantity;
    goto :goto_71

    .line 222
    .end local v2    # "quantity1":Landroid/icu/impl/number/DecimalQuantity;
    .end local v3    # "quantity2":Landroid/icu/impl/number/DecimalQuantity;
    .restart local p1    # "quantity1":Landroid/icu/impl/number/DecimalQuantity;
    .restart local p2    # "quantity2":Landroid/icu/impl/number/DecimalQuantity;
    :sswitch_5c
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .end local p1    # "quantity1":Landroid/icu/impl/number/DecimalQuantity;
    .end local p2    # "quantity2":Landroid/icu/impl/number/DecimalQuantity;
    .restart local v2    # "quantity1":Landroid/icu/impl/number/DecimalQuantity;
    .restart local v3    # "quantity2":Landroid/icu/impl/number/DecimalQuantity;
    invoke-direct/range {v1 .. v6}, Landroid/icu/number/NumberRangeFormatterImpl;->formatRange(Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/FormattedStringBuilder;Landroid/icu/impl/number/MicroProps;Landroid/icu/impl/number/MicroProps;)V

    .line 223
    goto :goto_71

    .line 228
    .end local v2    # "quantity1":Landroid/icu/impl/number/DecimalQuantity;
    .end local v3    # "quantity2":Landroid/icu/impl/number/DecimalQuantity;
    .restart local p1    # "quantity1":Landroid/icu/impl/number/DecimalQuantity;
    .restart local p2    # "quantity2":Landroid/icu/impl/number/DecimalQuantity;
    :sswitch_63
    move-object v2, p1

    move-object v3, p2

    .end local p1    # "quantity1":Landroid/icu/impl/number/DecimalQuantity;
    .end local p2    # "quantity2":Landroid/icu/impl/number/DecimalQuantity;
    .restart local v2    # "quantity1":Landroid/icu/impl/number/DecimalQuantity;
    .restart local v3    # "quantity2":Landroid/icu/impl/number/DecimalQuantity;
    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/icu/number/NumberRangeFormatterImpl;->formatApproximately(Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/FormattedStringBuilder;Landroid/icu/impl/number/MicroProps;Landroid/icu/impl/number/MicroProps;)V

    .line 229
    goto :goto_71

    .line 234
    .end local v2    # "quantity1":Landroid/icu/impl/number/DecimalQuantity;
    .end local v3    # "quantity2":Landroid/icu/impl/number/DecimalQuantity;
    .restart local p1    # "quantity1":Landroid/icu/impl/number/DecimalQuantity;
    .restart local p2    # "quantity2":Landroid/icu/impl/number/DecimalQuantity;
    :sswitch_6a
    move-object v2, p1

    move-object v3, p2

    .end local p1    # "quantity1":Landroid/icu/impl/number/DecimalQuantity;
    .end local p2    # "quantity2":Landroid/icu/impl/number/DecimalQuantity;
    .restart local v2    # "quantity1":Landroid/icu/impl/number/DecimalQuantity;
    .restart local v3    # "quantity2":Landroid/icu/impl/number/DecimalQuantity;
    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/icu/number/NumberRangeFormatterImpl;->formatSingleValue(Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/FormattedStringBuilder;Landroid/icu/impl/number/MicroProps;Landroid/icu/impl/number/MicroProps;)V

    .line 235
    nop

    .line 242
    :goto_71
    new-instance p1, Landroid/icu/number/FormattedNumberRange;

    invoke-direct {p1, v4, v2, v3, v0}, Landroid/icu/number/FormattedNumberRange;-><init>(Landroid/icu/impl/FormattedStringBuilder;Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;)V

    return-object p1

    .line 197
    .end local v0    # "identityResult":Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;
    .end local v2    # "quantity1":Landroid/icu/impl/number/DecimalQuantity;
    .end local v3    # "quantity2":Landroid/icu/impl/number/DecimalQuantity;
    .restart local p1    # "quantity1":Landroid/icu/impl/number/DecimalQuantity;
    .restart local p2    # "quantity2":Landroid/icu/impl/number/DecimalQuantity;
    :cond_77
    move-object v2, p1

    move-object v3, p2

    .end local p1    # "quantity1":Landroid/icu/impl/number/DecimalQuantity;
    .end local p2    # "quantity2":Landroid/icu/impl/number/DecimalQuantity;
    .restart local v2    # "quantity1":Landroid/icu/impl/number/DecimalQuantity;
    .restart local v3    # "quantity2":Landroid/icu/impl/number/DecimalQuantity;
    goto :goto_7c

    .line 196
    .end local v2    # "quantity1":Landroid/icu/impl/number/DecimalQuantity;
    .end local v3    # "quantity2":Landroid/icu/impl/number/DecimalQuantity;
    .restart local p1    # "quantity1":Landroid/icu/impl/number/DecimalQuantity;
    .restart local p2    # "quantity2":Landroid/icu/impl/number/DecimalQuantity;
    :cond_7a
    move-object v2, p1

    move-object v3, p2

    .line 199
    .end local p1    # "quantity1":Landroid/icu/impl/number/DecimalQuantity;
    .end local p2    # "quantity2":Landroid/icu/impl/number/DecimalQuantity;
    .restart local v2    # "quantity1":Landroid/icu/impl/number/DecimalQuantity;
    .restart local v3    # "quantity2":Landroid/icu/impl/number/DecimalQuantity;
    :goto_7c
    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/icu/number/NumberRangeFormatterImpl;->formatRange(Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/FormattedStringBuilder;Landroid/icu/impl/number/MicroProps;Landroid/icu/impl/number/MicroProps;)V

    .line 200
    new-instance p1, Landroid/icu/number/FormattedNumberRange;

    sget-object p2, Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;->NOT_EQUAL:Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;

    invoke-direct {p1, v4, v2, v3, p2}, Landroid/icu/number/FormattedNumberRange;-><init>(Landroid/icu/impl/FormattedStringBuilder;Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;)V

    return-object p1

    :sswitch_data_88
    .sparse-switch
        0x0 -> :sswitch_6a
        0x1 -> :sswitch_6a
        0x2 -> :sswitch_63
        0x3 -> :sswitch_5c
        0x10 -> :sswitch_6a
        0x11 -> :sswitch_63
        0x12 -> :sswitch_63
        0x13 -> :sswitch_5c
        0x20 -> :sswitch_5c
        0x21 -> :sswitch_5c
        0x22 -> :sswitch_5c
        0x23 -> :sswitch_5c
    .end sparse-switch
.end method

.method blacklist identity2d(Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;)I
    .registers 5
    .param p1, "a"    # Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;
    .param p2, "b"    # Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;

    .line 54
    invoke-virtual {p1}, Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;->ordinal()I

    move-result v0

    invoke-virtual {p2}, Landroid/icu/number/NumberRangeFormatter$RangeIdentityResult;->ordinal()I

    move-result v1

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    return v0
.end method

.method blacklist resolveModifierPlurals(Landroid/icu/impl/number/Modifier;Landroid/icu/impl/number/Modifier;)Landroid/icu/impl/number/Modifier;
    .registers 8
    .param p1, "first"    # Landroid/icu/impl/number/Modifier;
    .param p2, "second"    # Landroid/icu/impl/number/Modifier;

    .line 421
    invoke-interface {p1}, Landroid/icu/impl/number/Modifier;->getParameters()Landroid/icu/impl/number/Modifier$Parameters;

    move-result-object v0

    .line 422
    .local v0, "firstParameters":Landroid/icu/impl/number/Modifier$Parameters;
    if-nez v0, :cond_7

    .line 424
    return-object p1

    .line 427
    :cond_7
    invoke-interface {p2}, Landroid/icu/impl/number/Modifier;->getParameters()Landroid/icu/impl/number/Modifier$Parameters;

    move-result-object v1

    .line 428
    .local v1, "secondParameters":Landroid/icu/impl/number/Modifier$Parameters;
    if-nez v1, :cond_e

    .line 430
    return-object p1

    .line 434
    :cond_e
    iget-object v2, p0, Landroid/icu/number/NumberRangeFormatterImpl;->fPluralRanges:Landroid/icu/impl/number/range/StandardPluralRanges;

    iget-object v3, v0, Landroid/icu/impl/number/Modifier$Parameters;->plural:Landroid/icu/impl/StandardPlural;

    iget-object v4, v1, Landroid/icu/impl/number/Modifier$Parameters;->plural:Landroid/icu/impl/StandardPlural;

    invoke-virtual {v2, v3, v4}, Landroid/icu/impl/number/range/StandardPluralRanges;->resolve(Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;)Landroid/icu/impl/StandardPlural;

    move-result-object v2

    .line 437
    .local v2, "resultPlural":Landroid/icu/impl/StandardPlural;
    iget-object v3, v0, Landroid/icu/impl/number/Modifier$Parameters;->obj:Landroid/icu/impl/number/ModifierStore;

    iget-object v4, v0, Landroid/icu/impl/number/Modifier$Parameters;->signum:Landroid/icu/impl/number/Modifier$Signum;

    invoke-interface {v3, v4, v2}, Landroid/icu/impl/number/ModifierStore;->getModifier(Landroid/icu/impl/number/Modifier$Signum;Landroid/icu/impl/StandardPlural;)Landroid/icu/impl/number/Modifier;

    move-result-object v3

    .line 438
    .local v3, "mod":Landroid/icu/impl/number/Modifier;
    nop

    .line 439
    return-object v3
.end method
