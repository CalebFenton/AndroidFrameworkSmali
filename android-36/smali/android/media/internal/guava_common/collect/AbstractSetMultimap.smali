.class abstract Landroid/media/internal/guava_common/collect/AbstractSetMultimap;
.super Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;
.source "AbstractSetMultimap.java"

# interfaces
.implements Landroid/media/internal/guava_common/collect/SetMultimap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap<",
        "TK;TV;>;",
        "Landroid/media/internal/guava_common/collect/SetMultimap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x67226fd4cd0928d8L


# virtual methods
.method public blacklist asMap()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 126
    invoke-super {p0}, Landroid/media/internal/guava_common/collect/AbstractMultimap;->asMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public blacklist entries()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 89
    invoke-super {p0}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;->entries()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 151
    invoke-super {p0, p1}, Landroid/media/internal/guava_common/collect/AbstractMultimap;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method blacklist wrapCollection(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection<",
            "TV;>;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 65
    new-instance v0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedSet;

    check-cast p2, Ljava/util/Set;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedSet;-><init>(Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/Set;)V

    return-object v0
.end method
