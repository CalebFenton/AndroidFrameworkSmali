.class Landroid/text/format/TimeFormatter;
.super Ljava/lang/Object;
.source "TimeFormatter.java"


# static fields
.field private static final blacklist DAYSPERLYEAR:I = 0x16e

.field private static final blacklist DAYSPERNYEAR:I = 0x16d

.field private static final blacklist DAYSPERWEEK:I = 0x7

.field private static final blacklist FORCE_LOWER_CASE:I = -0x1

.field private static final blacklist HOURSPERDAY:I = 0x18

.field private static final blacklist MINSPERHOUR:I = 0x3c

.field private static final blacklist MONSPERYEAR:I = 0xc

.field private static final blacklist SECSPERMIN:I = 0x3c

.field private static blacklist sDateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

.field private static blacklist sDateOnlyFormat:Ljava/lang/String;

.field private static blacklist sDateTimeFormat:Ljava/lang/String;

.field private static blacklist sDecimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

.field private static blacklist sLocale:Ljava/util/Locale;

.field private static blacklist sTimeOnlyFormat:Ljava/lang/String;


# instance fields
.field private final blacklist dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

.field private final blacklist dateOnlyFormat:Ljava/lang/String;

.field private final blacklist dateTimeFormat:Ljava/lang/String;

.field private final blacklist decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

.field private blacklist numberFormatter:Ljava/util/Formatter;

.field private blacklist outputBuilder:Ljava/lang/StringBuilder;

.field private final blacklist timeOnlyFormat:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 5

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const-class v0, Landroid/text/format/TimeFormatter;

    monitor-enter v0

    .line 77
    :try_start_6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 79
    .local v1, "locale":Ljava/util/Locale;
    sget-object v2, Landroid/text/format/TimeFormatter;->sLocale:Ljava/util/Locale;

    if-eqz v2, :cond_16

    sget-object v2, Landroid/text/format/TimeFormatter;->sLocale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    .line 80
    :cond_16
    sput-object v1, Landroid/text/format/TimeFormatter;->sLocale:Ljava/util/Locale;

    .line 81
    invoke-static {v1}, Landroid/text/format/DateFormat;->getIcuDateFormatSymbols(Ljava/util/Locale;)Landroid/icu/text/DateFormatSymbols;

    move-result-object v2

    sput-object v2, Landroid/text/format/TimeFormatter;->sDateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    .line 82
    invoke-static {v1}, Landroid/icu/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v2

    sput-object v2, Landroid/text/format/TimeFormatter;->sDecimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 84
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 85
    .local v2, "r":Landroid/content/res/Resources;
    const v3, 0x1040a39

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/text/format/TimeFormatter;->sTimeOnlyFormat:Ljava/lang/String;

    .line 86
    const v3, 0x104068b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/text/format/TimeFormatter;->sDateOnlyFormat:Ljava/lang/String;

    .line 87
    const v3, 0x104032b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/text/format/TimeFormatter;->sDateTimeFormat:Ljava/lang/String;

    .line 90
    .end local v2    # "r":Landroid/content/res/Resources;
    :cond_43
    sget-object v2, Landroid/text/format/TimeFormatter;->sDateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    iput-object v2, p0, Landroid/text/format/TimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    .line 91
    sget-object v2, Landroid/text/format/TimeFormatter;->sDecimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    iput-object v2, p0, Landroid/text/format/TimeFormatter;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 92
    sget-object v2, Landroid/text/format/TimeFormatter;->sDateTimeFormat:Ljava/lang/String;

    iput-object v2, p0, Landroid/text/format/TimeFormatter;->dateTimeFormat:Ljava/lang/String;

    .line 93
    sget-object v2, Landroid/text/format/TimeFormatter;->sTimeOnlyFormat:Ljava/lang/String;

    iput-object v2, p0, Landroid/text/format/TimeFormatter;->timeOnlyFormat:Ljava/lang/String;

    .line 94
    sget-object v2, Landroid/text/format/TimeFormatter;->sDateOnlyFormat:Ljava/lang/String;

    iput-object v2, p0, Landroid/text/format/TimeFormatter;->dateOnlyFormat:Ljava/lang/String;

    .line 95
    .end local v1    # "locale":Ljava/util/Locale;
    monitor-exit v0

    .line 96
    return-void

    .line 95
    :catchall_59
    move-exception v1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_6 .. :try_end_5b} :catchall_59

    throw v1
.end method

.method private static blacklist append2DigitNumber(Ljava/lang/StringBuilder;I)V
    .registers 3
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "value"    # I

    .line 145
    const/16 v0, 0xa

    if-ge p1, v0, :cond_9

    .line 146
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    :cond_9
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    return-void
.end method

.method private static blacklist brokenIsLower(C)Z
    .registers 2
    .param p0, "toCheck"    # C

    .line 554
    const/16 v0, 0x61

    if-lt p0, v0, :cond_a

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private static blacklist brokenIsUpper(C)Z
    .registers 2
    .param p0, "toCheck"    # C

    .line 546
    const/16 v0, 0x41

    if-lt p0, v0, :cond_a

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private static blacklist brokenToLower(C)C
    .registers 2
    .param p0, "input"    # C

    .line 562
    const/16 v0, 0x41

    if-lt p0, v0, :cond_e

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_e

    .line 563
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0x61

    int-to-char v0, v0

    return v0

    .line 565
    :cond_e
    return p0
.end method

.method private static blacklist brokenToUpper(C)C
    .registers 2
    .param p0, "input"    # C

    .line 573
    const/16 v0, 0x61

    if-lt p0, v0, :cond_e

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_e

    .line 574
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0x41

    int-to-char v0, v0

    return v0

    .line 576
    :cond_e
    return p0
.end method

.method private blacklist formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V
    .registers 9
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "wallTime"    # Lcom/android/i18n/timezone/WallTime;
    .param p3, "zoneInfoData"    # Lcom/android/i18n/timezone/ZoneInfoData;

    .line 199
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 200
    .local v0, "formatBuffer":Ljava/nio/CharBuffer;
    :goto_4
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v1

    if-lez v1, :cond_34

    .line 201
    const/4 v1, 0x1

    .line 202
    .local v1, "outputCurrentChar":Z
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/CharBuffer;->get(I)C

    move-result v2

    .line 203
    .local v2, "currentChar":C
    const/16 v3, 0x25

    if-ne v2, v3, :cond_1b

    .line 204
    invoke-direct {p0, v0, p2, p3}, Landroid/text/format/TimeFormatter;->handleToken(Ljava/nio/CharBuffer;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)Z

    move-result v1

    .line 206
    :cond_1b
    if-eqz v1, :cond_2a

    .line 207
    iget-object v3, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/nio/CharBuffer;->get(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 209
    :cond_2a
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 210
    .end local v1    # "outputCurrentChar":Z
    .end local v2    # "currentChar":C
    goto :goto_4

    .line 211
    :cond_34
    return-void
.end method

.method private static blacklist getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "modifier"    # I
    .param p1, "normal"    # Ljava/lang/String;
    .param p2, "underscore"    # Ljava/lang/String;
    .param p3, "dash"    # Ljava/lang/String;
    .param p4, "zero"    # Ljava/lang/String;

    .line 526
    sparse-switch p0, :sswitch_data_8

    .line 534
    return-object p1

    .line 528
    :sswitch_4
    return-object p2

    .line 532
    :sswitch_5
    return-object p4

    .line 530
    :sswitch_6
    return-object p3

    nop

    :sswitch_data_8
    .sparse-switch
        0x2d -> :sswitch_6
        0x30 -> :sswitch_5
        0x5f -> :sswitch_4
    .end sparse-switch
.end method

.method private blacklist handleToken(Ljava/nio/CharBuffer;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)Z
    .registers 25
    .param p1, "formatBuffer"    # Ljava/nio/CharBuffer;
    .param p2, "wallTime"    # Lcom/android/i18n/timezone/WallTime;
    .param p3, "zoneInfoData"    # Lcom/android/i18n/timezone/ZoneInfoData;

    .line 217
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    .line 218
    .local v4, "modifier":I
    :goto_9
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_3cb

    .line 220
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->position()I

    move-result v5

    add-int/2addr v5, v6

    invoke-virtual {v1, v5}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 221
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->position()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/nio/CharBuffer;->get(I)C

    move-result v5

    .line 222
    .local v5, "currentChar":C
    const-string v7, "?"

    const/4 v8, 0x7

    const/16 v9, 0xc

    const-string v10, "%2d"

    const-string v11, "%d"

    const-string v12, "%02d"

    const/4 v13, 0x0

    packed-switch v5, :pswitch_data_3ce

    .line 462
    :pswitch_2f
    const/16 v20, 0x1

    return v20

    .line 438
    :pswitch_32
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getIsDst()I

    move-result v6

    if-gez v6, :cond_39

    .line 439
    return v13

    .line 441
    :cond_39
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getGmtOffset()I

    move-result v6

    .line 443
    .local v6, "diff":I
    if-gez v6, :cond_43

    .line 444
    const/16 v7, 0x2d

    .line 445
    .local v7, "sign":C
    neg-int v6, v6

    goto :goto_45

    .line 447
    .end local v7    # "sign":C
    :cond_43
    const/16 v7, 0x2b

    .line 449
    .restart local v7    # "sign":C
    :goto_45
    iget-object v8, v0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 450
    div-int/lit8 v6, v6, 0x3c

    .line 451
    div-int/lit8 v8, v6, 0x3c

    mul-int/lit8 v8, v8, 0x64

    rem-int/lit8 v9, v6, 0x3c

    add-int/2addr v8, v9

    .line 452
    .end local v6    # "diff":I
    .local v8, "diff":I
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    const-string v9, "%4d"

    const-string v10, "%04d"

    invoke-static {v4, v10, v9, v11, v10}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 453
    return v13

    .line 424
    .end local v7    # "sign":C
    .end local v8    # "diff":I
    :pswitch_69
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getYear()I

    move-result v7

    invoke-direct {v0, v7, v13, v6, v4}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    .line 425
    return v13

    .line 421
    :pswitch_71
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->dateOnlyFormat:Ljava/lang/String;

    invoke-direct {v0, v6, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    .line 422
    return v13

    .line 415
    :pswitch_77
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v11, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 416
    return v13

    .line 406
    :pswitch_89
    const-string v6, "%e-%b-%Y"

    invoke-direct {v0, v6, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    .line 407
    return v13

    .line 363
    :pswitch_8f
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v6

    if-nez v6, :cond_96

    goto :goto_9a

    :cond_96
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v8

    .line 364
    .local v8, "day":I
    :goto_9a
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v11, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 365
    return v13

    .line 355
    .end local v8    # "day":I
    :pswitch_a8
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    const/16 v7, 0x9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 356
    return v13

    .line 348
    :pswitch_b0
    invoke-virtual/range {p2 .. p3}, Lcom/android/i18n/timezone/WallTime;->mktime(Lcom/android/i18n/timezone/ZoneInfoData;)I

    move-result v6

    .line 349
    .local v6, "timeInSeconds":I
    iget-object v7, v0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    return v13

    .line 341
    .end local v6    # "timeInSeconds":I
    :pswitch_be
    const-string v6, "%I:%M:%S %p"

    invoke-direct {v0, v6, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    .line 342
    return v13

    .line 328
    :pswitch_c4
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getHour()I

    move-result v7

    if-lt v7, v9, :cond_d3

    .line 329
    iget-object v7, v0, Landroid/text/format/TimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    invoke-virtual {v7}, Landroid/icu/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v7

    aget-object v6, v7, v6

    goto :goto_db

    .line 330
    :cond_d3
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    invoke-virtual {v6}, Landroid/icu/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v13

    .line 328
    :goto_db
    invoke-direct {v0, v6, v4}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    .line 331
    return v13

    .line 325
    :pswitch_df
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 326
    return v13

    .line 321
    :pswitch_e7
    iget-object v7, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v4, v12, v10, v11, v12}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 322
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v9

    add-int/2addr v9, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 321
    invoke-virtual {v7, v8, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 323
    return v13

    .line 313
    :pswitch_fe
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getHour()I

    move-result v6

    rem-int/2addr v6, v9

    if-eqz v6, :cond_10b

    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getHour()I

    move-result v6

    rem-int/lit8 v9, v6, 0xc

    .line 314
    .local v9, "n2":I
    :cond_10b
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v4, v10, v10, v11, v12}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 315
    return v13

    .line 309
    .end local v9    # "n2":I
    :pswitch_11d
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v4, v10, v10, v11, v12}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 310
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getHour()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    .line 309
    invoke-virtual {v6, v7, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 311
    return v13

    .line 304
    :pswitch_133
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getYearDay()I

    move-result v7

    add-int/2addr v7, v6

    .line 305
    .local v7, "yearDay":I
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    const-string v8, "%3d"

    const-string v9, "%03d"

    invoke-static {v4, v9, v8, v11, v9}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 306
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    .line 305
    invoke-virtual {v6, v8, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 307
    return v13

    .line 289
    .end local v7    # "yearDay":I
    :pswitch_14e
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v4, v10, v10, v11, v12}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 290
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getMonthDay()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    .line 289
    invoke-virtual {v6, v7, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 291
    return v13

    .line 274
    :pswitch_164
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v4, v12, v10, v11, v12}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 275
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getMonthDay()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    .line 274
    invoke-virtual {v6, v7, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 276
    return v13

    .line 268
    :pswitch_17a
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->dateTimeFormat:Ljava/lang/String;

    invoke-direct {v0, v6, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    .line 269
    return v13

    .line 258
    :pswitch_180
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v6

    if-ltz v6, :cond_19a

    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v6

    if-lt v6, v9, :cond_18d

    goto :goto_19a

    .line 261
    :cond_18d
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    .line 260
    invoke-virtual {v6, v13, v13}, Landroid/icu/text/DateFormatSymbols;->getMonths(II)[Ljava/lang/String;

    move-result-object v6

    .line 261
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v7

    aget-object v7, v6, v7

    goto :goto_19b

    .line 259
    :cond_19a
    :goto_19a
    nop

    .line 258
    :goto_19b
    invoke-direct {v0, v7, v4}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    .line 263
    return v13

    .line 232
    :pswitch_19f
    nop

    .line 233
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v9

    if-ltz v9, :cond_1bb

    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v9

    if-lt v9, v8, :cond_1ad

    goto :goto_1bb

    .line 236
    :cond_1ad
    iget-object v7, v0, Landroid/text/format/TimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    .line 235
    invoke-virtual {v7, v13, v13}, Landroid/icu/text/DateFormatSymbols;->getWeekdays(II)[Ljava/lang/String;

    move-result-object v7

    .line 236
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v8

    add-int/2addr v8, v6

    aget-object v7, v7, v8

    goto :goto_1bc

    .line 234
    :cond_1bb
    :goto_1bb
    nop

    .line 232
    :goto_1bc
    invoke-direct {v0, v7, v4}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    .line 238
    return v13

    .line 430
    :pswitch_1c0
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getIsDst()I

    move-result v7

    if-gez v7, :cond_1c7

    .line 431
    return v13

    .line 433
    :cond_1c7
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getIsDst()I

    move-result v7

    if-eqz v7, :cond_1ce

    goto :goto_1cf

    :cond_1ce
    move v6, v13

    .line 434
    .local v6, "isDst":Z
    :goto_1cf
    invoke-virtual {v3}, Lcom/android/i18n/timezone/ZoneInfoData;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    .line 435
    invoke-virtual {v7, v6, v13}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v7

    .line 434
    invoke-direct {v0, v7, v4}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    .line 436
    return v13

    .line 427
    .end local v6    # "isDst":Z
    :pswitch_1df
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getYear()I

    move-result v7

    invoke-direct {v0, v7, v6, v6, v4}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    .line 428
    return v13

    .line 418
    :pswitch_1e7
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->timeOnlyFormat:Ljava/lang/String;

    invoke-direct {v0, v6, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    .line 419
    return v13

    .line 409
    :pswitch_1ed
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getYearDay()I

    move-result v7

    add-int/2addr v7, v8

    .line 410
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v9

    if-eqz v9, :cond_1fe

    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v9

    sub-int/2addr v9, v6

    goto :goto_1ff

    .line 411
    :cond_1fe
    const/4 v9, 0x6

    :goto_1ff
    sub-int/2addr v7, v9

    div-int/2addr v7, v8

    .line 412
    .local v7, "n":I
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v4, v12, v10, v11, v12}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 413
    return v13

    .line 358
    .end local v7    # "n":I
    :pswitch_213
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v4, v12, v10, v11, v12}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 359
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getYearDay()I

    move-result v9

    add-int/2addr v9, v8

    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v10

    sub-int/2addr v9, v10

    div-int/2addr v9, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    .line 358
    invoke-virtual {v6, v7, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 361
    return v13

    .line 352
    :pswitch_230
    const-string v6, "%H:%M:%S"

    invoke-direct {v0, v6, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    .line 353
    return v13

    .line 344
    :pswitch_236
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v4, v12, v10, v11, v12}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 345
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getSecond()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    .line 344
    invoke-virtual {v6, v7, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 346
    return v13

    .line 338
    :pswitch_24c
    const-string v6, "%H:%M"

    invoke-direct {v0, v6, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    .line 339
    return v13

    .line 333
    :pswitch_252
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getHour()I

    move-result v7

    if-lt v7, v9, :cond_261

    .line 334
    iget-object v7, v0, Landroid/text/format/TimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    invoke-virtual {v7}, Landroid/icu/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v7

    aget-object v6, v7, v6

    goto :goto_269

    .line 335
    :cond_261
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    invoke-virtual {v6}, Landroid/icu/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v13

    :goto_269
    nop

    .line 333
    const/4 v7, -0x1

    invoke-direct {v0, v6, v7}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    .line 336
    return v13

    .line 317
    :pswitch_26f
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v4, v12, v10, v11, v12}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 318
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getMinute()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    .line 317
    invoke-virtual {v6, v7, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 319
    return v13

    .line 300
    :pswitch_285
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getHour()I

    move-result v6

    rem-int/2addr v6, v9

    if-eqz v6, :cond_292

    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getHour()I

    move-result v6

    rem-int/lit8 v9, v6, 0xc

    .line 301
    .local v9, "hour":I
    :cond_292
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v4, v12, v10, v11, v12}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 302
    return v13

    .line 296
    .end local v9    # "hour":I
    :pswitch_2a4
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v4, v12, v10, v11, v12}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 297
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getHour()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    .line 296
    invoke-virtual {v6, v7, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 298
    return v13

    .line 370
    :pswitch_2ba
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getYear()I

    move-result v7

    .line 371
    .local v7, "year":I
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getYearDay()I

    move-result v9

    .line 372
    .local v9, "yday":I
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v14

    .line 375
    .local v14, "wday":I
    :goto_2c6
    invoke-static {v7}, Landroid/text/format/TimeFormatter;->isLeap(I)Z

    move-result v15

    const/16 v16, 0x16e

    const/16 v17, 0x16d

    if-eqz v15, :cond_2d3

    move/from16 v15, v16

    goto :goto_2d5

    :cond_2d3
    move/from16 v15, v17

    .line 377
    .local v15, "len":I
    :goto_2d5
    add-int/lit8 v18, v9, 0xb

    sub-int v18, v18, v14

    rem-int/lit8 v18, v18, 0x7

    move/from16 v19, v8

    add-int/lit8 v8, v18, -0x3

    .line 379
    .local v8, "bot":I
    rem-int/lit8 v18, v15, 0x7

    move/from16 v20, v6

    sub-int v6, v8, v18

    .line 380
    .local v6, "top":I
    const/4 v13, -0x3

    if-ge v6, v13, :cond_2ea

    .line 381
    add-int/lit8 v6, v6, 0x7

    .line 383
    :cond_2ea
    add-int/2addr v6, v15

    .line 384
    if-lt v9, v6, :cond_2f1

    .line 385
    add-int/lit8 v7, v7, 0x1

    .line 386
    const/4 v13, 0x1

    .line 387
    .local v13, "w":I
    goto :goto_2fa

    .line 389
    .end local v13    # "w":I
    :cond_2f1
    if-lt v9, v8, :cond_323

    .line 390
    sub-int v13, v9, v8

    div-int/lit8 v13, v13, 0x7

    add-int/lit8 v13, v13, 0x1

    .line 391
    .restart local v13    # "w":I
    nop

    .line 396
    .end local v6    # "top":I
    .end local v8    # "bot":I
    .end local v15    # "len":I
    :goto_2fa
    const/16 v6, 0x56

    if-ne v5, v6, :cond_311

    .line 397
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v4, v12, v10, v11, v12}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v6, v8, v10}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    const/4 v8, 0x0

    goto :goto_322

    .line 398
    :cond_311
    const/16 v6, 0x67

    if-ne v5, v6, :cond_31c

    .line 399
    move/from16 v6, v20

    const/4 v8, 0x0

    invoke-direct {v0, v7, v8, v6, v4}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    goto :goto_322

    .line 401
    :cond_31c
    move/from16 v6, v20

    const/4 v8, 0x0

    invoke-direct {v0, v7, v6, v6, v4}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    .line 403
    :goto_322
    return v8

    .line 393
    .end local v13    # "w":I
    .restart local v6    # "top":I
    .restart local v8    # "bot":I
    .restart local v15    # "len":I
    :cond_323
    add-int/lit8 v7, v7, -0x1

    .line 394
    invoke-static {v7}, Landroid/text/format/TimeFormatter;->isLeap(I)Z

    move-result v13

    if-eqz v13, :cond_32c

    goto :goto_32e

    :cond_32c
    move/from16 v16, v17

    :goto_32e
    add-int v9, v9, v16

    .line 395
    .end local v6    # "top":I
    .end local v8    # "bot":I
    .end local v15    # "len":I
    move/from16 v8, v19

    const/4 v6, 0x1

    const/4 v13, 0x0

    goto :goto_2c6

    .line 293
    .end local v7    # "year":I
    .end local v9    # "yday":I
    .end local v14    # "wday":I
    :pswitch_335
    const-string v6, "%Y-%m-%d"

    invoke-direct {v0, v6, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    .line 294
    const/4 v8, 0x0

    return v8

    .line 280
    :pswitch_33c
    goto/16 :goto_9

    .line 271
    :pswitch_33e
    move v8, v13

    const-string v6, "%m/%d/%y"

    invoke-direct {v0, v6, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    .line 272
    return v8

    .line 265
    :pswitch_345
    move v8, v13

    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getYear()I

    move-result v6

    const/4 v7, 0x1

    invoke-direct {v0, v6, v7, v8, v4}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    .line 266
    return v8

    .line 240
    :pswitch_34f
    const/16 v6, 0x2d

    if-ne v4, v6, :cond_374

    .line 241
    nop

    .line 242
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v6

    if-ltz v6, :cond_36f

    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v6

    if-lt v6, v9, :cond_361

    goto :goto_36f

    .line 245
    :cond_361
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    .line 244
    const/4 v7, 0x1

    invoke-virtual {v6, v7, v7}, Landroid/icu/text/DateFormatSymbols;->getMonths(II)[Ljava/lang/String;

    move-result-object v6

    .line 245
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v7

    aget-object v7, v6, v7

    goto :goto_370

    .line 243
    :cond_36f
    :goto_36f
    nop

    .line 241
    :goto_370
    invoke-direct {v0, v7, v4}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    goto :goto_395

    .line 248
    :cond_374
    nop

    .line 249
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v6

    if-ltz v6, :cond_391

    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v6

    if-lt v6, v9, :cond_382

    goto :goto_391

    .line 252
    :cond_382
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    .line 251
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Landroid/icu/text/DateFormatSymbols;->getMonths(II)[Ljava/lang/String;

    move-result-object v6

    .line 252
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v7

    aget-object v7, v6, v7

    goto :goto_392

    .line 250
    :cond_391
    :goto_391
    nop

    .line 248
    :goto_392
    invoke-direct {v0, v7, v4}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    .line 255
    :goto_395
    const/16 v18, 0x0

    return v18

    .line 224
    :pswitch_398
    move/from16 v19, v8

    .line 225
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v6

    if-ltz v6, :cond_3b9

    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v6

    move/from16 v8, v19

    if-lt v6, v8, :cond_3a9

    goto :goto_3b9

    .line 228
    :cond_3a9
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    .line 227
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Landroid/icu/text/DateFormatSymbols;->getWeekdays(II)[Ljava/lang/String;

    move-result-object v6

    .line 228
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v8

    add-int/2addr v8, v7

    aget-object v7, v6, v8

    goto :goto_3ba

    .line 226
    :cond_3b9
    :goto_3b9
    nop

    .line 224
    :goto_3ba
    invoke-direct {v0, v7, v4}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    .line 230
    const/16 v18, 0x0

    return v18

    .line 456
    :pswitch_3c0
    move/from16 v18, v13

    const-string v6, "%a %b %e %H:%M:%S %Z %Y"

    invoke-direct {v0, v6, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    .line 457
    return v18

    .line 286
    :pswitch_3c8
    move v4, v5

    .line 287
    goto/16 :goto_9

    .line 465
    .end local v5    # "currentChar":C
    :cond_3cb
    move/from16 v20, v6

    return v20

    :pswitch_data_3ce
    .packed-switch 0x23
        :pswitch_3c8
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_3c0
        :pswitch_2f
        :pswitch_3c8
        :pswitch_2f
        :pswitch_2f
        :pswitch_3c8
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_398
        :pswitch_34f
        :pswitch_345
        :pswitch_33e
        :pswitch_33c
        :pswitch_335
        :pswitch_2ba
        :pswitch_2a4
        :pswitch_285
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_26f
        :pswitch_2f
        :pswitch_33c
        :pswitch_252
        :pswitch_2f
        :pswitch_24c
        :pswitch_236
        :pswitch_230
        :pswitch_213
        :pswitch_2ba
        :pswitch_1ed
        :pswitch_1e7
        :pswitch_1df
        :pswitch_1c0
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_3c8
        :pswitch_3c8
        :pswitch_2f
        :pswitch_19f
        :pswitch_180
        :pswitch_17a
        :pswitch_164
        :pswitch_14e
        :pswitch_2f
        :pswitch_2ba
        :pswitch_180
        :pswitch_2f
        :pswitch_133
        :pswitch_11d
        :pswitch_fe
        :pswitch_e7
        :pswitch_df
        :pswitch_2f
        :pswitch_c4
        :pswitch_2f
        :pswitch_be
        :pswitch_b0
        :pswitch_a8
        :pswitch_8f
        :pswitch_89
        :pswitch_77
        :pswitch_71
        :pswitch_69
        :pswitch_32
    .end packed-switch
.end method

.method private static blacklist isLeap(I)Z
    .registers 2
    .param p0, "year"    # I

    .line 538
    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_e

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_c

    rem-int/lit16 v0, p0, 0x190

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private blacklist localizeDigits(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "s"    # Ljava/lang/String;

    .line 176
    iget-object v0, p0, Landroid/text/format/TimeFormatter;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_b

    .line 177
    return-object p1

    .line 180
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 181
    .local v0, "length":I
    iget-object v2, p0, Landroid/text/format/TimeFormatter;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v2}, Landroid/icu/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v2

    sub-int/2addr v2, v1

    .line 182
    .local v2, "offsetToLocalizedDigits":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 183
    .local v3, "result":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1c
    if-ge v4, v0, :cond_31

    .line 184
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 185
    .local v5, "ch":C
    if-lt v5, v1, :cond_2b

    const/16 v6, 0x39

    if-gt v5, v6, :cond_2b

    .line 186
    add-int v6, v5, v2

    int-to-char v5, v6

    .line 188
    :cond_2b
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 183
    .end local v5    # "ch":C
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 190
    .end local v4    # "i":I
    :cond_31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist modifyAndAppend(Ljava/lang/CharSequence;I)V
    .registers 6
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "modifier"    # I

    .line 469
    sparse-switch p2, :sswitch_data_64

    .line 492
    iget-object v0, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_62

    .line 476
    :sswitch_9
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 477
    iget-object v1, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/text/format/TimeFormatter;->brokenToUpper(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 476
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 479
    .end local v0    # "i":I
    :cond_20
    goto :goto_62

    .line 481
    :sswitch_21
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_22
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_49

    .line 482
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 483
    .local v1, "c":C
    invoke-static {v1}, Landroid/text/format/TimeFormatter;->brokenIsUpper(C)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 484
    invoke-static {v1}, Landroid/text/format/TimeFormatter;->brokenToLower(C)C

    move-result v1

    goto :goto_41

    .line 485
    :cond_37
    invoke-static {v1}, Landroid/text/format/TimeFormatter;->brokenIsLower(C)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 486
    invoke-static {v1}, Landroid/text/format/TimeFormatter;->brokenToUpper(C)C

    move-result v1

    .line 488
    :cond_41
    :goto_41
    iget-object v2, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 481
    .end local v1    # "c":C
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 490
    .end local v0    # "i":I
    :cond_49
    goto :goto_62

    .line 471
    :sswitch_4a
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4b
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_61

    .line 472
    iget-object v1, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/text/format/TimeFormatter;->brokenToLower(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 471
    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    .line 474
    .end local v0    # "i":I
    :cond_61
    nop

    .line 494
    :goto_62
    return-void

    nop

    :sswitch_data_64
    .sparse-switch
        -0x1 -> :sswitch_4a
        0x23 -> :sswitch_21
        0x5e -> :sswitch_9
    .end sparse-switch
.end method

.method private blacklist outputYear(IZZI)V
    .registers 14
    .param p1, "value"    # I
    .param p2, "outputTop"    # Z
    .param p3, "outputBottom"    # Z
    .param p4, "modifier"    # I

    .line 500
    const/16 v0, 0x64

    .line 501
    .local v0, "DIVISOR":I
    rem-int/lit8 v1, p1, 0x64

    .line 502
    .local v1, "trail":I
    div-int/lit8 v2, p1, 0x64

    div-int/lit8 v3, v1, 0x64

    add-int/2addr v2, v3

    .line 503
    .local v2, "lead":I
    rem-int/lit8 v1, v1, 0x64

    .line 504
    if-gez v1, :cond_14

    if-lez v2, :cond_14

    .line 505
    add-int/lit8 v1, v1, 0x64

    .line 506
    add-int/lit8 v2, v2, -0x1

    goto :goto_1c

    .line 507
    :cond_14
    if-gez v2, :cond_1c

    if-lez v1, :cond_1c

    .line 508
    add-int/lit8 v1, v1, -0x64

    .line 509
    add-int/lit8 v2, v2, 0x1

    .line 511
    :cond_1c
    :goto_1c
    const-string v3, "%d"

    const-string v4, "%2d"

    const-string v5, "%02d"

    if-eqz p2, :cond_41

    .line 512
    if-nez v2, :cond_30

    if-gez v1, :cond_30

    .line 513
    iget-object v6, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    const-string v7, "-0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_41

    .line 515
    :cond_30
    iget-object v6, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {p4, v5, v4, v3, v5}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 518
    :cond_41
    :goto_41
    if-eqz p3, :cond_59

    .line 519
    if-gez v1, :cond_47

    neg-int v6, v1

    goto :goto_48

    :cond_47
    move v6, v1

    .line 520
    .local v6, "n":I
    :goto_48
    iget-object v7, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {p4, v5, v4, v3, v5}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 522
    .end local v6    # "n":I
    :cond_59
    return-void
.end method


# virtual methods
.method public blacklist format(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)Ljava/lang/String;
    .registers 8
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "wallTime"    # Lcom/android/i18n/timezone/WallTime;
    .param p3, "zoneInfoData"    # Lcom/android/i18n/timezone/ZoneInfoData;

    .line 157
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    iput-object v1, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    .line 162
    new-instance v2, Ljava/util/Formatter;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v1, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v2, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    .line 164
    invoke-direct {p0, p1, p2, p3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    .line 165
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, "result":Ljava/lang/String;
    invoke-direct {p0, v2}, Landroid/text/format/TimeFormatter;->localizeDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_21

    .line 170
    iput-object v0, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    .line 171
    iput-object v0, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    .line 168
    return-object v3

    .line 170
    .end local v1    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v2    # "result":Ljava/lang/String;
    :catchall_21
    move-exception v1

    iput-object v0, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    .line 171
    iput-object v0, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    .line 172
    throw v1
.end method

.method blacklist formatMillisWithFixedFormat(J)Ljava/lang/String;
    .registers 8
    .param p1, "timeMillis"    # J

    .line 113
    invoke-static {p1, p2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    .line 116
    .local v0, "instant":Ljava/time/Instant;
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v1

    .line 123
    .local v1, "localDateTime":Ljava/time/LocalDateTime;
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x13

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 127
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getYear()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v4

    invoke-static {v2, v4}, Landroid/text/format/TimeFormatter;->append2DigitNumber(Ljava/lang/StringBuilder;I)V

    .line 130
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v3

    invoke-static {v2, v3}, Landroid/text/format/TimeFormatter;->append2DigitNumber(Ljava/lang/StringBuilder;I)V

    .line 132
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getHour()I

    move-result v3

    invoke-static {v2, v3}, Landroid/text/format/TimeFormatter;->append2DigitNumber(Ljava/lang/StringBuilder;I)V

    .line 134
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v4

    invoke-static {v2, v4}, Landroid/text/format/TimeFormatter;->append2DigitNumber(Ljava/lang/StringBuilder;I)V

    .line 136
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v3

    invoke-static {v2, v3}, Landroid/text/format/TimeFormatter;->append2DigitNumber(Ljava/lang/StringBuilder;I)V

    .line 139
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, "result":Ljava/lang/String;
    invoke-direct {p0, v3}, Landroid/text/format/TimeFormatter;->localizeDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
