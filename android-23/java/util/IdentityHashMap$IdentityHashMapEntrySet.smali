.class Ljava/util/IdentityHashMap$IdentityHashMapEntrySet;
.super Ljava/util/AbstractSet;
.source "IdentityHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/IdentityHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IdentityHashMapEntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<KT:",
        "Ljava/lang/Object;",
        "VT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TKT;TVT;>;>;"
    }
.end annotation


# instance fields
.field private final associatedMap:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<TKT;TVT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/IdentityHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/IdentityHashMap",
            "<TKT;TVT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 200
    .local p0, "this":Ljava/util/IdentityHashMap$IdentityHashMapEntrySet;, "Ljava/util/IdentityHashMap<TK;TV;>.IdentityHashMapEntrySet<TKT;TVT;>;"
    .local p1, "hm":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TKT;TVT;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    #@3
    .line 201
    iput-object p1, p0, Ljava/util/IdentityHashMap$IdentityHashMapEntrySet;->associatedMap:Ljava/util/IdentityHashMap;

    #@5
    .line 200
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 215
    .local p0, "this":Ljava/util/IdentityHashMap$IdentityHashMapEntrySet;, "Ljava/util/IdentityHashMap<TK;TV;>.IdentityHashMapEntrySet<TKT;TVT;>;"
    iget-object v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapEntrySet;->associatedMap:Ljava/util/IdentityHashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    #@5
    .line 214
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap$IdentityHashMapEntrySet;, "Ljava/util/IdentityHashMap<TK;TV;>.IdentityHashMapEntrySet<TKT;TVT;>;"
    const/4 v2, 0x0

    #@1
    .line 229
    instance-of v1, p1, Ljava/util/Map$Entry;

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 230
    iget-object v3, p0, Ljava/util/IdentityHashMap$IdentityHashMapEntrySet;->associatedMap:Ljava/util/IdentityHashMap;

    #@7
    move-object v1, p1

    #@8
    .line 231
    check-cast v1, Ljava/util/Map$Entry;

    #@a
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    .line 230
    invoke-static {v3, v1}, Ljava/util/IdentityHashMap;->-wrap1(Ljava/util/IdentityHashMap;Ljava/lang/Object;)Ljava/util/IdentityHashMap$IdentityHashMapEntry;

    #@11
    move-result-object v0

    #@12
    .line 233
    .local v0, "entry":Ljava/util/IdentityHashMap$IdentityHashMapEntry;, "Ljava/util/IdentityHashMap$IdentityHashMapEntry<**>;"
    if-eqz v0, :cond_0

    #@14
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap$IdentityHashMapEntry;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v1

    #@18
    :goto_0
    return v1

    #@19
    :cond_0
    move v1, v2

    #@1a
    goto :goto_0

    #@1b
    .line 235
    .end local v0    # "entry":Ljava/util/IdentityHashMap$IdentityHashMapEntry;, "Ljava/util/IdentityHashMap$IdentityHashMapEntry<**>;"
    :cond_1
    return v2
.end method

.method hashMap()Ljava/util/IdentityHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/IdentityHashMap",
            "<TKT;TVT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 205
    .local p0, "this":Ljava/util/IdentityHashMap$IdentityHashMapEntrySet;, "Ljava/util/IdentityHashMap<TK;TV;>.IdentityHashMapEntrySet<TKT;TVT;>;"
    iget-object v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapEntrySet;->associatedMap:Ljava/util/IdentityHashMap;

    #@2
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TKT;TVT;>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 240
    .local p0, "this":Ljava/util/IdentityHashMap$IdentityHashMapEntrySet;, "Ljava/util/IdentityHashMap<TK;TV;>.IdentityHashMapEntrySet<TKT;TVT;>;"
    new-instance v0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;

    #@2
    .line 241
    new-instance v1, Ljava/util/IdentityHashMap$IdentityHashMapEntrySet$1;

    #@4
    invoke-direct {v1, p0}, Ljava/util/IdentityHashMap$IdentityHashMapEntrySet$1;-><init>(Ljava/util/IdentityHashMap$IdentityHashMapEntrySet;)V

    #@7
    .line 245
    iget-object v2, p0, Ljava/util/IdentityHashMap$IdentityHashMapEntrySet;->associatedMap:Ljava/util/IdentityHashMap;

    #@9
    .line 240
    invoke-direct {v0, v1, v2}, Ljava/util/IdentityHashMap$IdentityHashMapIterator;-><init>(Ljava/util/MapEntry$Type;Ljava/util/IdentityHashMap;)V

    #@c
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 220
    .local p0, "this":Ljava/util/IdentityHashMap$IdentityHashMapEntrySet;, "Ljava/util/IdentityHashMap<TK;TV;>.IdentityHashMapEntrySet<TKT;TVT;>;"
    invoke-virtual {p0, p1}, Ljava/util/IdentityHashMap$IdentityHashMapEntrySet;->contains(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 221
    iget-object v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapEntrySet;->associatedMap:Ljava/util/IdentityHashMap;

    #@8
    check-cast p1, Ljava/util/Map$Entry;

    #@a
    .end local p1    # "object":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    .line 222
    const/4 v0, 0x1

    #@12
    return v0

    #@13
    .line 224
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    #@14
    return v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 210
    .local p0, "this":Ljava/util/IdentityHashMap$IdentityHashMapEntrySet;, "Ljava/util/IdentityHashMap<TK;TV;>.IdentityHashMapEntrySet<TKT;TVT;>;"
    iget-object v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapEntrySet;->associatedMap:Ljava/util/IdentityHashMap;

    #@2
    iget v0, v0, Ljava/util/IdentityHashMap;->size:I

    #@4
    return v0
.end method
