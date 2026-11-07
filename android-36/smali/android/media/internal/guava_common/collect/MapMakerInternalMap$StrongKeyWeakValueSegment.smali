.class final Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;
.super Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StrongKeyWeakValueSegment"
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
        "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
        "TK;TV;>;",
        "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final blacklist queueForValues:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;"
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
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<",
            "TK;TV;>;>;I)V"
        }
    .end annotation

    .line 2074
    invoke-direct {p0, p1, p2}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;-><init>(Landroid/media/internal/guava_common/collect/MapMakerInternalMap;I)V

    .line 2068
    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->queueForValues:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method static synthetic blacklist access$500(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;)Ljava/lang/ref/ReferenceQueue;
    .registers 1

    .line 2066
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->queueForValues:Ljava/lang/ref/ReferenceQueue;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic blacklist castForTesting(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;
    .registers 2
    .param p1    # Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 2066
    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->castForTesting(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;

    move-result-object p0

    return-object p0
.end method

.method public blacklist castForTesting(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;
    .registers 2
    .param p1    # Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;)",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 2092
    check-cast p1, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;

    return-object p1
.end method

.method blacklist maybeClearReferenceQueues()V
    .registers 2

    .line 2127
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->queueForValues:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, v0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->clearReferenceQueue(Ljava/lang/ref/ReferenceQueue;)V

    return-void
.end method

.method blacklist maybeDrainReferenceQueues()V
    .registers 2

    .line 2122
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->queueForValues:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, v0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->drainValueReferenceQueue(Ljava/lang/ref/ReferenceQueue;)V

    return-void
.end method

.method bridge synthetic blacklist self()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;
    .registers 1

    .line 2066
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->self()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;

    move-result-object p0

    return-object p0
.end method

.method blacklist self()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<",
            "TK;TV;>;"
        }
    .end annotation

    .line 0
    return-object p0
.end method
