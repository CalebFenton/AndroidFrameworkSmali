.class Landroid/icu/message2/NumberFormatterFactory;
.super Ljava/lang/Object;
.source "NumberFormatterFactory.java"

# interfaces
.implements Landroid/icu/message2/FormatterFactory;
.implements Landroid/icu/message2/SelectorFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/message2/NumberFormatterFactory$NumberFormatterImpl;,
        Landroid/icu/message2/NumberFormatterFactory$PluralSelectorImpl;
    }
.end annotation


# instance fields
.field private final blacklist kind:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smformatterForOptions(Ljava/util/Locale;Ljava/util/Map;Ljava/lang/String;)Landroid/icu/number/LocalizedNumberFormatter;
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/icu/message2/NumberFormatterFactory;->formatterForOptions(Ljava/util/Locale;Ljava/util/Map;Ljava/lang/String;)Landroid/icu/number/LocalizedNumberFormatter;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "kind"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_2a

    :cond_a
    goto :goto_1f

    :sswitch_b
    const-string v0, "integer"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_20

    :sswitch_15
    const-string v0, "number"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_20

    :goto_1f
    const/4 v0, -0x1

    :goto_20
    packed-switch v0, :pswitch_data_34

    .line 45
    const-string p1, "number"

    goto :goto_27

    .line 42
    :pswitch_26
    nop

    .line 47
    :goto_27
    iput-object p1, p0, Landroid/icu/message2/NumberFormatterFactory;->kind:Ljava/lang/String;

    .line 48
    return-void

    :sswitch_data_2a
    .sparse-switch
        -0x3da724b7 -> :sswitch_15
        0x74b5813e -> :sswitch_b
    .end sparse-switch

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_26
        :pswitch_26
    .end packed-switch
.end method

.method private static blacklist formatterForOptions(Ljava/util/Locale;Ljava/util/Map;Ljava/lang/String;)Landroid/icu/number/LocalizedNumberFormatter;
    .registers 20
    .param p0, "locale"    # Ljava/util/Locale;
    .param p2, "kind"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/icu/number/LocalizedNumberFormatter;"
        }
    .end annotation

    .line 274
    .local p1, "fixedOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "icu:skeleton"

    invoke-static {v1, v3}, Landroid/icu/message2/OptUtils;->getString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 275
    .local v3, "skeleton":Ljava/lang/String;
    if-eqz v3, :cond_17

    .line 276
    invoke-static {v3}, Landroid/icu/number/NumberFormatter;->forSkeleton(Ljava/lang/String;)Landroid/icu/number/UnlocalizedNumberFormatter;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/icu/number/UnlocalizedNumberFormatter;->locale(Ljava/util/Locale;)Landroid/icu/number/LocalizedNumberFormatter;

    move-result-object v4

    return-object v4

    .line 281
    :cond_17
    invoke-static {}, Landroid/icu/number/NumberFormatter;->with()Landroid/icu/number/UnlocalizedNumberFormatter;

    move-result-object v4

    .line 284
    .local v4, "nf":Landroid/icu/number/UnlocalizedNumberFormatter;
    const-string v5, "number"

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, -0x1

    if-eqz v5, :cond_110

    .line 286
    const-string v5, "notation"

    const-string v11, "standard"

    invoke-static {v1, v5, v11}, Landroid/icu/message2/OptUtils;->getString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_208

    :cond_36
    goto :goto_5d

    :sswitch_37
    const-string v11, "engineering"

    invoke-virtual {v5, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    move v5, v7

    goto :goto_5e

    :sswitch_41
    const-string v11, "scientific"

    invoke-virtual {v5, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    move v5, v8

    goto :goto_5e

    :sswitch_4b
    invoke-virtual {v5, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    const/4 v5, 0x3

    goto :goto_5e

    :sswitch_53
    const-string v11, "compact"

    invoke-virtual {v5, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    move v5, v9

    goto :goto_5e

    :goto_5d
    move v5, v10

    :goto_5e
    packed-switch v5, :pswitch_data_21a

    .line 307
    invoke-static {}, Landroid/icu/number/Notation;->simple()Landroid/icu/number/SimpleNotation;

    move-result-object v5

    .local v5, "notation":Landroid/icu/number/Notation;
    goto :goto_a1

    .line 295
    .end local v5    # "notation":Landroid/icu/number/Notation;
    :pswitch_66
    const-string v5, "compactDisplay"

    const-string v11, "short"

    invoke-static {v1, v5, v11}, Landroid/icu/message2/OptUtils;->getString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_224

    :cond_75
    goto :goto_88

    :sswitch_76
    invoke-virtual {v5, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_75

    move v5, v7

    goto :goto_89

    :sswitch_7e
    const-string v11, "long"

    invoke-virtual {v5, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_75

    move v5, v8

    goto :goto_89

    :goto_88
    move v5, v10

    :goto_89
    packed-switch v5, :pswitch_data_22e

    .line 301
    invoke-static {}, Landroid/icu/number/Notation;->compactShort()Landroid/icu/number/CompactNotation;

    move-result-object v5

    .restart local v5    # "notation":Landroid/icu/number/Notation;
    goto :goto_96

    .line 297
    .end local v5    # "notation":Landroid/icu/number/Notation;
    :pswitch_91
    invoke-static {}, Landroid/icu/number/Notation;->compactLong()Landroid/icu/number/CompactNotation;

    move-result-object v5

    .line 298
    .restart local v5    # "notation":Landroid/icu/number/Notation;
    nop

    .line 304
    :goto_96
    goto :goto_a1

    .line 291
    .end local v5    # "notation":Landroid/icu/number/Notation;
    :pswitch_97
    invoke-static {}, Landroid/icu/number/Notation;->engineering()Landroid/icu/number/ScientificNotation;

    move-result-object v5

    .line 292
    .restart local v5    # "notation":Landroid/icu/number/Notation;
    goto :goto_a1

    .line 288
    .end local v5    # "notation":Landroid/icu/number/Notation;
    :pswitch_9c
    invoke-static {}, Landroid/icu/number/Notation;->scientific()Landroid/icu/number/ScientificNotation;

    move-result-object v5

    .line 289
    .restart local v5    # "notation":Landroid/icu/number/Notation;
    nop

    .line 309
    :goto_a1
    invoke-virtual {v4, v5}, Landroid/icu/number/UnlocalizedNumberFormatter;->notation(Landroid/icu/number/Notation;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object v11

    move-object v4, v11

    check-cast v4, Landroid/icu/number/UnlocalizedNumberFormatter;

    .line 311
    const-string v11, "style"

    const-string v12, "decimal"

    invoke-static {v1, v11, v12}, Landroid/icu/message2/OptUtils;->getString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 312
    .local v11, "strOption":Ljava/lang/String;
    const-string v12, "percent"

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_cb

    .line 313
    sget-object v12, Landroid/icu/util/MeasureUnit;->PERCENT:Landroid/icu/util/MeasureUnit;

    invoke-virtual {v4, v12}, Landroid/icu/number/UnlocalizedNumberFormatter;->unit(Landroid/icu/util/MeasureUnit;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object v12

    check-cast v12, Landroid/icu/number/UnlocalizedNumberFormatter;

    invoke-static {v9}, Landroid/icu/number/Scale;->powerOfTen(I)Landroid/icu/number/Scale;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/icu/number/UnlocalizedNumberFormatter;->scale(Landroid/icu/number/Scale;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object v12

    move-object v4, v12

    check-cast v4, Landroid/icu/number/UnlocalizedNumberFormatter;

    .line 316
    :cond_cb
    const-string v12, "minimumFractionDigits"

    invoke-static {v1, v12}, Landroid/icu/message2/OptUtils;->getInteger(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    .line 317
    .local v12, "option":Ljava/lang/Integer;
    if-eqz v12, :cond_e2

    .line 318
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Landroid/icu/number/Precision;->minFraction(I)Landroid/icu/number/FractionPrecision;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/icu/number/UnlocalizedNumberFormatter;->precision(Landroid/icu/number/Precision;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object v13

    move-object v4, v13

    check-cast v4, Landroid/icu/number/UnlocalizedNumberFormatter;

    .line 320
    :cond_e2
    const-string v13, "maximumFractionDigits"

    invoke-static {v1, v13}, Landroid/icu/message2/OptUtils;->getInteger(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    .line 321
    if-eqz v12, :cond_f9

    .line 322
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Landroid/icu/number/Precision;->maxFraction(I)Landroid/icu/number/FractionPrecision;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/icu/number/UnlocalizedNumberFormatter;->precision(Landroid/icu/number/Precision;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object v13

    move-object v4, v13

    check-cast v4, Landroid/icu/number/UnlocalizedNumberFormatter;

    .line 324
    :cond_f9
    const-string v13, "minimumSignificantDigits"

    invoke-static {v1, v13}, Landroid/icu/message2/OptUtils;->getInteger(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    .line 325
    if-eqz v12, :cond_110

    .line 326
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Landroid/icu/number/Precision;->minSignificantDigits(I)Landroid/icu/number/Precision;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/icu/number/UnlocalizedNumberFormatter;->precision(Landroid/icu/number/Precision;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object v13

    move-object v4, v13

    check-cast v4, Landroid/icu/number/UnlocalizedNumberFormatter;

    .line 330
    .end local v5    # "notation":Landroid/icu/number/Notation;
    .end local v11    # "strOption":Ljava/lang/String;
    .end local v12    # "option":Ljava/lang/Integer;
    :cond_110
    const-string v5, "numberingSystem"

    const-string v11, ""

    invoke-static {v1, v5, v11}, Landroid/icu/message2/OptUtils;->getString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 331
    .local v5, "strOption":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_12f

    .line 332
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 334
    invoke-static {v5}, Landroid/icu/text/NumberingSystem;->getInstanceByName(Ljava/lang/String;)Landroid/icu/text/NumberingSystem;

    move-result-object v11

    .line 335
    .local v11, "ns":Landroid/icu/text/NumberingSystem;
    invoke-virtual {v4, v11}, Landroid/icu/number/UnlocalizedNumberFormatter;->symbols(Landroid/icu/text/NumberingSystem;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object v12

    move-object v4, v12

    check-cast v4, Landroid/icu/number/UnlocalizedNumberFormatter;

    .line 339
    .end local v11    # "ns":Landroid/icu/text/NumberingSystem;
    :cond_12f
    const-string v11, "minimumIntegerDigits"

    invoke-static {v1, v11}, Landroid/icu/message2/OptUtils;->getInteger(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    .line 340
    .local v11, "option":Ljava/lang/Integer;
    nop

    .line 343
    const-string v12, "maximumSignificantDigits"

    invoke-static {v1, v12}, Landroid/icu/message2/OptUtils;->getInteger(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    .line 344
    if-eqz v11, :cond_14d

    .line 345
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Landroid/icu/number/Precision;->maxSignificantDigits(I)Landroid/icu/number/Precision;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/icu/number/UnlocalizedNumberFormatter;->precision(Landroid/icu/number/Precision;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object v12

    move-object v4, v12

    check-cast v4, Landroid/icu/number/UnlocalizedNumberFormatter;

    .line 348
    :cond_14d
    const-string v12, "signDisplay"

    const-string v13, "auto"

    invoke-static {v1, v12, v13}, Landroid/icu/message2/OptUtils;->getString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 350
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v12

    const-string v14, "never"

    const-string v15, "always"

    sparse-switch v12, :sswitch_data_234

    :cond_160
    goto :goto_18d

    :sswitch_161
    const-string v12, "negative"

    invoke-virtual {v5, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_160

    move v12, v9

    goto :goto_18e

    :sswitch_16b
    invoke-virtual {v5, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_160

    const/4 v12, 0x3

    goto :goto_18e

    :sswitch_173
    invoke-virtual {v5, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_160

    const/4 v12, 0x4

    goto :goto_18e

    :sswitch_17b
    const-string v12, "exceptZero"

    invoke-virtual {v5, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_160

    move v12, v7

    goto :goto_18e

    :sswitch_185
    invoke-virtual {v5, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_160

    move v12, v8

    goto :goto_18e

    :goto_18d
    move v12, v10

    :goto_18e
    packed-switch v12, :pswitch_data_24a

    .line 365
    sget-object v12, Landroid/icu/number/NumberFormatter$SignDisplay;->AUTO:Landroid/icu/number/NumberFormatter$SignDisplay;

    .local v12, "signDisplay":Landroid/icu/number/NumberFormatter$SignDisplay;
    goto :goto_1a0

    .line 361
    .end local v12    # "signDisplay":Landroid/icu/number/NumberFormatter$SignDisplay;
    :pswitch_194
    sget-object v12, Landroid/icu/number/NumberFormatter$SignDisplay;->NEVER:Landroid/icu/number/NumberFormatter$SignDisplay;

    .line 362
    .restart local v12    # "signDisplay":Landroid/icu/number/NumberFormatter$SignDisplay;
    goto :goto_1a0

    .line 358
    .end local v12    # "signDisplay":Landroid/icu/number/NumberFormatter$SignDisplay;
    :pswitch_197
    sget-object v12, Landroid/icu/number/NumberFormatter$SignDisplay;->NEGATIVE:Landroid/icu/number/NumberFormatter$SignDisplay;

    .line 359
    .restart local v12    # "signDisplay":Landroid/icu/number/NumberFormatter$SignDisplay;
    goto :goto_1a0

    .line 355
    .end local v12    # "signDisplay":Landroid/icu/number/NumberFormatter$SignDisplay;
    :pswitch_19a
    sget-object v12, Landroid/icu/number/NumberFormatter$SignDisplay;->EXCEPT_ZERO:Landroid/icu/number/NumberFormatter$SignDisplay;

    .line 356
    .restart local v12    # "signDisplay":Landroid/icu/number/NumberFormatter$SignDisplay;
    goto :goto_1a0

    .line 352
    .end local v12    # "signDisplay":Landroid/icu/number/NumberFormatter$SignDisplay;
    :pswitch_19d
    sget-object v12, Landroid/icu/number/NumberFormatter$SignDisplay;->ALWAYS:Landroid/icu/number/NumberFormatter$SignDisplay;

    .line 353
    .restart local v12    # "signDisplay":Landroid/icu/number/NumberFormatter$SignDisplay;
    nop

    .line 367
    :goto_1a0
    invoke-virtual {v4, v12}, Landroid/icu/number/UnlocalizedNumberFormatter;->sign(Landroid/icu/number/NumberFormatter$SignDisplay;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Landroid/icu/number/UnlocalizedNumberFormatter;

    .line 370
    const-string v6, "useGrouping"

    invoke-static {v1, v6, v13}, Landroid/icu/message2/OptUtils;->getString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 371
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_256

    :cond_1b5
    goto :goto_1d8

    :sswitch_1b6
    invoke-virtual {v5, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b5

    move v6, v7

    goto :goto_1d9

    :sswitch_1be
    const-string v6, "min2"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b5

    move v6, v9

    goto :goto_1d9

    :sswitch_1c8
    invoke-virtual {v5, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b5

    const/4 v6, 0x3

    goto :goto_1d9

    :sswitch_1d0
    invoke-virtual {v5, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b5

    move v6, v8

    goto :goto_1d9

    :goto_1d8
    move v6, v10

    :goto_1d9
    packed-switch v6, :pswitch_data_268

    .line 383
    sget-object v6, Landroid/icu/number/NumberFormatter$GroupingStrategy;->AUTO:Landroid/icu/number/NumberFormatter$GroupingStrategy;

    .local v6, "grp":Landroid/icu/number/NumberFormatter$GroupingStrategy;
    goto :goto_1e8

    .line 379
    .end local v6    # "grp":Landroid/icu/number/NumberFormatter$GroupingStrategy;
    :pswitch_1df
    sget-object v6, Landroid/icu/number/NumberFormatter$GroupingStrategy;->MIN2:Landroid/icu/number/NumberFormatter$GroupingStrategy;

    .line 380
    .restart local v6    # "grp":Landroid/icu/number/NumberFormatter$GroupingStrategy;
    goto :goto_1e8

    .line 376
    .end local v6    # "grp":Landroid/icu/number/NumberFormatter$GroupingStrategy;
    :pswitch_1e2
    sget-object v6, Landroid/icu/number/NumberFormatter$GroupingStrategy;->OFF:Landroid/icu/number/NumberFormatter$GroupingStrategy;

    .line 377
    .restart local v6    # "grp":Landroid/icu/number/NumberFormatter$GroupingStrategy;
    goto :goto_1e8

    .line 373
    .end local v6    # "grp":Landroid/icu/number/NumberFormatter$GroupingStrategy;
    :pswitch_1e5
    sget-object v6, Landroid/icu/number/NumberFormatter$GroupingStrategy;->ON_ALIGNED:Landroid/icu/number/NumberFormatter$GroupingStrategy;

    .line 374
    .restart local v6    # "grp":Landroid/icu/number/NumberFormatter$GroupingStrategy;
    nop

    .line 385
    :goto_1e8
    invoke-virtual {v4, v6}, Landroid/icu/number/UnlocalizedNumberFormatter;->grouping(Landroid/icu/number/NumberFormatter$GroupingStrategy;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object v7

    move-object v4, v7

    check-cast v4, Landroid/icu/number/UnlocalizedNumberFormatter;

    .line 387
    const-string v7, "integer"

    invoke-virtual {v2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_202

    .line 388
    invoke-static {}, Landroid/icu/number/Precision;->integer()Landroid/icu/number/FractionPrecision;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/icu/number/UnlocalizedNumberFormatter;->precision(Landroid/icu/number/Precision;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object v7

    move-object v4, v7

    check-cast v4, Landroid/icu/number/UnlocalizedNumberFormatter;

    .line 391
    :cond_202
    invoke-virtual {v4, v0}, Landroid/icu/number/UnlocalizedNumberFormatter;->locale(Ljava/util/Locale;)Landroid/icu/number/LocalizedNumberFormatter;

    move-result-object v7

    return-object v7

    nop

    :sswitch_data_208
    .sparse-switch
        0x38a73b23 -> :sswitch_53
        0x4e3d1ebd -> :sswitch_4b
        0x4fee8829 -> :sswitch_41
        0x65b8cf13 -> :sswitch_37
    .end sparse-switch

    :pswitch_data_21a
    .packed-switch 0x0
        :pswitch_9c
        :pswitch_97
        :pswitch_66
    .end packed-switch

    :sswitch_data_224
    .sparse-switch
        0x32c67c -> :sswitch_7e
        0x685847c -> :sswitch_76
    .end sparse-switch

    :pswitch_data_22e
    .packed-switch 0x0
        :pswitch_91
    .end packed-switch

    :sswitch_data_234
    .sparse-switch
        -0x54506df1 -> :sswitch_185
        -0x4e5cbc9f -> :sswitch_17b
        0x2dddaf -> :sswitch_173
        0x63dca8c -> :sswitch_16b
        0x36e70c35 -> :sswitch_161
    .end sparse-switch

    :pswitch_data_24a
    .packed-switch 0x0
        :pswitch_19d
        :pswitch_19a
        :pswitch_197
        :pswitch_194
    .end packed-switch

    :sswitch_data_256
    .sparse-switch
        -0x54506df1 -> :sswitch_1d0
        0x2dddaf -> :sswitch_1c8
        0x332420 -> :sswitch_1be
        0x63dca8c -> :sswitch_1b6
    .end sparse-switch

    :pswitch_data_268
    .packed-switch 0x0
        :pswitch_1e5
        :pswitch_1e2
        :pswitch_1df
    .end packed-switch
.end method


# virtual methods
.method public blacklist createFormatter(Ljava/util/Locale;Ljava/util/Map;)Landroid/icu/message2/Formatter;
    .registers 5
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/icu/message2/Formatter;"
        }
    .end annotation

    .line 55
    .local p2, "fixedOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Landroid/icu/message2/NumberFormatterFactory$NumberFormatterImpl;

    iget-object v1, p0, Landroid/icu/message2/NumberFormatterFactory;->kind:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1}, Landroid/icu/message2/NumberFormatterFactory$NumberFormatterImpl;-><init>(Ljava/util/Locale;Ljava/util/Map;Ljava/lang/String;)V

    return-object v0
.end method

.method public blacklist createSelector(Ljava/util/Locale;Ljava/util/Map;)Landroid/icu/message2/Selector;
    .registers 11
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/icu/message2/Selector;"
        }
    .end annotation

    .line 63
    .local p2, "fixedOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "select"

    const-string v1, ""

    invoke-static {p2, v0, v1}, Landroid/icu/message2/OptUtils;->getString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "type":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_3e

    :cond_f
    goto :goto_24

    :sswitch_10
    const-string v1, "cardinal"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    goto :goto_25

    :sswitch_1a
    const-string v1, "ordinal"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x0

    goto :goto_25

    :goto_24
    const/4 v1, -0x1

    :goto_25
    packed-switch v1, :pswitch_data_48

    .line 71
    sget-object v1, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    .local v1, "pluralType":Landroid/icu/text/PluralRules$PluralType;
    goto :goto_2e

    .line 67
    .end local v1    # "pluralType":Landroid/icu/text/PluralRules$PluralType;
    :pswitch_2b
    sget-object v1, Landroid/icu/text/PluralRules$PluralType;->ORDINAL:Landroid/icu/text/PluralRules$PluralType;

    .line 68
    .restart local v1    # "pluralType":Landroid/icu/text/PluralRules$PluralType;
    nop

    .line 74
    :goto_2e
    invoke-static {p1, v1}, Landroid/icu/text/PluralRules;->forLocale(Ljava/util/Locale;Landroid/icu/text/PluralRules$PluralType;)Landroid/icu/text/PluralRules;

    move-result-object v4

    .line 75
    .local v4, "rules":Landroid/icu/text/PluralRules;
    new-instance v2, Landroid/icu/message2/NumberFormatterFactory$PluralSelectorImpl;

    iget-object v6, p0, Landroid/icu/message2/NumberFormatterFactory;->kind:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v3, p1

    move-object v5, p2

    .end local p1    # "locale":Ljava/util/Locale;
    .end local p2    # "fixedOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v3, "locale":Ljava/util/Locale;
    .local v5, "fixedOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct/range {v2 .. v7}, Landroid/icu/message2/NumberFormatterFactory$PluralSelectorImpl;-><init>(Ljava/util/Locale;Landroid/icu/text/PluralRules;Ljava/util/Map;Ljava/lang/String;Landroid/icu/message2/NumberFormatterFactory-IA;)V

    return-object v2

    nop

    :sswitch_data_3e
    .sparse-switch
        -0x47f1458f -> :sswitch_1a
        -0x7428e0 -> :sswitch_10
    .end sparse-switch

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_2b
    .end packed-switch
.end method
