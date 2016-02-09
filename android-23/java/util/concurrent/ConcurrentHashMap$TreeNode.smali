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
        "Ljava/util/concurrent/ConcurrentHashMap$Node",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field prev:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field red:Z

.field right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V
    .locals 0
    .param p1, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1922
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.TreeNode<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "val":Ljava/lang/Object;, "TV;"
    .local p4, "next":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p5, "parent":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    #@3
    .line 1923
    iput-object p5, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@5
    .line 1921
    return-void
.end method


# virtual methods
.method find(ILjava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$Node;
    .locals 1
    .param p1, "h"    # I
    .param p2, "k"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1927
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.TreeNode<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method final findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    .locals 9
    .param p1, "h"    # I
    .param p2, "k"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.TreeNode<TK;TV;>;"
    .local p3, "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v8, 0x0

    #@1
    .line 1935
    if-eqz p2, :cond_1

    #@3
    .line 1936
    move-object v1, p0

    #@4
    .line 1939
    .local v1, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_0
    iget-object v4, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@6
    .local v4, "pl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v5, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@8
    .line 1940
    .local v5, "pr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget v2, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->hash:I

    #@a
    .local v2, "ph":I
    if-le v2, p1, :cond_2

    #@c
    .line 1941
    move-object v1, v4

    #@d
    .line 1958
    :goto_0
    if-nez v1, :cond_0

    #@f
    .line 1960
    .end local v1    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v2    # "ph":I
    .end local v4    # "pl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v5    # "pr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_1
    return-object v8

    #@10
    .line 1942
    .restart local v1    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v2    # "ph":I
    .restart local v4    # "pl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v5    # "pr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_2
    if-ge v2, p1, :cond_3

    #@12
    .line 1943
    move-object v1, v5

    #@13
    goto :goto_0

    #@14
    .line 1944
    :cond_3
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->key:Ljava/lang/Object;

    #@16
    .local v3, "pk":Ljava/lang/Object;, "TK;"
    if-eq v3, p2, :cond_4

    #@18
    if-eqz v3, :cond_5

    #@1a
    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v7

    #@1e
    if-eqz v7, :cond_5

    #@20
    .line 1945
    :cond_4
    return-object v1

    #@21
    .line 1946
    :cond_5
    if-nez v4, :cond_6

    #@23
    .line 1947
    move-object v1, v5

    #@24
    goto :goto_0

    #@25
    .line 1948
    :cond_6
    if-nez v5, :cond_7

    #@27
    .line 1949
    move-object v1, v4

    #@28
    goto :goto_0

    #@29
    .line 1950
    :cond_7
    if-nez p3, :cond_8

    #@2b
    .line 1951
    invoke-static {p2}, Ljava/util/concurrent/ConcurrentHashMap;->comparableClassFor(Ljava/lang/Object;)Ljava/lang/Class;

    #@2e
    move-result-object p3

    #@2f
    if-eqz p3, :cond_a

    #@31
    .line 1952
    :cond_8
    invoke-static {p3, p2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->compareComparables(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)I

    #@34
    move-result v0

    #@35
    .local v0, "dir":I
    if-eqz v0, :cond_a

    #@37
    .line 1953
    if-gez v0, :cond_9

    #@39
    move-object v1, v4

    #@3a
    goto :goto_0

    #@3b
    :cond_9
    move-object v1, v5

    #@3c
    goto :goto_0

    #@3d
    .line 1954
    .end local v0    # "dir":I
    :cond_a
    invoke-virtual {v5, p1, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@40
    move-result-object v6

    #@41
    .local v6, "q":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v6, :cond_b

    #@43
    .line 1955
    return-object v6

    #@44
    .line 1957
    :cond_b
    move-object v1, v4

    #@45
    goto :goto_0
.end method
