.class Ljava/util/IdentityHashMap$IdentityHashMapEntry;
.super Ljava/util/MapEntry;
.source "IdentityHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/IdentityHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IdentityHashMapEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/MapEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final map:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/IdentityHashMap;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/IdentityHashMap",
            "<TK;TV;>;TK;TV;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 89
    .local p0, "this":Ljava/util/IdentityHashMap$IdentityHashMapEntry;, "Ljava/util/IdentityHashMap<TK;TV;>.IdentityHashMapEntry<TK;TV;>;"
    .local p1, "map":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    .local p2, "theKey":Ljava/lang/Object;, "TK;"
    .local p3, "theValue":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p2, p3}, Ljava/util/MapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@3
    .line 90
    iput-object p1, p0, Ljava/util/IdentityHashMap$IdentityHashMapEntry;->map:Ljava/util/IdentityHashMap;

    #@5
    .line 88
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 95
    .local p0, "this":Ljava/util/IdentityHashMap$IdentityHashMapEntry;, "Ljava/util/IdentityHashMap<TK;TV;>.IdentityHashMapEntry<TK;TV;>;"
    invoke-super {p0}, Ljava/util/MapEntry;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap$IdentityHashMapEntry;, "Ljava/util/IdentityHashMap<TK;TV;>.IdentityHashMapEntry<TK;TV;>;"
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 100
    if-ne p0, p1, :cond_0

    #@4
    .line 101
    return v1

    #@5
    .line 103
    :cond_0
    instance-of v3, p1, Ljava/util/Map$Entry;

    #@7
    if-eqz v3, :cond_2

    #@9
    move-object v0, p1

    #@a
    .line 104
    check-cast v0, Ljava/util/Map$Entry;

    #@c
    .line 105
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v3, p0, Ljava/util/IdentityHashMap$IdentityHashMapEntry;->key:Ljava/lang/Object;

    #@e
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@11
    move-result-object v4

    #@12
    if-ne v3, v4, :cond_1

    #@14
    iget-object v3, p0, Ljava/util/IdentityHashMap$IdentityHashMapEntry;->value:Ljava/lang/Object;

    #@16
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@19
    move-result-object v4

    #@1a
    if-ne v3, v4, :cond_1

    #@1c
    :goto_0
    return v1

    #@1d
    :cond_1
    move v1, v2

    #@1e
    goto :goto_0

    #@1f
    .line 107
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 112
    .local p0, "this":Ljava/util/IdentityHashMap$IdentityHashMapEntry;, "Ljava/util/IdentityHashMap<TK;TV;>.IdentityHashMapEntry<TK;TV;>;"
    iget-object v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapEntry;->key:Ljava/lang/Object;

    #@2
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    .line 113
    iget-object v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapEntry;->value:Ljava/lang/Object;

    #@8
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@b
    move-result v1

    #@c
    .line 112
    xor-int/2addr v0, v1

    #@d
    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 123
    .local p0, "this":Ljava/util/IdentityHashMap$IdentityHashMapEntry;, "Ljava/util/IdentityHashMap<TK;TV;>.IdentityHashMapEntry<TK;TV;>;"
    .local p1, "object":Ljava/lang/Object;, "TV;"
    invoke-super {p0, p1}, Ljava/util/MapEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 124
    .local v0, "result":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapEntry;->map:Ljava/util/IdentityHashMap;

    #@6
    iget-object v2, p0, Ljava/util/IdentityHashMap$IdentityHashMapEntry;->key:Ljava/lang/Object;

    #@8
    invoke-virtual {v1, v2, p1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    .line 125
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 118
    .local p0, "this":Ljava/util/IdentityHashMap$IdentityHashMapEntry;, "Ljava/util/IdentityHashMap<TK;TV;>.IdentityHashMapEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapEntry;->key:Ljava/lang/Object;

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
    iget-object v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapEntry;->value:Ljava/lang/Object;

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
