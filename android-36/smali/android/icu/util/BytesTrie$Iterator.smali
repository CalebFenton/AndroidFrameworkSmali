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
        "Ljava/util/Iterator<",
        "Landroid/icu/util/BytesTrie$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field private greylist-max-o bytes_:[B

.field private greylist-max-o entry_:Landroid/icu/util/BytesTrie$Entry;

.field private greylist-max-o initialPos_:I

.field private greylist-max-o initialRemainingMatchLength_:I

.field private greylist-max-o maxLength_:I

.field private greylist-max-o pos_:I

.field private greylist-max-o remainingMatchLength_:I

.field private greylist-max-o stack_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor greylist-max-o <init>([BIII)V
    .registers 9
    .param p1, "trieBytes"    # [B
    .param p2, "offset"    # I
    .param p3, "remainingMatchLength"    # I
    .param p4, "maxStringLength"    # I

    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 720
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/util/BytesTrie$Iterator;->stack_:Ljava/util/ArrayList;

    .line 545
    iput-object p1, p0, Landroid/icu/util/BytesTrie$Iterator;->bytes_:[B

    .line 546
    iput p2, p0, Landroid/icu/util/BytesTrie$Iterator;->initialPos_:I

    iput p2, p0, Landroid/icu/util/BytesTrie$Iterator;->pos_:I

    .line 547
    iput p3, p0, Landroid/icu/util/BytesTrie$Iterator;->initialRemainingMatchLength_:I

    iput p3, p0, Landroid/icu/util/BytesTrie$Iterator;->remainingMatchLength_:I

    .line 548
    iput p4, p0, Landroid/icu/util/BytesTrie$Iterator;->maxLength_:I

    .line 549
    new-instance v0, Landroid/icu/util/BytesTrie$Entry;

    iget v1, p0, Landroid/icu/util/BytesTrie$Iterator;->maxLength_:I

    if-eqz v1, :cond_1f

    iget v1, p0, Landroid/icu/util/BytesTrie$Iterator;->maxLength_:I

    goto :goto_21

    :cond_1f
    const/16 v1, 0x20

    :goto_21
    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/util/BytesTrie$Entry;-><init>(ILandroid/icu/util/BytesTrie-IA;)V

    iput-object v0, p0, Landroid/icu/util/BytesTrie$Iterator;->entry_:Landroid/icu/util/BytesTrie$Entry;

    .line 550
    iget v0, p0, Landroid/icu/util/BytesTrie$Iterator;->remainingMatchLength_:I

    .line 551
    .local v0, "length":I
    if-ltz v0, :cond_4a

    .line 553
    add-int/lit8 v0, v0, 0x1

    .line 554
    iget v1, p0, Landroid/icu/util/BytesTrie$Iterator;->maxLength_:I

    if-lez v1, :cond_37

    iget v1, p0, Landroid/icu/util/BytesTrie$Iterator;->maxLength_:I

    if-le v0, v1, :cond_37

    .line 555
    iget v0, p0, Landroid/icu/util/BytesTrie$Iterator;->maxLength_:I

    .line 557
    :cond_37
    iget-object v1, p0, Landroid/icu/util/BytesTrie$Iterator;->entry_:Landroid/icu/util/BytesTrie$Entry;

    iget-object v2, p0, Landroid/icu/util/BytesTrie$Iterator;->bytes_:[B

    iget v3, p0, Landroid/icu/util/BytesTrie$Iterator;->pos_:I

    invoke-static {v1, v2, v3, v0}, Landroid/icu/util/BytesTrie$Entry;->-$$Nest$mappend(Landroid/icu/util/BytesTrie$Entry;[BII)V

    .line 558
    iget v1, p0, Landroid/icu/util/BytesTrie$Iterator;->pos_:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/icu/util/BytesTrie$Iterator;->pos_:I

    .line 559
    iget v1, p0, Landroid/icu/util/BytesTrie$Iterator;->remainingMatchLength_:I

    sub-int/2addr v1, v0

    iput v1, p0, Landroid/icu/util/BytesTrie$Iterator;->remainingMatchLength_:I

    .line 561
    :cond_4a
    return-void
.end method

.method synthetic constructor blacklist <init>([BIIILandroid/icu/util/BytesTrie-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/util/BytesTrie$Iterator;-><init>([BIII)V

    return-void
.end method

.method private greylist-max-o branchNext(II)I
    .registers 13
    .param p1, "pos"    # I
    .param p2, "length"    # I

    .line 678
    nop

    :goto_1
    const/4 v0, 0x5

    const/16 v1, 0x20

    if-le p2, v0, :cond_33

    .line 679
    add-int/lit8 p1, p1, 0x1

    .line 681
    iget-object v0, p0, Landroid/icu/util/BytesTrie$Iterator;->stack_:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/icu/util/BytesTrie$Iterator;->bytes_:[B

    invoke-static {v2, p1}, Landroid/icu/util/BytesTrie;->-$$Nest$smskipDelta([BI)I

    move-result v2

    int-to-long v2, v2

    shl-long v1, v2, v1

    shr-int/lit8 v3, p2, 0x1

    sub-int v3, p2, v3

    shl-int/lit8 v3, v3, 0x10

    int-to-long v3, v3

    or-long/2addr v1, v3

    iget-object v3, p0, Landroid/icu/util/BytesTrie$Iterator;->entry_:Landroid/icu/util/BytesTrie$Entry;

    invoke-static {v3}, Landroid/icu/util/BytesTrie$Entry;->-$$Nest$fgetlength(Landroid/icu/util/BytesTrie$Entry;)I

    move-result v3

    int-to-long v3, v3

    or-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    shr-int/lit8 p2, p2, 0x1

    .line 684
    iget-object v0, p0, Landroid/icu/util/BytesTrie$Iterator;->bytes_:[B

    invoke-static {v0, p1}, Landroid/icu/util/BytesTrie;->jumpByDelta([BI)I

    move-result p1

    goto :goto_1

    .line 688
    :cond_33
    iget-object v0, p0, Landroid/icu/util/BytesTrie$Iterator;->bytes_:[B

    add-int/lit8 v2, p1, 0x1

    .end local p1    # "pos":I
    .local v2, "pos":I
    aget-byte p1, v0, p1

    .line 689
    .local p1, "trieByte":B
    iget-object v0, p0, Landroid/icu/util/BytesTrie$Iterator;->bytes_:[B

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "pos":I
    .local v3, "pos":I
    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 690
    .local v0, "node":I
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_47

    const/4 v2, 0x1

    goto :goto_48

    :cond_47
    const/4 v2, 0x0

    .line 691
    .local v2, "isFinal":Z
    :goto_48
    iget-object v4, p0, Landroid/icu/util/BytesTrie$Iterator;->bytes_:[B

    shr-int/lit8 v5, v0, 0x1

    invoke-static {v4, v3, v5}, Landroid/icu/util/BytesTrie;->-$$Nest$smreadValue([BII)I

    move-result v4

    .line 692
    .local v4, "value":I
    invoke-static {v3, v0}, Landroid/icu/util/BytesTrie;->-$$Nest$smskipValue(II)I

    move-result v3

    .line 693
    iget-object v5, p0, Landroid/icu/util/BytesTrie$Iterator;->stack_:Ljava/util/ArrayList;

    int-to-long v6, v3

    shl-long/2addr v6, v1

    add-int/lit8 v1, p2, -0x1

    shl-int/lit8 v1, v1, 0x10

    int-to-long v8, v1

    or-long/2addr v6, v8

    iget-object v1, p0, Landroid/icu/util/BytesTrie$Iterator;->entry_:Landroid/icu/util/BytesTrie$Entry;

    invoke-static {v1}, Landroid/icu/util/BytesTrie$Entry;->-$$Nest$fgetlength(Landroid/icu/util/BytesTrie$Entry;)I

    move-result v1

    int-to-long v8, v1

    or-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 694
    iget-object v1, p0, Landroid/icu/util/BytesTrie$Iterator;->entry_:Landroid/icu/util/BytesTrie$Entry;

    invoke-static {v1, p1}, Landroid/icu/util/BytesTrie$Entry;->-$$Nest$mappend(Landroid/icu/util/BytesTrie$Entry;B)V

    .line 695
    if-eqz v2, :cond_7c

    .line 696
    const/4 v1, -0x1

    iput v1, p0, Landroid/icu/util/BytesTrie$Iterator;->pos_:I

    .line 697
    iget-object v5, p0, Landroid/icu/util/BytesTrie$Iterator;->entry_:Landroid/icu/util/BytesTrie$Entry;

    iput v4, v5, Landroid/icu/util/BytesTrie$Entry;->value:I

    .line 698
    return v1

    .line 700
    :cond_7c
    add-int v1, v3, v4

    return v1
.end method

.method private greylist-max-o truncateAndStop()Landroid/icu/util/BytesTrie$Entry;
    .registers 3

    .line 672
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/util/BytesTrie$Iterator;->pos_:I

    .line 673
    iget-object v1, p0, Landroid/icu/util/BytesTrie$Iterator;->entry_:Landroid/icu/util/BytesTrie$Entry;

    iput v0, v1, Landroid/icu/util/BytesTrie$Entry;->value:I

    .line 674
    iget-object v0, p0, Landroid/icu/util/BytesTrie$Iterator;->entry_:Landroid/icu/util/BytesTrie$Entry;

    return-object v0
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 2

    .line 585
    iget v0, p0, Landroid/icu/util/BytesTrie$Iterator;->pos_:I

    if-gez v0, :cond_f

    iget-object v0, p0, Landroid/icu/util/BytesTrie$Iterator;->stack_:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public blacklist next()Landroid/icu/util/BytesTrie$Entry;
    .registers 11

    .line 599
    iget v0, p0, Landroid/icu/util/BytesTrie$Iterator;->pos_:I

    .line 600
    .local v0, "pos":I
    const/16 v1, 0x20

    const/16 v2, 0x10

    const/4 v3, 0x1

    if-gez v0, :cond_50

    .line 601
    iget-object v4, p0, Landroid/icu/util/BytesTrie$Iterator;->stack_:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4a

    .line 606
    iget-object v4, p0, Landroid/icu/util/BytesTrie$Iterator;->stack_:Ljava/util/ArrayList;

    iget-object v5, p0, Landroid/icu/util/BytesTrie$Iterator;->stack_:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 607
    .local v4, "top":J
    long-to-int v6, v4

    .line 608
    .local v6, "length":I
    shr-long v7, v4, v1

    long-to-int v0, v7

    .line 609
    iget-object v7, p0, Landroid/icu/util/BytesTrie$Iterator;->entry_:Landroid/icu/util/BytesTrie$Entry;

    const v8, 0xffff

    and-int/2addr v8, v6

    invoke-static {v7, v8}, Landroid/icu/util/BytesTrie$Entry;->-$$Nest$mtruncateString(Landroid/icu/util/BytesTrie$Entry;I)V

    .line 610
    ushr-int/2addr v6, v2

    .line 611
    if-le v6, v3, :cond_3d

    .line 612
    invoke-direct {p0, v0, v6}, Landroid/icu/util/BytesTrie$Iterator;->branchNext(II)I

    move-result v0

    .line 613
    if-gez v0, :cond_50

    .line 614
    iget-object v1, p0, Landroid/icu/util/BytesTrie$Iterator;->entry_:Landroid/icu/util/BytesTrie$Entry;

    return-object v1

    .line 617
    :cond_3d
    iget-object v7, p0, Landroid/icu/util/BytesTrie$Iterator;->entry_:Landroid/icu/util/BytesTrie$Entry;

    iget-object v8, p0, Landroid/icu/util/BytesTrie$Iterator;->bytes_:[B

    add-int/lit8 v9, v0, 0x1

    .end local v0    # "pos":I
    .local v9, "pos":I
    aget-byte v0, v8, v0

    invoke-static {v7, v0}, Landroid/icu/util/BytesTrie$Entry;->-$$Nest$mappend(Landroid/icu/util/BytesTrie$Entry;B)V

    move v0, v9

    goto :goto_50

    .line 602
    .end local v4    # "top":J
    .end local v6    # "length":I
    .end local v9    # "pos":I
    .restart local v0    # "pos":I
    :cond_4a
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 620
    :cond_50
    :goto_50
    iget v4, p0, Landroid/icu/util/BytesTrie$Iterator;->remainingMatchLength_:I

    if-ltz v4, :cond_59

    .line 623
    invoke-direct {p0}, Landroid/icu/util/BytesTrie$Iterator;->truncateAndStop()Landroid/icu/util/BytesTrie$Entry;

    move-result-object v1

    return-object v1

    .line 626
    :cond_59
    :goto_59
    iget-object v4, p0, Landroid/icu/util/BytesTrie$Iterator;->bytes_:[B

    add-int/lit8 v5, v0, 0x1

    .end local v0    # "pos":I
    .local v5, "pos":I
    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    .line 627
    .local v0, "node":I
    if-lt v0, v1, :cond_93

    .line 629
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_68

    goto :goto_69

    :cond_68
    const/4 v3, 0x0

    .line 630
    .local v3, "isFinal":Z
    :goto_69
    iget-object v1, p0, Landroid/icu/util/BytesTrie$Iterator;->entry_:Landroid/icu/util/BytesTrie$Entry;

    iget-object v2, p0, Landroid/icu/util/BytesTrie$Iterator;->bytes_:[B

    shr-int/lit8 v4, v0, 0x1

    invoke-static {v2, v5, v4}, Landroid/icu/util/BytesTrie;->-$$Nest$smreadValue([BII)I

    move-result v2

    iput v2, v1, Landroid/icu/util/BytesTrie$Entry;->value:I

    .line 631
    if-nez v3, :cond_8d

    iget v1, p0, Landroid/icu/util/BytesTrie$Iterator;->maxLength_:I

    if-lez v1, :cond_86

    iget-object v1, p0, Landroid/icu/util/BytesTrie$Iterator;->entry_:Landroid/icu/util/BytesTrie$Entry;

    invoke-static {v1}, Landroid/icu/util/BytesTrie$Entry;->-$$Nest$fgetlength(Landroid/icu/util/BytesTrie$Entry;)I

    move-result v1

    iget v2, p0, Landroid/icu/util/BytesTrie$Iterator;->maxLength_:I

    if-ne v1, v2, :cond_86

    goto :goto_8d

    .line 634
    :cond_86
    invoke-static {v5, v0}, Landroid/icu/util/BytesTrie;->-$$Nest$smskipValue(II)I

    move-result v1

    iput v1, p0, Landroid/icu/util/BytesTrie$Iterator;->pos_:I

    goto :goto_90

    .line 632
    :cond_8d
    :goto_8d
    const/4 v1, -0x1

    iput v1, p0, Landroid/icu/util/BytesTrie$Iterator;->pos_:I

    .line 636
    :goto_90
    iget-object v1, p0, Landroid/icu/util/BytesTrie$Iterator;->entry_:Landroid/icu/util/BytesTrie$Entry;

    return-object v1

    .line 638
    .end local v3    # "isFinal":Z
    :cond_93
    iget v4, p0, Landroid/icu/util/BytesTrie$Iterator;->maxLength_:I

    if-lez v4, :cond_a6

    iget-object v4, p0, Landroid/icu/util/BytesTrie$Iterator;->entry_:Landroid/icu/util/BytesTrie$Entry;

    invoke-static {v4}, Landroid/icu/util/BytesTrie$Entry;->-$$Nest$fgetlength(Landroid/icu/util/BytesTrie$Entry;)I

    move-result v4

    iget v6, p0, Landroid/icu/util/BytesTrie$Iterator;->maxLength_:I

    if-ne v4, v6, :cond_a6

    .line 639
    invoke-direct {p0}, Landroid/icu/util/BytesTrie$Iterator;->truncateAndStop()Landroid/icu/util/BytesTrie$Entry;

    move-result-object v1

    return-object v1

    .line 641
    :cond_a6
    if-ge v0, v2, :cond_c0

    .line 642
    if-nez v0, :cond_b3

    .line 643
    iget-object v4, p0, Landroid/icu/util/BytesTrie$Iterator;->bytes_:[B

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "pos":I
    .local v6, "pos":I
    aget-byte v4, v4, v5

    and-int/lit16 v0, v4, 0xff

    move v5, v6

    .line 645
    .end local v6    # "pos":I
    .restart local v5    # "pos":I
    :cond_b3
    add-int/lit8 v4, v0, 0x1

    invoke-direct {p0, v5, v4}, Landroid/icu/util/BytesTrie$Iterator;->branchNext(II)I

    move-result v4

    .line 646
    .end local v5    # "pos":I
    .local v4, "pos":I
    if-gez v4, :cond_be

    .line 647
    iget-object v1, p0, Landroid/icu/util/BytesTrie$Iterator;->entry_:Landroid/icu/util/BytesTrie$Entry;

    return-object v1

    .line 646
    :cond_be
    move v0, v4

    goto :goto_f0

    .line 651
    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    :cond_c0
    add-int/lit8 v4, v0, -0x10

    add-int/2addr v4, v3

    .line 652
    .local v4, "length":I
    iget v6, p0, Landroid/icu/util/BytesTrie$Iterator;->maxLength_:I

    if-lez v6, :cond_e7

    iget-object v6, p0, Landroid/icu/util/BytesTrie$Iterator;->entry_:Landroid/icu/util/BytesTrie$Entry;

    invoke-static {v6}, Landroid/icu/util/BytesTrie$Entry;->-$$Nest$fgetlength(Landroid/icu/util/BytesTrie$Entry;)I

    move-result v6

    add-int/2addr v6, v4

    iget v7, p0, Landroid/icu/util/BytesTrie$Iterator;->maxLength_:I

    if-le v6, v7, :cond_e7

    .line 653
    iget-object v1, p0, Landroid/icu/util/BytesTrie$Iterator;->entry_:Landroid/icu/util/BytesTrie$Entry;

    iget-object v2, p0, Landroid/icu/util/BytesTrie$Iterator;->bytes_:[B

    iget v3, p0, Landroid/icu/util/BytesTrie$Iterator;->maxLength_:I

    iget-object v6, p0, Landroid/icu/util/BytesTrie$Iterator;->entry_:Landroid/icu/util/BytesTrie$Entry;

    invoke-static {v6}, Landroid/icu/util/BytesTrie$Entry;->-$$Nest$fgetlength(Landroid/icu/util/BytesTrie$Entry;)I

    move-result v6

    sub-int/2addr v3, v6

    invoke-static {v1, v2, v5, v3}, Landroid/icu/util/BytesTrie$Entry;->-$$Nest$mappend(Landroid/icu/util/BytesTrie$Entry;[BII)V

    .line 654
    invoke-direct {p0}, Landroid/icu/util/BytesTrie$Iterator;->truncateAndStop()Landroid/icu/util/BytesTrie$Entry;

    move-result-object v1

    return-object v1

    .line 656
    :cond_e7
    iget-object v6, p0, Landroid/icu/util/BytesTrie$Iterator;->entry_:Landroid/icu/util/BytesTrie$Entry;

    iget-object v7, p0, Landroid/icu/util/BytesTrie$Iterator;->bytes_:[B

    invoke-static {v6, v7, v5, v4}, Landroid/icu/util/BytesTrie$Entry;->-$$Nest$mappend(Landroid/icu/util/BytesTrie$Entry;[BII)V

    .line 657
    add-int/2addr v5, v4

    move v0, v5

    .line 659
    .end local v4    # "length":I
    .end local v5    # "pos":I
    .local v0, "pos":I
    :goto_f0
    goto/16 :goto_59
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 543
    invoke-virtual {p0}, Landroid/icu/util/BytesTrie$Iterator;->next()Landroid/icu/util/BytesTrie$Entry;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove()V
    .registers 2

    .line 668
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public greylist-max-o reset()Landroid/icu/util/BytesTrie$Iterator;
    .registers 3

    .line 568
    iget v0, p0, Landroid/icu/util/BytesTrie$Iterator;->initialPos_:I

    iput v0, p0, Landroid/icu/util/BytesTrie$Iterator;->pos_:I

    .line 569
    iget v0, p0, Landroid/icu/util/BytesTrie$Iterator;->initialRemainingMatchLength_:I

    iput v0, p0, Landroid/icu/util/BytesTrie$Iterator;->remainingMatchLength_:I

    .line 570
    iget v0, p0, Landroid/icu/util/BytesTrie$Iterator;->remainingMatchLength_:I

    add-int/lit8 v0, v0, 0x1

    .line 571
    .local v0, "length":I
    iget v1, p0, Landroid/icu/util/BytesTrie$Iterator;->maxLength_:I

    if-lez v1, :cond_16

    iget v1, p0, Landroid/icu/util/BytesTrie$Iterator;->maxLength_:I

    if-le v0, v1, :cond_16

    .line 572
    iget v0, p0, Landroid/icu/util/BytesTrie$Iterator;->maxLength_:I

    .line 574
    :cond_16
    iget-object v1, p0, Landroid/icu/util/BytesTrie$Iterator;->entry_:Landroid/icu/util/BytesTrie$Entry;

    invoke-static {v1, v0}, Landroid/icu/util/BytesTrie$Entry;->-$$Nest$mtruncateString(Landroid/icu/util/BytesTrie$Entry;I)V

    .line 575
    iget v1, p0, Landroid/icu/util/BytesTrie$Iterator;->pos_:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/icu/util/BytesTrie$Iterator;->pos_:I

    .line 576
    iget v1, p0, Landroid/icu/util/BytesTrie$Iterator;->remainingMatchLength_:I

    sub-int/2addr v1, v0

    iput v1, p0, Landroid/icu/util/BytesTrie$Iterator;->remainingMatchLength_:I

    .line 577
    iget-object v1, p0, Landroid/icu/util/BytesTrie$Iterator;->stack_:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 578
    return-object p0
.end method
