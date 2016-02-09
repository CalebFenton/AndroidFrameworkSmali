.class public abstract Ljava/util/AbstractCollection;
.super Ljava/lang/Object;
.source "AbstractCollection.java"

# interfaces
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection",
        "<TE;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 36
    .local p0, "this":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private toArrayList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 348
    .local p0, "this":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<TE;>;"
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    #@5
    move-result v3

    #@6
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@9
    .line 349
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v1

    #@d
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_0

    #@13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    .line 350
    .local v0, "entry":Ljava/lang/Object;, "TE;"
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1a
    goto :goto_0

    #@1b
    .line 352
    .end local v0    # "entry":Ljava/lang/Object;, "TE;"
    :cond_0
    return-object v2
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 40
    .local p0, "this":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 73
    .local p0, "this":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const/4 v1, 0x0

    #@1
    .line 74
    .local v1, "result":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@4
    move-result-object v0

    #@5
    .line 75
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_1

    #@b
    .line 76
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {p0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_0

    #@15
    .line 77
    const/4 v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 80
    :cond_1
    return v1
.end method

.method public clear()V
    .locals 2

    #@0
    .prologue
    .line 100
    .local p0, "this":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<TE;>;"
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v0

    #@4
    .line 101
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 102
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    .line 103
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@10
    goto :goto_0

    #@11
    .line 99
    :cond_0
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<TE;>;"
    const/4 v2, 0x1

    #@1
    .line 127
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    #@4
    move-result-object v0

    #@5
    .line 128
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    if-eqz p1, :cond_1

    #@7
    .line 129
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_2

    #@d
    .line 130
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_0

    #@17
    .line 131
    return v2

    #@18
    .line 135
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_2

    #@1e
    .line 136
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v1

    #@22
    if-nez v1, :cond_1

    #@24
    .line 137
    return v2

    #@25
    .line 141
    :cond_2
    const/4 v1, 0x0

    #@26
    return v1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 165
    .local p0, "this":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v0

    #@4
    .line 166
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 167
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {p0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    #@11
    move-result v1

    #@12
    if-nez v1, :cond_0

    #@14
    .line 168
    const/4 v1, 0x0

    #@15
    return v1

    #@16
    .line 171
    :cond_1
    const/4 v1, 0x1

    #@17
    return v1
.end method

.method public isEmpty()Z
    .locals 2

    #@0
    .prologue
    .local p0, "this":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<TE;>;"
    const/4 v0, 0x0

    #@1
    .line 184
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public abstract iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<TE;>;"
    const/4 v2, 0x1

    #@1
    .line 225
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    #@4
    move-result-object v0

    #@5
    .line 226
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    if-eqz p1, :cond_1

    #@7
    .line 227
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_2

    #@d
    .line 228
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_0

    #@17
    .line 229
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@1a
    .line 230
    return v2

    #@1b
    .line 234
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@1e
    move-result v1

    #@1f
    if-eqz v1, :cond_2

    #@21
    .line 235
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@24
    move-result-object v1

    #@25
    if-nez v1, :cond_1

    #@27
    .line 236
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@2a
    .line 237
    return v2

    #@2b
    .line 241
    :cond_2
    const/4 v1, 0x0

    #@2c
    return v1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 274
    .local p0, "this":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v1, 0x0

    #@1
    .line 275
    .local v1, "result":Z
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    #@4
    move-result-object v0

    #@5
    .line 276
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_1

    #@b
    .line 277
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_0

    #@15
    .line 278
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@18
    .line 279
    const/4 v1, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 282
    :cond_1
    return v1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 315
    .local p0, "this":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v1, 0x0

    #@1
    .line 316
    .local v1, "result":Z
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    #@4
    move-result-object v0

    #@5
    .line 317
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_1

    #@b
    .line 318
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    #@12
    move-result v2

    #@13
    if-nez v2, :cond_0

    #@15
    .line 319
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@18
    .line 320
    const/4 v1, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 323
    :cond_1
    return v1
.end method

.method public abstract size()I
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 339
    .local p0, "this":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;->toArrayList()Ljava/util/ArrayList;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 343
    .local p0, "this":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<TE;>;"
    .local p1, "contents":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;->toArrayList()Ljava/util/ArrayList;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 364
    .local p0, "this":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<TE;>;"
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 365
    const-string/jumbo v3, "[]"

    #@9
    return-object v3

    #@a
    .line 368
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@c
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    #@f
    move-result v3

    #@10
    mul-int/lit8 v3, v3, 0x10

    #@12
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    #@15
    .line 369
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    #@17
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1a
    .line 370
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    #@1d
    move-result-object v1

    #@1e
    .line 371
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_3

    #@24
    .line 372
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@27
    move-result-object v2

    #@28
    .line 373
    .local v2, "next":Ljava/lang/Object;
    if-eq v2, p0, :cond_2

    #@2a
    .line 374
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2d
    .line 378
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@30
    move-result v3

    #@31
    if-eqz v3, :cond_1

    #@33
    .line 379
    const-string/jumbo v3, ", "

    #@36
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    goto :goto_0

    #@3a
    .line 376
    :cond_2
    const-string/jumbo v3, "(this Collection)"

    #@3d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    goto :goto_1

    #@41
    .line 382
    .end local v2    # "next":Ljava/lang/Object;
    :cond_3
    const/16 v3, 0x5d

    #@43
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@46
    .line 383
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v3

    #@4a
    return-object v3
.end method
