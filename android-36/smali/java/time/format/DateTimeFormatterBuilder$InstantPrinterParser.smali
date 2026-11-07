.class final Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InstantPrinterParser"
.end annotation


# static fields
.field private static final greylist-max-o SECONDS_0000_TO_1970:J = 0xe79747c00L

.field private static final greylist-max-o SECONDS_PER_10000_YEARS:J = 0x497968bd80L


# instance fields
.field private final greylist-max-o fractionalDigits:I


# direct methods
.method constructor greylist-max-o <init>(I)V
    .registers 2
    .param p1, "fractionalDigits"    # I

    .line 3487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3488
    iput p1, p0, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    .line 3489
    return-void
.end method


# virtual methods
.method public greylist-max-o format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .registers 28
    .param p1, "context"    # Ljava/time/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .line 3494
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    sget-object v2, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Ljava/time/format/DateTimePrintContext;->getValue(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v2

    .line 3495
    .local v2, "inSecs":Ljava/lang/Long;
    const/4 v4, 0x0

    .line 3496
    .local v4, "inNanos":Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/time/format/DateTimePrintContext;->getTemporal()Ljava/time/temporal/TemporalAccessor;

    move-result-object v5

    sget-object v6, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v5, v6}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 3497
    invoke-virtual {v3}, Ljava/time/format/DateTimePrintContext;->getTemporal()Ljava/time/temporal/TemporalAccessor;

    move-result-object v5

    sget-object v6, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v5, v6}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 3499
    :cond_27
    const/4 v5, 0x0

    if-nez v2, :cond_2b

    .line 3500
    return v5

    .line 3502
    :cond_2b
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 3503
    .local v6, "inSec":J
    sget-object v8, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    if-eqz v4, :cond_38

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    goto :goto_3a

    :cond_38
    const-wide/16 v11, 0x0

    :goto_3a
    invoke-virtual {v8, v11, v12}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v8

    .line 3505
    .local v8, "inNano":I
    const-wide v11, -0xe79747c00L

    cmp-long v11, v6, v11

    const-string v12, ":00"

    const-wide v15, 0xe79747c00L

    const-wide/16 v17, 0x0

    const-wide v9, 0x497968bd80L

    if-ltz v11, :cond_8d

    .line 3507
    sub-long v19, v6, v9

    const-wide/16 v21, 0x1

    add-long v13, v19, v15

    .line 3508
    .local v13, "zeroSecs":J
    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v19

    move-wide/from16 v23, v6

    .end local v6    # "inSec":J
    .local v23, "inSec":J
    add-long v5, v19, v21

    .line 3509
    .local v5, "hi":J
    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v9

    .line 3510
    .local v9, "lo":J
    move-object v7, v12

    sub-long v11, v9, v15

    sget-object v15, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    move-object/from16 v20, v2

    const/4 v2, 0x0

    .end local v2    # "inSecs":Ljava/lang/Long;
    .local v20, "inSecs":Ljava/lang/Long;
    invoke-static {v11, v12, v2, v15}, Ljava/time/LocalDateTime;->ofEpochSecond(JILjava/time/ZoneOffset;)Ljava/time/LocalDateTime;

    move-result-object v2

    .line 3511
    .local v2, "ldt":Ljava/time/LocalDateTime;
    cmp-long v11, v5, v17

    if-lez v11, :cond_80

    .line 3512
    const/16 v11, 0x2b

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3514
    :cond_80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3515
    invoke-virtual {v2}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v11

    if-nez v11, :cond_8c

    .line 3516
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3518
    .end local v2    # "ldt":Ljava/time/LocalDateTime;
    .end local v5    # "hi":J
    .end local v9    # "lo":J
    .end local v13    # "zeroSecs":J
    :cond_8c
    goto :goto_dc

    .line 3520
    .end local v20    # "inSecs":Ljava/lang/Long;
    .end local v23    # "inSec":J
    .local v2, "inSecs":Ljava/lang/Long;
    .restart local v6    # "inSec":J
    :cond_8d
    move-object/from16 v20, v2

    move-wide/from16 v23, v6

    move-object v7, v12

    const-wide/16 v21, 0x1

    .end local v2    # "inSecs":Ljava/lang/Long;
    .end local v6    # "inSec":J
    .restart local v20    # "inSecs":Ljava/lang/Long;
    .restart local v23    # "inSec":J
    add-long v5, v23, v15

    .line 3521
    .local v5, "zeroSecs":J
    div-long v12, v5, v9

    .line 3522
    .local v12, "hi":J
    rem-long v9, v5, v9

    .line 3523
    .restart local v9    # "lo":J
    sub-long v14, v9, v15

    sget-object v2, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    const/4 v11, 0x0

    invoke-static {v14, v15, v11, v2}, Ljava/time/LocalDateTime;->ofEpochSecond(JILjava/time/ZoneOffset;)Ljava/time/LocalDateTime;

    move-result-object v2

    .line 3524
    .local v2, "ldt":Ljava/time/LocalDateTime;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    .line 3525
    .local v11, "pos":I
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3526
    invoke-virtual {v2}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v14

    if-nez v14, :cond_b3

    .line 3527
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3529
    :cond_b3
    cmp-long v7, v12, v17

    if-gez v7, :cond_dc

    .line 3530
    invoke-virtual {v2}, Ljava/time/LocalDateTime;->getYear()I

    move-result v7

    const/16 v14, -0x2710

    if-ne v7, v14, :cond_cb

    .line 3531
    add-int/lit8 v7, v11, 0x2

    sub-long v14, v12, v21

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v11, v7, v14}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_dc

    .line 3532
    :cond_cb
    cmp-long v7, v9, v17

    if-nez v7, :cond_d3

    .line 3533
    invoke-virtual {v1, v11, v12, v13}, Ljava/lang/StringBuilder;->insert(IJ)Ljava/lang/StringBuilder;

    goto :goto_dc

    .line 3535
    :cond_d3
    add-int/lit8 v7, v11, 0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    invoke-virtual {v1, v7, v14, v15}, Ljava/lang/StringBuilder;->insert(IJ)Ljava/lang/StringBuilder;

    .line 3540
    .end local v2    # "ldt":Ljava/time/LocalDateTime;
    .end local v5    # "zeroSecs":J
    .end local v9    # "lo":J
    .end local v11    # "pos":I
    .end local v12    # "hi":J
    :cond_dc
    :goto_dc
    iget v2, v0, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    if-gez v2, :cond_e2

    if-gtz v8, :cond_e6

    :cond_e2
    iget v2, v0, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    if-lez v2, :cond_115

    .line 3541
    :cond_e6
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3542
    const v2, 0x5f5e100

    .line 3543
    .local v2, "div":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_ef
    iget v6, v0, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_f6

    if-gtz v8, :cond_105

    :cond_f6
    iget v6, v0, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    const/4 v7, -0x2

    if-ne v6, v7, :cond_101

    if-gtz v8, :cond_105

    rem-int/lit8 v6, v5, 0x3

    if-nez v6, :cond_105

    :cond_101
    iget v6, v0, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    if-ge v5, v6, :cond_115

    .line 3546
    :cond_105
    div-int v6, v8, v2

    .line 3547
    .local v6, "digit":I
    add-int/lit8 v7, v6, 0x30

    int-to-char v7, v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3548
    mul-int v7, v6, v2

    sub-int/2addr v8, v7

    .line 3549
    div-int/lit8 v2, v2, 0xa

    .line 3545
    .end local v6    # "digit":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_ef

    .line 3552
    .end local v2    # "div":I
    .end local v5    # "i":I
    :cond_115
    const/16 v2, 0x5a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3553
    const/4 v2, 0x1

    return v2
.end method

.method public greylist-max-o parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .registers 36
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .line 3559
    move-object/from16 v1, p0

    move/from16 v6, p3

    iget v0, v1, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    const/4 v2, 0x0

    if-gez v0, :cond_b

    move v0, v2

    goto :goto_d

    :cond_b
    iget v0, v1, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    :goto_d
    move v8, v0

    .line 3560
    .local v8, "minDigits":I
    iget v0, v1, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    if-gez v0, :cond_15

    const/16 v0, 0x9

    goto :goto_17

    :cond_15
    iget v0, v1, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    :goto_17
    move v9, v0

    .line 3561
    .local v9, "maxDigits":I
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v3, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE:Ljava/time/format/DateTimeFormatter;

    .line 3562
    invoke-virtual {v0, v3}, Ljava/time/format/DateTimeFormatterBuilder;->append(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    const/16 v3, 0x54

    invoke-virtual {v0, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v3, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    .line 3563
    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v5, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    .line 3564
    invoke-virtual {v0, v5, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v3, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    .line 3565
    invoke-virtual {v0, v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v3, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    .line 3566
    const/4 v4, 0x1

    invoke-virtual {v0, v3, v8, v9, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendFraction(Ljava/time/temporal/TemporalField;IIZ)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 3567
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffsetId()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 3568
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/time/format/DateTimeFormatter;->toPrinterParser(Z)Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    move-result-object v10

    .line 3569
    .local v10, "parser":Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;
    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->copy()Ljava/time/format/DateTimeParseContext;

    move-result-object v11

    .line 3570
    .local v11, "newContext":Ljava/time/format/DateTimeParseContext;
    move-object/from16 v12, p2

    invoke-virtual {v10, v11, v12, v6}, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result v13

    .line 3571
    .local v13, "pos":I
    if-gez v13, :cond_66

    .line 3572
    return v13

    .line 3576
    :cond_66
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v11, v0}, Ljava/time/format/DateTimeParseContext;->getParsed(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 3577
    .local v14, "yearParsed":J
    sget-object v0, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v11, v0}, Ljava/time/format/DateTimeParseContext;->getParsed(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v17

    .line 3578
    .local v17, "month":I
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v11, v0}, Ljava/time/format/DateTimeParseContext;->getParsed(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v18

    .line 3579
    .local v18, "day":I
    sget-object v0, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v11, v0}, Ljava/time/format/DateTimeParseContext;->getParsed(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    .line 3580
    .local v0, "hour":I
    sget-object v3, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v11, v3}, Ljava/time/format/DateTimeParseContext;->getParsed(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v3

    .line 3581
    .local v3, "min":I
    sget-object v4, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    invoke-virtual {v11, v4}, Ljava/time/format/DateTimeParseContext;->getParsed(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v23

    .line 3582
    .local v23, "secVal":Ljava/lang/Long;
    sget-object v4, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {v11, v4}, Ljava/time/format/DateTimeParseContext;->getParsed(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v24

    .line 3583
    .local v24, "nanoVal":Ljava/lang/Long;
    if-eqz v23, :cond_ab

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->intValue()I

    move-result v4

    goto :goto_ac

    :cond_ab
    move v4, v2

    .line 3584
    .local v4, "sec":I
    :goto_ac
    if-eqz v24, :cond_b2

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->intValue()I

    move-result v2

    .line 3585
    .local v2, "nano":I
    :cond_b2
    sget-object v5, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-virtual {v11, v5}, Ljava/time/format/DateTimeParseContext;->getParsed(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->intValue()I

    move-result v25

    .line 3586
    .local v25, "offset":I
    const/4 v5, 0x0

    .line 3587
    .local v5, "days":I
    const/16 v7, 0x18

    if-ne v0, v7, :cond_cf

    if-nez v3, :cond_cf

    if-nez v4, :cond_cf

    if-nez v2, :cond_cf

    .line 3588
    const/4 v0, 0x0

    .line 3589
    const/4 v5, 0x1

    move/from16 v19, v0

    move/from16 v21, v4

    move v4, v5

    goto :goto_eb

    .line 3590
    :cond_cf
    const/16 v7, 0x17

    if-ne v0, v7, :cond_e6

    const/16 v7, 0x3b

    if-ne v3, v7, :cond_e6

    const/16 v7, 0x3c

    if-ne v4, v7, :cond_e6

    .line 3591
    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->setParsedLeapSecond()V

    .line 3592
    const/16 v4, 0x3b

    move/from16 v19, v0

    move/from16 v21, v4

    move v4, v5

    goto :goto_eb

    .line 3594
    :cond_e6
    move/from16 v19, v0

    move/from16 v21, v4

    move v4, v5

    .end local v0    # "hour":I
    .end local v5    # "days":I
    .local v4, "days":I
    .local v19, "hour":I
    .local v21, "sec":I
    :goto_eb
    long-to-int v0, v14

    rem-int/lit16 v5, v0, 0x2710

    .line 3597
    .local v5, "year":I
    const/16 v22, 0x0

    move/from16 v20, v3

    move/from16 v16, v5

    .end local v3    # "min":I
    .end local v5    # "year":I
    .local v16, "year":I
    .local v20, "min":I
    :try_start_f4
    invoke-static/range {v16 .. v22}, Ljava/time/LocalDateTime;->of(IIIIIII)Ljava/time/LocalDateTime;

    move-result-object v0
    :try_end_f8
    .catch Ljava/lang/RuntimeException; {:try_start_f4 .. :try_end_f8} :catch_142

    move v3, v2

    .end local v2    # "nano":I
    .local v3, "nano":I
    int-to-long v1, v4

    :try_start_fa
    invoke-virtual {v0, v1, v2}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 3598
    .local v0, "ldt":Ljava/time/LocalDateTime;
    invoke-static/range {v25 .. v25}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->toEpochSecond(Ljava/time/ZoneOffset;)J

    move-result-wide v1

    .line 3599
    .local v1, "instantSecs":J
    const-wide/16 v26, 0x2710

    move-object v5, v0

    move-wide/from16 v28, v1

    .end local v0    # "ldt":Ljava/time/LocalDateTime;
    .end local v1    # "instantSecs":J
    .local v5, "ldt":Ljava/time/LocalDateTime;
    .local v28, "instantSecs":J
    div-long v0, v14, v26
    :try_end_10d
    .catch Ljava/lang/RuntimeException; {:try_start_fa .. :try_end_10d} :catch_13d

    move v7, v3

    .end local v3    # "nano":I
    .local v7, "nano":I
    const-wide v2, 0x497968bd80L

    :try_start_113
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0
    :try_end_117
    .catch Ljava/lang/RuntimeException; {:try_start_113 .. :try_end_117} :catch_138

    add-long v1, v28, v0

    .line 3602
    .end local v5    # "ldt":Ljava/time/LocalDateTime;
    .end local v28    # "instantSecs":J
    .restart local v1    # "instantSecs":J
    nop

    .line 3603
    move v3, v7

    .end local v7    # "nano":I
    .restart local v3    # "nano":I
    move v7, v13

    .line 3604
    .local v7, "successPos":I
    move v5, v3

    .end local v3    # "nano":I
    .local v5, "nano":I
    sget-object v3, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    move/from16 v22, v4

    move-wide/from16 v30, v1

    move-object/from16 v2, p1

    move v1, v5

    move-wide/from16 v4, v30

    .end local v5    # "nano":I
    .local v1, "nano":I
    .local v4, "instantSecs":J
    .local v22, "days":I
    invoke-virtual/range {v2 .. v7}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result v7

    .line 3605
    move-wide/from16 v26, v4

    .end local v4    # "instantSecs":J
    .local v26, "instantSecs":J
    sget-object v3, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    int-to-long v4, v1

    move/from16 v6, p3

    invoke-virtual/range {v2 .. v7}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result v0

    return v0

    .line 3600
    .end local v1    # "nano":I
    .end local v22    # "days":I
    .end local v26    # "instantSecs":J
    .local v4, "days":I
    .local v7, "nano":I
    :catch_138
    move-exception v0

    move/from16 v22, v4

    move v1, v7

    .end local v4    # "days":I
    .end local v7    # "nano":I
    .restart local v1    # "nano":I
    .restart local v22    # "days":I
    goto :goto_146

    .end local v1    # "nano":I
    .end local v22    # "days":I
    .restart local v3    # "nano":I
    .restart local v4    # "days":I
    :catch_13d
    move-exception v0

    move v1, v3

    move/from16 v22, v4

    .end local v3    # "nano":I
    .end local v4    # "days":I
    .restart local v1    # "nano":I
    .restart local v22    # "days":I
    goto :goto_146

    .end local v1    # "nano":I
    .end local v22    # "days":I
    .restart local v2    # "nano":I
    .restart local v4    # "days":I
    :catch_142
    move-exception v0

    move v1, v2

    move/from16 v22, v4

    .line 3601
    .end local v2    # "nano":I
    .end local v4    # "days":I
    .local v0, "ex":Ljava/lang/RuntimeException;
    .restart local v1    # "nano":I
    .restart local v22    # "days":I
    :goto_146
    not-int v2, v6

    return v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 3610
    const-string v0, "Instant()"

    return-object v0
.end method
