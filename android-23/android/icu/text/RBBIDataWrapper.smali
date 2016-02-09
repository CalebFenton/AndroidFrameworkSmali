.class final Landroid/icu/text/RBBIDataWrapper;
.super Ljava/lang/Object;
.source "RBBIDataWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/RBBIDataWrapper$IsAcceptable;,
        Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;,
        Landroid/icu/text/RBBIDataWrapper$TrieFoldingFunc;
    }
.end annotation


# static fields
.field static final ACCEPTING:I = 0x0

.field static final DATA_FORMAT:I = 0x42726b20

.field static final DH_CATCOUNT:I = 0x3

.field static final DH_FORMATVERSION:I = 0x1

.field static final DH_FTABLE:I = 0x4

.field static final DH_FTABLELEN:I = 0x5

.field static final DH_LENGTH:I = 0x2

.field static final DH_MAGIC:I = 0x0

.field static final DH_RTABLE:I = 0x6

.field static final DH_RTABLELEN:I = 0x7

.field static final DH_RULESOURCE:I = 0xe

.field static final DH_RULESOURCELEN:I = 0xf

.field static final DH_SFTABLE:I = 0x8

.field static final DH_SFTABLELEN:I = 0x9

.field static final DH_SIZE:I = 0x18

.field static final DH_SRTABLE:I = 0xa

.field static final DH_SRTABLELEN:I = 0xb

.field static final DH_STATUSTABLE:I = 0x10

.field static final DH_STATUSTABLELEN:I = 0x11

.field static final DH_TRIE:I = 0xc

.field static final DH_TRIELEN:I = 0xd

.field static final FLAGS:I = 0x4

.field static final FORMAT_VERSION:I = 0x3010000

.field private static final IS_ACCEPTABLE:Landroid/icu/text/RBBIDataWrapper$IsAcceptable;

.field static final LOOKAHEAD:I = 0x1

.field static final NEXTSTATES:I = 0x4

.field static final NUMSTATES:I = 0x0

.field static final RBBI_BOF_REQUIRED:I = 0x2

.field static final RBBI_LOOKAHEAD_HARD_BREAK:I = 0x1

.field static final RESERVED:I = 0x3

.field static final ROWLEN:I = 0x2

.field private static final ROW_DATA:I = 0x8

.field static final TAGIDX:I = 0x2

.field static fTrieFoldingFunc:Landroid/icu/text/RBBIDataWrapper$TrieFoldingFunc;


# instance fields
.field fFTable:[S

.field fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

.field fRTable:[S

.field fRuleSource:Ljava/lang/String;

.field fSFTable:[S

.field fSRTable:[S

.field fStatusTable:[I

.field fTrie:Landroid/icu/impl/CharTrie;

.field private isBigEndian:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 49
    new-instance v0, Landroid/icu/text/RBBIDataWrapper$IsAcceptable;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Landroid/icu/text/RBBIDataWrapper$IsAcceptable;-><init>(Landroid/icu/text/RBBIDataWrapper$IsAcceptable;)V

    #@6
    sput-object v0, Landroid/icu/text/RBBIDataWrapper;->IS_ACCEPTABLE:Landroid/icu/text/RBBIDataWrapper$IsAcceptable;

    #@8
    .line 156
    new-instance v0, Landroid/icu/text/RBBIDataWrapper$TrieFoldingFunc;

    #@a
    invoke-direct {v0}, Landroid/icu/text/RBBIDataWrapper$TrieFoldingFunc;-><init>()V

    #@d
    sput-object v0, Landroid/icu/text/RBBIDataWrapper;->fTrieFoldingFunc:Landroid/icu/text/RBBIDataWrapper$TrieFoldingFunc;

    #@f
    .line 24
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private dumpCharCategories()V
    .locals 11

    #@0
    .prologue
    .line 461
    iget-object v8, p0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@2
    iget v5, v8, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fCatCount:I

    #@4
    .line 462
    .local v5, "n":I
    add-int/lit8 v8, v5, 0x1

    #@6
    new-array v0, v8, [Ljava/lang/String;

    #@8
    .line 463
    .local v0, "catStrings":[Ljava/lang/String;
    const/4 v7, 0x0

    #@9
    .line 464
    .local v7, "rangeStart":I
    const/4 v6, 0x0

    #@a
    .line 465
    .local v6, "rangeEnd":I
    const/4 v3, -0x1

    #@b
    .line 468
    .local v3, "lastCat":I
    add-int/lit8 v8, v5, 0x1

    #@d
    new-array v4, v8, [I

    #@f
    .line 470
    .local v4, "lastNewline":[I
    const/4 v1, 0x0

    #@10
    .local v1, "category":I
    :goto_0
    iget-object v8, p0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@12
    iget v8, v8, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fCatCount:I

    #@14
    if-gt v1, v8, :cond_0

    #@16
    .line 471
    const-string/jumbo v8, ""

    #@19
    aput-object v8, v0, v1

    #@1b
    .line 470
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 473
    :cond_0
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@20
    const-string/jumbo v9, "\nCharacter Categories"

    #@23
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@26
    .line 474
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@28
    const-string/jumbo v9, "--------------------"

    #@2b
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2e
    .line 475
    const/4 v2, 0x0

    #@2f
    .local v2, "char32":I
    :goto_1
    const v8, 0x10ffff

    #@32
    if-gt v2, v8, :cond_2

    #@34
    .line 476
    iget-object v8, p0, Landroid/icu/text/RBBIDataWrapper;->fTrie:Landroid/icu/impl/CharTrie;

    #@36
    invoke-virtual {v8, v2}, Landroid/icu/impl/CharTrie;->getCodePointValue(I)C

    #@39
    move-result v1

    #@3a
    .line 477
    and-int/lit16 v1, v1, -0x4001

    #@3c
    .line 478
    if-ltz v1, :cond_1

    #@3e
    iget-object v8, p0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@40
    iget v8, v8, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fCatCount:I

    #@42
    if-le v1, v8, :cond_4

    #@44
    .line 479
    :cond_1
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@46
    new-instance v9, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v10, "Error, bad category "

    #@4e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v9

    #@52
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@55
    move-result-object v10

    #@56
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v9

    #@5a
    .line 480
    const-string/jumbo v10, " for char "

    #@5d
    .line 479
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v9

    #@61
    .line 480
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@64
    move-result-object v10

    #@65
    .line 479
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v9

    #@69
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v9

    #@6d
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@70
    .line 501
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    #@72
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@75
    aget-object v9, v0, v3

    #@77
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v8

    #@7b
    const-string/jumbo v9, " "

    #@7e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v8

    #@82
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@85
    move-result-object v9

    #@86
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v8

    #@8a
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8d
    move-result-object v8

    #@8e
    aput-object v8, v0, v3

    #@90
    .line 502
    if-eq v6, v7, :cond_3

    #@92
    .line 503
    new-instance v8, Ljava/lang/StringBuilder;

    #@94
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@97
    aget-object v9, v0, v3

    #@99
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v8

    #@9d
    const-string/jumbo v9, "-"

    #@a0
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v8

    #@a4
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@a7
    move-result-object v9

    #@a8
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v8

    #@ac
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@af
    move-result-object v8

    #@b0
    aput-object v8, v0, v3

    #@b2
    .line 506
    :cond_3
    const/4 v1, 0x0

    #@b3
    :goto_2
    iget-object v8, p0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@b5
    iget v8, v8, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fCatCount:I

    #@b7
    if-gt v1, v8, :cond_8

    #@b9
    .line 507
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@bb
    new-instance v9, Ljava/lang/StringBuilder;

    #@bd
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@c0
    const/4 v10, 0x5

    #@c1
    invoke-static {v1, v10}, Landroid/icu/text/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    #@c4
    move-result-object v10

    #@c5
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v9

    #@c9
    const-string/jumbo v10, "  "

    #@cc
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v9

    #@d0
    aget-object v10, v0, v1

    #@d2
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v9

    #@d6
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d9
    move-result-object v9

    #@da
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@dd
    .line 506
    add-int/lit8 v1, v1, 0x1

    #@df
    goto :goto_2

    #@e0
    .line 483
    :cond_4
    if-ne v1, v3, :cond_5

    #@e2
    .line 484
    move v6, v2

    #@e3
    .line 475
    :goto_3
    add-int/lit8 v2, v2, 0x1

    #@e5
    goto/16 :goto_1

    #@e7
    .line 486
    :cond_5
    if-ltz v3, :cond_7

    #@e9
    .line 487
    aget-object v8, v0, v3

    #@eb
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@ee
    move-result v8

    #@ef
    aget v9, v4, v3

    #@f1
    add-int/lit8 v9, v9, 0x46

    #@f3
    if-le v8, v9, :cond_6

    #@f5
    .line 488
    aget-object v8, v0, v3

    #@f7
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@fa
    move-result v8

    #@fb
    add-int/lit8 v8, v8, 0xa

    #@fd
    aput v8, v4, v3

    #@ff
    .line 489
    new-instance v8, Ljava/lang/StringBuilder;

    #@101
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@104
    aget-object v9, v0, v3

    #@106
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@109
    move-result-object v8

    #@10a
    const-string/jumbo v9, "\n       "

    #@10d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@110
    move-result-object v8

    #@111
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@114
    move-result-object v8

    #@115
    aput-object v8, v0, v3

    #@117
    .line 492
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    #@119
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@11c
    aget-object v9, v0, v3

    #@11e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@121
    move-result-object v8

    #@122
    const-string/jumbo v9, " "

    #@125
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@128
    move-result-object v8

    #@129
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@12c
    move-result-object v9

    #@12d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@130
    move-result-object v8

    #@131
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@134
    move-result-object v8

    #@135
    aput-object v8, v0, v3

    #@137
    .line 493
    if-eq v6, v7, :cond_7

    #@139
    .line 494
    new-instance v8, Ljava/lang/StringBuilder;

    #@13b
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@13e
    aget-object v9, v0, v3

    #@140
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@143
    move-result-object v8

    #@144
    const-string/jumbo v9, "-"

    #@147
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14a
    move-result-object v8

    #@14b
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@14e
    move-result-object v9

    #@14f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@152
    move-result-object v8

    #@153
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@156
    move-result-object v8

    #@157
    aput-object v8, v0, v3

    #@159
    .line 497
    :cond_7
    move v3, v1

    #@15a
    .line 498
    move v6, v2

    #@15b
    move v7, v2

    #@15c
    goto :goto_3

    #@15d
    .line 509
    :cond_8
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@15f
    invoke-virtual {v8}, Ljava/io/PrintStream;->println()V

    #@162
    .line 460
    return-void
.end method

.method private dumpRow([SI)V
    .locals 5
    .param p1, "table"    # [S
    .param p2, "state"    # I

    #@0
    .prologue
    const/4 v4, 0x5

    #@1
    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    #@3
    iget-object v3, p0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@5
    iget v3, v3, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fCatCount:I

    #@7
    mul-int/lit8 v3, v3, 0x5

    #@9
    add-int/lit8 v3, v3, 0x14

    #@b
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    #@e
    .line 437
    .local v1, "dest":Ljava/lang/StringBuilder;
    const/4 v3, 0x4

    #@f
    invoke-static {p2, v3}, Landroid/icu/text/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    .line 438
    invoke-virtual {p0, p2}, Landroid/icu/text/RBBIDataWrapper;->getRowIndex(I)I

    #@19
    move-result v2

    #@1a
    .line 439
    .local v2, "row":I
    add-int/lit8 v3, v2, 0x0

    #@1c
    aget-short v3, p1, v3

    #@1e
    if-eqz v3, :cond_0

    #@20
    .line 440
    add-int/lit8 v3, v2, 0x0

    #@22
    aget-short v3, p1, v3

    #@24
    invoke-static {v3, v4}, Landroid/icu/text/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    .line 444
    :goto_0
    add-int/lit8 v3, v2, 0x1

    #@2d
    aget-short v3, p1, v3

    #@2f
    if-eqz v3, :cond_1

    #@31
    .line 445
    add-int/lit8 v3, v2, 0x1

    #@33
    aget-short v3, p1, v3

    #@35
    invoke-static {v3, v4}, Landroid/icu/text/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    .line 449
    :goto_1
    add-int/lit8 v3, v2, 0x2

    #@3e
    aget-short v3, p1, v3

    #@40
    invoke-static {v3, v4}, Landroid/icu/text/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    #@43
    move-result-object v3

    #@44
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    .line 451
    const/4 v0, 0x0

    #@48
    .local v0, "col":I
    :goto_2
    iget-object v3, p0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@4a
    iget v3, v3, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fCatCount:I

    #@4c
    if-ge v0, v3, :cond_2

    #@4e
    .line 452
    add-int/lit8 v3, v2, 0x4

    #@50
    add-int/2addr v3, v0

    #@51
    aget-short v3, p1, v3

    #@53
    invoke-static {v3, v4}, Landroid/icu/text/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    #@56
    move-result-object v3

    #@57
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    .line 451
    add-int/lit8 v0, v0, 0x1

    #@5c
    goto :goto_2

    #@5d
    .line 442
    .end local v0    # "col":I
    :cond_0
    const-string/jumbo v3, "     "

    #@60
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    goto :goto_0

    #@64
    .line 447
    :cond_1
    const-string/jumbo v3, "     "

    #@67
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    goto :goto_1

    #@6b
    .line 455
    .restart local v0    # "col":I
    :cond_2
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@6d
    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    #@70
    .line 435
    return-void
.end method

.method private dumpTable([S)V
    .locals 5
    .param p1, "table"    # [S

    #@0
    .prologue
    .line 407
    if-nez p1, :cond_0

    #@2
    .line 408
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@4
    const-string/jumbo v4, "  -- null -- "

    #@7
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@a
    .line 406
    :goto_0
    return-void

    #@b
    .line 412
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@d
    const-string/jumbo v3, " Row  Acc Look  Tag"

    #@10
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@13
    .line 413
    .local v0, "header":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@14
    .local v1, "n":I
    :goto_1
    iget-object v3, p0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@16
    iget v3, v3, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fCatCount:I

    #@18
    if-ge v1, v3, :cond_1

    #@1a
    .line 414
    const/4 v3, 0x5

    #@1b
    invoke-static {v1, v3}, Landroid/icu/text/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    .line 413
    add-int/lit8 v1, v1, 0x1

    #@24
    goto :goto_1

    #@25
    .line 416
    :cond_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2e
    .line 417
    const/4 v1, 0x0

    #@2f
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@32
    move-result v3

    #@33
    if-ge v1, v3, :cond_2

    #@35
    .line 418
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@37
    const-string/jumbo v4, "-"

    #@3a
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@3d
    .line 417
    add-int/lit8 v1, v1, 0x1

    #@3f
    goto :goto_2

    #@40
    .line 420
    :cond_2
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@42
    invoke-virtual {v3}, Ljava/io/PrintStream;->println()V

    #@45
    .line 421
    const/4 v2, 0x0

    #@46
    .local v2, "state":I
    :goto_3
    invoke-direct {p0, p1}, Landroid/icu/text/RBBIDataWrapper;->getStateTableNumStates([S)I

    #@49
    move-result v3

    #@4a
    if-ge v2, v3, :cond_3

    #@4c
    .line 422
    invoke-direct {p0, p1, v2}, Landroid/icu/text/RBBIDataWrapper;->dumpRow([SI)V

    #@4f
    .line 421
    add-int/lit8 v2, v2, 0x1

    #@51
    goto :goto_3

    #@52
    .line 424
    :cond_3
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@54
    invoke-virtual {v3}, Ljava/io/PrintStream;->println()V

    #@57
    goto :goto_0
.end method

.method static get(Ljava/nio/ByteBuffer;)Landroid/icu/text/RBBIDataWrapper;
    .locals 10
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x3

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v6, 0x0

    #@3
    .line 169
    new-instance v0, Landroid/icu/text/RBBIDataWrapper;

    #@5
    invoke-direct {v0}, Landroid/icu/text/RBBIDataWrapper;-><init>()V

    #@8
    .line 171
    .local v0, "This":Landroid/icu/text/RBBIDataWrapper;
    sget-object v4, Landroid/icu/text/RBBIDataWrapper;->IS_ACCEPTABLE:Landroid/icu/text/RBBIDataWrapper$IsAcceptable;

    #@a
    const v7, 0x42726b20

    #@d
    invoke-static {p0, v7, v4}, Landroid/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)I

    #@10
    .line 172
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    #@13
    move-result-object v4

    #@14
    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@16
    if-ne v4, v7, :cond_1

    #@18
    move v4, v5

    #@19
    :goto_0
    iput-boolean v4, v0, Landroid/icu/text/RBBIDataWrapper;->isBigEndian:Z

    #@1b
    .line 175
    new-instance v4, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@1d
    invoke-direct {v4}, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;-><init>()V

    #@20
    iput-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@22
    .line 176
    iget-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@24
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    #@27
    move-result v7

    #@28
    iput v7, v4, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fMagic:I

    #@2a
    .line 180
    iget-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@2c
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    #@2f
    move-result v7

    #@30
    invoke-virtual {p0, v7}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@33
    move-result v7

    #@34
    iput v7, v4, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fVersion:I

    #@36
    .line 181
    iget-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@38
    iget-object v4, v4, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFormatVersion:[B

    #@3a
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    #@3d
    move-result v7

    #@3e
    aput-byte v7, v4, v6

    #@40
    .line 182
    iget-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@42
    iget-object v4, v4, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFormatVersion:[B

    #@44
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    #@47
    move-result v7

    #@48
    aput-byte v7, v4, v5

    #@4a
    .line 183
    iget-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@4c
    iget-object v4, v4, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFormatVersion:[B

    #@4e
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    #@51
    move-result v7

    #@52
    const/4 v8, 0x2

    #@53
    aput-byte v7, v4, v8

    #@55
    .line 184
    iget-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@57
    iget-object v4, v4, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFormatVersion:[B

    #@59
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    #@5c
    move-result v7

    #@5d
    aput-byte v7, v4, v9

    #@5f
    .line 185
    iget-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@61
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    #@64
    move-result v7

    #@65
    iput v7, v4, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fLength:I

    #@67
    .line 186
    iget-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@69
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    #@6c
    move-result v7

    #@6d
    iput v7, v4, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fCatCount:I

    #@6f
    .line 187
    iget-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@71
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    #@74
    move-result v7

    #@75
    iput v7, v4, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFTable:I

    #@77
    .line 188
    iget-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@79
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    #@7c
    move-result v7

    #@7d
    iput v7, v4, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFTableLen:I

    #@7f
    .line 189
    iget-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@81
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    #@84
    move-result v7

    #@85
    iput v7, v4, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRTable:I

    #@87
    .line 190
    iget-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@89
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    #@8c
    move-result v7

    #@8d
    iput v7, v4, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRTableLen:I

    #@8f
    .line 191
    iget-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@91
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    #@94
    move-result v7

    #@95
    iput v7, v4, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSFTable:I

    #@97
    .line 192
    iget-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@99
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    #@9c
    move-result v7

    #@9d
    iput v7, v4, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSFTableLen:I

    #@9f
    .line 193
    iget-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@a1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    #@a4
    move-result v7

    #@a5
    iput v7, v4, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSRTable:I

    #@a7
    .line 194
    iget-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@a9
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    #@ac
    move-result v7

    #@ad
    iput v7, v4, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSRTableLen:I

    #@af
    .line 195
    iget-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@b1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    #@b4
    move-result v7

    #@b5
    iput v7, v4, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fTrie:I

    #@b7
    .line 196
    iget-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@b9
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    #@bc
    move-result v7

    #@bd
    iput v7, v4, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fTrieLen:I

    #@bf
    .line 197
    iget-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@c1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    #@c4
    move-result v7

    #@c5
    iput v7, v4, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRuleSource:I

    #@c7
    .line 198
    iget-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@c9
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    #@cc
    move-result v7

    #@cd
    iput v7, v4, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRuleSourceLen:I

    #@cf
    .line 199
    iget-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@d1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    #@d4
    move-result v7

    #@d5
    iput v7, v4, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fStatusTable:I

    #@d7
    .line 200
    iget-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@d9
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    #@dc
    move-result v7

    #@dd
    iput v7, v4, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fStatusTableLen:I

    #@df
    .line 201
    const/16 v4, 0x18

    #@e1
    invoke-static {p0, v4}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@e4
    .line 204
    iget-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@e6
    iget v4, v4, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fMagic:I

    #@e8
    const v7, 0xb1a0

    #@eb
    if-ne v4, v7, :cond_0

    #@ed
    .line 205
    iget-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@ef
    iget v4, v4, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fVersion:I

    #@f1
    if-eq v4, v5, :cond_2

    #@f3
    .line 206
    iget-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@f5
    iget-object v4, v4, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFormatVersion:[B

    #@f7
    aget-byte v4, v4, v6

    #@f9
    if-eq v4, v9, :cond_2

    #@fb
    .line 208
    :cond_0
    new-instance v4, Ljava/io/IOException;

    #@fd
    const-string/jumbo v5, "Break Iterator Rule Data Magic Number Incorrect, or unsupported data version."

    #@100
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@103
    throw v4

    #@104
    :cond_1
    move v4, v6

    #@105
    .line 172
    goto/16 :goto_0

    #@107
    .line 219
    :cond_2
    iget-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@109
    iget v4, v4, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFTable:I

    #@10b
    .line 212
    const/16 v5, 0x60

    #@10d
    .line 219
    if-lt v4, v5, :cond_3

    #@10f
    iget-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@111
    iget v4, v4, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFTable:I

    #@113
    iget-object v5, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@115
    iget v5, v5, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fLength:I

    #@117
    if-le v4, v5, :cond_4

    #@119
    .line 220
    :cond_3
    new-instance v4, Ljava/io/IOException;

    #@11b
    const-string/jumbo v5, "Break iterator Rule data corrupt"

    #@11e
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@121
    throw v4

    #@122
    .line 224
    :cond_4
    iget-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@124
    iget v4, v4, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFTable:I

    #@126
    add-int/lit8 v4, v4, -0x60

    #@128
    invoke-static {p0, v4}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@12b
    .line 225
    iget-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@12d
    iget v2, v4, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFTable:I

    #@12f
    .line 227
    .local v2, "pos":I
    iget-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@131
    iget v4, v4, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFTableLen:I

    #@133
    div-int/lit8 v4, v4, 0x2

    #@135
    new-array v4, v4, [S

    #@137
    iput-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fFTable:[S

    #@139
    .line 228
    const/4 v1, 0x0

    #@13a
    .local v1, "i":I
    :goto_1
    iget-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fFTable:[S

    #@13c
    array-length v4, v4

    #@13d
    if-ge v1, v4, :cond_5

    #@13f
    .line 229
    iget-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fFTable:[S

    #@141
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    #@144
    move-result v5

    #@145
    aput-short v5, v4, v1

    #@147
    .line 230
    add-int/lit8 v2, v2, 0x2

    #@149
    .line 228
    add-int/lit8 v1, v1, 0x1

    #@14b
    goto :goto_1

    #@14c
    .line 238
    :cond_5
    iget-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@14e
    iget v4, v4, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRTable:I

    #@150
    sub-int/2addr v4, v2

    #@151
    invoke-static {p0, v4}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@154
    .line 239
    iget-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@156
    iget v2, v4, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRTable:I

    #@158
    .line 242
    iget-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@15a
    iget v4, v4, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRTableLen:I

    #@15c
    div-int/lit8 v4, v4, 0x2

    #@15e
    new-array v4, v4, [S

    #@160
    iput-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fRTable:[S

    #@162
    .line 243
    const/4 v1, 0x0

    #@163
    :goto_2
    iget-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fRTable:[S

    #@165
    array-length v4, v4

    #@166
    if-ge v1, v4, :cond_6

    #@168
    .line 244
    iget-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fRTable:[S

    #@16a
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    #@16d
    move-result v5

    #@16e
    aput-short v5, v4, v1

    #@170
    .line 245
    add-int/lit8 v2, v2, 0x2

    #@172
    .line 243
    add-int/lit8 v1, v1, 0x1

    #@174
    goto :goto_2

    #@175
    .line 251
    :cond_6
    iget-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@177
    iget v4, v4, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSFTableLen:I

    #@179
    if-lez v4, :cond_7

    #@17b
    .line 253
    iget-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@17d
    iget v4, v4, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSFTable:I

    #@17f
    sub-int/2addr v4, v2

    #@180
    invoke-static {p0, v4}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@183
    .line 254
    iget-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@185
    iget v2, v4, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSFTable:I

    #@187
    .line 257
    iget-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@189
    iget v4, v4, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSFTableLen:I

    #@18b
    div-int/lit8 v4, v4, 0x2

    #@18d
    new-array v4, v4, [S

    #@18f
    iput-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fSFTable:[S

    #@191
    .line 258
    const/4 v1, 0x0

    #@192
    :goto_3
    iget-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fSFTable:[S

    #@194
    array-length v4, v4

    #@195
    if-ge v1, v4, :cond_7

    #@197
    .line 259
    iget-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fSFTable:[S

    #@199
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    #@19c
    move-result v5

    #@19d
    aput-short v5, v4, v1

    #@19f
    .line 260
    add-int/lit8 v2, v2, 0x2

    #@1a1
    .line 258
    add-int/lit8 v1, v1, 0x1

    #@1a3
    goto :goto_3

    #@1a4
    .line 267
    :cond_7
    iget-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@1a6
    iget v4, v4, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSRTableLen:I

    #@1a8
    if-lez v4, :cond_8

    #@1aa
    .line 269
    iget-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@1ac
    iget v4, v4, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSRTable:I

    #@1ae
    sub-int/2addr v4, v2

    #@1af
    invoke-static {p0, v4}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@1b2
    .line 270
    iget-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@1b4
    iget v2, v4, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSRTable:I

    #@1b6
    .line 273
    iget-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@1b8
    iget v4, v4, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSRTableLen:I

    #@1ba
    div-int/lit8 v4, v4, 0x2

    #@1bc
    new-array v4, v4, [S

    #@1be
    iput-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fSRTable:[S

    #@1c0
    .line 274
    const/4 v1, 0x0

    #@1c1
    :goto_4
    iget-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fSRTable:[S

    #@1c3
    array-length v4, v4

    #@1c4
    if-ge v1, v4, :cond_8

    #@1c6
    .line 275
    iget-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fSRTable:[S

    #@1c8
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    #@1cb
    move-result v5

    #@1cc
    aput-short v5, v4, v1

    #@1ce
    .line 276
    add-int/lit8 v2, v2, 0x2

    #@1d0
    .line 274
    add-int/lit8 v1, v1, 0x1

    #@1d2
    goto :goto_4

    #@1d3
    .line 287
    :cond_8
    iget-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@1d5
    iget v4, v4, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fTrie:I

    #@1d7
    sub-int/2addr v4, v2

    #@1d8
    invoke-static {p0, v4}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@1db
    .line 288
    iget-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@1dd
    iget v2, v4, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fTrie:I

    #@1df
    .line 290
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    #@1e2
    .line 295
    new-instance v4, Landroid/icu/impl/CharTrie;

    #@1e4
    sget-object v5, Landroid/icu/text/RBBIDataWrapper;->fTrieFoldingFunc:Landroid/icu/text/RBBIDataWrapper$TrieFoldingFunc;

    #@1e6
    invoke-direct {v4, p0, v5}, Landroid/icu/impl/CharTrie;-><init>(Ljava/nio/ByteBuffer;Landroid/icu/impl/Trie$DataManipulate;)V

    #@1e9
    iput-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fTrie:Landroid/icu/impl/CharTrie;

    #@1eb
    .line 299
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    #@1ee
    .line 307
    iget-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@1f0
    iget v4, v4, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fStatusTable:I

    #@1f2
    if-le v2, v4, :cond_9

    #@1f4
    .line 308
    new-instance v4, Ljava/io/IOException;

    #@1f6
    const-string/jumbo v5, "Break iterator Rule data corrupt"

    #@1f9
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1fc
    throw v4

    #@1fd
    .line 310
    :cond_9
    iget-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@1ff
    iget v4, v4, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fStatusTable:I

    #@201
    sub-int/2addr v4, v2

    #@202
    invoke-static {p0, v4}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@205
    .line 311
    iget-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@207
    iget v2, v4, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fStatusTable:I

    #@209
    .line 312
    iget-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@20b
    iget v4, v4, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fStatusTableLen:I

    #@20d
    div-int/lit8 v4, v4, 0x4

    #@20f
    new-array v4, v4, [I

    #@211
    iput-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fStatusTable:[I

    #@213
    .line 313
    const/4 v1, 0x0

    #@214
    :goto_5
    iget-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fStatusTable:[I

    #@216
    array-length v4, v4

    #@217
    if-ge v1, v4, :cond_a

    #@219
    .line 314
    iget-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fStatusTable:[I

    #@21b
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    #@21e
    move-result v5

    #@21f
    aput v5, v4, v1

    #@221
    .line 315
    add-int/lit8 v2, v2, 0x4

    #@223
    .line 313
    add-int/lit8 v1, v1, 0x1

    #@225
    goto :goto_5

    #@226
    .line 321
    :cond_a
    iget-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@228
    iget v4, v4, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRuleSource:I

    #@22a
    if-le v2, v4, :cond_b

    #@22c
    .line 322
    new-instance v4, Ljava/io/IOException;

    #@22e
    const-string/jumbo v5, "Break iterator Rule data corrupt"

    #@231
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@234
    throw v4

    #@235
    .line 324
    :cond_b
    iget-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@237
    iget v4, v4, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRuleSource:I

    #@239
    sub-int/2addr v4, v2

    #@23a
    invoke-static {p0, v4}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@23d
    .line 325
    iget-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@23f
    iget v2, v4, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRuleSource:I

    #@241
    .line 326
    new-instance v3, Ljava/lang/StringBuilder;

    #@243
    iget-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@245
    iget v4, v4, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRuleSourceLen:I

    #@247
    div-int/lit8 v4, v4, 0x2

    #@249
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    #@24c
    .line 327
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@24d
    :goto_6
    iget-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@24f
    iget v4, v4, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRuleSourceLen:I

    #@251
    if-ge v1, v4, :cond_c

    #@253
    .line 328
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getChar()C

    #@256
    move-result v4

    #@257
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@25a
    .line 329
    add-int/lit8 v2, v2, 0x2

    #@25c
    .line 327
    add-int/lit8 v1, v1, 0x2

    #@25e
    goto :goto_6

    #@25f
    .line 331
    :cond_c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@262
    move-result-object v4

    #@263
    iput-object v4, v0, Landroid/icu/text/RBBIDataWrapper;->fRuleSource:Ljava/lang/String;

    #@265
    .line 333
    sget-object v4, Landroid/icu/text/RuleBasedBreakIterator;->fDebugEnv:Ljava/lang/String;

    #@267
    if-eqz v4, :cond_d

    #@269
    sget-object v4, Landroid/icu/text/RuleBasedBreakIterator;->fDebugEnv:Ljava/lang/String;

    #@26b
    const-string/jumbo v5, "data"

    #@26e
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@271
    move-result v4

    #@272
    if-ltz v4, :cond_d

    #@274
    .line 334
    invoke-virtual {v0}, Landroid/icu/text/RBBIDataWrapper;->dump()V

    #@277
    .line 336
    :cond_d
    return-object v0
.end method

.method private getStateTableNumStates([S)I
    .locals 4
    .param p1, "table"    # [S

    #@0
    .prologue
    const v3, 0xffff

    #@3
    const/4 v2, 0x1

    #@4
    const/4 v1, 0x0

    #@5
    .line 343
    iget-boolean v0, p0, Landroid/icu/text/RBBIDataWrapper;->isBigEndian:Z

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 344
    aget-short v0, p1, v1

    #@b
    shl-int/lit8 v0, v0, 0x10

    #@d
    aget-short v1, p1, v2

    #@f
    and-int/2addr v1, v3

    #@10
    or-int/2addr v0, v1

    #@11
    return v0

    #@12
    .line 346
    :cond_0
    aget-short v0, p1, v2

    #@14
    shl-int/lit8 v0, v0, 0x10

    #@16
    aget-short v1, p1, v1

    #@18
    and-int/2addr v1, v3

    #@19
    or-int/2addr v0, v1

    #@1a
    return v0
.end method

.method public static intToHexString(II)Ljava/lang/String;
    .locals 3
    .param p0, "n"    # I
    .param p1, "width"    # I

    #@0
    .prologue
    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@5
    .line 396
    .local v0, "dest":Ljava/lang/StringBuilder;
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    .line 397
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@f
    move-result v1

    #@10
    if-ge v1, p1, :cond_0

    #@12
    .line 398
    const/4 v1, 0x0

    #@13
    const/16 v2, 0x20

    #@15
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    #@18
    goto :goto_0

    #@19
    .line 400
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    return-object v1
.end method

.method public static intToString(II)Ljava/lang/String;
    .locals 3
    .param p0, "n"    # I
    .param p1, "width"    # I

    #@0
    .prologue
    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@5
    .line 384
    .local v0, "dest":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8
    .line 385
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@b
    move-result v1

    #@c
    if-ge v1, p1, :cond_0

    #@e
    .line 386
    const/4 v1, 0x0

    #@f
    const/16 v2, 0x20

    #@11
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    #@14
    goto :goto_0

    #@15
    .line 388
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    return-object v1
.end method


# virtual methods
.method dump()V
    .locals 3

    #@0
    .prologue
    .line 359
    iget-object v0, p0, Landroid/icu/text/RBBIDataWrapper;->fFTable:[S

    #@2
    array-length v0, v0

    #@3
    if-nez v0, :cond_0

    #@5
    .line 361
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@a
    throw v0

    #@b
    .line 363
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@d
    const-string/jumbo v1, "RBBI Data Wrapper dump ..."

    #@10
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@13
    .line 364
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@15
    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    #@18
    .line 365
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1a
    const-string/jumbo v1, "Forward State Table"

    #@1d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@20
    .line 366
    iget-object v0, p0, Landroid/icu/text/RBBIDataWrapper;->fFTable:[S

    #@22
    invoke-direct {p0, v0}, Landroid/icu/text/RBBIDataWrapper;->dumpTable([S)V

    #@25
    .line 367
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@27
    const-string/jumbo v1, "Reverse State Table"

    #@2a
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2d
    .line 368
    iget-object v0, p0, Landroid/icu/text/RBBIDataWrapper;->fRTable:[S

    #@2f
    invoke-direct {p0, v0}, Landroid/icu/text/RBBIDataWrapper;->dumpTable([S)V

    #@32
    .line 369
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@34
    const-string/jumbo v1, "Forward Safe Points Table"

    #@37
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3a
    .line 370
    iget-object v0, p0, Landroid/icu/text/RBBIDataWrapper;->fSFTable:[S

    #@3c
    invoke-direct {p0, v0}, Landroid/icu/text/RBBIDataWrapper;->dumpTable([S)V

    #@3f
    .line 371
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@41
    const-string/jumbo v1, "Reverse Safe Points Table"

    #@44
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@47
    .line 372
    iget-object v0, p0, Landroid/icu/text/RBBIDataWrapper;->fSRTable:[S

    #@49
    invoke-direct {p0, v0}, Landroid/icu/text/RBBIDataWrapper;->dumpTable([S)V

    #@4c
    .line 374
    invoke-direct {p0}, Landroid/icu/text/RBBIDataWrapper;->dumpCharCategories()V

    #@4f
    .line 375
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@51
    new-instance v1, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v2, "Source Rules: "

    #@59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v1

    #@5d
    iget-object v2, p0, Landroid/icu/text/RBBIDataWrapper;->fRuleSource:Ljava/lang/String;

    #@5f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v1

    #@63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v1

    #@67
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@6a
    .line 358
    return-void
.end method

.method getRowIndex(I)I
    .locals 1
    .param p1, "state"    # I

    #@0
    .prologue
    .line 144
    iget-object v0, p0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@2
    iget v0, v0, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fCatCount:I

    #@4
    add-int/lit8 v0, v0, 0x4

    #@6
    mul-int/2addr v0, p1

    #@7
    add-int/lit8 v0, v0, 0x8

    #@9
    return v0
.end method

.method getStateTableFlags([S)I
    .locals 1
    .param p1, "table"    # [S

    #@0
    .prologue
    .line 353
    iget-boolean v0, p0, Landroid/icu/text/RBBIDataWrapper;->isBigEndian:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x5

    #@5
    :goto_0
    aget-short v0, p1, v0

    #@7
    return v0

    #@8
    :cond_0
    const/4 v0, 0x4

    #@9
    goto :goto_0
.end method
