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
    .line 50
    new-instance v0, Landroid/icu/text/RBBIDataWrapper$IsAcceptable;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Landroid/icu/text/RBBIDataWrapper$IsAcceptable;-><init>(Landroid/icu/text/RBBIDataWrapper$IsAcceptable;)V

    #@6
    sput-object v0, Landroid/icu/text/RBBIDataWrapper;->IS_ACCEPTABLE:Landroid/icu/text/RBBIDataWrapper$IsAcceptable;

    #@8
    .line 157
    new-instance v0, Landroid/icu/text/RBBIDataWrapper$TrieFoldingFunc;

    #@a
    invoke-direct {v0}, Landroid/icu/text/RBBIDataWrapper$TrieFoldingFunc;-><init>()V

    #@d
    sput-object v0, Landroid/icu/text/RBBIDataWrapper;->fTrieFoldingFunc:Landroid/icu/text/RBBIDataWrapper$TrieFoldingFunc;

    #@f
    .line 25
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private dumpCharCategories()V
    .locals 11

    #@0
    .prologue
    .line 446
    iget-object v8, p0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@2
    iget v5, v8, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fCatCount:I

    #@4
    .line 447
    .local v5, "n":I
    add-int/lit8 v8, v5, 0x1

    #@6
    new-array v0, v8, [Ljava/lang/String;

    #@8
    .line 448
    .local v0, "catStrings":[Ljava/lang/String;
    const/4 v7, 0x0

    #@9
    .line 449
    .local v7, "rangeStart":I
    const/4 v6, 0x0

    #@a
    .line 450
    .local v6, "rangeEnd":I
    const/4 v3, -0x1

    #@b
    .line 453
    .local v3, "lastCat":I
    add-int/lit8 v8, v5, 0x1

    #@d
    new-array v4, v8, [I

    #@f
    .line 455
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
    .line 456
    const-string/jumbo v8, ""

    #@19
    aput-object v8, v0, v1

    #@1b
    .line 455
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 458
    :cond_0
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@20
    const-string/jumbo v9, "\nCharacter Categories"

    #@23
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@26
    .line 459
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@28
    const-string/jumbo v9, "--------------------"

    #@2b
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2e
    .line 460
    const/4 v2, 0x0

    #@2f
    .local v2, "char32":I
    :goto_1
    const v8, 0x10ffff

    #@32
    if-gt v2, v8, :cond_2

    #@34
    .line 461
    iget-object v8, p0, Landroid/icu/text/RBBIDataWrapper;->fTrie:Landroid/icu/impl/CharTrie;

    #@36
    invoke-virtual {v8, v2}, Landroid/icu/impl/CharTrie;->getCodePointValue(I)C

    #@39
    move-result v1

    #@3a
    .line 462
    and-int/lit16 v1, v1, -0x4001

    #@3c
    .line 463
    if-ltz v1, :cond_1

    #@3e
    iget-object v8, p0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@40
    iget v8, v8, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fCatCount:I

    #@42
    if-le v1, v8, :cond_4

    #@44
    .line 464
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
    .line 465
    const-string/jumbo v10, " for char "

    #@5d
    .line 464
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v9

    #@61
    .line 465
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@64
    move-result-object v10

    #@65
    .line 464
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
    .line 486
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
    .line 487
    if-eq v6, v7, :cond_3

    #@92
    .line 488
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
    .line 491
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
    .line 492
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
    .line 491
    add-int/lit8 v1, v1, 0x1

    #@df
    goto :goto_2

    #@e0
    .line 468
    :cond_4
    if-ne v1, v3, :cond_5

    #@e2
    .line 469
    move v6, v2

    #@e3
    .line 460
    :goto_3
    add-int/lit8 v2, v2, 0x1

    #@e5
    goto/16 :goto_1

    #@e7
    .line 471
    :cond_5
    if-ltz v3, :cond_7

    #@e9
    .line 472
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
    .line 473
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
    .line 474
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
    .line 477
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
    .line 478
    if-eq v6, v7, :cond_7

    #@139
    .line 479
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
    .line 482
    :cond_7
    move v3, v1

    #@15a
    .line 483
    move v6, v2

    #@15b
    move v7, v2

    #@15c
    goto :goto_3

    #@15d
    .line 494
    :cond_8
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@15f
    invoke-virtual {v8}, Ljava/io/PrintStream;->println()V

    #@162
    .line 445
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
    .line 421
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
    .line 422
    .local v1, "dest":Ljava/lang/StringBuilder;
    const/4 v3, 0x4

    #@f
    invoke-static {p2, v3}, Landroid/icu/text/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    .line 423
    invoke-virtual {p0, p2}, Landroid/icu/text/RBBIDataWrapper;->getRowIndex(I)I

    #@19
    move-result v2

    #@1a
    .line 424
    .local v2, "row":I
    add-int/lit8 v3, v2, 0x0

    #@1c
    aget-short v3, p1, v3

    #@1e
    if-eqz v3, :cond_0

    #@20
    .line 425
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
    .line 429
    :goto_0
    add-int/lit8 v3, v2, 0x1

    #@2d
    aget-short v3, p1, v3

    #@2f
    if-eqz v3, :cond_1

    #@31
    .line 430
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
    .line 434
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
    .line 436
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
    .line 437
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
    .line 436
    add-int/lit8 v0, v0, 0x1

    #@5c
    goto :goto_2

    #@5d
    .line 427
    .end local v0    # "col":I
    :cond_0
    const-string/jumbo v3, "     "

    #@60
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    goto :goto_0

    #@64
    .line 432
    :cond_1
    const-string/jumbo v3, "     "

    #@67
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    goto :goto_1

    #@6b
    .line 440
    .restart local v0    # "col":I
    :cond_2
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@6d
    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    #@70
    .line 420
    return-void
.end method

.method private dumpTable([S)V
    .locals 5
    .param p1, "table"    # [S

    #@0
    .prologue
    .line 392
    if-nez p1, :cond_0

    #@2
    .line 393
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@4
    const-string/jumbo v4, "  -- null -- "

    #@7
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@a
    .line 391
    :goto_0
    return-void

    #@b
    .line 397
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@d
    const-string/jumbo v3, " Row  Acc Look  Tag"

    #@10
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@13
    .line 398
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
    .line 399
    const/4 v3, 0x5

    #@1b
    invoke-static {v1, v3}, Landroid/icu/text/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    .line 398
    add-int/lit8 v1, v1, 0x1

    #@24
    goto :goto_1

    #@25
    .line 401
    :cond_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2e
    .line 402
    const/4 v1, 0x0

    #@2f
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@32
    move-result v3

    #@33
    if-ge v1, v3, :cond_2

    #@35
    .line 403
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@37
    const-string/jumbo v4, "-"

    #@3a
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@3d
    .line 402
    add-int/lit8 v1, v1, 0x1

    #@3f
    goto :goto_2

    #@40
    .line 405
    :cond_2
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@42
    invoke-virtual {v3}, Ljava/io/PrintStream;->println()V

    #@45
    .line 406
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
    .line 407
    invoke-direct {p0, p1, v2}, Landroid/icu/text/RBBIDataWrapper;->dumpRow([SI)V

    #@4f
    .line 406
    add-int/lit8 v2, v2, 0x1

    #@51
    goto :goto_3

    #@52
    .line 409
    :cond_3
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@54
    invoke-virtual {v3}, Ljava/io/PrintStream;->println()V

    #@57
    goto :goto_0
.end method

.method static get(Ljava/nio/ByteBuffer;)Landroid/icu/text/RBBIDataWrapper;
    .locals 8
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x3

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 168
    new-instance v0, Landroid/icu/text/RBBIDataWrapper;

    #@5
    invoke-direct {v0}, Landroid/icu/text/RBBIDataWrapper;-><init>()V

    #@8
    .line 170
    .local v0, "This":Landroid/icu/text/RBBIDataWrapper;
    sget-object v2, Landroid/icu/text/RBBIDataWrapper;->IS_ACCEPTABLE:Landroid/icu/text/RBBIDataWrapper$IsAcceptable;

    #@a
    const v5, 0x42726b20

    #@d
    invoke-static {p0, v5, v2}, Landroid/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)I

    #@10
    .line 171
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    #@13
    move-result-object v2

    #@14
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@16
    if-ne v2, v5, :cond_1

    #@18
    move v2, v3

    #@19
    :goto_0
    iput-boolean v2, v0, Landroid/icu/text/RBBIDataWrapper;->isBigEndian:Z

    #@1b
    .line 174
    new-instance v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@1d
    invoke-direct {v2}, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;-><init>()V

    #@20
    iput-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@22
    .line 175
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@24
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    #@27
    move-result v5

    #@28
    iput v5, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fMagic:I

    #@2a
    .line 179
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@2c
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    #@2f
    move-result v5

    #@30
    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@33
    move-result v5

    #@34
    iput v5, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fVersion:I

    #@36
    .line 180
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@38
    iget-object v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFormatVersion:[B

    #@3a
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    #@3d
    move-result v5

    #@3e
    aput-byte v5, v2, v4

    #@40
    .line 181
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@42
    iget-object v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFormatVersion:[B

    #@44
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    #@47
    move-result v5

    #@48
    aput-byte v5, v2, v3

    #@4a
    .line 182
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@4c
    iget-object v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFormatVersion:[B

    #@4e
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    #@51
    move-result v5

    #@52
    const/4 v6, 0x2

    #@53
    aput-byte v5, v2, v6

    #@55
    .line 183
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@57
    iget-object v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFormatVersion:[B

    #@59
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    #@5c
    move-result v5

    #@5d
    aput-byte v5, v2, v7

    #@5f
    .line 184
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@61
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    #@64
    move-result v5

    #@65
    iput v5, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fLength:I

    #@67
    .line 185
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@69
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    #@6c
    move-result v5

    #@6d
    iput v5, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fCatCount:I

    #@6f
    .line 186
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@71
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    #@74
    move-result v5

    #@75
    iput v5, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFTable:I

    #@77
    .line 187
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@79
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    #@7c
    move-result v5

    #@7d
    iput v5, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFTableLen:I

    #@7f
    .line 188
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@81
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    #@84
    move-result v5

    #@85
    iput v5, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRTable:I

    #@87
    .line 189
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@89
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    #@8c
    move-result v5

    #@8d
    iput v5, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRTableLen:I

    #@8f
    .line 190
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@91
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    #@94
    move-result v5

    #@95
    iput v5, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSFTable:I

    #@97
    .line 191
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@99
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    #@9c
    move-result v5

    #@9d
    iput v5, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSFTableLen:I

    #@9f
    .line 192
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@a1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    #@a4
    move-result v5

    #@a5
    iput v5, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSRTable:I

    #@a7
    .line 193
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@a9
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    #@ac
    move-result v5

    #@ad
    iput v5, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSRTableLen:I

    #@af
    .line 194
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@b1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    #@b4
    move-result v5

    #@b5
    iput v5, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fTrie:I

    #@b7
    .line 195
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@b9
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    #@bc
    move-result v5

    #@bd
    iput v5, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fTrieLen:I

    #@bf
    .line 196
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@c1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    #@c4
    move-result v5

    #@c5
    iput v5, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRuleSource:I

    #@c7
    .line 197
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@c9
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    #@cc
    move-result v5

    #@cd
    iput v5, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRuleSourceLen:I

    #@cf
    .line 198
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@d1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    #@d4
    move-result v5

    #@d5
    iput v5, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fStatusTable:I

    #@d7
    .line 199
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@d9
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    #@dc
    move-result v5

    #@dd
    iput v5, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fStatusTableLen:I

    #@df
    .line 200
    const/16 v2, 0x18

    #@e1
    invoke-static {p0, v2}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@e4
    .line 203
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@e6
    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fMagic:I

    #@e8
    const v5, 0xb1a0

    #@eb
    if-ne v2, v5, :cond_0

    #@ed
    .line 204
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@ef
    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fVersion:I

    #@f1
    if-eq v2, v3, :cond_2

    #@f3
    .line 205
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@f5
    iget-object v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFormatVersion:[B

    #@f7
    aget-byte v2, v2, v4

    #@f9
    if-eq v2, v7, :cond_2

    #@fb
    .line 207
    :cond_0
    new-instance v2, Ljava/io/IOException;

    #@fd
    const-string/jumbo v3, "Break Iterator Rule Data Magic Number Incorrect, or unsupported data version."

    #@100
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@103
    throw v2

    #@104
    :cond_1
    move v2, v4

    #@105
    .line 171
    goto/16 :goto_0

    #@107
    .line 218
    :cond_2
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@109
    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFTable:I

    #@10b
    .line 211
    const/16 v3, 0x60

    #@10d
    .line 218
    if-lt v2, v3, :cond_3

    #@10f
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@111
    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFTable:I

    #@113
    iget-object v3, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@115
    iget v3, v3, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fLength:I

    #@117
    if-le v2, v3, :cond_4

    #@119
    .line 219
    :cond_3
    new-instance v2, Ljava/io/IOException;

    #@11b
    const-string/jumbo v3, "Break iterator Rule data corrupt"

    #@11e
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@121
    throw v2

    #@122
    .line 223
    :cond_4
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@124
    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFTable:I

    #@126
    add-int/lit8 v2, v2, -0x60

    #@128
    invoke-static {p0, v2}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@12b
    .line 224
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@12d
    iget v1, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFTable:I

    #@12f
    .line 227
    .local v1, "pos":I
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@131
    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFTableLen:I

    #@133
    div-int/lit8 v2, v2, 0x2

    #@135
    iget-object v3, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@137
    iget v3, v3, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFTableLen:I

    #@139
    and-int/lit8 v3, v3, 0x1

    #@13b
    .line 226
    invoke-static {p0, v2, v3}, Landroid/icu/impl/ICUBinary;->getShorts(Ljava/nio/ByteBuffer;II)[S

    #@13e
    move-result-object v2

    #@13f
    iput-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fFTable:[S

    #@141
    .line 228
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@143
    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFTableLen:I

    #@145
    add-int/2addr v1, v2

    #@146
    .line 235
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@148
    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRTable:I

    #@14a
    sub-int/2addr v2, v1

    #@14b
    invoke-static {p0, v2}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@14e
    .line 236
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@150
    iget v1, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRTable:I

    #@152
    .line 240
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@154
    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRTableLen:I

    #@156
    div-int/lit8 v2, v2, 0x2

    #@158
    iget-object v3, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@15a
    iget v3, v3, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRTableLen:I

    #@15c
    and-int/lit8 v3, v3, 0x1

    #@15e
    .line 239
    invoke-static {p0, v2, v3}, Landroid/icu/impl/ICUBinary;->getShorts(Ljava/nio/ByteBuffer;II)[S

    #@161
    move-result-object v2

    #@162
    iput-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fRTable:[S

    #@164
    .line 241
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@166
    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRTableLen:I

    #@168
    add-int/2addr v1, v2

    #@169
    .line 246
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@16b
    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSFTableLen:I

    #@16d
    if-lez v2, :cond_5

    #@16f
    .line 248
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@171
    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSFTable:I

    #@173
    sub-int/2addr v2, v1

    #@174
    invoke-static {p0, v2}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@177
    .line 249
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@179
    iget v1, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSFTable:I

    #@17b
    .line 253
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@17d
    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSFTableLen:I

    #@17f
    div-int/lit8 v2, v2, 0x2

    #@181
    iget-object v3, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@183
    iget v3, v3, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSFTableLen:I

    #@185
    and-int/lit8 v3, v3, 0x1

    #@187
    .line 252
    invoke-static {p0, v2, v3}, Landroid/icu/impl/ICUBinary;->getShorts(Ljava/nio/ByteBuffer;II)[S

    #@18a
    move-result-object v2

    #@18b
    iput-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fSFTable:[S

    #@18d
    .line 254
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@18f
    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSFTableLen:I

    #@191
    add-int/2addr v1, v2

    #@192
    .line 260
    :cond_5
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@194
    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSRTableLen:I

    #@196
    if-lez v2, :cond_6

    #@198
    .line 262
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@19a
    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSRTable:I

    #@19c
    sub-int/2addr v2, v1

    #@19d
    invoke-static {p0, v2}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@1a0
    .line 263
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@1a2
    iget v1, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSRTable:I

    #@1a4
    .line 267
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@1a6
    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSRTableLen:I

    #@1a8
    div-int/lit8 v2, v2, 0x2

    #@1aa
    iget-object v3, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@1ac
    iget v3, v3, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSRTableLen:I

    #@1ae
    and-int/lit8 v3, v3, 0x1

    #@1b0
    .line 266
    invoke-static {p0, v2, v3}, Landroid/icu/impl/ICUBinary;->getShorts(Ljava/nio/ByteBuffer;II)[S

    #@1b3
    move-result-object v2

    #@1b4
    iput-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fSRTable:[S

    #@1b6
    .line 268
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@1b8
    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fSRTableLen:I

    #@1ba
    add-int/2addr v1, v2

    #@1bb
    .line 278
    :cond_6
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@1bd
    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fTrie:I

    #@1bf
    sub-int/2addr v2, v1

    #@1c0
    invoke-static {p0, v2}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@1c3
    .line 279
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@1c5
    iget v1, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fTrie:I

    #@1c7
    .line 281
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    #@1ca
    .line 286
    new-instance v2, Landroid/icu/impl/CharTrie;

    #@1cc
    sget-object v3, Landroid/icu/text/RBBIDataWrapper;->fTrieFoldingFunc:Landroid/icu/text/RBBIDataWrapper$TrieFoldingFunc;

    #@1ce
    invoke-direct {v2, p0, v3}, Landroid/icu/impl/CharTrie;-><init>(Ljava/nio/ByteBuffer;Landroid/icu/impl/Trie$DataManipulate;)V

    #@1d1
    iput-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fTrie:Landroid/icu/impl/CharTrie;

    #@1d3
    .line 290
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    #@1d6
    .line 298
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@1d8
    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fStatusTable:I

    #@1da
    if-le v1, v2, :cond_7

    #@1dc
    .line 299
    new-instance v2, Ljava/io/IOException;

    #@1de
    const-string/jumbo v3, "Break iterator Rule data corrupt"

    #@1e1
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1e4
    throw v2

    #@1e5
    .line 301
    :cond_7
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@1e7
    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fStatusTable:I

    #@1e9
    sub-int/2addr v2, v1

    #@1ea
    invoke-static {p0, v2}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@1ed
    .line 302
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@1ef
    iget v1, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fStatusTable:I

    #@1f1
    .line 304
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@1f3
    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fStatusTableLen:I

    #@1f5
    div-int/lit8 v2, v2, 0x4

    #@1f7
    iget-object v3, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@1f9
    iget v3, v3, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fStatusTableLen:I

    #@1fb
    and-int/lit8 v3, v3, 0x3

    #@1fd
    .line 303
    invoke-static {p0, v2, v3}, Landroid/icu/impl/ICUBinary;->getInts(Ljava/nio/ByteBuffer;II)[I

    #@200
    move-result-object v2

    #@201
    iput-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fStatusTable:[I

    #@203
    .line 305
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@205
    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fStatusTableLen:I

    #@207
    add-int/2addr v1, v2

    #@208
    .line 310
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@20a
    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRuleSource:I

    #@20c
    if-le v1, v2, :cond_8

    #@20e
    .line 311
    new-instance v2, Ljava/io/IOException;

    #@210
    const-string/jumbo v3, "Break iterator Rule data corrupt"

    #@213
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@216
    throw v2

    #@217
    .line 313
    :cond_8
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@219
    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRuleSource:I

    #@21b
    sub-int/2addr v2, v1

    #@21c
    invoke-static {p0, v2}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@21f
    .line 314
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@221
    iget v1, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRuleSource:I

    #@223
    .line 316
    iget-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@225
    iget v2, v2, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRuleSourceLen:I

    #@227
    div-int/lit8 v2, v2, 0x2

    #@229
    iget-object v3, v0, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@22b
    iget v3, v3, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fRuleSourceLen:I

    #@22d
    and-int/lit8 v3, v3, 0x1

    #@22f
    .line 315
    invoke-static {p0, v2, v3}, Landroid/icu/impl/ICUBinary;->getString(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    #@232
    move-result-object v2

    #@233
    iput-object v2, v0, Landroid/icu/text/RBBIDataWrapper;->fRuleSource:Ljava/lang/String;

    #@235
    .line 318
    sget-object v2, Landroid/icu/text/RuleBasedBreakIterator;->fDebugEnv:Ljava/lang/String;

    #@237
    if-eqz v2, :cond_9

    #@239
    sget-object v2, Landroid/icu/text/RuleBasedBreakIterator;->fDebugEnv:Ljava/lang/String;

    #@23b
    const-string/jumbo v3, "data"

    #@23e
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@241
    move-result v2

    #@242
    if-ltz v2, :cond_9

    #@244
    .line 319
    invoke-virtual {v0}, Landroid/icu/text/RBBIDataWrapper;->dump()V

    #@247
    .line 321
    :cond_9
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
    .line 328
    iget-boolean v0, p0, Landroid/icu/text/RBBIDataWrapper;->isBigEndian:Z

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 329
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
    .line 331
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
    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@5
    .line 381
    .local v0, "dest":Ljava/lang/StringBuilder;
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    .line 382
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@f
    move-result v1

    #@10
    if-ge v1, p1, :cond_0

    #@12
    .line 383
    const/4 v1, 0x0

    #@13
    const/16 v2, 0x20

    #@15
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    #@18
    goto :goto_0

    #@19
    .line 385
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
    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@5
    .line 369
    .local v0, "dest":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8
    .line 370
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@b
    move-result v1

    #@c
    if-ge v1, p1, :cond_0

    #@e
    .line 371
    const/4 v1, 0x0

    #@f
    const/16 v2, 0x20

    #@11
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    #@14
    goto :goto_0

    #@15
    .line 373
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
    .line 344
    iget-object v0, p0, Landroid/icu/text/RBBIDataWrapper;->fFTable:[S

    #@2
    array-length v0, v0

    #@3
    if-nez v0, :cond_0

    #@5
    .line 346
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@a
    throw v0

    #@b
    .line 348
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@d
    const-string/jumbo v1, "RBBI Data Wrapper dump ..."

    #@10
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@13
    .line 349
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@15
    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    #@18
    .line 350
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1a
    const-string/jumbo v1, "Forward State Table"

    #@1d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@20
    .line 351
    iget-object v0, p0, Landroid/icu/text/RBBIDataWrapper;->fFTable:[S

    #@22
    invoke-direct {p0, v0}, Landroid/icu/text/RBBIDataWrapper;->dumpTable([S)V

    #@25
    .line 352
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@27
    const-string/jumbo v1, "Reverse State Table"

    #@2a
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2d
    .line 353
    iget-object v0, p0, Landroid/icu/text/RBBIDataWrapper;->fRTable:[S

    #@2f
    invoke-direct {p0, v0}, Landroid/icu/text/RBBIDataWrapper;->dumpTable([S)V

    #@32
    .line 354
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@34
    const-string/jumbo v1, "Forward Safe Points Table"

    #@37
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3a
    .line 355
    iget-object v0, p0, Landroid/icu/text/RBBIDataWrapper;->fSFTable:[S

    #@3c
    invoke-direct {p0, v0}, Landroid/icu/text/RBBIDataWrapper;->dumpTable([S)V

    #@3f
    .line 356
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@41
    const-string/jumbo v1, "Reverse Safe Points Table"

    #@44
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@47
    .line 357
    iget-object v0, p0, Landroid/icu/text/RBBIDataWrapper;->fSRTable:[S

    #@49
    invoke-direct {p0, v0}, Landroid/icu/text/RBBIDataWrapper;->dumpTable([S)V

    #@4c
    .line 359
    invoke-direct {p0}, Landroid/icu/text/RBBIDataWrapper;->dumpCharCategories()V

    #@4f
    .line 360
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
    .line 343
    return-void
.end method

.method getRowIndex(I)I
    .locals 1
    .param p1, "state"    # I

    #@0
    .prologue
    .line 145
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
    .line 338
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
