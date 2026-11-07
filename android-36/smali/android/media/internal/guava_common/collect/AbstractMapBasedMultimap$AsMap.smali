.class Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap;
.super Landroid/media/internal/guava_common/collect/Maps$ViewCachingAbstractMap;
.source "AbstractMapBasedMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;,
        Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/media/internal/guava_common/collect/Maps$ViewCachingAbstractMap<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final transient blacklist submap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;


# direct methods
.method constructor blacklist <init>(Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 1309
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap;->this$0:Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;

    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/Maps$ViewCachingAbstractMap;-><init>()V

    .line 1310
    iput-object p2, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap;->submap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public whitelist test-api clear()V
    .registers 3

    .line 1379
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap;->submap:Ljava/util/Map;

    iget-object v1, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap;->this$0:Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;

    # getter for: Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;
    invoke-static {v1}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;->access$000(Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;)Ljava/util/Map;

    move-result-object v1

    if-ne v0, v1, :cond_10

    .line 1380
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap;->this$0:Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;->clear()V

    return-void

    .line 1382
    :cond_10
    new-instance v0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;

    invoke-direct {v0, p0}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;-><init>(Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap;)V

    invoke-static {v0}, Landroid/media/internal/guava_common/collect/Iterators;->clear(Ljava/util/Iterator;)V

    return-void
.end method

.method public whitelist test-api containsKey(Ljava/lang/Object;)Z
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1322
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap;->submap:Ljava/util/Map;

    invoke-static {p0, p1}, Landroid/media/internal/guava_common/collect/Maps;->safeContainsKey(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected blacklist createEntrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    .line 1315
    new-instance v0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;

    invoke-direct {v0, p0}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;-><init>(Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap;)V

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    if-eq p0, p1, :cond_d

    .line 1364
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap;->submap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic whitelist test-api get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1301
    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public blacklist get(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1328
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap;->submap:Ljava/util/Map;

    invoke-static {v0, p1}, Landroid/media/internal/guava_common/collect/Maps;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 1334
    :cond_c
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap;->this$0:Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;

    invoke-virtual {p0, p1, v0}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;->wrapCollection(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .registers 1

    .line 1369
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap;->submap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->hashCode()I

    move-result p0

    return p0
.end method

.method public whitelist test-api keySet()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 1339
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap;->this$0:Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/AbstractMultimap;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whitelist test-api remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1301
    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap;->remove(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public blacklist remove(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1350
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap;->submap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-nez p1, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 1355
    :cond_c
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap;->this$0:Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;

    invoke-virtual {v0}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;->createCollection()Ljava/util/Collection;

    move-result-object v0

    .line 1356
    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 1357
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap;->this$0:Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    # -= operator for: Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;->totalSize:I
    invoke-static {p0, v1}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;->access$220(Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;I)I

    .line 1358
    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    return-object v0
.end method

.method public whitelist test-api size()I
    .registers 1

    .line 1344
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap;->submap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 1

    .line 1374
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap;->submap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method blacklist wrapEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;)",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 1387
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 1388
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap;->this$0:Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, v0, p1}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;->wrapCollection(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/media/internal/guava_common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method
