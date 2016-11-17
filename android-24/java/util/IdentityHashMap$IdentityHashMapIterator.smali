.class abstract Ljava/util/IdentityHashMap$IdentityHashMapIterator;
.super Ljava/lang/Object;
.source "IdentityHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/IdentityHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "IdentityHashMapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field expectedModCount:I

.field index:I

.field indexValid:Z

.field lastReturnedIndex:I

.field final synthetic this$0:Ljava/util/IdentityHashMap;

.field traversalTable:[Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/util/IdentityHashMap;)V
    .locals 2

    #@0
    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap$IdentityHashMapIterator;, "Ljava/util/IdentityHashMap<TK;TV;>.IdentityHashMapIterator<TT;>;"
    .local p1, "this$0":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    .line 718
    iput-object p1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 719
    iget-object v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    #@8
    invoke-static {v1}, Ljava/util/IdentityHashMap;->-get1(Ljava/util/IdentityHashMap;)I

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    :goto_0
    iput v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->index:I

    #@10
    .line 720
    iget-object v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    #@12
    invoke-static {v0}, Ljava/util/IdentityHashMap;->-get0(Ljava/util/IdentityHashMap;)I

    #@15
    move-result v0

    #@16
    iput v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->expectedModCount:I

    #@18
    .line 721
    const/4 v0, -0x1

    #@19
    iput v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->lastReturnedIndex:I

    #@1b
    .line 723
    iget-object v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    #@1d
    invoke-static {v0}, Ljava/util/IdentityHashMap;->-get2(Ljava/util/IdentityHashMap;)[Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    iput-object v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->traversalTable:[Ljava/lang/Object;

    #@23
    .line 718
    return-void

    #@24
    .line 719
    :cond_0
    iget-object v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    #@26
    invoke-static {v0}, Ljava/util/IdentityHashMap;->-get2(Ljava/util/IdentityHashMap;)[Ljava/lang/Object;

    #@29
    move-result-object v0

    #@2a
    array-length v0, v0

    #@2b
    goto :goto_0
.end method

.method synthetic constructor <init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap$IdentityHashMapIterator;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/IdentityHashMap;

    #@0
    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap$IdentityHashMapIterator;, "Ljava/util/IdentityHashMap<TK;TV;>.IdentityHashMapIterator<TT;>;"
    invoke-direct {p0, p1}, Ljava/util/IdentityHashMap$IdentityHashMapIterator;-><init>(Ljava/util/IdentityHashMap;)V

    #@3
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 5

    #@0
    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap$IdentityHashMapIterator;, "Ljava/util/IdentityHashMap<TK;TV;>.IdentityHashMapIterator<TT;>;"
    const/4 v4, 0x1

    #@1
    .line 726
    iget-object v2, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->traversalTable:[Ljava/lang/Object;

    #@3
    .line 727
    .local v2, "tab":[Ljava/lang/Object;
    iget v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->index:I

    #@5
    .local v0, "i":I
    :goto_0
    array-length v3, v2

    #@6
    if-ge v0, v3, :cond_1

    #@8
    .line 728
    aget-object v1, v2, v0

    #@a
    .line 729
    .local v1, "key":Ljava/lang/Object;
    if-eqz v1, :cond_0

    #@c
    .line 730
    iput v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->index:I

    #@e
    .line 731
    iput-boolean v4, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->indexValid:Z

    #@10
    return v4

    #@11
    .line 727
    :cond_0
    add-int/lit8 v0, v0, 0x2

    #@13
    goto :goto_0

    #@14
    .line 734
    .end local v1    # "key":Ljava/lang/Object;
    :cond_1
    array-length v3, v2

    #@15
    iput v3, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->index:I

    #@17
    .line 735
    const/4 v3, 0x0

    #@18
    return v3
.end method

.method protected nextIndex()I
    .locals 2

    #@0
    .prologue
    .line 739
    .local p0, "this":Ljava/util/IdentityHashMap$IdentityHashMapIterator;, "Ljava/util/IdentityHashMap<TK;TV;>.IdentityHashMapIterator<TT;>;"
    iget-object v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    #@2
    invoke-static {v0}, Ljava/util/IdentityHashMap;->-get0(Ljava/util/IdentityHashMap;)I

    #@5
    move-result v0

    #@6
    iget v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->expectedModCount:I

    #@8
    if-eq v0, v1, :cond_0

    #@a
    .line 740
    new-instance v0, Ljava/util/ConcurrentModificationException;

    #@c
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@f
    throw v0

    #@10
    .line 741
    :cond_0
    iget-boolean v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->indexValid:Z

    #@12
    if-nez v0, :cond_1

    #@14
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->hasNext()Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_2

    #@1a
    .line 744
    :cond_1
    const/4 v0, 0x0

    #@1b
    iput-boolean v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->indexValid:Z

    #@1d
    .line 745
    iget v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->index:I

    #@1f
    iput v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->lastReturnedIndex:I

    #@21
    .line 746
    iget v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->index:I

    #@23
    add-int/lit8 v0, v0, 0x2

    #@25
    iput v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->index:I

    #@27
    .line 747
    iget v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->lastReturnedIndex:I

    #@29
    return v0

    #@2a
    .line 742
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    #@2c
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@2f
    throw v0
.end method

.method public remove()V
    .locals 15

    #@0
    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap$IdentityHashMapIterator;, "Ljava/util/IdentityHashMap<TK;TV;>.IdentityHashMapIterator<TT;>;"
    const/4 v14, -0x1

    #@1
    const/4 v13, 0x0

    #@2
    const/4 v12, 0x0

    #@3
    .line 751
    iget v10, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->lastReturnedIndex:I

    #@5
    if-ne v10, v14, :cond_0

    #@7
    .line 752
    new-instance v10, Ljava/lang/IllegalStateException;

    #@9
    invoke-direct {v10}, Ljava/lang/IllegalStateException;-><init>()V

    #@c
    throw v10

    #@d
    .line 753
    :cond_0
    iget-object v10, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    #@f
    invoke-static {v10}, Ljava/util/IdentityHashMap;->-get0(Ljava/util/IdentityHashMap;)I

    #@12
    move-result v10

    #@13
    iget v11, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->expectedModCount:I

    #@15
    if-eq v10, v11, :cond_1

    #@17
    .line 754
    new-instance v10, Ljava/util/ConcurrentModificationException;

    #@19
    invoke-direct {v10}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@1c
    throw v10

    #@1d
    .line 756
    :cond_1
    iget-object v10, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    #@1f
    invoke-static {v10}, Ljava/util/IdentityHashMap;->-get0(Ljava/util/IdentityHashMap;)I

    #@22
    move-result v11

    #@23
    add-int/lit8 v11, v11, 0x1

    #@25
    invoke-static {v10, v11}, Ljava/util/IdentityHashMap;->-set0(Ljava/util/IdentityHashMap;I)I

    #@28
    move-result v10

    #@29
    iput v10, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->expectedModCount:I

    #@2b
    .line 757
    iget v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->lastReturnedIndex:I

    #@2d
    .line 758
    .local v1, "deletedSlot":I
    iput v14, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->lastReturnedIndex:I

    #@2f
    .line 760
    iput v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->index:I

    #@31
    .line 761
    iput-boolean v13, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->indexValid:Z

    #@33
    .line 775
    iget-object v9, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->traversalTable:[Ljava/lang/Object;

    #@35
    .line 776
    .local v9, "tab":[Ljava/lang/Object;
    array-length v5, v9

    #@36
    .line 778
    .local v5, "len":I
    move v0, v1

    #@37
    .line 779
    .local v0, "d":I
    aget-object v4, v9, v1

    #@39
    .line 780
    .local v4, "key":Ljava/lang/Object;
    aput-object v12, v9, v1

    #@3b
    .line 781
    add-int/lit8 v10, v1, 0x1

    #@3d
    aput-object v12, v9, v10

    #@3f
    .line 785
    iget-object v10, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    #@41
    invoke-static {v10}, Ljava/util/IdentityHashMap;->-get2(Ljava/util/IdentityHashMap;)[Ljava/lang/Object;

    #@44
    move-result-object v10

    #@45
    if-eq v9, v10, :cond_2

    #@47
    .line 786
    iget-object v10, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    #@49
    invoke-virtual {v10, v4}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@4c
    .line 787
    iget-object v10, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    #@4e
    invoke-static {v10}, Ljava/util/IdentityHashMap;->-get0(Ljava/util/IdentityHashMap;)I

    #@51
    move-result v10

    #@52
    iput v10, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->expectedModCount:I

    #@54
    .line 788
    return-void

    #@55
    .line 791
    :cond_2
    iget-object v10, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    #@57
    invoke-static {v10}, Ljava/util/IdentityHashMap;->-get1(Ljava/util/IdentityHashMap;)I

    #@5a
    move-result v11

    #@5b
    add-int/lit8 v11, v11, -0x1

    #@5d
    invoke-static {v10, v11}, Ljava/util/IdentityHashMap;->-set1(Ljava/util/IdentityHashMap;I)I

    #@60
    .line 794
    invoke-static {v1, v5}, Ljava/util/IdentityHashMap;->-wrap3(II)I

    #@63
    move-result v2

    #@64
    .local v2, "i":I
    :goto_0
    aget-object v3, v9, v2

    #@66
    .local v3, "item":Ljava/lang/Object;
    if-eqz v3, :cond_7

    #@68
    .line 796
    invoke-static {v3, v5}, Ljava/util/IdentityHashMap;->-wrap2(Ljava/lang/Object;I)I

    #@6b
    move-result v7

    #@6c
    .line 798
    .local v7, "r":I
    if-ge v2, v7, :cond_6

    #@6e
    if-le v7, v0, :cond_3

    #@70
    if-gt v0, v2, :cond_6

    #@72
    .line 808
    :cond_3
    :goto_1
    if-ge v2, v1, :cond_4

    #@74
    if-lt v0, v1, :cond_4

    #@76
    .line 809
    iget-object v10, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->traversalTable:[Ljava/lang/Object;

    #@78
    iget-object v11, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    #@7a
    invoke-static {v11}, Ljava/util/IdentityHashMap;->-get2(Ljava/util/IdentityHashMap;)[Ljava/lang/Object;

    #@7d
    move-result-object v11

    #@7e
    if-ne v10, v11, :cond_4

    #@80
    .line 810
    sub-int v8, v5, v1

    #@82
    .line 811
    .local v8, "remaining":I
    new-array v6, v8, [Ljava/lang/Object;

    #@84
    .line 812
    .local v6, "newTable":[Ljava/lang/Object;
    invoke-static {v9, v1, v6, v13, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@87
    .line 814
    iput-object v6, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->traversalTable:[Ljava/lang/Object;

    #@89
    .line 815
    iput v13, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->index:I

    #@8b
    .line 818
    .end local v6    # "newTable":[Ljava/lang/Object;
    .end local v8    # "remaining":I
    :cond_4
    aput-object v3, v9, v0

    #@8d
    .line 819
    add-int/lit8 v10, v0, 0x1

    #@8f
    add-int/lit8 v11, v2, 0x1

    #@91
    aget-object v11, v9, v11

    #@93
    aput-object v11, v9, v10

    #@95
    .line 820
    aput-object v12, v9, v2

    #@97
    .line 821
    add-int/lit8 v10, v2, 0x1

    #@99
    aput-object v12, v9, v10

    #@9b
    .line 822
    move v0, v2

    #@9c
    .line 795
    :cond_5
    invoke-static {v2, v5}, Ljava/util/IdentityHashMap;->-wrap3(II)I

    #@9f
    move-result v2

    #@a0
    goto :goto_0

    #@a1
    .line 799
    :cond_6
    if-gt v7, v0, :cond_5

    #@a3
    if-gt v0, v2, :cond_5

    #@a5
    goto :goto_1

    #@a6
    .line 750
    .end local v7    # "r":I
    :cond_7
    return-void
.end method
