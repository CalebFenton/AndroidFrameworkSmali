.class Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;
.super Landroid/media/internal/guava_common/collect/MapMakerInternalMap$AbstractWeakKeyEntry;
.source "MapMakerInternalMap.java"

# interfaces
.implements Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WeakKeyWeakValueEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;,
        Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$LinkedWeakKeyWeakValueEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$AbstractWeakKeyEntry<",
        "TK;TV;",
        "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry<",
        "TK;TV;>;>;",
        "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueEntry<",
        "TK;TV;",
        "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private volatile blacklist valueReference:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference<",
            "TK;TV;",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;TK;I)V"
        }
    .end annotation

    .line 888
    invoke-direct {p0, p1, p2, p3}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$AbstractWeakKeyEntry;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;I)V

    .line 885
    invoke-static {}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->unsetWeakValueReference()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;

    move-result-object p1

    iput-object p1, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;->valueReference:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;

    return-void
.end method

.method static synthetic blacklist access$1400(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;
    .registers 1

    .line 881
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;->valueReference:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;

    return-object p0
.end method

.method static synthetic blacklist access$1402(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;
    .registers 2

    .line 881
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;->valueReference:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;

    return-object p1
.end method


# virtual methods
.method public final blacklist getValue()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 893
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;->valueReference:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;

    invoke-interface {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final blacklist getValueReference()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference<",
            "TK;TV;",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 898
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;->valueReference:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;

    return-object p0
.end method
