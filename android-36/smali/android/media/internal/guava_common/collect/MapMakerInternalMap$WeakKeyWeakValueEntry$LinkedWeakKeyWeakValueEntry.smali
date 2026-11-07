.class final Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$LinkedWeakKeyWeakValueEntry;
.super Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LinkedWeakKeyWeakValueEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final blacklist next:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILandroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;TK;I",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 907
    invoke-direct {p0, p1, p2, p3}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;I)V

    .line 908
    iput-object p4, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$LinkedWeakKeyWeakValueEntry;->next:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;

    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist getNext()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;
    .registers 1

    .line 901
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$LinkedWeakKeyWeakValueEntry;->getNext()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getNext()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 913
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$LinkedWeakKeyWeakValueEntry;->next:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;

    return-object p0
.end method
