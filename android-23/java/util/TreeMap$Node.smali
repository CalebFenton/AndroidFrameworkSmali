.class Ljava/util/TreeMap$Node;
.super Ljava/lang/Object;
.source "TreeMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field height:I

.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field left:Ljava/util/TreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field parent:Ljava/util/TreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field right:Ljava/util/TreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/TreeMap$Node;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;TK;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 741
    .local p0, "this":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap<TK;TV;>.Node<TK;TV;>;"
    .local p1, "parent":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 742
    iput-object p1, p0, Ljava/util/TreeMap$Node;->parent:Ljava/util/TreeMap$Node;

    #@5
    .line 743
    iput-object p2, p0, Ljava/util/TreeMap$Node;->key:Ljava/lang/Object;

    #@7
    .line 744
    const/4 v0, 0x1

    #@8
    iput v0, p0, Ljava/util/TreeMap$Node;->height:I

    #@a
    .line 741
    return-void
.end method


# virtual methods
.method copy(Ljava/util/TreeMap$Node;)Ljava/util/TreeMap$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;)",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 748
    .local p0, "this":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap<TK;TV;>.Node<TK;TV;>;"
    .local p1, "parent":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    new-instance v0, Ljava/util/TreeMap$Node;

    #@2
    iget-object v1, p0, Ljava/util/TreeMap$Node;->key:Ljava/lang/Object;

    #@4
    invoke-direct {v0, p1, v1}, Ljava/util/TreeMap$Node;-><init>(Ljava/util/TreeMap$Node;Ljava/lang/Object;)V

    #@7
    .line 749
    .local v0, "result":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    iget-object v1, p0, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 750
    iget-object v1, p0, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    #@d
    invoke-virtual {v1, v0}, Ljava/util/TreeMap$Node;->copy(Ljava/util/TreeMap$Node;)Ljava/util/TreeMap$Node;

    #@10
    move-result-object v1

    #@11
    iput-object v1, v0, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    #@13
    .line 752
    :cond_0
    iget-object v1, p0, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 753
    iget-object v1, p0, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    #@19
    invoke-virtual {v1, v0}, Ljava/util/TreeMap$Node;->copy(Ljava/util/TreeMap$Node;)Ljava/util/TreeMap$Node;

    #@1c
    move-result-object v1

    #@1d
    iput-object v1, v0, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    #@1f
    .line 755
    :cond_1
    iget-object v1, p0, Ljava/util/TreeMap$Node;->value:Ljava/lang/Object;

    #@21
    iput-object v1, v0, Ljava/util/TreeMap$Node;->value:Ljava/lang/Object;

    #@23
    .line 756
    iget v1, p0, Ljava/util/TreeMap$Node;->height:I

    #@25
    iput v1, v0, Ljava/util/TreeMap$Node;->height:I

    #@27
    .line 757
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap<TK;TV;>.Node<TK;TV;>;"
    const/4 v1, 0x0

    #@1
    .line 775
    instance-of v2, p1, Ljava/util/Map$Entry;

    #@3
    if-eqz v2, :cond_3

    #@5
    move-object v0, p1

    #@6
    .line 776
    check-cast v0, Ljava/util/Map$Entry;

    #@8
    .line 777
    .local v0, "other":Ljava/util/Map$Entry;
    iget-object v2, p0, Ljava/util/TreeMap$Node;->key:Ljava/lang/Object;

    #@a
    if-nez v2, :cond_1

    #@c
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    if-nez v2, :cond_0

    #@12
    .line 778
    :goto_0
    iget-object v2, p0, Ljava/util/TreeMap$Node;->value:Ljava/lang/Object;

    #@14
    if-nez v2, :cond_2

    #@16
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@19
    move-result-object v2

    #@1a
    if-nez v2, :cond_0

    #@1c
    const/4 v1, 0x1

    #@1d
    .line 777
    :cond_0
    :goto_1
    return v1

    #@1e
    :cond_1
    iget-object v2, p0, Ljava/util/TreeMap$Node;->key:Ljava/lang/Object;

    #@20
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v2

    #@28
    if-eqz v2, :cond_0

    #@2a
    goto :goto_0

    #@2b
    .line 778
    :cond_2
    iget-object v1, p0, Ljava/util/TreeMap$Node;->value:Ljava/lang/Object;

    #@2d
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v1

    #@35
    goto :goto_1

    #@36
    .line 780
    .end local v0    # "other":Ljava/util/Map$Entry;
    :cond_3
    return v1
.end method

.method public first()Ljava/util/TreeMap$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 838
    .local p0, "this":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap<TK;TV;>.Node<TK;TV;>;"
    move-object v1, p0

    #@1
    .line 839
    .local v1, "node":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    iget-object v0, v1, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    #@3
    .line 840
    .local v0, "child":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_0

    #@5
    .line 841
    move-object v1, v0

    #@6
    .line 842
    iget-object v0, v1, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    #@8
    goto :goto_0

    #@9
    .line 844
    :cond_0
    return-object v1
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    #@0
    .prologue
    .line 761
    .local p0, "this":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap<TK;TV;>.Node<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap$Node;->key:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 765
    .local p0, "this":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap<TK;TV;>.Node<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap$Node;->value:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap<TK;TV;>.Node<TK;TV;>;"
    const/4 v1, 0x0

    #@1
    .line 784
    iget-object v0, p0, Ljava/util/TreeMap$Node;->key:Ljava/lang/Object;

    #@3
    if-nez v0, :cond_0

    #@5
    move v0, v1

    #@6
    .line 785
    :goto_0
    iget-object v2, p0, Ljava/util/TreeMap$Node;->value:Ljava/lang/Object;

    #@8
    if-nez v2, :cond_1

    #@a
    .line 784
    :goto_1
    xor-int/2addr v0, v1

    #@b
    return v0

    #@c
    :cond_0
    iget-object v0, p0, Ljava/util/TreeMap$Node;->key:Ljava/lang/Object;

    #@e
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    #@11
    move-result v0

    #@12
    goto :goto_0

    #@13
    .line 785
    :cond_1
    iget-object v1, p0, Ljava/util/TreeMap$Node;->value:Ljava/lang/Object;

    #@15
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    #@18
    move-result v1

    #@19
    goto :goto_1
.end method

.method public last()Ljava/util/TreeMap$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 851
    .local p0, "this":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap<TK;TV;>.Node<TK;TV;>;"
    move-object v1, p0

    #@1
    .line 852
    .local v1, "node":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    iget-object v0, v1, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    #@3
    .line 853
    .local v0, "child":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_0

    #@5
    .line 854
    move-object v1, v0

    #@6
    .line 855
    iget-object v0, v1, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    #@8
    goto :goto_0

    #@9
    .line 857
    :cond_0
    return-object v1
.end method

.method next()Ljava/util/TreeMap$Node;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap<TK;TV;>.Node<TK;TV;>;"
    const/4 v3, 0x0

    #@1
    .line 797
    iget-object v2, p0, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 798
    iget-object v2, p0, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    #@7
    invoke-virtual {v2}, Ljava/util/TreeMap$Node;->first()Ljava/util/TreeMap$Node;

    #@a
    move-result-object v2

    #@b
    return-object v2

    #@c
    .line 801
    :cond_0
    move-object v0, p0

    #@d
    .line 802
    .local v0, "node":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    iget-object v1, v0, Ljava/util/TreeMap$Node;->parent:Ljava/util/TreeMap$Node;

    #@f
    .line 803
    .local v1, "parent":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v1, :cond_2

    #@11
    .line 804
    iget-object v2, v1, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    #@13
    if-ne v2, v0, :cond_1

    #@15
    .line 805
    return-object v1

    #@16
    .line 807
    :cond_1
    move-object v0, v1

    #@17
    .line 808
    iget-object v1, v0, Ljava/util/TreeMap$Node;->parent:Ljava/util/TreeMap$Node;

    #@19
    goto :goto_0

    #@1a
    .line 810
    :cond_2
    return-object v3
.end method

.method public prev()Ljava/util/TreeMap$Node;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap<TK;TV;>.Node<TK;TV;>;"
    const/4 v3, 0x0

    #@1
    .line 818
    iget-object v2, p0, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 819
    iget-object v2, p0, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    #@7
    invoke-virtual {v2}, Ljava/util/TreeMap$Node;->last()Ljava/util/TreeMap$Node;

    #@a
    move-result-object v2

    #@b
    return-object v2

    #@c
    .line 822
    :cond_0
    move-object v0, p0

    #@d
    .line 823
    .local v0, "node":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    iget-object v1, v0, Ljava/util/TreeMap$Node;->parent:Ljava/util/TreeMap$Node;

    #@f
    .line 824
    .local v1, "parent":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v1, :cond_2

    #@11
    .line 825
    iget-object v2, v1, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    #@13
    if-ne v2, v0, :cond_1

    #@15
    .line 826
    return-object v1

    #@16
    .line 828
    :cond_1
    move-object v0, v1

    #@17
    .line 829
    iget-object v1, v0, Ljava/util/TreeMap$Node;->parent:Ljava/util/TreeMap$Node;

    #@19
    goto :goto_0

    #@1a
    .line 831
    :cond_2
    return-object v3
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 769
    .local p0, "this":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap<TK;TV;>.Node<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/TreeMap$Node;->value:Ljava/lang/Object;

    #@2
    .line 770
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Ljava/util/TreeMap$Node;->value:Ljava/lang/Object;

    #@4
    .line 771
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 789
    .local p0, "this":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap<TK;TV;>.Node<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Ljava/util/TreeMap$Node;->key:Ljava/lang/Object;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const-string/jumbo v1, "="

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    iget-object v1, p0, Ljava/util/TreeMap$Node;->value:Ljava/lang/Object;

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    return-object v0
.end method
