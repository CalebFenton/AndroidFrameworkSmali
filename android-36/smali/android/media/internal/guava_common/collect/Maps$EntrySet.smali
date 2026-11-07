.class abstract Landroid/media/internal/guava_common/collect/Maps$EntrySet;
.super Landroid/media/internal/guava_common/collect/Sets$ImprovedAbstractSet;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/media/internal/guava_common/collect/Sets$ImprovedAbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 4128
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/Sets$ImprovedAbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api clear()V
    .registers 1

    .line 4139
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Maps$EntrySet;->map()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 4144
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    .line 4145
    check-cast p1, Ljava/util/Map$Entry;

    .line 4146
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 4147
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Maps$EntrySet;->map()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/media/internal/guava_common/collect/Maps;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 4148
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/media/internal/guava_common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    if-nez v2, :cond_29

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Maps$EntrySet;->map()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2b

    :cond_29
    const/4 p0, 0x1

    return p0

    :cond_2b
    return v1
.end method

.method public whitelist test-api isEmpty()Z
    .registers 1

    .line 4155
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Maps$EntrySet;->map()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    return p0
.end method

.method abstract blacklist map()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 4164
    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/Maps$EntrySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_1d

    .line 4165
    check-cast p1, Ljava/util/Map$Entry;

    .line 4166
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Maps$EntrySet;->map()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1d
    const/4 p0, 0x0

    return p0
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

    .line 4174
    :try_start_0
    invoke-static {p1}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-super {p0, v0}, Landroid/media/internal/guava_common/collect/Sets$ImprovedAbstractSet;->removeAll(Ljava/util/Collection;)Z

    move-result p0
    :try_end_a
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_a} :catch_b

    return p0

    .line 4177
    :catch_b
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/media/internal/guava_common/collect/Sets;->removeAllImpl(Ljava/util/Set;Ljava/util/Iterator;)Z

    move-result p0

    return p0
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

    .line 4184
    :try_start_0
    invoke-static {p1}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-super {p0, v0}, Landroid/media/internal/guava_common/collect/Sets$ImprovedAbstractSet;->retainAll(Ljava/util/Collection;)Z

    move-result p0
    :try_end_a
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_a} :catch_b

    return p0

    .line 4187
    :catch_b
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, Landroid/media/internal/guava_common/collect/Sets;->newHashSetWithExpectedSize(I)Ljava/util/HashSet;

    move-result-object v0

    .line 4188
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_17
    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4193
    invoke-virtual {p0, v1}, Landroid/media/internal/guava_common/collect/Maps$EntrySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    instance-of v2, v1, Ljava/util/Map$Entry;

    if-eqz v2, :cond_17

    .line 4194
    check-cast v1, Ljava/util/Map$Entry;

    .line 4195
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 4198
    :cond_35
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Maps$EntrySet;->map()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public whitelist test-api size()I
    .registers 1

    .line 4134
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Maps$EntrySet;->map()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method
