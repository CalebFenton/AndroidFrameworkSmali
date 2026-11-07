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
        "Ljava/util/Collection<",
        "TE;>;"
    }
.end annotation


# direct methods
.method protected constructor whitelist test-api <init>()V
    .registers 1

    .line 68
    .local p0, "this":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method private static greylist-max-o finishToArray([Ljava/lang/Object;Ljava/util/Iterator;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Iterator<",
            "*>;)[TT;"
        }
    .end annotation

    .line 220
    .local p0, "r":[Ljava/lang/Object;, "[TT;"
    .local p1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    array-length v0, p0

    .line 221
    .local v0, "len":I
    move v1, v0

    .line 222
    .local v1, "i":I
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 223
    if-ne v1, v0, :cond_16

    .line 224
    shr-int/lit8 v2, v0, 0x1

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-static {v0, v3, v2}, Ljdk/internal/util/ArraysSupport;->newLength(III)I

    move-result v0

    .line 227
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    .line 229
    :cond_16
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p0, v1

    move v1, v2

    goto :goto_2

    .line 232
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_20
    if-ne v1, v0, :cond_24

    move-object v2, p0

    goto :goto_28

    :cond_24
    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    :goto_28
    return-object v2
.end method


# virtual methods
.method public whitelist test-api add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 251
    .local p0, "this":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api addAll(Ljava/util/Collection;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 334
    .local p0, "this":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const/4 v0, 0x0

    .line 335
    .local v0, "modified":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 336
    .local v2, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 337
    const/4 v0, 0x1

    .line 336
    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    :cond_16
    goto :goto_5

    .line 338
    :cond_17
    return v0
.end method

.method public whitelist test-api clear()V
    .registers 3

    .line 428
    .local p0, "this":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<TE;>;"
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 429
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 430
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 431
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 433
    :cond_11
    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 103
    .local p0, "this":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<TE;>;"
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 104
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    const/4 v1, 0x1

    if-nez p1, :cond_14

    .line 105
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 106
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_7

    .line 107
    return v1

    .line 109
    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 110
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 111
    return v1

    .line 113
    :cond_25
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist test-api containsAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 308
    .local p0, "this":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 309
    .local v1, "e":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 310
    const/4 v0, 0x0

    return v0

    .line 309
    .end local v1    # "e":Ljava/lang/Object;
    :cond_16
    goto :goto_4

    .line 311
    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 89
    .local p0, "this":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<TE;>;"
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public abstract whitelist test-api iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 272
    .local p0, "this":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<TE;>;"
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 273
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    const/4 v1, 0x1

    if-nez p1, :cond_17

    .line 274
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 275
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_7

    .line 276
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 277
    return v1

    .line 281
    :cond_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 282
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 283
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 284
    return v1

    .line 288
    :cond_2b
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist test-api removeAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 364
    .local p0, "this":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    const/4 v0, 0x0

    .line 366
    .local v0, "modified":Z
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 367
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 368
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 369
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 370
    const/4 v0, 0x1

    goto :goto_8

    .line 373
    :cond_1d
    return v0
.end method

.method public whitelist test-api retainAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 399
    .local p0, "this":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    const/4 v0, 0x0

    .line 401
    .local v0, "modified":Z
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 402
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 403
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 404
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 405
    const/4 v0, 0x1

    goto :goto_8

    .line 408
    :cond_1d
    return v0
.end method

.method public abstract whitelist test-api size()I
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 5

    .line 141
    .local p0, "this":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<TE;>;"
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 142
    .local v0, "r":[Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 143
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    array-length v3, v0

    if-ge v2, v3, :cond_22

    .line 144
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_19

    .line 145
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 146
    :cond_19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    .line 143
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 148
    .end local v2    # "i":I
    :cond_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-static {v0, v1}, Ljava/util/AbstractCollection;->finishToArray([Ljava/lang/Object;Ljava/util/Iterator;)[Ljava/lang/Object;

    move-result-object v2

    goto :goto_2e

    :cond_2d
    move-object v2, v0

    :goto_2e
    return-object v2
.end method

.method public whitelist test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 182
    .local p0, "this":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    .line 183
    .local v0, "size":I
    array-length v1, p1

    if-lt v1, v0, :cond_9

    move-object v1, p1

    goto :goto_18

    .line 184
    :cond_9
    nop

    .line 185
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    :goto_18
    nop

    .line 186
    .local v1, "r":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 188
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1e
    array-length v4, v1

    if-ge v3, v4, :cond_48

    .line 189
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3f

    .line 190
    const/4 v4, 0x0

    if-ne p1, v1, :cond_2d

    .line 191
    aput-object v4, v1, v3

    goto :goto_3e

    .line 192
    :cond_2d
    array-length v5, p1

    if-ge v5, v3, :cond_35

    .line 193
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 195
    :cond_35
    const/4 v5, 0x0

    invoke-static {v1, v5, p1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    array-length v5, p1

    if-le v5, v3, :cond_3e

    .line 197
    aput-object v4, p1, v3

    .line 200
    :cond_3e
    :goto_3e
    return-object p1

    .line 202
    :cond_3f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v3

    .line 188
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 205
    .end local v3    # "i":I
    :cond_48
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-static {v1, v2}, Ljava/util/AbstractCollection;->finishToArray([Ljava/lang/Object;Ljava/util/Iterator;)[Ljava/lang/Object;

    move-result-object v3

    goto :goto_54

    :cond_53
    move-object v3, v1

    :goto_54
    return-object v3
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 449
    .local p0, "this":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<TE;>;"
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 450
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_d

    .line 451
    const-string v1, "[]"

    return-object v1

    .line 453
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 454
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 456
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 457
    .local v2, "e":Ljava/lang/Object;, "TE;"
    if-ne v2, p0, :cond_20

    const-string v3, "(this Collection)"

    goto :goto_21

    :cond_20
    move-object v3, v2

    :goto_21
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 458
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_35

    .line 459
    const/16 v3, 0x5d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 460
    :cond_35
    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 461
    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    goto :goto_17
.end method
