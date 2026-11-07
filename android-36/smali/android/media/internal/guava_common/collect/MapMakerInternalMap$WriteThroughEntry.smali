.class final Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WriteThroughEntry;
.super Landroid/media/internal/guava_common/collect/AbstractMapEntry;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "WriteThroughEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/media/internal/guava_common/collect/AbstractMapEntry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final blacklist key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/media/internal/guava_common/collect/MapMakerInternalMap;

.field blacklist value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/media/internal/guava_common/collect/MapMakerInternalMap;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 2683
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WriteThroughEntry;->this$0:Landroid/media/internal/guava_common/collect/MapMakerInternalMap;

    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/AbstractMapEntry;-><init>()V

    .line 2684
    iput-object p2, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WriteThroughEntry;->key:Ljava/lang/Object;

    .line 2685
    iput-object p3, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WriteThroughEntry;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 2701
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    .line 2702
    check-cast p1, Ljava/util/Map$Entry;

    .line 2703
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WriteThroughEntry;->key:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object p0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WriteThroughEntry;->value:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    const/4 p0, 0x1

    return p0

    :cond_21
    return v1
.end method

.method public whitelist test-api getKey()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 2690
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WriteThroughEntry;->key:Ljava/lang/Object;

    return-object p0
.end method

.method public whitelist test-api getValue()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 2695
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WriteThroughEntry;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 2711
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WriteThroughEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object p0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WriteThroughEntry;->value:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public whitelist test-api setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 2716
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WriteThroughEntry;->this$0:Landroid/media/internal/guava_common/collect/MapMakerInternalMap;

    iget-object v1, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WriteThroughEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2717
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WriteThroughEntry;->value:Ljava/lang/Object;

    return-object v0
.end method
