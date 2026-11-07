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
.field private greylist-max-o mKeyNodes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/widget/RelativeLayout$DependencyGraph$Node;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/RelativeLayout$DependencyGraph$Node;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mRoots:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/widget/RelativeLayout$DependencyGraph$Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmKeyNodes(Landroid/widget/RelativeLayout$DependencyGraph;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mKeyNodes:Landroid/util/SparseArray;

    return-object p0
.end method

.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 1871
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1875
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mNodes:Ljava/util/ArrayList;

    .line 1881
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mKeyNodes:Landroid/util/SparseArray;

    .line 1887
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mRoots:Ljava/util/ArrayDeque;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/RelativeLayout-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/widget/RelativeLayout$DependencyGraph;-><init>()V

    return-void
.end method

.method private greylist-max-o findRoots([I)Ljava/util/ArrayDeque;
    .registers 14
    .param p1, "rulesFilter"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/ArrayDeque<",
            "Landroid/widget/RelativeLayout$DependencyGraph$Node;",
            ">;"
        }
    .end annotation

    .line 1971
    iget-object v0, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mKeyNodes:Landroid/util/SparseArray;

    .line 1972
    .local v0, "keyNodes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/widget/RelativeLayout$DependencyGraph$Node;>;"
    iget-object v1, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mNodes:Ljava/util/ArrayList;

    .line 1973
    .local v1, "nodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/RelativeLayout$DependencyGraph$Node;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1977
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    if-ge v3, v2, :cond_1e

    .line 1978
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 1979
    .local v4, "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    iget-object v5, v4, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependents:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->clear()V

    .line 1980
    iget-object v5, v4, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependencies:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 1977
    .end local v4    # "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1984
    .end local v3    # "i":I
    :cond_1e
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1f
    if-ge v3, v2, :cond_5e

    .line 1985
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 1987
    .restart local v4    # "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    iget-object v5, v4, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1988
    .local v5, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v5}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRules(Landroid/widget/RelativeLayout$LayoutParams;)[I

    move-result-object v6

    .line 1989
    .local v6, "rules":[I
    array-length v7, p1

    .line 1993
    .local v7, "rulesCount":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_35
    if-ge v8, v7, :cond_5b

    .line 1994
    aget v9, p1, v8

    aget v9, v6, v9

    .line 1995
    .local v9, "rule":I
    if-gtz v9, :cond_43

    invoke-static {v9}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v10

    if-eqz v10, :cond_58

    .line 1997
    :cond_43
    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 1999
    .local v10, "dependency":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    if-eqz v10, :cond_58

    if-ne v10, v4, :cond_4e

    .line 2000
    goto :goto_58

    .line 2003
    :cond_4e
    iget-object v11, v10, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependents:Landroid/util/ArrayMap;

    invoke-virtual {v11, v4, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2005
    iget-object v11, v4, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependencies:Landroid/util/SparseArray;

    invoke-virtual {v11, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1993
    .end local v9    # "rule":I
    .end local v10    # "dependency":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    :cond_58
    :goto_58
    add-int/lit8 v8, v8, 0x1

    goto :goto_35

    .line 1984
    .end local v4    # "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    .end local v5    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v6    # "rules":[I
    .end local v7    # "rulesCount":I
    .end local v8    # "j":I
    :cond_5b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 2010
    .end local v3    # "i":I
    :cond_5e
    iget-object v3, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mRoots:Ljava/util/ArrayDeque;

    .line 2011
    .local v3, "roots":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/widget/RelativeLayout$DependencyGraph$Node;>;"
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->clear()V

    .line 2014
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_64
    if-ge v4, v2, :cond_7a

    .line 2015
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 2016
    .local v5, "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    iget-object v6, v5, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependencies:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-nez v6, :cond_77

    invoke-virtual {v3, v5}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 2014
    .end local v5    # "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    :cond_77
    add-int/lit8 v4, v4, 0x1

    goto :goto_64

    .line 2019
    .end local v4    # "i":I
    :cond_7a
    return-object v3
.end method


# virtual methods
.method greylist-max-o add(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 1911
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1912
    .local v0, "id":I
    invoke-static {p1}, Landroid/widget/RelativeLayout$DependencyGraph$Node;->acquire(Landroid/view/View;)Landroid/widget/RelativeLayout$DependencyGraph$Node;

    move-result-object v1

    .line 1914
    .local v1, "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    const/4 v2, -0x1

    if-eq v0, v2, :cond_10

    .line 1915
    iget-object v2, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mKeyNodes:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1918
    :cond_10
    iget-object v2, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1919
    return-void
.end method

.method greylist-max-o clear()V
    .registers 5

    .line 1893
    iget-object v0, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mNodes:Ljava/util/ArrayList;

    .line 1894
    .local v0, "nodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/RelativeLayout$DependencyGraph$Node;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1896
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v1, :cond_15

    .line 1897
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout$DependencyGraph$Node;->release()V

    .line 1896
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1899
    .end local v2    # "i":I
    :cond_15
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1901
    iget-object v2, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mKeyNodes:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 1902
    iget-object v2, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mRoots:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    .line 1903
    return-void
.end method

.method varargs blacklist getSortedViews([Landroid/view/View;[I)V
    .registers 14
    .param p1, "sorted"    # [Landroid/view/View;
    .param p2, "rules"    # [I

    .line 1932
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout$DependencyGraph;->findRoots([I)Ljava/util/ArrayDeque;

    move-result-object v0

    .line 1933
    .local v0, "roots":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/widget/RelativeLayout$DependencyGraph$Node;>;"
    const/4 v1, 0x0

    .line 1936
    .local v1, "index":I
    :goto_5
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    move-object v3, v2

    .local v3, "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    if-eqz v2, :cond_3a

    .line 1937
    iget-object v2, v3, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    .line 1938
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    .line 1940
    .local v4, "key":I
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "index":I
    .local v5, "index":I
    aput-object v2, p1, v1

    .line 1942
    iget-object v1, v3, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependents:Landroid/util/ArrayMap;

    .line 1943
    .local v1, "dependents":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/widget/RelativeLayout$DependencyGraph$Node;Landroid/widget/RelativeLayout$DependencyGraph;>;"
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 1944
    .local v6, "count":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1f
    if-ge v7, v6, :cond_38

    .line 1945
    invoke-virtual {v1, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 1946
    .local v8, "dependent":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    iget-object v9, v8, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependencies:Landroid/util/SparseArray;

    .line 1948
    .local v9, "dependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/widget/RelativeLayout$DependencyGraph$Node;>;"
    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 1949
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-nez v10, :cond_35

    .line 1950
    invoke-virtual {v0, v8}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 1944
    .end local v8    # "dependent":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    .end local v9    # "dependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/widget/RelativeLayout$DependencyGraph$Node;>;"
    :cond_35
    add-int/lit8 v7, v7, 0x1

    goto :goto_1f

    .line 1953
    .end local v1    # "dependents":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/widget/RelativeLayout$DependencyGraph$Node;Landroid/widget/RelativeLayout$DependencyGraph;>;"
    .end local v2    # "view":Landroid/view/View;
    .end local v4    # "key":I
    .end local v6    # "count":I
    .end local v7    # "i":I
    :cond_38
    move v1, v5

    goto :goto_5

    .line 1955
    .end local v5    # "index":I
    .local v1, "index":I
    :cond_3a
    array-length v2, p1

    if-lt v1, v2, :cond_3e

    .line 1959
    return-void

    .line 1956
    :cond_3e
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "Circular dependencies cannot exist in RelativeLayout"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
