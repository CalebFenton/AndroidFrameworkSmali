.class final Landroid/media/internal/guava_common/collect/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# direct methods
.method static blacklist copy([Ljava/lang/Object;II[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "II[TT;)[TT;"
        }
    .end annotation

    .line 120
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static blacklist newArray([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .line 101
    array-length v0, p0

    if-nez v0, :cond_4

    goto :goto_9

    :cond_4
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    .line 102
    :goto_9
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static blacklist newLinkedHashMapWithExpectedSize(I)Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 46
    invoke-static {p0}, Landroid/media/internal/guava_common/collect/CompactLinkedHashMap;->createWithExpectedSize(I)Landroid/media/internal/guava_common/collect/CompactLinkedHashMap;

    move-result-object p0

    return-object p0
.end method

.method static blacklist newLinkedHashSetWithExpectedSize(I)Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 59
    invoke-static {p0}, Landroid/media/internal/guava_common/collect/CompactLinkedHashSet;->createWithExpectedSize(I)Landroid/media/internal/guava_common/collect/CompactLinkedHashSet;

    move-result-object p0

    return-object p0
.end method

.method static blacklist tryWeakKeys(Landroid/media/internal/guava_common/collect/MapMaker;)Landroid/media/internal/guava_common/collect/MapMaker;
    .registers 1

    .line 130
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMaker;->weakKeys()Landroid/media/internal/guava_common/collect/MapMaker;

    move-result-object p0

    return-object p0
.end method
