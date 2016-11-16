.class public Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;
.super Ljava/lang/Object;
.source "MultiValueMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 10
    .local p0, "this":Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;, "Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 11
    new-instance v0, Ljava/util/LinkedHashMap;

    #@5
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;->mMap:Ljava/util/Map;

    #@a
    .line 10
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;, "Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap<TT;>;"
    const/4 v2, 0x0

    #@1
    .line 24
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@4
    move-result-object p1

    #@5
    .line 25
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;->mMap:Ljava/util/Map;

    #@7
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Ljava/util/List;

    #@d
    .line 26
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez v0, :cond_0

    #@f
    .line 27
    return-object v2

    #@10
    .line 29
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    if-ne v1, v2, :cond_1

    #@17
    .line 30
    const/4 v1, 0x0

    #@18
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    return-object v1

    #@1d
    .line 33
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@1f
    const-string/jumbo v2, "Cannot do get on multi-value"

    #@22
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25
    throw v1
.end method

.method public getSingletonValue()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;, "Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap<TT;>;"
    const/4 v2, 0x1

    #@1
    .line 110
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;->mMap:Ljava/util/Map;

    #@3
    invoke-interface {v1}, Ljava/util/Map;->size()I

    #@6
    move-result v1

    #@7
    if-eq v1, v2, :cond_0

    #@9
    .line 111
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v2, "Map is not a single entry map"

    #@e
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v1

    #@12
    .line 113
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;->mMap:Ljava/util/Map;

    #@14
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@17
    move-result-object v1

    #@18
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@1b
    move-result-object v1

    #@1c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Ljava/util/List;

    #@22
    .line 114
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@25
    move-result v1

    #@26
    if-eq v1, v2, :cond_1

    #@28
    .line 115
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@2a
    const-string/jumbo v2, "Map is not a single entry map"

    #@2d
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@30
    throw v1

    #@31
    .line 117
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@34
    move-result-object v1

    #@35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@38
    move-result-object v1

    #@39
    return-object v1
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 14
    .local p0, "this":Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;, "Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@3
    move-result-object p1

    #@4
    .line 15
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;->mMap:Ljava/util/Map;

    #@6
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/util/ArrayList;

    #@c
    .line 16
    .local v0, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    if-nez v0, :cond_0

    #@e
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    #@10
    .end local v0    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@13
    .line 18
    .restart local v0    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;->mMap:Ljava/util/Map;

    #@15
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    .line 20
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1b
    .line 13
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 77
    .local p0, "this":Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;, "Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    #@1
    .line 78
    .local v1, "result":Ljava/lang/Object;, "TT;"
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;->mMap:Ljava/util/Map;

    #@3
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@6
    move-result-object v4

    #@7
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v0

    #@b
    .line 79
    .end local v1    # "result":Ljava/lang/Object;, "TT;"
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<TT;>;>;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v4

    #@f
    if-eqz v4, :cond_3

    #@11
    .line 80
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v4

    #@15
    check-cast v4, Ljava/util/Map$Entry;

    #@17
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1a
    move-result-object v3

    #@1b
    check-cast v3, Ljava/util/ArrayList;

    #@1d
    .line 81
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@20
    move-result-object v2

    #@21
    .line 82
    .local v2, "valueIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@24
    move-result v4

    #@25
    if-eqz v4, :cond_2

    #@27
    .line 83
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2a
    move-result-object v4

    #@2b
    if-ne v4, p1, :cond_1

    #@2d
    .line 84
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    #@30
    .line 85
    move-object v1, p1

    #@31
    .line 89
    :cond_2
    if-eqz v1, :cond_0

    #@33
    .line 90
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    #@36
    move-result v4

    #@37
    if-eqz v4, :cond_3

    #@39
    .line 91
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@3c
    .line 96
    .end local v2    # "valueIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    .end local v3    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :cond_3
    return-object v1
.end method

.method public remove(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;, "Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    const/4 v4, 0x0

    #@1
    .line 55
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@4
    move-result-object p1

    #@5
    .line 56
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;->mMap:Ljava/util/Map;

    #@7
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v2

    #@b
    check-cast v2, Ljava/util/List;

    #@d
    .line 57
    .local v2, "values":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez v2, :cond_0

    #@f
    .line 58
    return-object v4

    #@10
    .line 61
    :cond_0
    const/4 v0, 0x0

    #@11
    .line 62
    .local v0, "result":Ljava/lang/Object;, "TT;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v1

    #@15
    .line 63
    .local v1, "valueIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_2

    #@1b
    .line 64
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v3

    #@1f
    if-ne v3, p2, :cond_1

    #@21
    .line 65
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    #@24
    .line 66
    move-object v0, p2

    #@25
    .line 70
    .end local v0    # "result":Ljava/lang/Object;, "TT;"
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@28
    move-result v3

    #@29
    if-eqz v3, :cond_3

    #@2b
    .line 71
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;->mMap:Ljava/util/Map;

    #@2d
    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    .line 73
    :cond_3
    return-object v0
.end method

.method public replace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;TT;)TT;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;, "Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap<TT;>;"
    .local p2, "oldValue":Ljava/lang/Object;, "TT;"
    .local p3, "newValue":Ljava/lang/Object;, "TT;"
    const/4 v4, 0x0

    #@1
    .line 38
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@4
    move-result-object p1

    #@5
    .line 39
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;->mMap:Ljava/util/Map;

    #@7
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v2

    #@b
    check-cast v2, Ljava/util/List;

    #@d
    .line 40
    .local v2, "values":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez v2, :cond_0

    #@f
    .line 41
    return-object v4

    #@10
    .line 44
    :cond_0
    const/4 v0, 0x0

    #@11
    .local v0, "n":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@14
    move-result v3

    #@15
    if-ge v0, v3, :cond_2

    #@17
    .line 45
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    .line 46
    .local v1, "value":Ljava/lang/Object;, "TT;"
    if-ne v1, p2, :cond_1

    #@1d
    .line 47
    invoke-interface {v2, v0, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@20
    .line 48
    return-object v1

    #@21
    .line 44
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_0

    #@24
    .line 51
    .end local v1    # "value":Ljava/lang/Object;, "TT;"
    :cond_2
    return-object v4
.end method

.method public values()Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 100
    .local p0, "this":Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;, "Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    #@2
    iget-object v5, p0, Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;->mMap:Ljava/util/Map;

    #@4
    invoke-interface {v5}, Ljava/util/Map;->size()I

    #@7
    move-result v5

    #@8
    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    #@b
    .line 101
    .local v0, "allValues":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v5, p0, Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;->mMap:Ljava/util/Map;

    #@d
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@10
    move-result-object v5

    #@11
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v4

    #@15
    .local v4, "values$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v5

    #@19
    if-eqz v5, :cond_1

    #@1b
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v3

    #@1f
    check-cast v3, Ljava/util/ArrayList;

    #@21
    .line 102
    .local v3, "values":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@24
    move-result-object v2

    #@25
    .local v2, "value$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@28
    move-result v5

    #@29
    if-eqz v5, :cond_0

    #@2b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2e
    move-result-object v1

    #@2f
    .line 103
    .local v1, "value":Ljava/lang/Object;, "TT;"
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@32
    goto :goto_0

    #@33
    .line 106
    .end local v1    # "value":Ljava/lang/Object;, "TT;"
    .end local v2    # "value$iterator":Ljava/util/Iterator;
    .end local v3    # "values":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_1
    return-object v0
.end method
