.class public Landroid/text/format/DateFormat;
.super Ljava/lang/Object;
.source "DateFormat.java"


# static fields
.field public static final greylist AM_PM:C = 'a'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist CAPITAL_AM_PM:C = 'A'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist DATE:C = 'd'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist DAY:C = 'E'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final blacklist DISALLOW_DUPLICATE_FIELD_IN_SKELETON:J = 0xa258efeL

.field public static final greylist HOUR:C = 'h'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist HOUR_OF_DAY:C = 'k'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist MINUTE:C = 'm'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist MONTH:C = 'M'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist QUOTE:C = '\''
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist SECONDS:C = 's'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist STANDALONE_MONTH:C = 'L'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist TIME_ZONE:C = 'z'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist YEAR:C = 'y'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static greylist-max-o sIs24Hour:Z

.field private static greylist-max-o sIs24HourLocale:Ljava/util/Locale;

.field private static final greylist-max-o sLocaleLock:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 163
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/format/DateFormat;->sLocaleLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o appendQuotedText(Landroid/text/SpannableStringBuilder;I)I
    .registers 7
    .param p0, "formatString"    # Landroid/text/SpannableStringBuilder;
    .param p1, "index"    # I

    .line 668
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 669
    .local v0, "length":I
    add-int/lit8 v1, p1, 0x1

    const/16 v2, 0x27

    if-ge v1, v0, :cond_19

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_19

    .line 670
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 671
    const/4 v1, 0x1

    return v1

    .line 674
    :cond_19
    const/4 v1, 0x0

    .line 677
    .local v1, "count":I
    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, p1, v3}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 678
    add-int/lit8 v0, v0, -0x1

    .line 680
    :goto_21
    if-ge p1, v0, :cond_4c

    .line 681
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    .line 683
    .local v3, "c":C
    if-ne v3, v2, :cond_47

    .line 685
    add-int/lit8 v4, p1, 0x1

    if-ge v4, v0, :cond_41

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v2, :cond_41

    .line 687
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {p0, p1, v4}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 688
    add-int/lit8 v0, v0, -0x1

    .line 689
    add-int/lit8 v1, v1, 0x1

    .line 690
    add-int/lit8 p1, p1, 0x1

    goto :goto_4b

    .line 693
    :cond_41
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 694
    goto :goto_4c

    .line 697
    :cond_47
    add-int/lit8 p1, p1, 0x1

    .line 698
    add-int/lit8 v1, v1, 0x1

    .line 700
    .end local v3    # "c":C
    :goto_4b
    goto :goto_21

    .line 702
    :cond_4c
    :goto_4c
    return v1
.end method

.method public static whitelist format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;
    .registers 4
    .param p0, "inFormat"    # Ljava/lang/CharSequence;
    .param p1, "inTimeInMillis"    # J

    .line 427
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;
    .registers 11
    .param p0, "inFormat"    # Ljava/lang/CharSequence;
    .param p1, "inDate"    # Ljava/util/Calendar;

    .line 497
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 500
    .local v0, "s":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getIcuDateFormatSymbols(Ljava/util/Locale;)Landroid/icu/text/DateFormatSymbols;

    move-result-object v1

    .line 501
    .local v1, "dfs":Landroid/icu/text/DateFormatSymbols;
    invoke-virtual {v1}, Landroid/icu/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v2

    .line 503
    .local v2, "amPm":[Ljava/lang/String;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 505
    .local v3, "len":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_16
    if-ge v4, v3, :cond_bf

    .line 506
    const/4 v5, 0x1

    .line 507
    .local v5, "count":I
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v6

    .line 509
    .local v6, "c":I
    const/16 v7, 0x27

    if-ne v6, v7, :cond_2b

    .line 510
    invoke-static {v0, v4}, Landroid/text/format/DateFormat;->appendQuotedText(Landroid/text/SpannableStringBuilder;I)I

    move-result v5

    .line 511
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 512
    goto/16 :goto_bc

    .line 515
    :cond_2b
    :goto_2b
    add-int v7, v4, v5

    if-ge v7, v3, :cond_3a

    add-int v7, v4, v5

    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v7

    if-ne v7, v6, :cond_3a

    .line 516
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    .line 520
    :cond_3a
    sparse-switch v6, :sswitch_data_ce

    .line 573
    const/4 v7, 0x0

    .local v7, "replacement":Ljava/lang/String;
    goto/16 :goto_ad

    .line 570
    .end local v7    # "replacement":Ljava/lang/String;
    :sswitch_40
    invoke-static {p1, v5}, Landroid/text/format/DateFormat;->getTimeZoneString(Ljava/util/Calendar;I)Ljava/lang/String;

    move-result-object v7

    .line 571
    .restart local v7    # "replacement":Ljava/lang/String;
    goto :goto_ad

    .line 567
    .end local v7    # "replacement":Ljava/lang/String;
    :sswitch_45
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7, v5}, Landroid/text/format/DateFormat;->getYearString(II)Ljava/lang/String;

    move-result-object v7

    .line 568
    .restart local v7    # "replacement":Ljava/lang/String;
    goto :goto_ad

    .line 564
    .end local v7    # "replacement":Ljava/lang/String;
    :sswitch_4f
    const/16 v7, 0xd

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7, v5}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v7

    .line 565
    .restart local v7    # "replacement":Ljava/lang/String;
    goto :goto_ad

    .line 561
    .end local v7    # "replacement":Ljava/lang/String;
    :sswitch_5a
    const/16 v7, 0xc

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7, v5}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v7

    .line 562
    .restart local v7    # "replacement":Ljava/lang/String;
    goto :goto_ad

    .line 526
    .end local v7    # "replacement":Ljava/lang/String;
    :sswitch_65
    const/4 v7, 0x5

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7, v5}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v7

    .line 527
    .restart local v7    # "replacement":Ljava/lang/String;
    goto :goto_ad

    .line 558
    .end local v7    # "replacement":Ljava/lang/String;
    :sswitch_6f
    const/4 v7, 0x2

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v1, v7, v5, v6}, Landroid/text/format/DateFormat;->getMonthString(Landroid/icu/text/DateFormatSymbols;III)Ljava/lang/String;

    move-result-object v7

    .line 559
    .restart local v7    # "replacement":Ljava/lang/String;
    goto :goto_ad

    .line 536
    .end local v7    # "replacement":Ljava/lang/String;
    :sswitch_79
    const/16 v7, 0xa

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 537
    .local v7, "hour":I
    const/16 v8, 0x68

    if-ne v6, v8, :cond_87

    if-nez v7, :cond_87

    .line 538
    const/16 v7, 0xc

    .line 540
    :cond_87
    invoke-static {v7, v5}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v7

    .line 542
    .local v7, "replacement":Ljava/lang/String;
    goto :goto_ad

    .line 546
    .end local v7    # "replacement":Ljava/lang/String;
    :sswitch_8c
    const/16 v7, 0xb

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 553
    .local v7, "hour":I
    invoke-static {v7, v5}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v7

    .line 555
    .local v7, "replacement":Ljava/lang/String;
    goto :goto_ad

    .line 530
    .end local v7    # "replacement":Ljava/lang/String;
    :sswitch_97
    nop

    .line 531
    const/4 v7, 0x7

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 530
    invoke-static {v1, v7, v5, v6}, Landroid/text/format/DateFormat;->getDayOfWeekString(Landroid/icu/text/DateFormatSymbols;III)Ljava/lang/String;

    move-result-object v7

    .line 532
    .restart local v7    # "replacement":Ljava/lang/String;
    goto :goto_ad

    .line 523
    .end local v7    # "replacement":Ljava/lang/String;
    :sswitch_a2
    const/16 v7, 0x9

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x0

    aget-object v7, v2, v7

    .line 524
    .restart local v7    # "replacement":Ljava/lang/String;
    nop

    .line 577
    :goto_ad
    if-eqz v7, :cond_bc

    .line 578
    add-int v8, v4, v5

    invoke-virtual {v0, v4, v8, v7}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 579
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    .line 580
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 505
    .end local v6    # "c":I
    .end local v7    # "replacement":Ljava/lang/String;
    :cond_bc
    :goto_bc
    add-int/2addr v4, v5

    goto/16 :goto_16

    .line 584
    .end local v4    # "i":I
    .end local v5    # "count":I
    :cond_bf
    instance-of v4, p0, Landroid/text/Spanned;

    if-eqz v4, :cond_c9

    .line 585
    new-instance v4, Landroid/text/SpannedString;

    invoke-direct {v4, v0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    return-object v4

    .line 587
    :cond_c9
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :sswitch_data_ce
    .sparse-switch
        0x41 -> :sswitch_a2
        0x45 -> :sswitch_97
        0x48 -> :sswitch_8c
        0x4b -> :sswitch_79
        0x4c -> :sswitch_6f
        0x4d -> :sswitch_6f
        0x61 -> :sswitch_a2
        0x63 -> :sswitch_97
        0x64 -> :sswitch_65
        0x68 -> :sswitch_79
        0x6b -> :sswitch_8c
        0x6d -> :sswitch_5a
        0x73 -> :sswitch_4f
        0x79 -> :sswitch_45
        0x7a -> :sswitch_40
    .end sparse-switch
.end method

.method public static whitelist format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;
    .registers 4
    .param p0, "inFormat"    # Ljava/lang/CharSequence;
    .param p1, "inDate"    # Ljava/util/Date;

    .line 438
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 439
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 440
    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method private static greylist-max-o formatZoneOffset(II)Ljava/lang/String;
    .registers 7
    .param p0, "offset"    # I
    .param p1, "count"    # I

    .line 633
    div-int/lit16 p0, p0, 0x3e8

    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 636
    .local v0, "tb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    if-gez p0, :cond_11

    .line 637
    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    neg-int p0, p0

    goto :goto_16

    .line 640
    :cond_11
    const-string v2, "+"

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    :goto_16
    div-int/lit16 v1, p0, 0xe10

    .line 644
    .local v1, "hours":I
    rem-int/lit16 v2, p0, 0xe10

    div-int/lit8 v2, v2, 0x3c

    .line 646
    .local v2, "minutes":I
    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static whitelist getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "skeleton"    # Ljava/lang/String;

    .line 269
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    .line 270
    .local v0, "uLocale":Landroid/icu/util/ULocale;
    invoke-static {v0}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateTimePatternGenerator;

    move-result-object v1

    .line 271
    .local v1, "dtpg":Landroid/icu/text/DateTimePatternGenerator;
    const-wide/32 v2, 0xa258efe

    invoke-static {v2, v3}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 273
    .local v2, "allowDuplicateFields":Z
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v3

    .line 275
    .local v3, "pattern":Ljava/lang/String;
    invoke-static {v0, v3}, Landroid/text/format/DateFormat;->getCompatibleEnglishPattern(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static blacklist getCompatibleEnglishPattern(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "pattern"    # Ljava/lang/String;

    .line 726
    if-eqz p1, :cond_2f

    if-eqz p0, :cond_2f

    const-string v0, "en"

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_2f

    .line 730
    :cond_11
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 731
    .local v0, "region":Ljava/lang/String;
    if-eqz v0, :cond_26

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "US"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 732
    return-object p1

    .line 735
    :cond_26
    const/16 v1, 0x202f

    const/16 v2, 0x20

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 727
    .end local v0    # "region":Ljava/lang/String;
    :cond_2f
    :goto_2f
    return-object p1
.end method

.method public static whitelist getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 324
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 325
    .local v0, "locale":Ljava/util/Locale;
    const/4 v1, 0x3

    invoke-static {v1, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist getDateFormatOrder(Landroid/content/Context;)[C
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 360
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Ljava/lang/String;)[C

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getDateFormatOrder(Ljava/lang/String;)[C
    .registers 12
    .param p0, "pattern"    # Ljava/lang/String;

    .line 367
    const/4 v0, 0x3

    new-array v0, v0, [C

    .line 368
    .local v0, "result":[C
    const/4 v1, 0x0

    .line 369
    .local v1, "resultIndex":I
    const/4 v2, 0x0

    .line 370
    .local v2, "sawDay":Z
    const/4 v3, 0x0

    .line 371
    .local v3, "sawMonth":Z
    const/4 v4, 0x0

    .line 373
    .local v4, "sawYear":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_c3

    .line 374
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 375
    .local v6, "ch":C
    const/16 v7, 0x4c

    const/16 v8, 0x79

    const/16 v9, 0x4d

    const/16 v10, 0x64

    if-eq v6, v10, :cond_9a

    if-eq v6, v7, :cond_9a

    if-eq v6, v9, :cond_9a

    if-ne v6, v8, :cond_24

    goto/16 :goto_9a

    .line 386
    :cond_24
    const/16 v7, 0x47

    if-ne v6, v7, :cond_2a

    goto/16 :goto_bf

    .line 388
    :cond_2a
    const/16 v7, 0x61

    if-lt v6, v7, :cond_32

    const/16 v7, 0x7a

    if-le v6, v7, :cond_3b

    :cond_32
    const/16 v7, 0x41

    if-lt v6, v7, :cond_5e

    const/16 v7, 0x5a

    if-le v6, v7, :cond_3b

    goto :goto_5e

    .line 389
    :cond_3b
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad pattern character \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 391
    :cond_5e
    :goto_5e
    const/16 v7, 0x27

    if-ne v6, v7, :cond_bf

    .line 392
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v5, v8, :cond_75

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v7, :cond_75

    .line 393
    add-int/lit8 v5, v5, 0x1

    goto :goto_bf

    .line 395
    :cond_75
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 396
    const/4 v7, -0x1

    if-eq v5, v7, :cond_81

    .line 399
    add-int/lit8 v5, v5, 0x1

    goto :goto_bf

    .line 397
    :cond_81
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad quoting in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 376
    :cond_9a
    :goto_9a
    if-ne v6, v10, :cond_a6

    if-nez v2, :cond_a6

    .line 377
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "resultIndex":I
    .local v7, "resultIndex":I
    aput-char v10, v0, v1

    .line 378
    const/4 v1, 0x1

    move v2, v1

    move v1, v7

    .end local v2    # "sawDay":Z
    .local v1, "sawDay":Z
    goto :goto_bf

    .line 379
    .end local v7    # "resultIndex":I
    .local v1, "resultIndex":I
    .restart local v2    # "sawDay":Z
    :cond_a6
    if-eq v6, v7, :cond_aa

    if-ne v6, v9, :cond_b4

    :cond_aa
    if-nez v3, :cond_b4

    .line 380
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "resultIndex":I
    .restart local v7    # "resultIndex":I
    aput-char v9, v0, v1

    .line 381
    const/4 v1, 0x1

    move v3, v1

    move v1, v7

    .end local v3    # "sawMonth":Z
    .local v1, "sawMonth":Z
    goto :goto_bf

    .line 382
    .end local v7    # "resultIndex":I
    .local v1, "resultIndex":I
    .restart local v3    # "sawMonth":Z
    :cond_b4
    if-ne v6, v8, :cond_bf

    if-nez v4, :cond_bf

    .line 383
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "resultIndex":I
    .restart local v7    # "resultIndex":I
    aput-char v8, v0, v1

    .line 384
    const/4 v1, 0x1

    move v4, v1

    move v1, v7

    .line 373
    .end local v6    # "ch":C
    .end local v7    # "resultIndex":I
    .restart local v1    # "resultIndex":I
    :cond_bf
    :goto_bf
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_8

    .line 405
    .end local v5    # "i":I
    :cond_c3
    return-object v0
.end method

.method private static greylist-max-o getDateFormatString(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 409
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 410
    .local v0, "locale":Ljava/util/Locale;
    const/4 v1, 0x3

    invoke-static {v1, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    .line 412
    .local v1, "df":Ljava/text/DateFormat;
    instance-of v2, v1, Ljava/text/SimpleDateFormat;

    if-eqz v2, :cond_1b

    .line 413
    move-object v2, v1

    check-cast v2, Ljava/text/SimpleDateFormat;

    invoke-virtual {v2}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 416
    :cond_1b
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "!(df instanceof SimpleDateFormat)"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method private static blacklist getDayOfWeekString(Landroid/icu/text/DateFormatSymbols;III)Ljava/lang/String;
    .registers 8
    .param p0, "dfs"    # Landroid/icu/text/DateFormatSymbols;
    .param p1, "day"    # I
    .param p2, "count"    # I
    .param p3, "kind"    # I

    .line 592
    const/16 v0, 0x63

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p3, v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    .line 593
    .local v0, "standalone":Z
    :goto_9
    if-eqz v0, :cond_c

    goto :goto_d

    :cond_c
    move v1, v2

    .line 595
    .local v1, "context":I
    :goto_d
    const/4 v2, 0x5

    if-ne p2, v2, :cond_12

    .line 596
    const/4 v2, 0x2

    .local v2, "width":I
    goto :goto_18

    .line 597
    .end local v2    # "width":I
    :cond_12
    const/4 v2, 0x4

    if-ne p2, v2, :cond_17

    .line 598
    const/4 v2, 0x1

    .restart local v2    # "width":I
    goto :goto_18

    .line 600
    .end local v2    # "width":I
    :cond_17
    const/4 v2, 0x0

    .line 602
    .restart local v2    # "width":I
    :goto_18
    invoke-virtual {p0, v1, v2}, Landroid/icu/text/DateFormatSymbols;->getWeekdays(II)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p1

    return-object v3
.end method

.method public static blacklist getIcuDateFormatSymbols(Ljava/util/Locale;)Landroid/icu/text/DateFormatSymbols;
    .registers 3
    .param p0, "locale"    # Ljava/util/Locale;

    .line 718
    new-instance v0, Landroid/icu/text/DateFormatSymbols;

    const-class v1, Landroid/icu/util/GregorianCalendar;

    invoke-direct {v0, v1, p0}, Landroid/icu/text/DateFormatSymbols;-><init>(Ljava/lang/Class;Ljava/util/Locale;)V

    return-object v0
.end method

.method public static whitelist getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 335
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 336
    .local v0, "locale":Ljava/util/Locale;
    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 346
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 347
    .local v0, "locale":Ljava/util/Locale;
    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist getMonthString(Landroid/icu/text/DateFormatSymbols;III)Ljava/lang/String;
    .registers 9
    .param p0, "dfs"    # Landroid/icu/text/DateFormatSymbols;
    .param p1, "month"    # I
    .param p2, "count"    # I
    .param p3, "kind"    # I

    .line 606
    const/16 v0, 0x4c

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p3, v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    .line 607
    .local v0, "standalone":Z
    :goto_9
    if-eqz v0, :cond_d

    move v3, v2

    goto :goto_e

    :cond_d
    move v3, v1

    .line 608
    .local v3, "monthContext":I
    :goto_e
    const/4 v4, 0x5

    if-ne p2, v4, :cond_19

    .line 609
    const/4 v1, 0x2

    invoke-virtual {p0, v3, v1}, Landroid/icu/text/DateFormatSymbols;->getMonths(II)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    return-object v1

    .line 610
    :cond_19
    const/4 v4, 0x4

    if-ne p2, v4, :cond_23

    .line 611
    invoke-virtual {p0, v3, v2}, Landroid/icu/text/DateFormatSymbols;->getMonths(II)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    return-object v1

    .line 612
    :cond_23
    const/4 v2, 0x3

    if-ne p2, v2, :cond_2d

    .line 613
    invoke-virtual {p0, v3, v1}, Landroid/icu/text/DateFormatSymbols;->getMonths(II)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    return-object v1

    .line 616
    :cond_2d
    add-int/lit8 v1, p1, 0x1

    invoke-static {v1, p2}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 285
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 286
    .local v0, "locale":Ljava/util/Locale;
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormatString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v1
.end method

.method public static greylist getTimeFormatString(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 297
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->getTimeFormatString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist getTimeFormatString(Landroid/content/Context;I)Ljava/lang/String;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userHandle"    # I

    .line 309
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    .line 310
    .local v0, "uLocale":Landroid/icu/util/ULocale;
    invoke-static {v0}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateTimePatternGenerator;

    move-result-object v1

    .line 311
    .local v1, "dtpg":Landroid/icu/text/DateTimePatternGenerator;
    invoke-static {p0, p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_1f

    const-string v2, "Hm"

    invoke-virtual {v1, v2}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_25

    .line 312
    :cond_1f
    const-string v2, "hm"

    invoke-virtual {v1, v2}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_25
    nop

    .line 313
    .local v2, "pattern":Ljava/lang/String;
    invoke-static {v0, v2}, Landroid/text/format/DateFormat;->getCompatibleEnglishPattern(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static greylist-max-o getTimeZoneString(Ljava/util/Calendar;I)Ljava/lang/String;
    .registers 5
    .param p0, "inDate"    # Ljava/util/Calendar;
    .param p1, "count"    # I

    .line 621
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 622
    .local v0, "tz":Ljava/util/TimeZone;
    const/4 v1, 0x2

    const/16 v2, 0x10

    if-ge p1, v1, :cond_19

    .line 623
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 624
    const/16 v2, 0xf

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 623
    invoke-static {v1, p1}, Landroid/text/format/DateFormat;->formatZoneOffset(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 627
    :cond_19
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    const/4 v1, 0x1

    goto :goto_23

    :cond_22
    move v1, v2

    .line 628
    .local v1, "dst":Z
    :goto_23
    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static greylist-max-o getYearString(II)Ljava/lang/String;
    .registers 5
    .param p0, "year"    # I
    .param p1, "count"    # I

    .line 652
    const/4 v0, 0x2

    if-gt p1, v0, :cond_a

    rem-int/lit8 v1, p0, 0x64

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    .line 653
    :cond_a
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 652
    :goto_1c
    return-object v0
.end method

.method public static greylist-max-r hasDesignator(Ljava/lang/CharSequence;C)Z
    .registers 9
    .param p0, "inFormat"    # Ljava/lang/CharSequence;
    .param p1, "designator"    # C

    .line 470
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 472
    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 474
    .local v1, "length":I
    const/4 v2, 0x0

    .line 475
    .local v2, "insideQuote":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    if-ge v3, v1, :cond_23

    .line 476
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 477
    .local v4, "c":C
    const/16 v5, 0x27

    const/4 v6, 0x1

    if-ne v4, v5, :cond_1b

    .line 478
    if-nez v2, :cond_18

    goto :goto_19

    :cond_18
    move v6, v0

    :goto_19
    move v2, v6

    .end local v2    # "insideQuote":Z
    .local v6, "insideQuote":Z
    goto :goto_20

    .line 479
    .end local v6    # "insideQuote":Z
    .restart local v2    # "insideQuote":Z
    :cond_1b
    if-nez v2, :cond_20

    .line 480
    if-ne v4, p1, :cond_20

    .line 481
    return v6

    .line 475
    .end local v4    # "c":C
    :cond_20
    :goto_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 486
    .end local v3    # "i":I
    :cond_23
    return v0
.end method

.method public static greylist hasSeconds(Ljava/lang/CharSequence;)Z
    .registers 2
    .param p0, "inFormat"    # Ljava/lang/CharSequence;

    .line 456
    const/16 v0, 0x73

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->hasDesignator(Ljava/lang/CharSequence;C)Z

    move-result v0

    return v0
.end method

.method public static whitelist is24HourFormat(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 184
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static greylist is24HourFormat(Landroid/content/Context;I)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userHandle"    # I

    .line 198
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "time_12_24"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_14

    .line 201
    const-string v1, "24"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 204
    :cond_14
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourLocale(Ljava/util/Locale;)Z

    move-result v1

    return v1
.end method

.method public static greylist-max-o is24HourLocale(Ljava/util/Locale;)Z
    .registers 5
    .param p0, "locale"    # Ljava/util/Locale;

    .line 215
    sget-object v0, Landroid/text/format/DateFormat;->sLocaleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 216
    :try_start_3
    sget-object v1, Landroid/text/format/DateFormat;->sIs24HourLocale:Ljava/util/Locale;

    if-eqz v1, :cond_13

    sget-object v1, Landroid/text/format/DateFormat;->sIs24HourLocale:Ljava/util/Locale;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 217
    sget-boolean v1, Landroid/text/format/DateFormat;->sIs24Hour:Z

    monitor-exit v0

    return v1

    .line 219
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_3b

    .line 221
    nop

    .line 222
    const/4 v0, 0x1

    invoke-static {v0, p0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    .line 225
    .local v1, "natural":Ljava/text/DateFormat;
    instance-of v0, v1, Ljava/text/SimpleDateFormat;

    if-eqz v0, :cond_2d

    .line 226
    move-object v0, v1

    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 227
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v2

    .line 228
    .local v2, "pattern":Ljava/lang/String;
    const/16 v3, 0x48

    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->hasDesignator(Ljava/lang/CharSequence;C)Z

    move-result v0

    .line 229
    .end local v2    # "pattern":Ljava/lang/String;
    .local v0, "is24Hour":Z
    move v2, v0

    goto :goto_2f

    .line 230
    .end local v0    # "is24Hour":Z
    :cond_2d
    const/4 v0, 0x0

    move v2, v0

    .line 233
    .local v2, "is24Hour":Z
    :goto_2f
    sget-object v3, Landroid/text/format/DateFormat;->sLocaleLock:Ljava/lang/Object;

    monitor-enter v3

    .line 234
    :try_start_32
    sput-object p0, Landroid/text/format/DateFormat;->sIs24HourLocale:Ljava/util/Locale;

    .line 235
    sput-boolean v2, Landroid/text/format/DateFormat;->sIs24Hour:Z

    .line 236
    monitor-exit v3

    .line 238
    return v2

    .line 236
    :catchall_38
    move-exception v0

    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_32 .. :try_end_3a} :catchall_38

    throw v0

    .line 219
    .end local v1    # "natural":Ljava/text/DateFormat;
    .end local v2    # "is24Hour":Z
    :catchall_3b
    move-exception v1

    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method private static greylist-max-o zeroPad(II)Ljava/lang/String;
    .registers 5
    .param p0, "inValue"    # I
    .param p1, "inMinDigits"    # I

    .line 706
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
