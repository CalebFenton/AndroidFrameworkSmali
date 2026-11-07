.class public final Landroid/media/internal/guava_common/collect/Maps;
.super Ljava/lang/Object;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/guava_common/collect/Maps$EntryFunction;,
        Landroid/media/internal/guava_common/collect/Maps$DescendingMap;,
        Landroid/media/internal/guava_common/collect/Maps$EntrySet;,
        Landroid/media/internal/guava_common/collect/Maps$Values;,
        Landroid/media/internal/guava_common/collect/Maps$NavigableKeySet;,
        Landroid/media/internal/guava_common/collect/Maps$SortedKeySet;,
        Landroid/media/internal/guava_common/collect/Maps$KeySet;,
        Landroid/media/internal/guava_common/collect/Maps$IteratorBasedAbstractMap;,
        Landroid/media/internal/guava_common/collect/Maps$ViewCachingAbstractMap;
    }
.end annotation


# direct methods
.method static blacklist capacity(I)I
    .registers 5

    const/4 v0, 0x3

    if-ge p0, v0, :cond_b

    .line 289
    const-string v0, "expectedSize"

    invoke-static {p0, v0}, Landroid/media/internal/guava_common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_b
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p0, v0, :cond_19

    int-to-double v0, p0

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    div-double/2addr v0, v2

    .line 305
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p0, v0

    return p0

    :cond_19
    const p0, 0x7fffffff

    return p0
.end method

.method static blacklist equalsImpl(Ljava/util/Map;Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    .line 3821
    :cond_4
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_17

    .line 3822
    check-cast p1, Ljava/util/Map;

    .line 3823
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1452
    new-instance v0, Landroid/media/internal/guava_common/collect/ImmutableEntry;

    invoke-direct {v0, p0, p1}, Landroid/media/internal/guava_common/collect/ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method static blacklist keyIterator(Ljava/util/Iterator;)Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 122
    new-instance v0, Landroid/media/internal/guava_common/collect/Maps$1;

    invoke-direct {v0, p0}, Landroid/media/internal/guava_common/collect/Maps$1;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method static blacklist keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .registers 1
    .param p0    # Ljava/util/Map$Entry;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map$Entry<",
            "TK;*>;)TK;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 3899
    :cond_4
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static blacklist safeContainsKey(Ljava/util/Map;Ljava/lang/Object;)Z
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 3746
    invoke-static {p0}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3748
    :try_start_3
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_7} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_7} :catch_8

    return p0

    :catch_8
    const/4 p0, 0x0

    return p0
.end method

.method static blacklist safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "*TV;>;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 3733
    invoke-static {p0}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3735
    :try_start_3
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_7} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_7} :catch_8

    return-object p0

    :catch_8
    const/4 p0, 0x0

    return-object p0
.end method

.method static blacklist safeRemove(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "*TV;>;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 3760
    invoke-static {p0}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3762
    :try_start_3
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_7} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_7} :catch_8

    return-object p0

    :catch_8
    const/4 p0, 0x0

    return-object p0
.end method

.method static blacklist toStringImpl(Ljava/util/Map;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 3830
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Landroid/media/internal/guava_common/collect/Collections2;->newStringBuilderForCollection(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3832
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x1

    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-nez v1, :cond_29

    .line 3834
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3837
    :cond_29
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    goto :goto_16

    :cond_3e
    const/16 p0, 0x7d

    .line 3839
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static blacklist valueFunction()Landroid/media/internal/guava_common/base/Function;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Landroid/media/internal/guava_common/base/Function<",
            "Ljava/util/Map$Entry<",
            "*TV;>;TV;>;"
        }
    .end annotation

    .line 117
    sget-object v0, Landroid/media/internal/guava_common/collect/Maps$EntryFunction;->VALUE:Landroid/media/internal/guava_common/collect/Maps$EntryFunction;

    return-object v0
.end method

.method static blacklist valueIterator(Ljava/util/Iterator;)Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 133
    new-instance v0, Landroid/media/internal/guava_common/collect/Maps$2;

    invoke-direct {v0, p0}, Landroid/media/internal/guava_common/collect/Maps$2;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method
