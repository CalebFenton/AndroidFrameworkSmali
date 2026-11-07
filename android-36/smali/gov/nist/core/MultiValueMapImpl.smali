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
        "Lgov/nist/core/MultiValueMap<",
        "Ljava/lang/String;",
        "TV;>;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x3b55a57dcb730ffdL


# instance fields
.field private greylist map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 40
    .local p0, "this":Lgov/nist/core/MultiValueMapImpl;, "Lgov/nist/core/MultiValueMapImpl<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    .line 42
    return-void
.end method


# virtual methods
.method public whitelist test-api clear()V
    .registers 5

    .line 72
    .local p0, "this":Lgov/nist/core/MultiValueMapImpl;, "Lgov/nist/core/MultiValueMapImpl<TV;>;"
    iget-object v0, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 73
    .local v0, "pairs":Ljava/util/Set;
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 74
    .local v1, "pairsIterator":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 75
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 76
    .local v2, "keyValuePair":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 77
    .local v3, "list":Ljava/util/ArrayList;
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 78
    .end local v2    # "keyValuePair":Ljava/util/Map$Entry;
    .end local v3    # "list":Ljava/util/ArrayList;
    goto :goto_a

    .line 79
    :cond_20
    iget-object v2, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 80
    return-void
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 100
    .local p0, "this":Lgov/nist/core/MultiValueMapImpl;, "Lgov/nist/core/MultiValueMapImpl<TV;>;"
    new-instance v0, Lgov/nist/core/MultiValueMapImpl;

    invoke-direct {v0}, Lgov/nist/core/MultiValueMapImpl;-><init>()V

    .line 101
    .local v0, "obj":Lgov/nist/core/MultiValueMapImpl;
    iget-object v1, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iput-object v1, v0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    .line 102
    return-object v0
.end method

.method public whitelist test-api containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 110
    .local p0, "this":Lgov/nist/core/MultiValueMapImpl;, "Lgov/nist/core/MultiValueMapImpl<TV;>;"
    iget-object v0, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api containsValue(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "value"    # Ljava/lang/Object;

    .line 56
    .local p0, "this":Lgov/nist/core/MultiValueMapImpl;, "Lgov/nist/core/MultiValueMapImpl<TV;>;"
    iget-object v0, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 58
    .local v0, "pairs":Ljava/util/Set;
    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 59
    return v1

    .line 61
    :cond_a
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 62
    .local v2, "pairsIterator":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 63
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 64
    .local v3, "keyValuePair":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 65
    .local v4, "list":Ljava/util/ArrayList;
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 66
    const/4 v1, 0x1

    return v1

    .line 67
    .end local v3    # "keyValuePair":Ljava/util/Map$Entry;
    .end local v4    # "list":Ljava/util/ArrayList;
    :cond_28
    goto :goto_e

    .line 68
    :cond_29
    return v1
.end method

.method public whitelist test-api entrySet()Ljava/util/Set;
    .registers 2

    .line 114
    .local p0, "this":Lgov/nist/core/MultiValueMapImpl;, "Lgov/nist/core/MultiValueMapImpl<TV;>;"
    iget-object v0, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 34
    .local p0, "this":Lgov/nist/core/MultiValueMapImpl;, "Lgov/nist/core/MultiValueMapImpl<TV;>;"
    invoke-virtual {p0, p1}, Lgov/nist/core/MultiValueMapImpl;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public greylist get(Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 136
    .local p0, "this":Lgov/nist/core/MultiValueMapImpl;, "Lgov/nist/core/MultiValueMapImpl<TV;>;"
    iget-object v0, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 118
    .local p0, "this":Lgov/nist/core/MultiValueMapImpl;, "Lgov/nist/core/MultiValueMapImpl<TV;>;"
    iget-object v0, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 122
    .local p0, "this":Lgov/nist/core/MultiValueMapImpl;, "Lgov/nist/core/MultiValueMapImpl<TV;>;"
    iget-object v0, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 34
    .local p0, "this":Lgov/nist/core/MultiValueMapImpl;, "Lgov/nist/core/MultiValueMapImpl<TV;>;"
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lgov/nist/core/MultiValueMapImpl;->put(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public greylist put(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TV;)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 45
    .local p0, "this":Lgov/nist/core/MultiValueMapImpl;, "Lgov/nist/core/MultiValueMapImpl<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 46
    .local v0, "keyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TV;>;"
    if-nez v0, :cond_17

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v1

    .line 48
    iget-object v1, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_17
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    return-object v0
.end method

.method public greylist put(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "TV;>;)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 140
    .local p0, "this":Lgov/nist/core/MultiValueMapImpl;, "Lgov/nist/core/MultiValueMapImpl<TV;>;"
    .local p2, "value":Ljava/util/List;, "Ljava/util/List<TV;>;"
    iget-object v0, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    move-object v1, p2

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api putAll(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 148
    .local p0, "this":Lgov/nist/core/MultiValueMapImpl;, "Lgov/nist/core/MultiValueMapImpl<TV;>;"
    .local p1, "mapToPut":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/String;+Ljava/util/List<TV;>;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 149
    .local v1, "k":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v2, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TV;>;"
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 151
    iget-object v3, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .end local v1    # "k":Ljava/lang/String;
    .end local v2    # "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TV;>;"
    goto :goto_8

    .line 153
    :cond_28
    return-void
.end method

.method public bridge synthetic whitelist test-api remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 34
    .local p0, "this":Lgov/nist/core/MultiValueMapImpl;, "Lgov/nist/core/MultiValueMapImpl<TV;>;"
    invoke-virtual {p0, p1}, Lgov/nist/core/MultiValueMapImpl;->remove(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public greylist remove(Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 144
    .local p0, "this":Lgov/nist/core/MultiValueMapImpl;, "Lgov/nist/core/MultiValueMapImpl<TV;>;"
    iget-object v0, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 106
    .local p0, "this":Lgov/nist/core/MultiValueMapImpl;, "Lgov/nist/core/MultiValueMapImpl<TV;>;"
    iget-object v0, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public whitelist test-api values()Ljava/util/Collection;
    .registers 9

    .line 83
    .local p0, "this":Lgov/nist/core/MultiValueMapImpl;, "Lgov/nist/core/MultiValueMapImpl<TV;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    .local v0, "returnList":Ljava/util/ArrayList;
    iget-object v1, p0, Lgov/nist/core/MultiValueMapImpl;->map:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 86
    .local v1, "pairs":Ljava/util/Set;
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 87
    .local v2, "pairsIterator":Ljava/util/Iterator;
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 88
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 89
    .local v3, "keyValuePair":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 91
    .local v4, "list":Ljava/util/ArrayList;
    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v5

    .line 92
    .local v5, "values":[Ljava/lang/Object;
    const/4 v6, 0x0

    .local v6, "ii":I
    :goto_2c
    array-length v7, v5

    if-ge v6, v7, :cond_37

    .line 93
    aget-object v7, v5, v6

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    add-int/lit8 v6, v6, 0x1

    goto :goto_2c

    .line 95
    .end local v3    # "keyValuePair":Ljava/util/Map$Entry;
    .end local v4    # "list":Ljava/util/ArrayList;
    .end local v5    # "values":[Ljava/lang/Object;
    .end local v6    # "ii":I
    :cond_37
    goto :goto_15

    .line 96
    :cond_38
    return-object v0
.end method
