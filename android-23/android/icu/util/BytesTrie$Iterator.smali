.class public final Landroid/icu/util/BytesTrie$Iterator;
.super Ljava/lang/Object;
.source "BytesTrie.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/BytesTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Iterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Landroid/icu/util/BytesTrie$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field private bytes_:[B

.field private entry_:Landroid/icu/util/BytesTrie$Entry;

.field private initialPos_:I

.field private initialRemainingMatchLength_:I

.field private maxLength_:I

.field private pos_:I

.field private remainingMatchLength_:I

.field private stack_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>([BIII)V
    .locals 4
    .param p1, "trieBytes"    # [B
    .param p2, "offset"    # I
    .param p3, "remainingMatchLength"    # I
    .param p4, "maxStringLength"    # I

    #@0
    .prologue
    .line 523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 700
    new-instance v1, Ljava/util/ArrayList;

    #@5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v1, p0, Landroid/icu/util/BytesTrie$Iterator;->stack_:Ljava/util/ArrayList;

    #@a
    .line 524
    iput-object p1, p0, Landroid/icu/util/BytesTrie$Iterator;->bytes_:[B

    #@c
    .line 525
    iput p2, p0, Landroid/icu/util/BytesTrie$Iterator;->initialPos_:I

    #@e
    iput p2, p0, Landroid/icu/util/BytesTrie$Iterator;->pos_:I

    #@10
    .line 526
    iput p3, p0, Landroid/icu/util/BytesTrie$Iterator;->initialRemainingMatchLength_:I

    #@12
    iput p3, p0, Landroid/icu/util/BytesTrie$Iterator;->remainingMatchLength_:I

    #@14
    .line 527
    iput p4, p0, Landroid/icu/util/BytesTrie$Iterator;->maxLength_:I

    #@16
    .line 528
    new-instance v2, Landroid/icu/util/BytesTrie$Entry;

    #@18
    iget v1, p0, Landroid/icu/util/BytesTrie$Iterator;->maxLength_:I

    #@1a
    if-eqz v1, :cond_2

    #@1c
    iget v1, p0, Landroid/icu/util/BytesTrie$Iterator;->maxLength_:I

    #@1e
    :goto_0
    const/4 v3, 0x0

    #@1f
    invoke-direct {v2, v1, v3}, Landroid/icu/util/BytesTrie$Entry;-><init>(ILandroid/icu/util/BytesTrie$Entry;)V

    #@22
    iput-object v2, p0, Landroid/icu/util/BytesTrie$Iterator;->entry_:Landroid/icu/util/BytesTrie$Entry;

    #@24
    .line 529
    iget v0, p0, Landroid/icu/util/BytesTrie$Iterator;->remainingMatchLength_:I

    #@26
    .line 530
    .local v0, "length":I
    if-ltz v0, :cond_1

    #@28
    .line 532
    add-int/lit8 v0, v0, 0x1

    #@2a
    .line 533
    iget v1, p0, Landroid/icu/util/BytesTrie$Iterator;->maxLength_:I

    #@2c
    if-lez v1, :cond_0

    #@2e
    iget v1, p0, Landroid/icu/util/BytesTrie$Iterator;->maxLength_:I

    #@30
    if-le v0, v1, :cond_0

    #@32
    .line 534
    iget v0, p0, Landroid/icu/util/BytesTrie$Iterator;->maxLength_:I

    #@34
    .line 536
    :cond_0
    iget-object v1, p0, Landroid/icu/util/BytesTrie$Iterator;->entry_:Landroid/icu/util/BytesTrie$Entry;

    #@36
    iget-object v2, p0, Landroid/icu/util/BytesTrie$Iterator;->bytes_:[B

    #@38
    iget v3, p0, Landroid/icu/util/BytesTrie$Iterator;->pos_:I

    #@3a
    invoke-static {v1, v2, v3, v0}, Landroid/icu/util/BytesTrie$Entry;->-wrap0(Landroid/icu/util/BytesTrie$Entry;[BII)V

    #@3d
    .line 537
    iget v1, p0, Landroid/icu/util/BytesTrie$Iterator;->pos_:I

    #@3f
    add-int/2addr v1, v0

    #@40
    iput v1, p0, Landroid/icu/util/BytesTrie$Iterator;->pos_:I

    #@42
    .line 538
    iget v1, p0, Landroid/icu/util/BytesTrie$Iterator;->remainingMatchLength_:I

    #@44
    sub-int/2addr v1, v0

    #@45
    iput v1, p0, Landroid/icu/util/BytesTrie$Iterator;->remainingMatchLength_:I

    #@47
    .line 523
    :cond_1
    return-void

    #@48
    .line 528
    .end local v0    # "length":I
    :cond_2
    const/16 v1, 0x20

    #@4a
    goto :goto_0
.end method

.method synthetic constructor <init>([BIIILandroid/icu/util/BytesTrie$Iterator;)V
    .locals 0
    .param p1, "trieBytes"    # [B
    .param p2, "offset"    # I
    .param p3, "remainingMatchLength"    # I
    .param p4, "maxStringLength"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/util/BytesTrie$Iterator;-><init>([BIII)V

    #@3
    return-void
.end method

.method private branchNext(II)I
    .locals 12
    .param p1, "pos"    # I
    .param p2, "length"    # I

    #@0
    .prologue
    const/16 v11, 0x20

    #@2
    const/4 v10, -0x1

    #@3
    move v2, p1

    #@4
    .line 658
    .end local p1    # "pos":I
    .local v2, "pos":I
    :goto_0
    const/4 v5, 0x5

    #@5
    if-le p2, v5, :cond_0

    #@7
    .line 659
    add-int/lit8 p1, v2, 0x1

    #@9
    .line 661
    .end local v2    # "pos":I
    .restart local p1    # "pos":I
    iget-object v5, p0, Landroid/icu/util/BytesTrie$Iterator;->stack_:Ljava/util/ArrayList;

    #@b
    iget-object v6, p0, Landroid/icu/util/BytesTrie$Iterator;->bytes_:[B

    #@d
    invoke-static {v6, p1}, Landroid/icu/util/BytesTrie;->-wrap2([BI)I

    #@10
    move-result v6

    #@11
    int-to-long v6, v6

    #@12
    shl-long/2addr v6, v11

    #@13
    shr-int/lit8 v8, p2, 0x1

    #@15
    sub-int v8, p2, v8

    #@17
    shl-int/lit8 v8, v8, 0x10

    #@19
    int-to-long v8, v8

    #@1a
    or-long/2addr v6, v8

    #@1b
    iget-object v8, p0, Landroid/icu/util/BytesTrie$Iterator;->entry_:Landroid/icu/util/BytesTrie$Entry;

    #@1d
    invoke-static {v8}, Landroid/icu/util/BytesTrie$Entry;->-get0(Landroid/icu/util/BytesTrie$Entry;)I

    #@20
    move-result v8

    #@21
    int-to-long v8, v8

    #@22
    or-long/2addr v6, v8

    #@23
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@26
    move-result-object v6

    #@27
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2a
    .line 663
    shr-int/lit8 p2, p2, 0x1

    #@2c
    .line 664
    iget-object v5, p0, Landroid/icu/util/BytesTrie$Iterator;->bytes_:[B

    #@2e
    invoke-static {v5, p1}, Landroid/icu/util/BytesTrie;->-wrap0([BI)I

    #@31
    move-result p1

    #@32
    move v2, p1

    #@33
    .end local p1    # "pos":I
    .restart local v2    # "pos":I
    goto :goto_0

    #@34
    .line 668
    :cond_0
    iget-object v5, p0, Landroid/icu/util/BytesTrie$Iterator;->bytes_:[B

    #@36
    add-int/lit8 p1, v2, 0x1

    #@38
    .end local v2    # "pos":I
    .restart local p1    # "pos":I
    aget-byte v3, v5, v2

    #@3a
    .line 669
    .local v3, "trieByte":B
    iget-object v5, p0, Landroid/icu/util/BytesTrie$Iterator;->bytes_:[B

    #@3c
    add-int/lit8 v2, p1, 0x1

    #@3e
    .end local p1    # "pos":I
    .restart local v2    # "pos":I
    aget-byte v5, v5, p1

    #@40
    and-int/lit16 v1, v5, 0xff

    #@42
    .line 670
    .local v1, "node":I
    and-int/lit8 v5, v1, 0x1

    #@44
    if-eqz v5, :cond_1

    #@46
    const/4 v0, 0x1

    #@47
    .line 671
    .local v0, "isFinal":Z
    :goto_1
    iget-object v5, p0, Landroid/icu/util/BytesTrie$Iterator;->bytes_:[B

    #@49
    shr-int/lit8 v6, v1, 0x1

    #@4b
    invoke-static {v5, v2, v6}, Landroid/icu/util/BytesTrie;->-wrap1([BII)I

    #@4e
    move-result v4

    #@4f
    .line 672
    .local v4, "value":I
    invoke-static {v2, v1}, Landroid/icu/util/BytesTrie;->-wrap3(II)I

    #@52
    move-result p1

    #@53
    .line 673
    .end local v2    # "pos":I
    .restart local p1    # "pos":I
    iget-object v5, p0, Landroid/icu/util/BytesTrie$Iterator;->stack_:Ljava/util/ArrayList;

    #@55
    int-to-long v6, p1

    #@56
    shl-long/2addr v6, v11

    #@57
    add-int/lit8 v8, p2, -0x1

    #@59
    shl-int/lit8 v8, v8, 0x10

    #@5b
    int-to-long v8, v8

    #@5c
    or-long/2addr v6, v8

    #@5d
    iget-object v8, p0, Landroid/icu/util/BytesTrie$Iterator;->entry_:Landroid/icu/util/BytesTrie$Entry;

    #@5f
    invoke-static {v8}, Landroid/icu/util/BytesTrie$Entry;->-get0(Landroid/icu/util/BytesTrie$Entry;)I

    #@62
    move-result v8

    #@63
    int-to-long v8, v8

    #@64
    or-long/2addr v6, v8

    #@65
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@68
    move-result-object v6

    #@69
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@6c
    .line 674
    iget-object v5, p0, Landroid/icu/util/BytesTrie$Iterator;->entry_:Landroid/icu/util/BytesTrie$Entry;

    #@6e
    invoke-static {v5, v3}, Landroid/icu/util/BytesTrie$Entry;->-wrap1(Landroid/icu/util/BytesTrie$Entry;B)V

    #@71
    .line 675
    if-eqz v0, :cond_2

    #@73
    .line 676
    iput v10, p0, Landroid/icu/util/BytesTrie$Iterator;->pos_:I

    #@75
    .line 677
    iget-object v5, p0, Landroid/icu/util/BytesTrie$Iterator;->entry_:Landroid/icu/util/BytesTrie$Entry;

    #@77
    iput v4, v5, Landroid/icu/util/BytesTrie$Entry;->value:I

    #@79
    .line 678
    return v10

    #@7a
    .line 670
    .end local v0    # "isFinal":Z
    .end local v4    # "value":I
    .end local p1    # "pos":I
    .restart local v2    # "pos":I
    :cond_1
    const/4 v0, 0x0

    #@7b
    .restart local v0    # "isFinal":Z
    goto :goto_1

    #@7c
    .line 680
    .end local v2    # "pos":I
    .restart local v4    # "value":I
    .restart local p1    # "pos":I
    :cond_2
    add-int v5, p1, v4

    #@7e
    return v5
.end method

.method private truncateAndStop()Landroid/icu/util/BytesTrie$Entry;
    .locals 2

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 652
    iput v1, p0, Landroid/icu/util/BytesTrie$Iterator;->pos_:I

    #@3
    .line 653
    iget-object v0, p0, Landroid/icu/util/BytesTrie$Iterator;->entry_:Landroid/icu/util/BytesTrie$Entry;

    #@5
    iput v1, v0, Landroid/icu/util/BytesTrie$Entry;->value:I

    #@7
    .line 654
    iget-object v0, p0, Landroid/icu/util/BytesTrie$Iterator;->entry_:Landroid/icu/util/BytesTrie$Entry;

    #@9
    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 565
    iget v2, p0, Landroid/icu/util/BytesTrie$Iterator;->pos_:I

    #@4
    if-gez v2, :cond_0

    #@6
    iget-object v2, p0, Landroid/icu/util/BytesTrie$Iterator;->stack_:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    move v0, v1

    #@f
    :cond_0
    return v0
.end method

.method public next()Landroid/icu/util/BytesTrie$Entry;
    .locals 11

    #@0
    .prologue
    const/16 v10, 0x20

    #@2
    .line 579
    iget v3, p0, Landroid/icu/util/BytesTrie$Iterator;->pos_:I

    #@4
    .line 580
    .local v3, "pos":I
    if-gez v3, :cond_2

    #@6
    .line 581
    iget-object v5, p0, Landroid/icu/util/BytesTrie$Iterator;->stack_:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    #@b
    move-result v5

    #@c
    if-eqz v5, :cond_0

    #@e
    .line 582
    new-instance v5, Ljava/util/NoSuchElementException;

    #@10
    invoke-direct {v5}, Ljava/util/NoSuchElementException;-><init>()V

    #@13
    throw v5

    #@14
    .line 586
    :cond_0
    iget-object v5, p0, Landroid/icu/util/BytesTrie$Iterator;->stack_:Ljava/util/ArrayList;

    #@16
    iget-object v8, p0, Landroid/icu/util/BytesTrie$Iterator;->stack_:Ljava/util/ArrayList;

    #@18
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@1b
    move-result v8

    #@1c
    add-int/lit8 v8, v8, -0x1

    #@1e
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@21
    move-result-object v5

    #@22
    check-cast v5, Ljava/lang/Long;

    #@24
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    #@27
    move-result-wide v6

    #@28
    .line 587
    .local v6, "top":J
    long-to-int v1, v6

    #@29
    .line 588
    .local v1, "length":I
    shr-long v8, v6, v10

    #@2b
    long-to-int v3, v8

    #@2c
    .line 589
    iget-object v5, p0, Landroid/icu/util/BytesTrie$Iterator;->entry_:Landroid/icu/util/BytesTrie$Entry;

    #@2e
    const v8, 0xffff

    #@31
    and-int/2addr v8, v1

    #@32
    invoke-static {v5, v8}, Landroid/icu/util/BytesTrie$Entry;->-wrap2(Landroid/icu/util/BytesTrie$Entry;I)V

    #@35
    .line 590
    ushr-int/lit8 v1, v1, 0x10

    #@37
    .line 591
    const/4 v5, 0x1

    #@38
    if-le v1, v5, :cond_1

    #@3a
    .line 592
    invoke-direct {p0, v3, v1}, Landroid/icu/util/BytesTrie$Iterator;->branchNext(II)I

    #@3d
    move-result v3

    #@3e
    .line 593
    if-gez v3, :cond_2

    #@40
    .line 594
    iget-object v5, p0, Landroid/icu/util/BytesTrie$Iterator;->entry_:Landroid/icu/util/BytesTrie$Entry;

    #@42
    return-object v5

    #@43
    .line 597
    :cond_1
    iget-object v5, p0, Landroid/icu/util/BytesTrie$Iterator;->entry_:Landroid/icu/util/BytesTrie$Entry;

    #@45
    iget-object v8, p0, Landroid/icu/util/BytesTrie$Iterator;->bytes_:[B

    #@47
    add-int/lit8 v4, v3, 0x1

    #@49
    .end local v3    # "pos":I
    .local v4, "pos":I
    aget-byte v8, v8, v3

    #@4b
    invoke-static {v5, v8}, Landroid/icu/util/BytesTrie$Entry;->-wrap1(Landroid/icu/util/BytesTrie$Entry;B)V

    #@4e
    move v3, v4

    #@4f
    .line 600
    .end local v1    # "length":I
    .end local v4    # "pos":I
    .end local v6    # "top":J
    .restart local v3    # "pos":I
    :cond_2
    iget v5, p0, Landroid/icu/util/BytesTrie$Iterator;->remainingMatchLength_:I

    #@51
    if-ltz v5, :cond_4

    #@53
    .line 603
    invoke-direct {p0}, Landroid/icu/util/BytesTrie$Iterator;->truncateAndStop()Landroid/icu/util/BytesTrie$Entry;

    #@56
    move-result-object v5

    #@57
    return-object v5

    #@58
    .line 636
    .end local v3    # "pos":I
    .restart local v1    # "length":I
    .local v2, "node":I
    .restart local v4    # "pos":I
    :cond_3
    iget-object v5, p0, Landroid/icu/util/BytesTrie$Iterator;->entry_:Landroid/icu/util/BytesTrie$Entry;

    #@5a
    iget-object v8, p0, Landroid/icu/util/BytesTrie$Iterator;->bytes_:[B

    #@5c
    invoke-static {v5, v8, v4, v1}, Landroid/icu/util/BytesTrie$Entry;->-wrap0(Landroid/icu/util/BytesTrie$Entry;[BII)V

    #@5f
    .line 637
    add-int v3, v4, v1

    #@61
    .line 606
    .end local v1    # "length":I
    .end local v2    # "node":I
    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    :cond_4
    iget-object v5, p0, Landroid/icu/util/BytesTrie$Iterator;->bytes_:[B

    #@63
    add-int/lit8 v4, v3, 0x1

    #@65
    .end local v3    # "pos":I
    .restart local v4    # "pos":I
    aget-byte v5, v5, v3

    #@67
    and-int/lit16 v2, v5, 0xff

    #@69
    .line 607
    .restart local v2    # "node":I
    if-lt v2, v10, :cond_8

    #@6b
    .line 609
    and-int/lit8 v5, v2, 0x1

    #@6d
    if-eqz v5, :cond_6

    #@6f
    const/4 v0, 0x1

    #@70
    .line 610
    .local v0, "isFinal":Z
    :goto_0
    iget-object v5, p0, Landroid/icu/util/BytesTrie$Iterator;->entry_:Landroid/icu/util/BytesTrie$Entry;

    #@72
    iget-object v8, p0, Landroid/icu/util/BytesTrie$Iterator;->bytes_:[B

    #@74
    shr-int/lit8 v9, v2, 0x1

    #@76
    invoke-static {v8, v4, v9}, Landroid/icu/util/BytesTrie;->-wrap1([BII)I

    #@79
    move-result v8

    #@7a
    iput v8, v5, Landroid/icu/util/BytesTrie$Entry;->value:I

    #@7c
    .line 611
    if-nez v0, :cond_5

    #@7e
    iget v5, p0, Landroid/icu/util/BytesTrie$Iterator;->maxLength_:I

    #@80
    if-lez v5, :cond_7

    #@82
    iget-object v5, p0, Landroid/icu/util/BytesTrie$Iterator;->entry_:Landroid/icu/util/BytesTrie$Entry;

    #@84
    invoke-static {v5}, Landroid/icu/util/BytesTrie$Entry;->-get0(Landroid/icu/util/BytesTrie$Entry;)I

    #@87
    move-result v5

    #@88
    iget v8, p0, Landroid/icu/util/BytesTrie$Iterator;->maxLength_:I

    #@8a
    if-ne v5, v8, :cond_7

    #@8c
    .line 612
    :cond_5
    const/4 v5, -0x1

    #@8d
    iput v5, p0, Landroid/icu/util/BytesTrie$Iterator;->pos_:I

    #@8f
    .line 616
    :goto_1
    iget-object v5, p0, Landroid/icu/util/BytesTrie$Iterator;->entry_:Landroid/icu/util/BytesTrie$Entry;

    #@91
    return-object v5

    #@92
    .line 609
    .end local v0    # "isFinal":Z
    :cond_6
    const/4 v0, 0x0

    #@93
    .restart local v0    # "isFinal":Z
    goto :goto_0

    #@94
    .line 614
    :cond_7
    invoke-static {v4, v2}, Landroid/icu/util/BytesTrie;->-wrap3(II)I

    #@97
    move-result v5

    #@98
    iput v5, p0, Landroid/icu/util/BytesTrie$Iterator;->pos_:I

    #@9a
    goto :goto_1

    #@9b
    .line 618
    .end local v0    # "isFinal":Z
    :cond_8
    iget v5, p0, Landroid/icu/util/BytesTrie$Iterator;->maxLength_:I

    #@9d
    if-lez v5, :cond_9

    #@9f
    iget-object v5, p0, Landroid/icu/util/BytesTrie$Iterator;->entry_:Landroid/icu/util/BytesTrie$Entry;

    #@a1
    invoke-static {v5}, Landroid/icu/util/BytesTrie$Entry;->-get0(Landroid/icu/util/BytesTrie$Entry;)I

    #@a4
    move-result v5

    #@a5
    iget v8, p0, Landroid/icu/util/BytesTrie$Iterator;->maxLength_:I

    #@a7
    if-ne v5, v8, :cond_9

    #@a9
    .line 619
    invoke-direct {p0}, Landroid/icu/util/BytesTrie$Iterator;->truncateAndStop()Landroid/icu/util/BytesTrie$Entry;

    #@ac
    move-result-object v5

    #@ad
    return-object v5

    #@ae
    .line 621
    :cond_9
    const/16 v5, 0x10

    #@b0
    if-ge v2, v5, :cond_a

    #@b2
    .line 622
    if-nez v2, :cond_b

    #@b4
    .line 623
    iget-object v5, p0, Landroid/icu/util/BytesTrie$Iterator;->bytes_:[B

    #@b6
    add-int/lit8 v3, v4, 0x1

    #@b8
    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    aget-byte v5, v5, v4

    #@ba
    and-int/lit16 v2, v5, 0xff

    #@bc
    .line 625
    :goto_2
    add-int/lit8 v5, v2, 0x1

    #@be
    invoke-direct {p0, v3, v5}, Landroid/icu/util/BytesTrie$Iterator;->branchNext(II)I

    #@c1
    move-result v3

    #@c2
    .line 626
    if-gez v3, :cond_4

    #@c4
    .line 627
    iget-object v5, p0, Landroid/icu/util/BytesTrie$Iterator;->entry_:Landroid/icu/util/BytesTrie$Entry;

    #@c6
    return-object v5

    #@c7
    .line 631
    .end local v3    # "pos":I
    .restart local v4    # "pos":I
    :cond_a
    add-int/lit8 v5, v2, -0x10

    #@c9
    add-int/lit8 v1, v5, 0x1

    #@cb
    .line 632
    .restart local v1    # "length":I
    iget v5, p0, Landroid/icu/util/BytesTrie$Iterator;->maxLength_:I

    #@cd
    if-lez v5, :cond_3

    #@cf
    iget-object v5, p0, Landroid/icu/util/BytesTrie$Iterator;->entry_:Landroid/icu/util/BytesTrie$Entry;

    #@d1
    invoke-static {v5}, Landroid/icu/util/BytesTrie$Entry;->-get0(Landroid/icu/util/BytesTrie$Entry;)I

    #@d4
    move-result v5

    #@d5
    add-int/2addr v5, v1

    #@d6
    iget v8, p0, Landroid/icu/util/BytesTrie$Iterator;->maxLength_:I

    #@d8
    if-le v5, v8, :cond_3

    #@da
    .line 633
    iget-object v5, p0, Landroid/icu/util/BytesTrie$Iterator;->entry_:Landroid/icu/util/BytesTrie$Entry;

    #@dc
    iget-object v8, p0, Landroid/icu/util/BytesTrie$Iterator;->bytes_:[B

    #@de
    iget v9, p0, Landroid/icu/util/BytesTrie$Iterator;->maxLength_:I

    #@e0
    iget-object v10, p0, Landroid/icu/util/BytesTrie$Iterator;->entry_:Landroid/icu/util/BytesTrie$Entry;

    #@e2
    invoke-static {v10}, Landroid/icu/util/BytesTrie$Entry;->-get0(Landroid/icu/util/BytesTrie$Entry;)I

    #@e5
    move-result v10

    #@e6
    sub-int/2addr v9, v10

    #@e7
    invoke-static {v5, v8, v4, v9}, Landroid/icu/util/BytesTrie$Entry;->-wrap0(Landroid/icu/util/BytesTrie$Entry;[BII)V

    #@ea
    .line 634
    invoke-direct {p0}, Landroid/icu/util/BytesTrie$Iterator;->truncateAndStop()Landroid/icu/util/BytesTrie$Entry;

    #@ed
    move-result-object v5

    #@ee
    return-object v5

    #@ef
    .end local v1    # "length":I
    :cond_b
    move v3, v4

    #@f0
    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    goto :goto_2
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 578
    invoke-virtual {p0}, Landroid/icu/util/BytesTrie$Iterator;->next()Landroid/icu/util/BytesTrie$Entry;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public remove()V
    .locals 1

    #@0
    .prologue
    .line 648
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public reset()Landroid/icu/util/BytesTrie$Iterator;
    .locals 2

    #@0
    .prologue
    .line 548
    iget v1, p0, Landroid/icu/util/BytesTrie$Iterator;->initialPos_:I

    #@2
    iput v1, p0, Landroid/icu/util/BytesTrie$Iterator;->pos_:I

    #@4
    .line 549
    iget v1, p0, Landroid/icu/util/BytesTrie$Iterator;->initialRemainingMatchLength_:I

    #@6
    iput v1, p0, Landroid/icu/util/BytesTrie$Iterator;->remainingMatchLength_:I

    #@8
    .line 550
    iget v1, p0, Landroid/icu/util/BytesTrie$Iterator;->remainingMatchLength_:I

    #@a
    add-int/lit8 v0, v1, 0x1

    #@c
    .line 551
    .local v0, "length":I
    iget v1, p0, Landroid/icu/util/BytesTrie$Iterator;->maxLength_:I

    #@e
    if-lez v1, :cond_0

    #@10
    iget v1, p0, Landroid/icu/util/BytesTrie$Iterator;->maxLength_:I

    #@12
    if-le v0, v1, :cond_0

    #@14
    .line 552
    iget v0, p0, Landroid/icu/util/BytesTrie$Iterator;->maxLength_:I

    #@16
    .line 554
    :cond_0
    iget-object v1, p0, Landroid/icu/util/BytesTrie$Iterator;->entry_:Landroid/icu/util/BytesTrie$Entry;

    #@18
    invoke-static {v1, v0}, Landroid/icu/util/BytesTrie$Entry;->-wrap2(Landroid/icu/util/BytesTrie$Entry;I)V

    #@1b
    .line 555
    iget v1, p0, Landroid/icu/util/BytesTrie$Iterator;->pos_:I

    #@1d
    add-int/2addr v1, v0

    #@1e
    iput v1, p0, Landroid/icu/util/BytesTrie$Iterator;->pos_:I

    #@20
    .line 556
    iget v1, p0, Landroid/icu/util/BytesTrie$Iterator;->remainingMatchLength_:I

    #@22
    sub-int/2addr v1, v0

    #@23
    iput v1, p0, Landroid/icu/util/BytesTrie$Iterator;->remainingMatchLength_:I

    #@25
    .line 557
    iget-object v1, p0, Landroid/icu/util/BytesTrie$Iterator;->stack_:Ljava/util/ArrayList;

    #@27
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    #@2a
    .line 558
    return-object p0
.end method
