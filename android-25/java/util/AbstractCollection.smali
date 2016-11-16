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


# static fields
.field private static final MAX_ARRAY_SIZE:I = 0x7ffffff7


# direct methods
.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 66
    .local p0, "this":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static finishToArray([Ljava/lang/Object;Ljava/util/Iterator;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Iterator",
            "<*>;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 220
    .local p0, "r":[Ljava/lang/Object;, "[TT;"
    .local p1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    array-length v1, p0

    #@1
    .line 221
    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@4
    move-result v4

    #@5
    if-eqz v4, :cond_2

    #@7
    .line 222
    array-length v0, p0

    #@8
    .line 223
    .local v0, "cap":I
    if-ne v1, v0, :cond_1

    #@a
    .line 224
    shr-int/lit8 v4, v0, 0x1

    #@c
    add-int/2addr v4, v0

    #@d
    add-int/lit8 v3, v4, 0x1

    #@f
    .line 226
    .local v3, "newCap":I
    const v4, 0x7ffffff7

    #@12
    sub-int v4, v3, v4

    #@14
    if-lez v4, :cond_0

    #@16
    .line 227
    add-int/lit8 v4, v0, 0x1

    #@18
    invoke-static {v4}, Ljava/util/AbstractCollection;->hugeCapacity(I)I

    #@1b
    move-result v3

    #@1c
    .line 228
    :cond_0
    invoke-static {p0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@1f
    move-result-object p0

    #@20
    .line 230
    .end local v3    # "newCap":I
    :cond_1
    add-int/lit8 v2, v1, 0x1

    #@22
    .end local v1    # "i":I
    .local v2, "i":I
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@25
    move-result-object v4

    #@26
    aput-object v4, p0, v1

    #@28
    move v1, v2

    #@29
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    #@2a
    .line 233
    .end local v0    # "cap":I
    :cond_2
    array-length v4, p0

    #@2b
    if-ne v1, v4, :cond_3

    #@2d
    .end local p0    # "r":[Ljava/lang/Object;, "[TT;"
    :goto_1
    return-object p0

    #@2e
    .restart local p0    # "r":[Ljava/lang/Object;, "[TT;"
    :cond_3
    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@31
    move-result-object p0

    #@32
    goto :goto_1
.end method

.method private static hugeCapacity(I)I
    .locals 2
    .param p0, "minCapacity"    # I

    #@0
    .prologue
    const v0, 0x7ffffff7

    #@3
    .line 237
    if-gez p0, :cond_0

    #@5
    .line 238
    new-instance v0, Ljava/lang/OutOfMemoryError;

    #@7
    .line 239
    const-string/jumbo v1, "Required array size too large"

    #@a
    .line 238
    invoke-direct {v0, v1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 240
    :cond_0
    if-le p0, v0, :cond_1

    #@10
    .line 241
    const v0, 0x7fffffff

    #@13
    .line 240
    :cond_1
    return v0
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
    .line 260
    .local p0, "this":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 340
    .local p0, "this":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const/4 v2, 0x0

    #@1
    .line 341
    .local v2, "modified":Z
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4
    move-result-object v1

    #@5
    .local v1, "e$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_1

    #@b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    .line 342
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_0

    #@15
    .line 343
    const/4 v2, 0x1

    #@16
    goto :goto_0

    #@17
    .line 344
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_1
    return v2
.end method

.method public clear()V
    .locals 2

    #@0
    .prologue
    .line 429
    .local p0, "this":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<TE;>;"
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v0

    #@4
    .line 430
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 431
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    .line 432
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@10
    goto :goto_0

    #@11
    .line 428
    :cond_0
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<TE;>;"
    const/4 v2, 0x1

    #@1
    .line 99
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    #@4
    move-result-object v0

    #@5
    .line 100
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    if-nez p1, :cond_1

    #@7
    .line 101
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_2

    #@d
    .line 102
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    if-nez v1, :cond_0

    #@13
    .line 103
    return v2

    #@14
    .line 105
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_2

    #@1a
    .line 106
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_1

    #@24
    .line 107
    return v2

    #@25
    .line 109
    :cond_2
    const/4 v1, 0x0

    #@26
    return v1
.end method

.method public containsAll(Ljava/util/Collection;)Z
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
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v1

    #@4
    .local v1, "e$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_1

    #@a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    .line 316
    .local v0, "e":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    #@11
    move-result v2

    #@12
    if-nez v2, :cond_0

    #@14
    .line 317
    const/4 v2, 0x0

    #@15
    return v2

    #@16
    .line 318
    .end local v0    # "e":Ljava/lang/Object;
    :cond_1
    const/4 v2, 0x1

    #@17
    return v2
.end method

.method public isEmpty()Z
    .locals 2

    #@0
    .prologue
    .local p0, "this":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<TE;>;"
    const/4 v0, 0x0

    #@1
    .line 86
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
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<TE;>;"
    const/4 v2, 0x1

    #@1
    .line 280
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    #@4
    move-result-object v0

    #@5
    .line 281
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    if-nez p1, :cond_1

    #@7
    .line 282
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_2

    #@d
    .line 283
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    if-nez v1, :cond_0

    #@13
    .line 284
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@16
    .line 285
    return v2

    #@17
    .line 289
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_2

    #@1d
    .line 290
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v1

    #@25
    if-eqz v1, :cond_1

    #@27
    .line 291
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@2a
    .line 292
    return v2

    #@2b
    .line 296
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
    .line 369
    .local p0, "this":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v1, 0x0

    #@1
    .line 370
    .local v1, "modified":Z
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    #@4
    move-result-object v0

    #@5
    .line 371
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_1

    #@b
    .line 372
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
    .line 373
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@18
    .line 374
    const/4 v1, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 377
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
    .line 402
    .local p0, "this":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v1, 0x0

    #@1
    .line 403
    .local v1, "modified":Z
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    #@4
    move-result-object v0

    #@5
    .line 404
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_1

    #@b
    .line 405
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
    .line 406
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@18
    .line 407
    const/4 v1, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 410
    :cond_1
    return v1
.end method

.method public abstract size()I
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    #@0
    .prologue
    .line 136
    .local p0, "this":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<TE;>;"
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    #@3
    move-result v3

    #@4
    new-array v2, v3, [Ljava/lang/Object;

    #@6
    .line 137
    .local v2, "r":[Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .line 138
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_0
    array-length v3, v2

    #@c
    if-ge v0, v3, :cond_1

    #@e
    .line 139
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v3

    #@12
    if-nez v3, :cond_0

    #@14
    .line 140
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@17
    move-result-object v3

    #@18
    return-object v3

    #@19
    .line 141
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v3

    #@1d
    aput-object v3, v2, v0

    #@1f
    .line 138
    add-int/lit8 v0, v0, 0x1

    #@21
    goto :goto_0

    #@22
    .line 143
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_2

    #@28
    invoke-static {v2, v1}, Ljava/util/AbstractCollection;->finishToArray([Ljava/lang/Object;Ljava/util/Iterator;)[Ljava/lang/Object;

    #@2b
    move-result-object v2

    #@2c
    .end local v2    # "r":[Ljava/lang/Object;
    :cond_2
    return-object v2
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 175
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    #@5
    move-result v3

    #@6
    .line 176
    .local v3, "size":I
    array-length v4, p1

    #@7
    if-lt v4, v3, :cond_1

    #@9
    move-object v2, p1

    #@a
    .line 179
    .local v2, "r":[Ljava/lang/Object;, "[TT;"
    :goto_0
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v1

    #@e
    .line 181
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_1
    array-length v4, v2

    #@10
    if-ge v0, v4, :cond_5

    #@12
    .line 182
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v4

    #@16
    if-nez v4, :cond_4

    #@18
    .line 183
    if-ne p1, v2, :cond_2

    #@1a
    .line 184
    aput-object v6, v2, v0

    #@1c
    .line 193
    :cond_0
    :goto_2
    return-object p1

    #@1d
    .line 178
    .end local v0    # "i":I
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    .end local v2    # "r":[Ljava/lang/Object;, "[TT;"
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@24
    move-result-object v4

    #@25
    .line 177
    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@28
    move-result-object v2

    #@29
    check-cast v2, [Ljava/lang/Object;

    #@2b
    .restart local v2    # "r":[Ljava/lang/Object;, "[TT;"
    goto :goto_0

    #@2c
    .line 185
    .restart local v0    # "i":I
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_2
    array-length v4, p1

    #@2d
    if-ge v4, v0, :cond_3

    #@2f
    .line 186
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@32
    move-result-object v4

    #@33
    return-object v4

    #@34
    .line 188
    :cond_3
    invoke-static {v2, v5, p1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@37
    .line 189
    array-length v4, p1

    #@38
    if-le v4, v0, :cond_0

    #@3a
    .line 190
    aput-object v6, p1, v0

    #@3c
    goto :goto_2

    #@3d
    .line 195
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@40
    move-result-object v4

    #@41
    aput-object v4, v2, v0

    #@43
    .line 181
    add-int/lit8 v0, v0, 0x1

    #@45
    goto :goto_1

    #@46
    .line 198
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@49
    move-result v4

    #@4a
    if-eqz v4, :cond_6

    #@4c
    invoke-static {v2, v1}, Ljava/util/AbstractCollection;->finishToArray([Ljava/lang/Object;Ljava/util/Iterator;)[Ljava/lang/Object;

    #@4f
    move-result-object v2

    #@50
    .end local v2    # "r":[Ljava/lang/Object;, "[TT;"
    :cond_6
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 450
    .local p0, "this":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<TE;>;"
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v1

    #@4
    .line 451
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v3

    #@8
    if-nez v3, :cond_0

    #@a
    .line 452
    const-string/jumbo v3, "[]"

    #@d
    return-object v3

    #@e
    .line 454
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    .line 455
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@18
    .line 457
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    .line 458
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-ne v0, p0, :cond_1

    #@1e
    const-string/jumbo v0, "(this Collection)"

    #@21
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    .line 459
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@27
    move-result v3

    #@28
    if-nez v3, :cond_2

    #@2a
    .line 460
    const/16 v3, 0x5d

    #@2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v3

    #@34
    return-object v3

    #@35
    .line 461
    :cond_2
    const/16 v3, 0x2c

    #@37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v3

    #@3b
    const/16 v4, 0x20

    #@3d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@40
    goto :goto_0
.end method
