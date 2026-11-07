.class final Landroid/icu/util/StringTrieBuilder$ListBranchNode;
.super Landroid/icu/util/StringTrieBuilder$BranchNode;
.source "StringTrieBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/StringTrieBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ListBranchNode"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private greylist-max-o equal:[Landroid/icu/util/StringTrieBuilder$Node;

.field private greylist-max-o length:I

.field private greylist-max-o units:[C

.field private greylist-max-o values:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 602
    const-class v0, Landroid/icu/util/StringTrieBuilder;

    return-void
.end method

.method public constructor greylist-max-o <init>(I)V
    .registers 3
    .param p1, "capacity"    # I

    .line 603
    invoke-direct {p0}, Landroid/icu/util/StringTrieBuilder$BranchNode;-><init>()V

    .line 604
    const v0, 0x9ddddd4

    add-int/2addr v0, p1

    iput v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->hash:I

    .line 605
    new-array v0, p1, [Landroid/icu/util/StringTrieBuilder$Node;

    iput-object v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->equal:[Landroid/icu/util/StringTrieBuilder$Node;

    .line 606
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->values:[I

    .line 607
    new-array v0, p1, [C

    iput-object v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->units:[C

    .line 608
    return-void
.end method


# virtual methods
.method public greylist-max-o add(II)V
    .registers 6
    .param p1, "c"    # I
    .param p2, "value"    # I

    .line 691
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->units:[C

    iget v1, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->length:I

    int-to-char v2, p1

    aput-char v2, v0, v1

    .line 692
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->equal:[Landroid/icu/util/StringTrieBuilder$Node;

    iget v1, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->length:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 693
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->values:[I

    iget v1, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->length:I

    aput p2, v0, v1

    .line 694
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->length:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->length:I

    .line 695
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->hash:I

    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, p2

    iput v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->hash:I

    .line 696
    return-void
.end method

.method public greylist-max-o add(ILandroid/icu/util/StringTrieBuilder$Node;)V
    .registers 6
    .param p1, "c"    # I
    .param p2, "node"    # Landroid/icu/util/StringTrieBuilder$Node;

    .line 699
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->units:[C

    iget v1, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->length:I

    int-to-char v2, p1

    aput-char v2, v0, v1

    .line 700
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->equal:[Landroid/icu/util/StringTrieBuilder$Node;

    iget v1, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->length:I

    aput-object p2, v0, v1

    .line 701
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->values:[I

    iget v1, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->length:I

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 702
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->length:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->length:I

    .line 703
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->hash:I

    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0x25

    invoke-virtual {p2}, Landroid/icu/util/StringTrieBuilder$Node;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->hash:I

    .line 704
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "other"    # Ljava/lang/Object;

    .line 611
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 612
    return v0

    .line 614
    :cond_4
    invoke-super {p0, p1}, Landroid/icu/util/StringTrieBuilder$BranchNode;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 615
    return v2

    .line 617
    :cond_c
    move-object v1, p1

    check-cast v1, Landroid/icu/util/StringTrieBuilder$ListBranchNode;

    .line 618
    .local v1, "o":Landroid/icu/util/StringTrieBuilder$ListBranchNode;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    iget v4, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->length:I

    if-ge v3, v4, :cond_37

    .line 619
    iget-object v4, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->units:[C

    aget-char v4, v4, v3

    iget-object v5, v1, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->units:[C

    aget-char v5, v5, v3

    if-ne v4, v5, :cond_36

    iget-object v4, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->values:[I

    aget v4, v4, v3

    iget-object v5, v1, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->values:[I

    aget v5, v5, v3

    if-ne v4, v5, :cond_36

    iget-object v4, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->equal:[Landroid/icu/util/StringTrieBuilder$Node;

    aget-object v4, v4, v3

    iget-object v5, v1, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->equal:[Landroid/icu/util/StringTrieBuilder$Node;

    aget-object v5, v5, v3

    if-eq v4, v5, :cond_33

    goto :goto_36

    .line 618
    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 620
    :cond_36
    :goto_36
    return v2

    .line 623
    .end local v3    # "i":I
    :cond_37
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 627
    invoke-super {p0}, Landroid/icu/util/StringTrieBuilder$BranchNode;->hashCode()I

    move-result v0

    return v0
.end method

.method public greylist-max-o markRightEdgesFirst(I)I
    .registers 6
    .param p1, "edgeNumber"    # I

    .line 631
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->offset:I

    if-nez v0, :cond_1c

    .line 632
    iput p1, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->firstEdgeNumber:I

    .line 633
    const/4 v0, 0x0

    .line 634
    .local v0, "step":I
    iget v1, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->length:I

    .line 636
    .local v1, "i":I
    :cond_9
    iget-object v2, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->equal:[Landroid/icu/util/StringTrieBuilder$Node;

    add-int/lit8 v1, v1, -0x1

    aget-object v2, v2, v1

    .line 637
    .local v2, "edge":Landroid/icu/util/StringTrieBuilder$Node;
    if-eqz v2, :cond_17

    .line 638
    sub-int v3, p1, v0

    invoke-virtual {v2, v3}, Landroid/icu/util/StringTrieBuilder$Node;->markRightEdgesFirst(I)I

    move-result p1

    .line 641
    :cond_17
    const/4 v0, 0x1

    .line 642
    .end local v2    # "edge":Landroid/icu/util/StringTrieBuilder$Node;
    if-gtz v1, :cond_9

    .line 643
    iput p1, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->offset:I

    .line 645
    .end local v0    # "step":I
    .end local v1    # "i":I
    :cond_1c
    return p1
.end method

.method public greylist-max-o write(Landroid/icu/util/StringTrieBuilder;)V
    .registers 8
    .param p1, "builder"    # Landroid/icu/util/StringTrieBuilder;

    .line 653
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->length:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 654
    .local v0, "unitNumber":I
    iget-object v2, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->equal:[Landroid/icu/util/StringTrieBuilder$Node;

    aget-object v2, v2, v0

    .line 655
    .local v2, "rightEdge":Landroid/icu/util/StringTrieBuilder$Node;
    if-nez v2, :cond_d

    iget v3, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->firstEdgeNumber:I

    goto :goto_11

    :cond_d
    invoke-virtual {v2}, Landroid/icu/util/StringTrieBuilder$Node;->getOffset()I

    move-result v3

    .line 657
    .local v3, "rightEdgeNumber":I
    :cond_11
    :goto_11
    add-int/lit8 v0, v0, -0x1

    .line 658
    iget-object v4, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->equal:[Landroid/icu/util/StringTrieBuilder$Node;

    aget-object v4, v4, v0

    if-eqz v4, :cond_22

    .line 659
    iget-object v4, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->equal:[Landroid/icu/util/StringTrieBuilder$Node;

    aget-object v4, v4, v0

    iget v5, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->firstEdgeNumber:I

    invoke-virtual {v4, v5, v3, p1}, Landroid/icu/util/StringTrieBuilder$Node;->writeUnlessInsideRightEdge(IILandroid/icu/util/StringTrieBuilder;)V

    .line 661
    :cond_22
    if-gtz v0, :cond_11

    .line 664
    iget v4, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->length:I

    sub-int/2addr v4, v1

    .line 665
    .end local v0    # "unitNumber":I
    .local v4, "unitNumber":I
    if-nez v2, :cond_31

    .line 666
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->values:[I

    aget v0, v0, v4

    invoke-virtual {p1, v0, v1}, Landroid/icu/util/StringTrieBuilder;->writeValueAndFinal(IZ)I

    goto :goto_34

    .line 668
    :cond_31
    invoke-virtual {v2, p1}, Landroid/icu/util/StringTrieBuilder$Node;->write(Landroid/icu/util/StringTrieBuilder;)V

    .line 670
    :goto_34
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->units:[C

    aget-char v0, v0, v4

    invoke-virtual {p1, v0}, Landroid/icu/util/StringTrieBuilder;->write(I)I

    move-result v0

    iput v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->offset:I

    .line 672
    :goto_3e
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_69

    .line 675
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->equal:[Landroid/icu/util/StringTrieBuilder$Node;

    aget-object v0, v0, v4

    if-nez v0, :cond_4e

    .line 677
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->values:[I

    aget v0, v0, v4

    .line 678
    .local v0, "value":I
    const/4 v1, 0x1

    .local v1, "isFinal":Z
    goto :goto_5b

    .line 681
    .end local v0    # "value":I
    .end local v1    # "isFinal":Z
    :cond_4e
    nop

    .line 682
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->offset:I

    iget-object v1, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->equal:[Landroid/icu/util/StringTrieBuilder$Node;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroid/icu/util/StringTrieBuilder$Node;->getOffset()I

    move-result v1

    sub-int/2addr v0, v1

    .line 683
    .restart local v0    # "value":I
    const/4 v1, 0x0

    .line 685
    .restart local v1    # "isFinal":Z
    :goto_5b
    invoke-virtual {p1, v0, v1}, Landroid/icu/util/StringTrieBuilder;->writeValueAndFinal(IZ)I

    .line 686
    iget-object v5, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->units:[C

    aget-char v5, v5, v4

    invoke-virtual {p1, v5}, Landroid/icu/util/StringTrieBuilder;->write(I)I

    move-result v5

    iput v5, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->offset:I

    .line 687
    .end local v0    # "value":I
    .end local v1    # "isFinal":Z
    goto :goto_3e

    .line 688
    :cond_69
    return-void
.end method
