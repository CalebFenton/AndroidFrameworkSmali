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
        "Ljava/util/Iterator",
        "<",
        "Landroid/icu/util/CharsTrie$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field private chars_:Ljava/lang/CharSequence;

.field private entry_:Landroid/icu/util/CharsTrie$Entry;

.field private initialPos_:I

.field private initialRemainingMatchLength_:I

.field private maxLength_:I

.field private pos_:I

.field private remainingMatchLength_:I

.field private skipValue_:Z

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

.field private str_:Ljava/lang/StringBuilder;


# direct methods
.method private constructor <init>(Ljava/lang/CharSequence;III)V
    .locals 5
    .param p1, "trieChars"    # Ljava/lang/CharSequence;
    .param p2, "offset"    # I
    .param p3, "remainingMatchLength"    # I
    .param p4, "maxStringLength"    # I

    #@0
    .prologue
    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 601
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    iput-object v1, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    #@a
    .line 603
    new-instance v1, Landroid/icu/util/CharsTrie$Entry;

    #@c
    const/4 v2, 0x0

    #@d
    invoke-direct {v1, v2}, Landroid/icu/util/CharsTrie$Entry;-><init>(Landroid/icu/util/CharsTrie$Entry;)V

    #@10
    iput-object v1, p0, Landroid/icu/util/CharsTrie$Iterator;->entry_:Landroid/icu/util/CharsTrie$Entry;

    #@12
    .line 612
    new-instance v1, Ljava/util/ArrayList;

    #@14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@17
    iput-object v1, p0, Landroid/icu/util/CharsTrie$Iterator;->stack_:Ljava/util/ArrayList;

    #@19
    .line 418
    iput-object p1, p0, Landroid/icu/util/CharsTrie$Iterator;->chars_:Ljava/lang/CharSequence;

    #@1b
    .line 419
    iput p2, p0, Landroid/icu/util/CharsTrie$Iterator;->initialPos_:I

    #@1d
    iput p2, p0, Landroid/icu/util/CharsTrie$Iterator;->pos_:I

    #@1f
    .line 420
    iput p3, p0, Landroid/icu/util/CharsTrie$Iterator;->initialRemainingMatchLength_:I

    #@21
    iput p3, p0, Landroid/icu/util/CharsTrie$Iterator;->remainingMatchLength_:I

    #@23
    .line 421
    iput p4, p0, Landroid/icu/util/CharsTrie$Iterator;->maxLength_:I

    #@25
    .line 422
    iget v0, p0, Landroid/icu/util/CharsTrie$Iterator;->remainingMatchLength_:I

    #@27
    .line 423
    .local v0, "length":I
    if-ltz v0, :cond_1

    #@29
    .line 425
    add-int/lit8 v0, v0, 0x1

    #@2b
    .line 426
    iget v1, p0, Landroid/icu/util/CharsTrie$Iterator;->maxLength_:I

    #@2d
    if-lez v1, :cond_0

    #@2f
    iget v1, p0, Landroid/icu/util/CharsTrie$Iterator;->maxLength_:I

    #@31
    if-le v0, v1, :cond_0

    #@33
    .line 427
    iget v0, p0, Landroid/icu/util/CharsTrie$Iterator;->maxLength_:I

    #@35
    .line 429
    :cond_0
    iget-object v1, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    #@37
    iget-object v2, p0, Landroid/icu/util/CharsTrie$Iterator;->chars_:Ljava/lang/CharSequence;

    #@39
    iget v3, p0, Landroid/icu/util/CharsTrie$Iterator;->pos_:I

    #@3b
    iget v4, p0, Landroid/icu/util/CharsTrie$Iterator;->pos_:I

    #@3d
    add-int/2addr v4, v0

    #@3e
    invoke-virtual {v1, v2, v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@41
    .line 430
    iget v1, p0, Landroid/icu/util/CharsTrie$Iterator;->pos_:I

    #@43
    add-int/2addr v1, v0

    #@44
    iput v1, p0, Landroid/icu/util/CharsTrie$Iterator;->pos_:I

    #@46
    .line 431
    iget v1, p0, Landroid/icu/util/CharsTrie$Iterator;->remainingMatchLength_:I

    #@48
    sub-int/2addr v1, v0

    #@49
    iput v1, p0, Landroid/icu/util/CharsTrie$Iterator;->remainingMatchLength_:I

    #@4b
    .line 417
    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/CharSequence;IIILandroid/icu/util/CharsTrie$Iterator;)V
    .locals 0
    .param p1, "trieChars"    # Ljava/lang/CharSequence;
    .param p2, "offset"    # I
    .param p3, "remainingMatchLength"    # I
    .param p4, "maxStringLength"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/util/CharsTrie$Iterator;-><init>(Ljava/lang/CharSequence;III)V

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
    .line 567
    .end local p1    # "pos":I
    .local v2, "pos":I
    :goto_0
    const/4 v5, 0x5

    #@5
    if-le p2, v5, :cond_0

    #@7
    .line 568
    add-int/lit8 p1, v2, 0x1

    #@9
    .line 570
    .end local v2    # "pos":I
    .restart local p1    # "pos":I
    iget-object v5, p0, Landroid/icu/util/CharsTrie$Iterator;->stack_:Ljava/util/ArrayList;

    #@b
    iget-object v6, p0, Landroid/icu/util/CharsTrie$Iterator;->chars_:Ljava/lang/CharSequence;

    #@d
    invoke-static {v6, p1}, Landroid/icu/util/CharsTrie;->-wrap3(Ljava/lang/CharSequence;I)I

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
    iget-object v8, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    #@1d
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

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
    .line 572
    shr-int/lit8 p2, p2, 0x1

    #@2c
    .line 573
    iget-object v5, p0, Landroid/icu/util/CharsTrie$Iterator;->chars_:Ljava/lang/CharSequence;

    #@2e
    invoke-static {v5, p1}, Landroid/icu/util/CharsTrie;->-wrap0(Ljava/lang/CharSequence;I)I

    #@31
    move-result p1

    #@32
    move v2, p1

    #@33
    .end local p1    # "pos":I
    .restart local v2    # "pos":I
    goto :goto_0

    #@34
    .line 577
    :cond_0
    iget-object v5, p0, Landroid/icu/util/CharsTrie$Iterator;->chars_:Ljava/lang/CharSequence;

    #@36
    add-int/lit8 p1, v2, 0x1

    #@38
    .end local v2    # "pos":I
    .restart local p1    # "pos":I
    invoke-interface {v5, v2}, Ljava/lang/CharSequence;->charAt(I)C

    #@3b
    move-result v3

    #@3c
    .line 578
    .local v3, "trieUnit":C
    iget-object v5, p0, Landroid/icu/util/CharsTrie$Iterator;->chars_:Ljava/lang/CharSequence;

    #@3e
    add-int/lit8 v2, p1, 0x1

    #@40
    .end local p1    # "pos":I
    .restart local v2    # "pos":I
    invoke-interface {v5, p1}, Ljava/lang/CharSequence;->charAt(I)C

    #@43
    move-result v1

    #@44
    .line 579
    .local v1, "node":I
    const v5, 0x8000

    #@47
    and-int/2addr v5, v1

    #@48
    if-eqz v5, :cond_1

    #@4a
    const/4 v0, 0x1

    #@4b
    .line 580
    .local v0, "isFinal":Z
    :goto_1
    iget-object v5, p0, Landroid/icu/util/CharsTrie$Iterator;->chars_:Ljava/lang/CharSequence;

    #@4d
    and-int/lit16 v1, v1, 0x7fff

    #@4f
    invoke-static {v5, v2, v1}, Landroid/icu/util/CharsTrie;->-wrap2(Ljava/lang/CharSequence;II)I

    #@52
    move-result v4

    #@53
    .line 581
    .local v4, "value":I
    invoke-static {v2, v1}, Landroid/icu/util/CharsTrie;->-wrap5(II)I

    #@56
    move-result p1

    #@57
    .line 582
    .end local v2    # "pos":I
    .restart local p1    # "pos":I
    iget-object v5, p0, Landroid/icu/util/CharsTrie$Iterator;->stack_:Ljava/util/ArrayList;

    #@59
    int-to-long v6, p1

    #@5a
    shl-long/2addr v6, v11

    #@5b
    add-int/lit8 v8, p2, -0x1

    #@5d
    shl-int/lit8 v8, v8, 0x10

    #@5f
    int-to-long v8, v8

    #@60
    or-long/2addr v6, v8

    #@61
    iget-object v8, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    #@63
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    #@66
    move-result v8

    #@67
    int-to-long v8, v8

    #@68
    or-long/2addr v6, v8

    #@69
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@6c
    move-result-object v6

    #@6d
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@70
    .line 583
    iget-object v5, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    #@72
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@75
    .line 584
    if-eqz v0, :cond_2

    #@77
    .line 585
    iput v10, p0, Landroid/icu/util/CharsTrie$Iterator;->pos_:I

    #@79
    .line 586
    iget-object v5, p0, Landroid/icu/util/CharsTrie$Iterator;->entry_:Landroid/icu/util/CharsTrie$Entry;

    #@7b
    iget-object v6, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    #@7d
    iput-object v6, v5, Landroid/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    #@7f
    .line 587
    iget-object v5, p0, Landroid/icu/util/CharsTrie$Iterator;->entry_:Landroid/icu/util/CharsTrie$Entry;

    #@81
    iput v4, v5, Landroid/icu/util/CharsTrie$Entry;->value:I

    #@83
    .line 588
    return v10

    #@84
    .line 579
    .end local v0    # "isFinal":Z
    .end local v4    # "value":I
    .end local p1    # "pos":I
    .restart local v2    # "pos":I
    :cond_1
    const/4 v0, 0x0

    #@85
    .restart local v0    # "isFinal":Z
    goto :goto_1

    #@86
    .line 590
    .end local v2    # "pos":I
    .restart local v4    # "value":I
    .restart local p1    # "pos":I
    :cond_2
    add-int v5, p1, v4

    #@88
    return v5
.end method

.method private truncateAndStop()Landroid/icu/util/CharsTrie$Entry;
    .locals 3

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 558
    iput v2, p0, Landroid/icu/util/CharsTrie$Iterator;->pos_:I

    #@3
    .line 561
    iget-object v0, p0, Landroid/icu/util/CharsTrie$Iterator;->entry_:Landroid/icu/util/CharsTrie$Entry;

    #@5
    iget-object v1, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    #@7
    iput-object v1, v0, Landroid/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    #@9
    .line 562
    iget-object v0, p0, Landroid/icu/util/CharsTrie$Iterator;->entry_:Landroid/icu/util/CharsTrie$Entry;

    #@b
    iput v2, v0, Landroid/icu/util/CharsTrie$Entry;->value:I

    #@d
    .line 563
    iget-object v0, p0, Landroid/icu/util/CharsTrie$Iterator;->entry_:Landroid/icu/util/CharsTrie$Entry;

    #@f
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
    .line 457
    iget v2, p0, Landroid/icu/util/CharsTrie$Iterator;->pos_:I

    #@4
    if-gez v2, :cond_0

    #@6
    iget-object v2, p0, Landroid/icu/util/CharsTrie$Iterator;->stack_:Ljava/util/ArrayList;

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

.method public next()Landroid/icu/util/CharsTrie$Entry;
    .locals 12

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    .line 470
    iget v3, p0, Landroid/icu/util/CharsTrie$Iterator;->pos_:I

    #@4
    .line 471
    .local v3, "pos":I
    if-gez v3, :cond_2

    #@6
    .line 472
    iget-object v5, p0, Landroid/icu/util/CharsTrie$Iterator;->stack_:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    #@b
    move-result v5

    #@c
    if-eqz v5, :cond_0

    #@e
    .line 473
    new-instance v5, Ljava/util/NoSuchElementException;

    #@10
    invoke-direct {v5}, Ljava/util/NoSuchElementException;-><init>()V

    #@13
    throw v5

    #@14
    .line 477
    :cond_0
    iget-object v5, p0, Landroid/icu/util/CharsTrie$Iterator;->stack_:Ljava/util/ArrayList;

    #@16
    iget-object v9, p0, Landroid/icu/util/CharsTrie$Iterator;->stack_:Ljava/util/ArrayList;

    #@18
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@1b
    move-result v9

    #@1c
    add-int/lit8 v9, v9, -0x1

    #@1e
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@21
    move-result-object v5

    #@22
    check-cast v5, Ljava/lang/Long;

    #@24
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    #@27
    move-result-wide v6

    #@28
    .line 478
    .local v6, "top":J
    long-to-int v1, v6

    #@29
    .line 479
    .local v1, "length":I
    const/16 v5, 0x20

    #@2b
    shr-long v10, v6, v5

    #@2d
    long-to-int v3, v10

    #@2e
    .line 480
    iget-object v5, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    #@30
    const v9, 0xffff

    #@33
    and-int/2addr v9, v1

    #@34
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    #@37
    .line 481
    ushr-int/lit8 v1, v1, 0x10

    #@39
    .line 482
    if-le v1, v8, :cond_1

    #@3b
    .line 483
    invoke-direct {p0, v3, v1}, Landroid/icu/util/CharsTrie$Iterator;->branchNext(II)I

    #@3e
    move-result v3

    #@3f
    .line 484
    if-gez v3, :cond_2

    #@41
    .line 485
    iget-object v5, p0, Landroid/icu/util/CharsTrie$Iterator;->entry_:Landroid/icu/util/CharsTrie$Entry;

    #@43
    return-object v5

    #@44
    .line 488
    :cond_1
    iget-object v5, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    #@46
    iget-object v9, p0, Landroid/icu/util/CharsTrie$Iterator;->chars_:Ljava/lang/CharSequence;

    #@48
    add-int/lit8 v4, v3, 0x1

    #@4a
    .end local v3    # "pos":I
    .local v4, "pos":I
    invoke-interface {v9, v3}, Ljava/lang/CharSequence;->charAt(I)C

    #@4d
    move-result v9

    #@4e
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@51
    move v3, v4

    #@52
    .line 491
    .end local v1    # "length":I
    .end local v4    # "pos":I
    .end local v6    # "top":J
    .restart local v3    # "pos":I
    :cond_2
    iget v5, p0, Landroid/icu/util/CharsTrie$Iterator;->remainingMatchLength_:I

    #@54
    if-ltz v5, :cond_4

    #@56
    .line 494
    invoke-direct {p0}, Landroid/icu/util/CharsTrie$Iterator;->truncateAndStop()Landroid/icu/util/CharsTrie$Entry;

    #@59
    move-result-object v5

    #@5a
    return-object v5

    #@5b
    .line 543
    .restart local v1    # "length":I
    .local v2, "node":I
    :cond_3
    iget-object v5, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    #@5d
    iget-object v9, p0, Landroid/icu/util/CharsTrie$Iterator;->chars_:Ljava/lang/CharSequence;

    #@5f
    add-int v10, v3, v1

    #@61
    invoke-virtual {v5, v9, v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@64
    .line 544
    add-int/2addr v3, v1

    #@65
    .line 497
    .end local v1    # "length":I
    .end local v2    # "node":I
    :cond_4
    iget-object v5, p0, Landroid/icu/util/CharsTrie$Iterator;->chars_:Ljava/lang/CharSequence;

    #@67
    add-int/lit8 v4, v3, 0x1

    #@69
    .end local v3    # "pos":I
    .restart local v4    # "pos":I
    invoke-interface {v5, v3}, Ljava/lang/CharSequence;->charAt(I)C

    #@6c
    move-result v2

    #@6d
    .line 498
    .restart local v2    # "node":I
    const/16 v5, 0x40

    #@6f
    if-lt v2, v5, :cond_d

    #@71
    .line 499
    iget-boolean v5, p0, Landroid/icu/util/CharsTrie$Iterator;->skipValue_:Z

    #@73
    if-eqz v5, :cond_5

    #@75
    .line 500
    invoke-static {v4, v2}, Landroid/icu/util/CharsTrie;->-wrap4(II)I

    #@78
    move-result v3

    #@79
    .line 501
    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    and-int/lit8 v2, v2, 0x3f

    #@7b
    .line 502
    iput-boolean v0, p0, Landroid/icu/util/CharsTrie$Iterator;->skipValue_:Z

    #@7d
    .line 525
    :goto_0
    iget v5, p0, Landroid/icu/util/CharsTrie$Iterator;->maxLength_:I

    #@7f
    if-lez v5, :cond_a

    #@81
    iget-object v5, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    #@83
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    #@86
    move-result v5

    #@87
    iget v9, p0, Landroid/icu/util/CharsTrie$Iterator;->maxLength_:I

    #@89
    if-ne v5, v9, :cond_a

    #@8b
    .line 526
    invoke-direct {p0}, Landroid/icu/util/CharsTrie$Iterator;->truncateAndStop()Landroid/icu/util/CharsTrie$Entry;

    #@8e
    move-result-object v5

    #@8f
    return-object v5

    #@90
    .line 505
    .end local v3    # "pos":I
    .restart local v4    # "pos":I
    :cond_5
    const v5, 0x8000

    #@93
    and-int/2addr v5, v2

    #@94
    if-eqz v5, :cond_6

    #@96
    move v0, v8

    #@97
    .line 506
    .local v0, "isFinal":Z
    :cond_6
    if-eqz v0, :cond_8

    #@99
    .line 507
    iget-object v5, p0, Landroid/icu/util/CharsTrie$Iterator;->entry_:Landroid/icu/util/CharsTrie$Entry;

    #@9b
    iget-object v9, p0, Landroid/icu/util/CharsTrie$Iterator;->chars_:Ljava/lang/CharSequence;

    #@9d
    and-int/lit16 v10, v2, 0x7fff

    #@9f
    invoke-static {v9, v4, v10}, Landroid/icu/util/CharsTrie;->-wrap2(Ljava/lang/CharSequence;II)I

    #@a2
    move-result v9

    #@a3
    iput v9, v5, Landroid/icu/util/CharsTrie$Entry;->value:I

    #@a5
    .line 511
    :goto_1
    if-nez v0, :cond_7

    #@a7
    iget v5, p0, Landroid/icu/util/CharsTrie$Iterator;->maxLength_:I

    #@a9
    if-lez v5, :cond_9

    #@ab
    iget-object v5, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    #@ad
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    #@b0
    move-result v5

    #@b1
    iget v9, p0, Landroid/icu/util/CharsTrie$Iterator;->maxLength_:I

    #@b3
    if-ne v5, v9, :cond_9

    #@b5
    .line 512
    :cond_7
    const/4 v5, -0x1

    #@b6
    iput v5, p0, Landroid/icu/util/CharsTrie$Iterator;->pos_:I

    #@b8
    .line 521
    :goto_2
    iget-object v5, p0, Landroid/icu/util/CharsTrie$Iterator;->entry_:Landroid/icu/util/CharsTrie$Entry;

    #@ba
    iget-object v8, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    #@bc
    iput-object v8, v5, Landroid/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    #@be
    .line 522
    iget-object v5, p0, Landroid/icu/util/CharsTrie$Iterator;->entry_:Landroid/icu/util/CharsTrie$Entry;

    #@c0
    return-object v5

    #@c1
    .line 509
    :cond_8
    iget-object v5, p0, Landroid/icu/util/CharsTrie$Iterator;->entry_:Landroid/icu/util/CharsTrie$Entry;

    #@c3
    iget-object v9, p0, Landroid/icu/util/CharsTrie$Iterator;->chars_:Ljava/lang/CharSequence;

    #@c5
    invoke-static {v9, v4, v2}, Landroid/icu/util/CharsTrie;->-wrap1(Ljava/lang/CharSequence;II)I

    #@c8
    move-result v9

    #@c9
    iput v9, v5, Landroid/icu/util/CharsTrie$Entry;->value:I

    #@cb
    goto :goto_1

    #@cc
    .line 518
    :cond_9
    add-int/lit8 v5, v4, -0x1

    #@ce
    iput v5, p0, Landroid/icu/util/CharsTrie$Iterator;->pos_:I

    #@d0
    .line 519
    iput-boolean v8, p0, Landroid/icu/util/CharsTrie$Iterator;->skipValue_:Z

    #@d2
    goto :goto_2

    #@d3
    .line 528
    .end local v0    # "isFinal":Z
    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    :cond_a
    const/16 v5, 0x30

    #@d5
    if-ge v2, v5, :cond_c

    #@d7
    .line 529
    if-nez v2, :cond_b

    #@d9
    .line 530
    iget-object v5, p0, Landroid/icu/util/CharsTrie$Iterator;->chars_:Ljava/lang/CharSequence;

    #@db
    add-int/lit8 v4, v3, 0x1

    #@dd
    .end local v3    # "pos":I
    .restart local v4    # "pos":I
    invoke-interface {v5, v3}, Ljava/lang/CharSequence;->charAt(I)C

    #@e0
    move-result v2

    #@e1
    move v3, v4

    #@e2
    .line 532
    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    :cond_b
    add-int/lit8 v5, v2, 0x1

    #@e4
    invoke-direct {p0, v3, v5}, Landroid/icu/util/CharsTrie$Iterator;->branchNext(II)I

    #@e7
    move-result v3

    #@e8
    .line 533
    if-gez v3, :cond_4

    #@ea
    .line 534
    iget-object v5, p0, Landroid/icu/util/CharsTrie$Iterator;->entry_:Landroid/icu/util/CharsTrie$Entry;

    #@ec
    return-object v5

    #@ed
    .line 538
    :cond_c
    add-int/lit8 v5, v2, -0x30

    #@ef
    add-int/lit8 v1, v5, 0x1

    #@f1
    .line 539
    .restart local v1    # "length":I
    iget v5, p0, Landroid/icu/util/CharsTrie$Iterator;->maxLength_:I

    #@f3
    if-lez v5, :cond_3

    #@f5
    iget-object v5, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    #@f7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    #@fa
    move-result v5

    #@fb
    add-int/2addr v5, v1

    #@fc
    iget v9, p0, Landroid/icu/util/CharsTrie$Iterator;->maxLength_:I

    #@fe
    if-le v5, v9, :cond_3

    #@100
    .line 540
    iget-object v5, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    #@102
    iget-object v8, p0, Landroid/icu/util/CharsTrie$Iterator;->chars_:Ljava/lang/CharSequence;

    #@104
    iget v9, p0, Landroid/icu/util/CharsTrie$Iterator;->maxLength_:I

    #@106
    add-int/2addr v9, v3

    #@107
    iget-object v10, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    #@109
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    #@10c
    move-result v10

    #@10d
    sub-int/2addr v9, v10

    #@10e
    invoke-virtual {v5, v8, v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@111
    .line 541
    invoke-direct {p0}, Landroid/icu/util/CharsTrie$Iterator;->truncateAndStop()Landroid/icu/util/CharsTrie$Entry;

    #@114
    move-result-object v5

    #@115
    return-object v5

    #@116
    .end local v1    # "length":I
    .end local v3    # "pos":I
    .restart local v4    # "pos":I
    :cond_d
    move v3, v4

    #@117
    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    goto/16 :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 469
    invoke-virtual {p0}, Landroid/icu/util/CharsTrie$Iterator;->next()Landroid/icu/util/CharsTrie$Entry;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public remove()V
    .locals 1

    #@0
    .prologue
    .line 554
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public reset()Landroid/icu/util/CharsTrie$Iterator;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 440
    iget v1, p0, Landroid/icu/util/CharsTrie$Iterator;->initialPos_:I

    #@3
    iput v1, p0, Landroid/icu/util/CharsTrie$Iterator;->pos_:I

    #@5
    .line 441
    iget v1, p0, Landroid/icu/util/CharsTrie$Iterator;->initialRemainingMatchLength_:I

    #@7
    iput v1, p0, Landroid/icu/util/CharsTrie$Iterator;->remainingMatchLength_:I

    #@9
    .line 442
    iput-boolean v2, p0, Landroid/icu/util/CharsTrie$Iterator;->skipValue_:Z

    #@b
    .line 443
    iget v1, p0, Landroid/icu/util/CharsTrie$Iterator;->remainingMatchLength_:I

    #@d
    add-int/lit8 v0, v1, 0x1

    #@f
    .line 444
    .local v0, "length":I
    iget v1, p0, Landroid/icu/util/CharsTrie$Iterator;->maxLength_:I

    #@11
    if-lez v1, :cond_0

    #@13
    iget v1, p0, Landroid/icu/util/CharsTrie$Iterator;->maxLength_:I

    #@15
    if-le v0, v1, :cond_0

    #@17
    .line 445
    iget v0, p0, Landroid/icu/util/CharsTrie$Iterator;->maxLength_:I

    #@19
    .line 447
    :cond_0
    iget-object v1, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    #@1b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    #@1e
    .line 448
    iget v1, p0, Landroid/icu/util/CharsTrie$Iterator;->pos_:I

    #@20
    add-int/2addr v1, v0

    #@21
    iput v1, p0, Landroid/icu/util/CharsTrie$Iterator;->pos_:I

    #@23
    .line 449
    iget v1, p0, Landroid/icu/util/CharsTrie$Iterator;->remainingMatchLength_:I

    #@25
    sub-int/2addr v1, v0

    #@26
    iput v1, p0, Landroid/icu/util/CharsTrie$Iterator;->remainingMatchLength_:I

    #@28
    .line 450
    iget-object v1, p0, Landroid/icu/util/CharsTrie$Iterator;->stack_:Ljava/util/ArrayList;

    #@2a
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    #@2d
    .line 451
    return-object p0
.end method
