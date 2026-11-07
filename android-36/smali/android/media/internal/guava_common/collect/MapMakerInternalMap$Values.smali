.class final Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Values;
.super Ljava/util/AbstractCollection;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
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

    .line 2765
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Values;->this$0:Landroid/media/internal/guava_common/collect/MapMakerInternalMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api clear()V
    .registers 1

    .line 2789
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Values;->this$0:Landroid/media/internal/guava_common/collect/MapMakerInternalMap;

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->clear()V

    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 2

    .line 2784
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Values;->this$0:Landroid/media/internal/guava_common/collect/MapMakerInternalMap;

    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public whitelist test-api isEmpty()Z
    .registers 1

    .line 2779
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Values;->this$0:Landroid/media/internal/guava_common/collect/MapMakerInternalMap;

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
            "TV;>;"
        }
    .end annotation

    .line 2769
    new-instance v0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$ValueIterator;

    iget-object p0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Values;->this$0:Landroid/media/internal/guava_common/collect/MapMakerInternalMap;

    invoke-direct {v0, p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$ValueIterator;-><init>(Landroid/media/internal/guava_common/collect/MapMakerInternalMap;)V

    return-object v0
.end method

.method public whitelist test-api size()I
    .registers 1

    .line 2774
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Values;->this$0:Landroid/media/internal/guava_common/collect/MapMakerInternalMap;

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->size()I

    move-result p0

    return p0
.end method
