.class public final Landroid/icu/impl/RBBIDataWrapper;
.super Ljava/lang/Object;
.source "RBBIDataWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;,
        Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;,
        Landroid/icu/impl/RBBIDataWrapper$IsAcceptable;
    }
.end annotation


# static fields
.field public static final blacklist ACCEPTING:I = 0x0

.field public static final blacklist ACCEPTING_UNCONDITIONAL:I = 0x1

.field public static final blacklist DATA_FORMAT:I = 0x42726b20

.field public static final blacklist DH_CATCOUNT:I = 0x3

.field public static final blacklist DH_FORMATVERSION:I = 0x1

.field public static final blacklist DH_FTABLE:I = 0x4

.field public static final blacklist DH_FTABLELEN:I = 0x5

.field public static final blacklist DH_LENGTH:I = 0x2

.field public static final blacklist DH_MAGIC:I = 0x0

.field public static final blacklist DH_RTABLE:I = 0x6

.field public static final blacklist DH_RTABLELEN:I = 0x7

.field public static final blacklist DH_RULESOURCE:I = 0xa

.field public static final blacklist DH_RULESOURCELEN:I = 0xb

.field public static final blacklist DH_SIZE:I = 0x14

.field public static final blacklist DH_STATUSTABLE:I = 0xc

.field public static final blacklist DH_STATUSTABLELEN:I = 0xd

.field public static final blacklist DH_TRIE:I = 0x8

.field public static final blacklist DH_TRIELEN:I = 0x9

.field public static final blacklist FORMAT_VERSION:I = 0x6000000

.field private static final blacklist IS_ACCEPTABLE:Landroid/icu/impl/RBBIDataWrapper$IsAcceptable;

.field public static final blacklist LOOKAHEAD:I = 0x1

.field public static final blacklist NEXTSTATES:I = 0x3

.field public static final blacklist RBBI_8BITS_ROWS:I = 0x4

.field public static final blacklist RBBI_BOF_REQUIRED:I = 0x2

.field public static final blacklist RBBI_LOOKAHEAD_HARD_BREAK:I = 0x1

.field public static final blacklist TAGSIDX:I = 0x2


# instance fields
.field public blacklist fFTable:Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;

.field public blacklist fHeader:Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;

.field public blacklist fRTable:Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;

.field public blacklist fRuleSource:Ljava/lang/String;

.field public blacklist fStatusTable:[I

.field public blacklist fTrie:Landroid/icu/util/CodePointTrie;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 188
    new-instance v0, Landroid/icu/impl/RBBIDataWrapper$IsAcceptable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/impl/RBBIDataWrapper$IsAcceptable;-><init>(Landroid/icu/impl/RBBIDataWrapper-IA;)V

    sput-object v0, Landroid/icu/impl/RBBIDataWrapper;->IS_ACCEPTABLE:Landroid/icu/impl/RBBIDataWrapper$IsAcceptable;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    return-void
.end method

.method public static blacklist charToString(CI)Ljava/lang/String;
    .registers 5
    .param p0, "n"    # C
    .param p1, "width"    # I

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 444
    .local v0, "dest":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 445
    :goto_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge v1, p1, :cond_15

    .line 446
    const/4 v1, 0x0

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 448
    :cond_15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist dumpCharCategories(Ljava/io/PrintStream;)V
    .registers 14
    .param p1, "out"    # Ljava/io/PrintStream;

    .line 513
    iget-object v0, p0, Landroid/icu/impl/RBBIDataWrapper;->fHeader:Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget v0, v0, Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fCatCount:I

    .line 514
    .local v0, "n":I
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 515
    .local v1, "catStrings":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 516
    .local v2, "rangeStart":I
    const/4 v3, 0x0

    .line 517
    .local v3, "rangeEnd":I
    const/4 v4, -0x1

    .line 520
    .local v4, "lastCat":I
    add-int/lit8 v5, v0, 0x1

    new-array v5, v5, [I

    .line 522
    .local v5, "lastNewline":[I
    const/4 v6, 0x0

    .local v6, "category":I
    :goto_10
    iget-object v7, p0, Landroid/icu/impl/RBBIDataWrapper;->fHeader:Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget v7, v7, Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fCatCount:I

    if-gt v6, v7, :cond_1d

    .line 523
    const-string v7, ""

    aput-object v7, v1, v6

    .line 522
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    .line 525
    :cond_1d
    const-string v7, "\nCharacter Categories"

    invoke-virtual {p1, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 526
    const-string v7, "--------------------"

    invoke-virtual {p1, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 527
    const/4 v7, 0x0

    .local v7, "char32":I
    :goto_28
    const v8, 0x10ffff

    const-string v9, "-"

    const-string v10, " "

    if-gt v7, v8, :cond_e0

    .line 528
    iget-object v8, p0, Landroid/icu/impl/RBBIDataWrapper;->fTrie:Landroid/icu/util/CodePointTrie;

    invoke-virtual {v8, v7}, Landroid/icu/util/CodePointTrie;->get(I)I

    move-result v6

    .line 529
    if-ltz v6, :cond_b7

    iget-object v8, p0, Landroid/icu/impl/RBBIDataWrapper;->fHeader:Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget v8, v8, Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fCatCount:I

    if-le v6, v8, :cond_41

    goto/16 :goto_b7

    .line 534
    :cond_41
    if-ne v6, v4, :cond_45

    .line 535
    move v3, v7

    goto :goto_b3

    .line 537
    :cond_45
    if-ltz v4, :cond_b0

    .line 538
    aget-object v8, v1, v4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    aget v11, v5, v4

    add-int/lit8 v11, v11, 0x46

    if-le v8, v11, :cond_74

    .line 539
    aget-object v8, v1, v4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0xa

    aput v8, v5, v4

    .line 540
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v1, v4

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "\n       "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v4

    .line 543
    :cond_74
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v1, v4

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v4

    .line 544
    if-eq v3, v2, :cond_b0

    .line 545
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v1, v4

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v4

    .line 548
    :cond_b0
    move v4, v6

    .line 549
    move v3, v7

    move v2, v7

    .line 527
    :goto_b3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_28

    .line 530
    :cond_b7
    :goto_b7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error, bad category "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " for char "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 531
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 530
    invoke-virtual {p1, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 532
    nop

    .line 552
    :cond_e0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v1, v4

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v4

    .line 553
    if-eq v3, v2, :cond_11c

    .line 554
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v1, v4

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v4

    .line 557
    :cond_11c
    const/4 v6, 0x0

    :goto_11d
    iget-object v8, p0, Landroid/icu/impl/RBBIDataWrapper;->fHeader:Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget v8, v8, Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fCatCount:I

    if-gt v6, v8, :cond_147

    .line 558
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x5

    invoke-static {v6, v9}, Landroid/icu/impl/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v1, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 557
    add-int/lit8 v6, v6, 0x1

    goto :goto_11d

    .line 560
    :cond_147
    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    .line 561
    return-void
.end method

.method private blacklist dumpRow(Ljava/io/PrintStream;Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;C)V
    .registers 10
    .param p1, "out"    # Ljava/io/PrintStream;
    .param p2, "table"    # Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;
    .param p3, "state"    # C

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/icu/impl/RBBIDataWrapper;->fHeader:Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget v1, v1, Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fCatCount:I

    const/4 v2, 0x5

    mul-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 491
    .local v0, "dest":Ljava/lang/StringBuilder;
    const/4 v1, 0x4

    invoke-static {p3, v1}, Landroid/icu/impl/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    invoke-virtual {p0, p3}, Landroid/icu/impl/RBBIDataWrapper;->getRowIndex(I)I

    move-result v1

    .line 493
    .local v1, "row":I
    iget-object v3, p2, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fTable:[C

    add-int/lit8 v4, v1, 0x0

    aget-char v3, v3, v4

    const-string v4, "     "

    if-eqz v3, :cond_31

    .line 494
    iget-object v3, p2, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fTable:[C

    add-int/lit8 v5, v1, 0x0

    aget-char v3, v3, v5

    invoke-static {v3, v2}, Landroid/icu/impl/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_34

    .line 496
    :cond_31
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    :goto_34
    iget-object v3, p2, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fTable:[C

    add-int/lit8 v5, v1, 0x1

    aget-char v3, v3, v5

    if-eqz v3, :cond_4a

    .line 499
    iget-object v3, p2, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fTable:[C

    add-int/lit8 v4, v1, 0x1

    aget-char v3, v3, v4

    invoke-static {v3, v2}, Landroid/icu/impl/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4d

    .line 501
    :cond_4a
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    :goto_4d
    iget-object v3, p2, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fTable:[C

    add-int/lit8 v4, v1, 0x2

    aget-char v3, v3, v4

    invoke-static {v3, v2}, Landroid/icu/impl/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    const/4 v3, 0x0

    .local v3, "col":I
    :goto_5b
    iget-object v4, p0, Landroid/icu/impl/RBBIDataWrapper;->fHeader:Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget v4, v4, Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fCatCount:I

    if-ge v3, v4, :cond_72

    .line 506
    iget-object v4, p2, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fTable:[C

    add-int/lit8 v5, v1, 0x3

    add-int/2addr v5, v3

    aget-char v4, v4, v5

    invoke-static {v4, v2}, Landroid/icu/impl/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    add-int/lit8 v3, v3, 0x1

    goto :goto_5b

    .line 509
    .end local v3    # "col":I
    :cond_72
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 510
    return-void
.end method

.method private blacklist dumpTable(Ljava/io/PrintStream;Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;)V
    .registers 7
    .param p1, "out"    # Ljava/io/PrintStream;
    .param p2, "table"    # Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;

    .line 463
    if-eqz p2, :cond_4c

    iget-object v0, p2, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fTable:[C

    array-length v0, v0

    if-nez v0, :cond_8

    goto :goto_4c

    .line 468
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " Row  Acc Look  Tag"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 469
    .local v0, "header":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "n":C
    :goto_10
    iget-object v2, p0, Landroid/icu/impl/RBBIDataWrapper;->fHeader:Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fCatCount:I

    if-ge v1, v2, :cond_22

    .line 470
    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/icu/impl/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    add-int/lit8 v2, v1, 0x1

    int-to-char v1, v2

    goto :goto_10

    .line 472
    :cond_22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 473
    const/4 v1, 0x0

    :goto_2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v1, v2, :cond_39

    .line 474
    const-string v2, "-"

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 473
    add-int/lit8 v2, v1, 0x1

    int-to-char v1, v2

    goto :goto_2a

    .line 476
    :cond_39
    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    .line 477
    const/4 v2, 0x0

    .local v2, "state":C
    :goto_3d
    iget v3, p2, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fNumStates:I

    if-ge v2, v3, :cond_48

    .line 478
    invoke-direct {p0, p1, p2, v2}, Landroid/icu/impl/RBBIDataWrapper;->dumpRow(Ljava/io/PrintStream;Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;C)V

    .line 477
    add-int/lit8 v3, v2, 0x1

    int-to-char v2, v3

    goto :goto_3d

    .line 480
    :cond_48
    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    goto :goto_51

    .line 464
    .end local v0    # "header":Ljava/lang/StringBuilder;
    .end local v1    # "n":C
    .end local v2    # "state":C
    :cond_4c
    :goto_4c
    const-string v0, "  -- null -- "

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 482
    :goto_51
    return-void
.end method

.method public static blacklist equals(Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;)Z
    .registers 3
    .param p0, "left"    # Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;
    .param p1, "right"    # Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;

    .line 154
    if-ne p0, p1, :cond_4

    .line 155
    const/4 v0, 0x1

    return v0

    .line 157
    :cond_4
    if-eqz p0, :cond_e

    if-nez p1, :cond_9

    goto :goto_e

    .line 160
    :cond_9
    invoke-virtual {p0, p1}, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 158
    :cond_e
    :goto_e
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist get(Ljava/nio/ByteBuffer;)Landroid/icu/impl/RBBIDataWrapper;
    .registers 8
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    new-instance v0, Landroid/icu/impl/RBBIDataWrapper;

    invoke-direct {v0}, Landroid/icu/impl/RBBIDataWrapper;-><init>()V

    .line 299
    .local v0, "This":Landroid/icu/impl/RBBIDataWrapper;
    const v1, 0x42726b20

    sget-object v2, Landroid/icu/impl/RBBIDataWrapper;->IS_ACCEPTABLE:Landroid/icu/impl/RBBIDataWrapper$IsAcceptable;

    invoke-static {p0, v1, v2}, Landroid/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)I

    .line 302
    new-instance v1, Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    invoke-direct {v1}, Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;-><init>()V

    iput-object v1, v0, Landroid/icu/impl/RBBIDataWrapper;->fHeader:Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    .line 303
    iget-object v1, v0, Landroid/icu/impl/RBBIDataWrapper;->fHeader:Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fMagic:I

    .line 304
    iget-object v1, v0, Landroid/icu/impl/RBBIDataWrapper;->fHeader:Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget-object v1, v1, Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fFormatVersion:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 305
    iget-object v1, v0, Landroid/icu/impl/RBBIDataWrapper;->fHeader:Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget-object v1, v1, Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fFormatVersion:[B

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    aput-byte v4, v1, v2

    .line 306
    iget-object v1, v0, Landroid/icu/impl/RBBIDataWrapper;->fHeader:Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget-object v1, v1, Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fFormatVersion:[B

    const/4 v2, 0x2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    aput-byte v4, v1, v2

    .line 307
    iget-object v1, v0, Landroid/icu/impl/RBBIDataWrapper;->fHeader:Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget-object v1, v1, Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fFormatVersion:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    const/4 v4, 0x3

    aput-byte v2, v1, v4

    .line 308
    iget-object v1, v0, Landroid/icu/impl/RBBIDataWrapper;->fHeader:Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fLength:I

    .line 309
    iget-object v1, v0, Landroid/icu/impl/RBBIDataWrapper;->fHeader:Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fCatCount:I

    .line 310
    iget-object v1, v0, Landroid/icu/impl/RBBIDataWrapper;->fHeader:Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fFTable:I

    .line 311
    iget-object v1, v0, Landroid/icu/impl/RBBIDataWrapper;->fHeader:Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fFTableLen:I

    .line 312
    iget-object v1, v0, Landroid/icu/impl/RBBIDataWrapper;->fHeader:Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fRTable:I

    .line 313
    iget-object v1, v0, Landroid/icu/impl/RBBIDataWrapper;->fHeader:Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fRTableLen:I

    .line 314
    iget-object v1, v0, Landroid/icu/impl/RBBIDataWrapper;->fHeader:Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fTrie:I

    .line 315
    iget-object v1, v0, Landroid/icu/impl/RBBIDataWrapper;->fHeader:Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fTrieLen:I

    .line 316
    iget-object v1, v0, Landroid/icu/impl/RBBIDataWrapper;->fHeader:Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fRuleSource:I

    .line 317
    iget-object v1, v0, Landroid/icu/impl/RBBIDataWrapper;->fHeader:Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fRuleSourceLen:I

    .line 318
    iget-object v1, v0, Landroid/icu/impl/RBBIDataWrapper;->fHeader:Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fStatusTable:I

    .line 319
    iget-object v1, v0, Landroid/icu/impl/RBBIDataWrapper;->fHeader:Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fStatusTableLen:I

    .line 320
    const/16 v1, 0x18

    invoke-static {p0, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 323
    iget-object v1, v0, Landroid/icu/impl/RBBIDataWrapper;->fHeader:Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget v1, v1, Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fMagic:I

    const v2, 0xb1a0

    if-ne v1, v2, :cond_198

    sget-object v1, Landroid/icu/impl/RBBIDataWrapper;->IS_ACCEPTABLE:Landroid/icu/impl/RBBIDataWrapper$IsAcceptable;

    iget-object v2, v0, Landroid/icu/impl/RBBIDataWrapper;->fHeader:Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget-object v2, v2, Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fFormatVersion:[B

    invoke-virtual {v1, v2}, Landroid/icu/impl/RBBIDataWrapper$IsAcceptable;->isDataVersionAcceptable([B)Z

    move-result v1

    if-eqz v1, :cond_198

    .line 328
    const/16 v1, 0x50

    .line 335
    .local v1, "pos":I
    iget-object v2, v0, Landroid/icu/impl/RBBIDataWrapper;->fHeader:Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fFTable:I

    const-string v5, "Break iterator Rule data corrupt"

    if-lt v2, v1, :cond_192

    iget-object v2, v0, Landroid/icu/impl/RBBIDataWrapper;->fHeader:Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fFTable:I

    iget-object v6, v0, Landroid/icu/impl/RBBIDataWrapper;->fHeader:Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget v6, v6, Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fLength:I

    if-gt v2, v6, :cond_192

    .line 340
    iget-object v2, v0, Landroid/icu/impl/RBBIDataWrapper;->fHeader:Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fFTable:I

    sub-int/2addr v2, v1

    invoke-static {p0, v2}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 341
    iget-object v2, v0, Landroid/icu/impl/RBBIDataWrapper;->fHeader:Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget v1, v2, Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fFTable:I

    .line 343
    iget-object v2, v0, Landroid/icu/impl/RBBIDataWrapper;->fHeader:Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fFTableLen:I

    invoke-static {p0, v2}, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->get(Ljava/nio/ByteBuffer;I)Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;

    move-result-object v2

    iput-object v2, v0, Landroid/icu/impl/RBBIDataWrapper;->fFTable:Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;

    .line 344
    iget-object v2, v0, Landroid/icu/impl/RBBIDataWrapper;->fHeader:Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fFTableLen:I

    add-int/2addr v1, v2

    .line 351
    iget-object v2, v0, Landroid/icu/impl/RBBIDataWrapper;->fHeader:Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fRTable:I

    sub-int/2addr v2, v1

    invoke-static {p0, v2}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 352
    iget-object v2, v0, Landroid/icu/impl/RBBIDataWrapper;->fHeader:Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget v1, v2, Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fRTable:I

    .line 355
    iget-object v2, v0, Landroid/icu/impl/RBBIDataWrapper;->fHeader:Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fRTableLen:I

    invoke-static {p0, v2}, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->get(Ljava/nio/ByteBuffer;I)Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;

    move-result-object v2

    iput-object v2, v0, Landroid/icu/impl/RBBIDataWrapper;->fRTable:Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;

    .line 356
    iget-object v2, v0, Landroid/icu/impl/RBBIDataWrapper;->fHeader:Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fRTableLen:I

    add-int/2addr v1, v2

    .line 365
    iget-object v2, v0, Landroid/icu/impl/RBBIDataWrapper;->fHeader:Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fTrie:I

    sub-int/2addr v2, v1

    invoke-static {p0, v2}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 366
    iget-object v2, v0, Landroid/icu/impl/RBBIDataWrapper;->fHeader:Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget v1, v2, Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fTrie:I

    .line 368
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 373
    sget-object v2, Landroid/icu/util/CodePointTrie$Type;->FAST:Landroid/icu/util/CodePointTrie$Type;

    const/4 v6, 0x0

    invoke-static {v2, v6, p0}, Landroid/icu/util/CodePointTrie;->fromBinary(Landroid/icu/util/CodePointTrie$Type;Landroid/icu/util/CodePointTrie$ValueWidth;Ljava/nio/ByteBuffer;)Landroid/icu/util/CodePointTrie;

    move-result-object v2

    iput-object v2, v0, Landroid/icu/impl/RBBIDataWrapper;->fTrie:Landroid/icu/util/CodePointTrie;

    .line 380
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 388
    iget-object v2, v0, Landroid/icu/impl/RBBIDataWrapper;->fHeader:Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fStatusTable:I

    if-gt v1, v2, :cond_18c

    .line 391
    iget-object v2, v0, Landroid/icu/impl/RBBIDataWrapper;->fHeader:Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fStatusTable:I

    sub-int/2addr v2, v1

    invoke-static {p0, v2}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 392
    iget-object v2, v0, Landroid/icu/impl/RBBIDataWrapper;->fHeader:Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget v1, v2, Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fStatusTable:I

    .line 393
    iget-object v2, v0, Landroid/icu/impl/RBBIDataWrapper;->fHeader:Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fStatusTableLen:I

    div-int/lit8 v2, v2, 0x4

    iget-object v6, v0, Landroid/icu/impl/RBBIDataWrapper;->fHeader:Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget v6, v6, Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fStatusTableLen:I

    and-int/2addr v4, v6

    invoke-static {p0, v2, v4}, Landroid/icu/impl/ICUBinary;->getInts(Ljava/nio/ByteBuffer;II)[I

    move-result-object v2

    iput-object v2, v0, Landroid/icu/impl/RBBIDataWrapper;->fStatusTable:[I

    .line 395
    iget-object v2, v0, Landroid/icu/impl/RBBIDataWrapper;->fHeader:Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fStatusTableLen:I

    add-int/2addr v1, v2

    .line 400
    iget-object v2, v0, Landroid/icu/impl/RBBIDataWrapper;->fHeader:Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fRuleSource:I

    if-gt v1, v2, :cond_186

    .line 403
    iget-object v2, v0, Landroid/icu/impl/RBBIDataWrapper;->fHeader:Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget v2, v2, Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fRuleSource:I

    sub-int/2addr v2, v1

    invoke-static {p0, v2}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 404
    iget-object v2, v0, Landroid/icu/impl/RBBIDataWrapper;->fHeader:Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget v1, v2, Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fRuleSource:I

    .line 405
    new-instance v2, Ljava/lang/String;

    iget-object v4, v0, Landroid/icu/impl/RBBIDataWrapper;->fHeader:Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget v4, v4, Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fRuleSourceLen:I

    .line 406
    invoke-static {p0, v4, v3}, Landroid/icu/impl/ICUBinary;->getBytes(Ljava/nio/ByteBuffer;II)[B

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v2, v0, Landroid/icu/impl/RBBIDataWrapper;->fRuleSource:Ljava/lang/String;

    .line 408
    sget-object v2, Landroid/icu/text/RuleBasedBreakIterator;->fDebugEnv:Ljava/lang/String;

    if-eqz v2, :cond_185

    sget-object v2, Landroid/icu/text/RuleBasedBreakIterator;->fDebugEnv:Ljava/lang/String;

    const-string v3, "data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_185

    .line 409
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Landroid/icu/impl/RBBIDataWrapper;->dump(Ljava/io/PrintStream;)V

    .line 411
    :cond_185
    return-object v0

    .line 401
    :cond_186
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 389
    :cond_18c
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 336
    :cond_192
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 324
    .end local v1    # "pos":I
    :cond_198
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Break Iterator Rule Data Magic Number Incorrect, or unsupported data version."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist intToHexString(II)Ljava/lang/String;
    .registers 5
    .param p0, "n"    # I
    .param p1, "width"    # I

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 454
    .local v0, "dest":Ljava/lang/StringBuilder;
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    :goto_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge v1, p1, :cond_19

    .line 456
    const/4 v1, 0x0

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 458
    :cond_19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist intToString(II)Ljava/lang/String;
    .registers 5
    .param p0, "n"    # I
    .param p1, "width"    # I

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 435
    .local v0, "dest":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 436
    :goto_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge v1, p1, :cond_15

    .line 437
    const/4 v1, 0x0

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 439
    :cond_15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public blacklist dump(Ljava/io/PrintStream;)V
    .registers 4
    .param p1, "out"    # Ljava/io/PrintStream;

    .line 416
    iget-object v0, p0, Landroid/icu/impl/RBBIDataWrapper;->fFTable:Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;

    if-eqz v0, :cond_3c

    .line 420
    const-string v0, "RBBI Data Wrapper dump ..."

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 421
    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    .line 422
    const-string v0, "Forward State Table"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Landroid/icu/impl/RBBIDataWrapper;->fFTable:Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;

    invoke-direct {p0, p1, v0}, Landroid/icu/impl/RBBIDataWrapper;->dumpTable(Ljava/io/PrintStream;Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;)V

    .line 424
    const-string v0, "Reverse State Table"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Landroid/icu/impl/RBBIDataWrapper;->fRTable:Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;

    invoke-direct {p0, p1, v0}, Landroid/icu/impl/RBBIDataWrapper;->dumpTable(Ljava/io/PrintStream;Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;)V

    .line 427
    invoke-direct {p0, p1}, Landroid/icu/impl/RBBIDataWrapper;->dumpCharCategories(Ljava/io/PrintStream;)V

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Source Rules: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/impl/RBBIDataWrapper;->fRuleSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 430
    return-void

    .line 418
    :cond_3c
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist getRowIndex(I)I
    .registers 3
    .param p1, "state"    # I

    .line 286
    iget-object v0, p0, Landroid/icu/impl/RBBIDataWrapper;->fHeader:Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;

    iget v0, v0, Landroid/icu/impl/RBBIDataWrapper$RBBIDataHeader;->fCatCount:I

    add-int/lit8 v0, v0, 0x3

    mul-int/2addr v0, p1

    return v0
.end method
