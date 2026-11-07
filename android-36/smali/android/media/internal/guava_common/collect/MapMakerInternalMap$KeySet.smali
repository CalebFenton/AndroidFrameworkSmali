.class final Landroid/media/internal/guava_common/collect/MapMakerInternalMap$KeySet;
.super Ljava/util/AbstractSet;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TK;>;"
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

    .line 2731
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$KeySet;->this$0:Landroid/media/internal/guava_common/collect/MapMakerInternalMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api clear()V
    .registers 1

    .line 2760
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$KeySet;->this$0:Landroid/media/internal/guava_common/collect/MapMakerInternalMap;

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->clear()V

    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 2

    .line 2750
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$KeySet;->this$0:Landroid/media/internal/guava_common/collect/MapMakerInternalMap;

    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public whitelist test-api isEmpty()Z
    .registers 1

    .line 2745
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$KeySet;->this$0:Landroid/media/internal/guava_common/collect/MapMakerInternalMap;

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
            "TK;>;"
        }
    .end annotation

    .line 2735
    new-instance v0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$KeyIterator;

    iget-object p0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$KeySet;->this$0:Landroid/media/internal/guava_common/collect/MapMakerInternalMap;

    invoke-direct {v0, p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$KeyIterator;-><init>(Landroid/media/internal/guava_common/collect/MapMakerInternalMap;)V

    return-object v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 2

    .line 2755
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$KeySet;->this$0:Landroid/media/internal/guava_common/collect/MapMakerInternalMap;

    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api size()I
    .registers 1

    .line 2740
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$KeySet;->this$0:Landroid/media/internal/guava_common/collect/MapMakerInternalMap;

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->size()I

    move-result p0

    return p0
.end method
