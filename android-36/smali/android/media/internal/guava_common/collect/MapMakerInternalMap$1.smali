.class Landroid/media/internal/guava_common/collect/MapMakerInternalMap$1;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"

# interfaces
.implements Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$DummyInternalEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1043
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist clear()V
    .registers 1

    .line 0
    return-void
.end method

.method public blacklist copyFor(Ljava/lang/ref/ReferenceQueue;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$DummyInternalEntry;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$DummyInternalEntry;",
            ")",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$DummyInternalEntry;",
            ">;"
        }
    .end annotation

    .line 0
    return-object p0
.end method

.method public bridge synthetic blacklist copyFor(Ljava/lang/ref/ReferenceQueue;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;
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

    .line 1043
    check-cast p2, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$DummyInternalEntry;

    invoke-virtual {p0, p1, p2}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$1;->copyFor(Ljava/lang/ref/ReferenceQueue;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$DummyInternalEntry;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;

    move-result-object p0

    return-object p0
.end method

.method public blacklist get()Ljava/lang/Object;
    .registers 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getEntry()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$DummyInternalEntry;
    .registers 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic blacklist getEntry()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;
    .registers 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1043
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$1;->getEntry()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$DummyInternalEntry;

    move-result-object p0

    return-object p0
.end method
