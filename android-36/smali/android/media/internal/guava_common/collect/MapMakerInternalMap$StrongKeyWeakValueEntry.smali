.class Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;
.super Landroid/media/internal/guava_common/collect/MapMakerInternalMap$AbstractStrongKeyEntry;
.source "MapMakerInternalMap.java"

# interfaces
.implements Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StrongKeyWeakValueEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;,
        Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$LinkedStrongKeyWeakValueEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$AbstractStrongKeyEntry<",
        "TK;TV;",
        "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
        "TK;TV;>;>;",
        "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueEntry<",
        "TK;TV;",
        "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private volatile blacklist valueReference:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference<",
            "TK;TV;",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(Ljava/lang/Object;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)V"
        }
    .end annotation

    .line 487
    invoke-direct {p0, p1, p2}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$AbstractStrongKeyEntry;-><init>(Ljava/lang/Object;I)V

    .line 484
    invoke-static {}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->unsetWeakValueReference()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;

    move-result-object p1

    iput-object p1, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;->valueReference:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/Object;ILandroid/media/internal/guava_common/collect/MapMakerInternalMap$1;)V
    .registers 4

    .line 480
    invoke-direct {p0, p1, p2}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;-><init>(Ljava/lang/Object;I)V

    return-void
.end method

.method static synthetic blacklist access$400(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;
    .registers 1

    .line 480
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;->valueReference:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;

    return-object p0
.end method

.method static synthetic blacklist access$402(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;
    .registers 2

    .line 480
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;->valueReference:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;

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

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 493
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;->valueReference:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;

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
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 498
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;->valueReference:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;

    return-object p0
.end method
