.class public Ljava/text/SimpleDateFormat;
.super Ljava/text/DateFormat;
.source "SimpleDateFormat.java"


# static fields
.field static final PATTERN_CHARS:Ljava/lang/String; = "GyMdkHmsSEDFwWahKzZLc"

.field private static final RFC_822_TIMEZONE_FIELD:I = 0x12

.field private static final STAND_ALONE_DAY_OF_WEEK_FIELD:I = 0x14

.field private static final STAND_ALONE_MONTH_FIELD:I = 0x13

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0x4243c9da93943590L


# instance fields
.field private transient creationYear:I

.field private defaultCenturyStart:Ljava/util/Date;

.field private formatData:Ljava/text/DateFormatSymbols;

.field private pattern:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 1347
    const/4 v0, 0x4

    #@1
    new-array v0, v0, [Ljava/io/ObjectStreamField;

    #@3
    .line 1348
    new-instance v1, Ljava/io/ObjectStreamField;

    #@5
    const-string/jumbo v2, "defaultCenturyStart"

    #@8
    const-class v3, Ljava/util/Date;

    #@a
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@d
    const/4 v2, 0x0

    #@e
    aput-object v1, v0, v2

    #@10
    .line 1349
    new-instance v1, Ljava/io/ObjectStreamField;

    #@12
    const-string/jumbo v2, "formatData"

    #@15
    const-class v3, Ljava/text/DateFormatSymbols;

    #@17
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@1a
    const/4 v2, 0x1

    #@1b
    aput-object v1, v0, v2

    #@1d
    .line 1350
    new-instance v1, Ljava/io/ObjectStreamField;

    #@1f
    const-string/jumbo v2, "pattern"

    #@22
    const-class v3, Ljava/lang/String;

    #@24
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@27
    const/4 v2, 0x2

    #@28
    aput-object v1, v0, v2

    #@2a
    .line 1351
    new-instance v1, Ljava/io/ObjectStreamField;

    #@2c
    const-string/jumbo v2, "serialVersionOnStream"

    #@2f
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@31
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@34
    const/4 v2, 0x3

    #@35
    aput-object v1, v0, v2

    #@37
    .line 1347
    sput-object v0, Ljava/text/SimpleDateFormat;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    #@39
    .line 206
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 238
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/util/Locale;)V

    #@7
    .line 239
    invoke-static {}, Ljava/text/SimpleDateFormat;->defaultPattern()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    #@d
    .line 240
    new-instance v0, Ljava/text/DateFormatSymbols;

    #@f
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@12
    move-result-object v1

    #@13
    invoke-direct {v0, v1}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    #@16
    iput-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@18
    .line 237
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 258
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@7
    .line 257
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V
    .locals 1
    .param p1, "template"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/text/DateFormatSymbols;

    #@0
    .prologue
    .line 343
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/util/Locale;)V

    #@7
    .line 344
    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;->validatePattern(Ljava/lang/String;)V

    #@a
    .line 345
    iput-object p1, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    #@c
    .line 346
    invoke-virtual {p2}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Ljava/text/DateFormatSymbols;

    #@12
    iput-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@14
    .line 342
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 1
    .param p1, "template"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 364
    invoke-direct {p0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/util/Locale;)V

    #@3
    .line 365
    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;->validatePattern(Ljava/lang/String;)V

    #@6
    .line 366
    iput-object p1, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    #@8
    .line 367
    new-instance v0, Ljava/text/DateFormatSymbols;

    #@a
    invoke-direct {v0, p2}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    #@d
    iput-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@f
    .line 363
    return-void
.end method

.method private constructor <init>(Ljava/util/Locale;)V
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 370
    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    #@4
    .line 371
    invoke-static {p1}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    #@a
    .line 372
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    #@c
    invoke-virtual {v0, v2}, Ljava/text/NumberFormat;->setParseIntegerOnly(Z)V

    #@f
    .line 373
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    #@11
    const/4 v1, 0x0

    #@12
    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    #@15
    .line 374
    new-instance v0, Ljava/util/GregorianCalendar;

    #@17
    invoke-direct {v0, p1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/Locale;)V

    #@1a
    iput-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@1c
    .line 375
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@1e
    const/16 v1, -0x50

    #@20
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    #@23
    .line 376
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@25
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    #@28
    move-result v0

    #@29
    iput v0, p0, Ljava/text/SimpleDateFormat;->creationYear:I

    #@2b
    .line 377
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@2d
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    #@30
    move-result-object v0

    #@31
    iput-object v0, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    #@33
    .line 370
    return-void
.end method

.method private append(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;CI)V
    .locals 9
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "position"    # Ljava/text/FieldPosition;
    .param p4, "format"    # C
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/text/FieldPosition;",
            "Ljava/util/List",
            "<",
            "Ljava/text/FieldPosition;",
            ">;CI)V"
        }
    .end annotation

    #@0
    .prologue
    .line 578
    .local p3, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/text/FieldPosition;>;"
    const/4 v2, -0x1

    #@1
    .line 579
    .local v2, "field":I
    const-string/jumbo v6, "GyMdkHmsSEDFwWahKzZLc"

    #@4
    invoke-virtual {v6, p4}, Ljava/lang/String;->indexOf(I)I

    #@7
    move-result v4

    #@8
    .line 580
    .local v4, "index":I
    const/4 v6, -0x1

    #@9
    if-ne v4, v6, :cond_0

    #@b
    .line 581
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@d
    new-instance v7, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v8, "Unknown pattern character \'"

    #@15
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v7

    #@19
    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v7

    #@1d
    const-string/jumbo v8, "\'"

    #@20
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v7

    #@24
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v7

    #@28
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v6

    #@2c
    .line 584
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    #@2f
    move-result v0

    #@30
    .line 585
    .local v0, "beginPosition":I
    const/4 v1, 0x0

    #@31
    .line 586
    .local v1, "dateFormatField":Ljava/text/DateFormat$Field;
    packed-switch v4, :pswitch_data_0

    #@34
    .line 684
    .end local v1    # "dateFormatField":Ljava/text/DateFormat$Field;
    :goto_0
    const/4 v6, -0x1

    #@35
    if-eq v2, v6, :cond_1

    #@37
    .line 685
    iget-object v6, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@39
    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    #@3c
    move-result v6

    #@3d
    invoke-direct {p0, p1, p5, v6}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    #@40
    .line 688
    :cond_1
    if-eqz p3, :cond_6

    #@42
    .line 689
    new-instance p2, Ljava/text/FieldPosition;

    #@44
    .end local p2    # "position":Ljava/text/FieldPosition;
    invoke-direct {p2, v1}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;)V

    #@47
    .line 690
    .restart local p2    # "position":Ljava/text/FieldPosition;
    invoke-virtual {p2, v0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@4a
    .line 691
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    #@4d
    move-result v6

    #@4e
    invoke-virtual {p2, v6}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@51
    .line 692
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@54
    .line 577
    :cond_2
    :goto_1
    return-void

    #@55
    .line 588
    .restart local v1    # "dateFormatField":Ljava/text/DateFormat$Field;
    :pswitch_0
    sget-object v1, Ljava/text/DateFormat$Field;->ERA:Ljava/text/DateFormat$Field;

    #@57
    .line 589
    .local v1, "dateFormatField":Ljava/text/DateFormat$Field;
    iget-object v6, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@59
    iget-object v6, v6, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    #@5b
    iget-object v7, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@5d
    const/4 v8, 0x0

    #@5e
    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    #@61
    move-result v7

    #@62
    aget-object v6, v6, v7

    #@64
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@67
    goto :goto_0

    #@68
    .line 592
    .local v1, "dateFormatField":Ljava/text/DateFormat$Field;
    :pswitch_1
    sget-object v1, Ljava/text/DateFormat$Field;->YEAR:Ljava/text/DateFormat$Field;

    #@6a
    .line 593
    .local v1, "dateFormatField":Ljava/text/DateFormat$Field;
    iget-object v6, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@6c
    const/4 v7, 0x1

    #@6d
    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    #@70
    move-result v5

    #@71
    .line 599
    .local v5, "year":I
    const/4 v6, 0x2

    #@72
    if-ne p5, v6, :cond_3

    #@74
    .line 600
    rem-int/lit8 v6, v5, 0x64

    #@76
    const/4 v7, 0x2

    #@77
    invoke-direct {p0, p1, v7, v6}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    #@7a
    goto :goto_0

    #@7b
    .line 602
    :cond_3
    invoke-direct {p0, p1, p5, v5}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    #@7e
    goto :goto_0

    #@7f
    .line 606
    .end local v5    # "year":I
    .local v1, "dateFormatField":Ljava/text/DateFormat$Field;
    :pswitch_2
    sget-object v1, Ljava/text/DateFormat$Field;->MONTH:Ljava/text/DateFormat$Field;

    #@81
    .line 607
    .local v1, "dateFormatField":Ljava/text/DateFormat$Field;
    const/4 v6, 0x1

    #@82
    invoke-direct {p0, p1, p5, v6}, Ljava/text/SimpleDateFormat;->appendMonth(Ljava/lang/StringBuffer;IZ)V

    #@85
    goto :goto_0

    #@86
    .line 610
    .local v1, "dateFormatField":Ljava/text/DateFormat$Field;
    :pswitch_3
    sget-object v1, Ljava/text/DateFormat$Field;->MONTH:Ljava/text/DateFormat$Field;

    #@88
    .line 611
    .local v1, "dateFormatField":Ljava/text/DateFormat$Field;
    const/4 v6, 0x0

    #@89
    invoke-direct {p0, p1, p5, v6}, Ljava/text/SimpleDateFormat;->appendMonth(Ljava/lang/StringBuffer;IZ)V

    #@8c
    goto :goto_0

    #@8d
    .line 614
    .local v1, "dateFormatField":Ljava/text/DateFormat$Field;
    :pswitch_4
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_MONTH:Ljava/text/DateFormat$Field;

    #@8f
    .line 615
    .local v1, "dateFormatField":Ljava/text/DateFormat$Field;
    const/4 v2, 0x5

    #@90
    .line 616
    goto :goto_0

    #@91
    .line 618
    .local v1, "dateFormatField":Ljava/text/DateFormat$Field;
    :pswitch_5
    sget-object v1, Ljava/text/DateFormat$Field;->HOUR_OF_DAY1:Ljava/text/DateFormat$Field;

    #@93
    .line 619
    .local v1, "dateFormatField":Ljava/text/DateFormat$Field;
    iget-object v6, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@95
    const/16 v7, 0xb

    #@97
    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    #@9a
    move-result v3

    #@9b
    .line 620
    .local v3, "hour":I
    if-nez v3, :cond_4

    #@9d
    const/16 v3, 0x18

    #@9f
    .end local v3    # "hour":I
    :cond_4
    invoke-direct {p0, p1, p5, v3}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    #@a2
    goto :goto_0

    #@a3
    .line 623
    .local v1, "dateFormatField":Ljava/text/DateFormat$Field;
    :pswitch_6
    sget-object v1, Ljava/text/DateFormat$Field;->HOUR_OF_DAY0:Ljava/text/DateFormat$Field;

    #@a5
    .line 624
    .local v1, "dateFormatField":Ljava/text/DateFormat$Field;
    const/16 v2, 0xb

    #@a7
    .line 625
    goto :goto_0

    #@a8
    .line 627
    .local v1, "dateFormatField":Ljava/text/DateFormat$Field;
    :pswitch_7
    sget-object v1, Ljava/text/DateFormat$Field;->MINUTE:Ljava/text/DateFormat$Field;

    #@aa
    .line 628
    .local v1, "dateFormatField":Ljava/text/DateFormat$Field;
    const/16 v2, 0xc

    #@ac
    .line 629
    goto :goto_0

    #@ad
    .line 631
    .local v1, "dateFormatField":Ljava/text/DateFormat$Field;
    :pswitch_8
    sget-object v1, Ljava/text/DateFormat$Field;->SECOND:Ljava/text/DateFormat$Field;

    #@af
    .line 632
    .local v1, "dateFormatField":Ljava/text/DateFormat$Field;
    const/16 v2, 0xd

    #@b1
    .line 633
    goto :goto_0

    #@b2
    .line 635
    .local v1, "dateFormatField":Ljava/text/DateFormat$Field;
    :pswitch_9
    sget-object v1, Ljava/text/DateFormat$Field;->MILLISECOND:Ljava/text/DateFormat$Field;

    #@b4
    .line 636
    .local v1, "dateFormatField":Ljava/text/DateFormat$Field;
    iget-object v6, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@b6
    const/16 v7, 0xe

    #@b8
    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    #@bb
    move-result v6

    #@bc
    invoke-direct {p0, p1, p5, v6}, Ljava/text/SimpleDateFormat;->appendMilliseconds(Ljava/lang/StringBuffer;II)V

    #@bf
    goto/16 :goto_0

    #@c1
    .line 639
    .local v1, "dateFormatField":Ljava/text/DateFormat$Field;
    :pswitch_a
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_WEEK:Ljava/text/DateFormat$Field;

    #@c3
    .line 640
    .local v1, "dateFormatField":Ljava/text/DateFormat$Field;
    const/4 v6, 0x1

    #@c4
    invoke-direct {p0, p1, p5, v6}, Ljava/text/SimpleDateFormat;->appendDayOfWeek(Ljava/lang/StringBuffer;IZ)V

    #@c7
    goto/16 :goto_0

    #@c9
    .line 643
    .local v1, "dateFormatField":Ljava/text/DateFormat$Field;
    :pswitch_b
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_WEEK:Ljava/text/DateFormat$Field;

    #@cb
    .line 644
    .local v1, "dateFormatField":Ljava/text/DateFormat$Field;
    const/4 v6, 0x0

    #@cc
    invoke-direct {p0, p1, p5, v6}, Ljava/text/SimpleDateFormat;->appendDayOfWeek(Ljava/lang/StringBuffer;IZ)V

    #@cf
    goto/16 :goto_0

    #@d1
    .line 647
    .local v1, "dateFormatField":Ljava/text/DateFormat$Field;
    :pswitch_c
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_YEAR:Ljava/text/DateFormat$Field;

    #@d3
    .line 648
    .local v1, "dateFormatField":Ljava/text/DateFormat$Field;
    const/4 v2, 0x6

    #@d4
    .line 649
    goto/16 :goto_0

    #@d6
    .line 651
    .local v1, "dateFormatField":Ljava/text/DateFormat$Field;
    :pswitch_d
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_WEEK_IN_MONTH:Ljava/text/DateFormat$Field;

    #@d8
    .line 652
    .local v1, "dateFormatField":Ljava/text/DateFormat$Field;
    const/16 v2, 0x8

    #@da
    .line 653
    goto/16 :goto_0

    #@dc
    .line 655
    .local v1, "dateFormatField":Ljava/text/DateFormat$Field;
    :pswitch_e
    sget-object v1, Ljava/text/DateFormat$Field;->WEEK_OF_YEAR:Ljava/text/DateFormat$Field;

    #@de
    .line 656
    .local v1, "dateFormatField":Ljava/text/DateFormat$Field;
    const/4 v2, 0x3

    #@df
    .line 657
    goto/16 :goto_0

    #@e1
    .line 659
    .local v1, "dateFormatField":Ljava/text/DateFormat$Field;
    :pswitch_f
    sget-object v1, Ljava/text/DateFormat$Field;->WEEK_OF_MONTH:Ljava/text/DateFormat$Field;

    #@e3
    .line 660
    .local v1, "dateFormatField":Ljava/text/DateFormat$Field;
    const/4 v2, 0x4

    #@e4
    .line 661
    goto/16 :goto_0

    #@e6
    .line 663
    .local v1, "dateFormatField":Ljava/text/DateFormat$Field;
    :pswitch_10
    sget-object v1, Ljava/text/DateFormat$Field;->AM_PM:Ljava/text/DateFormat$Field;

    #@e8
    .line 664
    .local v1, "dateFormatField":Ljava/text/DateFormat$Field;
    iget-object v6, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@ea
    iget-object v6, v6, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    #@ec
    iget-object v7, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@ee
    const/16 v8, 0x9

    #@f0
    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    #@f3
    move-result v7

    #@f4
    aget-object v6, v6, v7

    #@f6
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@f9
    goto/16 :goto_0

    #@fb
    .line 667
    .local v1, "dateFormatField":Ljava/text/DateFormat$Field;
    :pswitch_11
    sget-object v1, Ljava/text/DateFormat$Field;->HOUR1:Ljava/text/DateFormat$Field;

    #@fd
    .line 668
    .local v1, "dateFormatField":Ljava/text/DateFormat$Field;
    iget-object v6, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@ff
    const/16 v7, 0xa

    #@101
    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    #@104
    move-result v3

    #@105
    .line 669
    .restart local v3    # "hour":I
    if-nez v3, :cond_5

    #@107
    const/16 v3, 0xc

    #@109
    .end local v3    # "hour":I
    :cond_5
    invoke-direct {p0, p1, p5, v3}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    #@10c
    goto/16 :goto_0

    #@10e
    .line 672
    .local v1, "dateFormatField":Ljava/text/DateFormat$Field;
    :pswitch_12
    sget-object v1, Ljava/text/DateFormat$Field;->HOUR0:Ljava/text/DateFormat$Field;

    #@110
    .line 673
    .local v1, "dateFormatField":Ljava/text/DateFormat$Field;
    const/16 v2, 0xa

    #@112
    .line 674
    goto/16 :goto_0

    #@114
    .line 676
    .local v1, "dateFormatField":Ljava/text/DateFormat$Field;
    :pswitch_13
    sget-object v1, Ljava/text/DateFormat$Field;->TIME_ZONE:Ljava/text/DateFormat$Field;

    #@116
    .line 677
    .local v1, "dateFormatField":Ljava/text/DateFormat$Field;
    const/4 v6, 0x1

    #@117
    invoke-direct {p0, p1, p5, v6}, Ljava/text/SimpleDateFormat;->appendTimeZone(Ljava/lang/StringBuffer;IZ)V

    #@11a
    goto/16 :goto_0

    #@11c
    .line 680
    .local v1, "dateFormatField":Ljava/text/DateFormat$Field;
    :pswitch_14
    sget-object v1, Ljava/text/DateFormat$Field;->TIME_ZONE:Ljava/text/DateFormat$Field;

    #@11e
    .line 681
    .local v1, "dateFormatField":Ljava/text/DateFormat$Field;
    const/4 v6, 0x0

    #@11f
    invoke-direct {p0, p1, p5, v6}, Ljava/text/SimpleDateFormat;->appendNumericTimeZone(Ljava/lang/StringBuffer;IZ)V

    #@122
    goto/16 :goto_0

    #@124
    .line 695
    .end local v1    # "dateFormatField":Ljava/text/DateFormat$Field;
    :cond_6
    invoke-virtual {p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@127
    move-result-object v6

    #@128
    if-eq v6, v1, :cond_7

    #@12a
    invoke-virtual {p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@12d
    move-result-object v6

    #@12e
    if-nez v6, :cond_2

    #@130
    .line 696
    invoke-virtual {p2}, Ljava/text/FieldPosition;->getField()I

    #@133
    move-result v6

    #@134
    if-ne v6, v4, :cond_2

    #@136
    .line 697
    :cond_7
    invoke-virtual {p2}, Ljava/text/FieldPosition;->getEndIndex()I

    #@139
    move-result v6

    #@13a
    if-nez v6, :cond_2

    #@13c
    .line 698
    invoke-virtual {p2, v0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@13f
    .line 699
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    #@142
    move-result v6

    #@143
    invoke-virtual {p2, v6}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@146
    goto/16 :goto_1

    #@148
    .line 586
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_2
        :pswitch_a
    .end packed-switch
.end method

.method private appendDayOfWeek(Ljava/lang/StringBuffer;IZ)V
    .locals 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "count"    # I
    .param p3, "standAlone"    # Z

    #@0
    .prologue
    .line 707
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@2
    iget-object v1, v2, Ljava/text/DateFormatSymbols;->localeData:Llibcore/icu/LocaleData;

    #@4
    .line 708
    .local v1, "ld":Llibcore/icu/LocaleData;
    const/4 v2, 0x4

    #@5
    if-ne p2, v2, :cond_1

    #@7
    .line 709
    if-eqz p3, :cond_0

    #@9
    iget-object v0, v1, Llibcore/icu/LocaleData;->longStandAloneWeekdayNames:[Ljava/lang/String;

    #@b
    .line 715
    .local v0, "days":[Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@d
    const/4 v3, 0x7

    #@e
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    #@11
    move-result v2

    #@12
    aget-object v2, v0, v2

    #@14
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@17
    .line 705
    return-void

    #@18
    .line 709
    .end local v0    # "days":[Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@1a
    iget-object v0, v2, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    #@1c
    .restart local v0    # "days":[Ljava/lang/String;
    goto :goto_0

    #@1d
    .line 710
    .end local v0    # "days":[Ljava/lang/String;
    :cond_1
    const/4 v2, 0x5

    #@1e
    if-ne p2, v2, :cond_3

    #@20
    .line 711
    if-eqz p3, :cond_2

    #@22
    iget-object v0, v1, Llibcore/icu/LocaleData;->tinyStandAloneWeekdayNames:[Ljava/lang/String;

    #@24
    .restart local v0    # "days":[Ljava/lang/String;
    goto :goto_0

    #@25
    .end local v0    # "days":[Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@27
    iget-object v2, v2, Ljava/text/DateFormatSymbols;->localeData:Llibcore/icu/LocaleData;

    #@29
    iget-object v0, v2, Llibcore/icu/LocaleData;->tinyWeekdayNames:[Ljava/lang/String;

    #@2b
    .restart local v0    # "days":[Ljava/lang/String;
    goto :goto_0

    #@2c
    .line 713
    .end local v0    # "days":[Ljava/lang/String;
    :cond_3
    if-eqz p3, :cond_4

    #@2e
    iget-object v0, v1, Llibcore/icu/LocaleData;->shortStandAloneWeekdayNames:[Ljava/lang/String;

    #@30
    .restart local v0    # "days":[Ljava/lang/String;
    goto :goto_0

    #@31
    .end local v0    # "days":[Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@33
    iget-object v0, v2, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    #@35
    .restart local v0    # "days":[Ljava/lang/String;
    goto :goto_0
.end method

.method private appendMilliseconds(Ljava/lang/StringBuffer;II)V
    .locals 5
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "count"    # I
    .param p3, "value"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v2, 0x3

    #@2
    .line 774
    iget-object v3, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    #@4
    if-le p2, v2, :cond_2

    #@6
    move v1, v2

    #@7
    :goto_0
    invoke-virtual {v3, v1}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    #@a
    .line 775
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    #@c
    const/16 v3, 0xa

    #@e
    invoke-virtual {v1, v3}, Ljava/text/NumberFormat;->setMaximumIntegerDigits(I)V

    #@11
    .line 777
    const/4 v1, 0x1

    #@12
    if-ne p2, v1, :cond_3

    #@14
    .line 778
    div-int/lit8 p3, p3, 0x64

    #@16
    .line 782
    :cond_0
    :goto_1
    new-instance v0, Ljava/text/FieldPosition;

    #@18
    invoke-direct {v0, v4}, Ljava/text/FieldPosition;-><init>(I)V

    #@1b
    .line 783
    .local v0, "p":Ljava/text/FieldPosition;
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    #@1d
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v1, v3, p1, v0}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@24
    .line 784
    if-le p2, v2, :cond_1

    #@26
    .line 785
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    #@28
    add-int/lit8 v2, p2, -0x3

    #@2a
    invoke-virtual {v1, v2}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    #@2d
    .line 786
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    #@2f
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v1, v2, p1, v0}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@36
    .line 772
    :cond_1
    return-void

    #@37
    .end local v0    # "p":Ljava/text/FieldPosition;
    :cond_2
    move v1, p2

    #@38
    .line 774
    goto :goto_0

    #@39
    .line 779
    :cond_3
    const/4 v1, 0x2

    #@3a
    if-ne p2, v1, :cond_0

    #@3c
    .line 780
    div-int/lit8 p3, p3, 0xa

    #@3e
    goto :goto_1
.end method

.method private appendMonth(Ljava/lang/StringBuffer;IZ)V
    .locals 5
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "count"    # I
    .param p3, "standAlone"    # Z

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    .line 720
    iget-object v3, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@3
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    #@6
    move-result v1

    #@7
    .line 721
    .local v1, "month":I
    if-gt p2, v4, :cond_0

    #@9
    .line 722
    add-int/lit8 v3, v1, 0x1

    #@b
    invoke-direct {p0, p1, p2, v3}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    #@e
    .line 723
    return-void

    #@f
    .line 727
    :cond_0
    iget-object v3, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@11
    iget-object v0, v3, Ljava/text/DateFormatSymbols;->localeData:Llibcore/icu/LocaleData;

    #@13
    .line 728
    .local v0, "ld":Llibcore/icu/LocaleData;
    const/4 v3, 0x4

    #@14
    if-ne p2, v3, :cond_2

    #@16
    .line 729
    if-eqz p3, :cond_1

    #@18
    iget-object v2, v0, Llibcore/icu/LocaleData;->longStandAloneMonthNames:[Ljava/lang/String;

    #@1a
    .line 735
    .local v2, "months":[Ljava/lang/String;
    :goto_0
    aget-object v3, v2, v1

    #@1c
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1f
    .line 719
    return-void

    #@20
    .line 729
    .end local v2    # "months":[Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@22
    iget-object v2, v3, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    #@24
    .restart local v2    # "months":[Ljava/lang/String;
    goto :goto_0

    #@25
    .line 730
    .end local v2    # "months":[Ljava/lang/String;
    :cond_2
    const/4 v3, 0x5

    #@26
    if-ne p2, v3, :cond_4

    #@28
    .line 731
    if-eqz p3, :cond_3

    #@2a
    iget-object v2, v0, Llibcore/icu/LocaleData;->tinyStandAloneMonthNames:[Ljava/lang/String;

    #@2c
    .restart local v2    # "months":[Ljava/lang/String;
    goto :goto_0

    #@2d
    .end local v2    # "months":[Ljava/lang/String;
    :cond_3
    iget-object v2, v0, Llibcore/icu/LocaleData;->tinyMonthNames:[Ljava/lang/String;

    #@2f
    .restart local v2    # "months":[Ljava/lang/String;
    goto :goto_0

    #@30
    .line 733
    .end local v2    # "months":[Ljava/lang/String;
    :cond_4
    if-eqz p3, :cond_5

    #@32
    iget-object v2, v0, Llibcore/icu/LocaleData;->shortStandAloneMonthNames:[Ljava/lang/String;

    #@34
    .restart local v2    # "months":[Ljava/lang/String;
    goto :goto_0

    #@35
    .end local v2    # "months":[Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@37
    iget-object v2, v3, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    #@39
    .restart local v2    # "months":[Ljava/lang/String;
    goto :goto_0
.end method

.method private appendNumber(Ljava/lang/StringBuffer;II)V
    .locals 5
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "count"    # I
    .param p3, "value"    # I

    #@0
    .prologue
    .line 794
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    #@2
    invoke-virtual {v1}, Ljava/text/NumberFormat;->getMinimumIntegerDigits()I

    #@5
    move-result v0

    #@6
    .line 795
    .local v0, "minimumIntegerDigits":I
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    #@8
    invoke-virtual {v1, p2}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    #@b
    .line 796
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    #@d
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@10
    move-result-object v2

    #@11
    new-instance v3, Ljava/text/FieldPosition;

    #@13
    const/4 v4, 0x0

    #@14
    invoke-direct {v3, v4}, Ljava/text/FieldPosition;-><init>(I)V

    #@17
    invoke-virtual {v1, v2, p1, v3}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@1a
    .line 797
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    #@1c
    invoke-virtual {v1, v0}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    #@1f
    .line 790
    return-void
.end method

.method private appendNumericTimeZone(Ljava/lang/StringBuffer;IZ)V
    .locals 7
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "count"    # I
    .param p3, "generalTimeZone"    # Z

    #@0
    .prologue
    const/4 v6, 0x4

    #@1
    .line 765
    iget-object v3, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@3
    const/16 v4, 0xf

    #@5
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    #@8
    move-result v3

    #@9
    iget-object v4, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@b
    const/16 v5, 0x10

    #@d
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    #@10
    move-result v4

    #@11
    add-int v2, v3, v4

    #@13
    .line 766
    .local v2, "offsetMillis":I
    if-nez p3, :cond_0

    #@15
    if-ne p2, v6, :cond_2

    #@17
    :cond_0
    const/4 v0, 0x1

    #@18
    .line 767
    .local v0, "includeGmt":Z
    :goto_0
    if-nez p3, :cond_1

    #@1a
    if-lt p2, v6, :cond_3

    #@1c
    :cond_1
    const/4 v1, 0x1

    #@1d
    .line 768
    .local v1, "includeMinuteSeparator":Z
    :goto_1
    invoke-static {v0, v1, v2}, Ljava/util/TimeZone;->createGmtOffsetString(ZZI)Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@24
    .line 764
    return-void

    #@25
    .line 766
    .end local v0    # "includeGmt":Z
    .end local v1    # "includeMinuteSeparator":Z
    :cond_2
    const/4 v0, 0x0

    #@26
    .restart local v0    # "includeGmt":Z
    goto :goto_0

    #@27
    .line 767
    :cond_3
    const/4 v1, 0x0

    #@28
    .restart local v1    # "includeMinuteSeparator":Z
    goto :goto_1
.end method

.method private appendTimeZone(Ljava/lang/StringBuffer;IZ)V
    .locals 6
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "count"    # I
    .param p3, "generalTimeZone"    # Z

    #@0
    .prologue
    .line 748
    if-eqz p3, :cond_2

    #@2
    .line 749
    iget-object v4, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@4
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    #@7
    move-result-object v2

    #@8
    .line 750
    .local v2, "tz":Ljava/util/TimeZone;
    iget-object v4, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@a
    const/16 v5, 0x10

    #@c
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    #@f
    move-result v4

    #@10
    if-eqz v4, :cond_0

    #@12
    const/4 v0, 0x1

    #@13
    .line 751
    .local v0, "daylight":Z
    :goto_0
    const/4 v4, 0x4

    #@14
    if-ge p2, v4, :cond_1

    #@16
    const/4 v1, 0x0

    #@17
    .line 752
    .local v1, "style":I
    :goto_1
    iget-object v4, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@19
    invoke-virtual {v4, v2, v0, v1}, Ljava/text/DateFormatSymbols;->getTimeZoneDisplayName(Ljava/util/TimeZone;ZI)Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    .line 753
    .local v3, "zoneString":Ljava/lang/String;
    if-eqz v3, :cond_2

    #@1f
    .line 754
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@22
    .line 755
    return-void

    #@23
    .line 750
    .end local v0    # "daylight":Z
    .end local v1    # "style":I
    .end local v3    # "zoneString":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    #@24
    .restart local v0    # "daylight":Z
    goto :goto_0

    #@25
    .line 751
    :cond_1
    const/4 v1, 0x1

    #@26
    .restart local v1    # "style":I
    goto :goto_1

    #@27
    .line 759
    .end local v0    # "daylight":Z
    .end local v1    # "style":I
    .end local v2    # "tz":Ljava/util/TimeZone;
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Ljava/text/SimpleDateFormat;->appendNumericTimeZone(Ljava/lang/StringBuffer;IZ)V

    #@2a
    .line 747
    return-void
.end method

.method private static convertPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9
    .param p0, "template"    # Ljava/lang/String;
    .param p1, "fromChars"    # Ljava/lang/String;
    .param p2, "toChars"    # Ljava/lang/String;
    .param p3, "check"    # Z

    #@0
    .prologue
    .line 1311
    if-nez p3, :cond_0

    #@2
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v6

    #@6
    if-eqz v6, :cond_0

    #@8
    .line 1312
    return-object p0

    #@9
    .line 1314
    :cond_0
    const/4 v5, 0x0

    #@a
    .line 1315
    .local v5, "quote":Z
    new-instance v4, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    .line 1316
    .local v4, "output":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@12
    move-result v2

    #@13
    .line 1317
    .local v2, "length":I
    const/4 v0, 0x0

    #@14
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_7

    #@16
    .line 1319
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@19
    move-result v3

    #@1a
    .line 1320
    .local v3, "next":C
    const/16 v6, 0x27

    #@1c
    if-ne v3, v6, :cond_1

    #@1e
    .line 1321
    if-eqz v5, :cond_2

    #@20
    const/4 v5, 0x0

    #@21
    .line 1323
    :cond_1
    :goto_1
    if-nez v5, :cond_3

    #@23
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    #@26
    move-result v1

    #@27
    .local v1, "index":I
    const/4 v6, -0x1

    #@28
    if-eq v1, v6, :cond_3

    #@2a
    .line 1324
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    #@2d
    move-result v6

    #@2e
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@31
    .line 1317
    .end local v1    # "index":I
    :goto_2
    add-int/lit8 v0, v0, 0x1

    #@33
    goto :goto_0

    #@34
    .line 1321
    :cond_2
    const/4 v5, 0x1

    #@35
    goto :goto_1

    #@36
    .line 1325
    :cond_3
    if-eqz p3, :cond_4

    #@38
    if-eqz v5, :cond_5

    #@3a
    .line 1328
    :cond_4
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3d
    goto :goto_2

    #@3e
    .line 1325
    :cond_5
    const/16 v6, 0x61

    #@40
    if-lt v3, v6, :cond_6

    #@42
    const/16 v6, 0x7a

    #@44
    if-gt v3, v6, :cond_6

    #@46
    .line 1326
    :goto_3
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@48
    new-instance v7, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v8, "Invalid pattern character \'"

    #@50
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v7

    #@54
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@57
    move-result-object v7

    #@58
    const-string/jumbo v8, "\' in "

    #@5b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v7

    #@5f
    const-string/jumbo v8, "\'"

    #@62
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v7

    #@66
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v7

    #@6a
    const-string/jumbo v8, "\'"

    #@6d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v7

    #@71
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v7

    #@75
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@78
    throw v6

    #@79
    .line 1325
    :cond_6
    const/16 v6, 0x41

    #@7b
    if-lt v3, v6, :cond_4

    #@7d
    const/16 v6, 0x5a

    #@7f
    if-gt v3, v6, :cond_4

    #@81
    goto :goto_3

    #@82
    .line 1331
    .end local v3    # "next":C
    :cond_7
    if-eqz v5, :cond_8

    #@84
    .line 1332
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@86
    const-string/jumbo v7, "Unterminated quote"

    #@89
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@8c
    throw v6

    #@8d
    .line 1334
    :cond_8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@90
    move-result-object v6

    #@91
    return-object v6
.end method

.method private static defaultPattern()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x3

    #@1
    .line 420
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@4
    move-result-object v1

    #@5
    invoke-static {v1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    #@8
    move-result-object v0

    #@9
    .line 421
    .local v0, "localeData":Llibcore/icu/LocaleData;
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    invoke-virtual {v0, v3}, Llibcore/icu/LocaleData;->getDateFormat(I)Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    const-string/jumbo v2, " "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v0, v3}, Llibcore/icu/LocaleData;->getTimeFormat(I)Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    return-object v1
.end method

.method private error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;
    .locals 1
    .param p1, "position"    # Ljava/text/ParsePosition;
    .param p2, "offset"    # I
    .param p3, "zone"    # Ljava/util/TimeZone;

    #@0
    .prologue
    .line 801
    invoke-virtual {p1, p2}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    #@3
    .line 802
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@5
    invoke-virtual {v0, p3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    #@8
    .line 803
    const/4 v0, 0x0

    #@9
    return-object v0
.end method

.method private formatImpl(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;
    .locals 11
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "buffer"    # Ljava/lang/StringBuffer;
    .param p3, "field"    # Ljava/text/FieldPosition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/lang/StringBuffer;",
            "Ljava/text/FieldPosition;",
            "Ljava/util/List",
            "<",
            "Ljava/text/FieldPosition;",
            ">;)",
            "Ljava/lang/StringBuffer;"
        }
    .end annotation

    #@0
    .prologue
    .line 525
    .local p4, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/text/FieldPosition;>;"
    const/4 v10, 0x0

    #@1
    .line 526
    .local v10, "quote":Z
    const/4 v7, -0x1

    #@2
    .local v7, "last":I
    const/4 v5, 0x0

    #@3
    .line 527
    .local v5, "count":I
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    #@8
    .line 528
    if-eqz p3, :cond_0

    #@a
    .line 529
    const/4 v0, 0x0

    #@b
    invoke-virtual {p3, v0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@e
    .line 530
    const/4 v0, 0x0

    #@f
    invoke-virtual {p3, v0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@12
    .line 533
    :cond_0
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    #@14
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@17
    move-result v9

    #@18
    .line 534
    .local v9, "patternLength":I
    const/4 v6, 0x0

    #@19
    .local v6, "i":I
    :goto_0
    if-ge v6, v9, :cond_b

    #@1b
    .line 535
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    #@1d
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    #@20
    move-result v8

    #@21
    .line 536
    .local v8, "next":I
    const/16 v0, 0x27

    #@23
    if-ne v8, v0, :cond_4

    #@25
    .line 537
    if-lez v5, :cond_1

    #@27
    .line 538
    int-to-char v4, v7

    #@28
    move-object v0, p0

    #@29
    move-object v1, p2

    #@2a
    move-object v2, p3

    #@2b
    move-object v3, p4

    #@2c
    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->append(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;CI)V

    #@2f
    .line 539
    const/4 v5, 0x0

    #@30
    .line 541
    :cond_1
    if-ne v7, v8, :cond_2

    #@32
    .line 542
    const/16 v0, 0x27

    #@34
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@37
    .line 543
    const/4 v7, -0x1

    #@38
    .line 547
    :goto_1
    if-eqz v10, :cond_3

    #@3a
    const/4 v10, 0x0

    #@3b
    .line 534
    :goto_2
    add-int/lit8 v6, v6, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 545
    :cond_2
    move v7, v8

    #@3f
    goto :goto_1

    #@40
    .line 547
    :cond_3
    const/4 v10, 0x1

    #@41
    goto :goto_2

    #@42
    .line 550
    :cond_4
    if-nez v10, :cond_7

    #@44
    .line 551
    if-eq v7, v8, :cond_5

    #@46
    const/16 v0, 0x61

    #@48
    if-lt v8, v0, :cond_6

    #@4a
    const/16 v0, 0x7a

    #@4c
    if-gt v8, v0, :cond_6

    #@4e
    .line 552
    :cond_5
    if-ne v7, v8, :cond_9

    #@50
    .line 553
    add-int/lit8 v5, v5, 0x1

    #@52
    goto :goto_2

    #@53
    .line 551
    :cond_6
    const/16 v0, 0x41

    #@55
    if-lt v8, v0, :cond_7

    #@57
    const/16 v0, 0x5a

    #@59
    if-le v8, v0, :cond_5

    #@5b
    .line 562
    :cond_7
    if-lez v5, :cond_8

    #@5d
    .line 563
    int-to-char v4, v7

    #@5e
    move-object v0, p0

    #@5f
    move-object v1, p2

    #@60
    move-object v2, p3

    #@61
    move-object v3, p4

    #@62
    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->append(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;CI)V

    #@65
    .line 564
    const/4 v5, 0x0

    #@66
    .line 566
    :cond_8
    const/4 v7, -0x1

    #@67
    .line 567
    int-to-char v0, v8

    #@68
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@6b
    goto :goto_2

    #@6c
    .line 555
    :cond_9
    if-lez v5, :cond_a

    #@6e
    .line 556
    int-to-char v4, v7

    #@6f
    move-object v0, p0

    #@70
    move-object v1, p2

    #@71
    move-object v2, p3

    #@72
    move-object v3, p4

    #@73
    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->append(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;CI)V

    #@76
    .line 558
    :cond_a
    move v7, v8

    #@77
    .line 559
    const/4 v5, 0x1

    #@78
    goto :goto_2

    #@79
    .line 570
    .end local v8    # "next":I
    :cond_b
    if-lez v5, :cond_c

    #@7b
    .line 571
    int-to-char v4, v7

    #@7c
    move-object v0, p0

    #@7d
    move-object v1, p2

    #@7e
    move-object v2, p3

    #@7f
    move-object v3, p4

    #@80
    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->append(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;CI)V

    #@83
    .line 573
    :cond_c
    return-object p2
.end method

.method private formatToCharacterIteratorImpl(Ljava/util/Date;)Ljava/text/AttributedCharacterIterator;
    .locals 8
    .param p1, "date"    # Ljava/util/Date;

    #@0
    .prologue
    .line 479
    new-instance v2, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 480
    .local v2, "buffer":Ljava/lang/StringBuffer;
    new-instance v3, Ljava/util/ArrayList;

    #@7
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@a
    .line 483
    .local v3, "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/text/FieldPosition;>;"
    const/4 v6, 0x0

    #@b
    invoke-direct {p0, p1, v2, v6, v3}, Ljava/text/SimpleDateFormat;->formatImpl(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    #@e
    .line 486
    new-instance v0, Ljava/text/AttributedString;

    #@10
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@13
    move-result-object v6

    #@14
    invoke-direct {v0, v6}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    #@17
    .line 489
    .local v0, "as":Ljava/text/AttributedString;
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1a
    move-result-object v5

    #@1b
    .local v5, "pos$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@1e
    move-result v6

    #@1f
    if-eqz v6, :cond_0

    #@21
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@24
    move-result-object v4

    #@25
    check-cast v4, Ljava/text/FieldPosition;

    #@27
    .line 490
    .local v4, "pos":Ljava/text/FieldPosition;
    invoke-virtual {v4}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@2a
    move-result-object v1

    #@2b
    .line 491
    .local v1, "attribute":Ljava/text/Format$Field;
    invoke-virtual {v4}, Ljava/text/FieldPosition;->getBeginIndex()I

    #@2e
    move-result v6

    #@2f
    invoke-virtual {v4}, Ljava/text/FieldPosition;->getEndIndex()I

    #@32
    move-result v7

    #@33
    invoke-virtual {v0, v1, v1, v6, v7}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    #@36
    goto :goto_0

    #@37
    .line 495
    .end local v1    # "attribute":Ljava/text/Format$Field;
    .end local v4    # "pos":Ljava/text/FieldPosition;
    :cond_0
    invoke-virtual {v0}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    #@3a
    move-result-object v6

    #@3b
    return-object v6
.end method

.method private parse(Ljava/lang/String;ICI)I
    .locals 17
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "format"    # C
    .param p4, "count"    # I

    #@0
    .prologue
    .line 855
    const-string/jumbo v3, "GyMdkHmsSEDFwWahKzZLc"

    #@3
    move/from16 v0, p3

    #@5
    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    #@8
    move-result v13

    #@9
    .line 856
    .local v13, "index":I
    const/4 v3, -0x1

    #@a
    if-ne v13, v3, :cond_0

    #@c
    .line 857
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@e
    new-instance v4, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v5, "Unknown pattern character \'"

    #@16
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v4

    #@1a
    move/from16 v0, p3

    #@1c
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    const-string/jumbo v5, "\'"

    #@23
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v4

    #@2b
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v3

    #@2f
    .line 859
    :cond_0
    const/4 v10, -0x1

    #@30
    .line 861
    .local v10, "field":I
    const/4 v7, 0x0

    #@31
    .line 862
    .local v7, "absolute":I
    if-gez p4, :cond_1

    #@33
    .line 863
    move/from16 v0, p4

    #@35
    neg-int v0, v0

    #@36
    move/from16 p4, v0

    #@38
    .line 864
    move/from16 v7, p4

    #@3a
    .line 866
    :cond_1
    packed-switch v13, :pswitch_data_0

    #@3d
    .line 958
    :goto_0
    const/4 v3, -0x1

    #@3e
    if-eq v10, v3, :cond_9

    #@40
    .line 959
    const/4 v11, 0x0

    #@41
    move-object/from16 v6, p0

    #@43
    move-object/from16 v8, p1

    #@45
    move/from16 v9, p2

    #@47
    invoke-direct/range {v6 .. v11}, Ljava/text/SimpleDateFormat;->parseNumber(ILjava/lang/String;III)I

    #@4a
    move-result v3

    #@4b
    return v3

    #@4c
    .line 868
    :pswitch_0
    move-object/from16 v0, p0

    #@4e
    iget-object v3, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@50
    iget-object v3, v3, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    #@52
    const/4 v4, 0x0

    #@53
    move-object/from16 v0, p0

    #@55
    move-object/from16 v1, p1

    #@57
    move/from16 v2, p2

    #@59
    invoke-direct {v0, v1, v2, v3, v4}, Ljava/text/SimpleDateFormat;->parseText(Ljava/lang/String;I[Ljava/lang/String;I)I

    #@5c
    move-result v3

    #@5d
    return v3

    #@5e
    .line 870
    :pswitch_1
    const/4 v3, 0x3

    #@5f
    move/from16 v0, p4

    #@61
    if-lt v0, v3, :cond_2

    #@63
    .line 871
    const/4 v10, 0x1

    #@64
    goto :goto_0

    #@65
    .line 873
    :cond_2
    new-instance v14, Ljava/text/ParsePosition;

    #@67
    move/from16 v0, p2

    #@69
    invoke-direct {v14, v0}, Ljava/text/ParsePosition;-><init>(I)V

    #@6c
    .line 874
    .local v14, "position":Ljava/text/ParsePosition;
    move-object/from16 v0, p0

    #@6e
    move-object/from16 v1, p1

    #@70
    invoke-direct {v0, v7, v1, v14}, Ljava/text/SimpleDateFormat;->parseNumber(ILjava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    #@73
    move-result-object v15

    #@74
    .line 875
    .local v15, "result":Ljava/lang/Number;
    if-nez v15, :cond_3

    #@76
    .line 876
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getErrorIndex()I

    #@79
    move-result v3

    #@7a
    neg-int v3, v3

    #@7b
    add-int/lit8 v3, v3, -0x1

    #@7d
    return v3

    #@7e
    .line 878
    :cond_3
    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    #@81
    move-result v16

    #@82
    .line 880
    .local v16, "year":I
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getIndex()I

    #@85
    move-result v3

    #@86
    sub-int v3, v3, p2

    #@88
    const/4 v4, 0x2

    #@89
    if-ne v3, v4, :cond_4

    #@8b
    if-ltz v16, :cond_4

    #@8d
    .line 881
    move-object/from16 v0, p0

    #@8f
    iget v3, v0, Ljava/text/SimpleDateFormat;->creationYear:I

    #@91
    div-int/lit8 v3, v3, 0x64

    #@93
    mul-int/lit8 v3, v3, 0x64

    #@95
    add-int v16, v16, v3

    #@97
    .line 882
    move-object/from16 v0, p0

    #@99
    iget v3, v0, Ljava/text/SimpleDateFormat;->creationYear:I

    #@9b
    move/from16 v0, v16

    #@9d
    if-ge v0, v3, :cond_4

    #@9f
    .line 883
    add-int/lit8 v16, v16, 0x64

    #@a1
    .line 886
    :cond_4
    move-object/from16 v0, p0

    #@a3
    iget-object v3, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@a5
    const/4 v4, 0x1

    #@a6
    move/from16 v0, v16

    #@a8
    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->set(II)V

    #@ab
    .line 887
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getIndex()I

    #@ae
    move-result v3

    #@af
    return v3

    #@b0
    .line 891
    .end local v14    # "position":Ljava/text/ParsePosition;
    .end local v15    # "result":Ljava/lang/Number;
    .end local v16    # "year":I
    :pswitch_2
    const/4 v8, 0x1

    #@b1
    move-object/from16 v3, p0

    #@b3
    move-object/from16 v4, p1

    #@b5
    move/from16 v5, p2

    #@b7
    move/from16 v6, p4

    #@b9
    invoke-direct/range {v3 .. v8}, Ljava/text/SimpleDateFormat;->parseMonth(Ljava/lang/String;IIIZ)I

    #@bc
    move-result v3

    #@bd
    return v3

    #@be
    .line 893
    :pswitch_3
    const/4 v8, 0x0

    #@bf
    move-object/from16 v3, p0

    #@c1
    move-object/from16 v4, p1

    #@c3
    move/from16 v5, p2

    #@c5
    move/from16 v6, p4

    #@c7
    invoke-direct/range {v3 .. v8}, Ljava/text/SimpleDateFormat;->parseMonth(Ljava/lang/String;IIIZ)I

    #@ca
    move-result v3

    #@cb
    return v3

    #@cc
    .line 895
    :pswitch_4
    const/4 v10, 0x5

    #@cd
    .line 896
    goto/16 :goto_0

    #@cf
    .line 898
    :pswitch_5
    new-instance v14, Ljava/text/ParsePosition;

    #@d1
    move/from16 v0, p2

    #@d3
    invoke-direct {v14, v0}, Ljava/text/ParsePosition;-><init>(I)V

    #@d6
    .line 899
    .restart local v14    # "position":Ljava/text/ParsePosition;
    move-object/from16 v0, p0

    #@d8
    move-object/from16 v1, p1

    #@da
    invoke-direct {v0, v7, v1, v14}, Ljava/text/SimpleDateFormat;->parseNumber(ILjava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    #@dd
    move-result-object v15

    #@de
    .line 900
    .restart local v15    # "result":Ljava/lang/Number;
    if-nez v15, :cond_5

    #@e0
    .line 901
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getErrorIndex()I

    #@e3
    move-result v3

    #@e4
    neg-int v3, v3

    #@e5
    add-int/lit8 v3, v3, -0x1

    #@e7
    return v3

    #@e8
    .line 903
    :cond_5
    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    #@eb
    move-result v12

    #@ec
    .line 904
    .local v12, "hour":I
    const/16 v3, 0x18

    #@ee
    if-ne v12, v3, :cond_6

    #@f0
    .line 905
    const/4 v12, 0x0

    #@f1
    .line 907
    :cond_6
    move-object/from16 v0, p0

    #@f3
    iget-object v3, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@f5
    const/16 v4, 0xb

    #@f7
    invoke-virtual {v3, v4, v12}, Ljava/util/Calendar;->set(II)V

    #@fa
    .line 908
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getIndex()I

    #@fd
    move-result v3

    #@fe
    return v3

    #@ff
    .line 910
    .end local v12    # "hour":I
    .end local v14    # "position":Ljava/text/ParsePosition;
    .end local v15    # "result":Ljava/lang/Number;
    :pswitch_6
    const/16 v10, 0xb

    #@101
    .line 911
    goto/16 :goto_0

    #@103
    .line 913
    :pswitch_7
    const/16 v10, 0xc

    #@105
    .line 914
    goto/16 :goto_0

    #@107
    .line 916
    :pswitch_8
    const/16 v10, 0xd

    #@109
    .line 917
    goto/16 :goto_0

    #@10b
    .line 919
    :pswitch_9
    move-object/from16 v0, p0

    #@10d
    move-object/from16 v1, p1

    #@10f
    move/from16 v2, p2

    #@111
    invoke-direct {v0, v1, v2, v7}, Ljava/text/SimpleDateFormat;->parseFractionalSeconds(Ljava/lang/String;II)I

    #@114
    move-result v3

    #@115
    return v3

    #@116
    .line 921
    :pswitch_a
    const/4 v3, 0x1

    #@117
    move-object/from16 v0, p0

    #@119
    move-object/from16 v1, p1

    #@11b
    move/from16 v2, p2

    #@11d
    invoke-direct {v0, v1, v2, v3}, Ljava/text/SimpleDateFormat;->parseDayOfWeek(Ljava/lang/String;IZ)I

    #@120
    move-result v3

    #@121
    return v3

    #@122
    .line 923
    :pswitch_b
    const/4 v3, 0x0

    #@123
    move-object/from16 v0, p0

    #@125
    move-object/from16 v1, p1

    #@127
    move/from16 v2, p2

    #@129
    invoke-direct {v0, v1, v2, v3}, Ljava/text/SimpleDateFormat;->parseDayOfWeek(Ljava/lang/String;IZ)I

    #@12c
    move-result v3

    #@12d
    return v3

    #@12e
    .line 925
    :pswitch_c
    const/4 v10, 0x6

    #@12f
    .line 926
    goto/16 :goto_0

    #@131
    .line 928
    :pswitch_d
    const/16 v10, 0x8

    #@133
    .line 929
    goto/16 :goto_0

    #@135
    .line 931
    :pswitch_e
    const/4 v10, 0x3

    #@136
    .line 932
    goto/16 :goto_0

    #@138
    .line 934
    :pswitch_f
    const/4 v10, 0x4

    #@139
    .line 935
    goto/16 :goto_0

    #@13b
    .line 937
    :pswitch_10
    move-object/from16 v0, p0

    #@13d
    iget-object v3, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@13f
    iget-object v3, v3, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    #@141
    const/16 v4, 0x9

    #@143
    move-object/from16 v0, p0

    #@145
    move-object/from16 v1, p1

    #@147
    move/from16 v2, p2

    #@149
    invoke-direct {v0, v1, v2, v3, v4}, Ljava/text/SimpleDateFormat;->parseText(Ljava/lang/String;I[Ljava/lang/String;I)I

    #@14c
    move-result v3

    #@14d
    return v3

    #@14e
    .line 939
    :pswitch_11
    new-instance v14, Ljava/text/ParsePosition;

    #@150
    move/from16 v0, p2

    #@152
    invoke-direct {v14, v0}, Ljava/text/ParsePosition;-><init>(I)V

    #@155
    .line 940
    .restart local v14    # "position":Ljava/text/ParsePosition;
    move-object/from16 v0, p0

    #@157
    move-object/from16 v1, p1

    #@159
    invoke-direct {v0, v7, v1, v14}, Ljava/text/SimpleDateFormat;->parseNumber(ILjava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    #@15c
    move-result-object v15

    #@15d
    .line 941
    .restart local v15    # "result":Ljava/lang/Number;
    if-nez v15, :cond_7

    #@15f
    .line 942
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getErrorIndex()I

    #@162
    move-result v3

    #@163
    neg-int v3, v3

    #@164
    add-int/lit8 v3, v3, -0x1

    #@166
    return v3

    #@167
    .line 944
    :cond_7
    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    #@16a
    move-result v12

    #@16b
    .line 945
    .restart local v12    # "hour":I
    const/16 v3, 0xc

    #@16d
    if-ne v12, v3, :cond_8

    #@16f
    .line 946
    const/4 v12, 0x0

    #@170
    .line 948
    :cond_8
    move-object/from16 v0, p0

    #@172
    iget-object v3, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@174
    const/16 v4, 0xa

    #@176
    invoke-virtual {v3, v4, v12}, Ljava/util/Calendar;->set(II)V

    #@179
    .line 949
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getIndex()I

    #@17c
    move-result v3

    #@17d
    return v3

    #@17e
    .line 951
    .end local v12    # "hour":I
    .end local v14    # "position":Ljava/text/ParsePosition;
    .end local v15    # "result":Ljava/lang/Number;
    :pswitch_12
    const/16 v10, 0xa

    #@180
    .line 952
    goto/16 :goto_0

    #@182
    .line 954
    :pswitch_13
    invoke-direct/range {p0 .. p2}, Ljava/text/SimpleDateFormat;->parseTimeZone(Ljava/lang/String;I)I

    #@185
    move-result v3

    #@186
    return v3

    #@187
    .line 956
    :pswitch_14
    invoke-direct/range {p0 .. p2}, Ljava/text/SimpleDateFormat;->parseTimeZone(Ljava/lang/String;I)I

    #@18a
    move-result v3

    #@18b
    return v3

    #@18c
    .line 961
    :cond_9
    return p2

    #@18d
    .line 866
    nop

    #@18e
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_2
        :pswitch_a
    .end packed-switch
.end method

.method private parseDayOfWeek(Ljava/lang/String;IZ)I
    .locals 4
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "standAlone"    # Z

    #@0
    .prologue
    const/4 v3, 0x7

    #@1
    .line 990
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@3
    iget-object v1, v2, Ljava/text/DateFormatSymbols;->localeData:Llibcore/icu/LocaleData;

    #@5
    .line 992
    .local v1, "ld":Llibcore/icu/LocaleData;
    if-eqz p3, :cond_1

    #@7
    iget-object v2, v1, Llibcore/icu/LocaleData;->longStandAloneWeekdayNames:[Ljava/lang/String;

    #@9
    .line 991
    :goto_0
    invoke-direct {p0, p1, p2, v2, v3}, Ljava/text/SimpleDateFormat;->parseText(Ljava/lang/String;I[Ljava/lang/String;I)I

    #@c
    move-result v0

    #@d
    .line 994
    .local v0, "index":I
    if-gez v0, :cond_0

    #@f
    .line 996
    if-eqz p3, :cond_2

    #@11
    iget-object v2, v1, Llibcore/icu/LocaleData;->shortStandAloneWeekdayNames:[Ljava/lang/String;

    #@13
    .line 995
    :goto_1
    invoke-direct {p0, p1, p2, v2, v3}, Ljava/text/SimpleDateFormat;->parseText(Ljava/lang/String;I[Ljava/lang/String;I)I

    #@16
    move-result v0

    #@17
    .line 999
    :cond_0
    return v0

    #@18
    .line 992
    .end local v0    # "index":I
    :cond_1
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@1a
    iget-object v2, v2, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    #@1c
    goto :goto_0

    #@1d
    .line 996
    .restart local v0    # "index":I
    :cond_2
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@1f
    iget-object v2, v2, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    #@21
    goto :goto_1
.end method

.method private parseFractionalSeconds(Ljava/lang/String;II)I
    .locals 12
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "count"    # I

    #@0
    .prologue
    .line 970
    new-instance v4, Ljava/text/ParsePosition;

    #@2
    invoke-direct {v4, p2}, Ljava/text/ParsePosition;-><init>(I)V

    #@5
    .line 971
    .local v4, "parsePosition":Ljava/text/ParsePosition;
    invoke-direct {p0, p3, p1, v4}, Ljava/text/SimpleDateFormat;->parseNumber(ILjava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    #@8
    move-result-object v2

    #@9
    .line 972
    .local v2, "fractionalSeconds":Ljava/lang/Number;
    if-nez v2, :cond_0

    #@b
    .line 973
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getErrorIndex()I

    #@e
    move-result v5

    #@f
    neg-int v5, v5

    #@10
    add-int/lit8 v5, v5, -0x1

    #@12
    return v5

    #@13
    .line 981
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    #@16
    move-result-wide v6

    #@17
    .line 982
    .local v6, "result":D
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    #@1a
    move-result v5

    #@1b
    sub-int v3, v5, p2

    #@1d
    .line 983
    .local v3, "numDigitsParsed":I
    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    #@1f
    int-to-double v10, v3

    #@20
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    #@23
    move-result-wide v0

    #@24
    .line 985
    .local v0, "divisor":D
    iget-object v5, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@26
    div-double v8, v6, v0

    #@28
    const-wide v10, 0x408f400000000000L    # 1000.0

    #@2d
    mul-double/2addr v8, v10

    #@2e
    double-to-int v8, v8

    #@2f
    const/16 v9, 0xe

    #@31
    invoke-virtual {v5, v9, v8}, Ljava/util/Calendar;->set(II)V

    #@34
    .line 986
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    #@37
    move-result v5

    #@38
    return v5
.end method

.method private parseMonth(Ljava/lang/String;IIIZ)I
    .locals 8
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "absolute"    # I
    .param p5, "standAlone"    # Z

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    .line 1003
    if-gt p3, v4, :cond_0

    #@3
    .line 1004
    const/4 v5, -0x1

    #@4
    move-object v0, p0

    #@5
    move v1, p4

    #@6
    move-object v2, p1

    #@7
    move v3, p2

    #@8
    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->parseNumber(ILjava/lang/String;III)I

    #@b
    move-result v0

    #@c
    return v0

    #@d
    .line 1006
    :cond_0
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@f
    iget-object v7, v0, Ljava/text/DateFormatSymbols;->localeData:Llibcore/icu/LocaleData;

    #@11
    .line 1008
    .local v7, "ld":Llibcore/icu/LocaleData;
    if-eqz p5, :cond_2

    #@13
    iget-object v0, v7, Llibcore/icu/LocaleData;->longStandAloneMonthNames:[Ljava/lang/String;

    #@15
    .line 1007
    :goto_0
    invoke-direct {p0, p1, p2, v0, v4}, Ljava/text/SimpleDateFormat;->parseText(Ljava/lang/String;I[Ljava/lang/String;I)I

    #@18
    move-result v6

    #@19
    .line 1010
    .local v6, "index":I
    if-gez v6, :cond_1

    #@1b
    .line 1012
    if-eqz p5, :cond_3

    #@1d
    iget-object v0, v7, Llibcore/icu/LocaleData;->shortStandAloneMonthNames:[Ljava/lang/String;

    #@1f
    .line 1011
    :goto_1
    invoke-direct {p0, p1, p2, v0, v4}, Ljava/text/SimpleDateFormat;->parseText(Ljava/lang/String;I[Ljava/lang/String;I)I

    #@22
    move-result v6

    #@23
    .line 1015
    :cond_1
    return v6

    #@24
    .line 1008
    .end local v6    # "index":I
    :cond_2
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@26
    iget-object v0, v0, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    #@28
    goto :goto_0

    #@29
    .line 1012
    .restart local v6    # "index":I
    :cond_3
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@2b
    iget-object v0, v0, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    #@2d
    goto :goto_1
.end method

.method private parseNumber(ILjava/lang/String;III)I
    .locals 4
    .param p1, "max"    # I
    .param p2, "string"    # Ljava/lang/String;
    .param p3, "offset"    # I
    .param p4, "field"    # I
    .param p5, "skew"    # I

    #@0
    .prologue
    .line 1141
    new-instance v0, Ljava/text/ParsePosition;

    #@2
    invoke-direct {v0, p3}, Ljava/text/ParsePosition;-><init>(I)V

    #@5
    .line 1142
    .local v0, "position":Ljava/text/ParsePosition;
    invoke-direct {p0, p1, p2, v0}, Ljava/text/SimpleDateFormat;->parseNumber(ILjava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    #@8
    move-result-object v1

    #@9
    .line 1143
    .local v1, "result":Ljava/lang/Number;
    if-nez v1, :cond_0

    #@b
    .line 1144
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    #@e
    move-result v2

    #@f
    neg-int v2, v2

    #@10
    add-int/lit8 v2, v2, -0x1

    #@12
    return v2

    #@13
    .line 1146
    :cond_0
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@15
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    #@18
    move-result v3

    #@19
    add-int/2addr v3, p5

    #@1a
    invoke-virtual {v2, p4, v3}, Ljava/util/Calendar;->set(II)V

    #@1d
    .line 1147
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    #@20
    move-result v2

    #@21
    return v2
.end method

.method private parseNumber(ILjava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 6
    .param p1, "max"    # I
    .param p2, "string"    # Ljava/lang/String;
    .param p3, "position"    # Ljava/text/ParsePosition;

    #@0
    .prologue
    .line 1113
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@3
    move-result v2

    #@4
    .line 1114
    .local v2, "length":I
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    #@7
    move-result v1

    #@8
    .line 1115
    .local v1, "index":I
    if-lez p1, :cond_0

    #@a
    sub-int v4, v2, v1

    #@c
    if-ge p1, v4, :cond_0

    #@e
    .line 1116
    add-int v2, v1, p1

    #@10
    .line 1118
    :cond_0
    :goto_0
    if-ge v1, v2, :cond_2

    #@12
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    #@15
    move-result v4

    #@16
    const/16 v5, 0x20

    #@18
    if-eq v4, v5, :cond_1

    #@1a
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    #@1d
    move-result v4

    #@1e
    const/16 v5, 0x9

    #@20
    if-ne v4, v5, :cond_2

    #@22
    .line 1119
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@24
    goto :goto_0

    #@25
    .line 1121
    :cond_2
    if-nez p1, :cond_3

    #@27
    .line 1122
    invoke-virtual {p3, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    #@2a
    .line 1123
    iget-object v4, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    #@2c
    invoke-virtual {v4, p2, p3}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    #@2f
    move-result-object v4

    #@30
    return-object v4

    #@31
    .line 1126
    :cond_3
    const/4 v3, 0x0

    #@32
    .line 1128
    .local v3, "result":I
    :goto_1
    if-ge v1, v2, :cond_4

    #@34
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    #@37
    move-result v4

    #@38
    const/16 v5, 0xa

    #@3a
    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    #@3d
    move-result v0

    #@3e
    .local v0, "digit":I
    const/4 v4, -0x1

    #@3f
    if-eq v0, v4, :cond_4

    #@41
    .line 1129
    mul-int/lit8 v4, v3, 0xa

    #@43
    add-int v3, v4, v0

    #@45
    .line 1130
    add-int/lit8 v1, v1, 0x1

    #@47
    goto :goto_1

    #@48
    .line 1132
    .end local v0    # "digit":I
    :cond_4
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    #@4b
    move-result v4

    #@4c
    if-ne v1, v4, :cond_5

    #@4e
    .line 1133
    invoke-virtual {p3, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    #@51
    .line 1134
    const/4 v4, 0x0

    #@52
    return-object v4

    #@53
    .line 1136
    :cond_5
    invoke-virtual {p3, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    #@56
    .line 1137
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@59
    move-result-object v4

    #@5a
    return-object v4
.end method

.method private parseText(Ljava/lang/String;I[Ljava/lang/String;I)I
    .locals 16
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "options"    # [Ljava/lang/String;
    .param p4, "field"    # I

    #@0
    .prologue
    .line 1152
    const/4 v13, -0x1

    #@1
    .line 1153
    .local v13, "bestIndex":I
    const/4 v14, -0x1

    #@2
    .line 1154
    .local v14, "bestLength":I
    const/4 v15, 0x0

    #@3
    .local v15, "i":I
    :goto_0
    move-object/from16 v0, p3

    #@5
    array-length v1, v0

    #@6
    if-ge v15, v1, :cond_5

    #@8
    .line 1155
    aget-object v4, p3, v15

    #@a
    .line 1156
    .local v4, "option":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@d
    move-result v6

    #@e
    .line 1157
    .local v6, "optionLength":I
    if-nez v6, :cond_1

    #@10
    .line 1154
    :cond_0
    :goto_1
    add-int/lit8 v15, v15, 0x1

    #@12
    goto :goto_0

    #@13
    .line 1160
    :cond_1
    const/4 v2, 0x1

    #@14
    const/4 v5, 0x0

    #@15
    move-object/from16 v1, p1

    #@17
    move/from16 v3, p2

    #@19
    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_3

    #@1f
    .line 1161
    const/4 v1, -0x1

    #@20
    if-eq v13, v1, :cond_2

    #@22
    if-le v6, v14, :cond_0

    #@24
    .line 1162
    :cond_2
    move v13, v15

    #@25
    .line 1163
    move v14, v6

    #@26
    goto :goto_1

    #@27
    .line 1165
    :cond_3
    add-int/lit8 v1, v6, -0x1

    #@29
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    #@2c
    move-result v1

    #@2d
    const/16 v2, 0x2e

    #@2f
    if-ne v1, v2, :cond_0

    #@31
    .line 1168
    add-int/lit8 v12, v6, -0x1

    #@33
    const/4 v8, 0x1

    #@34
    const/4 v11, 0x0

    #@35
    move-object/from16 v7, p1

    #@37
    move/from16 v9, p2

    #@39
    move-object v10, v4

    #@3a
    invoke-virtual/range {v7 .. v12}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@3d
    move-result v1

    #@3e
    if-eqz v1, :cond_0

    #@40
    .line 1169
    const/4 v1, -0x1

    #@41
    if-eq v13, v1, :cond_4

    #@43
    add-int/lit8 v1, v6, -0x1

    #@45
    if-le v1, v14, :cond_0

    #@47
    .line 1170
    :cond_4
    move v13, v15

    #@48
    .line 1171
    add-int/lit8 v14, v6, -0x1

    #@4a
    goto :goto_1

    #@4b
    .line 1176
    .end local v4    # "option":Ljava/lang/String;
    .end local v6    # "optionLength":I
    :cond_5
    const/4 v1, -0x1

    #@4c
    if-eq v13, v1, :cond_6

    #@4e
    .line 1177
    move-object/from16 v0, p0

    #@50
    iget-object v1, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@52
    move/from16 v0, p4

    #@54
    invoke-virtual {v1, v0, v13}, Ljava/util/Calendar;->set(II)V

    #@57
    .line 1178
    add-int v1, p2, v14

    #@59
    return v1

    #@5a
    .line 1180
    :cond_6
    move/from16 v0, p2

    #@5c
    neg-int v1, v0

    #@5d
    add-int/lit8 v1, v1, -0x1

    #@5f
    return v1
.end method

.method private parseTimeZone(Ljava/lang/String;I)I
    .locals 23
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 1184
    const-string/jumbo v2, "GMT"

    #@3
    const/4 v3, 0x0

    #@4
    const/4 v4, 0x3

    #@5
    move-object/from16 v0, p1

    #@7
    move/from16 v1, p2

    #@9
    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@c
    move-result v9

    #@d
    .line 1185
    .local v9, "foundGMT":Z
    if-eqz v9, :cond_0

    #@f
    .line 1186
    add-int/lit8 p2, p2, 0x3

    #@11
    .line 1191
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@14
    move-result v2

    #@15
    move/from16 v0, p2

    #@17
    if-ge v0, v2, :cond_7

    #@19
    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->charAt(I)C

    #@1c
    move-result v18

    #@1d
    .local v18, "sign":C
    const/16 v2, 0x2b

    #@1f
    move/from16 v0, v18

    #@21
    if-eq v0, v2, :cond_1

    #@23
    const/16 v2, 0x2d

    #@25
    move/from16 v0, v18

    #@27
    if-ne v0, v2, :cond_7

    #@29
    .line 1192
    :cond_1
    new-instance v14, Ljava/text/ParsePosition;

    #@2b
    add-int/lit8 v2, p2, 0x1

    #@2d
    invoke-direct {v14, v2}, Ljava/text/ParsePosition;-><init>(I)V

    #@30
    .line 1193
    .local v14, "position":Ljava/text/ParsePosition;
    move-object/from16 v0, p0

    #@32
    iget-object v2, v0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    #@34
    move-object/from16 v0, p1

    #@36
    invoke-virtual {v2, v0, v14}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    #@39
    move-result-object v16

    #@3a
    .line 1194
    .local v16, "result":Ljava/lang/Number;
    if-nez v16, :cond_2

    #@3c
    .line 1195
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getErrorIndex()I

    #@3f
    move-result v2

    #@40
    neg-int v2, v2

    #@41
    add-int/lit8 v2, v2, -0x1

    #@43
    return v2

    #@44
    .line 1197
    :cond_2
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->intValue()I

    #@47
    move-result v10

    #@48
    .line 1198
    .local v10, "hour":I
    const v2, 0x36ee80

    #@4b
    mul-int v15, v10, v2

    #@4d
    .line 1199
    .local v15, "raw":I
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getIndex()I

    #@50
    move-result v12

    #@51
    .line 1200
    .local v12, "index":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@54
    move-result v2

    #@55
    if-ge v12, v2, :cond_6

    #@57
    move-object/from16 v0, p1

    #@59
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    #@5c
    move-result v2

    #@5d
    const/16 v3, 0x3a

    #@5f
    if-ne v2, v3, :cond_6

    #@61
    .line 1201
    add-int/lit8 v2, v12, 0x1

    #@63
    invoke-virtual {v14, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    #@66
    .line 1202
    move-object/from16 v0, p0

    #@68
    iget-object v2, v0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    #@6a
    move-object/from16 v0, p1

    #@6c
    invoke-virtual {v2, v0, v14}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    #@6f
    move-result-object v16

    #@70
    .line 1203
    if-nez v16, :cond_3

    #@72
    .line 1204
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getErrorIndex()I

    #@75
    move-result v2

    #@76
    neg-int v2, v2

    #@77
    add-int/lit8 v2, v2, -0x1

    #@79
    return v2

    #@7a
    .line 1206
    :cond_3
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->intValue()I

    #@7d
    move-result v13

    #@7e
    .line 1207
    .local v13, "minute":I
    const v2, 0xea60

    #@81
    mul-int/2addr v2, v13

    #@82
    add-int/2addr v15, v2

    #@83
    .line 1211
    .end local v13    # "minute":I
    :cond_4
    :goto_0
    const/16 v2, 0x2d

    #@85
    move/from16 v0, v18

    #@87
    if-ne v0, v2, :cond_5

    #@89
    .line 1212
    neg-int v15, v15

    #@8a
    .line 1214
    :cond_5
    move-object/from16 v0, p0

    #@8c
    iget-object v2, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@8e
    new-instance v3, Ljava/util/SimpleTimeZone;

    #@90
    const-string/jumbo v4, ""

    #@93
    invoke-direct {v3, v15, v4}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    #@96
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    #@99
    .line 1215
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getIndex()I

    #@9c
    move-result v2

    #@9d
    return v2

    #@9e
    .line 1208
    :cond_6
    const/16 v2, 0x18

    #@a0
    if-lt v10, v2, :cond_4

    #@a2
    .line 1209
    div-int/lit8 v2, v10, 0x64

    #@a4
    const v3, 0x36ee80

    #@a7
    mul-int/2addr v2, v3

    #@a8
    rem-int/lit8 v3, v10, 0x64

    #@aa
    const v4, 0xea60

    #@ad
    mul-int/2addr v3, v4

    #@ae
    add-int v15, v2, v3

    #@b0
    goto :goto_0

    #@b1
    .line 1219
    .end local v10    # "hour":I
    .end local v12    # "index":I
    .end local v14    # "position":Ljava/text/ParsePosition;
    .end local v15    # "raw":I
    .end local v16    # "result":Ljava/lang/Number;
    .end local v18    # "sign":C
    :cond_7
    if-eqz v9, :cond_8

    #@b3
    .line 1220
    move-object/from16 v0, p0

    #@b5
    iget-object v2, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@b7
    const-string/jumbo v3, "GMT"

    #@ba
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@bd
    move-result-object v3

    #@be
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    #@c1
    .line 1221
    return p2

    #@c2
    .line 1225
    :cond_8
    move-object/from16 v0, p0

    #@c4
    iget-object v2, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@c6
    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->internalZoneStrings()[[Ljava/lang/String;

    #@c9
    move-result-object v21

    #@ca
    const/4 v2, 0x0

    #@cb
    move-object/from16 v0, v21

    #@cd
    array-length v0, v0

    #@ce
    move/from16 v22, v0

    #@d0
    move/from16 v20, v2

    #@d2
    :goto_1
    move/from16 v0, v20

    #@d4
    move/from16 v1, v22

    #@d6
    if-ge v0, v1, :cond_10

    #@d8
    aget-object v17, v21, v20

    #@da
    .line 1226
    .local v17, "row":[Ljava/lang/String;
    const/4 v11, 0x1

    #@db
    .local v11, "i":I
    :goto_2
    const/4 v2, 0x5

    #@dc
    if-ge v11, v2, :cond_f

    #@de
    .line 1227
    aget-object v2, v17, v11

    #@e0
    if-nez v2, :cond_a

    #@e2
    .line 1226
    :cond_9
    add-int/lit8 v11, v11, 0x1

    #@e4
    goto :goto_2

    #@e5
    .line 1233
    :cond_a
    aget-object v5, v17, v11

    #@e7
    aget-object v2, v17, v11

    #@e9
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@ec
    move-result v7

    #@ed
    const/4 v3, 0x1

    #@ee
    const/4 v6, 0x0

    #@ef
    move-object/from16 v2, p1

    #@f1
    move/from16 v4, p2

    #@f3
    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@f6
    move-result v2

    #@f7
    if-eqz v2, :cond_9

    #@f9
    .line 1234
    const/4 v2, 0x0

    #@fa
    aget-object v2, v17, v2

    #@fc
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@ff
    move-result-object v19

    #@100
    .line 1235
    .local v19, "zone":Ljava/util/TimeZone;
    if-nez v19, :cond_b

    #@102
    .line 1236
    move/from16 v0, p2

    #@104
    neg-int v2, v0

    #@105
    add-int/lit8 v2, v2, -0x1

    #@107
    return v2

    #@108
    .line 1238
    :cond_b
    invoke-virtual/range {v19 .. v19}, Ljava/util/TimeZone;->getRawOffset()I

    #@10b
    move-result v15

    #@10c
    .line 1239
    .restart local v15    # "raw":I
    const/4 v2, 0x3

    #@10d
    if-eq v11, v2, :cond_c

    #@10f
    const/4 v2, 0x4

    #@110
    if-ne v11, v2, :cond_e

    #@112
    .line 1242
    :cond_c
    invoke-virtual/range {v19 .. v19}, Ljava/util/TimeZone;->getDSTSavings()I

    #@115
    move-result v8

    #@116
    .line 1246
    .local v8, "dstSavings":I
    if-nez v8, :cond_d

    #@118
    .line 1249
    const v8, 0x36ee80

    #@11b
    .line 1251
    :cond_d
    add-int/2addr v15, v8

    #@11c
    .line 1253
    .end local v8    # "dstSavings":I
    :cond_e
    move-object/from16 v0, p0

    #@11e
    iget-object v2, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@120
    new-instance v3, Ljava/util/SimpleTimeZone;

    #@122
    const-string/jumbo v4, ""

    #@125
    invoke-direct {v3, v15, v4}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    #@128
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    #@12b
    .line 1254
    aget-object v2, v17, v11

    #@12d
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@130
    move-result v2

    #@131
    add-int v2, v2, p2

    #@133
    return v2

    #@134
    .line 1225
    .end local v15    # "raw":I
    .end local v19    # "zone":Ljava/util/TimeZone;
    :cond_f
    add-int/lit8 v2, v20, 0x1

    #@136
    move/from16 v20, v2

    #@138
    goto :goto_1

    #@139
    .line 1258
    .end local v11    # "i":I
    .end local v17    # "row":[Ljava/lang/String;
    :cond_10
    move/from16 v0, p2

    #@13b
    neg-int v2, v0

    #@13c
    add-int/lit8 v2, v2, -0x1

    #@13e
    return v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1364
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    #@4
    move-result-object v1

    #@5
    .line 1365
    .local v1, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string/jumbo v3, "serialVersionOnStream"

    #@8
    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    #@b
    move-result v2

    #@c
    .line 1367
    .local v2, "version":I
    if-lez v2, :cond_0

    #@e
    .line 1368
    const-string/jumbo v3, "defaultCenturyStart"

    #@11
    new-instance v4, Ljava/util/Date;

    #@13
    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    #@16
    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Ljava/util/Date;

    #@1c
    .line 1372
    .local v0, "date":Ljava/util/Date;
    :goto_0
    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->set2DigitYearStart(Ljava/util/Date;)V

    #@1f
    .line 1373
    const-string/jumbo v3, "formatData"

    #@22
    const/4 v4, 0x0

    #@23
    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    move-result-object v3

    #@27
    check-cast v3, Ljava/text/DateFormatSymbols;

    #@29
    iput-object v3, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@2b
    .line 1374
    const-string/jumbo v3, "pattern"

    #@2e
    const-string/jumbo v4, ""

    #@31
    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@34
    move-result-object v3

    #@35
    check-cast v3, Ljava/lang/String;

    #@37
    iput-object v3, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    #@39
    .line 1363
    return-void

    #@3a
    .line 1370
    .end local v0    # "date":Ljava/util/Date;
    :cond_0
    new-instance v0, Ljava/util/Date;

    #@3c
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    #@3f
    .restart local v0    # "date":Ljava/util/Date;
    goto :goto_0
.end method

.method private validatePattern(Ljava/lang/String;)V
    .locals 8
    .param p1, "template"    # Ljava/lang/String;

    #@0
    .prologue
    .line 273
    const/4 v5, 0x0

    #@1
    .line 274
    .local v5, "quote":Z
    const/4 v2, -0x1

    #@2
    .local v2, "last":I
    const/4 v0, 0x0

    #@3
    .line 276
    .local v0, "count":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@6
    move-result v4

    #@7
    .line 277
    .local v4, "patternLength":I
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_a

    #@a
    .line 278
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    #@d
    move-result v3

    #@e
    .line 279
    .local v3, "next":I
    const/16 v6, 0x27

    #@10
    if-ne v3, v6, :cond_3

    #@12
    .line 280
    if-lez v0, :cond_0

    #@14
    .line 281
    int-to-char v6, v2

    #@15
    invoke-direct {p0, v6}, Ljava/text/SimpleDateFormat;->validatePatternCharacter(C)V

    #@18
    .line 282
    const/4 v0, 0x0

    #@19
    .line 284
    :cond_0
    if-ne v2, v3, :cond_1

    #@1b
    .line 285
    const/4 v2, -0x1

    #@1c
    .line 289
    :goto_1
    if-eqz v5, :cond_2

    #@1e
    const/4 v5, 0x0

    #@1f
    .line 277
    :goto_2
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 287
    :cond_1
    move v2, v3

    #@23
    goto :goto_1

    #@24
    .line 289
    :cond_2
    const/4 v5, 0x1

    #@25
    goto :goto_2

    #@26
    .line 292
    :cond_3
    if-nez v5, :cond_6

    #@28
    .line 293
    if-eq v2, v3, :cond_4

    #@2a
    const/16 v6, 0x61

    #@2c
    if-lt v3, v6, :cond_5

    #@2e
    const/16 v6, 0x7a

    #@30
    if-gt v3, v6, :cond_5

    #@32
    .line 294
    :cond_4
    if-ne v2, v3, :cond_8

    #@34
    .line 295
    add-int/lit8 v0, v0, 0x1

    #@36
    goto :goto_2

    #@37
    .line 293
    :cond_5
    const/16 v6, 0x41

    #@39
    if-lt v3, v6, :cond_6

    #@3b
    const/16 v6, 0x5a

    #@3d
    if-le v3, v6, :cond_4

    #@3f
    .line 304
    :cond_6
    if-lez v0, :cond_7

    #@41
    .line 305
    int-to-char v6, v2

    #@42
    invoke-direct {p0, v6}, Ljava/text/SimpleDateFormat;->validatePatternCharacter(C)V

    #@45
    .line 306
    const/4 v0, 0x0

    #@46
    .line 308
    :cond_7
    const/4 v2, -0x1

    #@47
    goto :goto_2

    #@48
    .line 297
    :cond_8
    if-lez v0, :cond_9

    #@4a
    .line 298
    int-to-char v6, v2

    #@4b
    invoke-direct {p0, v6}, Ljava/text/SimpleDateFormat;->validatePatternCharacter(C)V

    #@4e
    .line 300
    :cond_9
    move v2, v3

    #@4f
    .line 301
    const/4 v0, 0x1

    #@50
    goto :goto_2

    #@51
    .line 311
    .end local v3    # "next":I
    :cond_a
    if-lez v0, :cond_b

    #@53
    .line 312
    int-to-char v6, v2

    #@54
    invoke-direct {p0, v6}, Ljava/text/SimpleDateFormat;->validatePatternCharacter(C)V

    #@57
    .line 315
    :cond_b
    if-eqz v5, :cond_c

    #@59
    .line 316
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@5b
    const-string/jumbo v7, "Unterminated quote"

    #@5e
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@61
    throw v6

    #@62
    .line 272
    :cond_c
    return-void
.end method

.method private validatePatternCharacter(C)V
    .locals 4
    .param p1, "format"    # C

    #@0
    .prologue
    .line 321
    const-string/jumbo v1, "GyMdkHmsSEDFwWahKzZLc"

    #@3
    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    #@6
    move-result v0

    #@7
    .line 322
    .local v0, "index":I
    const/4 v1, -0x1

    #@8
    if-ne v0, v1, :cond_0

    #@a
    .line 323
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "Unknown pattern character \'"

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    const-string/jumbo v3, "\'"

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v1

    #@2b
    .line 320
    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1355
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    #@3
    move-result-object v0

    #@4
    .line 1356
    .local v0, "fields":Ljava/io/ObjectOutputStream$PutField;
    const-string/jumbo v1, "defaultCenturyStart"

    #@7
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    #@9
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@c
    .line 1357
    const-string/jumbo v1, "formatData"

    #@f
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@11
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@14
    .line 1358
    const-string/jumbo v1, "pattern"

    #@17
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    #@19
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@1c
    .line 1359
    const-string/jumbo v1, "serialVersionOnStream"

    #@1f
    const/4 v2, 0x1

    #@20
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    #@23
    .line 1360
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    #@26
    .line 1354
    return-void
.end method


# virtual methods
.method public applyLocalizedPattern(Ljava/lang/String;)V
    .locals 3
    .param p1, "template"    # Ljava/lang/String;

    #@0
    .prologue
    .line 388
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@2
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getLocalPatternChars()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    const-string/jumbo v1, "GyMdkHmsSEDFwWahKzZLc"

    #@9
    const/4 v2, 0x1

    #@a
    invoke-static {p1, v0, v1, v2}, Ljava/text/SimpleDateFormat;->convertPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    #@10
    .line 387
    return-void
.end method

.method public applyPattern(Ljava/lang/String;)V
    .locals 0
    .param p1, "template"    # Ljava/lang/String;

    #@0
    .prologue
    .line 403
    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;->validatePattern(Ljava/lang/String;)V

    #@3
    .line 404
    iput-object p1, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    #@5
    .line 402
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    #@0
    .prologue
    .line 413
    invoke-super {p0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/text/SimpleDateFormat;

    #@6
    .line 414
    .local v0, "clone":Ljava/text/SimpleDateFormat;
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@8
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Ljava/text/DateFormatSymbols;

    #@e
    iput-object v1, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@10
    .line 415
    new-instance v1, Ljava/util/Date;

    #@12
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    #@14
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    #@17
    move-result-wide v2

    #@18
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@1b
    iput-object v1, v0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    #@1d
    .line 416
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 438
    if-ne p0, p1, :cond_0

    #@3
    .line 439
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 441
    :cond_0
    instance-of v2, p1, Ljava/text/SimpleDateFormat;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 442
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 444
    check-cast v0, Ljava/text/SimpleDateFormat;

    #@d
    .line 445
    .local v0, "simple":Ljava/text/SimpleDateFormat;
    invoke-super {p0, p1}, Ljava/text/DateFormat;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_2

    #@13
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    #@15
    iget-object v3, v0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_2

    #@1d
    .line 446
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@1f
    iget-object v2, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@21
    invoke-virtual {v1, v2}, Ljava/text/DateFormatSymbols;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v1

    #@25
    .line 445
    :cond_2
    return v1
.end method

.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "buffer"    # Ljava/lang/StringBuffer;
    .param p3, "fieldPos"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 829
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Ljava/text/SimpleDateFormat;->formatImpl(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 466
    if-nez p1, :cond_0

    #@2
    .line 467
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "object == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 469
    :cond_0
    instance-of v0, p1, Ljava/util/Date;

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 470
    check-cast p1, Ljava/util/Date;

    #@11
    .end local p1    # "object":Ljava/lang/Object;
    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;->formatToCharacterIteratorImpl(Ljava/util/Date;)Ljava/text/AttributedCharacterIterator;

    #@14
    move-result-object v0

    #@15
    return-object v0

    #@16
    .line 472
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Ljava/lang/Number;

    #@18
    if-eqz v0, :cond_2

    #@1a
    .line 473
    new-instance v0, Ljava/util/Date;

    #@1c
    check-cast p1, Ljava/lang/Number;

    #@1e
    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    #@21
    move-result-wide v2

    #@22
    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@25
    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->formatToCharacterIteratorImpl(Ljava/util/Date;)Ljava/text/AttributedCharacterIterator;

    #@28
    move-result-object v0

    #@29
    return-object v0

    #@2a
    .line 475
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2c
    new-instance v1, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v2, "Bad class: "

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@47
    throw v0
.end method

.method public get2DigitYearStart()Ljava/util/Date;
    .locals 1

    #@0
    .prologue
    .line 837
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    #@2
    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/Date;

    #@8
    return-object v0
.end method

.method public getDateFormatSymbols()Ljava/text/DateFormatSymbols;
    .locals 1

    #@0
    .prologue
    .line 846
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@2
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/text/DateFormatSymbols;

    #@8
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 851
    invoke-super {p0}, Ljava/text/DateFormat;->hashCode()I

    #@3
    move-result v0

    #@4
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    #@6
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@9
    move-result v1

    #@a
    add-int/2addr v0, v1

    #@b
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@d
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->hashCode()I

    #@10
    move-result v1

    #@11
    add-int/2addr v0, v1

    #@12
    iget v1, p0, Ljava/text/SimpleDateFormat;->creationYear:I

    #@14
    add-int/2addr v0, v1

    #@15
    return v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 13
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "position"    # Ljava/text/ParsePosition;

    #@0
    .prologue
    .line 1042
    const/4 v9, 0x0

    #@1
    .line 1043
    .local v9, "quote":Z
    const/4 v4, -0x1

    #@2
    .local v4, "last":I
    const/4 v0, 0x0

    #@3
    .local v0, "count":I
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    #@6
    move-result v7

    #@7
    .line 1044
    .local v7, "offset":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@a
    move-result v5

    #@b
    .line 1045
    .local v5, "length":I
    iget-object v11, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@d
    invoke-virtual {v11}, Ljava/util/Calendar;->clear()V

    #@10
    .line 1046
    iget-object v11, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@12
    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    #@15
    move-result-object v10

    #@16
    .line 1047
    .local v10, "zone":Ljava/util/TimeZone;
    iget-object v11, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    #@18
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    #@1b
    move-result v8

    #@1c
    .line 1048
    .local v8, "patternLength":I
    const/4 v3, 0x0

    #@1d
    .local v3, "i":I
    :goto_0
    if-ge v3, v8, :cond_10

    #@1f
    .line 1049
    iget-object v11, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    #@21
    invoke-virtual {v11, v3}, Ljava/lang/String;->charAt(I)C

    #@24
    move-result v6

    #@25
    .line 1050
    .local v6, "next":I
    const/16 v11, 0x27

    #@27
    if-ne v6, v11, :cond_6

    #@29
    .line 1051
    if-lez v0, :cond_1

    #@2b
    .line 1052
    int-to-char v11, v4

    #@2c
    invoke-direct {p0, p1, v7, v11, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;ICI)I

    #@2f
    move-result v7

    #@30
    if-gez v7, :cond_0

    #@32
    .line 1053
    neg-int v11, v7

    #@33
    add-int/lit8 v11, v11, -0x1

    #@35
    invoke-direct {p0, p2, v11, v10}, Ljava/text/SimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    #@38
    move-result-object v11

    #@39
    return-object v11

    #@3a
    .line 1055
    :cond_0
    const/4 v0, 0x0

    #@3b
    .line 1057
    :cond_1
    if-ne v4, v6, :cond_4

    #@3d
    .line 1058
    if-ge v7, v5, :cond_2

    #@3f
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    #@42
    move-result v11

    #@43
    const/16 v12, 0x27

    #@45
    if-eq v11, v12, :cond_3

    #@47
    .line 1059
    :cond_2
    invoke-direct {p0, p2, v7, v10}, Ljava/text/SimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    #@4a
    move-result-object v11

    #@4b
    return-object v11

    #@4c
    .line 1061
    :cond_3
    add-int/lit8 v7, v7, 0x1

    #@4e
    .line 1062
    const/4 v4, -0x1

    #@4f
    .line 1066
    :goto_1
    if-eqz v9, :cond_5

    #@51
    const/4 v9, 0x0

    #@52
    .line 1048
    :goto_2
    add-int/lit8 v3, v3, 0x1

    #@54
    goto :goto_0

    #@55
    .line 1064
    :cond_4
    move v4, v6

    #@56
    goto :goto_1

    #@57
    .line 1066
    :cond_5
    const/4 v9, 0x1

    #@58
    goto :goto_2

    #@59
    .line 1069
    :cond_6
    if-nez v9, :cond_9

    #@5b
    .line 1070
    if-eq v4, v6, :cond_7

    #@5d
    const/16 v11, 0x61

    #@5f
    if-lt v6, v11, :cond_8

    #@61
    const/16 v11, 0x7a

    #@63
    if-gt v6, v11, :cond_8

    #@65
    .line 1071
    :cond_7
    if-ne v4, v6, :cond_a

    #@67
    .line 1072
    add-int/lit8 v0, v0, 0x1

    #@69
    goto :goto_2

    #@6a
    .line 1070
    :cond_8
    const/16 v11, 0x41

    #@6c
    if-lt v6, v11, :cond_9

    #@6e
    const/16 v11, 0x5a

    #@70
    if-le v6, v11, :cond_7

    #@72
    .line 1083
    :cond_9
    if-lez v0, :cond_d

    #@74
    .line 1084
    int-to-char v11, v4

    #@75
    invoke-direct {p0, p1, v7, v11, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;ICI)I

    #@78
    move-result v7

    #@79
    if-gez v7, :cond_c

    #@7b
    .line 1085
    neg-int v11, v7

    #@7c
    add-int/lit8 v11, v11, -0x1

    #@7e
    invoke-direct {p0, p2, v11, v10}, Ljava/text/SimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    #@81
    move-result-object v11

    #@82
    return-object v11

    #@83
    .line 1074
    :cond_a
    if-lez v0, :cond_b

    #@85
    .line 1075
    int-to-char v11, v4

    #@86
    neg-int v12, v0

    #@87
    invoke-direct {p0, p1, v7, v11, v12}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;ICI)I

    #@8a
    move-result v7

    #@8b
    if-gez v7, :cond_b

    #@8d
    .line 1076
    neg-int v11, v7

    #@8e
    add-int/lit8 v11, v11, -0x1

    #@90
    invoke-direct {p0, p2, v11, v10}, Ljava/text/SimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    #@93
    move-result-object v11

    #@94
    return-object v11

    #@95
    .line 1079
    :cond_b
    move v4, v6

    #@96
    .line 1080
    const/4 v0, 0x1

    #@97
    goto :goto_2

    #@98
    .line 1087
    :cond_c
    const/4 v0, 0x0

    #@99
    .line 1089
    :cond_d
    const/4 v4, -0x1

    #@9a
    .line 1090
    if-ge v7, v5, :cond_e

    #@9c
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    #@9f
    move-result v11

    #@a0
    if-eq v11, v6, :cond_f

    #@a2
    .line 1091
    :cond_e
    invoke-direct {p0, p2, v7, v10}, Ljava/text/SimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    #@a5
    move-result-object v11

    #@a6
    return-object v11

    #@a7
    .line 1093
    :cond_f
    add-int/lit8 v7, v7, 0x1

    #@a9
    goto :goto_2

    #@aa
    .line 1096
    .end local v6    # "next":I
    :cond_10
    if-lez v0, :cond_11

    #@ac
    .line 1097
    int-to-char v11, v4

    #@ad
    invoke-direct {p0, p1, v7, v11, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;ICI)I

    #@b0
    move-result v7

    #@b1
    if-gez v7, :cond_11

    #@b3
    .line 1098
    neg-int v11, v7

    #@b4
    add-int/lit8 v11, v11, -0x1

    #@b6
    invoke-direct {p0, p2, v11, v10}, Ljava/text/SimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    #@b9
    move-result-object v11

    #@ba
    return-object v11

    #@bb
    .line 1103
    :cond_11
    :try_start_0
    iget-object v11, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@bd
    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@c0
    move-result-object v1

    #@c1
    .line 1107
    .local v1, "date":Ljava/util/Date;
    invoke-virtual {p2, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    #@c4
    .line 1108
    iget-object v11, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    #@c6
    invoke-virtual {v11, v10}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    #@c9
    .line 1109
    return-object v1

    #@ca
    .line 1104
    .end local v1    # "date":Ljava/util/Date;
    :catch_0
    move-exception v2

    #@cb
    .line 1105
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-direct {p0, p2, v7, v10}, Ljava/text/SimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    #@ce
    move-result-object v11

    #@cf
    return-object v11
.end method

.method public set2DigitYearStart(Ljava/util/Date;)V
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    #@0
    .prologue
    .line 1284
    invoke-virtual {p1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Ljava/util/Date;

    #@6
    iput-object v1, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    #@8
    .line 1285
    new-instance v0, Ljava/util/GregorianCalendar;

    #@a
    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    #@d
    .line 1286
    .local v0, "cal":Ljava/util/Calendar;
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    #@f
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    #@12
    .line 1287
    const/4 v1, 0x1

    #@13
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    #@16
    move-result v1

    #@17
    iput v1, p0, Ljava/text/SimpleDateFormat;->creationYear:I

    #@19
    .line 1283
    return-void
.end method

.method public setDateFormatSymbols(Ljava/text/DateFormatSymbols;)V
    .locals 1
    .param p1, "value"    # Ljava/text/DateFormatSymbols;

    #@0
    .prologue
    .line 1297
    invoke-virtual {p1}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/text/DateFormatSymbols;

    #@6
    iput-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@8
    .line 1296
    return-void
.end method

.method public toLocalizedPattern()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 1307
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    #@2
    const-string/jumbo v1, "GyMdkHmsSEDFwWahKzZLc"

    #@5
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    #@7
    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getLocalPatternChars()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    const/4 v3, 0x0

    #@c
    invoke-static {v0, v1, v2, v3}, Ljava/text/SimpleDateFormat;->convertPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method public toPattern()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1344
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    #@2
    return-object v0
.end method
