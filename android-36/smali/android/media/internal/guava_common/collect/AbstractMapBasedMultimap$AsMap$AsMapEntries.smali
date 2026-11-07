.class Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;
.super Landroid/media/internal/guava_common/collect/Maps$EntrySet;
.source "AbstractMapBasedMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsMapEntries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/media/internal/guava_common/collect/Maps$EntrySet<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap;


# direct methods
.method constructor blacklist <init>(Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1392
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;->this$1:Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap;

    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/Maps$EntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1407
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;->this$1:Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap;

    iget-object p0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap;->submap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/media/internal/guava_common/collect/Collections2;->safeContains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    .line 1400
    new-instance v0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;

    iget-object p0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;->this$1:Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap;

    invoke-direct {v0, p0}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;-><init>(Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap;)V

    return-object v0
.end method

.method blacklist map()Ljava/util/Map;
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

    .line 1395
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;->this$1:Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap;

    return-object p0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1412
    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 1416
    :cond_8
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1417
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;->this$1:Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap;

    iget-object p0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap;->this$0:Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    # invokes: Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;->removeValuesForKey(Ljava/lang/Object;)V
    invoke-static {p0, p1}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;->access$300(Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method
