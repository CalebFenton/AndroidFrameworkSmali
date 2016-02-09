.class public Ljava/util/Date;
.super Ljava/lang/Object;
.source "Date.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Date$CreationYear;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x686a81014b597419L


# instance fields
.field private transient milliseconds:J


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    #@7
    .line 60
    return-void
.end method

.method public constructor <init>(III)V
    .locals 4
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 79
    new-instance v0, Ljava/util/GregorianCalendar;

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Z)V

    #@9
    .line 80
    .local v0, "cal":Ljava/util/GregorianCalendar;
    add-int/lit16 v1, p1, 0x76c

    #@b
    invoke-virtual {v0, v1, p2, p3}, Ljava/util/GregorianCalendar;->set(III)V

    #@e
    .line 81
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    #@11
    move-result-wide v2

    #@12
    iput-wide v2, p0, Ljava/util/Date;->milliseconds:J

    #@14
    .line 78
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 6
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 103
    new-instance v0, Ljava/util/GregorianCalendar;

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Z)V

    #@9
    .line 104
    .local v0, "cal":Ljava/util/GregorianCalendar;
    add-int/lit16 v1, p1, 0x76c

    #@b
    move v2, p2

    #@c
    move v3, p3

    #@d
    move v4, p4

    #@e
    move v5, p5

    #@f
    invoke-virtual/range {v0 .. v5}, Ljava/util/GregorianCalendar;->set(IIIII)V

    #@12
    .line 105
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    #@15
    move-result-wide v2

    #@16
    iput-wide v2, p0, Ljava/util/Date;->milliseconds:J

    #@18
    .line 102
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 7
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 130
    new-instance v0, Ljava/util/GregorianCalendar;

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Z)V

    #@9
    .line 131
    .local v0, "cal":Ljava/util/GregorianCalendar;
    add-int/lit16 v1, p1, 0x76c

    #@b
    move v2, p2

    #@c
    move v3, p3

    #@d
    move v4, p4

    #@e
    move v5, p5

    #@f
    move v6, p6

    #@10
    invoke-virtual/range {v0 .. v6}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    #@13
    .line 132
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    #@16
    move-result-wide v2

    #@17
    iput-wide v2, p0, Ljava/util/Date;->milliseconds:J

    #@19
    .line 129
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "milliseconds"    # J

    #@0
    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 143
    iput-wide p1, p0, Ljava/util/Date;->milliseconds:J

    #@5
    .line 142
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 157
    invoke-static {p1}, Ljava/util/Date;->parse(Ljava/lang/String;)J

    #@6
    move-result-wide v0

    #@7
    iput-wide v0, p0, Ljava/util/Date;->milliseconds:J

    #@9
    .line 156
    return-void
.end method

.method public static UTC(IIIIII)J
    .locals 7
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I
    .param p3, "hour"    # I
    .param p4, "minute"    # I
    .param p5, "second"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 762
    new-instance v0, Ljava/util/GregorianCalendar;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Z)V

    #@6
    .line 763
    .local v0, "cal":Ljava/util/GregorianCalendar;
    const-string/jumbo v1, "GMT"

    #@9
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    #@10
    .line 764
    add-int/lit16 v1, p0, 0x76c

    #@12
    move v2, p1

    #@13
    move v3, p2

    #@14
    move v4, p3

    #@15
    move v5, p4

    #@16
    move v6, p5

    #@17
    invoke-virtual/range {v0 .. v6}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    #@1a
    .line 765
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    #@1d
    move-result-wide v2

    #@1e
    return-wide v2
.end method

.method private static appendTwoDigits(Ljava/lang/StringBuilder;I)V
    .locals 1
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "n"    # I

    #@0
    .prologue
    .line 731
    const/16 v0, 0xa

    #@2
    if-ge p1, v0, :cond_0

    #@4
    .line 732
    const/16 v0, 0x30

    #@6
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@9
    .line 734
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c
    .line 730
    return-void
.end method

.method private static parse(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "array"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 358
    const/4 v7, 0x0

    #@2
    .local v7, "i":I
    array-length v6, p1

    #@3
    .local v6, "alength":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@6
    move-result v5

    #@7
    .local v5, "slength":I
    :goto_0
    if-ge v7, v6, :cond_1

    #@9
    .line 359
    aget-object v3, p1, v7

    #@b
    const/4 v1, 0x1

    #@c
    move-object v0, p0

    #@d
    move v4, v2

    #@e
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 360
    return v7

    #@15
    .line 358
    :cond_0
    add-int/lit8 v7, v7, 0x1

    #@17
    goto :goto_0

    #@18
    .line 363
    :cond_1
    const/4 v0, -0x1

    #@19
    return v0
.end method

.method public static parse(Ljava/lang/String;)J
    .locals 36
    .param p0, "string"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 383
    if-nez p0, :cond_0

    #@2
    .line 384
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v8, "The string argument is null"

    #@7
    invoke-direct {v2, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 387
    :cond_0
    const/16 v27, 0x0

    #@d
    .line 388
    .local v27, "sign":C
    const/16 v19, 0x0

    #@f
    .line 389
    .local v19, "commentLevel":I
    const/16 v26, 0x0

    #@11
    .local v26, "offset":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    #@14
    move-result v21

    #@15
    .local v21, "length":I
    const/16 v28, 0x0

    #@17
    .line 390
    .local v28, "state":I
    const/16 v33, -0x1

    #@19
    .local v33, "year":I
    const/4 v3, -0x1

    #@1a
    .local v3, "month":I
    const/4 v4, -0x1

    #@1b
    .line 391
    .local v4, "date":I
    const/4 v5, -0x1

    #@1c
    .local v5, "hour":I
    const/4 v6, -0x1

    #@1d
    .local v6, "minute":I
    const/4 v7, -0x1

    #@1e
    .local v7, "second":I
    const/16 v35, 0x0

    #@20
    .local v35, "zoneOffset":I
    const/16 v22, 0x0

    #@22
    .line 392
    .local v22, "minutesOffset":I
    const/16 v34, 0x0

    #@24
    .line 393
    .local v34, "zone":Z
    const/16 v17, 0x0

    #@26
    .local v17, "PAD":I
    const/4 v15, 0x1

    #@27
    .local v15, "LETTERS":I
    const/16 v16, 0x2

    #@29
    .line 394
    .local v16, "NUMBERS":I
    new-instance v18, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    .line 396
    .end local v27    # "sign":C
    .local v18, "buffer":Ljava/lang/StringBuilder;
    :cond_1
    :goto_0
    move/from16 v0, v26

    #@30
    move/from16 v1, v21

    #@32
    if-gt v0, v1, :cond_35

    #@34
    .line 397
    move/from16 v0, v26

    #@36
    move/from16 v1, v21

    #@38
    if-ge v0, v1, :cond_e

    #@3a
    move-object/from16 v0, p0

    #@3c
    move/from16 v1, v26

    #@3e
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@41
    move-result v24

    #@42
    .line 398
    :goto_1
    add-int/lit8 v26, v26, 0x1

    #@44
    .line 400
    const/16 v2, 0x28

    #@46
    move/from16 v0, v24

    #@48
    if-ne v0, v2, :cond_2

    #@4a
    .line 401
    add-int/lit8 v19, v19, 0x1

    #@4c
    .line 403
    :cond_2
    if-lez v19, :cond_4

    #@4e
    .line 404
    const/16 v2, 0x29

    #@50
    move/from16 v0, v24

    #@52
    if-ne v0, v2, :cond_3

    #@54
    .line 405
    add-int/lit8 v19, v19, -0x1

    #@56
    .line 407
    :cond_3
    if-nez v19, :cond_1

    #@58
    .line 408
    const/16 v24, 0x20

    #@5a
    .line 414
    :cond_4
    const/16 v25, 0x0

    #@5c
    .line 415
    .local v25, "nextState":I
    const/16 v2, 0x61

    #@5e
    move/from16 v0, v24

    #@60
    if-gt v2, v0, :cond_f

    #@62
    const/16 v2, 0x7a

    #@64
    move/from16 v0, v24

    #@66
    if-gt v0, v2, :cond_f

    #@68
    .line 416
    :cond_5
    const/16 v25, 0x1

    #@6a
    .line 423
    :cond_6
    :goto_2
    const/4 v2, 0x2

    #@6b
    move/from16 v0, v28

    #@6d
    if-ne v0, v2, :cond_27

    #@6f
    const/4 v2, 0x2

    #@70
    move/from16 v0, v25

    #@72
    if-eq v0, v2, :cond_27

    #@74
    .line 424
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v2

    #@78
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@7b
    move-result v20

    #@7c
    .line 425
    .local v20, "digit":I
    const/4 v2, 0x0

    #@7d
    move-object/from16 v0, v18

    #@7f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    #@82
    .line 426
    const/16 v2, 0x2b

    #@84
    move/from16 v0, v27

    #@86
    if-eq v0, v2, :cond_7

    #@88
    const/16 v2, 0x2d

    #@8a
    move/from16 v0, v27

    #@8c
    if-ne v0, v2, :cond_15

    #@8e
    .line 427
    :cond_7
    if-nez v35, :cond_14

    #@90
    .line 428
    const/16 v34, 0x1

    #@92
    .line 429
    const/16 v2, 0x3a

    #@94
    move/from16 v0, v24

    #@96
    if-ne v0, v2, :cond_8

    #@98
    .line 430
    const/16 v2, 0x2d

    #@9a
    move/from16 v0, v27

    #@9c
    if-ne v0, v2, :cond_12

    #@9e
    .line 432
    add-int/lit8 v2, v26, 0x2

    #@a0
    .line 431
    move-object/from16 v0, p0

    #@a2
    move/from16 v1, v26

    #@a4
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@a7
    move-result-object v2

    #@a8
    .line 430
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@ab
    move-result v2

    #@ac
    neg-int v0, v2

    #@ad
    move/from16 v22, v0

    #@af
    .line 435
    :goto_3
    add-int/lit8 v26, v26, 0x2

    #@b1
    .line 437
    :cond_8
    const/16 v2, 0x2d

    #@b3
    move/from16 v0, v27

    #@b5
    if-ne v0, v2, :cond_13

    #@b7
    move/from16 v0, v20

    #@b9
    neg-int v0, v0

    #@ba
    move/from16 v35, v0

    #@bc
    .line 438
    :goto_4
    const/16 v27, 0x0

    #@be
    .line 522
    .end local v20    # "digit":I
    :cond_9
    :goto_5
    const/16 v2, 0x2b

    #@c0
    move/from16 v0, v24

    #@c2
    if-eq v0, v2, :cond_a

    #@c4
    const/4 v2, -0x1

    #@c5
    move/from16 v0, v33

    #@c7
    if-eq v0, v2, :cond_34

    #@c9
    const/16 v2, 0x2d

    #@cb
    move/from16 v0, v24

    #@cd
    if-ne v0, v2, :cond_34

    #@cf
    .line 523
    :cond_a
    move/from16 v27, v24

    #@d1
    .line 529
    :cond_b
    :goto_6
    const/4 v2, 0x1

    #@d2
    move/from16 v0, v25

    #@d4
    if-eq v0, v2, :cond_c

    #@d6
    const/4 v2, 0x2

    #@d7
    move/from16 v0, v25

    #@d9
    if-ne v0, v2, :cond_d

    #@db
    .line 530
    :cond_c
    move-object/from16 v0, v18

    #@dd
    move/from16 v1, v24

    #@df
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@e2
    .line 532
    :cond_d
    move/from16 v28, v25

    #@e4
    goto/16 :goto_0

    #@e6
    .line 397
    .end local v25    # "nextState":I
    :cond_e
    const/16 v24, 0xd

    #@e8
    .local v24, "next":C
    goto/16 :goto_1

    #@ea
    .line 415
    .end local v24    # "next":C
    .restart local v25    # "nextState":I
    :cond_f
    const/16 v2, 0x41

    #@ec
    move/from16 v0, v24

    #@ee
    if-gt v2, v0, :cond_10

    #@f0
    const/16 v2, 0x5a

    #@f2
    move/from16 v0, v24

    #@f4
    if-le v0, v2, :cond_5

    #@f6
    .line 417
    :cond_10
    const/16 v2, 0x30

    #@f8
    move/from16 v0, v24

    #@fa
    if-gt v2, v0, :cond_11

    #@fc
    const/16 v2, 0x39

    #@fe
    move/from16 v0, v24

    #@100
    if-gt v0, v2, :cond_11

    #@102
    .line 418
    const/16 v25, 0x2

    #@104
    .line 417
    goto/16 :goto_2

    #@106
    .line 419
    :cond_11
    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->isSpace(C)Z

    #@109
    move-result v2

    #@10a
    if-nez v2, :cond_6

    #@10c
    const-string/jumbo v2, ",+-:/"

    #@10f
    move/from16 v0, v24

    #@111
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    #@114
    move-result v2

    #@115
    const/4 v8, -0x1

    #@116
    if-ne v2, v8, :cond_6

    #@118
    .line 420
    invoke-static/range {p0 .. p0}, Ljava/util/Date;->parseError(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    #@11b
    move-result-object v2

    #@11c
    throw v2

    #@11d
    .line 434
    .restart local v20    # "digit":I
    :cond_12
    add-int/lit8 v2, v26, 0x2

    #@11f
    .line 433
    move-object/from16 v0, p0

    #@121
    move/from16 v1, v26

    #@123
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@126
    move-result-object v2

    #@127
    .line 432
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@12a
    move-result v22

    #@12b
    goto :goto_3

    #@12c
    .line 437
    :cond_13
    move/from16 v35, v20

    #@12e
    goto :goto_4

    #@12f
    .line 440
    :cond_14
    invoke-static/range {p0 .. p0}, Ljava/util/Date;->parseError(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    #@132
    move-result-object v2

    #@133
    throw v2

    #@134
    .line 442
    :cond_15
    const/16 v2, 0x46

    #@136
    move/from16 v0, v20

    #@138
    if-lt v0, v2, :cond_19

    #@13a
    .line 443
    const/4 v2, -0x1

    #@13b
    move/from16 v0, v33

    #@13d
    if-ne v0, v2, :cond_18

    #@13f
    .line 444
    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->isSpace(C)Z

    #@142
    move-result v2

    #@143
    if-nez v2, :cond_16

    #@145
    const/16 v2, 0x2c

    #@147
    move/from16 v0, v24

    #@149
    if-ne v0, v2, :cond_17

    #@14b
    .line 446
    :cond_16
    move/from16 v33, v20

    #@14d
    .line 445
    goto/16 :goto_5

    #@14f
    :cond_17
    const/16 v2, 0x2f

    #@151
    move/from16 v0, v24

    #@153
    if-eq v0, v2, :cond_16

    #@155
    const/16 v2, 0xd

    #@157
    move/from16 v0, v24

    #@159
    if-eq v0, v2, :cond_16

    #@15b
    .line 448
    :cond_18
    invoke-static/range {p0 .. p0}, Ljava/util/Date;->parseError(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    #@15e
    move-result-object v2

    #@15f
    throw v2

    #@160
    .line 450
    :cond_19
    const/16 v2, 0x3a

    #@162
    move/from16 v0, v24

    #@164
    if-ne v0, v2, :cond_1c

    #@166
    .line 451
    const/4 v2, -0x1

    #@167
    if-ne v5, v2, :cond_1a

    #@169
    .line 452
    move/from16 v5, v20

    #@16b
    goto/16 :goto_5

    #@16d
    .line 453
    :cond_1a
    const/4 v2, -0x1

    #@16e
    if-ne v6, v2, :cond_1b

    #@170
    .line 454
    move/from16 v6, v20

    #@172
    goto/16 :goto_5

    #@174
    .line 456
    :cond_1b
    invoke-static/range {p0 .. p0}, Ljava/util/Date;->parseError(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    #@177
    move-result-object v2

    #@178
    throw v2

    #@179
    .line 458
    :cond_1c
    const/16 v2, 0x2f

    #@17b
    move/from16 v0, v24

    #@17d
    if-ne v0, v2, :cond_1f

    #@17f
    .line 459
    const/4 v2, -0x1

    #@180
    if-ne v3, v2, :cond_1d

    #@182
    .line 460
    add-int/lit8 v3, v20, -0x1

    #@184
    goto/16 :goto_5

    #@186
    .line 461
    :cond_1d
    const/4 v2, -0x1

    #@187
    if-ne v4, v2, :cond_1e

    #@189
    .line 462
    move/from16 v4, v20

    #@18b
    goto/16 :goto_5

    #@18d
    .line 464
    :cond_1e
    invoke-static/range {p0 .. p0}, Ljava/util/Date;->parseError(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    #@190
    move-result-object v2

    #@191
    throw v2

    #@192
    .line 466
    :cond_1f
    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->isSpace(C)Z

    #@195
    move-result v2

    #@196
    if-nez v2, :cond_20

    #@198
    const/16 v2, 0x2c

    #@19a
    move/from16 v0, v24

    #@19c
    if-ne v0, v2, :cond_21

    #@19e
    .line 468
    :cond_20
    const/4 v2, -0x1

    #@19f
    if-eq v5, v2, :cond_22

    #@1a1
    const/4 v2, -0x1

    #@1a2
    if-ne v6, v2, :cond_22

    #@1a4
    .line 469
    move/from16 v6, v20

    #@1a6
    .line 468
    goto/16 :goto_5

    #@1a8
    .line 467
    :cond_21
    const/16 v2, 0x2d

    #@1aa
    move/from16 v0, v24

    #@1ac
    if-eq v0, v2, :cond_20

    #@1ae
    const/16 v2, 0xd

    #@1b0
    move/from16 v0, v24

    #@1b2
    if-eq v0, v2, :cond_20

    #@1b4
    .line 479
    const/4 v2, -0x1

    #@1b5
    move/from16 v0, v33

    #@1b7
    if-ne v0, v2, :cond_26

    #@1b9
    const/4 v2, -0x1

    #@1ba
    if-eq v3, v2, :cond_26

    #@1bc
    const/4 v2, -0x1

    #@1bd
    if-eq v4, v2, :cond_26

    #@1bf
    .line 480
    move/from16 v33, v20

    #@1c1
    .line 479
    goto/16 :goto_5

    #@1c3
    .line 470
    :cond_22
    const/4 v2, -0x1

    #@1c4
    if-eq v6, v2, :cond_23

    #@1c6
    const/4 v2, -0x1

    #@1c7
    if-ne v7, v2, :cond_23

    #@1c9
    .line 471
    move/from16 v7, v20

    #@1cb
    .line 470
    goto/16 :goto_5

    #@1cd
    .line 472
    :cond_23
    const/4 v2, -0x1

    #@1ce
    if-ne v4, v2, :cond_24

    #@1d0
    .line 473
    move/from16 v4, v20

    #@1d2
    goto/16 :goto_5

    #@1d4
    .line 474
    :cond_24
    const/4 v2, -0x1

    #@1d5
    move/from16 v0, v33

    #@1d7
    if-ne v0, v2, :cond_25

    #@1d9
    .line 475
    move/from16 v33, v20

    #@1db
    goto/16 :goto_5

    #@1dd
    .line 477
    :cond_25
    invoke-static/range {p0 .. p0}, Ljava/util/Date;->parseError(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    #@1e0
    move-result-object v2

    #@1e1
    throw v2

    #@1e2
    .line 482
    :cond_26
    invoke-static/range {p0 .. p0}, Ljava/util/Date;->parseError(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    #@1e5
    move-result-object v2

    #@1e6
    throw v2

    #@1e7
    .line 484
    .end local v20    # "digit":I
    :cond_27
    const/4 v2, 0x1

    #@1e8
    move/from16 v0, v28

    #@1ea
    if-ne v0, v2, :cond_9

    #@1ec
    const/4 v2, 0x1

    #@1ed
    move/from16 v0, v25

    #@1ef
    if-eq v0, v2, :cond_9

    #@1f1
    .line 485
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f4
    move-result-object v2

    #@1f5
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@1f7
    invoke-virtual {v2, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@1fa
    move-result-object v30

    #@1fb
    .line 486
    .local v30, "text":Ljava/lang/String;
    const/4 v2, 0x0

    #@1fc
    move-object/from16 v0, v18

    #@1fe
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    #@201
    .line 487
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    #@204
    move-result v2

    #@205
    const/4 v8, 0x1

    #@206
    if-ne v2, v8, :cond_28

    #@208
    .line 488
    invoke-static/range {p0 .. p0}, Ljava/util/Date;->parseError(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    #@20b
    move-result-object v2

    #@20c
    throw v2

    #@20d
    .line 490
    :cond_28
    const-string/jumbo v2, "AM"

    #@210
    move-object/from16 v0, v30

    #@212
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@215
    move-result v2

    #@216
    if-eqz v2, :cond_2b

    #@218
    .line 491
    const/16 v2, 0xc

    #@21a
    if-ne v5, v2, :cond_29

    #@21c
    .line 492
    const/4 v5, 0x0

    #@21d
    goto/16 :goto_5

    #@21f
    .line 493
    :cond_29
    const/4 v2, 0x1

    #@220
    if-lt v5, v2, :cond_2a

    #@222
    const/16 v2, 0xc

    #@224
    if-le v5, v2, :cond_9

    #@226
    .line 494
    :cond_2a
    invoke-static/range {p0 .. p0}, Ljava/util/Date;->parseError(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    #@229
    move-result-object v2

    #@22a
    throw v2

    #@22b
    .line 496
    :cond_2b
    const-string/jumbo v2, "PM"

    #@22e
    move-object/from16 v0, v30

    #@230
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@233
    move-result v2

    #@234
    if-eqz v2, :cond_2f

    #@236
    .line 497
    const/16 v2, 0xc

    #@238
    if-ne v5, v2, :cond_2d

    #@23a
    .line 498
    const/4 v5, 0x0

    #@23b
    .line 502
    :cond_2c
    add-int/lit8 v5, v5, 0xc

    #@23d
    goto/16 :goto_5

    #@23f
    .line 499
    :cond_2d
    const/4 v2, 0x1

    #@240
    if-lt v5, v2, :cond_2e

    #@242
    const/16 v2, 0xc

    #@244
    if-le v5, v2, :cond_2c

    #@246
    .line 500
    :cond_2e
    invoke-static/range {p0 .. p0}, Ljava/util/Date;->parseError(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    #@249
    move-result-object v2

    #@24a
    throw v2

    #@24b
    .line 504
    :cond_2f
    new-instance v29, Ljava/text/DateFormatSymbols;

    #@24d
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@24f
    move-object/from16 v0, v29

    #@251
    invoke-direct {v0, v2}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    #@254
    .line 505
    .local v29, "symbols":Ljava/text/DateFormatSymbols;
    invoke-virtual/range {v29 .. v29}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    #@257
    move-result-object v32

    #@258
    .local v32, "weekdays":[Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    #@25b
    move-result-object v23

    #@25c
    .line 508
    .local v23, "months":[Ljava/lang/String;
    move-object/from16 v0, v30

    #@25e
    move-object/from16 v1, v32

    #@260
    invoke-static {v0, v1}, Ljava/util/Date;->parse(Ljava/lang/String;[Ljava/lang/String;)I

    #@263
    move-result v2

    #@264
    const/4 v8, -0x1

    #@265
    if-ne v2, v8, :cond_9

    #@267
    .line 509
    const/4 v2, -0x1

    #@268
    if-ne v3, v2, :cond_30

    #@26a
    move-object/from16 v0, v30

    #@26c
    move-object/from16 v1, v23

    #@26e
    invoke-static {v0, v1}, Ljava/util/Date;->parse(Ljava/lang/String;[Ljava/lang/String;)I

    #@271
    move-result v3

    #@272
    const/4 v2, -0x1

    #@273
    if-ne v3, v2, :cond_9

    #@275
    .line 510
    :cond_30
    const-string/jumbo v2, "GMT"

    #@278
    move-object/from16 v0, v30

    #@27a
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27d
    move-result v2

    #@27e
    if-nez v2, :cond_31

    #@280
    const-string/jumbo v2, "UT"

    #@283
    move-object/from16 v0, v30

    #@285
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@288
    move-result v2

    #@289
    if-nez v2, :cond_31

    #@28b
    const-string/jumbo v2, "UTC"

    #@28e
    move-object/from16 v0, v30

    #@290
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@293
    move-result v2

    #@294
    if-eqz v2, :cond_32

    #@296
    .line 511
    :cond_31
    const/16 v34, 0x1

    #@298
    .line 512
    const/16 v35, 0x0

    #@29a
    goto/16 :goto_5

    #@29c
    .line 513
    :cond_32
    invoke-static/range {v30 .. v30}, Ljava/util/Date;->zone(Ljava/lang/String;)I

    #@29f
    move-result v31

    #@2a0
    .local v31, "value":I
    if-eqz v31, :cond_33

    #@2a2
    .line 514
    const/16 v34, 0x1

    #@2a4
    .line 515
    move/from16 v35, v31

    #@2a6
    goto/16 :goto_5

    #@2a8
    .line 517
    :cond_33
    invoke-static/range {p0 .. p0}, Ljava/util/Date;->parseError(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    #@2ab
    move-result-object v2

    #@2ac
    throw v2

    #@2ad
    .line 524
    .end local v23    # "months":[Ljava/lang/String;
    .end local v29    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v30    # "text":Ljava/lang/String;
    .end local v31    # "value":I
    .end local v32    # "weekdays":[Ljava/lang/String;
    :cond_34
    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->isSpace(C)Z

    #@2b0
    move-result v2

    #@2b1
    if-nez v2, :cond_b

    #@2b3
    const/16 v2, 0x2c

    #@2b5
    move/from16 v0, v24

    #@2b7
    if-eq v0, v2, :cond_b

    #@2b9
    .line 525
    const/4 v2, 0x2

    #@2ba
    move/from16 v0, v25

    #@2bc
    if-eq v0, v2, :cond_b

    #@2be
    .line 526
    const/16 v27, 0x0

    #@2c0
    .restart local v27    # "sign":C
    goto/16 :goto_6

    #@2c2
    .line 535
    .end local v25    # "nextState":I
    .end local v27    # "sign":C
    :cond_35
    const/4 v2, -0x1

    #@2c3
    move/from16 v0, v33

    #@2c5
    if-eq v0, v2, :cond_3e

    #@2c7
    const/4 v2, -0x1

    #@2c8
    if-eq v3, v2, :cond_3e

    #@2ca
    const/4 v2, -0x1

    #@2cb
    if-eq v4, v2, :cond_3e

    #@2cd
    .line 536
    const/4 v2, -0x1

    #@2ce
    if-ne v5, v2, :cond_36

    #@2d0
    .line 537
    const/4 v5, 0x0

    #@2d1
    .line 539
    :cond_36
    const/4 v2, -0x1

    #@2d2
    if-ne v6, v2, :cond_37

    #@2d4
    .line 540
    const/4 v6, 0x0

    #@2d5
    .line 542
    :cond_37
    const/4 v2, -0x1

    #@2d6
    if-ne v7, v2, :cond_38

    #@2d8
    .line 543
    const/4 v7, 0x0

    #@2d9
    .line 545
    :cond_38
    invoke-static {}, Ljava/util/Date$CreationYear;->-get0()I

    #@2dc
    move-result v2

    #@2dd
    add-int/lit8 v2, v2, -0x50

    #@2df
    move/from16 v0, v33

    #@2e1
    if-ge v0, v2, :cond_3b

    #@2e3
    .line 546
    move/from16 v0, v33

    #@2e5
    add-int/lit16 v0, v0, 0x7d0

    #@2e7
    move/from16 v33, v0

    #@2e9
    .line 550
    :cond_39
    :goto_7
    sub-int v6, v6, v22

    #@2eb
    .line 551
    if-eqz v34, :cond_3d

    #@2ed
    .line 552
    const/16 v2, 0x18

    #@2ef
    move/from16 v0, v35

    #@2f1
    if-ge v0, v2, :cond_3a

    #@2f3
    const/16 v2, -0x18

    #@2f5
    move/from16 v0, v35

    #@2f7
    if-gt v0, v2, :cond_3c

    #@2f9
    .line 553
    :cond_3a
    div-int/lit8 v2, v35, 0x64

    #@2fb
    sub-int/2addr v5, v2

    #@2fc
    .line 554
    rem-int/lit8 v2, v35, 0x64

    #@2fe
    sub-int/2addr v6, v2

    #@2ff
    .line 558
    :goto_8
    move/from16 v0, v33

    #@301
    add-int/lit16 v2, v0, -0x76c

    #@303
    invoke-static/range {v2 .. v7}, Ljava/util/Date;->UTC(IIIIII)J

    #@306
    move-result-wide v8

    #@307
    return-wide v8

    #@308
    .line 547
    :cond_3b
    const/16 v2, 0x64

    #@30a
    move/from16 v0, v33

    #@30c
    if-ge v0, v2, :cond_39

    #@30e
    .line 548
    move/from16 v0, v33

    #@310
    add-int/lit16 v0, v0, 0x76c

    #@312
    move/from16 v33, v0

    #@314
    goto :goto_7

    #@315
    .line 556
    :cond_3c
    sub-int v5, v5, v35

    #@317
    goto :goto_8

    #@318
    .line 560
    :cond_3d
    new-instance v8, Ljava/util/Date;

    #@31a
    move/from16 v0, v33

    #@31c
    add-int/lit16 v9, v0, -0x76c

    #@31e
    move v10, v3

    #@31f
    move v11, v4

    #@320
    move v12, v5

    #@321
    move v13, v6

    #@322
    move v14, v7

    #@323
    invoke-direct/range {v8 .. v14}, Ljava/util/Date;-><init>(IIIIII)V

    #@326
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    #@329
    move-result-wide v8

    #@32a
    return-wide v8

    #@32b
    .line 563
    :cond_3e
    invoke-static/range {p0 .. p0}, Ljava/util/Date;->parseError(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    #@32e
    move-result-object v2

    #@32f
    throw v2
.end method

.method private static parseError(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    #@0
    .prologue
    .line 367
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "Parse error: "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 803
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 804
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    #@6
    move-result-wide v0

    #@7
    invoke-virtual {p0, v0, v1}, Ljava/util/Date;->setTime(J)V

    #@a
    .line 802
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 797
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@3
    .line 798
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    #@6
    move-result-wide v0

    #@7
    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    #@a
    .line 796
    return-void
.end method

.method private static zone(Ljava/lang/String;)I
    .locals 4
    .param p0, "text"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, -0x5

    #@1
    const/4 v2, -0x6

    #@2
    const/4 v1, -0x7

    #@3
    .line 769
    const-string/jumbo v0, "EST"

    #@6
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 770
    return v3

    #@d
    .line 772
    :cond_0
    const-string/jumbo v0, "EDT"

    #@10
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 773
    const/4 v0, -0x4

    #@17
    return v0

    #@18
    .line 775
    :cond_1
    const-string/jumbo v0, "CST"

    #@1b
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_2

    #@21
    .line 776
    return v2

    #@22
    .line 778
    :cond_2
    const-string/jumbo v0, "CDT"

    #@25
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v0

    #@29
    if-eqz v0, :cond_3

    #@2b
    .line 779
    return v3

    #@2c
    .line 781
    :cond_3
    const-string/jumbo v0, "MST"

    #@2f
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v0

    #@33
    if-eqz v0, :cond_4

    #@35
    .line 782
    return v1

    #@36
    .line 784
    :cond_4
    const-string/jumbo v0, "MDT"

    #@39
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3c
    move-result v0

    #@3d
    if-eqz v0, :cond_5

    #@3f
    .line 785
    return v2

    #@40
    .line 787
    :cond_5
    const-string/jumbo v0, "PST"

    #@43
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@46
    move-result v0

    #@47
    if-eqz v0, :cond_6

    #@49
    .line 788
    const/4 v0, -0x8

    #@4a
    return v0

    #@4b
    .line 790
    :cond_6
    const-string/jumbo v0, "PDT"

    #@4e
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@51
    move-result v0

    #@52
    if-eqz v0, :cond_7

    #@54
    .line 791
    return v1

    #@55
    .line 793
    :cond_7
    const/4 v0, 0x0

    #@56
    return v0
.end method


# virtual methods
.method public after(Ljava/util/Date;)Z
    .locals 4
    .param p1, "date"    # Ljava/util/Date;

    #@0
    .prologue
    .line 169
    iget-wide v0, p0, Ljava/util/Date;->milliseconds:J

    #@2
    iget-wide v2, p1, Ljava/util/Date;->milliseconds:J

    #@4
    cmp-long v0, v0, v2

    #@6
    if-lez v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public before(Ljava/util/Date;)Z
    .locals 4
    .param p1, "date"    # Ljava/util/Date;

    #@0
    .prologue
    .line 181
    iget-wide v0, p0, Ljava/util/Date;->milliseconds:J

    #@2
    iget-wide v2, p1, Ljava/util/Date;->milliseconds:J

    #@4
    cmp-long v0, v0, v2

    #@6
    if-gez v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 194
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v1

    #@4
    return-object v1

    #@5
    .line 195
    :catch_0
    move-exception v0

    #@6
    .line 196
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    #@8
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@b
    throw v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "date"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 209
    check-cast p1, Ljava/util/Date;

    #@2
    .end local p1    # "date":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public compareTo(Ljava/util/Date;)I
    .locals 4
    .param p1, "date"    # Ljava/util/Date;

    #@0
    .prologue
    .line 210
    iget-wide v0, p0, Ljava/util/Date;->milliseconds:J

    #@2
    iget-wide v2, p1, Ljava/util/Date;->milliseconds:J

    #@4
    cmp-long v0, v0, v2

    #@6
    if-gez v0, :cond_0

    #@8
    .line 211
    const/4 v0, -0x1

    #@9
    return v0

    #@a
    .line 213
    :cond_0
    iget-wide v0, p0, Ljava/util/Date;->milliseconds:J

    #@c
    iget-wide v2, p1, Ljava/util/Date;->milliseconds:J

    #@e
    cmp-long v0, v0, v2

    #@10
    if-nez v0, :cond_1

    #@12
    .line 214
    const/4 v0, 0x0

    #@13
    return v0

    #@14
    .line 216
    :cond_1
    const/4 v0, 0x1

    #@15
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 233
    if-eq p1, p0, :cond_0

    #@4
    instance-of v2, p1, Ljava/util/Date;

    #@6
    if-eqz v2, :cond_2

    #@8
    .line 234
    iget-wide v2, p0, Ljava/util/Date;->milliseconds:J

    #@a
    check-cast p1, Ljava/util/Date;

    #@c
    .end local p1    # "object":Ljava/lang/Object;
    iget-wide v4, p1, Ljava/util/Date;->milliseconds:J

    #@e
    cmp-long v2, v2, v4

    #@10
    if-nez v2, :cond_1

    #@12
    .line 233
    :cond_0
    :goto_0
    return v0

    #@13
    :cond_1
    move v0, v1

    #@14
    .line 234
    goto :goto_0

    #@15
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_2
    move v0, v1

    #@16
    .line 233
    goto :goto_0
.end method

.method public getDate()I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 246
    new-instance v0, Ljava/util/GregorianCalendar;

    #@2
    iget-wide v2, p0, Ljava/util/Date;->milliseconds:J

    #@4
    invoke-direct {v0, v2, v3}, Ljava/util/GregorianCalendar;-><init>(J)V

    #@7
    const/4 v1, 0x5

    #@8
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public getDay()I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 258
    new-instance v0, Ljava/util/GregorianCalendar;

    #@2
    iget-wide v2, p0, Ljava/util/Date;->milliseconds:J

    #@4
    invoke-direct {v0, v2, v3}, Ljava/util/GregorianCalendar;-><init>(J)V

    #@7
    const/4 v1, 0x7

    #@8
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    #@b
    move-result v0

    #@c
    add-int/lit8 v0, v0, -0x1

    #@e
    return v0
.end method

.method public getHours()I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 270
    new-instance v0, Ljava/util/GregorianCalendar;

    #@2
    iget-wide v2, p0, Ljava/util/Date;->milliseconds:J

    #@4
    invoke-direct {v0, v2, v3}, Ljava/util/GregorianCalendar;-><init>(J)V

    #@7
    const/16 v1, 0xb

    #@9
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    #@c
    move-result v0

    #@d
    return v0
.end method

.method public getMinutes()I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 282
    new-instance v0, Ljava/util/GregorianCalendar;

    #@2
    iget-wide v2, p0, Ljava/util/Date;->milliseconds:J

    #@4
    invoke-direct {v0, v2, v3}, Ljava/util/GregorianCalendar;-><init>(J)V

    #@7
    const/16 v1, 0xc

    #@9
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    #@c
    move-result v0

    #@d
    return v0
.end method

.method public getMonth()I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 294
    new-instance v0, Ljava/util/GregorianCalendar;

    #@2
    iget-wide v2, p0, Ljava/util/Date;->milliseconds:J

    #@4
    invoke-direct {v0, v2, v3}, Ljava/util/GregorianCalendar;-><init>(J)V

    #@7
    const/4 v1, 0x2

    #@8
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public getSeconds()I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 306
    new-instance v0, Ljava/util/GregorianCalendar;

    #@2
    iget-wide v2, p0, Ljava/util/Date;->milliseconds:J

    #@4
    invoke-direct {v0, v2, v3}, Ljava/util/GregorianCalendar;-><init>(J)V

    #@7
    const/16 v1, 0xd

    #@9
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    #@c
    move-result v0

    #@d
    return v0
.end method

.method public getTime()J
    .locals 2

    #@0
    .prologue
    .line 316
    iget-wide v0, p0, Ljava/util/Date;->milliseconds:J

    #@2
    return-wide v0
.end method

.method public getTimezoneOffset()I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 328
    new-instance v0, Ljava/util/GregorianCalendar;

    #@2
    iget-wide v2, p0, Ljava/util/Date;->milliseconds:J

    #@4
    invoke-direct {v0, v2, v3}, Ljava/util/GregorianCalendar;-><init>(J)V

    #@7
    .line 329
    .local v0, "cal":Ljava/util/GregorianCalendar;
    const/16 v1, 0xf

    #@9
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    #@c
    move-result v1

    #@d
    const/16 v2, 0x10

    #@f
    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    #@12
    move-result v2

    #@13
    add-int/2addr v1, v2

    #@14
    neg-int v1, v1

    #@15
    const v2, 0xea60

    #@18
    div-int/2addr v1, v2

    #@19
    return v1
.end method

.method public getYear()I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 341
    new-instance v0, Ljava/util/GregorianCalendar;

    #@2
    iget-wide v2, p0, Ljava/util/Date;->milliseconds:J

    #@4
    invoke-direct {v0, v2, v3}, Ljava/util/GregorianCalendar;-><init>(J)V

    #@7
    const/4 v1, 0x1

    #@8
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    #@b
    move-result v0

    #@c
    add-int/lit16 v0, v0, -0x76c

    #@e
    return v0
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 354
    iget-wide v0, p0, Ljava/util/Date;->milliseconds:J

    #@2
    const/16 v2, 0x20

    #@4
    ushr-long/2addr v0, v2

    #@5
    long-to-int v0, v0

    #@6
    iget-wide v2, p0, Ljava/util/Date;->milliseconds:J

    #@8
    long-to-int v1, v2

    #@9
    xor-int/2addr v0, v1

    #@a
    return v0
.end method

.method public setDate(I)V
    .locals 4
    .param p1, "day"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 576
    new-instance v0, Ljava/util/GregorianCalendar;

    #@2
    iget-wide v2, p0, Ljava/util/Date;->milliseconds:J

    #@4
    invoke-direct {v0, v2, v3}, Ljava/util/GregorianCalendar;-><init>(J)V

    #@7
    .line 577
    .local v0, "cal":Ljava/util/GregorianCalendar;
    const/4 v1, 0x5

    #@8
    invoke-virtual {v0, v1, p1}, Ljava/util/GregorianCalendar;->set(II)V

    #@b
    .line 578
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    #@e
    move-result-wide v2

    #@f
    iput-wide v2, p0, Ljava/util/Date;->milliseconds:J

    #@11
    .line 575
    return-void
.end method

.method public setHours(I)V
    .locals 4
    .param p1, "hour"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 591
    new-instance v0, Ljava/util/GregorianCalendar;

    #@2
    iget-wide v2, p0, Ljava/util/Date;->milliseconds:J

    #@4
    invoke-direct {v0, v2, v3}, Ljava/util/GregorianCalendar;-><init>(J)V

    #@7
    .line 592
    .local v0, "cal":Ljava/util/GregorianCalendar;
    const/16 v1, 0xb

    #@9
    invoke-virtual {v0, v1, p1}, Ljava/util/GregorianCalendar;->set(II)V

    #@c
    .line 593
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    #@f
    move-result-wide v2

    #@10
    iput-wide v2, p0, Ljava/util/Date;->milliseconds:J

    #@12
    .line 590
    return-void
.end method

.method public setMinutes(I)V
    .locals 4
    .param p1, "minute"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 606
    new-instance v0, Ljava/util/GregorianCalendar;

    #@2
    iget-wide v2, p0, Ljava/util/Date;->milliseconds:J

    #@4
    invoke-direct {v0, v2, v3}, Ljava/util/GregorianCalendar;-><init>(J)V

    #@7
    .line 607
    .local v0, "cal":Ljava/util/GregorianCalendar;
    const/16 v1, 0xc

    #@9
    invoke-virtual {v0, v1, p1}, Ljava/util/GregorianCalendar;->set(II)V

    #@c
    .line 608
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    #@f
    move-result-wide v2

    #@10
    iput-wide v2, p0, Ljava/util/Date;->milliseconds:J

    #@12
    .line 605
    return-void
.end method

.method public setMonth(I)V
    .locals 4
    .param p1, "month"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 621
    new-instance v0, Ljava/util/GregorianCalendar;

    #@2
    iget-wide v2, p0, Ljava/util/Date;->milliseconds:J

    #@4
    invoke-direct {v0, v2, v3}, Ljava/util/GregorianCalendar;-><init>(J)V

    #@7
    .line 622
    .local v0, "cal":Ljava/util/GregorianCalendar;
    const/4 v1, 0x2

    #@8
    invoke-virtual {v0, v1, p1}, Ljava/util/GregorianCalendar;->set(II)V

    #@b
    .line 623
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    #@e
    move-result-wide v2

    #@f
    iput-wide v2, p0, Ljava/util/Date;->milliseconds:J

    #@11
    .line 620
    return-void
.end method

.method public setSeconds(I)V
    .locals 4
    .param p1, "second"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 636
    new-instance v0, Ljava/util/GregorianCalendar;

    #@2
    iget-wide v2, p0, Ljava/util/Date;->milliseconds:J

    #@4
    invoke-direct {v0, v2, v3}, Ljava/util/GregorianCalendar;-><init>(J)V

    #@7
    .line 637
    .local v0, "cal":Ljava/util/GregorianCalendar;
    const/16 v1, 0xd

    #@9
    invoke-virtual {v0, v1, p1}, Ljava/util/GregorianCalendar;->set(II)V

    #@c
    .line 638
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    #@f
    move-result-wide v2

    #@10
    iput-wide v2, p0, Ljava/util/Date;->milliseconds:J

    #@12
    .line 635
    return-void
.end method

.method public setTime(J)V
    .locals 1
    .param p1, "milliseconds"    # J

    #@0
    .prologue
    .line 649
    iput-wide p1, p0, Ljava/util/Date;->milliseconds:J

    #@2
    .line 648
    return-void
.end method

.method public setYear(I)V
    .locals 4
    .param p1, "year"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 662
    new-instance v0, Ljava/util/GregorianCalendar;

    #@2
    iget-wide v2, p0, Ljava/util/Date;->milliseconds:J

    #@4
    invoke-direct {v0, v2, v3}, Ljava/util/GregorianCalendar;-><init>(J)V

    #@7
    .line 663
    .local v0, "cal":Ljava/util/GregorianCalendar;
    add-int/lit16 v1, p1, 0x76c

    #@9
    const/4 v2, 0x1

    #@a
    invoke-virtual {v0, v2, v1}, Ljava/util/GregorianCalendar;->set(II)V

    #@d
    .line 664
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    #@10
    move-result-wide v2

    #@11
    iput-wide v2, p0, Ljava/util/Date;->milliseconds:J

    #@13
    .line 661
    return-void
.end method

.method public toGMTString()Ljava/lang/String;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 675
    new-instance v2, Ljava/text/SimpleDateFormat;

    #@2
    const-string/jumbo v3, "d MMM y HH:mm:ss \'GMT\'"

    #@5
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@7
    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@a
    .line 676
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    const-string/jumbo v3, "GMT"

    #@d
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@10
    move-result-object v1

    #@11
    .line 677
    .local v1, "gmtZone":Ljava/util/TimeZone;
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    #@14
    .line 678
    new-instance v0, Ljava/util/GregorianCalendar;

    #@16
    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    #@19
    .line 679
    .local v0, "gc":Ljava/util/GregorianCalendar;
    iget-wide v4, p0, Ljava/util/Date;->milliseconds:J

    #@1b
    invoke-virtual {v0, v4, v5}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    #@1e
    .line 680
    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    return-object v3
.end method

.method public toLocaleString()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 690
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    #@0
    .prologue
    const/16 v6, 0x3a

    #@2
    const/16 v7, 0x20

    #@4
    .line 705
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@6
    invoke-static {v4}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    #@9
    move-result-object v1

    #@a
    .line 707
    .local v1, "localeData":Llibcore/icu/LocaleData;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    #@d
    move-result-object v3

    #@e
    .line 708
    .local v3, "tz":Ljava/util/TimeZone;
    new-instance v0, Ljava/util/GregorianCalendar;

    #@10
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@12
    invoke-direct {v0, v3, v4}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    #@15
    .line 709
    .local v0, "cal":Ljava/util/Calendar;
    iget-wide v4, p0, Ljava/util/Date;->milliseconds:J

    #@17
    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@1a
    .line 711
    new-instance v2, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    .line 712
    .local v2, "result":Ljava/lang/StringBuilder;
    iget-object v4, v1, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    #@21
    const/4 v5, 0x7

    #@22
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    #@25
    move-result v5

    #@26
    aget-object v4, v4, v5

    #@28
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    .line 713
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2e
    .line 714
    iget-object v4, v1, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    #@30
    const/4 v5, 0x2

    #@31
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    #@34
    move-result v5

    #@35
    aget-object v4, v4, v5

    #@37
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    .line 715
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3d
    .line 716
    const/4 v4, 0x5

    #@3e
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    #@41
    move-result v4

    #@42
    invoke-static {v2, v4}, Ljava/util/Date;->appendTwoDigits(Ljava/lang/StringBuilder;I)V

    #@45
    .line 717
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@48
    .line 718
    const/16 v4, 0xb

    #@4a
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    #@4d
    move-result v4

    #@4e
    invoke-static {v2, v4}, Ljava/util/Date;->appendTwoDigits(Ljava/lang/StringBuilder;I)V

    #@51
    .line 719
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@54
    .line 720
    const/16 v4, 0xc

    #@56
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    #@59
    move-result v4

    #@5a
    invoke-static {v2, v4}, Ljava/util/Date;->appendTwoDigits(Ljava/lang/StringBuilder;I)V

    #@5d
    .line 721
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@60
    .line 722
    const/16 v4, 0xd

    #@62
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    #@65
    move-result v4

    #@66
    invoke-static {v2, v4}, Ljava/util/Date;->appendTwoDigits(Ljava/lang/StringBuilder;I)V

    #@69
    .line 723
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@6c
    .line 724
    invoke-virtual {v3, p0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    #@6f
    move-result v4

    #@70
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@72
    const/4 v6, 0x0

    #@73
    invoke-virtual {v3, v4, v6, v5}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    #@76
    move-result-object v4

    #@77
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    .line 725
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@7d
    .line 726
    const/4 v4, 0x1

    #@7e
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    #@81
    move-result v4

    #@82
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@85
    .line 727
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@88
    move-result-object v4

    #@89
    return-object v4
.end method
