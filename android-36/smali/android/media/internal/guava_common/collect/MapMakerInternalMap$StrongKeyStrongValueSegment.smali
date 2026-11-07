.class final Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;
.super Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StrongKeyStrongValueSegment"
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
        "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<",
        "TK;TV;>;",
        "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment<",
        "TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/media/internal/guava_common/collect/MapMakerInternalMap;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap<",
            "TK;TV;",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<",
            "TK;TV;>;",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment<",
            "TK;TV;>;>;I)V"
        }
    .end annotation

    .line 2048
    invoke-direct {p0, p1, p2}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;-><init>(Landroid/media/internal/guava_common/collect/MapMakerInternalMap;I)V

    return-void
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

    .line 2041
    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;->castForTesting(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;

    move-result-object p0

    return-object p0
.end method

.method public blacklist castForTesting(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;
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
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 2061
    check-cast p1, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;

    return-object p1
.end method

.method bridge synthetic blacklist self()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;
    .registers 1

    .line 2041
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;->self()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;

    move-result-object p0

    return-object p0
.end method

.method blacklist self()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment<",
            "TK;TV;>;"
        }
    .end annotation

    .line 0
    return-object p0
.end method
