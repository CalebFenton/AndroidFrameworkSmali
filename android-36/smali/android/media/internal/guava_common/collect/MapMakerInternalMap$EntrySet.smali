.class final Landroid/media/internal/guava_common/collect/MapMakerInternalMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/internal/guava_common/collect/MapMakerInternalMap;


# direct methods
.method constructor blacklist <init>(Landroid/media/internal/guava_common/collect/MapMakerInternalMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2794
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$EntrySet;->this$0:Landroid/media/internal/guava_common/collect/MapMakerInternalMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api clear()V
    .registers 1

    .line 2838
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$EntrySet;->this$0:Landroid/media/internal/guava_common/collect/MapMakerInternalMap;

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->clear()V

    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 5

    .line 2803
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2806
    :cond_6
    check-cast p1, Ljava/util/Map$Entry;

    .line 2807
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_f

    return v1

    .line 2811
    :cond_f
    iget-object v2, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$EntrySet;->this$0:Landroid/media/internal/guava_common/collect/MapMakerInternalMap;

    invoke-virtual {v2, v0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 2813
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$EntrySet;->this$0:Landroid/media/internal/guava_common/collect/MapMakerInternalMap;

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->valueEquivalence()Landroid/media/internal/guava_common/base/Equivalence;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/media/internal/guava_common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_29

    const/4 p0, 0x1

    return p0

    :cond_29
    return v1
.end method

.method public whitelist test-api isEmpty()Z
    .registers 1

    .line 2833
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$EntrySet;->this$0:Landroid/media/internal/guava_common/collect/MapMakerInternalMap;

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->isEmpty()Z

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
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2798
    new-instance v0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$EntryIterator;

    iget-object p0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$EntrySet;->this$0:Landroid/media/internal/guava_common/collect/MapMakerInternalMap;

    invoke-direct {v0, p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$EntryIterator;-><init>(Landroid/media/internal/guava_common/collect/MapMakerInternalMap;)V

    return-object v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 4

    .line 2818
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2821
    :cond_6
    check-cast p1, Ljava/util/Map$Entry;

    .line 2822
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 2823
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$EntrySet;->this$0:Landroid/media/internal/guava_common/collect/MapMakerInternalMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    return v1
.end method

.method public whitelist test-api size()I
    .registers 1

    .line 2828
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$EntrySet;->this$0:Landroid/media/internal/guava_common/collect/MapMakerInternalMap;

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->size()I

    move-result p0

    return p0
.end method
