.class abstract Landroid/media/internal/guava_common/collect/AbstractMultimap;
.super Ljava/lang/Object;
.source "AbstractMultimap.java"

# interfaces
.implements Landroid/media/internal/guava_common/collect/Multimap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/guava_common/collect/AbstractMultimap$EntrySet;,
        Landroid/media/internal/guava_common/collect/AbstractMultimap$Entries;
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
        "Landroid/media/internal/guava_common/collect/Multimap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private transient blacklist asMap:Ljava/util/Map;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private transient blacklist entries:Ljava/util/Collection;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private transient blacklist keySet:Ljava/util/Set;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist asMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/AbstractMultimap;->asMap:Ljava/util/Map;

    if-nez v0, :cond_a

    .line 212
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/AbstractMultimap;->createAsMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/guava_common/collect/AbstractMultimap;->asMap:Ljava/util/Map;

    :cond_a
    return-object v0
.end method

.method public blacklist containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 61
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/AbstractMultimap;->asMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    if-eqz p0, :cond_14

    .line 62
    invoke-interface {p0, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method abstract blacklist createAsMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation
.end method

.method abstract blacklist createEntries()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end method

.method abstract blacklist createKeySet()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end method

.method public blacklist entries()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/AbstractMultimap;->entries:Ljava/util/Collection;

    if-nez v0, :cond_a

    .line 117
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/AbstractMultimap;->createEntries()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/guava_common/collect/AbstractMultimap;->entries:Ljava/util/Collection;

    :cond_a
    return-object v0
.end method

.method abstract blacklist entryIterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 221
    invoke-static {p0, p1}, Landroid/media/internal/guava_common/collect/Multimaps;->equalsImpl(Landroid/media/internal/guava_common/collect/Multimap;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public whitelist test-api hashCode()I
    .registers 1

    .line 234
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/AbstractMultimap;->asMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->hashCode()I

    move-result p0

    return p0
.end method

.method public blacklist keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/AbstractMultimap;->keySet:Ljava/util/Set;

    if-nez v0, :cond_a

    .line 155
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/AbstractMultimap;->createKeySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/guava_common/collect/AbstractMultimap;->keySet:Ljava/util/Set;

    :cond_a
    return-object v0
.end method

.method public blacklist remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 68
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/AbstractMultimap;->asMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    if-eqz p0, :cond_14

    .line 69
    invoke-interface {p0, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 1

    .line 245
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/AbstractMultimap;->asMap()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
