.class public final Landroid/icu/util/CharsTrie$Iterator;
.super Ljava/lang/Object;
.source "CharsTrie.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/CharsTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Iterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Landroid/icu/util/CharsTrie$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field private greylist-max-o chars_:Ljava/lang/CharSequence;

.field private greylist-max-o entry_:Landroid/icu/util/CharsTrie$Entry;

.field private greylist-max-o initialPos_:I

.field private greylist-max-o initialRemainingMatchLength_:I

.field private greylist-max-o maxLength_:I

.field private greylist-max-o pos_:I

.field private greylist-max-o remainingMatchLength_:I

.field private greylist-max-o skipValue_:Z

.field private greylist-max-o stack_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o str_:Ljava/lang/StringBuilder;


# direct methods
.method private constructor greylist-max-o <init>(Ljava/lang/CharSequence;III)V
    .registers 10
    .param p1, "trieChars"    # Ljava/lang/CharSequence;
    .param p2, "offset"    # I
    .param p3, "remainingMatchLength"    # I
    .param p4, "maxStringLength"    # I

    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    .line 657
    new-instance v0, Landroid/icu/util/CharsTrie$Entry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/util/CharsTrie$Entry;-><init>(Landroid/icu/util/CharsTrie-IA;)V

    iput-object v0, p0, Landroid/icu/util/CharsTrie$Iterator;->entry_:Landroid/icu/util/CharsTrie$Entry;

    .line 666
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/util/CharsTrie$Iterator;->stack_:Ljava/util/ArrayList;

    .line 469
    iput-object p1, p0, Landroid/icu/util/CharsTrie$Iterator;->chars_:Ljava/lang/CharSequence;

    .line 470
    iput p2, p0, Landroid/icu/util/CharsTrie$Iterator;->initialPos_:I

    iput p2, p0, Landroid/icu/util/CharsTrie$Iterator;->pos_:I

    .line 471
    iput p3, p0, Landroid/icu/util/CharsTrie$Iterator;->initialRemainingMatchLength_:I

    iput p3, p0, Landroid/icu/util/CharsTrie$Iterator;->remainingMatchLength_:I

    .line 472
    iput p4, p0, Landroid/icu/util/CharsTrie$Iterator;->maxLength_:I

    .line 473
    iget v0, p0, Landroid/icu/util/CharsTrie$Iterator;->remainingMatchLength_:I

    .line 474
    .local v0, "length":I
    if-ltz v0, :cond_4b

    .line 476
    add-int/lit8 v0, v0, 0x1

    .line 477
    iget v1, p0, Landroid/icu/util/CharsTrie$Iterator;->maxLength_:I

    if-lez v1, :cond_35

    iget v1, p0, Landroid/icu/util/CharsTrie$Iterator;->maxLength_:I

    if-le v0, v1, :cond_35

    .line 478
    iget v0, p0, Landroid/icu/util/CharsTrie$Iterator;->maxLength_:I

    .line 480
    :cond_35
    iget-object v1, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/icu/util/CharsTrie$Iterator;->chars_:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/icu/util/CharsTrie$Iterator;->pos_:I

    iget v4, p0, Landroid/icu/util/CharsTrie$Iterator;->pos_:I

    add-int/2addr v4, v0

    invoke-virtual {v1, v2, v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 481
    iget v1, p0, Landroid/icu/util/CharsTrie$Iterator;->pos_:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/icu/util/CharsTrie$Iterator;->pos_:I

    .line 482
    iget v1, p0, Landroid/icu/util/CharsTrie$Iterator;->remainingMatchLength_:I

    sub-int/2addr v1, v0

    iput v1, p0, Landroid/icu/util/CharsTrie$Iterator;->remainingMatchLength_:I

    .line 484
    :cond_4b
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/CharSequence;IIILandroid/icu/util/CharsTrie-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/util/CharsTrie$Iterator;-><init>(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method private greylist-max-o branchNext(II)I
    .registers 13
    .param p1, "pos"    # I
    .param p2, "length"    # I

    .line 621
    nop

    :goto_1
    const/4 v0, 0x5

    const/16 v1, 0x20

    if-le p2, v0, :cond_33

    .line 622
    add-int/lit8 p1, p1, 0x1

    .line 624
    iget-object v0, p0, Landroid/icu/util/CharsTrie$Iterator;->stack_:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/icu/util/CharsTrie$Iterator;->chars_:Ljava/lang/CharSequence;

    invoke-static {v2, p1}, Landroid/icu/util/CharsTrie;->-$$Nest$smskipDelta(Ljava/lang/CharSequence;I)I

    move-result v2

    int-to-long v2, v2

    shl-long v1, v2, v1

    shr-int/lit8 v3, p2, 0x1

    sub-int v3, p2, v3

    shl-int/lit8 v3, v3, 0x10

    int-to-long v3, v3

    or-long/2addr v1, v3

    iget-object v3, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    int-to-long v3, v3

    or-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    shr-int/lit8 p2, p2, 0x1

    .line 627
    iget-object v0, p0, Landroid/icu/util/CharsTrie$Iterator;->chars_:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/icu/util/CharsTrie;->-$$Nest$smjumpByDelta(Ljava/lang/CharSequence;I)I

    move-result p1

    goto :goto_1

    .line 631
    :cond_33
    iget-object v0, p0, Landroid/icu/util/CharsTrie$Iterator;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 v2, p1, 0x1

    .end local p1    # "pos":I
    .local v2, "pos":I
    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    .line 632
    .local p1, "trieUnit":C
    iget-object v0, p0, Landroid/icu/util/CharsTrie$Iterator;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "pos":I
    .local v3, "pos":I
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 633
    .local v0, "node":I
    const v2, 0x8000

    and-int/2addr v2, v0

    if-eqz v2, :cond_4b

    const/4 v2, 0x1

    goto :goto_4c

    :cond_4b
    const/4 v2, 0x0

    .line 634
    .local v2, "isFinal":Z
    :goto_4c
    iget-object v4, p0, Landroid/icu/util/CharsTrie$Iterator;->chars_:Ljava/lang/CharSequence;

    and-int/lit16 v5, v0, 0x7fff

    move v0, v5

    invoke-static {v4, v3, v5}, Landroid/icu/util/CharsTrie;->-$$Nest$smreadValue(Ljava/lang/CharSequence;II)I

    move-result v4

    .line 635
    .local v4, "value":I
    invoke-static {v3, v0}, Landroid/icu/util/CharsTrie;->-$$Nest$smskipValue(II)I

    move-result v3

    .line 636
    iget-object v5, p0, Landroid/icu/util/CharsTrie$Iterator;->stack_:Ljava/util/ArrayList;

    int-to-long v6, v3

    shl-long/2addr v6, v1

    add-int/lit8 v1, p2, -0x1

    shl-int/lit8 v1, v1, 0x10

    int-to-long v8, v1

    or-long/2addr v6, v8

    iget-object v1, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    int-to-long v8, v1

    or-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    iget-object v1, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 638
    if-eqz v2, :cond_87

    .line 639
    const/4 v1, -0x1

    iput v1, p0, Landroid/icu/util/CharsTrie$Iterator;->pos_:I

    .line 640
    iget-object v5, p0, Landroid/icu/util/CharsTrie$Iterator;->entry_:Landroid/icu/util/CharsTrie$Entry;

    iget-object v6, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    iput-object v6, v5, Landroid/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    .line 641
    iget-object v5, p0, Landroid/icu/util/CharsTrie$Iterator;->entry_:Landroid/icu/util/CharsTrie$Entry;

    iput v4, v5, Landroid/icu/util/CharsTrie$Entry;->value:I

    .line 642
    return v1

    .line 644
    :cond_87
    add-int v1, v3, v4

    return v1
.end method

.method private greylist-max-o truncateAndStop()Landroid/icu/util/CharsTrie$Entry;
    .registers 4

    .line 612
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/util/CharsTrie$Iterator;->pos_:I

    .line 615
    iget-object v1, p0, Landroid/icu/util/CharsTrie$Iterator;->entry_:Landroid/icu/util/CharsTrie$Entry;

    iget-object v2, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    iput-object v2, v1, Landroid/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    .line 616
    iget-object v1, p0, Landroid/icu/util/CharsTrie$Iterator;->entry_:Landroid/icu/util/CharsTrie$Entry;

    iput v0, v1, Landroid/icu/util/CharsTrie$Entry;->value:I

    .line 617
    iget-object v0, p0, Landroid/icu/util/CharsTrie$Iterator;->entry_:Landroid/icu/util/CharsTrie$Entry;

    return-object v0
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 2

    .line 509
    iget v0, p0, Landroid/icu/util/CharsTrie$Iterator;->pos_:I

    if-gez v0, :cond_f

    iget-object v0, p0, Landroid/icu/util/CharsTrie$Iterator;->stack_:Ljava/util/ArrayList;

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

.method public blacklist next()Landroid/icu/util/CharsTrie$Entry;
    .registers 9

    .line 523
    iget v0, p0, Landroid/icu/util/CharsTrie$Iterator;->pos_:I

    .line 524
    .local v0, "pos":I
    const/4 v1, 0x1

    if-gez v0, :cond_51

    .line 525
    iget-object v2, p0, Landroid/icu/util/CharsTrie$Iterator;->stack_:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4b

    .line 530
    iget-object v2, p0, Landroid/icu/util/CharsTrie$Iterator;->stack_:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/icu/util/CharsTrie$Iterator;->stack_:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 531
    .local v2, "top":J
    long-to-int v4, v2

    .line 532
    .local v4, "length":I
    const/16 v5, 0x20

    shr-long v5, v2, v5

    long-to-int v0, v5

    .line 533
    iget-object v5, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    const v6, 0xffff

    and-int/2addr v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 534
    ushr-int/lit8 v4, v4, 0x10

    .line 535
    if-le v4, v1, :cond_3c

    .line 536
    invoke-direct {p0, v0, v4}, Landroid/icu/util/CharsTrie$Iterator;->branchNext(II)I

    move-result v0

    .line 537
    if-gez v0, :cond_51

    .line 538
    iget-object v1, p0, Landroid/icu/util/CharsTrie$Iterator;->entry_:Landroid/icu/util/CharsTrie$Entry;

    return-object v1

    .line 541
    :cond_3c
    iget-object v5, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroid/icu/util/CharsTrie$Iterator;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 v7, v0, 0x1

    .end local v0    # "pos":I
    .local v7, "pos":I
    invoke-interface {v6, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v7

    goto :goto_51

    .line 526
    .end local v2    # "top":J
    .end local v4    # "length":I
    .end local v7    # "pos":I
    .restart local v0    # "pos":I
    :cond_4b
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 544
    :cond_51
    :goto_51
    iget v2, p0, Landroid/icu/util/CharsTrie$Iterator;->remainingMatchLength_:I

    if-ltz v2, :cond_5a

    .line 547
    invoke-direct {p0}, Landroid/icu/util/CharsTrie$Iterator;->truncateAndStop()Landroid/icu/util/CharsTrie$Entry;

    move-result-object v1

    return-object v1

    .line 550
    :cond_5a
    :goto_5a
    iget-object v2, p0, Landroid/icu/util/CharsTrie$Iterator;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 v3, v0, 0x1

    .end local v0    # "pos":I
    .local v3, "pos":I
    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 551
    .local v0, "node":I
    const/16 v2, 0x40

    if-lt v0, v2, :cond_b8

    .line 552
    iget-boolean v2, p0, Landroid/icu/util/CharsTrie$Iterator;->skipValue_:Z

    const/4 v4, 0x0

    if-eqz v2, :cond_74

    .line 553
    invoke-static {v3, v0}, Landroid/icu/util/CharsTrie;->-$$Nest$smskipNodeValue(II)I

    move-result v3

    .line 554
    and-int/lit8 v0, v0, 0x3f

    .line 555
    iput-boolean v4, p0, Landroid/icu/util/CharsTrie$Iterator;->skipValue_:Z

    goto :goto_b8

    .line 558
    :cond_74
    const v2, 0x8000

    and-int/2addr v2, v0

    if-eqz v2, :cond_7b

    move v4, v1

    .line 559
    .local v4, "isFinal":Z
    :cond_7b
    if-eqz v4, :cond_8a

    .line 560
    iget-object v2, p0, Landroid/icu/util/CharsTrie$Iterator;->entry_:Landroid/icu/util/CharsTrie$Entry;

    iget-object v5, p0, Landroid/icu/util/CharsTrie$Iterator;->chars_:Ljava/lang/CharSequence;

    and-int/lit16 v6, v0, 0x7fff

    invoke-static {v5, v3, v6}, Landroid/icu/util/CharsTrie;->-$$Nest$smreadValue(Ljava/lang/CharSequence;II)I

    move-result v5

    iput v5, v2, Landroid/icu/util/CharsTrie$Entry;->value:I

    goto :goto_94

    .line 562
    :cond_8a
    iget-object v2, p0, Landroid/icu/util/CharsTrie$Iterator;->entry_:Landroid/icu/util/CharsTrie$Entry;

    iget-object v5, p0, Landroid/icu/util/CharsTrie$Iterator;->chars_:Ljava/lang/CharSequence;

    invoke-static {v5, v3, v0}, Landroid/icu/util/CharsTrie;->-$$Nest$smreadNodeValue(Ljava/lang/CharSequence;II)I

    move-result v5

    iput v5, v2, Landroid/icu/util/CharsTrie$Entry;->value:I

    .line 564
    :goto_94
    if-nez v4, :cond_ac

    iget v2, p0, Landroid/icu/util/CharsTrie$Iterator;->maxLength_:I

    if-lez v2, :cond_a5

    iget-object v2, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    iget v5, p0, Landroid/icu/util/CharsTrie$Iterator;->maxLength_:I

    if-ne v2, v5, :cond_a5

    goto :goto_ac

    .line 571
    :cond_a5
    add-int/lit8 v2, v3, -0x1

    iput v2, p0, Landroid/icu/util/CharsTrie$Iterator;->pos_:I

    .line 572
    iput-boolean v1, p0, Landroid/icu/util/CharsTrie$Iterator;->skipValue_:Z

    goto :goto_af

    .line 565
    :cond_ac
    :goto_ac
    const/4 v1, -0x1

    iput v1, p0, Landroid/icu/util/CharsTrie$Iterator;->pos_:I

    .line 574
    :goto_af
    iget-object v1, p0, Landroid/icu/util/CharsTrie$Iterator;->entry_:Landroid/icu/util/CharsTrie$Entry;

    iget-object v2, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    iput-object v2, v1, Landroid/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    .line 575
    iget-object v1, p0, Landroid/icu/util/CharsTrie$Iterator;->entry_:Landroid/icu/util/CharsTrie$Entry;

    return-object v1

    .line 578
    .end local v4    # "isFinal":Z
    :cond_b8
    :goto_b8
    iget v2, p0, Landroid/icu/util/CharsTrie$Iterator;->maxLength_:I

    if-lez v2, :cond_cb

    iget-object v2, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    iget v4, p0, Landroid/icu/util/CharsTrie$Iterator;->maxLength_:I

    if-ne v2, v4, :cond_cb

    .line 579
    invoke-direct {p0}, Landroid/icu/util/CharsTrie$Iterator;->truncateAndStop()Landroid/icu/util/CharsTrie$Entry;

    move-result-object v1

    return-object v1

    .line 581
    :cond_cb
    const/16 v2, 0x30

    if-ge v0, v2, :cond_e7

    .line 582
    if-nez v0, :cond_da

    .line 583
    iget-object v2, p0, Landroid/icu/util/CharsTrie$Iterator;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "pos":I
    .local v4, "pos":I
    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    move v3, v4

    .line 585
    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    :cond_da
    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, v3, v2}, Landroid/icu/util/CharsTrie$Iterator;->branchNext(II)I

    move-result v2

    .line 586
    .end local v3    # "pos":I
    .local v2, "pos":I
    if-gez v2, :cond_e5

    .line 587
    iget-object v1, p0, Landroid/icu/util/CharsTrie$Iterator;->entry_:Landroid/icu/util/CharsTrie$Entry;

    return-object v1

    .line 586
    :cond_e5
    move v0, v2

    goto :goto_11a

    .line 591
    .end local v2    # "pos":I
    .restart local v3    # "pos":I
    :cond_e7
    add-int/lit8 v2, v0, -0x30

    add-int/2addr v2, v1

    .line 592
    .local v2, "length":I
    iget v4, p0, Landroid/icu/util/CharsTrie$Iterator;->maxLength_:I

    if-lez v4, :cond_10f

    iget-object v4, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/2addr v4, v2

    iget v5, p0, Landroid/icu/util/CharsTrie$Iterator;->maxLength_:I

    if-le v4, v5, :cond_10f

    .line 593
    iget-object v1, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/icu/util/CharsTrie$Iterator;->chars_:Ljava/lang/CharSequence;

    iget v5, p0, Landroid/icu/util/CharsTrie$Iterator;->maxLength_:I

    add-int/2addr v5, v3

    iget-object v6, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v1, v4, v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 594
    invoke-direct {p0}, Landroid/icu/util/CharsTrie$Iterator;->truncateAndStop()Landroid/icu/util/CharsTrie$Entry;

    move-result-object v1

    return-object v1

    .line 596
    :cond_10f
    iget-object v4, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/icu/util/CharsTrie$Iterator;->chars_:Ljava/lang/CharSequence;

    add-int v6, v3, v2

    invoke-virtual {v4, v5, v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 597
    add-int/2addr v3, v2

    move v0, v3

    .line 599
    .end local v2    # "length":I
    .end local v3    # "pos":I
    .local v0, "pos":I
    :goto_11a
    goto/16 :goto_5a
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 467
    invoke-virtual {p0}, Landroid/icu/util/CharsTrie$Iterator;->next()Landroid/icu/util/CharsTrie$Entry;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove()V
    .registers 2

    .line 608
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public greylist-max-o reset()Landroid/icu/util/CharsTrie$Iterator;
    .registers 3

    .line 491
    iget v0, p0, Landroid/icu/util/CharsTrie$Iterator;->initialPos_:I

    iput v0, p0, Landroid/icu/util/CharsTrie$Iterator;->pos_:I

    .line 492
    iget v0, p0, Landroid/icu/util/CharsTrie$Iterator;->initialRemainingMatchLength_:I

    iput v0, p0, Landroid/icu/util/CharsTrie$Iterator;->remainingMatchLength_:I

    .line 493
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/util/CharsTrie$Iterator;->skipValue_:Z

    .line 494
    iget v0, p0, Landroid/icu/util/CharsTrie$Iterator;->remainingMatchLength_:I

    add-int/lit8 v0, v0, 0x1

    .line 495
    .local v0, "length":I
    iget v1, p0, Landroid/icu/util/CharsTrie$Iterator;->maxLength_:I

    if-lez v1, :cond_19

    iget v1, p0, Landroid/icu/util/CharsTrie$Iterator;->maxLength_:I

    if-le v0, v1, :cond_19

    .line 496
    iget v0, p0, Landroid/icu/util/CharsTrie$Iterator;->maxLength_:I

    .line 498
    :cond_19
    iget-object v1, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 499
    iget v1, p0, Landroid/icu/util/CharsTrie$Iterator;->pos_:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/icu/util/CharsTrie$Iterator;->pos_:I

    .line 500
    iget v1, p0, Landroid/icu/util/CharsTrie$Iterator;->remainingMatchLength_:I

    sub-int/2addr v1, v0

    iput v1, p0, Landroid/icu/util/CharsTrie$Iterator;->remainingMatchLength_:I

    .line 501
    iget-object v1, p0, Landroid/icu/util/CharsTrie$Iterator;->stack_:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 502
    return-object p0
.end method
