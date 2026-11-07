.class abstract Landroid/media/internal/guava_common/collect/Multimaps$Entries;
.super Ljava/util/AbstractCollection;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/Multimaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Entries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1824
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api clear()V
    .registers 1

    .line 1853
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Multimaps$Entries;->multimap()Landroid/media/internal/guava_common/collect/Multimap;

    move-result-object p0

    invoke-interface {p0}, Landroid/media/internal/guava_common/collect/Multimap;->clear()V

    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1835
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_17

    .line 1836
    check-cast p1, Ljava/util/Map$Entry;

    .line 1837
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Multimaps$Entries;->multimap()Landroid/media/internal/guava_common/collect/Multimap;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Landroid/media/internal/guava_common/collect/Multimap;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method abstract blacklist multimap()Landroid/media/internal/guava_common/collect/Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/collect/Multimap<",
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

    .line 1844
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_17

    .line 1845
    check-cast p1, Ljava/util/Map$Entry;

    .line 1846
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Multimaps$Entries;->multimap()Landroid/media/internal/guava_common/collect/Multimap;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Landroid/media/internal/guava_common/collect/Multimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api size()I
    .registers 1

    .line 1830
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Multimaps$Entries;->multimap()Landroid/media/internal/guava_common/collect/Multimap;

    move-result-object p0

    invoke-interface {p0}, Landroid/media/internal/guava_common/collect/Multimap;->size()I

    move-result p0

    return p0
.end method
