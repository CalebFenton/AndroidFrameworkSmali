.class final Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReferenceImpl;
.super Ljava/lang/ref/WeakReference;
.source "MapMakerInternalMap.java"

# interfaces
.implements Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WeakValueReferenceImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "E::",
        "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry<",
        "TK;TV;TE;>;>",
        "Ljava/lang/ref/WeakReference<",
        "TV;>;",
        "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference<",
        "TK;TV;TE;>;"
    }
.end annotation


# instance fields
.field final blacklist entry:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;TV;TE;)V"
        }
    .end annotation

    .line 1072
    invoke-direct {p0, p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 1073
    iput-object p3, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReferenceImpl;->entry:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;

    return-void
.end method


# virtual methods
.method public blacklist copyFor(Ljava/lang/ref/ReferenceQueue;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;TE;)",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference<",
            "TK;TV;TE;>;"
        }
    .end annotation

    .line 1083
    new-instance v0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReferenceImpl;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p1, p0, p2}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReferenceImpl;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;)V

    return-object v0
.end method

.method public blacklist getEntry()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1078
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReferenceImpl;->entry:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;

    return-object p0
.end method
