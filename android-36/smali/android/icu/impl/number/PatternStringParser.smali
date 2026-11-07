.class public Landroid/icu/impl/number/PatternStringParser;
.super Ljava/lang/Object;
.source "PatternStringParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/number/PatternStringParser$ParserState;,
        Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;,
        Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static final blacklist IGNORE_ROUNDING_ALWAYS:I = 0x2

.field public static final blacklist IGNORE_ROUNDING_IF_CURRENCY:I = 0x1

.field public static final blacklist IGNORE_ROUNDING_NEVER:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 10
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o consumeAffix(Landroid/icu/impl/number/PatternStringParser$ParserState;Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;)J
    .registers 7
    .param p0, "state"    # Landroid/icu/impl/number/PatternStringParser$ParserState;
    .param p1, "result"    # Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    .line 321
    iget v0, p0, Landroid/icu/impl/number/PatternStringParser$ParserState;->offset:I

    int-to-long v0, v0

    .line 323
    .local v0, "endpoints":J
    :goto_3
    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->peek()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_28

    goto :goto_24

    .line 349
    :sswitch_c
    iput-boolean v3, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->hasPerMilleSign:Z

    .line 350
    goto :goto_24

    .line 353
    :sswitch_f
    iput-boolean v3, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->hasCurrencySign:Z

    .line 354
    goto :goto_24

    .line 357
    :sswitch_12
    iput-boolean v3, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->hasMinusSign:Z

    .line 358
    goto :goto_24

    .line 361
    :sswitch_15
    iput-boolean v3, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->hasPlusSign:Z

    goto :goto_24

    .line 345
    :sswitch_18
    iput-boolean v3, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->hasPercentSign:Z

    .line 346
    goto :goto_24

    .line 342
    :sswitch_1b
    nop

    .line 366
    iget v2, p0, Landroid/icu/impl/number/PatternStringParser$ParserState;->offset:I

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 367
    return-wide v0

    .line 364
    :goto_24
    invoke-static {p0}, Landroid/icu/impl/number/PatternStringParser;->consumeLiteral(Landroid/icu/impl/number/PatternStringParser$ParserState;)V

    goto :goto_3

    :sswitch_data_28
    .sparse-switch
        -0x1 -> :sswitch_1b
        0x23 -> :sswitch_1b
        0x25 -> :sswitch_18
        0x2a -> :sswitch_1b
        0x2b -> :sswitch_15
        0x2c -> :sswitch_1b
        0x2d -> :sswitch_12
        0x2e -> :sswitch_1b
        0x30 -> :sswitch_1b
        0x31 -> :sswitch_1b
        0x32 -> :sswitch_1b
        0x33 -> :sswitch_1b
        0x34 -> :sswitch_1b
        0x35 -> :sswitch_1b
        0x36 -> :sswitch_1b
        0x37 -> :sswitch_1b
        0x38 -> :sswitch_1b
        0x39 -> :sswitch_1b
        0x3b -> :sswitch_1b
        0x40 -> :sswitch_1b
        0xa4 -> :sswitch_f
        0x2030 -> :sswitch_c
    .end sparse-switch
.end method

.method private static greylist-max-o consumeExponent(Landroid/icu/impl/number/PatternStringParser$ParserState;Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;)V
    .registers 6
    .param p0, "state"    # Landroid/icu/impl/number/PatternStringParser$ParserState;
    .param p1, "result"    # Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    .line 551
    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->peek()I

    move-result v0

    const/16 v1, 0x45

    if-eq v0, v1, :cond_9

    .line 552
    return-void

    .line 554
    :cond_9
    iget-wide v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->groupingSizes:J

    const-wide v2, 0xffff0000L

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_47

    .line 557
    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->next()I

    .line 558
    iget v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    .line 559
    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->peek()I

    move-result v0

    const/16 v2, 0x2b

    if-ne v0, v2, :cond_30

    .line 560
    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->next()I

    .line 561
    iput-boolean v1, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->exponentHasPlusSign:Z

    .line 562
    iget v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    .line 564
    :cond_30
    :goto_30
    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->peek()I

    move-result v0

    const/16 v2, 0x30

    if-ne v0, v2, :cond_46

    .line 565
    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->next()I

    .line 566
    iget v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->exponentZeros:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->exponentZeros:I

    .line 567
    iget v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    goto :goto_30

    .line 569
    :cond_46
    return-void

    .line 555
    :cond_47
    const-string v0, "Cannot have grouping separator in scientific notation"

    invoke-virtual {p0, v0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->toParseException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method private static greylist-max-o consumeFormat(Landroid/icu/impl/number/PatternStringParser$ParserState;Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;)V
    .registers 5
    .param p0, "state"    # Landroid/icu/impl/number/PatternStringParser$ParserState;
    .param p1, "result"    # Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    .line 390
    invoke-static {p0, p1}, Landroid/icu/impl/number/PatternStringParser;->consumeIntegerFormat(Landroid/icu/impl/number/PatternStringParser$ParserState;Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;)V

    .line 391
    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->peek()I

    move-result v0

    const/16 v1, 0x2e

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1a

    .line 392
    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->next()I

    .line 393
    iput-boolean v2, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->hasDecimal:Z

    .line 394
    iget v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    add-int/2addr v0, v2

    iput v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    .line 395
    invoke-static {p0, p1}, Landroid/icu/impl/number/PatternStringParser;->consumeFractionFormat(Landroid/icu/impl/number/PatternStringParser$ParserState;Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;)V

    goto :goto_3c

    .line 396
    :cond_1a
    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->peek()I

    move-result v0

    const/16 v1, 0xa4

    if-ne v0, v1, :cond_3c

    .line 398
    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->peek2()I

    move-result v0

    sparse-switch v0, :sswitch_data_3e

    .line 414
    return-void

    .line 410
    :sswitch_2a
    nop

    .line 418
    iput-boolean v2, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->hasCurrencySign:Z

    .line 419
    iput-boolean v2, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->hasCurrencyDecimal:Z

    .line 420
    iput-boolean v2, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->hasDecimal:Z

    .line 421
    iget v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    add-int/2addr v0, v2

    iput v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    .line 422
    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->next()I

    .line 423
    invoke-static {p0, p1}, Landroid/icu/impl/number/PatternStringParser;->consumeFractionFormat(Landroid/icu/impl/number/PatternStringParser$ParserState;Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;)V

    .line 425
    :cond_3c
    :goto_3c
    return-void

    nop

    :sswitch_data_3e
    .sparse-switch
        0x23 -> :sswitch_2a
        0x30 -> :sswitch_2a
        0x31 -> :sswitch_2a
        0x32 -> :sswitch_2a
        0x33 -> :sswitch_2a
        0x34 -> :sswitch_2a
        0x35 -> :sswitch_2a
        0x36 -> :sswitch_2a
        0x37 -> :sswitch_2a
        0x38 -> :sswitch_2a
        0x39 -> :sswitch_2a
    .end sparse-switch
.end method

.method private static greylist-max-o consumeFractionFormat(Landroid/icu/impl/number/PatternStringParser$ParserState;Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;)V
    .registers 6
    .param p0, "state"    # Landroid/icu/impl/number/PatternStringParser$ParserState;
    .param p1, "result"    # Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    .line 506
    const/4 v0, 0x0

    .line 508
    .local v0, "zeroCounter":I
    :goto_1
    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->peek()I

    move-result v1

    sparse-switch v1, :sswitch_data_64

    .line 544
    return-void

    .line 526
    :sswitch_9
    iget v1, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->fractionHashSigns:I

    if-gtz v1, :cond_43

    .line 529
    iget v1, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    .line 530
    iget v1, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->fractionNumerals:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->fractionNumerals:I

    .line 531
    iget v1, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->fractionTotal:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->fractionTotal:I

    .line 532
    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->peek()I

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_2a

    .line 533
    add-int/lit8 v0, v0, 0x1

    goto :goto_5f

    .line 535
    :cond_2a
    iget-object v1, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->rounding:Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    if-nez v1, :cond_35

    .line 536
    new-instance v1, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-direct {v1}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>()V

    iput-object v1, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->rounding:Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    .line 538
    :cond_35
    iget-object v1, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->rounding:Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->peek()I

    move-result v3

    sub-int/2addr v3, v2

    int-to-byte v2, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->appendDigit(BIZ)V

    .line 539
    const/4 v0, 0x0

    .line 541
    goto :goto_5f

    .line 527
    :cond_43
    const-string v1, "0 cannot follow # after decimal point"

    invoke-virtual {p0, v1}, Landroid/icu/impl/number/PatternStringParser$ParserState;->toParseException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1

    .line 510
    :sswitch_4a
    iget v1, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    .line 511
    iget v1, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->fractionHashSigns:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->fractionHashSigns:I

    .line 512
    iget v1, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->fractionTotal:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->fractionTotal:I

    .line 513
    add-int/lit8 v0, v0, 0x1

    .line 514
    nop

    .line 546
    :goto_5f
    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->next()I

    goto :goto_1

    nop

    :sswitch_data_64
    .sparse-switch
        0x23 -> :sswitch_4a
        0x30 -> :sswitch_9
        0x31 -> :sswitch_9
        0x32 -> :sswitch_9
        0x33 -> :sswitch_9
        0x34 -> :sswitch_9
        0x35 -> :sswitch_9
        0x36 -> :sswitch_9
        0x37 -> :sswitch_9
        0x38 -> :sswitch_9
        0x39 -> :sswitch_9
    .end sparse-switch
.end method

.method private static greylist-max-o consumeIntegerFormat(Landroid/icu/impl/number/PatternStringParser$ParserState;Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;)V
    .registers 9
    .param p0, "state"    # Landroid/icu/impl/number/PatternStringParser$ParserState;
    .param p1, "result"    # Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    .line 429
    nop

    :goto_1
    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->peek()I

    move-result v0

    const/16 v1, 0x10

    const-wide/16 v2, 0x1

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_ea

    .line 488
    goto/16 :goto_b9

    .line 450
    :sswitch_f
    iget v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerNumerals:I

    if-gtz v0, :cond_34

    .line 453
    iget v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerTrailingHashSigns:I

    if-gtz v0, :cond_2d

    .line 456
    iget v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    add-int/2addr v0, v4

    iput v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    .line 457
    iget-wide v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->groupingSizes:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->groupingSizes:J

    .line 458
    iget v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerAtSigns:I

    add-int/2addr v0, v4

    iput v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerAtSigns:I

    .line 459
    iget v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerTotal:I

    add-int/2addr v0, v4

    iput v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerTotal:I

    .line 460
    goto/16 :goto_ad

    .line 454
    :cond_2d
    const-string v0, "Cannot nest # inside of a run of @"

    invoke-virtual {p0, v0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->toParseException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 451
    :cond_34
    const-string v0, "Cannot mix 0 and @"

    invoke-virtual {p0, v0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->toParseException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 472
    :sswitch_3b
    iget v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerAtSigns:I

    if-gtz v0, :cond_77

    .line 475
    iget v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    add-int/2addr v0, v4

    iput v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    .line 476
    iget-wide v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->groupingSizes:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->groupingSizes:J

    .line 477
    iget v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerNumerals:I

    add-int/2addr v0, v4

    iput v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerNumerals:I

    .line 478
    iget v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerTotal:I

    add-int/2addr v0, v4

    iput v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerTotal:I

    .line 479
    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->peek()I

    move-result v0

    const/16 v1, 0x30

    if-eq v0, v1, :cond_66

    iget-object v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->rounding:Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    if-nez v0, :cond_66

    .line 480
    new-instance v0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-direct {v0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>()V

    iput-object v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->rounding:Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    .line 482
    :cond_66
    iget-object v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->rounding:Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    if-eqz v0, :cond_ad

    .line 483
    iget-object v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->rounding:Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->peek()I

    move-result v2

    sub-int/2addr v2, v1

    int-to-byte v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v4}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->appendDigit(BIZ)V

    goto :goto_ad

    .line 473
    :cond_77
    const-string v0, "Cannot mix @ and 0"

    invoke-virtual {p0, v0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->toParseException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 431
    :sswitch_7e
    iget v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    add-int/2addr v0, v4

    iput v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    .line 432
    iget-wide v2, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->groupingSizes:J

    shl-long v0, v2, v1

    iput-wide v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->groupingSizes:J

    .line 433
    goto :goto_ad

    .line 436
    :sswitch_8a
    iget v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerNumerals:I

    if-gtz v0, :cond_b2

    .line 439
    iget v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    add-int/2addr v0, v4

    iput v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    .line 440
    iget-wide v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->groupingSizes:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->groupingSizes:J

    .line 441
    iget v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerAtSigns:I

    if-lez v0, :cond_a2

    .line 442
    iget v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerTrailingHashSigns:I

    add-int/2addr v0, v4

    iput v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerTrailingHashSigns:I

    goto :goto_a7

    .line 444
    :cond_a2
    iget v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerLeadingHashSigns:I

    add-int/2addr v0, v4

    iput v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerLeadingHashSigns:I

    .line 446
    :goto_a7
    iget v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerTotal:I

    add-int/2addr v0, v4

    iput v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerTotal:I

    .line 447
    nop

    .line 490
    :cond_ad
    :goto_ad
    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->next()I

    goto/16 :goto_1

    .line 437
    :cond_b2
    const-string v0, "# cannot follow 0 before decimal point"

    invoke-virtual {p0, v0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->toParseException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 494
    :goto_b9
    iget-wide v2, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->groupingSizes:J

    const-wide/32 v4, 0xffff

    and-long/2addr v2, v4

    long-to-int v0, v2

    int-to-short v0, v0

    .line 495
    .local v0, "grouping1":S
    iget-wide v2, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->groupingSizes:J

    ushr-long v1, v2, v1

    and-long/2addr v1, v4

    long-to-int v1, v1

    int-to-short v1, v1

    .line 496
    .local v1, "grouping2":S
    iget-wide v2, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->groupingSizes:J

    const/16 v6, 0x20

    ushr-long/2addr v2, v6

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-short v2, v2

    .line 497
    .local v2, "grouping3":S
    const/4 v3, -0x1

    if-nez v0, :cond_dd

    if-ne v1, v3, :cond_d6

    goto :goto_dd

    .line 498
    :cond_d6
    const-string v3, "Trailing grouping separator is invalid"

    invoke-virtual {p0, v3}, Landroid/icu/impl/number/PatternStringParser$ParserState;->toParseException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3

    .line 500
    :cond_dd
    :goto_dd
    if-nez v1, :cond_e9

    if-ne v2, v3, :cond_e2

    goto :goto_e9

    .line 501
    :cond_e2
    const-string v3, "Grouping width of zero is invalid"

    invoke-virtual {p0, v3}, Landroid/icu/impl/number/PatternStringParser$ParserState;->toParseException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3

    .line 503
    :cond_e9
    :goto_e9
    return-void

    :sswitch_data_ea
    .sparse-switch
        0x23 -> :sswitch_8a
        0x2c -> :sswitch_7e
        0x30 -> :sswitch_3b
        0x31 -> :sswitch_3b
        0x32 -> :sswitch_3b
        0x33 -> :sswitch_3b
        0x34 -> :sswitch_3b
        0x35 -> :sswitch_3b
        0x36 -> :sswitch_3b
        0x37 -> :sswitch_3b
        0x38 -> :sswitch_3b
        0x39 -> :sswitch_3b
        0x40 -> :sswitch_f
    .end sparse-switch
.end method

.method private static greylist-max-o consumeLiteral(Landroid/icu/impl/number/PatternStringParser$ParserState;)V
    .registers 4
    .param p0, "state"    # Landroid/icu/impl/number/PatternStringParser$ParserState;

    .line 371
    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->peek()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_31

    .line 373
    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->peek()I

    move-result v0

    const/16 v2, 0x27

    if-ne v0, v2, :cond_2d

    .line 374
    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->next()I

    .line 375
    :goto_12
    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->peek()I

    move-result v0

    if-eq v0, v2, :cond_29

    .line 376
    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->peek()I

    move-result v0

    if-eq v0, v1, :cond_22

    .line 379
    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->next()I

    goto :goto_12

    .line 377
    :cond_22
    const-string v0, "Expected quoted literal but found EOL"

    invoke-virtual {p0, v0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->toParseException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 382
    :cond_29
    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->next()I

    goto :goto_30

    .line 385
    :cond_2d
    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->next()I

    .line 387
    :goto_30
    return-void

    .line 372
    :cond_31
    const-string v0, "Expected unquoted literal but found EOL"

    invoke-virtual {p0, v0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->toParseException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method private static greylist-max-o consumePadding(Landroid/icu/impl/number/PatternStringParser$ParserState;Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;Landroid/icu/impl/number/Padder$PadPosition;)V
    .registers 8
    .param p0, "state"    # Landroid/icu/impl/number/PatternStringParser$ParserState;
    .param p1, "result"    # Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;
    .param p2, "paddingLocation"    # Landroid/icu/impl/number/Padder$PadPosition;

    .line 306
    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->peek()I

    move-result v0

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_9

    .line 307
    return-void

    .line 309
    :cond_9
    iget-object v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->paddingLocation:Landroid/icu/impl/number/Padder$PadPosition;

    if-nez v0, :cond_29

    .line 312
    iput-object p2, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->paddingLocation:Landroid/icu/impl/number/Padder$PadPosition;

    .line 313
    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->next()I

    .line 314
    iget-wide v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->paddingEndpoints:J

    iget v2, p0, Landroid/icu/impl/number/PatternStringParser$ParserState;->offset:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    iput-wide v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->paddingEndpoints:J

    .line 315
    invoke-static {p0}, Landroid/icu/impl/number/PatternStringParser;->consumeLiteral(Landroid/icu/impl/number/PatternStringParser$ParserState;)V

    .line 316
    iget-wide v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->paddingEndpoints:J

    iget v2, p0, Landroid/icu/impl/number/PatternStringParser$ParserState;->offset:I

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iput-wide v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->paddingEndpoints:J

    .line 317
    return-void

    .line 310
    :cond_29
    const-string v0, "Cannot have multiple pad specifiers"

    invoke-virtual {p0, v0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->toParseException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method private static greylist-max-o consumePattern(Landroid/icu/impl/number/PatternStringParser$ParserState;Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;)V
    .registers 5
    .param p0, "state"    # Landroid/icu/impl/number/PatternStringParser$ParserState;
    .param p1, "result"    # Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;

    .line 275
    new-instance v0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    invoke-direct {v0}, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;-><init>()V

    iput-object v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->positive:Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    .line 276
    iget-object v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->positive:Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    invoke-static {p0, v0}, Landroid/icu/impl/number/PatternStringParser;->consumeSubpattern(Landroid/icu/impl/number/PatternStringParser$ParserState;Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;)V

    .line 277
    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->peek()I

    move-result v0

    const/16 v1, 0x3b

    const/4 v2, -0x1

    if-ne v0, v1, :cond_2a

    .line 278
    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->next()I

    .line 280
    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->peek()I

    move-result v0

    if-eq v0, v2, :cond_2a

    .line 281
    new-instance v0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    invoke-direct {v0}, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;-><init>()V

    iput-object v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->negative:Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    .line 282
    iget-object v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->negative:Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    invoke-static {p0, v0}, Landroid/icu/impl/number/PatternStringParser;->consumeSubpattern(Landroid/icu/impl/number/PatternStringParser$ParserState;Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;)V

    .line 285
    :cond_2a
    invoke-virtual {p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->peek()I

    move-result v0

    if-ne v0, v2, :cond_31

    .line 288
    return-void

    .line 286
    :cond_31
    const-string v0, "Found unquoted special character"

    invoke-virtual {p0, v0}, Landroid/icu/impl/number/PatternStringParser$ParserState;->toParseException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method private static greylist-max-o consumeSubpattern(Landroid/icu/impl/number/PatternStringParser$ParserState;Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;)V
    .registers 4
    .param p0, "state"    # Landroid/icu/impl/number/PatternStringParser$ParserState;
    .param p1, "result"    # Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    .line 292
    sget-object v0, Landroid/icu/impl/number/Padder$PadPosition;->BEFORE_PREFIX:Landroid/icu/impl/number/Padder$PadPosition;

    invoke-static {p0, p1, v0}, Landroid/icu/impl/number/PatternStringParser;->consumePadding(Landroid/icu/impl/number/PatternStringParser$ParserState;Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;Landroid/icu/impl/number/Padder$PadPosition;)V

    .line 293
    invoke-static {p0, p1}, Landroid/icu/impl/number/PatternStringParser;->consumeAffix(Landroid/icu/impl/number/PatternStringParser$ParserState;Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;)J

    move-result-wide v0

    iput-wide v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->prefixEndpoints:J

    .line 294
    sget-object v0, Landroid/icu/impl/number/Padder$PadPosition;->AFTER_PREFIX:Landroid/icu/impl/number/Padder$PadPosition;

    invoke-static {p0, p1, v0}, Landroid/icu/impl/number/PatternStringParser;->consumePadding(Landroid/icu/impl/number/PatternStringParser$ParserState;Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;Landroid/icu/impl/number/Padder$PadPosition;)V

    .line 295
    invoke-static {p0, p1}, Landroid/icu/impl/number/PatternStringParser;->consumeFormat(Landroid/icu/impl/number/PatternStringParser$ParserState;Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;)V

    .line 296
    invoke-static {p0, p1}, Landroid/icu/impl/number/PatternStringParser;->consumeExponent(Landroid/icu/impl/number/PatternStringParser$ParserState;Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;)V

    .line 297
    sget-object v0, Landroid/icu/impl/number/Padder$PadPosition;->BEFORE_SUFFIX:Landroid/icu/impl/number/Padder$PadPosition;

    invoke-static {p0, p1, v0}, Landroid/icu/impl/number/PatternStringParser;->consumePadding(Landroid/icu/impl/number/PatternStringParser$ParserState;Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;Landroid/icu/impl/number/Padder$PadPosition;)V

    .line 298
    invoke-static {p0, p1}, Landroid/icu/impl/number/PatternStringParser;->consumeAffix(Landroid/icu/impl/number/PatternStringParser$ParserState;Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;)J

    move-result-wide v0

    iput-wide v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->suffixEndpoints:J

    .line 299
    sget-object v0, Landroid/icu/impl/number/Padder$PadPosition;->AFTER_SUFFIX:Landroid/icu/impl/number/Padder$PadPosition;

    invoke-static {p0, p1, v0}, Landroid/icu/impl/number/PatternStringParser;->consumePadding(Landroid/icu/impl/number/PatternStringParser$ParserState;Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;Landroid/icu/impl/number/Padder$PadPosition;)V

    .line 300
    return-void
.end method

.method public static blacklist parseToExistingProperties(Ljava/lang/String;Landroid/icu/impl/number/DecimalFormatProperties;)V
    .registers 3
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "properties"    # Landroid/icu/impl/number/DecimalFormatProperties;

    .line 83
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/icu/impl/number/PatternStringParser;->parseToExistingProperties(Ljava/lang/String;Landroid/icu/impl/number/DecimalFormatProperties;I)V

    .line 84
    return-void
.end method

.method public static blacklist parseToExistingProperties(Ljava/lang/String;Landroid/icu/impl/number/DecimalFormatProperties;I)V
    .registers 3
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "properties"    # Landroid/icu/impl/number/DecimalFormatProperties;
    .param p2, "ignoreRounding"    # I

    .line 79
    invoke-static {p0, p1, p2}, Landroid/icu/impl/number/PatternStringParser;->parseToExistingPropertiesImpl(Ljava/lang/String;Landroid/icu/impl/number/DecimalFormatProperties;I)V

    .line 80
    return-void
.end method

.method private static greylist-max-o parseToExistingPropertiesImpl(Ljava/lang/String;Landroid/icu/impl/number/DecimalFormatProperties;I)V
    .registers 4
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "properties"    # Landroid/icu/impl/number/DecimalFormatProperties;
    .param p2, "ignoreRounding"    # I

    .line 579
    if-eqz p0, :cond_11

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_11

    .line 587
    :cond_9
    invoke-static {p0}, Landroid/icu/impl/number/PatternStringParser;->parseToPatternInfo(Ljava/lang/String;)Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;

    move-result-object v0

    .line 588
    .local v0, "patternInfo":Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;
    invoke-static {p1, v0, p2}, Landroid/icu/impl/number/PatternStringParser;->patternInfoToProperties(Landroid/icu/impl/number/DecimalFormatProperties;Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;I)V

    .line 589
    return-void

    .line 582
    .end local v0    # "patternInfo":Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;
    :cond_11
    :goto_11
    invoke-virtual {p1}, Landroid/icu/impl/number/DecimalFormatProperties;->clear()Landroid/icu/impl/number/DecimalFormatProperties;

    .line 583
    return-void
.end method

.method public static blacklist parseToPatternInfo(Ljava/lang/String;)Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;
    .registers 4
    .param p0, "patternString"    # Ljava/lang/String;

    .line 28
    new-instance v0, Landroid/icu/impl/number/PatternStringParser$ParserState;

    invoke-direct {v0, p0}, Landroid/icu/impl/number/PatternStringParser$ParserState;-><init>(Ljava/lang/String;)V

    .line 29
    .local v0, "state":Landroid/icu/impl/number/PatternStringParser$ParserState;
    new-instance v1, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;-><init>(Ljava/lang/String;Landroid/icu/impl/number/PatternStringParser-IA;)V

    .line 30
    .local v1, "result":Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;
    invoke-static {v0, v1}, Landroid/icu/impl/number/PatternStringParser;->consumePattern(Landroid/icu/impl/number/PatternStringParser$ParserState;Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;)V

    .line 31
    return-object v1
.end method

.method public static blacklist parseToProperties(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;
    .registers 2
    .param p0, "pattern"    # Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/icu/impl/number/PatternStringParser;->parseToProperties(Ljava/lang/String;I)Landroid/icu/impl/number/DecimalFormatProperties;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseToProperties(Ljava/lang/String;I)Landroid/icu/impl/number/DecimalFormatProperties;
    .registers 3
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "ignoreRounding"    # I

    .line 51
    new-instance v0, Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-direct {v0}, Landroid/icu/impl/number/DecimalFormatProperties;-><init>()V

    .line 52
    .local v0, "properties":Landroid/icu/impl/number/DecimalFormatProperties;
    invoke-static {p0, v0, p1}, Landroid/icu/impl/number/PatternStringParser;->parseToExistingPropertiesImpl(Ljava/lang/String;Landroid/icu/impl/number/DecimalFormatProperties;I)V

    .line 53
    return-object v0
.end method

.method private static greylist-max-o patternInfoToProperties(Landroid/icu/impl/number/DecimalFormatProperties;Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;I)V
    .registers 21
    .param p0, "properties"    # Landroid/icu/impl/number/DecimalFormatProperties;
    .param p1, "patternInfo"    # Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;
    .param p2, "_ignoreRounding"    # I

    .line 599
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v1, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->positive:Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    .line 602
    .local v3, "positive":Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;
    const/4 v4, 0x1

    if-nez v2, :cond_d

    .line 603
    const/4 v5, 0x0

    .local v5, "ignoreRounding":Z
    goto :goto_14

    .line 604
    .end local v5    # "ignoreRounding":Z
    :cond_d
    if-ne v2, v4, :cond_12

    .line 605
    iget-boolean v5, v3, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->hasCurrencySign:Z

    .restart local v5    # "ignoreRounding":Z
    goto :goto_14

    .line 607
    .end local v5    # "ignoreRounding":Z
    :cond_12
    nop

    .line 608
    const/4 v5, 0x1

    .line 612
    .restart local v5    # "ignoreRounding":Z
    :goto_14
    iget-wide v6, v3, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->groupingSizes:J

    const-wide/32 v8, 0xffff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-short v6, v6

    .line 613
    .local v6, "grouping1":S
    iget-wide v10, v3, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->groupingSizes:J

    const/16 v7, 0x10

    ushr-long/2addr v10, v7

    and-long/2addr v10, v8

    long-to-int v7, v10

    int-to-short v7, v7

    .line 614
    .local v7, "grouping2":S
    iget-wide v10, v3, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->groupingSizes:J

    const/16 v12, 0x20

    ushr-long/2addr v10, v12

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-short v8, v8

    .line 615
    .local v8, "grouping3":S
    const/4 v9, 0x0

    const/4 v10, -0x1

    if-eq v7, v10, :cond_37

    .line 616
    invoke-virtual {v0, v6}, Landroid/icu/impl/number/DecimalFormatProperties;->setGroupingSize(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 617
    invoke-virtual {v0, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->setGroupingUsed(Z)Landroid/icu/impl/number/DecimalFormatProperties;

    goto :goto_3d

    .line 619
    :cond_37
    invoke-virtual {v0, v10}, Landroid/icu/impl/number/DecimalFormatProperties;->setGroupingSize(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 620
    invoke-virtual {v0, v9}, Landroid/icu/impl/number/DecimalFormatProperties;->setGroupingUsed(Z)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 622
    :goto_3d
    if-eq v8, v10, :cond_43

    .line 623
    invoke-virtual {v0, v7}, Landroid/icu/impl/number/DecimalFormatProperties;->setSecondaryGroupingSize(I)Landroid/icu/impl/number/DecimalFormatProperties;

    goto :goto_46

    .line 625
    :cond_43
    invoke-virtual {v0, v10}, Landroid/icu/impl/number/DecimalFormatProperties;->setSecondaryGroupingSize(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 630
    :goto_46
    iget v11, v3, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerTotal:I

    if-nez v11, :cond_56

    iget v11, v3, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->fractionTotal:I

    if-lez v11, :cond_56

    .line 632
    const/4 v11, 0x0

    .line 633
    .local v11, "minInt":I
    iget v12, v3, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->fractionNumerals:I

    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    .local v12, "minFrac":I
    goto :goto_65

    .line 634
    .end local v11    # "minInt":I
    .end local v12    # "minFrac":I
    :cond_56
    iget v11, v3, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerNumerals:I

    if-nez v11, :cond_61

    iget v11, v3, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->fractionNumerals:I

    if-nez v11, :cond_61

    .line 636
    const/4 v11, 0x1

    .line 637
    .restart local v11    # "minInt":I
    const/4 v12, 0x0

    .restart local v12    # "minFrac":I
    goto :goto_65

    .line 639
    .end local v11    # "minInt":I
    .end local v12    # "minFrac":I
    :cond_61
    iget v11, v3, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerNumerals:I

    .line 640
    .restart local v11    # "minInt":I
    iget v12, v3, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->fractionNumerals:I

    .line 645
    .restart local v12    # "minFrac":I
    :goto_65
    iget v13, v3, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerAtSigns:I

    const/4 v14, 0x0

    if-lez v13, :cond_81

    .line 646
    invoke-virtual {v0, v10}, Landroid/icu/impl/number/DecimalFormatProperties;->setMinimumFractionDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 647
    invoke-virtual {v0, v10}, Landroid/icu/impl/number/DecimalFormatProperties;->setMaximumFractionDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 648
    invoke-virtual {v0, v14}, Landroid/icu/impl/number/DecimalFormatProperties;->setRoundingIncrement(Ljava/math/BigDecimal;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 649
    iget v13, v3, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerAtSigns:I

    invoke-virtual {v0, v13}, Landroid/icu/impl/number/DecimalFormatProperties;->setMinimumSignificantDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 650
    iget v13, v3, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerAtSigns:I

    iget v15, v3, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerTrailingHashSigns:I

    add-int/2addr v13, v15

    invoke-virtual {v0, v13}, Landroid/icu/impl/number/DecimalFormatProperties;->setMaximumSignificantDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    goto :goto_cc

    .line 652
    :cond_81
    iget-object v13, v3, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->rounding:Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    if-eqz v13, :cond_af

    .line 653
    if-nez v5, :cond_9f

    .line 654
    invoke-virtual {v0, v12}, Landroid/icu/impl/number/DecimalFormatProperties;->setMinimumFractionDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 655
    iget v13, v3, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->fractionTotal:I

    invoke-virtual {v0, v13}, Landroid/icu/impl/number/DecimalFormatProperties;->setMaximumFractionDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 656
    iget-object v13, v3, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->rounding:Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    .line 657
    invoke-virtual {v13}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object v13

    iget v15, v3, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->fractionNumerals:I

    invoke-virtual {v13, v15}, Ljava/math/BigDecimal;->setScale(I)Ljava/math/BigDecimal;

    move-result-object v13

    .line 656
    invoke-virtual {v0, v13}, Landroid/icu/impl/number/DecimalFormatProperties;->setRoundingIncrement(Ljava/math/BigDecimal;)Landroid/icu/impl/number/DecimalFormatProperties;

    goto :goto_a8

    .line 659
    :cond_9f
    invoke-virtual {v0, v10}, Landroid/icu/impl/number/DecimalFormatProperties;->setMinimumFractionDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 660
    invoke-virtual {v0, v10}, Landroid/icu/impl/number/DecimalFormatProperties;->setMaximumFractionDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 661
    invoke-virtual {v0, v14}, Landroid/icu/impl/number/DecimalFormatProperties;->setRoundingIncrement(Ljava/math/BigDecimal;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 663
    :goto_a8
    invoke-virtual {v0, v10}, Landroid/icu/impl/number/DecimalFormatProperties;->setMinimumSignificantDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 664
    invoke-virtual {v0, v10}, Landroid/icu/impl/number/DecimalFormatProperties;->setMaximumSignificantDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    goto :goto_cc

    .line 666
    :cond_af
    if-nez v5, :cond_bd

    .line 667
    invoke-virtual {v0, v12}, Landroid/icu/impl/number/DecimalFormatProperties;->setMinimumFractionDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 668
    iget v13, v3, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->fractionTotal:I

    invoke-virtual {v0, v13}, Landroid/icu/impl/number/DecimalFormatProperties;->setMaximumFractionDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 669
    invoke-virtual {v0, v14}, Landroid/icu/impl/number/DecimalFormatProperties;->setRoundingIncrement(Ljava/math/BigDecimal;)Landroid/icu/impl/number/DecimalFormatProperties;

    goto :goto_c6

    .line 671
    :cond_bd
    invoke-virtual {v0, v10}, Landroid/icu/impl/number/DecimalFormatProperties;->setMinimumFractionDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 672
    invoke-virtual {v0, v10}, Landroid/icu/impl/number/DecimalFormatProperties;->setMaximumFractionDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 673
    invoke-virtual {v0, v14}, Landroid/icu/impl/number/DecimalFormatProperties;->setRoundingIncrement(Ljava/math/BigDecimal;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 675
    :goto_c6
    invoke-virtual {v0, v10}, Landroid/icu/impl/number/DecimalFormatProperties;->setMinimumSignificantDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 676
    invoke-virtual {v0, v10}, Landroid/icu/impl/number/DecimalFormatProperties;->setMaximumSignificantDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 680
    :goto_cc
    iget-boolean v13, v3, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->hasDecimal:Z

    if-eqz v13, :cond_d8

    iget v13, v3, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->fractionTotal:I

    if-nez v13, :cond_d8

    .line 681
    invoke-virtual {v0, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->setDecimalSeparatorAlwaysShown(Z)Landroid/icu/impl/number/DecimalFormatProperties;

    goto :goto_db

    .line 683
    :cond_d8
    invoke-virtual {v0, v9}, Landroid/icu/impl/number/DecimalFormatProperties;->setDecimalSeparatorAlwaysShown(Z)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 687
    :goto_db
    iget-boolean v13, v3, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->hasCurrencyDecimal:Z

    invoke-virtual {v0, v13}, Landroid/icu/impl/number/DecimalFormatProperties;->setCurrencyAsDecimal(Z)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 690
    iget v13, v3, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->exponentZeros:I

    if-lez v13, :cond_104

    .line 691
    iget-boolean v13, v3, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->exponentHasPlusSign:Z

    invoke-virtual {v0, v13}, Landroid/icu/impl/number/DecimalFormatProperties;->setExponentSignAlwaysShown(Z)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 692
    iget v13, v3, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->exponentZeros:I

    invoke-virtual {v0, v13}, Landroid/icu/impl/number/DecimalFormatProperties;->setMinimumExponentDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 693
    iget v13, v3, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerAtSigns:I

    if-nez v13, :cond_fd

    .line 695
    iget v13, v3, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerNumerals:I

    invoke-virtual {v0, v13}, Landroid/icu/impl/number/DecimalFormatProperties;->setMinimumIntegerDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 696
    iget v13, v3, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerTotal:I

    invoke-virtual {v0, v13}, Landroid/icu/impl/number/DecimalFormatProperties;->setMaximumIntegerDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    goto :goto_110

    .line 699
    :cond_fd
    invoke-virtual {v0, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->setMinimumIntegerDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 700
    invoke-virtual {v0, v10}, Landroid/icu/impl/number/DecimalFormatProperties;->setMaximumIntegerDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    goto :goto_110

    .line 703
    :cond_104
    invoke-virtual {v0, v9}, Landroid/icu/impl/number/DecimalFormatProperties;->setExponentSignAlwaysShown(Z)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 704
    invoke-virtual {v0, v10}, Landroid/icu/impl/number/DecimalFormatProperties;->setMinimumExponentDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 705
    invoke-virtual {v0, v11}, Landroid/icu/impl/number/DecimalFormatProperties;->setMinimumIntegerDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 706
    invoke-virtual {v0, v10}, Landroid/icu/impl/number/DecimalFormatProperties;->setMaximumIntegerDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 710
    :goto_110
    const/16 v13, 0x100

    invoke-virtual {v1, v13}, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 711
    .local v13, "posPrefix":Ljava/lang/String;
    invoke-virtual {v1, v9}, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 714
    .local v15, "posSuffix":Ljava/lang/String;
    iget-object v14, v3, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->paddingLocation:Landroid/icu/impl/number/Padder$PadPosition;

    if-eqz v14, :cond_171

    .line 716
    iget v14, v3, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->widthExceptAffixes:I

    .line 717
    invoke-static {v13}, Landroid/icu/impl/number/AffixUtils;->estimateLength(Ljava/lang/CharSequence;)I

    move-result v16

    add-int v14, v14, v16

    .line 718
    invoke-static {v15}, Landroid/icu/impl/number/AffixUtils;->estimateLength(Ljava/lang/CharSequence;)I

    move-result v16

    add-int v14, v14, v16

    .line 719
    .local v14, "paddingWidth":I
    invoke-virtual {v0, v14}, Landroid/icu/impl/number/DecimalFormatProperties;->setFormatWidth(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 720
    const/16 v9, 0x400

    invoke-virtual {v1, v9}, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 721
    .local v9, "rawPaddingString":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v10, v4, :cond_13f

    .line 722
    invoke-virtual {v0, v9}, Landroid/icu/impl/number/DecimalFormatProperties;->setPadString(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;

    goto :goto_16a

    .line 723
    :cond_13f
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    move/from16 v17, v4

    const/4 v4, 0x2

    if-ne v10, v4, :cond_15b

    .line 724
    const/4 v4, 0x0

    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v4, 0x27

    if-ne v10, v4, :cond_157

    .line 725
    const-string v4, "\'"

    invoke-virtual {v0, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->setPadString(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;

    goto :goto_16a

    .line 727
    :cond_157
    invoke-virtual {v0, v9}, Landroid/icu/impl/number/DecimalFormatProperties;->setPadString(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;

    goto :goto_16a

    .line 730
    :cond_15b
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move/from16 v10, v17

    invoke-virtual {v9, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->setPadString(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 732
    :goto_16a
    nop

    .line 733
    iget-object v4, v3, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->paddingLocation:Landroid/icu/impl/number/Padder$PadPosition;

    invoke-virtual {v0, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->setPadPosition(Landroid/icu/impl/number/Padder$PadPosition;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 734
    .end local v9    # "rawPaddingString":Ljava/lang/String;
    .end local v14    # "paddingWidth":I
    goto :goto_17c

    .line 735
    :cond_171
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->setFormatWidth(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 736
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->setPadString(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 737
    invoke-virtual {v0, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->setPadPosition(Landroid/icu/impl/number/Padder$PadPosition;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 743
    :goto_17c
    invoke-virtual {v0, v13}, Landroid/icu/impl/number/DecimalFormatProperties;->setPositivePrefixPattern(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 744
    invoke-virtual {v0, v15}, Landroid/icu/impl/number/DecimalFormatProperties;->setPositiveSuffixPattern(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 745
    iget-object v4, v1, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->negative:Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    if-eqz v4, :cond_19a

    .line 746
    const/16 v4, 0x300

    invoke-virtual {v1, v4}, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->setNegativePrefixPattern(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 748
    nop

    .line 749
    const/16 v4, 0x200

    invoke-virtual {v1, v4}, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 748
    invoke-virtual {v0, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->setNegativeSuffixPattern(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;

    goto :goto_1a1

    .line 751
    :cond_19a
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->setNegativePrefixPattern(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 752
    invoke-virtual {v0, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->setNegativeSuffixPattern(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 756
    :goto_1a1
    iget-boolean v4, v3, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->hasPercentSign:Z

    if-eqz v4, :cond_1aa

    .line 757
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->setMagnitudeMultiplier(I)Landroid/icu/impl/number/DecimalFormatProperties;

    goto :goto_1b7

    .line 758
    :cond_1aa
    iget-boolean v4, v3, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->hasPerMilleSign:Z

    if-eqz v4, :cond_1b3

    .line 759
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->setMagnitudeMultiplier(I)Landroid/icu/impl/number/DecimalFormatProperties;

    goto :goto_1b7

    .line 761
    :cond_1b3
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->setMagnitudeMultiplier(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 763
    :goto_1b7
    return-void
.end method
