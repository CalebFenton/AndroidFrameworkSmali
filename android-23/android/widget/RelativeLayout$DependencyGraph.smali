.class Landroid/widget/RelativeLayout$DependencyGraph;
.super Ljava/lang/Object;
.source "RelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DependencyGraph"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RelativeLayout$DependencyGraph$Node;
    }
.end annotation


# instance fields
.field private mKeyNodes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/widget/RelativeLayout$DependencyGraph$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/RelativeLayout$DependencyGraph$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mRoots:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Landroid/widget/RelativeLayout$DependencyGraph$Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/widget/RelativeLayout$DependencyGraph;)Landroid/util/SparseArray;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mKeyNodes:Landroid/util/SparseArray;

    #@2
    return-object v0
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 1639
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1643
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mNodes:Ljava/util/ArrayList;

    #@a
    .line 1649
    new-instance v0, Landroid/util/SparseArray;

    #@c
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@f
    iput-object v0, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mKeyNodes:Landroid/util/SparseArray;

    #@11
    .line 1655
    new-instance v0, Ljava/util/ArrayDeque;

    #@13
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    #@16
    iput-object v0, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mRoots:Ljava/util/ArrayDeque;

    #@18
    .line 1639
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/RelativeLayout$DependencyGraph;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/widget/RelativeLayout$DependencyGraph;-><init>()V

    #@3
    return-void
.end method

.method private findRoots([I)Ljava/util/ArrayDeque;
    .locals 13
    .param p1, "rulesFilter"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/ArrayDeque",
            "<",
            "Landroid/widget/RelativeLayout$DependencyGraph$Node;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1739
    iget-object v4, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mKeyNodes:Landroid/util/SparseArray;

    #@2
    .line 1740
    .local v4, "keyNodes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/widget/RelativeLayout$DependencyGraph$Node;>;"
    iget-object v7, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mNodes:Ljava/util/ArrayList;

    #@4
    .line 1741
    .local v7, "nodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/RelativeLayout$DependencyGraph$Node;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v0

    #@8
    .line 1745
    .local v0, "count":I
    const/4 v2, 0x0

    #@9
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@b
    .line 1746
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v6

    #@f
    check-cast v6, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    #@11
    .line 1747
    .local v6, "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    iget-object v12, v6, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependents:Landroid/util/ArrayMap;

    #@13
    invoke-virtual {v12}, Landroid/util/ArrayMap;->clear()V

    #@16
    .line 1748
    iget-object v12, v6, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependencies:Landroid/util/SparseArray;

    #@18
    invoke-virtual {v12}, Landroid/util/SparseArray;->clear()V

    #@1b
    .line 1745
    add-int/lit8 v2, v2, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 1752
    .end local v6    # "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    :cond_0
    const/4 v2, 0x0

    #@1f
    :goto_1
    if-ge v2, v0, :cond_4

    #@21
    .line 1753
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v6

    #@25
    check-cast v6, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    #@27
    .line 1755
    .restart local v6    # "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    iget-object v12, v6, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    #@29
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@2c
    move-result-object v5

    #@2d
    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    #@2f
    .line 1756
    .local v5, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v5}, Landroid/widget/RelativeLayout$LayoutParams;->-get3(Landroid/widget/RelativeLayout$LayoutParams;)[I

    #@32
    move-result-object v10

    #@33
    .line 1757
    .local v10, "rules":[I
    array-length v11, p1

    #@34
    .line 1761
    .local v11, "rulesCount":I
    const/4 v3, 0x0

    #@35
    .local v3, "j":I
    :goto_2
    if-ge v3, v11, :cond_3

    #@37
    .line 1762
    aget v12, p1, v3

    #@39
    aget v9, v10, v12

    #@3b
    .line 1763
    .local v9, "rule":I
    if-lez v9, :cond_1

    #@3d
    .line 1765
    invoke-virtual {v4, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@40
    move-result-object v1

    #@41
    check-cast v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    #@43
    .line 1767
    .local v1, "dependency":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    if-eqz v1, :cond_1

    #@45
    if-ne v1, v6, :cond_2

    #@47
    .line 1761
    .end local v1    # "dependency":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    :cond_1
    :goto_3
    add-int/lit8 v3, v3, 0x1

    #@49
    goto :goto_2

    #@4a
    .line 1771
    .restart local v1    # "dependency":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    :cond_2
    iget-object v12, v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependents:Landroid/util/ArrayMap;

    #@4c
    invoke-virtual {v12, v6, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4f
    .line 1773
    iget-object v12, v6, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependencies:Landroid/util/SparseArray;

    #@51
    invoke-virtual {v12, v9, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@54
    goto :goto_3

    #@55
    .line 1752
    .end local v1    # "dependency":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    .end local v9    # "rule":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@57
    goto :goto_1

    #@58
    .line 1778
    .end local v3    # "j":I
    .end local v5    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v6    # "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    .end local v10    # "rules":[I
    .end local v11    # "rulesCount":I
    :cond_4
    iget-object v8, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mRoots:Ljava/util/ArrayDeque;

    #@5a
    .line 1779
    .local v8, "roots":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/widget/RelativeLayout$DependencyGraph$Node;>;"
    invoke-virtual {v8}, Ljava/util/ArrayDeque;->clear()V

    #@5d
    .line 1782
    const/4 v2, 0x0

    #@5e
    :goto_4
    if-ge v2, v0, :cond_6

    #@60
    .line 1783
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@63
    move-result-object v6

    #@64
    check-cast v6, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    #@66
    .line 1784
    .restart local v6    # "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    iget-object v12, v6, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependencies:Landroid/util/SparseArray;

    #@68
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    #@6b
    move-result v12

    #@6c
    if-nez v12, :cond_5

    #@6e
    invoke-virtual {v8, v6}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    #@71
    .line 1782
    :cond_5
    add-int/lit8 v2, v2, 0x1

    #@73
    goto :goto_4

    #@74
    .line 1787
    .end local v6    # "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    :cond_6
    return-object v8
.end method


# virtual methods
.method add(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 1679
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    #@3
    move-result v0

    #@4
    .line 1680
    .local v0, "id":I
    invoke-static {p1}, Landroid/widget/RelativeLayout$DependencyGraph$Node;->acquire(Landroid/view/View;)Landroid/widget/RelativeLayout$DependencyGraph$Node;

    #@7
    move-result-object v1

    #@8
    .line 1682
    .local v1, "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    const/4 v2, -0x1

    #@9
    if-eq v0, v2, :cond_0

    #@b
    .line 1683
    iget-object v2, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mKeyNodes:Landroid/util/SparseArray;

    #@d
    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@10
    .line 1686
    :cond_0
    iget-object v2, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mNodes:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@15
    .line 1678
    return-void
.end method

.method clear()V
    .locals 4

    #@0
    .prologue
    .line 1661
    iget-object v2, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mNodes:Ljava/util/ArrayList;

    #@2
    .line 1662
    .local v2, "nodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/RelativeLayout$DependencyGraph$Node;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 1664
    .local v0, "count":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@9
    .line 1665
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v3

    #@d
    check-cast v3, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    #@f
    invoke-virtual {v3}, Landroid/widget/RelativeLayout$DependencyGraph$Node;->release()V

    #@12
    .line 1664
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_0

    #@15
    .line 1667
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    #@18
    .line 1669
    iget-object v3, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mKeyNodes:Landroid/util/SparseArray;

    #@1a
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    #@1d
    .line 1670
    iget-object v3, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mRoots:Ljava/util/ArrayDeque;

    #@1f
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->clear()V

    #@22
    .line 1660
    return-void
.end method

.method varargs getSortedViews([Landroid/view/View;[I)V
    .locals 13
    .param p1, "sorted"    # [Landroid/view/View;
    .param p2, "rules"    # [I

    #@0
    .prologue
    .line 1700
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout$DependencyGraph;->findRoots([I)Ljava/util/ArrayDeque;

    #@3
    move-result-object v9

    #@4
    .line 1701
    .local v9, "roots":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/widget/RelativeLayout$DependencyGraph$Node;>;"
    const/4 v5, 0x0

    #@5
    .line 1704
    .local v5, "index":I
    :goto_0
    invoke-virtual {v9}, Ljava/util/ArrayDeque;->pollLast()Ljava/lang/Object;

    #@8
    move-result-object v8

    #@9
    check-cast v8, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    #@b
    .local v8, "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    if-eqz v8, :cond_2

    #@d
    .line 1705
    iget-object v10, v8, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    #@f
    .line 1706
    .local v10, "view":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getId()I

    #@12
    move-result v7

    #@13
    .line 1708
    .local v7, "key":I
    add-int/lit8 v6, v5, 0x1

    #@15
    .end local v5    # "index":I
    .local v6, "index":I
    aput-object v10, p1, v5

    #@17
    .line 1710
    iget-object v3, v8, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependents:Landroid/util/ArrayMap;

    #@19
    .line 1711
    .local v3, "dependents":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/widget/RelativeLayout$DependencyGraph$Node;Landroid/widget/RelativeLayout$DependencyGraph;>;"
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@1c
    move-result v0

    #@1d
    .line 1712
    .local v0, "count":I
    const/4 v4, 0x0

    #@1e
    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_1

    #@20
    .line 1713
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@23
    move-result-object v2

    #@24
    check-cast v2, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    #@26
    .line 1714
    .local v2, "dependent":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    iget-object v1, v2, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependencies:Landroid/util/SparseArray;

    #@28
    .line 1716
    .local v1, "dependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/widget/RelativeLayout$DependencyGraph$Node;>;"
    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->remove(I)V

    #@2b
    .line 1717
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    #@2e
    move-result v11

    #@2f
    if-nez v11, :cond_0

    #@31
    .line 1718
    invoke-virtual {v9, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    #@34
    .line 1712
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@36
    goto :goto_1

    #@37
    .end local v1    # "dependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/widget/RelativeLayout$DependencyGraph$Node;>;"
    .end local v2    # "dependent":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    :cond_1
    move v5, v6

    #@38
    .end local v6    # "index":I
    .restart local v5    # "index":I
    goto :goto_0

    #@39
    .line 1723
    .end local v0    # "count":I
    .end local v3    # "dependents":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/widget/RelativeLayout$DependencyGraph$Node;Landroid/widget/RelativeLayout$DependencyGraph;>;"
    .end local v4    # "i":I
    .end local v7    # "key":I
    .end local v10    # "view":Landroid/view/View;
    :cond_2
    array-length v11, p1

    #@3a
    if-ge v5, v11, :cond_3

    #@3c
    .line 1724
    new-instance v11, Ljava/lang/IllegalStateException;

    #@3e
    const-string/jumbo v12, "Circular dependencies cannot exist in RelativeLayout"

    #@41
    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@44
    throw v11

    #@45
    .line 1699
    :cond_3
    return-void
.end method
