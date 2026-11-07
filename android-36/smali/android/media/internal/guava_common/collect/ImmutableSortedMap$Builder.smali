.class public Landroid/media/internal/guava_common/collect/ImmutableSortedMap$Builder;
.super Landroid/media/internal/guava_common/collect/ImmutableMap$Builder;
.source "ImmutableSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/ImmutableSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/media/internal/guava_common/collect/ImmutableMap$Builder<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final blacklist comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation
.end field

.field private transient blacklist keys:[Ljava/lang/Object;

.field private transient blacklist values:[Ljava/lang/Object;


# direct methods
.method public constructor blacklist <init>(Ljava/util/Comparator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TK;>;)V"
        }
    .end annotation

    const/4 v0, 0x4

    .line 621
    invoke-direct {p0, p1, v0}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap$Builder;-><init>(Ljava/util/Comparator;I)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/Comparator;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TK;>;I)V"
        }
    .end annotation

    .line 624
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/ImmutableMap$Builder;-><init>()V

    .line 625
    invoke-static {p1}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Comparator;

    iput-object p1, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedMap$Builder;->comparator:Ljava/util/Comparator;

    .line 626
    new-array p1, p2, [Ljava/lang/Object;

    iput-object p1, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedMap$Builder;->keys:[Ljava/lang/Object;

    .line 627
    new-array p1, p2, [Ljava/lang/Object;

    iput-object p1, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedMap$Builder;->values:[Ljava/lang/Object;

    return-void
.end method

.method private blacklist ensureCapacity(I)V
    .registers 4

    .line 631
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedMap$Builder;->keys:[Ljava/lang/Object;

    array-length v1, v0

    if-le p1, v1, :cond_1a

    .line 632
    array-length v0, v0

    invoke-static {v0, p1}, Landroid/media/internal/guava_common/collect/ImmutableCollection$Builder;->expandedCapacity(II)I

    move-result p1

    .line 633
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedMap$Builder;->keys:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedMap$Builder;->keys:[Ljava/lang/Object;

    .line 634
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedMap$Builder;->values:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedMap$Builder;->values:[Ljava/lang/Object;

    :cond_1a
    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist buildOrThrow()Landroid/media/internal/guava_common/collect/ImmutableMap;
    .registers 1

    .line 611
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap$Builder;->buildOrThrow()Landroid/media/internal/guava_common/collect/ImmutableSortedMap;

    move-result-object p0

    return-object p0
.end method

.method public blacklist buildOrThrow()Landroid/media/internal/guava_common/collect/ImmutableSortedMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 746
    iget v0, p0, Landroid/media/internal/guava_common/collect/ImmutableMap$Builder;->size:I

    if-eqz v0, :cond_92

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_7d

    .line 756
    iget-object v2, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedMap$Builder;->keys:[Ljava/lang/Object;

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 759
    iget-object v2, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedMap$Builder;->comparator:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 760
    iget v2, p0, Landroid/media/internal/guava_common/collect/ImmutableMap$Builder;->size:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 766
    :goto_17
    iget v3, p0, Landroid/media/internal/guava_common/collect/ImmutableMap$Builder;->size:I

    if-ge v1, v3, :cond_68

    if-lez v1, :cond_4f

    .line 768
    iget-object v3, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedMap$Builder;->comparator:Ljava/util/Comparator;

    add-int/lit8 v4, v1, -0x1

    aget-object v5, v0, v4

    aget-object v6, v0, v1

    invoke-interface {v3, v5, v6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-eqz v3, :cond_2c

    goto :goto_4f

    .line 769
    :cond_2c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keys required to be distinct but compared as equal: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 777
    :cond_4f
    :goto_4f
    iget-object v3, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedMap$Builder;->keys:[Ljava/lang/Object;

    aget-object v3, v3, v1

    .line 778
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedMap$Builder;->comparator:Ljava/util/Comparator;

    invoke-static {v0, v3, v4}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v3

    .line 779
    iget-object v4, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedMap$Builder;->values:[Ljava/lang/Object;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aput-object v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 781
    :cond_68
    new-instance v1, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;

    new-instance v3, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;

    .line 783
    invoke-static {v0}, Landroid/media/internal/guava_common/collect/ImmutableList;->asImmutableList([Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableList;

    move-result-object v0

    iget-object p0, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedMap$Builder;->comparator:Ljava/util/Comparator;

    invoke-direct {v3, v0, p0}, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;-><init>(Landroid/media/internal/guava_common/collect/ImmutableList;Ljava/util/Comparator;)V

    .line 784
    invoke-static {v2}, Landroid/media/internal/guava_common/collect/ImmutableList;->asImmutableList([Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableList;

    move-result-object p0

    invoke-direct {v1, v3, p0}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;-><init>(Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;Landroid/media/internal/guava_common/collect/ImmutableList;)V

    return-object v1

    .line 752
    :cond_7d
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedMap$Builder;->comparator:Ljava/util/Comparator;

    iget-object v2, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedMap$Builder;->keys:[Ljava/lang/Object;

    aget-object v2, v2, v1

    .line 753
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedMap$Builder;->values:[Ljava/lang/Object;

    aget-object p0, p0, v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    # invokes: Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->of(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableSortedMap;
    invoke-static {v0, v2, p0}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->access$000(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableSortedMap;

    move-result-object p0

    return-object p0

    .line 748
    :cond_92
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedMap$Builder;->comparator:Ljava/util/Comparator;

    invoke-static {p0}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->emptyMap(Ljava/util/Comparator;)Landroid/media/internal/guava_common/collect/ImmutableSortedMap;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic blacklist put(Ljava/lang/Object;Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableMap$Builder;
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

    .line 611
    invoke-virtual {p0, p1, p2}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableSortedMap$Builder;

    move-result-object p0

    return-object p0
.end method

.method public blacklist put(Ljava/lang/Object;Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableSortedMap$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Landroid/media/internal/guava_common/collect/ImmutableSortedMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 646
    iget v0, p0, Landroid/media/internal/guava_common/collect/ImmutableMap$Builder;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap$Builder;->ensureCapacity(I)V

    .line 647
    invoke-static {p1, p2}, Landroid/media/internal/guava_common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 648
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedMap$Builder;->keys:[Ljava/lang/Object;

    iget v1, p0, Landroid/media/internal/guava_common/collect/ImmutableMap$Builder;->size:I

    aput-object p1, v0, v1

    .line 649
    iget-object p1, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedMap$Builder;->values:[Ljava/lang/Object;

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    .line 650
    iput v1, p0, Landroid/media/internal/guava_common/collect/ImmutableMap$Builder;->size:I

    return-object p0
.end method
