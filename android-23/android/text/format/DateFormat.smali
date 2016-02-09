.class public Landroid/text/format/DateFormat;
.super Ljava/lang/Object;
.source "DateFormat.java"


# static fields
.field public static final AM_PM:C = 'a'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CAPITAL_AM_PM:C = 'A'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATE:C = 'd'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DAY:C = 'E'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HOUR:C = 'h'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HOUR_OF_DAY:C = 'k'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MINUTE:C = 'm'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MONTH:C = 'M'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final QUOTE:C = '\''
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SECONDS:C = 's'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STANDALONE_MONTH:C = 'L'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TIME_ZONE:C = 'z'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final YEAR:C = 'y'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static sIs24Hour:Z

.field private static sIs24HourLocale:Ljava/util/Locale;

.field private static final sLocaleLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 157
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Landroid/text/format/DateFormat;->sLocaleLock:Ljava/lang/Object;

    #@7
    .line 61
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static appendQuotedText(Landroid/text/SpannableStringBuilder;II)I
    .locals 4
    .param p0, "s"    # Landroid/text/SpannableStringBuilder;
    .param p1, "i"    # I
    .param p2, "len"    # I

    #@0
    .prologue
    const/16 v3, 0x27

    #@2
    .line 595
    add-int/lit8 v2, p1, 0x1

    #@4
    if-ge v2, p2, :cond_0

    #@6
    add-int/lit8 v2, p1, 0x1

    #@8
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    #@b
    move-result v2

    #@c
    if-ne v2, v3, :cond_0

    #@e
    .line 596
    add-int/lit8 v2, p1, 0x1

    #@10
    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    #@13
    .line 597
    const/4 v2, 0x1

    #@14
    return v2

    #@15
    .line 600
    :cond_0
    const/4 v1, 0x0

    #@16
    .line 603
    .local v1, "count":I
    add-int/lit8 v2, p1, 0x1

    #@18
    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    #@1b
    .line 604
    add-int/lit8 p2, p2, -0x1

    #@1d
    .line 606
    :goto_0
    if-ge p1, p2, :cond_2

    #@1f
    .line 607
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    #@22
    move-result v0

    #@23
    .line 609
    .local v0, "c":C
    if-ne v0, v3, :cond_3

    #@25
    .line 611
    add-int/lit8 v2, p1, 0x1

    #@27
    if-ge v2, p2, :cond_1

    #@29
    add-int/lit8 v2, p1, 0x1

    #@2b
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    #@2e
    move-result v2

    #@2f
    if-ne v2, v3, :cond_1

    #@31
    .line 613
    add-int/lit8 v2, p1, 0x1

    #@33
    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    #@36
    .line 614
    add-int/lit8 p2, p2, -0x1

    #@38
    .line 615
    add-int/lit8 v1, v1, 0x1

    #@3a
    .line 616
    add-int/lit8 p1, p1, 0x1

    #@3c
    .line 611
    goto :goto_0

    #@3d
    .line 619
    :cond_1
    add-int/lit8 v2, p1, 0x1

    #@3f
    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    #@42
    .line 628
    .end local v0    # "c":C
    :cond_2
    return v1

    #@43
    .line 623
    .restart local v0    # "c":C
    :cond_3
    add-int/lit8 p1, p1, 0x1

    #@45
    .line 624
    add-int/lit8 v1, v1, 0x1

    #@47
    goto :goto_0
.end method

.method public static format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "inFormat"    # Ljava/lang/CharSequence;
    .param p1, "inTimeInMillis"    # J

    #@0
    .prologue
    .line 343
    new-instance v0, Ljava/util/Date;

    #@2
    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    #@5
    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;
    .locals 10
    .param p0, "inFormat"    # Ljava/lang/CharSequence;
    .param p1, "inDate"    # Ljava/util/Calendar;

    #@0
    .prologue
    .line 439
    new-instance v7, Landroid/text/SpannableStringBuilder;

    #@2
    invoke-direct {v7, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    #@5
    .line 442
    .local v7, "s":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@8
    move-result-object v8

    #@9
    invoke-static {v8}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    #@c
    move-result-object v5

    #@d
    .line 444
    .local v5, "localeData":Llibcore/icu/LocaleData;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@10
    move-result v4

    #@11
    .line 446
    .local v4, "len":I
    const/4 v3, 0x0

    #@12
    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_4

    #@14
    .line 447
    const/4 v1, 0x1

    #@15
    .line 448
    .local v1, "count":I
    invoke-virtual {v7, v3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    #@18
    move-result v0

    #@19
    .line 450
    .local v0, "c":I
    const/16 v8, 0x27

    #@1b
    if-ne v0, v8, :cond_1

    #@1d
    .line 451
    invoke-static {v7, v3, v4}, Landroid/text/format/DateFormat;->appendQuotedText(Landroid/text/SpannableStringBuilder;II)I

    #@20
    move-result v1

    #@21
    .line 452
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    #@24
    move-result v4

    #@25
    .line 446
    :cond_0
    :goto_1
    add-int/2addr v3, v1

    #@26
    goto :goto_0

    #@27
    .line 456
    :cond_1
    :goto_2
    add-int v8, v3, v1

    #@29
    if-ge v8, v4, :cond_2

    #@2b
    add-int v8, v3, v1

    #@2d
    invoke-virtual {v7, v8}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    #@30
    move-result v8

    #@31
    if-ne v8, v0, :cond_2

    #@33
    .line 457
    add-int/lit8 v1, v1, 0x1

    #@35
    goto :goto_2

    #@36
    .line 461
    :cond_2
    sparse-switch v0, :sswitch_data_0

    #@39
    .line 515
    const/4 v6, 0x0

    #@3a
    .line 519
    :goto_3
    if-eqz v6, :cond_0

    #@3c
    .line 520
    add-int v8, v3, v1

    #@3e
    invoke-virtual {v7, v3, v8, v6}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    #@41
    .line 521
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@44
    move-result v1

    #@45
    .line 522
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    #@48
    move-result v4

    #@49
    goto :goto_1

    #@4a
    .line 464
    :sswitch_0
    iget-object v8, v5, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    #@4c
    const/16 v9, 0x9

    #@4e
    invoke-virtual {p1, v9}, Ljava/util/Calendar;->get(I)I

    #@51
    move-result v9

    #@52
    add-int/lit8 v9, v9, 0x0

    #@54
    aget-object v6, v8, v9

    #@56
    .local v6, "replacement":Ljava/lang/String;
    goto :goto_3

    #@57
    .line 467
    .end local v6    # "replacement":Ljava/lang/String;
    :sswitch_1
    const/4 v8, 0x5

    #@58
    invoke-virtual {p1, v8}, Ljava/util/Calendar;->get(I)I

    #@5b
    move-result v8

    #@5c
    invoke-static {v8, v1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    #@5f
    move-result-object v6

    #@60
    .restart local v6    # "replacement":Ljava/lang/String;
    goto :goto_3

    #@61
    .line 472
    .end local v6    # "replacement":Ljava/lang/String;
    :sswitch_2
    const/4 v8, 0x7

    #@62
    invoke-virtual {p1, v8}, Ljava/util/Calendar;->get(I)I

    #@65
    move-result v8

    #@66
    .line 471
    invoke-static {v5, v8, v1, v0}, Landroid/text/format/DateFormat;->getDayOfWeekString(Llibcore/icu/LocaleData;III)Ljava/lang/String;

    #@69
    move-result-object v6

    #@6a
    .restart local v6    # "replacement":Ljava/lang/String;
    goto :goto_3

    #@6b
    .line 477
    .end local v6    # "replacement":Ljava/lang/String;
    :sswitch_3
    const/16 v8, 0xa

    #@6d
    invoke-virtual {p1, v8}, Ljava/util/Calendar;->get(I)I

    #@70
    move-result v2

    #@71
    .line 478
    .local v2, "hour":I
    const/16 v8, 0x68

    #@73
    if-ne v0, v8, :cond_3

    #@75
    if-nez v2, :cond_3

    #@77
    .line 479
    const/16 v2, 0xc

    #@79
    .line 481
    :cond_3
    invoke-static {v2, v1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    #@7c
    move-result-object v6

    #@7d
    .restart local v6    # "replacement":Ljava/lang/String;
    goto :goto_3

    #@7e
    .line 487
    .end local v2    # "hour":I
    .end local v6    # "replacement":Ljava/lang/String;
    :sswitch_4
    const/16 v8, 0xb

    #@80
    invoke-virtual {p1, v8}, Ljava/util/Calendar;->get(I)I

    #@83
    move-result v2

    #@84
    .line 494
    .restart local v2    # "hour":I
    invoke-static {v2, v1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    #@87
    move-result-object v6

    #@88
    .restart local v6    # "replacement":Ljava/lang/String;
    goto :goto_3

    #@89
    .line 500
    .end local v2    # "hour":I
    .end local v6    # "replacement":Ljava/lang/String;
    :sswitch_5
    const/4 v8, 0x2

    #@8a
    invoke-virtual {p1, v8}, Ljava/util/Calendar;->get(I)I

    #@8d
    move-result v8

    #@8e
    .line 499
    invoke-static {v5, v8, v1, v0}, Landroid/text/format/DateFormat;->getMonthString(Llibcore/icu/LocaleData;III)Ljava/lang/String;

    #@91
    move-result-object v6

    #@92
    .restart local v6    # "replacement":Ljava/lang/String;
    goto :goto_3

    #@93
    .line 503
    .end local v6    # "replacement":Ljava/lang/String;
    :sswitch_6
    const/16 v8, 0xc

    #@95
    invoke-virtual {p1, v8}, Ljava/util/Calendar;->get(I)I

    #@98
    move-result v8

    #@99
    invoke-static {v8, v1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    #@9c
    move-result-object v6

    #@9d
    .restart local v6    # "replacement":Ljava/lang/String;
    goto :goto_3

    #@9e
    .line 506
    .end local v6    # "replacement":Ljava/lang/String;
    :sswitch_7
    const/16 v8, 0xd

    #@a0
    invoke-virtual {p1, v8}, Ljava/util/Calendar;->get(I)I

    #@a3
    move-result v8

    #@a4
    invoke-static {v8, v1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    #@a7
    move-result-object v6

    #@a8
    .restart local v6    # "replacement":Ljava/lang/String;
    goto :goto_3

    #@a9
    .line 509
    .end local v6    # "replacement":Ljava/lang/String;
    :sswitch_8
    const/4 v8, 0x1

    #@aa
    invoke-virtual {p1, v8}, Ljava/util/Calendar;->get(I)I

    #@ad
    move-result v8

    #@ae
    invoke-static {v8, v1}, Landroid/text/format/DateFormat;->getYearString(II)Ljava/lang/String;

    #@b1
    move-result-object v6

    #@b2
    .restart local v6    # "replacement":Ljava/lang/String;
    goto :goto_3

    #@b3
    .line 512
    .end local v6    # "replacement":Ljava/lang/String;
    :sswitch_9
    invoke-static {p1, v1}, Landroid/text/format/DateFormat;->getTimeZoneString(Ljava/util/Calendar;I)Ljava/lang/String;

    #@b6
    move-result-object v6

    #@b7
    .restart local v6    # "replacement":Ljava/lang/String;
    goto :goto_3

    #@b8
    .line 526
    .end local v0    # "c":I
    .end local v1    # "count":I
    .end local v6    # "replacement":Ljava/lang/String;
    :cond_4
    instance-of v8, p0, Landroid/text/Spanned;

    #@ba
    if-eqz v8, :cond_5

    #@bc
    .line 527
    new-instance v8, Landroid/text/SpannedString;

    #@be
    invoke-direct {v8, v7}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    #@c1
    return-object v8

    #@c2
    .line 529
    :cond_5
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    #@c5
    move-result-object v8

    #@c6
    return-object v8

    #@c7
    .line 461
    nop

    #@c8
    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_0
        0x45 -> :sswitch_2
        0x48 -> :sswitch_4
        0x4b -> :sswitch_3
        0x4c -> :sswitch_5
        0x4d -> :sswitch_5
        0x61 -> :sswitch_0
        0x63 -> :sswitch_2
        0x64 -> :sswitch_1
        0x68 -> :sswitch_3
        0x6b -> :sswitch_4
        0x6d -> :sswitch_6
        0x73 -> :sswitch_7
        0x79 -> :sswitch_8
        0x7a -> :sswitch_9
    .end sparse-switch
.end method

.method public static format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "inFormat"    # Ljava/lang/CharSequence;
    .param p1, "inDate"    # Ljava/util/Date;

    #@0
    .prologue
    .line 354
    new-instance v0, Ljava/util/GregorianCalendar;

    #@2
    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    #@5
    .line 355
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    #@8
    .line 356
    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method private static formatZoneOffset(II)Ljava/lang/String;
    .locals 6
    .param p0, "offset"    # I
    .param p1, "count"    # I

    #@0
    .prologue
    const/4 v5, 0x2

    #@1
    const/4 v4, 0x0

    #@2
    .line 571
    div-int/lit16 p0, p0, 0x3e8

    #@4
    .line 572
    new-instance v2, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    .line 574
    .local v2, "tb":Ljava/lang/StringBuilder;
    if-gez p0, :cond_0

    #@b
    .line 575
    const-string/jumbo v3, "-"

    #@e
    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    .line 576
    neg-int p0, p0

    #@12
    .line 581
    :goto_0
    div-int/lit16 v0, p0, 0xe10

    #@14
    .line 582
    .local v0, "hours":I
    rem-int/lit16 v3, p0, 0xe10

    #@16
    div-int/lit8 v1, v3, 0x3c

    #@18
    .line 584
    .local v1, "minutes":I
    invoke-static {v0, v5}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    .line 585
    invoke-static {v1, v5}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    .line 586
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    return-object v3

    #@2b
    .line 578
    .end local v0    # "hours":I
    .end local v1    # "minutes":I
    :cond_0
    const-string/jumbo v3, "+"

    #@2e
    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    goto :goto_0
.end method

.method public static getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "skeleton"    # Ljava/lang/String;

    #@0
    .prologue
    .line 247
    invoke-static {p1, p0}, Llibcore/icu/ICU;->getBestDateTimePattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 290
    const/4 v0, 0x3

    #@1
    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static getDateFormatOrder(Landroid/content/Context;)[C
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 323
    invoke-static {}, Landroid/text/format/DateFormat;->getDateFormatString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Llibcore/icu/ICU;->getDateFormatOrder(Ljava/lang/String;)[C

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method private static getDateFormatString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 327
    const/4 v1, 0x3

    #@1
    invoke-static {v1}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    #@4
    move-result-object v0

    #@5
    .line 328
    .local v0, "df":Ljava/text/DateFormat;
    instance-of v1, v0, Ljava/text/SimpleDateFormat;

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 329
    check-cast v0, Ljava/text/SimpleDateFormat;

    #@b
    .end local v0    # "df":Ljava/text/DateFormat;
    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    return-object v1

    #@10
    .line 332
    .restart local v0    # "df":Ljava/text/DateFormat;
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    #@12
    const-string/jumbo v2, "!(df instanceof SimpleDateFormat)"

    #@15
    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@18
    throw v1
.end method

.method private static getDayOfWeekString(Llibcore/icu/LocaleData;III)Ljava/lang/String;
    .locals 2
    .param p0, "ld"    # Llibcore/icu/LocaleData;
    .param p1, "day"    # I
    .param p2, "count"    # I
    .param p3, "kind"    # I

    #@0
    .prologue
    .line 534
    const/16 v1, 0x63

    #@2
    if-ne p3, v1, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    .line 535
    .local v0, "standalone":Z
    :goto_0
    const/4 v1, 0x5

    #@6
    if-ne p2, v1, :cond_2

    #@8
    .line 536
    if-eqz v0, :cond_1

    #@a
    iget-object v1, p0, Llibcore/icu/LocaleData;->tinyStandAloneWeekdayNames:[Ljava/lang/String;

    #@c
    aget-object v1, v1, p1

    #@e
    :goto_1
    return-object v1

    #@f
    .line 534
    .end local v0    # "standalone":Z
    :cond_0
    const/4 v0, 0x0

    #@10
    .restart local v0    # "standalone":Z
    goto :goto_0

    #@11
    .line 536
    :cond_1
    iget-object v1, p0, Llibcore/icu/LocaleData;->tinyWeekdayNames:[Ljava/lang/String;

    #@13
    aget-object v1, v1, p1

    #@15
    goto :goto_1

    #@16
    .line 537
    :cond_2
    const/4 v1, 0x4

    #@17
    if-ne p2, v1, :cond_4

    #@19
    .line 538
    if-eqz v0, :cond_3

    #@1b
    iget-object v1, p0, Llibcore/icu/LocaleData;->longStandAloneWeekdayNames:[Ljava/lang/String;

    #@1d
    aget-object v1, v1, p1

    #@1f
    :goto_2
    return-object v1

    #@20
    :cond_3
    iget-object v1, p0, Llibcore/icu/LocaleData;->longWeekdayNames:[Ljava/lang/String;

    #@22
    aget-object v1, v1, p1

    #@24
    goto :goto_2

    #@25
    .line 540
    :cond_4
    if-eqz v0, :cond_5

    #@27
    iget-object v1, p0, Llibcore/icu/LocaleData;->shortStandAloneWeekdayNames:[Ljava/lang/String;

    #@29
    aget-object v1, v1, p1

    #@2b
    :goto_3
    return-object v1

    #@2c
    :cond_5
    iget-object v1, p0, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    #@2e
    aget-object v1, v1, p1

    #@30
    goto :goto_3
.end method

.method public static getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 300
    const/4 v0, 0x1

    #@1
    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 310
    const/4 v0, 0x2

    #@1
    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method private static getMonthString(Llibcore/icu/LocaleData;III)Ljava/lang/String;
    .locals 2
    .param p0, "ld"    # Llibcore/icu/LocaleData;
    .param p1, "month"    # I
    .param p2, "count"    # I
    .param p3, "kind"    # I

    #@0
    .prologue
    .line 545
    const/16 v1, 0x4c

    #@2
    if-ne p3, v1, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    .line 546
    .local v0, "standalone":Z
    :goto_0
    const/4 v1, 0x5

    #@6
    if-ne p2, v1, :cond_2

    #@8
    .line 547
    if-eqz v0, :cond_1

    #@a
    iget-object v1, p0, Llibcore/icu/LocaleData;->tinyStandAloneMonthNames:[Ljava/lang/String;

    #@c
    aget-object v1, v1, p1

    #@e
    :goto_1
    return-object v1

    #@f
    .line 545
    .end local v0    # "standalone":Z
    :cond_0
    const/4 v0, 0x0

    #@10
    .restart local v0    # "standalone":Z
    goto :goto_0

    #@11
    .line 547
    :cond_1
    iget-object v1, p0, Llibcore/icu/LocaleData;->tinyMonthNames:[Ljava/lang/String;

    #@13
    aget-object v1, v1, p1

    #@15
    goto :goto_1

    #@16
    .line 548
    :cond_2
    const/4 v1, 0x4

    #@17
    if-ne p2, v1, :cond_4

    #@19
    .line 549
    if-eqz v0, :cond_3

    #@1b
    iget-object v1, p0, Llibcore/icu/LocaleData;->longStandAloneMonthNames:[Ljava/lang/String;

    #@1d
    aget-object v1, v1, p1

    #@1f
    :goto_2
    return-object v1

    #@20
    :cond_3
    iget-object v1, p0, Llibcore/icu/LocaleData;->longMonthNames:[Ljava/lang/String;

    #@22
    aget-object v1, v1, p1

    #@24
    goto :goto_2

    #@25
    .line 550
    :cond_4
    const/4 v1, 0x3

    #@26
    if-ne p2, v1, :cond_6

    #@28
    .line 551
    if-eqz v0, :cond_5

    #@2a
    iget-object v1, p0, Llibcore/icu/LocaleData;->shortStandAloneMonthNames:[Ljava/lang/String;

    #@2c
    aget-object v1, v1, p1

    #@2e
    :goto_3
    return-object v1

    #@2f
    :cond_5
    iget-object v1, p0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    #@31
    aget-object v1, v1, p1

    #@33
    goto :goto_3

    #@34
    .line 554
    :cond_6
    add-int/lit8 v1, p1, 0x1

    #@36
    invoke-static {v1, p2}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    return-object v1
.end method

.method public static getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 257
    new-instance v0, Ljava/text/SimpleDateFormat;

    #@2
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormatString(Landroid/content/Context;)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    #@9
    return-object v0
.end method

.method public static getTimeFormatString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 267
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->getTimeFormatString(Landroid/content/Context;I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getTimeFormatString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 278
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@7
    move-result-object v1

    #@8
    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@a
    invoke-static {v1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    #@d
    move-result-object v0

    #@e
    .line 279
    .local v0, "d":Llibcore/icu/LocaleData;
    invoke-static {p0, p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_0

    #@14
    iget-object v1, v0, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    #@16
    :goto_0
    return-object v1

    #@17
    :cond_0
    iget-object v1, v0, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    #@19
    goto :goto_0
.end method

.method private static getTimeZoneString(Ljava/util/Calendar;I)Ljava/lang/String;
    .locals 5
    .param p0, "inDate"    # Ljava/util/Calendar;
    .param p1, "count"    # I

    #@0
    .prologue
    const/16 v4, 0x10

    #@2
    const/4 v3, 0x0

    #@3
    .line 559
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    #@6
    move-result-object v1

    #@7
    .line 560
    .local v1, "tz":Ljava/util/TimeZone;
    const/4 v2, 0x2

    #@8
    if-ge p1, v2, :cond_0

    #@a
    .line 561
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    #@d
    move-result v2

    #@e
    .line 562
    const/16 v3, 0xf

    #@10
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    #@13
    move-result v3

    #@14
    .line 561
    add-int/2addr v2, v3

    #@15
    invoke-static {v2, p1}, Landroid/text/format/DateFormat;->formatZoneOffset(II)Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    return-object v2

    #@1a
    .line 565
    :cond_0
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_1

    #@20
    const/4 v0, 0x1

    #@21
    .line 566
    .local v0, "dst":Z
    :goto_0
    invoke-virtual {v1, v0, v3}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    return-object v2

    #@26
    .line 565
    .end local v0    # "dst":Z
    :cond_1
    const/4 v0, 0x0

    #@27
    .restart local v0    # "dst":Z
    goto :goto_0
.end method

.method private static getYearString(II)Ljava/lang/String;
    .locals 5
    .param p0, "year"    # I
    .param p1, "count"    # I

    #@0
    .prologue
    const/4 v1, 0x2

    #@1
    .line 590
    if-gt p1, v1, :cond_0

    #@3
    rem-int/lit8 v0, p0, 0x64

    #@5
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    :goto_0
    return-object v0

    #@a
    .line 591
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@d
    move-result-object v0

    #@e
    const-string/jumbo v1, "%d"

    #@11
    const/4 v2, 0x1

    #@12
    new-array v2, v2, [Ljava/lang/Object;

    #@14
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17
    move-result-object v3

    #@18
    const/4 v4, 0x0

    #@19
    aput-object v3, v2, v4

    #@1b
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    goto :goto_0
.end method

.method public static hasDesignator(Ljava/lang/CharSequence;C)Z
    .locals 6
    .param p0, "inFormat"    # Ljava/lang/CharSequence;
    .param p1, "designator"    # C

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 381
    if-nez p0, :cond_0

    #@3
    return v5

    #@4
    .line 383
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@7
    move-result v3

    #@8
    .line 388
    .local v3, "length":I
    const/4 v2, 0x0

    #@9
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_3

    #@b
    .line 389
    const/4 v1, 0x1

    #@c
    .line 390
    .local v1, "count":I
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    #@f
    move-result v0

    #@10
    .line 392
    .local v0, "c":I
    const/16 v4, 0x27

    #@12
    if-ne v0, v4, :cond_2

    #@14
    .line 393
    invoke-static {p0, v2, v3}, Landroid/text/format/DateFormat;->skipQuotedText(Ljava/lang/CharSequence;II)I

    #@17
    move-result v1

    #@18
    .line 388
    :cond_1
    add-int/2addr v2, v1

    #@19
    goto :goto_0

    #@1a
    .line 394
    :cond_2
    if-ne v0, p1, :cond_1

    #@1c
    .line 395
    const/4 v4, 0x1

    #@1d
    return v4

    #@1e
    .line 399
    .end local v0    # "c":I
    .end local v1    # "count":I
    :cond_3
    return v5
.end method

.method public static hasSeconds(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "inFormat"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 371
    const/16 v0, 0x73

    #@2
    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->hasDesignator(Ljava/lang/CharSequence;C)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static is24HourFormat(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 168
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static is24HourFormat(Landroid/content/Context;I)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 180
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v5

    #@4
    .line 181
    const-string/jumbo v6, "time_12_24"

    #@7
    .line 180
    invoke-static {v5, v6, p1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@a
    move-result-object v4

    #@b
    .line 183
    .local v4, "value":Ljava/lang/String;
    if-nez v4, :cond_3

    #@d
    .line 184
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@10
    move-result-object v5

    #@11
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@14
    move-result-object v5

    #@15
    iget-object v0, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@17
    .line 186
    .local v0, "locale":Ljava/util/Locale;
    sget-object v6, Landroid/text/format/DateFormat;->sLocaleLock:Ljava/lang/Object;

    #@19
    monitor-enter v6

    #@1a
    .line 187
    :try_start_0
    sget-object v5, Landroid/text/format/DateFormat;->sIs24HourLocale:Ljava/util/Locale;

    #@1c
    if-eqz v5, :cond_0

    #@1e
    sget-object v5, Landroid/text/format/DateFormat;->sIs24HourLocale:Ljava/util/Locale;

    #@20
    invoke-virtual {v5, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v5

    #@24
    if-eqz v5, :cond_0

    #@26
    .line 188
    sget-boolean v5, Landroid/text/format/DateFormat;->sIs24Hour:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    monitor-exit v6

    #@29
    return v5

    #@2a
    :cond_0
    monitor-exit v6

    #@2b
    .line 193
    const/4 v5, 0x1

    #@2c
    invoke-static {v5, v0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    #@2f
    move-result-object v1

    #@30
    .line 195
    .local v1, "natural":Ljava/text/DateFormat;
    instance-of v5, v1, Ljava/text/SimpleDateFormat;

    #@32
    if-eqz v5, :cond_2

    #@34
    move-object v3, v1

    #@35
    .line 196
    check-cast v3, Ljava/text/SimpleDateFormat;

    #@37
    .line 197
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v3}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    .line 199
    .local v2, "pattern":Ljava/lang/String;
    const/16 v5, 0x48

    #@3d
    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    #@40
    move-result v5

    #@41
    if-ltz v5, :cond_1

    #@43
    .line 200
    const-string/jumbo v4, "24"

    #@46
    .line 208
    .end local v2    # "pattern":Ljava/lang/String;
    .end local v3    # "sdf":Ljava/text/SimpleDateFormat;
    :goto_0
    sget-object v6, Landroid/text/format/DateFormat;->sLocaleLock:Ljava/lang/Object;

    #@48
    monitor-enter v6

    #@49
    .line 209
    :try_start_1
    sput-object v0, Landroid/text/format/DateFormat;->sIs24HourLocale:Ljava/util/Locale;

    #@4b
    .line 210
    const-string/jumbo v5, "24"

    #@4e
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@51
    move-result v5

    #@52
    sput-boolean v5, Landroid/text/format/DateFormat;->sIs24Hour:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@54
    monitor-exit v6

    #@55
    .line 213
    sget-boolean v5, Landroid/text/format/DateFormat;->sIs24Hour:Z

    #@57
    return v5

    #@58
    .line 186
    .end local v1    # "natural":Ljava/text/DateFormat;
    :catchall_0
    move-exception v5

    #@59
    monitor-exit v6

    #@5a
    throw v5

    #@5b
    .line 202
    .restart local v1    # "natural":Ljava/text/DateFormat;
    .restart local v2    # "pattern":Ljava/lang/String;
    .restart local v3    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_1
    const-string/jumbo v4, "12"

    #@5e
    goto :goto_0

    #@5f
    .line 205
    .end local v2    # "pattern":Ljava/lang/String;
    .end local v3    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_2
    const-string/jumbo v4, "12"

    #@62
    goto :goto_0

    #@63
    .line 208
    :catchall_1
    move-exception v5

    #@64
    monitor-exit v6

    #@65
    throw v5

    #@66
    .line 216
    .end local v0    # "locale":Ljava/util/Locale;
    .end local v1    # "natural":Ljava/text/DateFormat;
    :cond_3
    const-string/jumbo v5, "24"

    #@69
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6c
    move-result v5

    #@6d
    return v5
.end method

.method private static skipQuotedText(Ljava/lang/CharSequence;II)I
    .locals 4
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "i"    # I
    .param p2, "len"    # I

    #@0
    .prologue
    const/16 v3, 0x27

    #@2
    .line 403
    add-int/lit8 v2, p1, 0x1

    #@4
    if-ge v2, p2, :cond_0

    #@6
    add-int/lit8 v2, p1, 0x1

    #@8
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    #@b
    move-result v2

    #@c
    if-ne v2, v3, :cond_0

    #@e
    .line 404
    const/4 v2, 0x2

    #@f
    return v2

    #@10
    .line 407
    :cond_0
    const/4 v1, 0x1

    #@11
    .line 409
    .local v1, "count":I
    add-int/lit8 p1, p1, 0x1

    #@13
    .line 411
    :goto_0
    if-ge p1, p2, :cond_2

    #@15
    .line 412
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    #@18
    move-result v0

    #@19
    .line 414
    .local v0, "c":C
    if-ne v0, v3, :cond_1

    #@1b
    .line 415
    add-int/lit8 v1, v1, 0x1

    #@1d
    .line 417
    add-int/lit8 v2, p1, 0x1

    #@1f
    if-ge v2, p2, :cond_2

    #@21
    add-int/lit8 v2, p1, 0x1

    #@23
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    #@26
    move-result v2

    #@27
    if-ne v2, v3, :cond_2

    #@29
    .line 418
    add-int/lit8 p1, p1, 0x1

    #@2b
    .line 417
    goto :goto_0

    #@2c
    .line 423
    :cond_1
    add-int/lit8 p1, p1, 0x1

    #@2e
    .line 424
    add-int/lit8 v1, v1, 0x1

    #@30
    goto :goto_0

    #@31
    .line 428
    .end local v0    # "c":C
    :cond_2
    return v1
.end method

.method private static zeroPad(II)Ljava/lang/String;
    .locals 5
    .param p0, "inValue"    # I
    .param p1, "inMinDigits"    # I

    #@0
    .prologue
    .line 632
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "%0"

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    const-string/jumbo v2, "d"

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    const/4 v2, 0x1

    #@20
    new-array v2, v2, [Ljava/lang/Object;

    #@22
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@25
    move-result-object v3

    #@26
    const/4 v4, 0x0

    #@27
    aput-object v3, v2, v4

    #@29
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    return-object v0
.end method
