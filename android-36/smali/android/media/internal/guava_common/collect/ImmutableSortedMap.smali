.class public final Landroid/media/internal/guava_common/collect/ImmutableSortedMap;
.super Landroid/media/internal/guava_common/collect/ImmutableMap;
.source "ImmutableSortedMap.java"

# interfaces
.implements Ljava/util/NavigableMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/guava_common/collect/ImmutableSortedMap$Builder;,
        Landroid/media/internal/guava_common/collect/ImmutableSortedMap$SerializedForm;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/media/internal/guava_common/collect/ImmutableMap<",
        "TK;TV;>;",
        "Ljava/util/NavigableMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final blacklist NATURAL_EMPTY_MAP:Landroid/media/internal/guava_common/collect/ImmutableSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/guava_common/collect/ImmutableSortedMap<",
            "Ljava/lang/Comparable<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist NATURAL_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "*>;"
        }
    .end annotation
.end field

.field private static final whitelist serialVersionUID:J


# instance fields
.field private transient blacklist descendingMap:Landroid/media/internal/guava_common/collect/ImmutableSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/guava_common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private final transient blacklist keySet:Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final transient blacklist valueList:Landroid/media/internal/guava_common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/guava_common/collect/ImmutableList<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 116
    invoke-static {}, Landroid/media/internal/guava_common/collect/Ordering;->natural()Landroid/media/internal/guava_common/collect/Ordering;

    move-result-object v0

    sput-object v0, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->NATURAL_ORDER:Ljava/util/Comparator;

    .line 118
    new-instance v0, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;

    .line 120
    invoke-static {}, Landroid/media/internal/guava_common/collect/Ordering;->natural()Landroid/media/internal/guava_common/collect/Ordering;

    move-result-object v1

    invoke-static {v1}, Landroid/media/internal/guava_common/collect/ImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;

    move-result-object v1

    invoke-static {}, Landroid/media/internal/guava_common/collect/ImmutableList;->of()Landroid/media/internal/guava_common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;-><init>(Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;Landroid/media/internal/guava_common/collect/ImmutableList;)V

    sput-object v0, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->NATURAL_EMPTY_MAP:Landroid/media/internal/guava_common/collect/ImmutableSortedMap;

    return-void
.end method

.method constructor blacklist <init>(Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;Landroid/media/internal/guava_common/collect/ImmutableList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet<",
            "TK;>;",
            "Landroid/media/internal/guava_common/collect/ImmutableList<",
            "TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 812
    invoke-direct {p0, p1, p2, v0}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;-><init>(Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;Landroid/media/internal/guava_common/collect/ImmutableList;Landroid/media/internal/guava_common/collect/ImmutableSortedMap;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;Landroid/media/internal/guava_common/collect/ImmutableList;Landroid/media/internal/guava_common/collect/ImmutableSortedMap;)V
    .registers 4
    .param p3    # Landroid/media/internal/guava_common/collect/ImmutableSortedMap;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet<",
            "TK;>;",
            "Landroid/media/internal/guava_common/collect/ImmutableList<",
            "TV;>;",
            "Landroid/media/internal/guava_common/collect/ImmutableSortedMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 818
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/ImmutableMap;-><init>()V

    .line 819
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->keySet:Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;

    .line 820
    iput-object p2, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->valueList:Landroid/media/internal/guava_common/collect/ImmutableList;

    .line 821
    iput-object p3, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->descendingMap:Landroid/media/internal/guava_common/collect/ImmutableSortedMap;

    return-void
.end method

.method static synthetic blacklist access$000(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableSortedMap;
    .registers 3

    .line 65
    invoke-static {p0, p1, p2}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->of(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableSortedMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist access$100(Landroid/media/internal/guava_common/collect/ImmutableSortedMap;)Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;
    .registers 1

    .line 65
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->keySet:Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;

    return-object p0
.end method

.method static synthetic blacklist access$200(Landroid/media/internal/guava_common/collect/ImmutableSortedMap;)Landroid/media/internal/guava_common/collect/ImmutableList;
    .registers 1

    .line 65
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->valueList:Landroid/media/internal/guava_common/collect/ImmutableList;

    return-object p0
.end method

.method static blacklist emptyMap(Ljava/util/Comparator;)Landroid/media/internal/guava_common/collect/ImmutableSortedMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TK;>;)",
            "Landroid/media/internal/guava_common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 123
    invoke-static {}, Landroid/media/internal/guava_common/collect/Ordering;->natural()Landroid/media/internal/guava_common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 124
    invoke-static {}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->of()Landroid/media/internal/guava_common/collect/ImmutableSortedMap;

    move-result-object p0

    return-object p0

    .line 126
    :cond_f
    new-instance v0, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;

    .line 127
    invoke-static {p0}, Landroid/media/internal/guava_common/collect/ImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;

    move-result-object p0

    invoke-static {}, Landroid/media/internal/guava_common/collect/ImmutableList;->of()Landroid/media/internal/guava_common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;-><init>(Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;Landroid/media/internal/guava_common/collect/ImmutableList;)V

    return-object v0
.end method

.method private blacklist getSubMap(II)Landroid/media/internal/guava_common/collect/ImmutableSortedMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/media/internal/guava_common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    if-nez p1, :cond_9

    .line 948
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->size()I

    move-result v0

    if-ne p2, v0, :cond_9

    return-object p0

    :cond_9
    if-ne p1, p2, :cond_14

    .line 951
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->comparator()Ljava/util/Comparator;

    move-result-object p0

    invoke-static {p0}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->emptyMap(Ljava/util/Comparator;)Landroid/media/internal/guava_common/collect/ImmutableSortedMap;

    move-result-object p0

    return-object p0

    .line 953
    :cond_14
    new-instance v0, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;

    iget-object v1, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->keySet:Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;

    .line 954
    invoke-virtual {v1, p1, p2}, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;->getSubSet(II)Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;

    move-result-object v1

    iget-object p0, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->valueList:Landroid/media/internal/guava_common/collect/ImmutableList;

    invoke-virtual {p0, p1, p2}, Landroid/media/internal/guava_common/collect/ImmutableList;->subList(II)Landroid/media/internal/guava_common/collect/ImmutableList;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;-><init>(Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;Landroid/media/internal/guava_common/collect/ImmutableList;)V

    return-object v0
.end method

.method public static blacklist of()Landroid/media/internal/guava_common/collect/ImmutableSortedMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Landroid/media/internal/guava_common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 140
    sget-object v0, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->NATURAL_EMPTY_MAP:Landroid/media/internal/guava_common/collect/ImmutableSortedMap;

    return-object v0
.end method

.method private static blacklist of(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableSortedMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TK;>;TK;TV;)",
            "Landroid/media/internal/guava_common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 150
    new-instance v0, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;

    new-instance v1, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;

    .line 151
    invoke-static {p1}, Landroid/media/internal/guava_common/collect/ImmutableList;->of(Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableList;

    move-result-object p1

    invoke-static {p0}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Comparator;

    invoke-direct {v1, p1, p0}, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;-><init>(Landroid/media/internal/guava_common/collect/ImmutableList;Ljava/util/Comparator;)V

    .line 152
    invoke-static {p2}, Landroid/media/internal/guava_common/collect/ImmutableList;->of(Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableList;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;-><init>(Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;Landroid/media/internal/guava_common/collect/ImmutableList;)V

    return-object v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 1208
    new-instance p0, Ljava/io/InvalidObjectException;

    const-string p1, "Use SerializedForm"

    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist test-api ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    const/4 v0, 0x1

    .line 1086
    invoke-virtual {p0, p1, v0}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->tailMap(Ljava/lang/Object;Z)Landroid/media/internal/guava_common/collect/ImmutableSortedMap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1092
    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    invoke-static {p0}, Landroid/media/internal/guava_common/collect/Maps;->keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api comparator()Ljava/util/Comparator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation

    .line 934
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->keySet()Landroid/media/internal/guava_common/collect/ImmutableSortedSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableSortedSet;->comparator()Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method

.method blacklist createEntrySet()Landroid/media/internal/guava_common/collect/ImmutableSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/collect/ImmutableSet<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 899
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Landroid/media/internal/guava_common/collect/ImmutableSet;->of()Landroid/media/internal/guava_common/collect/ImmutableSet;

    move-result-object p0

    return-object p0

    :cond_b
    new-instance v0, Landroid/media/internal/guava_common/collect/ImmutableSortedMap$1EntrySet;

    invoke-direct {v0, p0}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap$1EntrySet;-><init>(Landroid/media/internal/guava_common/collect/ImmutableSortedMap;)V

    return-object v0
.end method

.method blacklist createKeySet()Landroid/media/internal/guava_common/collect/ImmutableSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/collect/ImmutableSet<",
            "TK;>;"
        }
    .end annotation

    .line 910
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "should never be called"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method blacklist createValues()Landroid/media/internal/guava_common/collect/ImmutableCollection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/collect/ImmutableCollection<",
            "TV;>;"
        }
    .end annotation

    .line 924
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "should never be called"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public blacklist descendingKeySet()Landroid/media/internal/guava_common/collect/ImmutableSortedSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/collect/ImmutableSortedSet<",
            "TK;>;"
        }
    .end annotation

    .line 1175
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->keySet:Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableSortedSet;->descendingSet()Landroid/media/internal/guava_common/collect/ImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whitelist test-api descendingKeySet()Ljava/util/NavigableSet;
    .registers 1

    .line 63
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->descendingKeySet()Landroid/media/internal/guava_common/collect/ImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method

.method public blacklist descendingMap()Landroid/media/internal/guava_common/collect/ImmutableSortedMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1156
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->descendingMap:Landroid/media/internal/guava_common/collect/ImmutableSortedMap;

    if-nez v0, :cond_2e

    .line 1158
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1159
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->comparator()Ljava/util/Comparator;

    move-result-object p0

    invoke-static {p0}, Landroid/media/internal/guava_common/collect/Ordering;->from(Ljava/util/Comparator;)Landroid/media/internal/guava_common/collect/Ordering;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Ordering;->reverse()Landroid/media/internal/guava_common/collect/Ordering;

    move-result-object p0

    invoke-static {p0}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->emptyMap(Ljava/util/Comparator;)Landroid/media/internal/guava_common/collect/ImmutableSortedMap;

    move-result-object p0

    return-object p0

    .line 1161
    :cond_1b
    new-instance v0, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;

    iget-object v1, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->keySet:Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;

    .line 1162
    invoke-virtual {v1}, Landroid/media/internal/guava_common/collect/ImmutableSortedSet;->descendingSet()Landroid/media/internal/guava_common/collect/ImmutableSortedSet;

    move-result-object v1

    check-cast v1, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;

    iget-object v2, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->valueList:Landroid/media/internal/guava_common/collect/ImmutableList;

    invoke-virtual {v2}, Landroid/media/internal/guava_common/collect/ImmutableList;->reverse()Landroid/media/internal/guava_common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;-><init>(Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;Landroid/media/internal/guava_common/collect/ImmutableList;Landroid/media/internal/guava_common/collect/ImmutableSortedMap;)V

    :cond_2e
    return-object v0
.end method

.method public bridge synthetic whitelist test-api descendingMap()Ljava/util/NavigableMap;
    .registers 1

    .line 63
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->descendingMap()Landroid/media/internal/guava_common/collect/ImmutableSortedMap;

    move-result-object p0

    return-object p0
.end method

.method public blacklist entrySet()Landroid/media/internal/guava_common/collect/ImmutableSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/collect/ImmutableSet<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 844
    invoke-super {p0}, Landroid/media/internal/guava_common/collect/ImmutableMap;->entrySet()Landroid/media/internal/guava_common/collect/ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whitelist test-api entrySet()Ljava/util/Set;
    .registers 1

    .line 63
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->entrySet()Landroid/media/internal/guava_common/collect/ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api firstEntry()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1110
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->entrySet()Landroid/media/internal/guava_common/collect/ImmutableSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableSet;->asList()Landroid/media/internal/guava_common/collect/ImmutableList;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    return-object p0
.end method

.method public whitelist test-api firstKey()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 939
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->keySet()Landroid/media/internal/guava_common/collect/ImmutableSortedSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableSortedSet;->first()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    const/4 v0, 0x1

    .line 1074
    invoke-virtual {p0, p1, v0}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->headMap(Ljava/lang/Object;Z)Landroid/media/internal/guava_common/collect/ImmutableSortedMap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1080
    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    invoke-static {p0}, Landroid/media/internal/guava_common/collect/Maps;->keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 832
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->keySet:Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;

    invoke-virtual {v0, p1}, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_b

    const/4 p0, 0x0

    return-object p0

    .line 833
    :cond_b
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->valueList:Landroid/media/internal/guava_common/collect/ImmutableList;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public blacklist headMap(Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableSortedMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Landroid/media/internal/guava_common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 969
    invoke-virtual {p0, p1, v0}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->headMap(Ljava/lang/Object;Z)Landroid/media/internal/guava_common/collect/ImmutableSortedMap;

    move-result-object p0

    return-object p0
.end method

.method public blacklist headMap(Ljava/lang/Object;Z)Landroid/media/internal/guava_common/collect/ImmutableSortedMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Landroid/media/internal/guava_common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 985
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->keySet:Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;

    invoke-static {p1}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;->headIndex(Ljava/lang/Object;Z)I

    move-result p1

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->getSubMap(II)Landroid/media/internal/guava_common/collect/ImmutableSortedMap;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whitelist test-api headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 3
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

    .line 63
    invoke-virtual {p0, p1, p2}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->headMap(Ljava/lang/Object;Z)Landroid/media/internal/guava_common/collect/ImmutableSortedMap;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whitelist test-api headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 63
    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->headMap(Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableSortedMap;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    const/4 v0, 0x0

    .line 1098
    invoke-virtual {p0, p1, v0}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->tailMap(Ljava/lang/Object;Z)Landroid/media/internal/guava_common/collect/ImmutableSortedMap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1104
    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    invoke-static {p0}, Landroid/media/internal/guava_common/collect/Maps;->keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic blacklist keySet()Landroid/media/internal/guava_common/collect/ImmutableSet;
    .registers 1

    .line 63
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->keySet()Landroid/media/internal/guava_common/collect/ImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method

.method public blacklist keySet()Landroid/media/internal/guava_common/collect/ImmutableSortedSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/collect/ImmutableSortedSet<",
            "TK;>;"
        }
    .end annotation

    .line 905
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->keySet:Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;

    return-object p0
.end method

.method public bridge synthetic whitelist test-api keySet()Ljava/util/Set;
    .registers 1

    .line 63
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->keySet()Landroid/media/internal/guava_common/collect/ImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api lastEntry()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1116
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->entrySet()Landroid/media/internal/guava_common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/internal/guava_common/collect/ImmutableSet;->asList()Landroid/media/internal/guava_common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    return-object p0
.end method

.method public whitelist test-api lastKey()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 944
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->keySet()Landroid/media/internal/guava_common/collect/ImmutableSortedSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableSortedSet;->last()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    const/4 v0, 0x0

    .line 1062
    invoke-virtual {p0, p1, v0}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->headMap(Ljava/lang/Object;Z)Landroid/media/internal/guava_common/collect/ImmutableSortedMap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1068
    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    invoke-static {p0}, Landroid/media/internal/guava_common/collect/Maps;->keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public blacklist navigableKeySet()Landroid/media/internal/guava_common/collect/ImmutableSortedSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/collect/ImmutableSortedSet<",
            "TK;>;"
        }
    .end annotation

    .line 1170
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->keySet:Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;

    return-object p0
.end method

.method public bridge synthetic whitelist test-api navigableKeySet()Ljava/util/NavigableSet;
    .registers 1

    .line 63
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->navigableKeySet()Landroid/media/internal/guava_common/collect/ImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method

.method public final whitelist test-api pollFirstEntry()Ljava/util/Map$Entry;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1131
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final whitelist test-api pollLastEntry()Ljava/util/Map$Entry;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1146
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public whitelist test-api size()I
    .registers 1

    .line 826
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->valueList:Landroid/media/internal/guava_common/collect/ImmutableList;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    return p0
.end method

.method public blacklist subMap(Ljava/lang/Object;Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableSortedMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Landroid/media/internal/guava_common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1000
    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Landroid/media/internal/guava_common/collect/ImmutableSortedMap;

    move-result-object p0

    return-object p0
.end method

.method public blacklist subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Landroid/media/internal/guava_common/collect/ImmutableSortedMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Landroid/media/internal/guava_common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1019
    invoke-static {p1}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    invoke-static {p3}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    const-string v1, "expected fromKey <= toKey but %s > %s"

    .line 1021
    invoke-static {v0, v1, p1, p3}, Landroid/media/internal/guava_common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1026
    invoke-virtual {p0, p3, p4}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->headMap(Ljava/lang/Object;Z)Landroid/media/internal/guava_common/collect/ImmutableSortedMap;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->tailMap(Ljava/lang/Object;Z)Landroid/media/internal/guava_common/collect/ImmutableSortedMap;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whitelist test-api subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 63
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Landroid/media/internal/guava_common/collect/ImmutableSortedMap;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whitelist test-api subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 3
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

    .line 63
    invoke-virtual {p0, p1, p2}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableSortedMap;

    move-result-object p0

    return-object p0
.end method

.method public blacklist tailMap(Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableSortedMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Landroid/media/internal/guava_common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1040
    invoke-virtual {p0, p1, v0}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->tailMap(Ljava/lang/Object;Z)Landroid/media/internal/guava_common/collect/ImmutableSortedMap;

    move-result-object p0

    return-object p0
.end method

.method public blacklist tailMap(Ljava/lang/Object;Z)Landroid/media/internal/guava_common/collect/ImmutableSortedMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Landroid/media/internal/guava_common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1056
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->keySet:Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;

    invoke-static {p1}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;->tailIndex(Ljava/lang/Object;Z)I

    move-result p1

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->size()I

    move-result p2

    invoke-direct {p0, p1, p2}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->getSubMap(II)Landroid/media/internal/guava_common/collect/ImmutableSortedMap;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whitelist test-api tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 3
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

    .line 63
    invoke-virtual {p0, p1, p2}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->tailMap(Ljava/lang/Object;Z)Landroid/media/internal/guava_common/collect/ImmutableSortedMap;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whitelist test-api tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 63
    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->tailMap(Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableSortedMap;

    move-result-object p0

    return-object p0
.end method

.method public blacklist values()Landroid/media/internal/guava_common/collect/ImmutableCollection;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/collect/ImmutableCollection<",
            "TV;>;"
        }
    .end annotation

    .line 919
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->valueList:Landroid/media/internal/guava_common/collect/ImmutableList;

    return-object p0
.end method

.method public bridge synthetic whitelist test-api values()Ljava/util/Collection;
    .registers 1

    .line 63
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->values()Landroid/media/internal/guava_common/collect/ImmutableCollection;

    move-result-object p0

    return-object p0
.end method

.method whitelist writeReplace()Ljava/lang/Object;
    .registers 2

    .line 1203
    new-instance v0, Landroid/media/internal/guava_common/collect/ImmutableSortedMap$SerializedForm;

    invoke-direct {v0, p0}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap$SerializedForm;-><init>(Landroid/media/internal/guava_common/collect/ImmutableSortedMap;)V

    return-object v0
.end method
