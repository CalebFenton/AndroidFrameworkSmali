.class final Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$LinkedWeakKeyStrongValueEntry;
.super Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LinkedWeakKeyStrongValueEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final blacklist next:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILandroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;TK;I",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 806
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILandroid/media/internal/guava_common/collect/MapMakerInternalMap$1;)V

    .line 807
    iput-object p4, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$LinkedWeakKeyStrongValueEntry;->next:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILandroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$1;)V
    .registers 6

    .line 800
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$LinkedWeakKeyStrongValueEntry;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILandroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist getNext()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;
    .registers 1

    .line 800
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$LinkedWeakKeyStrongValueEntry;->getNext()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getNext()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 812
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$LinkedWeakKeyStrongValueEntry;->next:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;

    return-object p0
.end method
