.class Ljava/util/Collections$CheckedMap$CheckedEntrySet;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections$CheckedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckedEntrySet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntryIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Set",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final s:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final valueType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;",
            "Ljava/lang/Class",
            "<TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 3230
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet;, "Ljava/util/Collections$CheckedMap<TK;TV;>.CheckedEntrySet<TK;TV;>;"
    .local p1, "s":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 3231
    iput-object p1, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->s:Ljava/util/Set;

    #@5
    .line 3232
    iput-object p2, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->valueType:Ljava/lang/Class;

    #@7
    .line 3230
    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 3290
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet;, "Ljava/util/Collections$CheckedMap<TK;TV;>.CheckedEntrySet<TK;TV;>;"
    check-cast p1, Ljava/util/Map$Entry;

    #@2
    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->add(Ljava/util/Map$Entry;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public add(Ljava/util/Map$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 3291
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet;, "Ljava/util/Collections$CheckedMap<TK;TV;>.CheckedEntrySet<TK;TV;>;"
    .local p1, "o":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 3279
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet;, "Ljava/util/Collections$CheckedMap<TK;TV;>.CheckedEntrySet<TK;TV;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 3299
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet;, "Ljava/util/Collections$CheckedMap<TK;TV;>.CheckedEntrySet<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->s:Ljava/util/Set;

    #@2
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    #@5
    .line 3298
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 3287
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet;, "Ljava/util/Collections$CheckedMap<TK;TV;>.CheckedEntrySet<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->s:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 3275
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet;, "Ljava/util/Collections$CheckedMap<TK;TV;>.CheckedEntrySet<TK;TV;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->s:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 3311
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet;, "Ljava/util/Collections$CheckedMap<TK;TV;>.CheckedEntrySet<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->s:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 3307
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet;, "Ljava/util/Collections$CheckedMap<TK;TV;>.CheckedEntrySet<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->s:Ljava/util/Set;

    #@2
    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 3295
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet;, "Ljava/util/Collections$CheckedMap<TK;TV;>.CheckedEntrySet<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->s:Ljava/util/Set;

    #@2
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
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
    .line 3236
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet;, "Ljava/util/Collections$CheckedMap<TK;TV;>.CheckedEntrySet<TK;TV;>;"
    new-instance v0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntryIterator;

    #@2
    iget-object v1, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->s:Ljava/util/Set;

    #@4
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    iget-object v2, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->valueType:Ljava/lang/Class;

    #@a
    invoke-direct {v0, v1, v2}, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntryIterator;-><init>(Ljava/util/Iterator;Ljava/lang/Class;)V

    #@d
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 3283
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet;, "Ljava/util/Collections$CheckedMap<TK;TV;>.CheckedEntrySet<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->s:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 3271
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet;, "Ljava/util/Collections$CheckedMap<TK;TV;>.CheckedEntrySet<TK;TV;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->s:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 3267
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet;, "Ljava/util/Collections$CheckedMap<TK;TV;>.CheckedEntrySet<TK;TV;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->s:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 3303
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet;, "Ljava/util/Collections$CheckedMap<TK;TV;>.CheckedEntrySet<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->s:Ljava/util/Set;

    #@2
    invoke-interface {v0}, Ljava/util/Set;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 5

    #@0
    .prologue
    .line 3240
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet;, "Ljava/util/Collections$CheckedMap<TK;TV;>.CheckedEntrySet<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->size()I

    #@3
    move-result v3

    #@4
    .line 3241
    .local v3, "thisSize":I
    new-array v0, v3, [Ljava/lang/Object;

    #@6
    .line 3242
    .local v0, "array":[Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v2

    #@a
    .line 3243
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    const/4 v1, 0x0

    #@b
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    #@d
    .line 3244
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v4

    #@11
    aput-object v4, v0, v1

    #@13
    .line 3243
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 3246
    :cond_0
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 3251
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet;, "Ljava/util/Collections$CheckedMap<TK;TV;>.CheckedEntrySet<TK;TV;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->size()I

    #@3
    move-result v3

    #@4
    .line 3252
    .local v3, "thisSize":I
    array-length v4, p1

    #@5
    if-ge v4, v3, :cond_0

    #@7
    .line 3253
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v4

    #@b
    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@e
    move-result-object v0

    #@f
    .line 3254
    .local v0, "ct":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@12
    move-result-object p1

    #@13
    .end local p1    # "array":[Ljava/lang/Object;, "[TT;"
    check-cast p1, [Ljava/lang/Object;

    #@15
    .line 3256
    .end local v0    # "ct":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p1    # "array":[Ljava/lang/Object;, "[TT;"
    :cond_0
    invoke-virtual {p0}, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v2

    #@19
    .line 3257
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    const/4 v1, 0x0

    #@1a
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    #@1c
    .line 3258
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v4

    #@20
    aput-object v4, p1, v1

    #@22
    .line 3257
    add-int/lit8 v1, v1, 0x1

    #@24
    goto :goto_0

    #@25
    .line 3260
    :cond_1
    array-length v4, p1

    #@26
    if-ge v3, v4, :cond_2

    #@28
    .line 3261
    const/4 v4, 0x0

    #@29
    aput-object v4, p1, v3

    #@2b
    .line 3263
    :cond_2
    return-object p1
.end method
