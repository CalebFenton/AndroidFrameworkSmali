.class Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;
.super Landroid/media/internal/guava_common/collect/MapMakerInternalMap$AbstractStrongKeyEntry;
.source "MapMakerInternalMap.java"

# interfaces
.implements Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StrongKeyStrongValueEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;,
        Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$LinkedStrongKeyStrongValueEntry;
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
        "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<",
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
.method private constructor blacklist <init>(Ljava/lang/Object;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)V"
        }
    .end annotation

    .line 393
    invoke-direct {p0, p1, p2}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$AbstractStrongKeyEntry;-><init>(Ljava/lang/Object;I)V

    const/4 p1, 0x0

    .line 390
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;->value:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/Object;ILandroid/media/internal/guava_common/collect/MapMakerInternalMap$1;)V
    .registers 4

    .line 387
    invoke-direct {p0, p1, p2}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;-><init>(Ljava/lang/Object;I)V

    return-void
.end method

.method static synthetic blacklist access$200(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;)Ljava/lang/Object;
    .registers 1

    .line 387
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;->value:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic blacklist access$202(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 387
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;->value:Ljava/lang/Object;

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

    .line 399
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;->value:Ljava/lang/Object;

    return-object p0
.end method
