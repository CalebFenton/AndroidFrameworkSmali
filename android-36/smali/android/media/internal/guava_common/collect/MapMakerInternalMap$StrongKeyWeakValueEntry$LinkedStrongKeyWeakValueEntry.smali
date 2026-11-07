.class final Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$LinkedStrongKeyWeakValueEntry;
.super Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LinkedStrongKeyWeakValueEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final blacklist next:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/lang/Object;ILandroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 506
    invoke-direct {p0, p1, p2, v0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;-><init>(Ljava/lang/Object;ILandroid/media/internal/guava_common/collect/MapMakerInternalMap$1;)V

    .line 507
    iput-object p3, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$LinkedStrongKeyWeakValueEntry;->next:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;

    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist getNext()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;
    .registers 1

    .line 501
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$LinkedStrongKeyWeakValueEntry;->getNext()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getNext()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 512
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$LinkedStrongKeyWeakValueEntry;->next:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;

    return-object p0
.end method
