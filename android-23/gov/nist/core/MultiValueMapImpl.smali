.class public Lgov/nist/core/MultiValueMapImpl;
.super Ljava/lang/Object;
.source "MultiValueMapImpl.java"

# interfaces
.implements Lgov/nist/core/MultiValueMap;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lgov/nist/core/MultiValueMap",
        "<",
        "Ljava/lang/String;",
        "TV;>;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3b55a57dcb730ffdL


# instance fields
.field private map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 40
    .local p0, "this":Lgov/nist/core/MultiValueMapImpl;, "Lgov/nist/core/MultiValueMapImpl<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 35
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    #@a
    .line 39
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 5

    #@0
    .prologue
    .line 72
    .local p0, "this":Lgov/nist/core/MultiValueMapImpl;, "Lgov/nist/core/MultiValueMapImpl<TV;>;"
    iget-object v4, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    #@2
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@5
    move-result-object v2

    #@6
    .line 73
    .local v2, "pairs":Ljava/util/Set;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v3

    #@a
    .line 74
    .local v3, "pairsIterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v4

    #@e
    if-eqz v4, :cond_0

    #@10
    .line 75
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Ljava/util/Map$Entry;

    #@16
    .line 76
    .local v0, "keyValuePair":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Ljava/util/ArrayList;

    #@1c
    .line 77
    .local v1, "list":Ljava/util/ArrayList;
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    #@1f
    goto :goto_0

    #@20
    .line 79
    .end local v0    # "keyValuePair":Ljava/util/Map$Entry;
    .end local v1    # "list":Ljava/util/ArrayList;
    :cond_0
    iget-object v4, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    #@22
    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    #@25
    .line 71
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 100
    .local p0, "this":Lgov/nist/core/MultiValueMapImpl;, "Lgov/nist/core/MultiValueMapImpl<TV;>;"
    new-instance v0, Lgov/nist/core/MultiValueMapImpl;

    #@2
    invoke-direct {v0}, Lgov/nist/core/MultiValueMapImpl;-><init>()V

    #@5
    .line 101
    .local v0, "obj":Lgov/nist/core/MultiValueMapImpl;
    iget-object v1, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    #@7
    invoke-virtual {v1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Ljava/util/HashMap;

    #@d
    iput-object v1, v0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    #@f
    .line 102
    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 110
    .local p0, "this":Lgov/nist/core/MultiValueMapImpl;, "Lgov/nist/core/MultiValueMapImpl<TV;>;"
    iget-object v0, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Lgov/nist/core/MultiValueMapImpl;, "Lgov/nist/core/MultiValueMapImpl<TV;>;"
    const/4 v5, 0x0

    #@1
    .line 56
    iget-object v4, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    #@3
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@6
    move-result-object v2

    #@7
    .line 58
    .local v2, "pairs":Ljava/util/Set;
    if-nez v2, :cond_0

    #@9
    .line 59
    return v5

    #@a
    .line 61
    :cond_0
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v3

    #@e
    .line 62
    .local v3, "pairsIterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v4

    #@12
    if-eqz v4, :cond_2

    #@14
    .line 63
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Ljava/util/Map$Entry;

    #@1a
    .line 64
    .local v0, "keyValuePair":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1d
    move-result-object v1

    #@1e
    check-cast v1, Ljava/util/ArrayList;

    #@20
    .line 65
    .local v1, "list":Ljava/util/ArrayList;
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@23
    move-result v4

    #@24
    if-eqz v4, :cond_1

    #@26
    .line 66
    const/4 v4, 0x1

    #@27
    return v4

    #@28
    .line 68
    .end local v0    # "keyValuePair":Ljava/util/Map$Entry;
    .end local v1    # "list":Ljava/util/ArrayList;
    :cond_2
    return v5
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    #@0
    .prologue
    .line 114
    .local p0, "this":Lgov/nist/core/MultiValueMapImpl;, "Lgov/nist/core/MultiValueMapImpl<TV;>;"
    iget-object v0, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 134
    .local p0, "this":Lgov/nist/core/MultiValueMapImpl;, "Lgov/nist/core/MultiValueMapImpl<TV;>;"
    invoke-virtual {p0, p1}, Lgov/nist/core/MultiValueMapImpl;->get(Ljava/lang/Object;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 135
    .local p0, "this":Lgov/nist/core/MultiValueMapImpl;, "Lgov/nist/core/MultiValueMapImpl<TV;>;"
    iget-object v0, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/List;

    #@8
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 118
    .local p0, "this":Lgov/nist/core/MultiValueMapImpl;, "Lgov/nist/core/MultiValueMapImpl<TV;>;"
    iget-object v0, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 122
    .local p0, "this":Lgov/nist/core/MultiValueMapImpl;, "Lgov/nist/core/MultiValueMapImpl<TV;>;"
    iget-object v0, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 138
    .local p0, "this":Lgov/nist/core/MultiValueMapImpl;, "Lgov/nist/core/MultiValueMapImpl<TV;>;"
    check-cast p1, Ljava/lang/String;

    #@2
    .end local p1    # "key":Ljava/lang/Object;
    check-cast p2, Ljava/util/List;

    #@4
    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lgov/nist/core/MultiValueMapImpl;->put(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TV;)",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 45
    .local p0, "this":Lgov/nist/core/MultiValueMapImpl;, "Lgov/nist/core/MultiValueMapImpl<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/ArrayList;

    #@8
    .line 46
    .local v0, "keyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TV;>;"
    if-nez v0, :cond_0

    #@a
    .line 47
    new-instance v0, Ljava/util/ArrayList;

    #@c
    .end local v0    # "keyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TV;>;"
    const/16 v1, 0xa

    #@e
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@11
    .line 48
    .restart local v0    # "keyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TV;>;"
    iget-object v1, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    #@13
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    .line 51
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@19
    .line 52
    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TV;>;)",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 139
    .local p0, "this":Lgov/nist/core/MultiValueMapImpl;, "Lgov/nist/core/MultiValueMapImpl<TV;>;"
    .local p2, "value":Ljava/util/List;, "Ljava/util/List<TV;>;"
    iget-object v0, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    #@2
    check-cast p2, Ljava/util/ArrayList;

    #@4
    .end local p2    # "value":Ljava/util/List;, "Ljava/util/List<TV;>;"
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/util/List;

    #@a
    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List",
            "<TV;>;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 147
    .local p0, "this":Lgov/nist/core/MultiValueMapImpl;, "Lgov/nist/core/MultiValueMapImpl<TV;>;"
    .local p1, "mapToPut":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/String;+Ljava/util/List<TV;>;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@3
    move-result-object v3

    #@4
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v2

    #@8
    .local v2, "k$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_0

    #@e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Ljava/lang/String;

    #@14
    .line 148
    .local v1, "k":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    #@16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@19
    .line 149
    .local v0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TV;>;"
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v3

    #@1d
    check-cast v3, Ljava/util/Collection;

    #@1f
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@22
    .line 150
    iget-object v3, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    #@24
    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    goto :goto_0

    #@28
    .line 146
    .end local v0    # "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TV;>;"
    .end local v1    # "k":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 142
    .local p0, "this":Lgov/nist/core/MultiValueMapImpl;, "Lgov/nist/core/MultiValueMapImpl<TV;>;"
    invoke-virtual {p0, p1}, Lgov/nist/core/MultiValueMapImpl;->remove(Ljava/lang/Object;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "item"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 125
    .local p0, "this":Lgov/nist/core/MultiValueMapImpl;, "Lgov/nist/core/MultiValueMapImpl<TV;>;"
    check-cast p1, Ljava/lang/String;

    #@2
    .end local p1    # "key":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lgov/nist/core/MultiValueMapImpl;->remove(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public remove(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TV;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Lgov/nist/core/MultiValueMapImpl;, "Lgov/nist/core/MultiValueMapImpl<TV;>;"
    .local p2, "item":Ljava/lang/Object;, "TV;"
    const/4 v2, 0x0

    #@1
    .line 126
    iget-object v1, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    #@3
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljava/util/ArrayList;

    #@9
    .line 127
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TV;>;"
    if-nez v0, :cond_0

    #@b
    .line 128
    return-object v2

    #@c
    .line 130
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@f
    move-result v1

    #@10
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@13
    move-result-object v1

    #@14
    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 143
    .local p0, "this":Lgov/nist/core/MultiValueMapImpl;, "Lgov/nist/core/MultiValueMapImpl<TV;>;"
    iget-object v0, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/List;

    #@8
    return-object v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 106
    .local p0, "this":Lgov/nist/core/MultiValueMapImpl;, "Lgov/nist/core/MultiValueMapImpl<TV;>;"
    iget-object v0, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 8

    #@0
    .prologue
    .line 83
    .local p0, "this":Lgov/nist/core/MultiValueMapImpl;, "Lgov/nist/core/MultiValueMapImpl<TV;>;"
    new-instance v5, Ljava/util/ArrayList;

    #@2
    iget-object v7, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    #@4
    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    #@7
    move-result v7

    #@8
    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    #@b
    .line 85
    .local v5, "returnList":Ljava/util/ArrayList;
    iget-object v7, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    #@d
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@10
    move-result-object v3

    #@11
    .line 86
    .local v3, "pairs":Ljava/util/Set;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v4

    #@15
    .line 87
    .local v4, "pairsIterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v7

    #@19
    if-eqz v7, :cond_1

    #@1b
    .line 88
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v1

    #@1f
    check-cast v1, Ljava/util/Map$Entry;

    #@21
    .line 89
    .local v1, "keyValuePair":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    check-cast v2, Ljava/util/ArrayList;

    #@27
    .line 91
    .local v2, "list":Ljava/util/ArrayList;
    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    #@2a
    move-result-object v6

    #@2b
    .line 92
    .local v6, "values":[Ljava/lang/Object;
    const/4 v0, 0x0

    #@2c
    .local v0, "ii":I
    :goto_0
    array-length v7, v6

    #@2d
    if-ge v0, v7, :cond_0

    #@2f
    .line 93
    aget-object v7, v6, v0

    #@31
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@34
    .line 92
    add-int/lit8 v0, v0, 0x1

    #@36
    goto :goto_0

    #@37
    .line 96
    .end local v0    # "ii":I
    .end local v1    # "keyValuePair":Ljava/util/Map$Entry;
    .end local v2    # "list":Ljava/util/ArrayList;
    .end local v6    # "values":[Ljava/lang/Object;
    :cond_1
    return-object v5
.end method
