.class public Landroid/icu/impl/duration/impl/PeriodFormatterData;
.super Ljava/lang/Object;
.source "PeriodFormatterData.java"


# static fields
.field private static final blacklist FORM_DUAL:I = 0x2

.field private static final blacklist FORM_HALF_SPELLED:I = 0x6

.field private static final blacklist FORM_PAUCAL:I = 0x3

.field private static final blacklist FORM_PLURAL:I = 0x0

.field private static final blacklist FORM_SINGULAR:I = 0x1

.field private static final blacklist FORM_SINGULAR_NO_OMIT:I = 0x5

.field private static final blacklist FORM_SINGULAR_SPELLED:I = 0x4

.field public static blacklist trace:Z


# instance fields
.field final blacklist dr:Landroid/icu/impl/duration/impl/DataRecord;

.field blacklist localeName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->trace:Z

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/icu/impl/duration/impl/DataRecord;)V
    .registers 5
    .param p1, "localeName"    # Ljava/lang/String;
    .param p2, "dr"    # Landroid/icu/impl/duration/impl/DataRecord;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p2, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    .line 46
    iput-object p1, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->localeName:Ljava/lang/String;

    .line 47
    if-eqz p1, :cond_14

    .line 51
    if-eqz p2, :cond_c

    .line 55
    return-void

    .line 53
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "data record is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_14
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "localename is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist computeForm(Landroid/icu/impl/duration/TimeUnit;IIZ)I
    .registers 13
    .param p1, "unit"    # Landroid/icu/impl/duration/TimeUnit;
    .param p2, "count"    # I
    .param p3, "cv"    # I
    .param p4, "lastOfMultiple"    # Z

    .line 518
    sget-boolean v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->trace:Z

    if-eqz v0, :cond_41

    .line 519
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pfd.cf unit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cv: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dr.pl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-byte v2, v2, Landroid/icu/impl/duration/impl/DataRecord;->pl:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 520
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 522
    :cond_41
    iget-object v0, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-byte v0, v0, Landroid/icu/impl/duration/impl/DataRecord;->pl:B

    const/4 v1, 0x0

    if-nez v0, :cond_49

    .line 523
    return v1

    .line 527
    :cond_49
    div-int/lit16 v0, p2, 0x3e8

    .line 529
    .local v0, "val":I
    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x5

    const/4 v5, 0x1

    packed-switch p3, :pswitch_data_156

    .line 577
    iget-object v2, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-byte v2, v2, Landroid/icu/impl/duration/impl/DataRecord;->decimalHandling:B

    packed-switch v2, :pswitch_data_160

    goto/16 :goto_154

    .line 535
    :pswitch_5b
    iget-object v6, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-byte v6, v6, Landroid/icu/impl/duration/impl/DataRecord;->fractionHandling:B

    packed-switch v6, :pswitch_data_16c

    .line 573
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 565
    :pswitch_68
    div-int/lit16 v1, p2, 0x1f4

    .line 566
    .local v1, "v":I
    if-eq v1, v5, :cond_70

    if-ne v1, v3, :cond_6f

    goto :goto_70

    .line 570
    .end local v1    # "v":I
    :cond_6f
    goto :goto_ab

    .line 567
    .restart local v1    # "v":I
    :cond_70
    :goto_70
    return v3

    .line 544
    .end local v1    # "v":I
    :pswitch_71
    div-int/lit16 v6, p2, 0x1f4

    .line 545
    .local v6, "v":I
    if-ne v6, v5, :cond_8a

    .line 546
    iget-object v1, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v1, v1, Landroid/icu/impl/duration/impl/DataRecord;->halfNames:[Ljava/lang/String;

    if-eqz v1, :cond_89

    iget-object v1, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v1, v1, Landroid/icu/impl/duration/impl/DataRecord;->halfNames:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/icu/impl/duration/TimeUnit;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    if-eqz v1, :cond_89

    .line 547
    const/4 v1, 0x6

    return v1

    .line 549
    :cond_89
    return v4

    .line 551
    :cond_8a
    and-int/lit8 v7, v6, 0x1

    if-ne v7, v5, :cond_a8

    .line 552
    iget-object v7, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-byte v7, v7, Landroid/icu/impl/duration/impl/DataRecord;->pl:B

    if-ne v7, v4, :cond_99

    const/16 v7, 0x15

    if-le v6, v7, :cond_99

    .line 553
    return v4

    .line 555
    :cond_99
    if-ne v6, v3, :cond_a8

    iget-object v3, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-byte v3, v3, Landroid/icu/impl/duration/impl/DataRecord;->pl:B

    if-ne v3, v5, :cond_a8

    iget-object v3, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-byte v3, v3, Landroid/icu/impl/duration/impl/DataRecord;->fractionHandling:B

    if-eq v3, v2, :cond_a8

    .line 557
    return v1

    .line 562
    .end local v6    # "v":I
    :cond_a8
    goto :goto_ab

    .line 537
    :pswitch_a9
    return v1

    .line 533
    :pswitch_aa
    nop

    .line 598
    :goto_ab
    sget-boolean v1, Landroid/icu/impl/duration/impl/PeriodFormatterData;->trace:Z

    if-eqz v1, :cond_cd

    if-nez p2, :cond_cd

    .line 599
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EZeroHandling = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-byte v6, v6, Landroid/icu/impl/duration/impl/DataRecord;->zeroHandling:B

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 601
    :cond_cd
    if-nez p2, :cond_d7

    iget-object v1, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-byte v1, v1, Landroid/icu/impl/duration/impl/DataRecord;->zeroHandling:B

    if-ne v1, v5, :cond_d7

    .line 602
    const/4 v1, 0x4

    return v1

    .line 605
    :cond_d7
    const/4 v1, 0x0

    .line 606
    .local v1, "form":I
    iget-object v3, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-byte v3, v3, Landroid/icu/impl/duration/impl/DataRecord;->pl:B

    packed-switch v3, :pswitch_data_178

    .line 670
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dr.pl is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-byte v4, v4, Landroid/icu/impl/duration/impl/DataRecord;->pl:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 671
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 661
    :pswitch_101
    if-ne v0, v2, :cond_105

    .line 662
    const/4 v1, 0x2

    goto :goto_145

    .line 663
    :cond_105
    if-ne v0, v5, :cond_109

    .line 664
    const/4 v1, 0x1

    goto :goto_145

    .line 665
    :cond_109
    const/16 v2, 0xa

    if-le v0, v2, :cond_145

    .line 666
    const/4 v1, 0x5

    goto :goto_145

    .line 648
    :pswitch_10f
    if-ne v0, v2, :cond_113

    .line 649
    const/4 v1, 0x2

    goto :goto_145

    .line 650
    :cond_113
    if-ne v0, v5, :cond_11b

    .line 651
    if-eqz p4, :cond_119

    .line 652
    const/4 v1, 0x4

    goto :goto_145

    .line 654
    :cond_119
    const/4 v1, 0x1

    goto :goto_145

    .line 656
    :cond_11b
    sget-object v2, Landroid/icu/impl/duration/TimeUnit;->YEAR:Landroid/icu/impl/duration/TimeUnit;

    if-ne p1, v2, :cond_145

    const/16 v2, 0xb

    if-le v0, v2, :cond_145

    .line 657
    const/4 v1, 0x5

    goto :goto_145

    .line 621
    :pswitch_125
    move v2, v0

    .line 622
    .local v2, "v":I
    rem-int/lit8 v2, v2, 0x64

    .line 623
    const/16 v3, 0x14

    if-le v2, v3, :cond_12e

    .line 624
    rem-int/lit8 v2, v2, 0xa

    .line 626
    :cond_12e
    if-ne v2, v5, :cond_132

    .line 627
    const/4 v1, 0x1

    goto :goto_137

    .line 628
    :cond_132
    if-le v2, v5, :cond_137

    if-ge v2, v4, :cond_137

    .line 629
    const/4 v1, 0x3

    .line 631
    .end local v2    # "v":I
    :cond_137
    :goto_137
    goto :goto_145

    .line 614
    :pswitch_138
    if-ne v0, v2, :cond_13c

    .line 615
    const/4 v1, 0x2

    goto :goto_145

    .line 616
    :cond_13c
    if-ne v0, v5, :cond_145

    .line 617
    const/4 v1, 0x1

    goto :goto_145

    .line 609
    :pswitch_140
    if-ne v0, v5, :cond_145

    .line 610
    const/4 v1, 0x4

    goto :goto_145

    .line 607
    :pswitch_144
    nop

    .line 674
    :cond_145
    :goto_145
    return v1

    .line 586
    .end local v1    # "form":I
    :pswitch_146
    iget-object v2, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-byte v2, v2, Landroid/icu/impl/duration/impl/DataRecord;->pl:B

    if-ne v2, v3, :cond_154

    .line 587
    return v3

    .line 581
    :pswitch_14d
    const/16 v2, 0x3e8

    if-ge p2, v2, :cond_154

    .line 582
    return v4

    .line 579
    :pswitch_152
    return v4

    .line 578
    :pswitch_153
    nop

    .line 593
    :cond_154
    :goto_154
    return v1

    nop

    :pswitch_data_156
    .packed-switch 0x0
        :pswitch_aa
        :pswitch_aa
        :pswitch_5b
    .end packed-switch

    :pswitch_data_160
    .packed-switch 0x0
        :pswitch_153
        :pswitch_152
        :pswitch_14d
        :pswitch_146
    .end packed-switch

    :pswitch_data_16c
    .packed-switch 0x0
        :pswitch_a9
        :pswitch_71
        :pswitch_71
        :pswitch_68
    .end packed-switch

    :pswitch_data_178
    .packed-switch 0x0
        :pswitch_144
        :pswitch_140
        :pswitch_138
        :pswitch_125
        :pswitch_10f
        :pswitch_101
    .end packed-switch
.end method


# virtual methods
.method public blacklist allowZero()Z
    .registers 2

    .line 78
    iget-object v0, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-boolean v0, v0, Landroid/icu/impl/duration/impl/DataRecord;->allowZero:Z

    return v0
.end method

.method public blacklist appendCount(Landroid/icu/impl/duration/TimeUnit;ZZIIZLjava/lang/String;ZLjava/lang/StringBuffer;)I
    .registers 22
    .param p1, "unit"    # Landroid/icu/impl/duration/TimeUnit;
    .param p2, "omitCount"    # Z
    .param p3, "useDigitPrefix"    # Z
    .param p4, "count"    # I
    .param p5, "cv"    # I
    .param p6, "useSep"    # Z
    .param p7, "name"    # Ljava/lang/String;
    .param p8, "last"    # Z
    .param p9, "sb"    # Ljava/lang/StringBuffer;

    .line 263
    move/from16 v0, p4

    move-object/from16 v1, p7

    move-object/from16 v2, p9

    const/4 v3, 0x2

    move/from16 v4, p5

    if-ne v4, v3, :cond_12

    iget-object v5, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v5, v5, Landroid/icu/impl/duration/impl/DataRecord;->halves:[Ljava/lang/String;

    if-nez v5, :cond_12

    .line 264
    const/4 v4, 0x0

    .line 267
    .end local p5    # "cv":I
    .local v4, "cv":I
    :cond_12
    if-nez p2, :cond_23

    if-eqz p3, :cond_23

    iget-object v5, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v5, v5, Landroid/icu/impl/duration/impl/DataRecord;->digitPrefix:Ljava/lang/String;

    if-eqz v5, :cond_23

    .line 268
    iget-object v5, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v5, v5, Landroid/icu/impl/duration/impl/DataRecord;->digitPrefix:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 271
    :cond_23
    invoke-virtual {p1}, Landroid/icu/impl/duration/TimeUnit;->ordinal()I

    move-result v5

    .line 272
    .local v5, "index":I
    const/16 v6, 0xa

    const/4 v7, -0x1

    const/4 v8, 0x1

    packed-switch v4, :pswitch_data_16c

    .line 360
    const/4 v3, 0x1

    .line 361
    .local v3, "decimals":I
    packed-switch v4, :pswitch_data_176

    goto/16 :goto_13a

    .line 306
    .end local v3    # "decimals":I
    :pswitch_34
    div-int/lit16 v6, v0, 0x1f4

    .line 307
    .local v6, "v":I
    const/4 v9, 0x0

    if-eq v6, v8, :cond_3e

    .line 308
    if-nez p2, :cond_3e

    invoke-virtual {p0, v0, v8, v9, v2}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendCountValue(IIILjava/lang/StringBuffer;)V

    .line 310
    :cond_3e
    and-int/lit8 v10, v6, 0x1

    if-ne v10, v8, :cond_dc

    .line 312
    if-ne v6, v8, :cond_59

    iget-object v10, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v10, v10, Landroid/icu/impl/duration/impl/DataRecord;->halfNames:[Ljava/lang/String;

    if-eqz v10, :cond_59

    iget-object v10, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v10, v10, Landroid/icu/impl/duration/impl/DataRecord;->halfNames:[Ljava/lang/String;

    aget-object v10, v10, v5

    if-eqz v10, :cond_59

    .line 313
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 314
    if-eqz p8, :cond_58

    move v7, v5

    :cond_58
    return v7

    .line 317
    :cond_59
    if-ne v6, v8, :cond_5d

    move v10, v9

    goto :goto_5e

    :cond_5d
    move v10, v8

    .line 318
    .local v10, "solox":I
    :goto_5e
    iget-object v11, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v11, v11, Landroid/icu/impl/duration/impl/DataRecord;->genders:[B

    if-eqz v11, :cond_75

    iget-object v11, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v11, v11, Landroid/icu/impl/duration/impl/DataRecord;->halves:[Ljava/lang/String;

    array-length v11, v11

    if-le v11, v3, :cond_75

    .line 319
    iget-object v3, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v3, v3, Landroid/icu/impl/duration/impl/DataRecord;->genders:[B

    aget-byte v3, v3, v5

    if-ne v3, v8, :cond_75

    .line 320
    add-int/lit8 v10, v10, 0x2

    .line 323
    :cond_75
    iget-object v3, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v3, v3, Landroid/icu/impl/duration/impl/DataRecord;->halfPlacements:[B

    if-nez v3, :cond_7c

    .line 324
    goto :goto_84

    .line 325
    :cond_7c
    iget-object v3, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v3, v3, Landroid/icu/impl/duration/impl/DataRecord;->halfPlacements:[B

    and-int/lit8 v8, v10, 0x1

    aget-byte v9, v3, v8

    :goto_84
    nop

    .line 326
    .local v9, "hp":I
    iget-object v3, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v3, v3, Landroid/icu/impl/duration/impl/DataRecord;->halves:[Ljava/lang/String;

    aget-object v3, v3, v10

    .line 327
    .local v3, "half":Ljava/lang/String;
    iget-object v8, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v8, v8, Landroid/icu/impl/duration/impl/DataRecord;->measures:[Ljava/lang/String;

    if-nez v8, :cond_93

    const/4 v8, 0x0

    goto :goto_99

    :cond_93
    iget-object v8, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v8, v8, Landroid/icu/impl/duration/impl/DataRecord;->measures:[Ljava/lang/String;

    aget-object v8, v8, v5

    .line 328
    .local v8, "measure":Ljava/lang/String;
    :goto_99
    packed-switch v9, :pswitch_data_17e

    goto :goto_dc

    .line 347
    :pswitch_9d
    if-eqz v8, :cond_a2

    .line 348
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 350
    :cond_a2
    if-eqz p6, :cond_ad

    if-nez p2, :cond_ad

    .line 351
    iget-object v11, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v11, v11, Landroid/icu/impl/duration/impl/DataRecord;->countSep:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 353
    :cond_ad
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 354
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 355
    if-eqz p8, :cond_b6

    move v7, v5

    :cond_b6
    return v7

    .line 333
    :pswitch_b7
    if-eqz v8, :cond_ce

    .line 334
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 335
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 336
    if-eqz p6, :cond_ca

    if-nez p2, :cond_ca

    .line 337
    iget-object v11, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v11, v11, Landroid/icu/impl/duration/impl/DataRecord;->countSep:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 339
    :cond_ca
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 345
    return v7

    .line 341
    :cond_ce
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 342
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 343
    if-eqz p8, :cond_d7

    move v7, v5

    :cond_d7
    return v7

    .line 330
    :pswitch_d8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 331
    nop

    .line 358
    .end local v3    # "half":Ljava/lang/String;
    .end local v6    # "v":I
    .end local v8    # "measure":Ljava/lang/String;
    .end local v9    # "hp":I
    .end local v10    # "solox":I
    :cond_dc
    :goto_dc
    goto/16 :goto_13f

    .line 280
    :pswitch_de
    div-int/lit16 v3, v0, 0x3e8

    .line 282
    .local v3, "val":I
    sget-object v9, Landroid/icu/impl/duration/TimeUnit;->MINUTE:Landroid/icu/impl/duration/TimeUnit;

    if-ne p1, v9, :cond_129

    iget-object v9, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v9, v9, Landroid/icu/impl/duration/impl/DataRecord;->fiveMinutes:Ljava/lang/String;

    if-nez v9, :cond_f0

    iget-object v9, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v9, v9, Landroid/icu/impl/duration/impl/DataRecord;->fifteenMinutes:Ljava/lang/String;

    if-eqz v9, :cond_129

    .line 284
    :cond_f0
    if-eqz v3, :cond_129

    rem-int/lit8 v9, v3, 0x5

    if-nez v9, :cond_129

    .line 285
    iget-object v9, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v9, v9, Landroid/icu/impl/duration/impl/DataRecord;->fifteenMinutes:Ljava/lang/String;

    if-eqz v9, :cond_115

    const/16 v9, 0xf

    if-eq v3, v9, :cond_104

    const/16 v10, 0x2d

    if-ne v3, v10, :cond_115

    .line 286
    :cond_104
    if-ne v3, v9, :cond_108

    move v9, v8

    goto :goto_109

    :cond_108
    const/4 v9, 0x3

    .line 287
    .end local v3    # "val":I
    .local v9, "val":I
    :goto_109
    if-nez p2, :cond_10e

    invoke-virtual {p0, v9, v8, v6, v2}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendInteger(IIILjava/lang/StringBuffer;)V

    .line 288
    :cond_10e
    iget-object v3, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v1, v3, Landroid/icu/impl/duration/impl/DataRecord;->fifteenMinutes:Ljava/lang/String;

    .line 289
    .end local p7    # "name":Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    const/16 v5, 0x8

    .line 290
    goto :goto_13f

    .line 292
    .end local v1    # "name":Ljava/lang/String;
    .end local v9    # "val":I
    .restart local v3    # "val":I
    .restart local p7    # "name":Ljava/lang/String;
    :cond_115
    iget-object v9, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v9, v9, Landroid/icu/impl/duration/impl/DataRecord;->fiveMinutes:Ljava/lang/String;

    if-eqz v9, :cond_129

    .line 293
    div-int/lit8 v3, v3, 0x5

    .line 294
    if-nez p2, :cond_122

    invoke-virtual {p0, v3, v8, v6, v2}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendInteger(IIILjava/lang/StringBuffer;)V

    .line 295
    :cond_122
    iget-object v6, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v1, v6, Landroid/icu/impl/duration/impl/DataRecord;->fiveMinutes:Ljava/lang/String;

    .line 296
    .end local p7    # "name":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    const/16 v5, 0x9

    .line 297
    goto :goto_13f

    .line 301
    .end local v1    # "name":Ljava/lang/String;
    .restart local p7    # "name":Ljava/lang/String;
    :cond_129
    if-nez p2, :cond_12e

    invoke-virtual {p0, v3, v8, v6, v2}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendInteger(IIILjava/lang/StringBuffer;)V

    .line 302
    .end local v3    # "val":I
    :cond_12e
    goto :goto_13f

    .line 274
    :pswitch_12f
    if-nez p2, :cond_13f

    .line 275
    div-int/lit16 v3, v0, 0x3e8

    invoke-virtual {p0, v3, v8, v6, v2}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendInteger(IIILjava/lang/StringBuffer;)V

    goto :goto_13f

    .line 363
    .local v3, "decimals":I
    :pswitch_137
    const/4 v3, 0x3

    goto :goto_13a

    .line 362
    :pswitch_139
    const/4 v3, 0x2

    .line 366
    :goto_13a
    if-nez p2, :cond_13f

    invoke-virtual {p0, v0, v8, v3, v2}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendCountValue(IIILjava/lang/StringBuffer;)V

    .line 369
    .end local v3    # "decimals":I
    .end local p7    # "name":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    :cond_13f
    :goto_13f
    if-nez p2, :cond_14a

    if-eqz p6, :cond_14a

    .line 370
    iget-object v3, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v3, v3, Landroid/icu/impl/duration/impl/DataRecord;->countSep:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 372
    :cond_14a
    if-nez p2, :cond_164

    iget-object v3, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v3, v3, Landroid/icu/impl/duration/impl/DataRecord;->measures:[Ljava/lang/String;

    if-eqz v3, :cond_164

    iget-object v3, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v3, v3, Landroid/icu/impl/duration/impl/DataRecord;->measures:[Ljava/lang/String;

    array-length v3, v3

    if-ge v5, v3, :cond_164

    .line 373
    iget-object v3, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v3, v3, Landroid/icu/impl/duration/impl/DataRecord;->measures:[Ljava/lang/String;

    aget-object v3, v3, v5

    .line 374
    .local v3, "measure":Ljava/lang/String;
    if-eqz v3, :cond_164

    .line 375
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 378
    .end local v3    # "measure":Ljava/lang/String;
    :cond_164
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 379
    if-eqz p8, :cond_16a

    move v7, v5

    :cond_16a
    return v7

    nop

    :pswitch_data_16c
    .packed-switch 0x0
        :pswitch_12f
        :pswitch_de
        :pswitch_34
    .end packed-switch

    :pswitch_data_176
    .packed-switch 0x4
        :pswitch_139
        :pswitch_137
    .end packed-switch

    :pswitch_data_17e
    .packed-switch 0x0
        :pswitch_d8
        :pswitch_b7
        :pswitch_9d
    .end packed-switch
.end method

.method public blacklist appendCountValue(IIILjava/lang/StringBuffer;)V
    .registers 14
    .param p1, "count"    # I
    .param p2, "integralDigits"    # I
    .param p3, "decimalDigits"    # I
    .param p4, "sb"    # Ljava/lang/StringBuffer;

    .line 392
    div-int/lit16 v6, p1, 0x3e8

    .line 393
    .local v6, "ival":I
    if-nez p3, :cond_a

    .line 394
    const/16 v1, 0xa

    invoke-virtual {p0, v6, p2, v1, p4}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendInteger(IIILjava/lang/StringBuffer;)V

    .line 395
    return-void

    .line 398
    :cond_a
    iget-object v1, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-boolean v1, v1, Landroid/icu/impl/duration/impl/DataRecord;->requiresDigitSeparator:Z

    const/16 v7, 0x20

    if-eqz v1, :cond_1b

    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_1b

    .line 399
    invoke-virtual {p4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 401
    :cond_1b
    int-to-long v1, v6

    const/16 v4, 0xa

    move-object v0, p0

    move v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendDigits(JIILjava/lang/StringBuffer;)V

    .line 402
    rem-int/lit16 v1, p1, 0x3e8

    .line 403
    .local v1, "dval":I
    const/4 v2, 0x1

    if-ne p3, v2, :cond_2d

    .line 404
    div-int/lit8 v1, v1, 0x64

    move v8, v1

    goto :goto_35

    .line 405
    :cond_2d
    const/4 v2, 0x2

    if-ne p3, v2, :cond_34

    .line 406
    div-int/lit8 v1, v1, 0xa

    move v8, v1

    goto :goto_35

    .line 405
    :cond_34
    move v8, v1

    .line 408
    .end local v1    # "dval":I
    .local v8, "dval":I
    :goto_35
    iget-object v1, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-char v1, v1, Landroid/icu/impl/duration/impl/DataRecord;->decimalSep:C

    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 409
    int-to-long v1, v8

    move v4, p3

    move-object v0, p0

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendDigits(JIILjava/lang/StringBuffer;)V

    .line 410
    iget-object v1, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-boolean v1, v1, Landroid/icu/impl/duration/impl/DataRecord;->requiresDigitSeparator:Z

    if-eqz v1, :cond_4d

    .line 411
    invoke-virtual {p4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 413
    :cond_4d
    return-void
.end method

.method public blacklist appendDigits(JIILjava/lang/StringBuffer;)V
    .registers 14
    .param p1, "num"    # J
    .param p3, "mindigits"    # I
    .param p4, "maxdigits"    # I
    .param p5, "sb"    # Ljava/lang/StringBuffer;

    .line 452
    new-array v0, p4, [C

    .line 453
    .local v0, "buf":[C
    move v1, p4

    .line 454
    .local v1, "ix":I
    :goto_3
    if-lez v1, :cond_1d

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_1d

    .line 455
    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-char v2, v2, Landroid/icu/impl/duration/impl/DataRecord;->zero:C

    int-to-long v2, v2

    const-wide/16 v4, 0xa

    rem-long v6, p1, v4

    add-long/2addr v2, v6

    long-to-int v2, v2

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 456
    div-long/2addr p1, v4

    goto :goto_3

    .line 458
    :cond_1d
    sub-int v2, p4, p3

    .local v2, "e":I
    :goto_1f
    if-le v1, v2, :cond_2a

    .line 459
    add-int/lit8 v1, v1, -0x1

    iget-object v3, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-char v3, v3, Landroid/icu/impl/duration/impl/DataRecord;->zero:C

    aput-char v3, v0, v1

    goto :goto_1f

    .line 461
    .end local v2    # "e":I
    :cond_2a
    sub-int v2, p4, v1

    invoke-virtual {p5, v0, v1, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 462
    return-void
.end method

.method public blacklist appendInteger(IIILjava/lang/StringBuffer;)V
    .registers 13
    .param p1, "num"    # I
    .param p2, "mindigits"    # I
    .param p3, "maxdigits"    # I
    .param p4, "sb"    # Ljava/lang/StringBuffer;

    .line 417
    iget-object v0, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v0, v0, Landroid/icu/impl/duration/impl/DataRecord;->numberNames:[Ljava/lang/String;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v0, v0, Landroid/icu/impl/duration/impl/DataRecord;->numberNames:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_19

    .line 418
    iget-object v0, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v0, v0, Landroid/icu/impl/duration/impl/DataRecord;->numberNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 419
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_19

    .line 420
    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 421
    return-void

    .line 425
    .end local v0    # "name":Ljava/lang/String;
    :cond_19
    iget-object v0, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-boolean v0, v0, Landroid/icu/impl/duration/impl/DataRecord;->requiresDigitSeparator:Z

    const/16 v1, 0x20

    if-eqz v0, :cond_2a

    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_2a

    .line 426
    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 428
    :cond_2a
    iget-object v0, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-byte v0, v0, Landroid/icu/impl/duration/impl/DataRecord;->numberSystem:B

    packed-switch v0, :pswitch_data_76

    move-object v2, p0

    move v5, p2

    move v6, p3

    move-object v7, p4

    .end local p2    # "mindigits":I
    .end local p3    # "maxdigits":I
    .end local p4    # "sb":Ljava/lang/StringBuffer;
    .local v5, "mindigits":I
    .local v6, "maxdigits":I
    .local v7, "sb":Ljava/lang/StringBuffer;
    goto :goto_6b

    .line 434
    .end local v5    # "mindigits":I
    .end local v6    # "maxdigits":I
    .end local v7    # "sb":Ljava/lang/StringBuffer;
    .restart local p2    # "mindigits":I
    .restart local p3    # "maxdigits":I
    .restart local p4    # "sb":Ljava/lang/StringBuffer;
    :pswitch_36
    int-to-long v2, p1

    sget-object v0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->KOREAN:Landroid/icu/impl/duration/impl/Utils$ChineseDigits;

    .line 435
    invoke-static {v2, v3, v0}, Landroid/icu/impl/duration/impl/Utils;->chineseNumber(JLandroid/icu/impl/duration/impl/Utils$ChineseDigits;)Ljava/lang/String;

    move-result-object v0

    .line 434
    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v2, p0

    move v5, p2

    move v6, p3

    move-object v7, p4

    goto :goto_6b

    .line 432
    :pswitch_45
    int-to-long v2, p1

    sget-object v0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->SIMPLIFIED:Landroid/icu/impl/duration/impl/Utils$ChineseDigits;

    .line 433
    invoke-static {v2, v3, v0}, Landroid/icu/impl/duration/impl/Utils;->chineseNumber(JLandroid/icu/impl/duration/impl/Utils$ChineseDigits;)Ljava/lang/String;

    move-result-object v0

    .line 432
    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 433
    move-object v2, p0

    move v5, p2

    move v6, p3

    move-object v7, p4

    goto :goto_6b

    .line 430
    :pswitch_54
    int-to-long v2, p1

    sget-object v0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->TRADITIONAL:Landroid/icu/impl/duration/impl/Utils$ChineseDigits;

    .line 431
    invoke-static {v2, v3, v0}, Landroid/icu/impl/duration/impl/Utils;->chineseNumber(JLandroid/icu/impl/duration/impl/Utils$ChineseDigits;)Ljava/lang/String;

    move-result-object v0

    .line 430
    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 431
    move-object v2, p0

    move v5, p2

    move v6, p3

    move-object v7, p4

    goto :goto_6b

    .line 429
    :pswitch_63
    int-to-long v3, p1

    move-object v2, p0

    move v5, p2

    move v6, p3

    move-object v7, p4

    .end local p2    # "mindigits":I
    .end local p3    # "maxdigits":I
    .end local p4    # "sb":Ljava/lang/StringBuffer;
    .restart local v5    # "mindigits":I
    .restart local v6    # "maxdigits":I
    .restart local v7    # "sb":Ljava/lang/StringBuffer;
    invoke-virtual/range {v2 .. v7}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendDigits(JIILjava/lang/StringBuffer;)V

    .line 437
    :goto_6b
    iget-object p2, v2, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-boolean p2, p2, Landroid/icu/impl/duration/impl/DataRecord;->requiresDigitSeparator:Z

    if-eqz p2, :cond_74

    .line 438
    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 440
    :cond_74
    return-void

    nop

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_63
        :pswitch_54
        :pswitch_45
        :pswitch_36
    .end packed-switch
.end method

.method public blacklist appendPrefix(IILjava/lang/StringBuffer;)Z
    .registers 8
    .param p1, "tl"    # I
    .param p2, "td"    # I
    .param p3, "sb"    # Ljava/lang/StringBuffer;

    .line 99
    iget-object v0, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v0, v0, Landroid/icu/impl/duration/impl/DataRecord;->scopeData:[Landroid/icu/impl/duration/impl/DataRecord$ScopeData;

    if-eqz v0, :cond_1b

    .line 100
    mul-int/lit8 v0, p1, 0x3

    add-int/2addr v0, p2

    .line 101
    .local v0, "ix":I
    iget-object v1, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v1, v1, Landroid/icu/impl/duration/impl/DataRecord;->scopeData:[Landroid/icu/impl/duration/impl/DataRecord$ScopeData;

    aget-object v1, v1, v0

    .line 102
    .local v1, "sd":Landroid/icu/impl/duration/impl/DataRecord$ScopeData;
    if-eqz v1, :cond_1b

    .line 103
    iget-object v2, v1, Landroid/icu/impl/duration/impl/DataRecord$ScopeData;->prefix:Ljava/lang/String;

    .line 104
    .local v2, "prefix":Ljava/lang/String;
    if-eqz v2, :cond_1b

    .line 105
    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    iget-boolean v3, v1, Landroid/icu/impl/duration/impl/DataRecord$ScopeData;->requiresDigitPrefix:Z

    return v3

    .line 110
    .end local v0    # "ix":I
    .end local v1    # "sd":Landroid/icu/impl/duration/impl/DataRecord$ScopeData;
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist appendSkippedUnit(Ljava/lang/StringBuffer;)V
    .registers 3
    .param p1, "sb"    # Ljava/lang/StringBuffer;

    .line 469
    iget-object v0, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v0, v0, Landroid/icu/impl/duration/impl/DataRecord;->skippedUnitMarker:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 470
    iget-object v0, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v0, v0, Landroid/icu/impl/duration/impl/DataRecord;->skippedUnitMarker:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 472
    :cond_d
    return-void
.end method

.method public blacklist appendSuffix(IILjava/lang/StringBuffer;)V
    .registers 10
    .param p1, "tl"    # I
    .param p2, "td"    # I
    .param p3, "sb"    # Ljava/lang/StringBuffer;

    .line 122
    iget-object v0, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v0, v0, Landroid/icu/impl/duration/impl/DataRecord;->scopeData:[Landroid/icu/impl/duration/impl/DataRecord$ScopeData;

    if-eqz v0, :cond_3a

    .line 123
    mul-int/lit8 v0, p1, 0x3

    add-int/2addr v0, p2

    .line 124
    .local v0, "ix":I
    iget-object v1, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v1, v1, Landroid/icu/impl/duration/impl/DataRecord;->scopeData:[Landroid/icu/impl/duration/impl/DataRecord$ScopeData;

    aget-object v1, v1, v0

    .line 125
    .local v1, "sd":Landroid/icu/impl/duration/impl/DataRecord$ScopeData;
    if-eqz v1, :cond_3a

    .line 126
    iget-object v2, v1, Landroid/icu/impl/duration/impl/DataRecord$ScopeData;->suffix:Ljava/lang/String;

    .line 127
    .local v2, "suffix":Ljava/lang/String;
    if-eqz v2, :cond_3a

    .line 128
    sget-boolean v3, Landroid/icu/impl/duration/impl/PeriodFormatterData;->trace:Z

    if-eqz v3, :cond_37

    .line 129
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "appendSuffix \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 131
    :cond_37
    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    .end local v0    # "ix":I
    .end local v1    # "sd":Landroid/icu/impl/duration/impl/DataRecord$ScopeData;
    .end local v2    # "suffix":Ljava/lang/String;
    :cond_3a
    return-void
.end method

.method public blacklist appendUnit(Landroid/icu/impl/duration/TimeUnit;IIIZZZZZLjava/lang/StringBuffer;)Z
    .registers 27
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

    .line 158
    move-object/from16 v1, p0

    move/from16 v11, p4

    move-object/from16 v10, p10

    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/duration/TimeUnit;->ordinal()I

    move-result v12

    .line 160
    .local v12, "px":I
    const/4 v0, 0x0

    .line 161
    .local v0, "willRequireSkipMarker":Z
    iget-object v2, v1, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v2, v2, Landroid/icu/impl/duration/impl/DataRecord;->requiresSkipMarker:[Z

    if-eqz v2, :cond_2d

    iget-object v2, v1, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v2, v2, Landroid/icu/impl/duration/impl/DataRecord;->requiresSkipMarker:[Z

    aget-boolean v2, v2, v12

    if-eqz v2, :cond_2d

    iget-object v2, v1, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v2, v2, Landroid/icu/impl/duration/impl/DataRecord;->skippedUnitMarker:Ljava/lang/String;

    if-eqz v2, :cond_2d

    .line 163
    if-nez p9, :cond_2a

    if-eqz p8, :cond_2a

    .line 164
    iget-object v2, v1, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v2, v2, Landroid/icu/impl/duration/impl/DataRecord;->skippedUnitMarker:Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    :cond_2a
    const/4 v0, 0x1

    move v13, v0

    goto :goto_2e

    .line 169
    :cond_2d
    move v13, v0

    .end local v0    # "willRequireSkipMarker":Z
    .local v13, "willRequireSkipMarker":Z
    :goto_2e
    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz v11, :cond_70

    .line 170
    if-ne v11, v2, :cond_36

    move v3, v2

    goto :goto_37

    :cond_36
    move v3, v0

    :goto_37
    move v14, v3

    .line 171
    .local v14, "useMedium":Z
    iget-object v3, v1, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    if-eqz v14, :cond_3f

    iget-object v3, v3, Landroid/icu/impl/duration/impl/DataRecord;->mediumNames:[Ljava/lang/String;

    goto :goto_41

    :cond_3f
    iget-object v3, v3, Landroid/icu/impl/duration/impl/DataRecord;->shortNames:[Ljava/lang/String;

    .line 172
    .local v3, "names":[Ljava/lang/String;
    :goto_41
    if-eqz v3, :cond_4a

    aget-object v4, v3, v12

    if-nez v4, :cond_48

    goto :goto_4a

    :cond_48
    move-object v15, v3

    goto :goto_55

    .line 173
    :cond_4a
    :goto_4a
    iget-object v4, v1, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    if-eqz v14, :cond_51

    iget-object v4, v4, Landroid/icu/impl/duration/impl/DataRecord;->shortNames:[Ljava/lang/String;

    goto :goto_53

    :cond_51
    iget-object v4, v4, Landroid/icu/impl/duration/impl/DataRecord;->mediumNames:[Ljava/lang/String;

    :goto_53
    move-object v3, v4

    move-object v15, v3

    .line 175
    .end local v3    # "names":[Ljava/lang/String;
    .local v15, "names":[Ljava/lang/String;
    :goto_55
    if-eqz v15, :cond_6d

    aget-object v3, v15, v12

    if-eqz v3, :cond_6d

    .line 176
    const/4 v4, 0x0

    aget-object v8, v15, v12

    const/4 v3, 0x0

    move-object/from16 v2, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p5

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v10}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendCount(Landroid/icu/impl/duration/TimeUnit;ZZIIZLjava/lang/String;ZLjava/lang/StringBuffer;)I

    .line 178
    return v0

    .line 175
    :cond_6d
    move/from16 v5, p2

    goto :goto_72

    .line 169
    .end local v14    # "useMedium":Z
    .end local v15    # "names":[Ljava/lang/String;
    :cond_70
    move/from16 v5, p2

    .line 183
    :goto_72
    const/4 v3, 0x2

    move/from16 v6, p3

    if-ne v6, v3, :cond_95

    iget-object v4, v1, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v4, v4, Landroid/icu/impl/duration/impl/DataRecord;->halfSupport:[B

    if-eqz v4, :cond_95

    .line 184
    iget-object v4, v1, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v4, v4, Landroid/icu/impl/duration/impl/DataRecord;->halfSupport:[B

    aget-byte v4, v4, v12

    packed-switch v4, :pswitch_data_188

    goto :goto_95

    .line 187
    :pswitch_87
    const/16 v4, 0x3e8

    if-le v5, v4, :cond_8c

    .line 188
    goto :goto_95

    .line 192
    :cond_8c
    :pswitch_8c
    div-int/lit16 v4, v5, 0x1f4

    mul-int/lit16 v4, v4, 0x1f4

    .line 193
    .end local p2    # "count":I
    .local v4, "count":I
    const/4 v5, 0x3

    move v6, v5

    move v5, v4

    .end local p3    # "cv":I
    .local v5, "cv":I
    goto :goto_95

    .line 185
    .end local v4    # "count":I
    .end local v5    # "cv":I
    .restart local p2    # "count":I
    .restart local p3    # "cv":I
    :pswitch_94
    nop

    .line 198
    .end local p2    # "count":I
    .end local p3    # "cv":I
    .local v5, "count":I
    .local v6, "cv":I
    :cond_95
    :goto_95
    const/4 v4, 0x0

    .line 199
    .local v4, "name":Ljava/lang/String;
    if-eqz p7, :cond_9c

    if-eqz p8, :cond_9c

    move v7, v2

    goto :goto_9d

    :cond_9c
    move v7, v0

    :goto_9d
    move-object/from16 v8, p1

    invoke-direct {v1, v8, v5, v6, v7}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->computeForm(Landroid/icu/impl/duration/TimeUnit;IIZ)I

    move-result v7

    .line 200
    .local v7, "form":I
    const/4 v9, 0x6

    const/4 v10, 0x4

    if-ne v7, v10, :cond_be

    .line 201
    iget-object v14, v1, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v14, v14, Landroid/icu/impl/duration/impl/DataRecord;->singularNames:[Ljava/lang/String;

    if-nez v14, :cond_b7

    .line 202
    const/4 v7, 0x1

    .line 203
    iget-object v14, v1, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v14, v14, Landroid/icu/impl/duration/impl/DataRecord;->pluralNames:[[Ljava/lang/String;

    aget-object v14, v14, v12

    aget-object v4, v14, v7

    goto :goto_dd

    .line 205
    :cond_b7
    iget-object v14, v1, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v14, v14, Landroid/icu/impl/duration/impl/DataRecord;->singularNames:[Ljava/lang/String;

    aget-object v4, v14, v12

    goto :goto_dd

    .line 207
    :cond_be
    const/4 v14, 0x5

    if-ne v7, v14, :cond_ca

    .line 208
    iget-object v14, v1, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v14, v14, Landroid/icu/impl/duration/impl/DataRecord;->pluralNames:[[Ljava/lang/String;

    aget-object v14, v14, v12

    aget-object v4, v14, v2

    goto :goto_dd

    .line 209
    :cond_ca
    if-ne v7, v9, :cond_d3

    .line 210
    iget-object v14, v1, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v14, v14, Landroid/icu/impl/duration/impl/DataRecord;->halfNames:[Ljava/lang/String;

    aget-object v4, v14, v12

    goto :goto_dd

    .line 213
    :cond_d3
    :try_start_d3
    iget-object v14, v1, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v14, v14, Landroid/icu/impl/duration/impl/DataRecord;->pluralNames:[[Ljava/lang/String;

    aget-object v14, v14, v12

    aget-object v14, v14, v7
    :try_end_db
    .catch Ljava/lang/NullPointerException; {:try_start_d3 .. :try_end_db} :catch_144

    move-object v4, v14

    .line 217
    nop

    .line 219
    :goto_dd
    if-nez v4, :cond_ea

    .line 220
    const/4 v7, 0x0

    .line 221
    iget-object v14, v1, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v14, v14, Landroid/icu/impl/duration/impl/DataRecord;->pluralNames:[[Ljava/lang/String;

    aget-object v14, v14, v12

    aget-object v4, v14, v7

    move v14, v7

    goto :goto_eb

    .line 219
    :cond_ea
    move v14, v7

    .line 224
    .end local v7    # "form":I
    .local v14, "form":I
    :goto_eb
    if-eq v14, v10, :cond_102

    if-eq v14, v9, :cond_102

    iget-object v7, v1, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-boolean v7, v7, Landroid/icu/impl/duration/impl/DataRecord;->omitSingularCount:Z

    if-eqz v7, :cond_f7

    if-eq v14, v2, :cond_102

    :cond_f7
    iget-object v7, v1, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-boolean v7, v7, Landroid/icu/impl/duration/impl/DataRecord;->omitDualCount:Z

    if-eqz v7, :cond_100

    if-ne v14, v3, :cond_100

    goto :goto_102

    :cond_100
    move v3, v0

    goto :goto_103

    :cond_102
    :goto_102
    move v3, v2

    .line 229
    .local v3, "omitCount":Z
    :goto_103
    move/from16 v7, p5

    move/from16 v9, p8

    move-object/from16 v10, p10

    move-object v2, v8

    move-object v8, v4

    move/from16 v4, p6

    .end local v4    # "name":Ljava/lang/String;
    .local v8, "name":Ljava/lang/String;
    invoke-virtual/range {v1 .. v10}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendCount(Landroid/icu/impl/duration/TimeUnit;ZZIIZLjava/lang/String;ZLjava/lang/StringBuffer;)I

    move-result v0

    .line 231
    .local v0, "suffixIndex":I
    if-eqz p8, :cond_143

    if-ltz v0, :cond_143

    .line 232
    const/4 v2, 0x0

    .line 233
    .local v2, "suffix":Ljava/lang/String;
    iget-object v4, v1, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v4, v4, Landroid/icu/impl/duration/impl/DataRecord;->rqdSuffixes:[Ljava/lang/String;

    if-eqz v4, :cond_129

    iget-object v4, v1, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v4, v4, Landroid/icu/impl/duration/impl/DataRecord;->rqdSuffixes:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_129

    .line 234
    iget-object v4, v1, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v4, v4, Landroid/icu/impl/duration/impl/DataRecord;->rqdSuffixes:[Ljava/lang/String;

    aget-object v2, v4, v0

    .line 236
    :cond_129
    if-nez v2, :cond_13e

    iget-object v4, v1, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v4, v4, Landroid/icu/impl/duration/impl/DataRecord;->optSuffixes:[Ljava/lang/String;

    if-eqz v4, :cond_13e

    iget-object v4, v1, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v4, v4, Landroid/icu/impl/duration/impl/DataRecord;->optSuffixes:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_13e

    .line 238
    iget-object v4, v1, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v4, v4, Landroid/icu/impl/duration/impl/DataRecord;->optSuffixes:[Ljava/lang/String;

    aget-object v2, v4, v0

    .line 240
    :cond_13e
    if-eqz v2, :cond_143

    .line 241
    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 244
    .end local v2    # "suffix":Ljava/lang/String;
    :cond_143
    return v13

    .line 214
    .end local v0    # "suffixIndex":I
    .end local v3    # "omitCount":Z
    .end local v8    # "name":Ljava/lang/String;
    .end local v14    # "form":I
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v7    # "form":I
    :catch_144
    move-exception v0

    move-object/from16 v10, p10

    .line 215
    .local v0, "e":Ljava/lang/NullPointerException;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Null Pointer in PeriodFormatterData["

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v8, v1, Landroid/icu/impl/duration/impl/PeriodFormatterData;->localeName:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "].au px: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " form: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " pn: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v8, v1, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v8, v8, Landroid/icu/impl/duration/impl/DataRecord;->pluralNames:[[Ljava/lang/String;

    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 216
    throw v0

    :pswitch_data_188
    .packed-switch 0x0
        :pswitch_94
        :pswitch_8c
        :pswitch_87
    .end packed-switch
.end method

.method public blacklist appendUnitSeparator(Landroid/icu/impl/duration/TimeUnit;ZZZLjava/lang/StringBuffer;)Z
    .registers 9
    .param p1, "unit"    # Landroid/icu/impl/duration/TimeUnit;
    .param p2, "longSep"    # Z
    .param p3, "afterFirst"    # Z
    .param p4, "beforeLast"    # Z
    .param p5, "sb"    # Ljava/lang/StringBuffer;

    .line 491
    const/4 v0, 0x0

    if-eqz p2, :cond_9

    iget-object v1, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v1, v1, Landroid/icu/impl/duration/impl/DataRecord;->unitSep:[Ljava/lang/String;

    if-nez v1, :cond_f

    :cond_9
    iget-object v1, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v1, v1, Landroid/icu/impl/duration/impl/DataRecord;->shortUnitSep:Ljava/lang/String;

    if-eqz v1, :cond_3d

    .line 492
    :cond_f
    if-eqz p2, :cond_36

    iget-object v1, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v1, v1, Landroid/icu/impl/duration/impl/DataRecord;->unitSep:[Ljava/lang/String;

    if-eqz v1, :cond_36

    .line 493
    if-eqz p3, :cond_1b

    const/4 v1, 0x2

    goto :goto_1c

    :cond_1b
    move v1, v0

    :goto_1c
    add-int/2addr v1, p4

    .line 494
    .local v1, "ix":I
    iget-object v2, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v2, v2, Landroid/icu/impl/duration/impl/DataRecord;->unitSep:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 495
    iget-object v2, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v2, v2, Landroid/icu/impl/duration/impl/DataRecord;->unitSepRequiresDP:[Z

    if-eqz v2, :cond_35

    iget-object v2, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v2, v2, Landroid/icu/impl/duration/impl/DataRecord;->unitSepRequiresDP:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_35

    const/4 v0, 0x1

    :cond_35
    return v0

    .line 497
    .end local v1    # "ix":I
    :cond_36
    iget-object v1, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v1, v1, Landroid/icu/impl/duration/impl/DataRecord;->shortUnitSep:Ljava/lang/String;

    invoke-virtual {p5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 499
    :cond_3d
    return v0
.end method

.method public blacklist pluralization()I
    .registers 2

    .line 70
    iget-object v0, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-byte v0, v0, Landroid/icu/impl/duration/impl/DataRecord;->pl:B

    return v0
.end method

.method public blacklist useMilliseconds()I
    .registers 2

    .line 86
    iget-object v0, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-byte v0, v0, Landroid/icu/impl/duration/impl/DataRecord;->useMilliseconds:B

    return v0
.end method

.method public blacklist weeksAloneOnly()Z
    .registers 2

    .line 82
    iget-object v0, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-boolean v0, v0, Landroid/icu/impl/duration/impl/DataRecord;->weeksAloneOnly:Z

    return v0
.end method
