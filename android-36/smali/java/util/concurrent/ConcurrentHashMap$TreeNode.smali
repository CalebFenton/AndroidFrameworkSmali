.class final Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
.super Ljava/util/concurrent/ConcurrentHashMap$Node;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TreeNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentHashMap$Node<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field greylist-max-o left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field greylist-max-o parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field greylist-max-o prev:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field greylist-max-o red:Z

.field greylist-max-o right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V
    .registers 6
    .param p1, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;",
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 2727
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "val":Ljava/lang/Object;, "TV;"
    .local p4, "next":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p5, "parent":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 2728
    iput-object p5, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2729
    return-void
.end method


# virtual methods
.method greylist-max-o find(ILjava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$Node;
    .registers 4
    .param p1, "h"    # I
    .param p2, "k"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2732
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v0

    return-object v0
.end method

.method final greylist-max-o findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    .registers 11
    .param p1, "h"    # I
    .param p2, "k"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2740
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local p3, "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p2, :cond_4c

    .line 2741
    move-object v0, p0

    .line 2744
    .local v0, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_3
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .local v1, "pl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2745
    .local v2, "pr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget v3, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->hash:I

    move v4, v3

    .local v4, "ph":I
    if-le v3, p1, :cond_e

    .line 2746
    move-object v0, v1

    goto :goto_48

    .line 2747
    :cond_e
    if-ge v4, p1, :cond_12

    .line 2748
    move-object v0, v2

    goto :goto_48

    .line 2749
    :cond_12
    iget-object v3, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->key:Ljava/lang/Object;

    move-object v5, v3

    .local v5, "pk":Ljava/lang/Object;, "TK;"
    if-eq v3, p2, :cond_4b

    if-eqz v5, :cond_20

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    goto :goto_4b

    .line 2751
    :cond_20
    if-nez v1, :cond_24

    .line 2752
    move-object v0, v2

    goto :goto_48

    .line 2753
    :cond_24
    if-nez v2, :cond_28

    .line 2754
    move-object v0, v1

    goto :goto_48

    .line 2755
    :cond_28
    if-nez p3, :cond_31

    .line 2756
    invoke-static {p2}, Ljava/util/concurrent/ConcurrentHashMap;->comparableClassFor(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v3

    move-object p3, v3

    if-eqz v3, :cond_3f

    .line 2757
    :cond_31
    invoke-static {p3, p2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->compareComparables(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    move v6, v3

    .local v6, "dir":I
    if-eqz v3, :cond_3f

    .line 2758
    if-gez v6, :cond_3c

    move-object v3, v1

    goto :goto_3d

    :cond_3c
    move-object v3, v2

    :goto_3d
    move-object v0, v3

    .end local v0    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local v3, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    goto :goto_48

    .line 2759
    .end local v3    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v6    # "dir":I
    .restart local v0    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_3f
    invoke-virtual {v2, p1, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v3

    move-object v6, v3

    .local v6, "q":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v3, :cond_47

    .line 2760
    return-object v6

    .line 2762
    :cond_47
    move-object v0, v1

    .line 2763
    .end local v1    # "pl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v2    # "pr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v4    # "ph":I
    .end local v5    # "pk":Ljava/lang/Object;, "TK;"
    .end local v6    # "q":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :goto_48
    if-nez v0, :cond_3

    goto :goto_4c

    .line 2750
    .restart local v1    # "pl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v2    # "pr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v4    # "ph":I
    .restart local v5    # "pk":Ljava/lang/Object;, "TK;"
    :cond_4b
    :goto_4b
    return-object v0

    .line 2765
    .end local v0    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v1    # "pl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v2    # "pr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v4    # "ph":I
    .end local v5    # "pk":Ljava/lang/Object;, "TK;"
    :cond_4c
    :goto_4c
    const/4 v0, 0x0

    return-object v0
.end method
