.class final Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;
.super Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WeakKeyStrongValueSegment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment<",
        "TK;TV;",
        "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry<",
        "TK;TV;>;",
        "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final blacklist queueForKeys:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/media/internal/guava_common/collect/MapMakerInternalMap;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap<",
            "TK;TV;",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry<",
            "TK;TV;>;",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment<",
            "TK;TV;>;>;I)V"
        }
    .end annotation

    .line 2162
    invoke-direct {p0, p1, p2}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;-><init>(Landroid/media/internal/guava_common/collect/MapMakerInternalMap;I)V

    .line 2156
    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;->queueForKeys:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method static synthetic blacklist access$1200(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;)Ljava/lang/ref/ReferenceQueue;
    .registers 1

    .line 2154
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;->queueForKeys:Ljava/lang/ref/ReferenceQueue;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic blacklist castForTesting(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 2154
    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;->castForTesting(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;

    move-result-object p0

    return-object p0
.end method

.method public blacklist castForTesting(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;)",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2178
    check-cast p1, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;

    return-object p1
.end method

.method blacklist maybeClearReferenceQueues()V
    .registers 2

    .line 2188
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;->queueForKeys:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, v0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->clearReferenceQueue(Ljava/lang/ref/ReferenceQueue;)V

    return-void
.end method

.method blacklist maybeDrainReferenceQueues()V
    .registers 2

    .line 2183
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;->queueForKeys:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, v0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->drainKeyReferenceQueue(Ljava/lang/ref/ReferenceQueue;)V

    return-void
.end method

.method bridge synthetic blacklist self()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;
    .registers 1

    .line 2154
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;->self()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;

    move-result-object p0

    return-object p0
.end method

.method blacklist self()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment<",
            "TK;TV;>;"
        }
    .end annotation

    .line 0
    return-object p0
.end method
