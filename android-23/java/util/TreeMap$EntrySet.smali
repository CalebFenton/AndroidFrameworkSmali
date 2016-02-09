.class Ljava/util/TreeMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "TreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/TreeMap;


# direct methods
.method constructor <init>(Ljava/util/TreeMap;)V
    .locals 0

    #@0
    .prologue
    .line 916
    .local p0, "this":Ljava/util/TreeMap$EntrySet;, "Ljava/util/TreeMap<TK;TV;>.EntrySet;"
    .local p1, "this$0":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iput-object p1, p0, Ljava/util/TreeMap$EntrySet;->this$0:Ljava/util/TreeMap;

    #@2
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 947
    .local p0, "this":Ljava/util/TreeMap$EntrySet;, "Ljava/util/TreeMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/TreeMap$EntrySet;->this$0:Ljava/util/TreeMap;

    #@2
    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    #@5
    .line 946
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap$EntrySet;, "Ljava/util/TreeMap<TK;TV;>.EntrySet;"
    const/4 v0, 0x0

    #@1
    .line 930
    instance-of v1, p1, Ljava/util/Map$Entry;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Ljava/util/TreeMap$EntrySet;->this$0:Ljava/util/TreeMap;

    #@7
    check-cast p1, Ljava/util/Map$Entry;

    #@9
    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {v1, p1}, Ljava/util/TreeMap;->findByEntry(Ljava/util/Map$Entry;)Ljava/util/TreeMap$Node;

    #@c
    move-result-object v1

    #@d
    if-eqz v1, :cond_0

    #@f
    const/4 v0, 0x1

    #@10
    :cond_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap$EntrySet;, "Ljava/util/TreeMap<TK;TV;>.EntrySet;"
    const/4 v0, 0x0

    #@1
    .line 922
    new-instance v1, Ljava/util/TreeMap$EntrySet$1;

    #@3
    iget-object v2, p0, Ljava/util/TreeMap$EntrySet;->this$0:Ljava/util/TreeMap;

    #@5
    iget-object v3, p0, Ljava/util/TreeMap$EntrySet;->this$0:Ljava/util/TreeMap;

    #@7
    iget-object v3, v3, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    #@9
    if-nez v3, :cond_0

    #@b
    :goto_0
    invoke-direct {v1, p0, v2, v0}, Ljava/util/TreeMap$EntrySet$1;-><init>(Ljava/util/TreeMap$EntrySet;Ljava/util/TreeMap;Ljava/util/TreeMap$Node;)V

    #@e
    return-object v1

    #@f
    :cond_0
    iget-object v0, p0, Ljava/util/TreeMap$EntrySet;->this$0:Ljava/util/TreeMap;

    #@11
    iget-object v0, v0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    #@13
    invoke-virtual {v0}, Ljava/util/TreeMap$Node;->first()Ljava/util/TreeMap$Node;

    #@16
    move-result-object v0

    #@17
    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap$EntrySet;, "Ljava/util/TreeMap<TK;TV;>.EntrySet;"
    const/4 v2, 0x0

    #@1
    .line 934
    instance-of v1, p1, Ljava/util/Map$Entry;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 935
    return v2

    #@6
    .line 938
    :cond_0
    iget-object v1, p0, Ljava/util/TreeMap$EntrySet;->this$0:Ljava/util/TreeMap;

    #@8
    check-cast p1, Ljava/util/Map$Entry;

    #@a
    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {v1, p1}, Ljava/util/TreeMap;->findByEntry(Ljava/util/Map$Entry;)Ljava/util/TreeMap$Node;

    #@d
    move-result-object v0

    #@e
    .line 939
    .local v0, "node":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    if-nez v0, :cond_1

    #@10
    .line 940
    return v2

    #@11
    .line 942
    :cond_1
    iget-object v1, p0, Ljava/util/TreeMap$EntrySet;->this$0:Ljava/util/TreeMap;

    #@13
    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->removeInternal(Ljava/util/TreeMap$Node;)V

    #@16
    .line 943
    const/4 v1, 0x1

    #@17
    return v1
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 918
    .local p0, "this":Ljava/util/TreeMap$EntrySet;, "Ljava/util/TreeMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/TreeMap$EntrySet;->this$0:Ljava/util/TreeMap;

    #@2
    iget v0, v0, Ljava/util/TreeMap;->size:I

    #@4
    return v0
.end method
