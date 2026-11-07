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
    accessFlags = 0x8
    name = "CheckedEntrySet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;
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
        "Ljava/util/Set<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final greylist-max-o s:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o valueType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetvalueType(Ljava/util/Collections$CheckedMap$CheckedEntrySet;)Ljava/lang/Class;
    .registers 1

    iget-object p0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->valueType:Ljava/lang/Class;

    return-object p0
.end method

.method constructor greylist-max-o <init>(Ljava/util/Set;Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;",
            "Ljava/lang/Class<",
            "TV;>;)V"
        }
    .end annotation

    .line 4135
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet;, "Ljava/util/Collections$CheckedMap$CheckedEntrySet<TK;TV;>;"
    .local p1, "s":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4136
    iput-object p1, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->s:Ljava/util/Set;

    .line 4137
    iput-object p2, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->valueType:Ljava/lang/Class;

    .line 4138
    return-void
.end method

.method private greylist-max-o batchRemove(Ljava/util/Collection;Z)Z
    .registers 6
    .param p2, "complement"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;Z)Z"
        }
    .end annotation

    .line 4255
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet;, "Ljava/util/Collections$CheckedMap$CheckedEntrySet<TK;TV;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4256
    const/4 v0, 0x0

    .line 4257
    .local v0, "modified":Z
    invoke-virtual {p0}, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4258
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 4259
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, p2, :cond_8

    .line 4260
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 4261
    const/4 v0, 0x1

    goto :goto_8

    .line 4264
    :cond_1d
    return v0
.end method

.method static greylist-max-o checkedEntry(Ljava/util/Map$Entry;Ljava/lang/Class;)Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry<",
            "TK;TV;TT;>;"
        }
    .end annotation

    .line 4285
    .local p0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .local p1, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;

    invoke-direct {v0, p0, p1}, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;-><init>(Ljava/util/Map$Entry;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic whitelist test-api add(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 4131
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet;, "Ljava/util/Collections$CheckedMap$CheckedEntrySet<TK;TV;>;"
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->add(Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method

.method public greylist-max-o add(Ljava/util/Map$Entry;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 4147
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet;, "Ljava/util/Collections$CheckedMap$CheckedEntrySet<TK;TV;>;"
    .local p1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api addAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)Z"
        }
    .end annotation

    .line 4150
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet;, "Ljava/util/Collections$CheckedMap$CheckedEntrySet<TK;TV;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api clear()V
    .registers 2

    .line 4144
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet;, "Ljava/util/Collections$CheckedMap$CheckedEntrySet<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 4222
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet;, "Ljava/util/Collections$CheckedMap$CheckedEntrySet<TK;TV;>;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_6

    .line 4223
    const/4 v0, 0x0

    return v0

    .line 4224
    :cond_6
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 4225
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v1, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->s:Ljava/util/Set;

    .line 4226
    instance-of v2, v0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;

    if-eqz v2, :cond_11

    move-object v2, v0

    goto :goto_17

    :cond_11
    iget-object v2, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->valueType:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->checkedEntry(Ljava/util/Map$Entry;Ljava/lang/Class;)Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;

    move-result-object v2

    .line 4225
    :goto_17
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

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

    .line 4235
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet;, "Ljava/util/Collections$CheckedMap$CheckedEntrySet<TK;TV;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4236
    .local v1, "o":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 4237
    const/4 v0, 0x0

    return v0

    .line 4236
    .end local v1    # "o":Ljava/lang/Object;
    :cond_16
    goto :goto_4

    .line 4238
    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 4268
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet;, "Ljava/util/Collections$CheckedMap$CheckedEntrySet<TK;TV;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 4269
    return v0

    .line 4276
    :cond_4
    instance-of v1, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 4277
    return v2

    .line 4278
    :cond_a
    move-object v1, p1

    check-cast v1, Ljava/util/Set;

    .line 4279
    .local v1, "that":Ljava/util/Set;, "Ljava/util/Set<*>;"
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    iget-object v4, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->s:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-ne v3, v4, :cond_20

    .line 4280
    invoke-virtual {p0, v1}, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_20

    goto :goto_21

    :cond_20
    move v0, v2

    .line 4279
    :goto_21
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 4143
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet;, "Ljava/util/Collections$CheckedMap$CheckedEntrySet<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 4141
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet;, "Ljava/util/Collections$CheckedMap$CheckedEntrySet<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 4154
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet;, "Ljava/util/Collections$CheckedMap$CheckedEntrySet<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4156
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v1, Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;

    invoke-direct {v1, p0, v0}, Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;-><init>(Ljava/util/Collections$CheckedMap$CheckedEntrySet;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 4242
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet;, "Ljava/util/Collections$CheckedMap$CheckedEntrySet<TK;TV;>;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_6

    .line 4243
    const/4 v0, 0x0

    return v0

    .line 4244
    :cond_6
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->s:Ljava/util/Set;

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-object v2, p1

    check-cast v2, Ljava/util/Map$Entry;

    invoke-direct {v1, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/util/Map$Entry;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 4249
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet;, "Ljava/util/Collections$CheckedMap$CheckedEntrySet<TK;TV;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->batchRemove(Ljava/util/Collection;Z)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 4252
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet;, "Ljava/util/Collections$CheckedMap$CheckedEntrySet<TK;TV;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->batchRemove(Ljava/util/Collection;Z)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 4140
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet;, "Ljava/util/Collections$CheckedMap$CheckedEntrySet<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 6

    .line 4175
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet;, "Ljava/util/Collections$CheckedMap$CheckedEntrySet<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 4181
    .local v0, "source":[Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, [Ljava/lang/Object;

    if-ne v1, v2, :cond_10

    .line 4182
    move-object v1, v0

    goto :goto_13

    .line 4183
    :cond_10
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/Object;

    :goto_13
    nop

    .line 4185
    .local v1, "dest":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    array-length v3, v0

    if-ge v2, v3, :cond_27

    .line 4186
    aget-object v3, v0, v2

    check-cast v3, Ljava/util/Map$Entry;

    iget-object v4, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->valueType:Ljava/lang/Class;

    invoke-static {v3, v4}, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->checkedEntry(Ljava/util/Map$Entry;Ljava/lang/Class;)Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;

    move-result-object v3

    aput-object v3, v1, v2

    .line 4185
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 4188
    .end local v2    # "i":I
    :cond_27
    return-object v1
.end method

.method public whitelist test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 4196
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet;, "Ljava/util/Collections$CheckedMap$CheckedEntrySet<TK;TV;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->s:Ljava/util/Set;

    array-length v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_8

    move-object v1, p1

    goto :goto_c

    :cond_8
    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    :goto_c
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 4198
    .local v0, "arr":[Ljava/lang/Object;, "[TT;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    array-length v3, v0

    if-ge v1, v3, :cond_23

    .line 4199
    aget-object v3, v0, v1

    check-cast v3, Ljava/util/Map$Entry;

    iget-object v4, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->valueType:Ljava/lang/Class;

    invoke-static {v3, v4}, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->checkedEntry(Ljava/util/Map$Entry;Ljava/lang/Class;)Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;

    move-result-object v3

    aput-object v3, v0, v1

    .line 4198
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 4201
    .end local v1    # "i":I
    :cond_23
    array-length v1, v0

    array-length v3, p1

    if-le v1, v3, :cond_28

    .line 4202
    return-object v0

    .line 4204
    :cond_28
    array-length v1, v0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4205
    array-length v1, p1

    array-length v2, v0

    if-le v1, v2, :cond_34

    .line 4206
    array-length v1, v0

    const/4 v2, 0x0

    aput-object v2, p1, v1

    .line 4207
    :cond_34
    return-object p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 4142
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet;, "Ljava/util/Collections$CheckedMap$CheckedEntrySet<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->s:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
