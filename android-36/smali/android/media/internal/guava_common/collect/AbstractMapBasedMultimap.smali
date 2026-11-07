.class abstract Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;
.super Landroid/media/internal/guava_common/collect/AbstractMultimap;
.source "AbstractMapBasedMultimap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;,
        Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$KeySet;,
        Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap;,
        Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedSet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/media/internal/guava_common/collect/AbstractMultimap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x21f766b1f568c81dL


# instance fields
.field private transient blacklist map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private transient blacklist totalSize:I


# direct methods
.method static synthetic blacklist access$000(Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;)Ljava/util/Map;
    .registers 1

    .line 88
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic blacklist access$100(Ljava/util/Collection;)Ljava/util/Iterator;
    .registers 1

    .line 88
    invoke-static {p0}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;->iteratorOrListIterator(Ljava/util/Collection;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist access$208(Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;)I
    .registers 3

    .line 88
    iget v0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;->totalSize:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;->totalSize:I

    return v0
.end method

.method static synthetic blacklist access$210(Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;)I
    .registers 3

    .line 88
    iget v0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;->totalSize:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;->totalSize:I

    return v0
.end method

.method static synthetic blacklist access$212(Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;I)I
    .registers 3

    .line 88
    iget v0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;->totalSize:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;->totalSize:I

    return v0
.end method

.method static synthetic blacklist access$220(Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;I)I
    .registers 3

    .line 88
    iget v0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;->totalSize:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;->totalSize:I

    return v0
.end method

.method static synthetic blacklist access$300(Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;)V
    .registers 2

    .line 88
    invoke-direct {p0, p1}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;->removeValuesForKey(Ljava/lang/Object;)V

    return-void
.end method

.method private static blacklist iteratorOrListIterator(Ljava/util/Collection;)Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;)",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 584
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_b

    .line 585
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p0

    return-object p0

    .line 586
    :cond_b
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private blacklist removeValuesForKey(Ljava/lang/Object;)V
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1148
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    invoke-static {v0, p1}, Landroid/media/internal/guava_common/collect/Maps;->safeRemove(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_16

    .line 1151
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 1152
    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    .line 1153
    iget p1, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;->totalSize:I

    sub-int/2addr p1, v0

    iput p1, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;->totalSize:I

    :cond_16
    return-void
.end method


# virtual methods
.method public blacklist clear()V
    .registers 3

    .line 273
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 274
    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    goto :goto_a

    .line 276
    :cond_1a
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 277
    iput v0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;->totalSize:I

    return-void
.end method

.method blacklist createAsMap()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 1288
    new-instance v0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap;

    iget-object v1, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap;-><init>(Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;Ljava/util/Map;)V

    return-object v0
.end method

.method abstract blacklist createCollection()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end method

.method blacklist createEntries()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1261
    instance-of v0, p0, Landroid/media/internal/guava_common/collect/SetMultimap;

    if-eqz v0, :cond_a

    .line 1262
    new-instance v0, Landroid/media/internal/guava_common/collect/AbstractMultimap$EntrySet;

    invoke-direct {v0, p0}, Landroid/media/internal/guava_common/collect/AbstractMultimap$EntrySet;-><init>(Landroid/media/internal/guava_common/collect/AbstractMultimap;)V

    return-object v0

    .line 1264
    :cond_a
    new-instance v0, Landroid/media/internal/guava_common/collect/AbstractMultimap$Entries;

    invoke-direct {v0, p0}, Landroid/media/internal/guava_common/collect/AbstractMultimap$Entries;-><init>(Landroid/media/internal/guava_common/collect/AbstractMultimap;)V

    return-object v0
.end method

.method blacklist createKeySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 923
    new-instance v0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$KeySet;

    iget-object v1, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$KeySet;-><init>(Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;Ljava/util/Map;)V

    return-object v0
.end method

.method public blacklist entries()Ljava/util/Collection;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1256
    invoke-super {p0}, Landroid/media/internal/guava_common/collect/AbstractMultimap;->entries()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method final blacklist setMap(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 125
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    const/4 v0, 0x0

    .line 126
    iput v0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;->totalSize:I

    .line 127
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 128
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroid/media/internal/guava_common/base/Preconditions;->checkArgument(Z)V

    .line 129
    iget v1, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;->totalSize:I

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;->totalSize:I

    goto :goto_d

    :cond_2c
    return-void
.end method

.method public blacklist size()I
    .registers 1

    .line 174
    iget p0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;->totalSize:I

    return p0
.end method

.method abstract blacklist wrapCollection(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection<",
            "TV;>;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end method
