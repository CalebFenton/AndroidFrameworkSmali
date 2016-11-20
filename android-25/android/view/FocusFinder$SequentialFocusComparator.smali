.class final Landroid/view/FocusFinder$SequentialFocusComparator;
.super Ljava/lang/Object;
.source "FocusFinder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/FocusFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SequentialFocusComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFirstRect:Landroid/graphics/Rect;

.field private final mFocusables:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mHeadsOfChains:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsConnectedTo:Landroid/util/SparseBooleanArray;

.field private mIsLayoutRtl:Z

.field private mRoot:Landroid/view/ViewGroup;

.field private final mSecondRect:Landroid/graphics/Rect;


# direct methods
.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 617
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 618
    new-instance v0, Landroid/graphics/Rect;

    #@5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v0, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mFirstRect:Landroid/graphics/Rect;

    #@a
    .line 619
    new-instance v0, Landroid/graphics/Rect;

    #@c
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@f
    iput-object v0, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mSecondRect:Landroid/graphics/Rect;

    #@11
    .line 622
    new-instance v0, Landroid/util/SparseArray;

    #@13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@16
    iput-object v0, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mFocusables:Landroid/util/SparseArray;

    #@18
    .line 623
    new-instance v0, Landroid/util/SparseBooleanArray;

    #@1a
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    #@1d
    iput-object v0, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mIsConnectedTo:Landroid/util/SparseBooleanArray;

    #@1f
    .line 624
    new-instance v0, Landroid/util/ArrayMap;

    #@21
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@24
    iput-object v0, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mHeadsOfChains:Landroid/util/ArrayMap;

    #@26
    .line 617
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/FocusFinder$SequentialFocusComparator;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/view/FocusFinder$SequentialFocusComparator;-><init>()V

    #@3
    return-void
.end method

.method private getRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 735
    invoke-virtual {p1, p2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    #@3
    .line 736
    iget-object v0, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mRoot:Landroid/view/ViewGroup;

    #@5
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    #@8
    .line 734
    return-void
.end method

.method private setHeadOfChain(Landroid/view/View;)V
    .locals 4
    .param p1, "head"    # Landroid/view/View;

    #@0
    .prologue
    .line 664
    move-object v1, p1

    #@1
    .local v1, "view":Landroid/view/View;
    :goto_0
    if-eqz v1, :cond_2

    #@3
    .line 666
    iget-object v2, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mHeadsOfChains:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/view/View;

    #@b
    .line 667
    .local v0, "otherHead":Landroid/view/View;
    if-eqz v0, :cond_1

    #@d
    .line 668
    if-ne v0, p1, :cond_0

    #@f
    .line 669
    return-void

    #@10
    .line 673
    :cond_0
    move-object v1, p1

    #@11
    .line 674
    move-object p1, v0

    #@12
    .line 676
    :cond_1
    iget-object v2, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mHeadsOfChains:Landroid/util/ArrayMap;

    #@14
    invoke-virtual {v2, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    .line 665
    iget-object v2, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mFocusables:Landroid/util/SparseArray;

    #@19
    invoke-virtual {v1}, Landroid/view/View;->getNextFocusForwardId()I

    #@1c
    move-result v3

    #@1d
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    .end local v1    # "view":Landroid/view/View;
    check-cast v1, Landroid/view/View;

    #@23
    .restart local v1    # "view":Landroid/view/View;
    goto :goto_0

    #@24
    .line 663
    .end local v0    # "otherHead":Landroid/view/View;
    :cond_2
    return-void
.end method


# virtual methods
.method public compare(Landroid/view/View;Landroid/view/View;)I
    .locals 7
    .param p1, "first"    # Landroid/view/View;
    .param p2, "second"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    const/4 v3, -0x1

    #@3
    .line 681
    if-ne p1, p2, :cond_0

    #@5
    .line 682
    return v6

    #@6
    .line 686
    :cond_0
    iget-object v4, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mHeadsOfChains:Landroid/util/ArrayMap;

    #@8
    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Landroid/view/View;

    #@e
    .line 687
    .local v0, "firstHead":Landroid/view/View;
    iget-object v4, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mHeadsOfChains:Landroid/util/ArrayMap;

    #@10
    invoke-virtual {v4, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Landroid/view/View;

    #@16
    .line 688
    .local v1, "secondHead":Landroid/view/View;
    if-ne v0, v1, :cond_4

    #@18
    if-eqz v0, :cond_4

    #@1a
    .line 689
    if-ne p1, v0, :cond_1

    #@1c
    .line 690
    return v3

    #@1d
    .line 691
    :cond_1
    if-ne p2, v0, :cond_2

    #@1f
    .line 692
    return v2

    #@20
    .line 693
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getNextFocusForwardId()I

    #@23
    move-result v4

    #@24
    invoke-static {v4}, Landroid/view/FocusFinder;->-wrap0(I)Z

    #@27
    move-result v4

    #@28
    if-eqz v4, :cond_3

    #@2a
    .line 694
    return v3

    #@2b
    .line 696
    :cond_3
    return v2

    #@2c
    .line 699
    :cond_4
    if-eqz v0, :cond_5

    #@2e
    .line 700
    move-object p1, v0

    #@2f
    .line 702
    :cond_5
    if-eqz v1, :cond_6

    #@31
    .line 703
    move-object p2, v1

    #@32
    .line 707
    :cond_6
    iget-object v4, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mFirstRect:Landroid/graphics/Rect;

    #@34
    invoke-direct {p0, p1, v4}, Landroid/view/FocusFinder$SequentialFocusComparator;->getRect(Landroid/view/View;Landroid/graphics/Rect;)V

    #@37
    .line 708
    iget-object v4, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mSecondRect:Landroid/graphics/Rect;

    #@39
    invoke-direct {p0, p2, v4}, Landroid/view/FocusFinder$SequentialFocusComparator;->getRect(Landroid/view/View;Landroid/graphics/Rect;)V

    #@3c
    .line 710
    iget-object v4, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mFirstRect:Landroid/graphics/Rect;

    #@3e
    iget v4, v4, Landroid/graphics/Rect;->top:I

    #@40
    iget-object v5, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mSecondRect:Landroid/graphics/Rect;

    #@42
    iget v5, v5, Landroid/graphics/Rect;->top:I

    #@44
    if-ge v4, v5, :cond_7

    #@46
    .line 711
    return v3

    #@47
    .line 712
    :cond_7
    iget-object v4, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mFirstRect:Landroid/graphics/Rect;

    #@49
    iget v4, v4, Landroid/graphics/Rect;->top:I

    #@4b
    iget-object v5, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mSecondRect:Landroid/graphics/Rect;

    #@4d
    iget v5, v5, Landroid/graphics/Rect;->top:I

    #@4f
    if-le v4, v5, :cond_8

    #@51
    .line 713
    return v2

    #@52
    .line 714
    :cond_8
    iget-object v4, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mFirstRect:Landroid/graphics/Rect;

    #@54
    iget v4, v4, Landroid/graphics/Rect;->left:I

    #@56
    iget-object v5, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mSecondRect:Landroid/graphics/Rect;

    #@58
    iget v5, v5, Landroid/graphics/Rect;->left:I

    #@5a
    if-ge v4, v5, :cond_a

    #@5c
    .line 715
    iget-boolean v4, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mIsLayoutRtl:Z

    #@5e
    if-eqz v4, :cond_9

    #@60
    :goto_0
    return v2

    #@61
    :cond_9
    move v2, v3

    #@62
    goto :goto_0

    #@63
    .line 716
    :cond_a
    iget-object v4, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mFirstRect:Landroid/graphics/Rect;

    #@65
    iget v4, v4, Landroid/graphics/Rect;->left:I

    #@67
    iget-object v5, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mSecondRect:Landroid/graphics/Rect;

    #@69
    iget v5, v5, Landroid/graphics/Rect;->left:I

    #@6b
    if-le v4, v5, :cond_c

    #@6d
    .line 717
    iget-boolean v4, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mIsLayoutRtl:Z

    #@6f
    if-eqz v4, :cond_b

    #@71
    :goto_1
    return v3

    #@72
    :cond_b
    move v3, v2

    #@73
    goto :goto_1

    #@74
    .line 718
    :cond_c
    iget-object v4, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mFirstRect:Landroid/graphics/Rect;

    #@76
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    #@78
    iget-object v5, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mSecondRect:Landroid/graphics/Rect;

    #@7a
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    #@7c
    if-ge v4, v5, :cond_d

    #@7e
    .line 719
    return v3

    #@7f
    .line 720
    :cond_d
    iget-object v4, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mFirstRect:Landroid/graphics/Rect;

    #@81
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    #@83
    iget-object v5, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mSecondRect:Landroid/graphics/Rect;

    #@85
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    #@87
    if-le v4, v5, :cond_e

    #@89
    .line 721
    return v2

    #@8a
    .line 722
    :cond_e
    iget-object v4, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mFirstRect:Landroid/graphics/Rect;

    #@8c
    iget v4, v4, Landroid/graphics/Rect;->right:I

    #@8e
    iget-object v5, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mSecondRect:Landroid/graphics/Rect;

    #@90
    iget v5, v5, Landroid/graphics/Rect;->right:I

    #@92
    if-ge v4, v5, :cond_10

    #@94
    .line 723
    iget-boolean v4, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mIsLayoutRtl:Z

    #@96
    if-eqz v4, :cond_f

    #@98
    :goto_2
    return v2

    #@99
    :cond_f
    move v2, v3

    #@9a
    goto :goto_2

    #@9b
    .line 724
    :cond_10
    iget-object v4, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mFirstRect:Landroid/graphics/Rect;

    #@9d
    iget v4, v4, Landroid/graphics/Rect;->right:I

    #@9f
    iget-object v5, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mSecondRect:Landroid/graphics/Rect;

    #@a1
    iget v5, v5, Landroid/graphics/Rect;->right:I

    #@a3
    if-le v4, v5, :cond_12

    #@a5
    .line 725
    iget-boolean v4, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mIsLayoutRtl:Z

    #@a7
    if-eqz v4, :cond_11

    #@a9
    :goto_3
    return v3

    #@aa
    :cond_11
    move v3, v2

    #@ab
    goto :goto_3

    #@ac
    .line 730
    :cond_12
    return v6
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "first"    # Ljava/lang/Object;
    .param p2, "second"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 680
    check-cast p1, Landroid/view/View;

    #@2
    .end local p1    # "first":Ljava/lang/Object;
    check-cast p2, Landroid/view/View;

    #@4
    .end local p2    # "second":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/view/FocusFinder$SequentialFocusComparator;->compare(Landroid/view/View;Landroid/view/View;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public recycle()V
    .locals 1

    #@0
    .prologue
    .line 627
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mRoot:Landroid/view/ViewGroup;

    #@3
    .line 628
    iget-object v0, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mFocusables:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    #@8
    .line 629
    iget-object v0, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mHeadsOfChains:Landroid/util/ArrayMap;

    #@a
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    #@d
    .line 630
    iget-object v0, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mIsConnectedTo:Landroid/util/SparseBooleanArray;

    #@f
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    #@12
    .line 626
    return-void
.end method

.method public setFocusables(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 642
    .local p1, "focusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@3
    move-result v4

    #@4
    add-int/lit8 v0, v4, -0x1

    #@6
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    #@8
    .line 643
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v3

    #@c
    check-cast v3, Landroid/view/View;

    #@e
    .line 644
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    #@11
    move-result v1

    #@12
    .line 645
    .local v1, "id":I
    invoke-static {v1}, Landroid/view/FocusFinder;->-wrap0(I)Z

    #@15
    move-result v4

    #@16
    if-eqz v4, :cond_0

    #@18
    .line 646
    iget-object v4, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mFocusables:Landroid/util/SparseArray;

    #@1a
    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@1d
    .line 648
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getNextFocusForwardId()I

    #@20
    move-result v2

    #@21
    .line 649
    .local v2, "nextId":I
    invoke-static {v2}, Landroid/view/FocusFinder;->-wrap0(I)Z

    #@24
    move-result v4

    #@25
    if-eqz v4, :cond_1

    #@27
    .line 650
    iget-object v4, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mIsConnectedTo:Landroid/util/SparseBooleanArray;

    #@29
    const/4 v5, 0x1

    #@2a
    invoke-virtual {v4, v2, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@2d
    .line 642
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@2f
    goto :goto_0

    #@30
    .line 654
    .end local v1    # "id":I
    .end local v2    # "nextId":I
    .end local v3    # "view":Landroid/view/View;
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@33
    move-result v4

    #@34
    add-int/lit8 v0, v4, -0x1

    #@36
    :goto_1
    if-ltz v0, :cond_5

    #@38
    .line 655
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3b
    move-result-object v3

    #@3c
    check-cast v3, Landroid/view/View;

    #@3e
    .line 656
    .restart local v3    # "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getNextFocusForwardId()I

    #@41
    move-result v2

    #@42
    .line 657
    .restart local v2    # "nextId":I
    invoke-static {v2}, Landroid/view/FocusFinder;->-wrap0(I)Z

    #@45
    move-result v4

    #@46
    if-eqz v4, :cond_3

    #@48
    iget-object v4, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mIsConnectedTo:Landroid/util/SparseBooleanArray;

    #@4a
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    #@4d
    move-result v5

    #@4e
    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@51
    move-result v4

    #@52
    if-eqz v4, :cond_4

    #@54
    .line 654
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, -0x1

    #@56
    goto :goto_1

    #@57
    .line 658
    :cond_4
    invoke-direct {p0, v3}, Landroid/view/FocusFinder$SequentialFocusComparator;->setHeadOfChain(Landroid/view/View;)V

    #@5a
    goto :goto_2

    #@5b
    .line 641
    .end local v2    # "nextId":I
    .end local v3    # "view":Landroid/view/View;
    :cond_5
    return-void
.end method

.method public setIsLayoutRtl(Z)V
    .locals 0
    .param p1, "b"    # Z

    #@0
    .prologue
    .line 638
    iput-boolean p1, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mIsLayoutRtl:Z

    #@2
    .line 637
    return-void
.end method

.method public setRoot(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "root"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 634
    iput-object p1, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mRoot:Landroid/view/ViewGroup;

    #@2
    .line 633
    return-void
.end method
