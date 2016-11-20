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
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private equal:[Landroid/icu/util/StringTrieBuilder$Node;

.field private length:I

.field private units:[C

.field private values:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->-assertionsDisabled:Z

    #@b
    .line 599
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    #@0
    .prologue
    .line 600
    invoke-direct {p0}, Landroid/icu/util/StringTrieBuilder$BranchNode;-><init>()V

    #@3
    .line 601
    const v0, 0x9ddddd4

    #@6
    add-int/2addr v0, p1

    #@7
    iput v0, p0, Landroid/icu/util/StringTrieBuilder$BranchNode;->hash:I

    #@9
    .line 602
    new-array v0, p1, [Landroid/icu/util/StringTrieBuilder$Node;

    #@b
    iput-object v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->equal:[Landroid/icu/util/StringTrieBuilder$Node;

    #@d
    .line 603
    new-array v0, p1, [I

    #@f
    iput-object v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->values:[I

    #@11
    .line 604
    new-array v0, p1, [C

    #@13
    iput-object v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->units:[C

    #@15
    .line 600
    return-void
.end method


# virtual methods
.method public add(II)V
    .locals 3
    .param p1, "c"    # I
    .param p2, "value"    # I

    #@0
    .prologue
    .line 688
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->units:[C

    #@2
    iget v1, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->length:I

    #@4
    int-to-char v2, p1

    #@5
    aput-char v2, v0, v1

    #@7
    .line 689
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->equal:[Landroid/icu/util/StringTrieBuilder$Node;

    #@9
    iget v1, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->length:I

    #@b
    const/4 v2, 0x0

    #@c
    aput-object v2, v0, v1

    #@e
    .line 690
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->values:[I

    #@10
    iget v1, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->length:I

    #@12
    aput p2, v0, v1

    #@14
    .line 691
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->length:I

    #@16
    add-int/lit8 v0, v0, 0x1

    #@18
    iput v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->length:I

    #@1a
    .line 692
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$BranchNode;->hash:I

    #@1c
    mul-int/lit8 v0, v0, 0x25

    #@1e
    add-int/2addr v0, p1

    #@1f
    mul-int/lit8 v0, v0, 0x25

    #@21
    add-int/2addr v0, p2

    #@22
    iput v0, p0, Landroid/icu/util/StringTrieBuilder$BranchNode;->hash:I

    #@24
    .line 687
    return-void
.end method

.method public add(ILandroid/icu/util/StringTrieBuilder$Node;)V
    .locals 3
    .param p1, "c"    # I
    .param p2, "node"    # Landroid/icu/util/StringTrieBuilder$Node;

    #@0
    .prologue
    .line 696
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->units:[C

    #@2
    iget v1, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->length:I

    #@4
    int-to-char v2, p1

    #@5
    aput-char v2, v0, v1

    #@7
    .line 697
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->equal:[Landroid/icu/util/StringTrieBuilder$Node;

    #@9
    iget v1, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->length:I

    #@b
    aput-object p2, v0, v1

    #@d
    .line 698
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->values:[I

    #@f
    iget v1, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->length:I

    #@11
    const/4 v2, 0x0

    #@12
    aput v2, v0, v1

    #@14
    .line 699
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->length:I

    #@16
    add-int/lit8 v0, v0, 0x1

    #@18
    iput v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->length:I

    #@1a
    .line 700
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$BranchNode;->hash:I

    #@1c
    mul-int/lit8 v0, v0, 0x25

    #@1e
    add-int/2addr v0, p1

    #@1f
    mul-int/lit8 v0, v0, 0x25

    #@21
    invoke-virtual {p2}, Landroid/icu/util/StringTrieBuilder$Node;->hashCode()I

    #@24
    move-result v1

    #@25
    add-int/2addr v0, v1

    #@26
    iput v0, p0, Landroid/icu/util/StringTrieBuilder$BranchNode;->hash:I

    #@28
    .line 695
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 608
    if-ne p0, p1, :cond_0

    #@4
    .line 609
    return v5

    #@5
    .line 611
    :cond_0
    invoke-super {p0, p1}, Landroid/icu/util/StringTrieBuilder$BranchNode;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v2

    #@9
    if-nez v2, :cond_1

    #@b
    .line 612
    return v4

    #@c
    :cond_1
    move-object v1, p1

    #@d
    .line 614
    check-cast v1, Landroid/icu/util/StringTrieBuilder$ListBranchNode;

    #@f
    .line 615
    .local v1, "o":Landroid/icu/util/StringTrieBuilder$ListBranchNode;
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_0
    iget v2, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->length:I

    #@12
    if-ge v0, v2, :cond_4

    #@14
    .line 616
    iget-object v2, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->units:[C

    #@16
    aget-char v2, v2, v0

    #@18
    iget-object v3, v1, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->units:[C

    #@1a
    aget-char v3, v3, v0

    #@1c
    if-ne v2, v3, :cond_2

    #@1e
    iget-object v2, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->values:[I

    #@20
    aget v2, v2, v0

    #@22
    iget-object v3, v1, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->values:[I

    #@24
    aget v3, v3, v0

    #@26
    if-eq v2, v3, :cond_3

    #@28
    .line 617
    :cond_2
    return v4

    #@29
    .line 616
    :cond_3
    iget-object v2, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->equal:[Landroid/icu/util/StringTrieBuilder$Node;

    #@2b
    aget-object v2, v2, v0

    #@2d
    iget-object v3, v1, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->equal:[Landroid/icu/util/StringTrieBuilder$Node;

    #@2f
    aget-object v3, v3, v0

    #@31
    if-ne v2, v3, :cond_2

    #@33
    .line 615
    add-int/lit8 v0, v0, 0x1

    #@35
    goto :goto_0

    #@36
    .line 620
    :cond_4
    return v5
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 624
    invoke-super {p0}, Landroid/icu/util/StringTrieBuilder$BranchNode;->hashCode()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public markRightEdgesFirst(I)I
    .locals 4
    .param p1, "edgeNumber"    # I

    #@0
    .prologue
    .line 628
    iget v3, p0, Landroid/icu/util/StringTrieBuilder$Node;->offset:I

    #@2
    if-nez v3, :cond_2

    #@4
    .line 629
    iput p1, p0, Landroid/icu/util/StringTrieBuilder$BranchNode;->firstEdgeNumber:I

    #@6
    .line 630
    const/4 v2, 0x0

    #@7
    .line 631
    .local v2, "step":I
    iget v1, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->length:I

    #@9
    .line 633
    .local v1, "i":I
    :cond_0
    iget-object v3, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->equal:[Landroid/icu/util/StringTrieBuilder$Node;

    #@b
    add-int/lit8 v1, v1, -0x1

    #@d
    aget-object v0, v3, v1

    #@f
    .line 634
    .local v0, "edge":Landroid/icu/util/StringTrieBuilder$Node;
    if-eqz v0, :cond_1

    #@11
    .line 635
    sub-int v3, p1, v2

    #@13
    invoke-virtual {v0, v3}, Landroid/icu/util/StringTrieBuilder$Node;->markRightEdgesFirst(I)I

    #@16
    move-result p1

    #@17
    .line 638
    :cond_1
    const/4 v2, 0x1

    #@18
    .line 639
    if-gtz v1, :cond_0

    #@1a
    .line 640
    iput p1, p0, Landroid/icu/util/StringTrieBuilder$Node;->offset:I

    #@1c
    .line 642
    .end local v0    # "edge":Landroid/icu/util/StringTrieBuilder$Node;
    .end local v1    # "i":I
    .end local v2    # "step":I
    :cond_2
    return p1
.end method

.method public write(Landroid/icu/util/StringTrieBuilder;)V
    .locals 9
    .param p1, "builder"    # Landroid/icu/util/StringTrieBuilder;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 650
    iget v5, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->length:I

    #@4
    add-int/lit8 v3, v5, -0x1

    #@6
    .line 651
    .local v3, "unitNumber":I
    iget-object v5, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->equal:[Landroid/icu/util/StringTrieBuilder$Node;

    #@8
    aget-object v1, v5, v3

    #@a
    .line 652
    .local v1, "rightEdge":Landroid/icu/util/StringTrieBuilder$Node;
    if-nez v1, :cond_2

    #@c
    iget v2, p0, Landroid/icu/util/StringTrieBuilder$BranchNode;->firstEdgeNumber:I

    #@e
    .line 654
    .local v2, "rightEdgeNumber":I
    :cond_0
    :goto_0
    add-int/lit8 v3, v3, -0x1

    #@10
    .line 655
    iget-object v5, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->equal:[Landroid/icu/util/StringTrieBuilder$Node;

    #@12
    aget-object v5, v5, v3

    #@14
    if-eqz v5, :cond_1

    #@16
    .line 656
    iget-object v5, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->equal:[Landroid/icu/util/StringTrieBuilder$Node;

    #@18
    aget-object v5, v5, v3

    #@1a
    iget v8, p0, Landroid/icu/util/StringTrieBuilder$BranchNode;->firstEdgeNumber:I

    #@1c
    invoke-virtual {v5, v8, v2, p1}, Landroid/icu/util/StringTrieBuilder$Node;->writeUnlessInsideRightEdge(IILandroid/icu/util/StringTrieBuilder;)V

    #@1f
    .line 658
    :cond_1
    if-gtz v3, :cond_0

    #@21
    .line 661
    iget v5, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->length:I

    #@23
    add-int/lit8 v3, v5, -0x1

    #@25
    .line 662
    if-nez v1, :cond_3

    #@27
    .line 663
    iget-object v5, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->values:[I

    #@29
    aget v5, v5, v3

    #@2b
    invoke-virtual {p1, v5, v6}, Landroid/icu/util/StringTrieBuilder;->writeValueAndFinal(IZ)I

    #@2e
    .line 667
    :goto_1
    iget-object v5, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->units:[C

    #@30
    aget-char v5, v5, v3

    #@32
    invoke-virtual {p1, v5}, Landroid/icu/util/StringTrieBuilder;->write(I)I

    #@35
    move-result v5

    #@36
    iput v5, p0, Landroid/icu/util/StringTrieBuilder$Node;->offset:I

    #@38
    .line 669
    :goto_2
    add-int/lit8 v3, v3, -0x1

    #@3a
    if-ltz v3, :cond_7

    #@3c
    .line 672
    iget-object v5, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->equal:[Landroid/icu/util/StringTrieBuilder$Node;

    #@3e
    aget-object v5, v5, v3

    #@40
    if-nez v5, :cond_4

    #@42
    .line 674
    iget-object v5, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->values:[I

    #@44
    aget v4, v5, v3

    #@46
    .line 675
    .local v4, "value":I
    const/4 v0, 0x1

    #@47
    .line 682
    .local v0, "isFinal":Z
    :goto_3
    invoke-virtual {p1, v4, v0}, Landroid/icu/util/StringTrieBuilder;->writeValueAndFinal(IZ)I

    #@4a
    .line 683
    iget-object v5, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->units:[C

    #@4c
    aget-char v5, v5, v3

    #@4e
    invoke-virtual {p1, v5}, Landroid/icu/util/StringTrieBuilder;->write(I)I

    #@51
    move-result v5

    #@52
    iput v5, p0, Landroid/icu/util/StringTrieBuilder$Node;->offset:I

    #@54
    goto :goto_2

    #@55
    .line 652
    .end local v0    # "isFinal":Z
    .end local v2    # "rightEdgeNumber":I
    .end local v4    # "value":I
    :cond_2
    invoke-virtual {v1}, Landroid/icu/util/StringTrieBuilder$Node;->getOffset()I

    #@58
    move-result v2

    #@59
    .restart local v2    # "rightEdgeNumber":I
    goto :goto_0

    #@5a
    .line 665
    :cond_3
    invoke-virtual {v1, p1}, Landroid/icu/util/StringTrieBuilder$Node;->write(Landroid/icu/util/StringTrieBuilder;)V

    #@5d
    goto :goto_1

    #@5e
    .line 678
    :cond_4
    sget-boolean v5, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->-assertionsDisabled:Z

    #@60
    if-nez v5, :cond_6

    #@62
    iget-object v5, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->equal:[Landroid/icu/util/StringTrieBuilder$Node;

    #@64
    aget-object v5, v5, v3

    #@66
    invoke-virtual {v5}, Landroid/icu/util/StringTrieBuilder$Node;->getOffset()I

    #@69
    move-result v5

    #@6a
    if-lez v5, :cond_5

    #@6c
    move v5, v6

    #@6d
    :goto_4
    if-nez v5, :cond_6

    #@6f
    new-instance v5, Ljava/lang/AssertionError;

    #@71
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@74
    throw v5

    #@75
    :cond_5
    move v5, v7

    #@76
    goto :goto_4

    #@77
    .line 679
    :cond_6
    iget v5, p0, Landroid/icu/util/StringTrieBuilder$Node;->offset:I

    #@79
    iget-object v8, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->equal:[Landroid/icu/util/StringTrieBuilder$Node;

    #@7b
    aget-object v8, v8, v3

    #@7d
    invoke-virtual {v8}, Landroid/icu/util/StringTrieBuilder$Node;->getOffset()I

    #@80
    move-result v8

    #@81
    sub-int v4, v5, v8

    #@83
    .line 680
    .restart local v4    # "value":I
    const/4 v0, 0x0

    #@84
    .restart local v0    # "isFinal":Z
    goto :goto_3

    #@85
    .line 645
    .end local v0    # "isFinal":Z
    .end local v4    # "value":I
    :cond_7
    return-void
.end method
