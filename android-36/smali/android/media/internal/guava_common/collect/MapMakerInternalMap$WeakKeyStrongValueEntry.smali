.class Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;
.super Landroid/media/internal/guava_common/collect/MapMakerInternalMap$AbstractWeakKeyEntry;
.source "MapMakerInternalMap.java"

# interfaces
.implements Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WeakKeyStrongValueEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;,
        Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$LinkedWeakKeyStrongValueEntry;
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
        "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry<",
        "TK;TV;>;>;",
        "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;"
    }
.end annotation


# instance fields
.field private volatile blacklist value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;TK;I)V"
        }
    .end annotation

    .line 791
    invoke-direct {p0, p1, p2, p3}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$AbstractWeakKeyEntry;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;I)V

    const/4 p1, 0x0

    .line 788
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;->value:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILandroid/media/internal/guava_common/collect/MapMakerInternalMap$1;)V
    .registers 5

    .line 785
    invoke-direct {p0, p1, p2, p3}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;I)V

    return-void
.end method

.method static synthetic blacklist access$1100(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;)Ljava/lang/Object;
    .registers 1

    .line 785
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;->value:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic blacklist access$1102(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 785
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;->value:Ljava/lang/Object;

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

    .line 797
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;->value:Ljava/lang/Object;

    return-object p0
.end method
