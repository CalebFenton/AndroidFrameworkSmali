.class public final Landroid/media/internal/guava_common/collect/LinkedHashMultimap;
.super Landroid/media/internal/guava_common/collect/LinkedHashMultimapGwtSerializationDependencies;
.source "LinkedHashMultimap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;,
        Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;,
        Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/media/internal/guava_common/collect/LinkedHashMultimapGwtSerializationDependencies<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field static final blacklist VALUE_SET_LOAD_FACTOR:D = 1.0

.field private static final whitelist serialVersionUID:J = 0x1L


# instance fields
.field private transient blacklist multimapHeaderEntry:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field transient blacklist valueSetCapacity:I


# direct methods
.method static synthetic blacklist access$200(Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;)V
    .registers 2

    .line 84
    invoke-static {p0, p1}, Landroid/media/internal/guava_common/collect/LinkedHashMultimap;->succeedsInValueSet(Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;)V

    return-void
.end method

.method static synthetic blacklist access$300(Landroid/media/internal/guava_common/collect/LinkedHashMultimap;)Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;
    .registers 1

    .line 84
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap;->multimapHeaderEntry:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;

    return-object p0
.end method

.method static synthetic blacklist access$400(Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;)V
    .registers 2

    .line 84
    invoke-static {p0, p1}, Landroid/media/internal/guava_common/collect/LinkedHashMultimap;->succeedsInMultimap(Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;)V

    return-void
.end method

.method static synthetic blacklist access$500(Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;)V
    .registers 1

    .line 84
    invoke-static {p0}, Landroid/media/internal/guava_common/collect/LinkedHashMultimap;->deleteFromValueSet(Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;)V

    return-void
.end method

.method static synthetic blacklist access$600(Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;)V
    .registers 1

    .line 84
    invoke-static {p0}, Landroid/media/internal/guava_common/collect/LinkedHashMultimap;->deleteFromMultimap(Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;)V

    return-void
.end method

.method private static blacklist deleteFromMultimap(Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 152
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;->getPredecessorInMultimap()Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;->getSuccessorInMultimap()Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/media/internal/guava_common/collect/LinkedHashMultimap;->succeedsInMultimap(Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;)V

    return-void
.end method

.method private static blacklist deleteFromValueSet(Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 147
    invoke-interface {p0}, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;->getPredecessorInValueSet()Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;

    move-result-object v0

    invoke-interface {p0}, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;->getSuccessorInValueSet()Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/media/internal/guava_common/collect/LinkedHashMultimap;->succeedsInValueSet(Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;)V

    return-void
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 614
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 615
    invoke-static {}, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;->newHeader()Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap;->multimapHeaderEntry:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;

    .line 616
    invoke-static {v0, v0}, Landroid/media/internal/guava_common/collect/LinkedHashMultimap;->succeedsInMultimap(Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;)V

    const/4 v0, 0x2

    .line 617
    iput v0, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap;->valueSetCapacity:I

    .line 618
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    const/16 v1, 0xc

    .line 619
    invoke-static {v1}, Landroid/media/internal/guava_common/collect/Platform;->newLinkedHashMapWithExpectedSize(I)Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1b
    if-ge v3, v0, :cond_2b

    .line 622
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    .line 623
    invoke-virtual {p0, v4}, Landroid/media/internal/guava_common/collect/LinkedHashMultimap;->createCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 625
    :cond_2b
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    :goto_2f
    if-ge v2, v0, :cond_48

    .line 628
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 630
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    .line 635
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 637
    :cond_48
    invoke-virtual {p0, v1}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;->setMap(Ljava/util/Map;)V

    return-void
.end method

.method private static blacklist succeedsInMultimap(Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry<",
            "TK;TV;>;",
            "Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 141
    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;->setSuccessorInMultimap(Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;)V

    .line 142
    invoke-virtual {p1, p0}, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;->setPredecessorInMultimap(Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;)V

    return-void
.end method

.method private static blacklist succeedsInValueSet(Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink<",
            "TK;TV;>;",
            "Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 135
    invoke-interface {p0, p1}, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;->setSuccessorInValueSet(Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;)V

    .line 136
    invoke-interface {p1, p0}, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;->setPredecessorInValueSet(Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;)V

    return-void
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 599
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 600
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/LinkedHashMultimap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 601
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/LinkedHashMultimap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 602
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_16

    .line 604
    :cond_24
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/LinkedHashMultimap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 605
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/LinkedHashMultimap;->entries()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_33
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 606
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 607
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_33

    :cond_4e
    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist asMap()Ljava/util/Map;
    .registers 1

    .line 82
    invoke-super {p0}, Landroid/media/internal/guava_common/collect/AbstractSetMultimap;->asMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public blacklist clear()V
    .registers 1

    .line 588
    invoke-super {p0}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;->clear()V

    .line 589
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap;->multimapHeaderEntry:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;

    invoke-static {p0, p0}, Landroid/media/internal/guava_common/collect/LinkedHashMultimap;->succeedsInMultimap(Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;)V

    return-void
.end method

.method public bridge synthetic blacklist containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 82
    invoke-super {p0, p1, p2}, Landroid/media/internal/guava_common/collect/AbstractMultimap;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic blacklist createCollection()Ljava/util/Collection;
    .registers 1

    .line 82
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/LinkedHashMultimap;->createCollection()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method blacklist createCollection(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 293
    new-instance v0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;

    iget v1, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap;->valueSetCapacity:I

    invoke-direct {v0, p0, p1, v1}, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;-><init>(Landroid/media/internal/guava_common/collect/LinkedHashMultimap;Ljava/lang/Object;I)V

    return-object v0
.end method

.method blacklist createCollection()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 279
    iget p0, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap;->valueSetCapacity:I

    invoke-static {p0}, Landroid/media/internal/guava_common/collect/Platform;->newLinkedHashSetWithExpectedSize(I)Ljava/util/Set;

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

    .line 322
    invoke-super {p0}, Landroid/media/internal/guava_common/collect/AbstractSetMultimap;->entries()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method blacklist entryIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 552
    new-instance v0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$1;

    invoke-direct {v0, p0}, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$1;-><init>(Landroid/media/internal/guava_common/collect/LinkedHashMultimap;)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api equals(Ljava/lang/Object;)Z
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

    .line 82
    invoke-super {p0, p1}, Landroid/media/internal/guava_common/collect/AbstractSetMultimap;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic whitelist test-api hashCode()I
    .registers 1

    .line 82
    invoke-super {p0}, Landroid/media/internal/guava_common/collect/AbstractMultimap;->hashCode()I

    move-result p0

    return p0
.end method

.method public blacklist keySet()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 337
    invoke-super {p0}, Landroid/media/internal/guava_common/collect/AbstractMultimap;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic blacklist remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 82
    invoke-super {p0, p1, p2}, Landroid/media/internal/guava_common/collect/AbstractMultimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic blacklist size()I
    .registers 1

    .line 82
    invoke-super {p0}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic whitelist test-api toString()Ljava/lang/String;
    .registers 1

    .line 82
    invoke-super {p0}, Landroid/media/internal/guava_common/collect/AbstractMultimap;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
