.class public Landroid/icu/impl/duration/impl/PeriodFormatterData;
.super Ljava/lang/Object;
.source "PeriodFormatterData.java"


# static fields
.field private static final FORM_DUAL:I = 0x2

.field private static final FORM_HALF_SPELLED:I = 0x6

.field private static final FORM_PAUCAL:I = 0x3

.field private static final FORM_PLURAL:I = 0x0

.field private static final FORM_SINGULAR:I = 0x1

.field private static final FORM_SINGULAR_NO_OMIT:I = 0x5

.field private static final FORM_SINGULAR_SPELLED:I = 0x4

.field public static trace:Z


# instance fields
.field final dr:Landroid/icu/impl/duration/impl/DataRecord;

.field localeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 38
    const/4 v0, 0x0

    #@1
    sput-boolean v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->trace:Z

    #@3
    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/icu/impl/duration/impl/DataRecord;)V
    .locals 2
    .param p1, "localeName"    # Ljava/lang/String;
    .param p2, "dr"    # Landroid/icu/impl/duration/impl/DataRecord;

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 41
    iput-object p2, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@5
    .line 42
    iput-object p1, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->localeName:Ljava/lang/String;

    #@7
    .line 43
    if-nez p1, :cond_0

    #@9
    .line 44
    new-instance v0, Ljava/lang/NullPointerException;

    #@b
    const-string/jumbo v1, "localename is null"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 47
    :cond_0
    if-nez p2, :cond_1

    #@14
    .line 49
    new-instance v0, Ljava/lang/NullPointerException;

    #@16
    const-string/jumbo v1, "data record is null"

    #@19
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 40
    :cond_1
    return-void
.end method

.method private computeForm(Landroid/icu/impl/duration/TimeUnit;IIZ)I
    .locals 11
    .param p1, "unit"    # Landroid/icu/impl/duration/TimeUnit;
    .param p2, "count"    # I
    .param p3, "cv"    # I
    .param p4, "lastOfMultiple"    # Z

    #@0
    .prologue
    const/4 v10, 0x2

    #@1
    const/4 v9, 0x3

    #@2
    const/4 v8, 0x5

    #@3
    const/4 v7, 0x0

    #@4
    const/4 v6, 0x1

    #@5
    .line 514
    sget-boolean v3, Landroid/icu/impl/duration/impl/PeriodFormatterData;->trace:Z

    #@7
    if-eqz v3, :cond_0

    #@9
    .line 515
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@b
    new-instance v4, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v5, "pfd.cf unit: "

    #@13
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    const-string/jumbo v5, " count: "

    #@1e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v4

    #@22
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    const-string/jumbo v5, " cv: "

    #@29
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    const-string/jumbo v5, " dr.pl: "

    #@34
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v4

    #@38
    iget-object v5, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@3a
    iget-byte v5, v5, Landroid/icu/impl/duration/impl/DataRecord;->pl:B

    #@3c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v4

    #@40
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v4

    #@44
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@47
    .line 516
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    #@4a
    .line 518
    :cond_0
    iget-object v3, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@4c
    iget-byte v3, v3, Landroid/icu/impl/duration/impl/DataRecord;->pl:B

    #@4e
    if-nez v3, :cond_1

    #@50
    .line 519
    return v7

    #@51
    .line 523
    :cond_1
    div-int/lit16 v2, p2, 0x3e8

    #@53
    .line 525
    .local v2, "val":I
    packed-switch p3, :pswitch_data_0

    #@56
    .line 573
    iget-object v3, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@58
    iget-byte v3, v3, Landroid/icu/impl/duration/impl/DataRecord;->decimalHandling:B

    #@5a
    packed-switch v3, :pswitch_data_1

    #@5d
    .line 589
    :cond_2
    :pswitch_0
    return v7

    #@5e
    .line 531
    :pswitch_1
    iget-object v3, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@60
    iget-byte v3, v3, Landroid/icu/impl/duration/impl/DataRecord;->fractionHandling:B

    #@62
    packed-switch v3, :pswitch_data_2

    #@65
    .line 569
    new-instance v3, Ljava/lang/IllegalStateException;

    #@67
    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    #@6a
    throw v3

    #@6b
    .line 533
    :pswitch_2
    return v7

    #@6c
    .line 540
    :pswitch_3
    div-int/lit16 v1, p2, 0x1f4

    #@6e
    .line 541
    .local v1, "v":I
    if-ne v1, v6, :cond_4

    #@70
    .line 542
    iget-object v3, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@72
    iget-object v3, v3, Landroid/icu/impl/duration/impl/DataRecord;->halfNames:[Ljava/lang/String;

    #@74
    if-eqz v3, :cond_3

    #@76
    iget-object v3, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@78
    iget-object v3, v3, Landroid/icu/impl/duration/impl/DataRecord;->halfNames:[Ljava/lang/String;

    #@7a
    invoke-virtual {p1}, Landroid/icu/impl/duration/TimeUnit;->ordinal()I

    #@7d
    move-result v4

    #@7e
    aget-object v3, v3, v4

    #@80
    if-eqz v3, :cond_3

    #@82
    .line 543
    const/4 v3, 0x6

    #@83
    return v3

    #@84
    .line 545
    :cond_3
    return v8

    #@85
    .line 547
    :cond_4
    and-int/lit8 v3, v1, 0x1

    #@87
    if-ne v3, v6, :cond_7

    #@89
    .line 548
    iget-object v3, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@8b
    iget-byte v3, v3, Landroid/icu/impl/duration/impl/DataRecord;->pl:B

    #@8d
    if-ne v3, v8, :cond_5

    #@8f
    const/16 v3, 0x15

    #@91
    if-le v1, v3, :cond_5

    #@93
    .line 549
    return v8

    #@94
    .line 551
    :cond_5
    if-ne v1, v9, :cond_7

    #@96
    iget-object v3, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@98
    iget-byte v3, v3, Landroid/icu/impl/duration/impl/DataRecord;->pl:B

    #@9a
    if-ne v3, v6, :cond_7

    #@9c
    .line 552
    iget-object v3, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@9e
    iget-byte v3, v3, Landroid/icu/impl/duration/impl/DataRecord;->fractionHandling:B

    #@a0
    if-eq v3, v10, :cond_7

    #@a2
    .line 553
    return v7

    #@a3
    .line 561
    .end local v1    # "v":I
    :pswitch_4
    div-int/lit16 v1, p2, 0x1f4

    #@a5
    .line 562
    .restart local v1    # "v":I
    if-eq v1, v6, :cond_6

    #@a7
    if-ne v1, v9, :cond_7

    #@a9
    .line 563
    :cond_6
    return v9

    #@aa
    .line 575
    .end local v1    # "v":I
    :pswitch_5
    return v8

    #@ab
    .line 577
    :pswitch_6
    const/16 v3, 0x3e8

    #@ad
    if-ge p2, v3, :cond_2

    #@af
    .line 578
    return v8

    #@b0
    .line 582
    :pswitch_7
    iget-object v3, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@b2
    iget-byte v3, v3, Landroid/icu/impl/duration/impl/DataRecord;->pl:B

    #@b4
    if-ne v3, v9, :cond_2

    #@b6
    .line 583
    return v9

    #@b7
    .line 594
    :cond_7
    :pswitch_8
    sget-boolean v3, Landroid/icu/impl/duration/impl/PeriodFormatterData;->trace:Z

    #@b9
    if-eqz v3, :cond_8

    #@bb
    if-nez p2, :cond_8

    #@bd
    .line 595
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@bf
    new-instance v4, Ljava/lang/StringBuilder;

    #@c1
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@c4
    const-string/jumbo v5, "EZeroHandling = "

    #@c7
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v4

    #@cb
    iget-object v5, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@cd
    iget-byte v5, v5, Landroid/icu/impl/duration/impl/DataRecord;->zeroHandling:B

    #@cf
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v4

    #@d3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d6
    move-result-object v4

    #@d7
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@da
    .line 597
    :cond_8
    if-nez p2, :cond_9

    #@dc
    iget-object v3, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@de
    iget-byte v3, v3, Landroid/icu/impl/duration/impl/DataRecord;->zeroHandling:B

    #@e0
    if-ne v3, v6, :cond_9

    #@e2
    .line 598
    const/4 v3, 0x4

    #@e3
    return v3

    #@e4
    .line 601
    :cond_9
    const/4 v0, 0x0

    #@e5
    .line 602
    .local v0, "form":I
    iget-object v3, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@e7
    iget-byte v3, v3, Landroid/icu/impl/duration/impl/DataRecord;->pl:B

    #@e9
    packed-switch v3, :pswitch_data_3

    #@ec
    .line 666
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@ee
    new-instance v4, Ljava/lang/StringBuilder;

    #@f0
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@f3
    const-string/jumbo v5, "dr.pl is "

    #@f6
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v4

    #@fa
    iget-object v5, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@fc
    iget-byte v5, v5, Landroid/icu/impl/duration/impl/DataRecord;->pl:B

    #@fe
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@101
    move-result-object v4

    #@102
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@105
    move-result-object v4

    #@106
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@109
    .line 667
    new-instance v3, Ljava/lang/IllegalStateException;

    #@10b
    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    #@10e
    throw v3

    #@10f
    .line 605
    :pswitch_9
    if-ne v2, v6, :cond_a

    #@111
    .line 606
    const/4 v0, 0x4

    #@112
    .line 670
    :cond_a
    :goto_0
    :pswitch_a
    return v0

    #@113
    .line 610
    :pswitch_b
    if-ne v2, v10, :cond_b

    #@115
    .line 611
    const/4 v0, 0x2

    #@116
    goto :goto_0

    #@117
    .line 612
    :cond_b
    if-ne v2, v6, :cond_a

    #@119
    .line 613
    const/4 v0, 0x1

    #@11a
    goto :goto_0

    #@11b
    .line 617
    :pswitch_c
    move v1, v2

    #@11c
    .line 618
    .restart local v1    # "v":I
    rem-int/lit8 v1, v1, 0x64

    #@11e
    .line 619
    const/16 v3, 0x14

    #@120
    if-le v1, v3, :cond_c

    #@122
    .line 620
    rem-int/lit8 v1, v1, 0xa

    #@124
    .line 622
    :cond_c
    if-ne v1, v6, :cond_d

    #@126
    .line 623
    const/4 v0, 0x1

    #@127
    goto :goto_0

    #@128
    .line 624
    :cond_d
    if-le v1, v6, :cond_a

    #@12a
    if-ge v1, v8, :cond_a

    #@12c
    .line 625
    const/4 v0, 0x3

    #@12d
    goto :goto_0

    #@12e
    .line 644
    .end local v1    # "v":I
    :pswitch_d
    if-ne v2, v10, :cond_e

    #@130
    .line 645
    const/4 v0, 0x2

    #@131
    goto :goto_0

    #@132
    .line 646
    :cond_e
    if-ne v2, v6, :cond_10

    #@134
    .line 647
    if-eqz p4, :cond_f

    #@136
    .line 648
    const/4 v0, 0x4

    #@137
    goto :goto_0

    #@138
    .line 650
    :cond_f
    const/4 v0, 0x1

    #@139
    goto :goto_0

    #@13a
    .line 652
    :cond_10
    sget-object v3, Landroid/icu/impl/duration/TimeUnit;->YEAR:Landroid/icu/impl/duration/TimeUnit;

    #@13c
    if-ne p1, v3, :cond_a

    #@13e
    const/16 v3, 0xb

    #@140
    if-le v2, v3, :cond_a

    #@142
    .line 653
    const/4 v0, 0x5

    #@143
    goto :goto_0

    #@144
    .line 657
    :pswitch_e
    if-ne v2, v10, :cond_11

    #@146
    .line 658
    const/4 v0, 0x2

    #@147
    goto :goto_0

    #@148
    .line 659
    :cond_11
    if-ne v2, v6, :cond_12

    #@14a
    .line 660
    const/4 v0, 0x1

    #@14b
    goto :goto_0

    #@14c
    .line 661
    :cond_12
    const/16 v3, 0xa

    #@14e
    if-le v2, v3, :cond_a

    #@150
    .line 662
    const/4 v0, 0x5

    #@151
    goto :goto_0

    #@152
    .line 525
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_1
    .end packed-switch

    #@15c
    .line 573
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    #@168
    .line 531
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch

    #@174
    .line 602
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method


# virtual methods
.method public allowZero()Z
    .locals 1

    #@0
    .prologue
    .line 74
    iget-object v0, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@2
    iget-boolean v0, v0, Landroid/icu/impl/duration/impl/DataRecord;->allowZero:Z

    #@4
    return v0
.end method

.method public appendCount(Landroid/icu/impl/duration/TimeUnit;ZZIIZLjava/lang/String;ZLjava/lang/StringBuffer;)I
    .locals 13
    .param p1, "unit"    # Landroid/icu/impl/duration/TimeUnit;
    .param p2, "omitCount"    # Z
    .param p3, "useDigitPrefix"    # Z
    .param p4, "count"    # I
    .param p5, "cv"    # I
    .param p6, "useSep"    # Z
    .param p7, "name"    # Ljava/lang/String;
    .param p8, "last"    # Z
    .param p9, "sb"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 259
    const/4 v10, 0x2

    #@1
    move/from16 v0, p5

    #@3
    if-ne v0, v10, :cond_0

    #@5
    iget-object v10, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@7
    iget-object v10, v10, Landroid/icu/impl/duration/impl/DataRecord;->halves:[Ljava/lang/String;

    #@9
    if-nez v10, :cond_0

    #@b
    .line 260
    const/16 p5, 0x0

    #@d
    .line 263
    :cond_0
    if-nez p2, :cond_1

    #@f
    if-eqz p3, :cond_1

    #@11
    iget-object v10, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@13
    iget-object v10, v10, Landroid/icu/impl/duration/impl/DataRecord;->digitPrefix:Ljava/lang/String;

    #@15
    if-eqz v10, :cond_1

    #@17
    .line 264
    iget-object v10, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@19
    iget-object v10, v10, Landroid/icu/impl/duration/impl/DataRecord;->digitPrefix:Ljava/lang/String;

    #@1b
    move-object/from16 v0, p9

    #@1d
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@20
    .line 267
    :cond_1
    invoke-virtual {p1}, Landroid/icu/impl/duration/TimeUnit;->ordinal()I

    #@23
    move-result v5

    #@24
    .line 268
    .local v5, "index":I
    packed-switch p5, :pswitch_data_0

    #@27
    .line 356
    const/4 v2, 0x1

    #@28
    .line 357
    .local v2, "decimals":I
    packed-switch p5, :pswitch_data_1

    #@2b
    .line 362
    :goto_0
    if-nez p2, :cond_2

    #@2d
    const/4 v10, 0x1

    #@2e
    move/from16 v0, p4

    #@30
    move-object/from16 v1, p9

    #@32
    invoke-virtual {p0, v0, v10, v2, v1}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendCountValue(IIILjava/lang/StringBuffer;)V

    #@35
    .line 365
    .end local v2    # "decimals":I
    :cond_2
    :goto_1
    if-nez p2, :cond_3

    #@37
    if-eqz p6, :cond_3

    #@39
    .line 366
    iget-object v10, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@3b
    iget-object v10, v10, Landroid/icu/impl/duration/impl/DataRecord;->countSep:Ljava/lang/String;

    #@3d
    move-object/from16 v0, p9

    #@3f
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@42
    .line 368
    :cond_3
    if-nez p2, :cond_4

    #@44
    iget-object v10, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@46
    iget-object v10, v10, Landroid/icu/impl/duration/impl/DataRecord;->measures:[Ljava/lang/String;

    #@48
    if-eqz v10, :cond_4

    #@4a
    iget-object v10, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@4c
    iget-object v10, v10, Landroid/icu/impl/duration/impl/DataRecord;->measures:[Ljava/lang/String;

    #@4e
    array-length v10, v10

    #@4f
    if-ge v5, v10, :cond_4

    #@51
    .line 369
    iget-object v10, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@53
    iget-object v10, v10, Landroid/icu/impl/duration/impl/DataRecord;->measures:[Ljava/lang/String;

    #@55
    aget-object v6, v10, v5

    #@57
    .line 370
    .local v6, "measure":Ljava/lang/String;
    if-eqz v6, :cond_4

    #@59
    .line 371
    move-object/from16 v0, p9

    #@5b
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5e
    .line 374
    .end local v6    # "measure":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p9

    #@60
    move-object/from16 v1, p7

    #@62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@65
    .line 375
    if-eqz p8, :cond_1b

    #@67
    .end local v5    # "index":I
    :goto_2
    return v5

    #@68
    .line 270
    .restart local v5    # "index":I
    :pswitch_0
    if-nez p2, :cond_2

    #@6a
    .line 271
    move/from16 v0, p4

    #@6c
    div-int/lit16 v10, v0, 0x3e8

    #@6e
    const/4 v11, 0x1

    #@6f
    const/16 v12, 0xa

    #@71
    move-object/from16 v0, p9

    #@73
    invoke-virtual {p0, v10, v11, v12, v0}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendInteger(IIILjava/lang/StringBuffer;)V

    #@76
    goto :goto_1

    #@77
    .line 276
    :pswitch_1
    move/from16 v0, p4

    #@79
    div-int/lit16 v9, v0, 0x3e8

    #@7b
    .line 278
    .local v9, "val":I
    sget-object v10, Landroid/icu/impl/duration/TimeUnit;->MINUTE:Landroid/icu/impl/duration/TimeUnit;

    #@7d
    if-ne p1, v10, :cond_b

    #@7f
    .line 279
    iget-object v10, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@81
    iget-object v10, v10, Landroid/icu/impl/duration/impl/DataRecord;->fiveMinutes:Ljava/lang/String;

    #@83
    if-nez v10, :cond_5

    #@85
    iget-object v10, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@87
    iget-object v10, v10, Landroid/icu/impl/duration/impl/DataRecord;->fifteenMinutes:Ljava/lang/String;

    #@89
    if-eqz v10, :cond_b

    #@8b
    .line 280
    :cond_5
    if-eqz v9, :cond_b

    #@8d
    rem-int/lit8 v10, v9, 0x5

    #@8f
    if-nez v10, :cond_b

    #@91
    .line 281
    iget-object v10, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@93
    iget-object v10, v10, Landroid/icu/impl/duration/impl/DataRecord;->fifteenMinutes:Ljava/lang/String;

    #@95
    if-eqz v10, :cond_9

    #@97
    const/16 v10, 0xf

    #@99
    if-eq v9, v10, :cond_6

    #@9b
    const/16 v10, 0x2d

    #@9d
    if-ne v9, v10, :cond_9

    #@9f
    .line 282
    :cond_6
    const/16 v10, 0xf

    #@a1
    if-ne v9, v10, :cond_8

    #@a3
    const/4 v9, 0x1

    #@a4
    .line 283
    :goto_3
    if-nez p2, :cond_7

    #@a6
    const/4 v10, 0x1

    #@a7
    const/16 v11, 0xa

    #@a9
    move-object/from16 v0, p9

    #@ab
    invoke-virtual {p0, v9, v10, v11, v0}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendInteger(IIILjava/lang/StringBuffer;)V

    #@ae
    .line 284
    :cond_7
    iget-object v10, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@b0
    iget-object v0, v10, Landroid/icu/impl/duration/impl/DataRecord;->fifteenMinutes:Ljava/lang/String;

    #@b2
    move-object/from16 p7, v0

    #@b4
    .line 285
    const/16 v5, 0x8

    #@b6
    .line 286
    goto/16 :goto_1

    #@b8
    .line 282
    :cond_8
    const/4 v9, 0x3

    #@b9
    goto :goto_3

    #@ba
    .line 288
    :cond_9
    iget-object v10, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@bc
    iget-object v10, v10, Landroid/icu/impl/duration/impl/DataRecord;->fiveMinutes:Ljava/lang/String;

    #@be
    if-eqz v10, :cond_b

    #@c0
    .line 289
    div-int/lit8 v9, v9, 0x5

    #@c2
    .line 290
    if-nez p2, :cond_a

    #@c4
    const/4 v10, 0x1

    #@c5
    const/16 v11, 0xa

    #@c7
    move-object/from16 v0, p9

    #@c9
    invoke-virtual {p0, v9, v10, v11, v0}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendInteger(IIILjava/lang/StringBuffer;)V

    #@cc
    .line 291
    :cond_a
    iget-object v10, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@ce
    iget-object v0, v10, Landroid/icu/impl/duration/impl/DataRecord;->fiveMinutes:Ljava/lang/String;

    #@d0
    move-object/from16 p7, v0

    #@d2
    .line 292
    const/16 v5, 0x9

    #@d4
    .line 293
    goto/16 :goto_1

    #@d6
    .line 297
    :cond_b
    if-nez p2, :cond_2

    #@d8
    const/4 v10, 0x1

    #@d9
    const/16 v11, 0xa

    #@db
    move-object/from16 v0, p9

    #@dd
    invoke-virtual {p0, v9, v10, v11, v0}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendInteger(IIILjava/lang/StringBuffer;)V

    #@e0
    goto/16 :goto_1

    #@e2
    .line 302
    .end local v9    # "val":I
    :pswitch_2
    move/from16 v0, p4

    #@e4
    div-int/lit16 v8, v0, 0x1f4

    #@e6
    .line 303
    .local v8, "v":I
    const/4 v10, 0x1

    #@e7
    if-eq v8, v10, :cond_c

    #@e9
    .line 304
    if-nez p2, :cond_c

    #@eb
    const/4 v10, 0x1

    #@ec
    const/4 v11, 0x0

    #@ed
    move/from16 v0, p4

    #@ef
    move-object/from16 v1, p9

    #@f1
    invoke-virtual {p0, v0, v10, v11, v1}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendCountValue(IIILjava/lang/StringBuffer;)V

    #@f4
    .line 306
    :cond_c
    and-int/lit8 v10, v8, 0x1

    #@f6
    const/4 v11, 0x1

    #@f7
    if-ne v10, v11, :cond_2

    #@f9
    .line 308
    const/4 v10, 0x1

    #@fa
    if-ne v8, v10, :cond_e

    #@fc
    iget-object v10, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@fe
    iget-object v10, v10, Landroid/icu/impl/duration/impl/DataRecord;->halfNames:[Ljava/lang/String;

    #@100
    if-eqz v10, :cond_e

    #@102
    iget-object v10, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@104
    iget-object v10, v10, Landroid/icu/impl/duration/impl/DataRecord;->halfNames:[Ljava/lang/String;

    #@106
    aget-object v10, v10, v5

    #@108
    if-eqz v10, :cond_e

    #@10a
    .line 309
    move-object/from16 v0, p9

    #@10c
    move-object/from16 v1, p7

    #@10e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@111
    .line 310
    if-eqz p8, :cond_d

    #@113
    .end local v5    # "index":I
    :goto_4
    return v5

    #@114
    .restart local v5    # "index":I
    :cond_d
    const/4 v5, -0x1

    #@115
    goto :goto_4

    #@116
    .line 313
    :cond_e
    const/4 v10, 0x1

    #@117
    if-ne v8, v10, :cond_10

    #@119
    const/4 v7, 0x0

    #@11a
    .line 314
    .local v7, "solox":I
    :goto_5
    iget-object v10, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@11c
    iget-object v10, v10, Landroid/icu/impl/duration/impl/DataRecord;->genders:[B

    #@11e
    if-eqz v10, :cond_f

    #@120
    iget-object v10, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@122
    iget-object v10, v10, Landroid/icu/impl/duration/impl/DataRecord;->halves:[Ljava/lang/String;

    #@124
    array-length v10, v10

    #@125
    const/4 v11, 0x2

    #@126
    if-le v10, v11, :cond_f

    #@128
    .line 315
    iget-object v10, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@12a
    iget-object v10, v10, Landroid/icu/impl/duration/impl/DataRecord;->genders:[B

    #@12c
    aget-byte v10, v10, v5

    #@12e
    const/4 v11, 0x1

    #@12f
    if-ne v10, v11, :cond_f

    #@131
    .line 316
    add-int/lit8 v7, v7, 0x2

    #@133
    .line 319
    :cond_f
    iget-object v10, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@135
    iget-object v10, v10, Landroid/icu/impl/duration/impl/DataRecord;->halfPlacements:[B

    #@137
    if-nez v10, :cond_11

    #@139
    .line 320
    const/4 v4, 0x0

    #@13a
    .line 322
    .local v4, "hp":I
    :goto_6
    iget-object v10, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@13c
    iget-object v10, v10, Landroid/icu/impl/duration/impl/DataRecord;->halves:[Ljava/lang/String;

    #@13e
    aget-object v3, v10, v7

    #@140
    .line 323
    .local v3, "half":Ljava/lang/String;
    iget-object v10, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@142
    iget-object v10, v10, Landroid/icu/impl/duration/impl/DataRecord;->measures:[Ljava/lang/String;

    #@144
    if-nez v10, :cond_12

    #@146
    const/4 v6, 0x0

    #@147
    .line 324
    :goto_7
    packed-switch v4, :pswitch_data_2

    #@14a
    goto/16 :goto_1

    #@14c
    .line 326
    :pswitch_3
    move-object/from16 v0, p9

    #@14e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@151
    goto/16 :goto_1

    #@153
    .line 313
    .end local v3    # "half":Ljava/lang/String;
    .end local v4    # "hp":I
    .end local v7    # "solox":I
    :cond_10
    const/4 v7, 0x1

    #@154
    .restart local v7    # "solox":I
    goto :goto_5

    #@155
    .line 321
    :cond_11
    iget-object v10, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@157
    iget-object v10, v10, Landroid/icu/impl/duration/impl/DataRecord;->halfPlacements:[B

    #@159
    and-int/lit8 v11, v7, 0x1

    #@15b
    aget-byte v4, v10, v11

    #@15d
    goto :goto_6

    #@15e
    .line 323
    .restart local v3    # "half":Ljava/lang/String;
    .restart local v4    # "hp":I
    :cond_12
    iget-object v10, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@160
    iget-object v10, v10, Landroid/icu/impl/duration/impl/DataRecord;->measures:[Ljava/lang/String;

    #@162
    aget-object v6, v10, v5

    #@164
    .restart local v6    # "measure":Ljava/lang/String;
    goto :goto_7

    #@165
    .line 329
    .end local v6    # "measure":Ljava/lang/String;
    :pswitch_4
    if-eqz v6, :cond_15

    #@167
    .line 330
    move-object/from16 v0, p9

    #@169
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@16c
    .line 331
    move-object/from16 v0, p9

    #@16e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@171
    .line 332
    if-eqz p6, :cond_13

    #@173
    if-eqz p2, :cond_14

    #@175
    .line 335
    :cond_13
    :goto_8
    move-object/from16 v0, p9

    #@177
    move-object/from16 v1, p7

    #@179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@17c
    .line 341
    const/4 v10, -0x1

    #@17d
    return v10

    #@17e
    .line 333
    :cond_14
    iget-object v10, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@180
    iget-object v10, v10, Landroid/icu/impl/duration/impl/DataRecord;->countSep:Ljava/lang/String;

    #@182
    move-object/from16 v0, p9

    #@184
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@187
    goto :goto_8

    #@188
    .line 337
    :cond_15
    move-object/from16 v0, p9

    #@18a
    move-object/from16 v1, p7

    #@18c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@18f
    .line 338
    move-object/from16 v0, p9

    #@191
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@194
    .line 339
    if-eqz p8, :cond_16

    #@196
    .end local v5    # "index":I
    :goto_9
    return v5

    #@197
    .restart local v5    # "index":I
    :cond_16
    const/4 v5, -0x1

    #@198
    goto :goto_9

    #@199
    .line 343
    :pswitch_5
    if-eqz v6, :cond_17

    #@19b
    .line 344
    move-object/from16 v0, p9

    #@19d
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1a0
    .line 346
    :cond_17
    if-eqz p6, :cond_18

    #@1a2
    if-eqz p2, :cond_19

    #@1a4
    .line 349
    :cond_18
    :goto_a
    move-object/from16 v0, p9

    #@1a6
    move-object/from16 v1, p7

    #@1a8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1ab
    .line 350
    move-object/from16 v0, p9

    #@1ad
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1b0
    .line 351
    if-eqz p8, :cond_1a

    #@1b2
    .end local v5    # "index":I
    :goto_b
    return v5

    #@1b3
    .line 347
    .restart local v5    # "index":I
    :cond_19
    iget-object v10, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@1b5
    iget-object v10, v10, Landroid/icu/impl/duration/impl/DataRecord;->countSep:Ljava/lang/String;

    #@1b7
    move-object/from16 v0, p9

    #@1b9
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1bc
    goto :goto_a

    #@1bd
    .line 351
    :cond_1a
    const/4 v5, -0x1

    #@1be
    goto :goto_b

    #@1bf
    .line 358
    .end local v3    # "half":Ljava/lang/String;
    .end local v4    # "hp":I
    .end local v7    # "solox":I
    .end local v8    # "v":I
    .restart local v2    # "decimals":I
    :pswitch_6
    const/4 v2, 0x2

    #@1c0
    goto/16 :goto_0

    #@1c2
    .line 359
    :pswitch_7
    const/4 v2, 0x3

    #@1c3
    goto/16 :goto_0

    #@1c5
    .line 375
    .end local v2    # "decimals":I
    :cond_1b
    const/4 v5, -0x1

    #@1c6
    goto/16 :goto_2

    #@1c8
    .line 268
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    #@1d2
    .line 357
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_6
        :pswitch_7
    .end packed-switch

    #@1da
    .line 324
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public appendCountValue(IIILjava/lang/StringBuffer;)V
    .locals 9
    .param p1, "count"    # I
    .param p2, "integralDigits"    # I
    .param p3, "decimalDigits"    # I
    .param p4, "sb"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    const/16 v8, 0x20

    #@2
    const/16 v5, 0xa

    #@4
    .line 388
    div-int/lit16 v7, p1, 0x3e8

    #@6
    .line 389
    .local v7, "ival":I
    if-nez p3, :cond_0

    #@8
    .line 390
    invoke-virtual {p0, v7, p2, v5, p4}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendInteger(IIILjava/lang/StringBuffer;)V

    #@b
    .line 391
    return-void

    #@c
    .line 394
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@e
    iget-boolean v1, v1, Landroid/icu/impl/duration/impl/DataRecord;->requiresDigitSeparator:Z

    #@10
    if-eqz v1, :cond_1

    #@12
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    #@15
    move-result v1

    #@16
    if-lez v1, :cond_1

    #@18
    .line 395
    invoke-virtual {p4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@1b
    .line 397
    :cond_1
    int-to-long v2, v7

    #@1c
    move-object v1, p0

    #@1d
    move v4, p2

    #@1e
    move-object v6, p4

    #@1f
    invoke-virtual/range {v1 .. v6}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendDigits(JIILjava/lang/StringBuffer;)V

    #@22
    .line 398
    rem-int/lit16 v0, p1, 0x3e8

    #@24
    .line 399
    .local v0, "dval":I
    const/4 v1, 0x1

    #@25
    if-ne p3, v1, :cond_4

    #@27
    .line 400
    div-int/lit8 v0, v0, 0x64

    #@29
    .line 404
    :cond_2
    :goto_0
    iget-object v1, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@2b
    iget-char v1, v1, Landroid/icu/impl/duration/impl/DataRecord;->decimalSep:C

    #@2d
    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@30
    .line 405
    int-to-long v2, v0

    #@31
    move-object v1, p0

    #@32
    move v4, p3

    #@33
    move v5, p3

    #@34
    move-object v6, p4

    #@35
    invoke-virtual/range {v1 .. v6}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendDigits(JIILjava/lang/StringBuffer;)V

    #@38
    .line 406
    iget-object v1, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@3a
    iget-boolean v1, v1, Landroid/icu/impl/duration/impl/DataRecord;->requiresDigitSeparator:Z

    #@3c
    if-eqz v1, :cond_3

    #@3e
    .line 407
    invoke-virtual {p4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@41
    .line 387
    :cond_3
    return-void

    #@42
    .line 401
    :cond_4
    const/4 v1, 0x2

    #@43
    if-ne p3, v1, :cond_2

    #@45
    .line 402
    div-int/lit8 v0, v0, 0xa

    #@47
    goto :goto_0
.end method

.method public appendDigits(JIILjava/lang/StringBuffer;)V
    .locals 13
    .param p1, "num"    # J
    .param p3, "mindigits"    # I
    .param p4, "maxdigits"    # I
    .param p5, "sb"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    const-wide/16 v10, 0xa

    #@2
    .line 448
    move/from16 v0, p4

    #@4
    new-array v2, v0, [C

    #@6
    .line 449
    .local v2, "buf":[C
    move/from16 v4, p4

    #@8
    .line 450
    .local v4, "ix":I
    :goto_0
    if-lez v4, :cond_0

    #@a
    const-wide/16 v6, 0x0

    #@c
    cmp-long v5, p1, v6

    #@e
    if-lez v5, :cond_0

    #@10
    .line 451
    add-int/lit8 v4, v4, -0x1

    #@12
    iget-object v5, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@14
    iget-char v5, v5, Landroid/icu/impl/duration/impl/DataRecord;->zero:C

    #@16
    int-to-long v6, v5

    #@17
    rem-long v8, p1, v10

    #@19
    add-long/2addr v6, v8

    #@1a
    long-to-int v5, v6

    #@1b
    int-to-char v5, v5

    #@1c
    aput-char v5, v2, v4

    #@1e
    .line 452
    div-long/2addr p1, v10

    #@1f
    goto :goto_0

    #@20
    .line 454
    :cond_0
    sub-int v3, p4, p3

    #@22
    .local v3, "e":I
    :goto_1
    if-le v4, v3, :cond_1

    #@24
    .line 455
    add-int/lit8 v4, v4, -0x1

    #@26
    iget-object v5, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@28
    iget-char v5, v5, Landroid/icu/impl/duration/impl/DataRecord;->zero:C

    #@2a
    aput-char v5, v2, v4

    #@2c
    goto :goto_1

    #@2d
    .line 457
    :cond_1
    sub-int v5, p4, v4

    #@2f
    move-object/from16 v0, p5

    #@31
    invoke-virtual {v0, v2, v4, v5}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    #@34
    .line 447
    return-void
.end method

.method public appendInteger(IIILjava/lang/StringBuffer;)V
    .locals 8
    .param p1, "num"    # I
    .param p2, "mindigits"    # I
    .param p3, "maxdigits"    # I
    .param p4, "sb"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    const/16 v7, 0x20

    #@2
    .line 413
    iget-object v1, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@4
    iget-object v1, v1, Landroid/icu/impl/duration/impl/DataRecord;->numberNames:[Ljava/lang/String;

    #@6
    if-eqz v1, :cond_0

    #@8
    iget-object v1, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@a
    iget-object v1, v1, Landroid/icu/impl/duration/impl/DataRecord;->numberNames:[Ljava/lang/String;

    #@c
    array-length v1, v1

    #@d
    if-ge p1, v1, :cond_0

    #@f
    .line 414
    iget-object v1, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@11
    iget-object v1, v1, Landroid/icu/impl/duration/impl/DataRecord;->numberNames:[Ljava/lang/String;

    #@13
    aget-object v0, v1, p1

    #@15
    .line 415
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@17
    .line 416
    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1a
    .line 417
    return-void

    #@1b
    .line 421
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@1d
    iget-boolean v1, v1, Landroid/icu/impl/duration/impl/DataRecord;->requiresDigitSeparator:Z

    #@1f
    if-eqz v1, :cond_1

    #@21
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    #@24
    move-result v1

    #@25
    if-lez v1, :cond_1

    #@27
    .line 422
    invoke-virtual {p4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@2a
    .line 424
    :cond_1
    iget-object v1, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@2c
    iget-byte v1, v1, Landroid/icu/impl/duration/impl/DataRecord;->numberSystem:B

    #@2e
    packed-switch v1, :pswitch_data_0

    #@31
    .line 433
    :goto_0
    iget-object v1, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@33
    iget-boolean v1, v1, Landroid/icu/impl/duration/impl/DataRecord;->requiresDigitSeparator:Z

    #@35
    if-eqz v1, :cond_2

    #@37
    .line 434
    invoke-virtual {p4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@3a
    .line 412
    :cond_2
    return-void

    #@3b
    .line 425
    :pswitch_0
    int-to-long v2, p1

    #@3c
    move-object v1, p0

    #@3d
    move v4, p2

    #@3e
    move v5, p3

    #@3f
    move-object v6, p4

    #@40
    invoke-virtual/range {v1 .. v6}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendDigits(JIILjava/lang/StringBuffer;)V

    #@43
    goto :goto_0

    #@44
    .line 427
    :pswitch_1
    int-to-long v2, p1

    #@45
    sget-object v1, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->TRADITIONAL:Landroid/icu/impl/duration/impl/Utils$ChineseDigits;

    #@47
    invoke-static {v2, v3, v1}, Landroid/icu/impl/duration/impl/Utils;->chineseNumber(JLandroid/icu/impl/duration/impl/Utils$ChineseDigits;)Ljava/lang/String;

    #@4a
    move-result-object v1

    #@4b
    .line 426
    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4e
    goto :goto_0

    #@4f
    .line 429
    :pswitch_2
    int-to-long v2, p1

    #@50
    sget-object v1, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->SIMPLIFIED:Landroid/icu/impl/duration/impl/Utils$ChineseDigits;

    #@52
    invoke-static {v2, v3, v1}, Landroid/icu/impl/duration/impl/Utils;->chineseNumber(JLandroid/icu/impl/duration/impl/Utils$ChineseDigits;)Ljava/lang/String;

    #@55
    move-result-object v1

    #@56
    .line 428
    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@59
    goto :goto_0

    #@5a
    .line 431
    :pswitch_3
    int-to-long v2, p1

    #@5b
    sget-object v1, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->KOREAN:Landroid/icu/impl/duration/impl/Utils$ChineseDigits;

    #@5d
    invoke-static {v2, v3, v1}, Landroid/icu/impl/duration/impl/Utils;->chineseNumber(JLandroid/icu/impl/duration/impl/Utils$ChineseDigits;)Ljava/lang/String;

    #@60
    move-result-object v1

    #@61
    .line 430
    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@64
    goto :goto_0

    #@65
    .line 424
    nop

    #@66
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public appendPrefix(IILjava/lang/StringBuffer;)Z
    .locals 4
    .param p1, "tl"    # I
    .param p2, "td"    # I
    .param p3, "sb"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 95
    iget-object v3, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@2
    iget-object v3, v3, Landroid/icu/impl/duration/impl/DataRecord;->scopeData:[Landroid/icu/impl/duration/impl/DataRecord$ScopeData;

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 96
    mul-int/lit8 v3, p1, 0x3

    #@8
    add-int v0, v3, p2

    #@a
    .line 97
    .local v0, "ix":I
    iget-object v3, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@c
    iget-object v3, v3, Landroid/icu/impl/duration/impl/DataRecord;->scopeData:[Landroid/icu/impl/duration/impl/DataRecord$ScopeData;

    #@e
    aget-object v2, v3, v0

    #@10
    .line 98
    .local v2, "sd":Landroid/icu/impl/duration/impl/DataRecord$ScopeData;
    if-eqz v2, :cond_0

    #@12
    .line 99
    iget-object v1, v2, Landroid/icu/impl/duration/impl/DataRecord$ScopeData;->prefix:Ljava/lang/String;

    #@14
    .line 100
    .local v1, "prefix":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@16
    .line 101
    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@19
    .line 102
    iget-boolean v3, v2, Landroid/icu/impl/duration/impl/DataRecord$ScopeData;->requiresDigitPrefix:Z

    #@1b
    return v3

    #@1c
    .line 106
    .end local v0    # "ix":I
    .end local v1    # "prefix":Ljava/lang/String;
    .end local v2    # "sd":Landroid/icu/impl/duration/impl/DataRecord$ScopeData;
    :cond_0
    const/4 v3, 0x0

    #@1d
    return v3
.end method

.method public appendSkippedUnit(Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 465
    iget-object v0, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@2
    iget-object v0, v0, Landroid/icu/impl/duration/impl/DataRecord;->skippedUnitMarker:Ljava/lang/String;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 466
    iget-object v0, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@8
    iget-object v0, v0, Landroid/icu/impl/duration/impl/DataRecord;->skippedUnitMarker:Ljava/lang/String;

    #@a
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@d
    .line 464
    :cond_0
    return-void
.end method

.method public appendSuffix(IILjava/lang/StringBuffer;)V
    .locals 6
    .param p1, "tl"    # I
    .param p2, "td"    # I
    .param p3, "sb"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 118
    iget-object v3, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@2
    iget-object v3, v3, Landroid/icu/impl/duration/impl/DataRecord;->scopeData:[Landroid/icu/impl/duration/impl/DataRecord$ScopeData;

    #@4
    if-eqz v3, :cond_1

    #@6
    .line 119
    mul-int/lit8 v3, p1, 0x3

    #@8
    add-int v0, v3, p2

    #@a
    .line 120
    .local v0, "ix":I
    iget-object v3, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@c
    iget-object v3, v3, Landroid/icu/impl/duration/impl/DataRecord;->scopeData:[Landroid/icu/impl/duration/impl/DataRecord$ScopeData;

    #@e
    aget-object v1, v3, v0

    #@10
    .line 121
    .local v1, "sd":Landroid/icu/impl/duration/impl/DataRecord$ScopeData;
    if-eqz v1, :cond_1

    #@12
    .line 122
    iget-object v2, v1, Landroid/icu/impl/duration/impl/DataRecord$ScopeData;->suffix:Ljava/lang/String;

    #@14
    .line 123
    .local v2, "suffix":Ljava/lang/String;
    if-eqz v2, :cond_1

    #@16
    .line 124
    sget-boolean v3, Landroid/icu/impl/duration/impl/PeriodFormatterData;->trace:Z

    #@18
    if-eqz v3, :cond_0

    #@1a
    .line 125
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1c
    new-instance v4, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v5, "appendSuffix \'"

    #@24
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    const-string/jumbo v5, "\'"

    #@2f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3a
    .line 127
    :cond_0
    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3d
    .line 117
    .end local v0    # "ix":I
    .end local v1    # "sd":Landroid/icu/impl/duration/impl/DataRecord$ScopeData;
    .end local v2    # "suffix":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public appendUnit(Landroid/icu/impl/duration/TimeUnit;IIIZZZZZLjava/lang/StringBuffer;)Z
    .locals 22
    .param p1, "unit"    # Landroid/icu/impl/duration/TimeUnit;
    .param p2, "count"    # I
    .param p3, "cv"    # I
    .param p4, "uv"    # I
    .param p5, "useCountSep"    # Z
    .param p6, "useDigitPrefix"    # Z
    .param p7, "multiple"    # Z
    .param p8, "last"    # Z
    .param p9, "wasSkipped"    # Z
    .param p10, "sb"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 154
    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/duration/TimeUnit;->ordinal()I

    #@3
    move-result v17

    #@4
    .line 156
    .local v17, "px":I
    const/16 v21, 0x0

    #@6
    .line 157
    .local v21, "willRequireSkipMarker":Z
    move-object/from16 v0, p0

    #@8
    iget-object v4, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@a
    iget-object v4, v4, Landroid/icu/impl/duration/impl/DataRecord;->requiresSkipMarker:[Z

    #@c
    if-eqz v4, :cond_1

    #@e
    move-object/from16 v0, p0

    #@10
    iget-object v4, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@12
    iget-object v4, v4, Landroid/icu/impl/duration/impl/DataRecord;->requiresSkipMarker:[Z

    #@14
    aget-boolean v4, v4, v17

    #@16
    if-eqz v4, :cond_1

    #@18
    .line 158
    move-object/from16 v0, p0

    #@1a
    iget-object v4, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@1c
    iget-object v4, v4, Landroid/icu/impl/duration/impl/DataRecord;->skippedUnitMarker:Ljava/lang/String;

    #@1e
    if-eqz v4, :cond_1

    #@20
    .line 159
    if-nez p9, :cond_0

    #@22
    if-eqz p8, :cond_0

    #@24
    .line 160
    move-object/from16 v0, p0

    #@26
    iget-object v4, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@28
    iget-object v4, v4, Landroid/icu/impl/duration/impl/DataRecord;->skippedUnitMarker:Ljava/lang/String;

    #@2a
    move-object/from16 v0, p10

    #@2c
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2f
    .line 162
    :cond_0
    const/16 v21, 0x1

    #@31
    .line 165
    :cond_1
    if-eqz p4, :cond_7

    #@33
    .line 166
    const/4 v4, 0x1

    #@34
    move/from16 v0, p4

    #@36
    if-ne v0, v4, :cond_4

    #@38
    const/16 v20, 0x1

    #@3a
    .line 167
    .local v20, "useMedium":Z
    :goto_0
    if-eqz v20, :cond_5

    #@3c
    move-object/from16 v0, p0

    #@3e
    iget-object v4, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@40
    iget-object v0, v4, Landroid/icu/impl/duration/impl/DataRecord;->mediumNames:[Ljava/lang/String;

    #@42
    move-object/from16 v16, v0

    #@44
    .line 168
    .local v16, "names":[Ljava/lang/String;
    :goto_1
    if-eqz v16, :cond_2

    #@46
    aget-object v4, v16, v17

    #@48
    if-nez v4, :cond_3

    #@4a
    .line 169
    :cond_2
    if-eqz v20, :cond_6

    #@4c
    move-object/from16 v0, p0

    #@4e
    iget-object v4, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@50
    iget-object v0, v4, Landroid/icu/impl/duration/impl/DataRecord;->shortNames:[Ljava/lang/String;

    #@52
    move-object/from16 v16, v0

    #@54
    .line 171
    :cond_3
    :goto_2
    if-eqz v16, :cond_7

    #@56
    aget-object v4, v16, v17

    #@58
    if-eqz v4, :cond_7

    #@5a
    .line 173
    aget-object v11, v16, v17

    #@5c
    .line 172
    const/4 v6, 0x0

    #@5d
    const/4 v7, 0x0

    #@5e
    move-object/from16 v4, p0

    #@60
    move-object/from16 v5, p1

    #@62
    move/from16 v8, p2

    #@64
    move/from16 v9, p3

    #@66
    move/from16 v10, p5

    #@68
    move/from16 v12, p8

    #@6a
    move-object/from16 v13, p10

    #@6c
    invoke-virtual/range {v4 .. v13}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendCount(Landroid/icu/impl/duration/TimeUnit;ZZIIZLjava/lang/String;ZLjava/lang/StringBuffer;)I

    #@6f
    .line 174
    const/4 v4, 0x0

    #@70
    return v4

    #@71
    .line 166
    .end local v16    # "names":[Ljava/lang/String;
    .end local v20    # "useMedium":Z
    :cond_4
    const/16 v20, 0x0

    #@73
    .restart local v20    # "useMedium":Z
    goto :goto_0

    #@74
    .line 167
    :cond_5
    move-object/from16 v0, p0

    #@76
    iget-object v4, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@78
    iget-object v0, v4, Landroid/icu/impl/duration/impl/DataRecord;->shortNames:[Ljava/lang/String;

    #@7a
    move-object/from16 v16, v0

    #@7c
    .restart local v16    # "names":[Ljava/lang/String;
    goto :goto_1

    #@7d
    .line 169
    :cond_6
    move-object/from16 v0, p0

    #@7f
    iget-object v4, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@81
    iget-object v0, v4, Landroid/icu/impl/duration/impl/DataRecord;->mediumNames:[Ljava/lang/String;

    #@83
    move-object/from16 v16, v0

    #@85
    goto :goto_2

    #@86
    .line 179
    .end local v16    # "names":[Ljava/lang/String;
    .end local v20    # "useMedium":Z
    :cond_7
    const/4 v4, 0x2

    #@87
    move/from16 v0, p3

    #@89
    if-ne v0, v4, :cond_8

    #@8b
    move-object/from16 v0, p0

    #@8d
    iget-object v4, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@8f
    iget-object v4, v4, Landroid/icu/impl/duration/impl/DataRecord;->halfSupport:[B

    #@91
    if-eqz v4, :cond_8

    #@93
    .line 180
    move-object/from16 v0, p0

    #@95
    iget-object v4, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@97
    iget-object v4, v4, Landroid/icu/impl/duration/impl/DataRecord;->halfSupport:[B

    #@99
    aget-byte v4, v4, v17

    #@9b
    packed-switch v4, :pswitch_data_0

    #@9e
    .line 194
    :cond_8
    :goto_3
    :pswitch_0
    const/4 v11, 0x0

    #@9f
    .line 195
    .local v11, "name":Ljava/lang/String;
    if-eqz p7, :cond_e

    #@a1
    move/from16 v4, p8

    #@a3
    :goto_4
    move-object/from16 v0, p0

    #@a5
    move-object/from16 v1, p1

    #@a7
    move/from16 v2, p2

    #@a9
    move/from16 v3, p3

    #@ab
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->computeForm(Landroid/icu/impl/duration/TimeUnit;IIZ)I

    #@ae
    move-result v15

    #@af
    .line 196
    .local v15, "form":I
    const/4 v4, 0x4

    #@b0
    if-ne v15, v4, :cond_10

    #@b2
    .line 197
    move-object/from16 v0, p0

    #@b4
    iget-object v4, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@b6
    iget-object v4, v4, Landroid/icu/impl/duration/impl/DataRecord;->singularNames:[Ljava/lang/String;

    #@b8
    if-nez v4, :cond_f

    #@ba
    .line 198
    const/4 v15, 0x1

    #@bb
    .line 199
    move-object/from16 v0, p0

    #@bd
    iget-object v4, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@bf
    iget-object v4, v4, Landroid/icu/impl/duration/impl/DataRecord;->pluralNames:[[Ljava/lang/String;

    #@c1
    aget-object v4, v4, v17

    #@c3
    aget-object v11, v4, v15

    #@c5
    .line 215
    .local v11, "name":Ljava/lang/String;
    :goto_5
    if-nez v11, :cond_9

    #@c7
    .line 216
    const/4 v15, 0x0

    #@c8
    .line 217
    move-object/from16 v0, p0

    #@ca
    iget-object v4, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@cc
    iget-object v4, v4, Landroid/icu/impl/duration/impl/DataRecord;->pluralNames:[[Ljava/lang/String;

    #@ce
    aget-object v4, v4, v17

    #@d0
    aget-object v11, v4, v15

    #@d2
    .line 221
    :cond_9
    const/4 v4, 0x4

    #@d3
    if-eq v15, v4, :cond_a

    #@d5
    const/4 v4, 0x6

    #@d6
    if-ne v15, v4, :cond_13

    #@d8
    :cond_a
    const/4 v6, 0x1

    #@d9
    .local v6, "omitCount":Z
    :goto_6
    move-object/from16 v4, p0

    #@db
    move-object/from16 v5, p1

    #@dd
    move/from16 v7, p6

    #@df
    move/from16 v8, p2

    #@e1
    move/from16 v9, p3

    #@e3
    move/from16 v10, p5

    #@e5
    move/from16 v12, p8

    #@e7
    move-object/from16 v13, p10

    #@e9
    .line 225
    invoke-virtual/range {v4 .. v13}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendCount(Landroid/icu/impl/duration/TimeUnit;ZZIIZLjava/lang/String;ZLjava/lang/StringBuffer;)I

    #@ec
    move-result v19

    #@ed
    .line 227
    .local v19, "suffixIndex":I
    if-eqz p8, :cond_d

    #@ef
    if-ltz v19, :cond_d

    #@f1
    .line 228
    const/16 v18, 0x0

    #@f3
    .line 229
    .local v18, "suffix":Ljava/lang/String;
    move-object/from16 v0, p0

    #@f5
    iget-object v4, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@f7
    iget-object v4, v4, Landroid/icu/impl/duration/impl/DataRecord;->rqdSuffixes:[Ljava/lang/String;

    #@f9
    if-eqz v4, :cond_b

    #@fb
    move-object/from16 v0, p0

    #@fd
    iget-object v4, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@ff
    iget-object v4, v4, Landroid/icu/impl/duration/impl/DataRecord;->rqdSuffixes:[Ljava/lang/String;

    #@101
    array-length v4, v4

    #@102
    move/from16 v0, v19

    #@104
    if-ge v0, v4, :cond_b

    #@106
    .line 230
    move-object/from16 v0, p0

    #@108
    iget-object v4, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@10a
    iget-object v4, v4, Landroid/icu/impl/duration/impl/DataRecord;->rqdSuffixes:[Ljava/lang/String;

    #@10c
    aget-object v18, v4, v19

    #@10e
    .line 232
    .end local v18    # "suffix":Ljava/lang/String;
    :cond_b
    if-nez v18, :cond_c

    #@110
    move-object/from16 v0, p0

    #@112
    iget-object v4, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@114
    iget-object v4, v4, Landroid/icu/impl/duration/impl/DataRecord;->optSuffixes:[Ljava/lang/String;

    #@116
    if-eqz v4, :cond_c

    #@118
    .line 233
    move-object/from16 v0, p0

    #@11a
    iget-object v4, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@11c
    iget-object v4, v4, Landroid/icu/impl/duration/impl/DataRecord;->optSuffixes:[Ljava/lang/String;

    #@11e
    array-length v4, v4

    #@11f
    move/from16 v0, v19

    #@121
    if-ge v0, v4, :cond_c

    #@123
    .line 234
    move-object/from16 v0, p0

    #@125
    iget-object v4, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@127
    iget-object v4, v4, Landroid/icu/impl/duration/impl/DataRecord;->optSuffixes:[Ljava/lang/String;

    #@129
    aget-object v18, v4, v19

    #@12b
    .line 236
    :cond_c
    if-eqz v18, :cond_d

    #@12d
    .line 237
    move-object/from16 v0, p10

    #@12f
    move-object/from16 v1, v18

    #@131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@134
    .line 240
    :cond_d
    return v21

    #@135
    .line 183
    .end local v6    # "omitCount":Z
    .end local v11    # "name":Ljava/lang/String;
    .end local v15    # "form":I
    .end local v19    # "suffixIndex":I
    :pswitch_1
    const/16 v4, 0x3e8

    #@137
    move/from16 v0, p2

    #@139
    if-gt v0, v4, :cond_8

    #@13b
    .line 188
    :pswitch_2
    move/from16 v0, p2

    #@13d
    div-int/lit16 v4, v0, 0x1f4

    #@13f
    mul-int/lit16 v0, v4, 0x1f4

    #@141
    move/from16 p2, v0

    #@143
    .line 189
    const/16 p3, 0x3

    #@145
    goto/16 :goto_3

    #@147
    .line 195
    .local v11, "name":Ljava/lang/String;
    :cond_e
    const/4 v4, 0x0

    #@148
    goto/16 :goto_4

    #@14a
    .line 201
    .restart local v15    # "form":I
    :cond_f
    move-object/from16 v0, p0

    #@14c
    iget-object v4, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@14e
    iget-object v4, v4, Landroid/icu/impl/duration/impl/DataRecord;->singularNames:[Ljava/lang/String;

    #@150
    aget-object v11, v4, v17

    #@152
    .local v11, "name":Ljava/lang/String;
    goto/16 :goto_5

    #@154
    .line 203
    .local v11, "name":Ljava/lang/String;
    :cond_10
    const/4 v4, 0x5

    #@155
    if-ne v15, v4, :cond_11

    #@157
    .line 204
    move-object/from16 v0, p0

    #@159
    iget-object v4, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@15b
    iget-object v4, v4, Landroid/icu/impl/duration/impl/DataRecord;->pluralNames:[[Ljava/lang/String;

    #@15d
    aget-object v4, v4, v17

    #@15f
    const/4 v5, 0x1

    #@160
    aget-object v11, v4, v5

    #@162
    .local v11, "name":Ljava/lang/String;
    goto/16 :goto_5

    #@164
    .line 205
    .local v11, "name":Ljava/lang/String;
    :cond_11
    const/4 v4, 0x6

    #@165
    if-ne v15, v4, :cond_12

    #@167
    .line 206
    move-object/from16 v0, p0

    #@169
    iget-object v4, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@16b
    iget-object v4, v4, Landroid/icu/impl/duration/impl/DataRecord;->halfNames:[Ljava/lang/String;

    #@16d
    aget-object v11, v4, v17

    #@16f
    .local v11, "name":Ljava/lang/String;
    goto/16 :goto_5

    #@171
    .line 209
    .local v11, "name":Ljava/lang/String;
    :cond_12
    :try_start_0
    move-object/from16 v0, p0

    #@173
    iget-object v4, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@175
    iget-object v4, v4, Landroid/icu/impl/duration/impl/DataRecord;->pluralNames:[[Ljava/lang/String;

    #@177
    aget-object v4, v4, v17

    #@179
    aget-object v11, v4, v15
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@17b
    .local v11, "name":Ljava/lang/String;
    goto/16 :goto_5

    #@17d
    .line 210
    .local v11, "name":Ljava/lang/String;
    :catch_0
    move-exception v14

    #@17e
    .line 211
    .local v14, "e":Ljava/lang/NullPointerException;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@180
    new-instance v5, Ljava/lang/StringBuilder;

    #@182
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@185
    const-string/jumbo v7, "Null Pointer in PeriodFormatterData["

    #@188
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18b
    move-result-object v5

    #@18c
    move-object/from16 v0, p0

    #@18e
    iget-object v7, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->localeName:Ljava/lang/String;

    #@190
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@193
    move-result-object v5

    #@194
    const-string/jumbo v7, "].au px: "

    #@197
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19a
    move-result-object v5

    #@19b
    move/from16 v0, v17

    #@19d
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a0
    move-result-object v5

    #@1a1
    const-string/jumbo v7, " form: "

    #@1a4
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a7
    move-result-object v5

    #@1a8
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1ab
    move-result-object v5

    #@1ac
    const-string/jumbo v7, " pn: "

    #@1af
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b2
    move-result-object v5

    #@1b3
    move-object/from16 v0, p0

    #@1b5
    iget-object v7, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@1b7
    iget-object v7, v7, Landroid/icu/impl/duration/impl/DataRecord;->pluralNames:[[Ljava/lang/String;

    #@1b9
    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@1bc
    move-result-object v7

    #@1bd
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c0
    move-result-object v5

    #@1c1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c4
    move-result-object v5

    #@1c5
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1c8
    .line 212
    throw v14

    #@1c9
    .line 222
    .end local v14    # "e":Ljava/lang/NullPointerException;
    .local v11, "name":Ljava/lang/String;
    :cond_13
    move-object/from16 v0, p0

    #@1cb
    iget-object v4, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@1cd
    iget-boolean v4, v4, Landroid/icu/impl/duration/impl/DataRecord;->omitSingularCount:Z

    #@1cf
    if-eqz v4, :cond_14

    #@1d1
    const/4 v4, 0x1

    #@1d2
    if-eq v15, v4, :cond_a

    #@1d4
    .line 223
    :cond_14
    move-object/from16 v0, p0

    #@1d6
    iget-object v4, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@1d8
    iget-boolean v4, v4, Landroid/icu/impl/duration/impl/DataRecord;->omitDualCount:Z

    #@1da
    if-eqz v4, :cond_15

    #@1dc
    const/4 v4, 0x2

    #@1dd
    if-ne v15, v4, :cond_15

    #@1df
    const/4 v6, 0x1

    #@1e0
    .restart local v6    # "omitCount":Z
    goto/16 :goto_6

    #@1e2
    .end local v6    # "omitCount":Z
    :cond_15
    const/4 v6, 0x0

    #@1e3
    .restart local v6    # "omitCount":Z
    goto/16 :goto_6

    #@1e5
    .line 180
    nop

    #@1e6
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public appendUnitSeparator(Landroid/icu/impl/duration/TimeUnit;ZZZLjava/lang/StringBuffer;)Z
    .locals 4
    .param p1, "unit"    # Landroid/icu/impl/duration/TimeUnit;
    .param p2, "longSep"    # Z
    .param p3, "afterFirst"    # Z
    .param p4, "beforeLast"    # Z
    .param p5, "sb"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 487
    if-eqz p2, :cond_2

    #@3
    iget-object v1, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@5
    iget-object v1, v1, Landroid/icu/impl/duration/impl/DataRecord;->unitSep:[Ljava/lang/String;

    #@7
    if-eqz v1, :cond_2

    #@9
    .line 488
    :cond_0
    if-eqz p2, :cond_5

    #@b
    iget-object v1, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@d
    iget-object v1, v1, Landroid/icu/impl/duration/impl/DataRecord;->unitSep:[Ljava/lang/String;

    #@f
    if-eqz v1, :cond_5

    #@11
    .line 489
    if-eqz p3, :cond_3

    #@13
    const/4 v1, 0x2

    #@14
    move v3, v1

    #@15
    :goto_0
    if-eqz p4, :cond_4

    #@17
    const/4 v1, 0x1

    #@18
    :goto_1
    add-int v0, v3, v1

    #@1a
    .line 490
    .local v0, "ix":I
    iget-object v1, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@1c
    iget-object v1, v1, Landroid/icu/impl/duration/impl/DataRecord;->unitSep:[Ljava/lang/String;

    #@1e
    aget-object v1, v1, v0

    #@20
    invoke-virtual {p5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@23
    .line 491
    iget-object v1, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@25
    iget-object v1, v1, Landroid/icu/impl/duration/impl/DataRecord;->unitSepRequiresDP:[Z

    #@27
    if-eqz v1, :cond_1

    #@29
    iget-object v1, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@2b
    iget-object v1, v1, Landroid/icu/impl/duration/impl/DataRecord;->unitSepRequiresDP:[Z

    #@2d
    aget-boolean v2, v1, v0

    #@2f
    :cond_1
    return v2

    #@30
    .line 487
    .end local v0    # "ix":I
    :cond_2
    iget-object v1, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@32
    iget-object v1, v1, Landroid/icu/impl/duration/impl/DataRecord;->shortUnitSep:Ljava/lang/String;

    #@34
    if-nez v1, :cond_0

    #@36
    .line 495
    :goto_2
    return v2

    #@37
    :cond_3
    move v3, v2

    #@38
    .line 489
    goto :goto_0

    #@39
    :cond_4
    move v1, v2

    #@3a
    goto :goto_1

    #@3b
    .line 493
    :cond_5
    iget-object v1, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@3d
    iget-object v1, v1, Landroid/icu/impl/duration/impl/DataRecord;->shortUnitSep:Ljava/lang/String;

    #@3f
    invoke-virtual {p5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@42
    goto :goto_2
.end method

.method public pluralization()I
    .locals 1

    #@0
    .prologue
    .line 66
    iget-object v0, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@2
    iget-byte v0, v0, Landroid/icu/impl/duration/impl/DataRecord;->pl:B

    #@4
    return v0
.end method

.method public useMilliseconds()I
    .locals 1

    #@0
    .prologue
    .line 82
    iget-object v0, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@2
    iget-byte v0, v0, Landroid/icu/impl/duration/impl/DataRecord;->useMilliseconds:B

    #@4
    return v0
.end method

.method public weeksAloneOnly()Z
    .locals 1

    #@0
    .prologue
    .line 78
    iget-object v0, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    #@2
    iget-boolean v0, v0, Landroid/icu/impl/duration/impl/DataRecord;->weeksAloneOnly:Z

    #@4
    return v0
.end method
