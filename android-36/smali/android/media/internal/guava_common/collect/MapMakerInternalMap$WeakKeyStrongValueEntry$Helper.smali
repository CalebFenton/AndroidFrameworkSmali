.class final Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"

# interfaces
.implements Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntryHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Helper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntryHelper<",
        "TK;TV;",
        "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry<",
        "TK;TV;>;",
        "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final blacklist INSTANCE:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 820
    new-instance v0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;

    invoke-direct {v0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;-><init>()V

    sput-object v0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;->INSTANCE:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 817
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist instance()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper<",
            "TK;TV;>;"
        }
    .end annotation

    .line 824
    sget-object v0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;->INSTANCE:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic blacklist copy(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;
    .registers 4
    .param p3    # Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 817
    check-cast p1, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;

    check-cast p2, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;

    check-cast p3, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;->copy(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;

    move-result-object p0

    return-object p0
.end method

.method public blacklist copy(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;
    .registers 6
    .param p3    # Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment<",
            "TK;TV;>;",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry<",
            "TK;TV;>;",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry<",
            "TK;TV;>;)",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 851
    invoke-virtual {p2}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$AbstractWeakKeyEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 856
    :cond_8
    iget v1, p2, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$AbstractWeakKeyEntry;->hash:I

    invoke-virtual {p0, p1, v0, v1, p3}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;->newEntry(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;Ljava/lang/Object;ILandroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;

    move-result-object p0

    .line 857
    # getter for: Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;->value:Ljava/lang/Object;
    invoke-static {p2}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;->access$1100(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;)Ljava/lang/Object;

    move-result-object p1

    # setter for: Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;->value:Ljava/lang/Object;
    invoke-static {p0, p1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;->access$1102(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public blacklist keyStrength()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;
    .registers 1

    .line 829
    sget-object p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;->WEAK:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;

    return-object p0
.end method

.method public bridge synthetic blacklist newEntry(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;Ljava/lang/Object;ILandroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;
    .registers 5
    .param p4    # Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 817
    check-cast p1, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;

    check-cast p4, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;->newEntry(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;Ljava/lang/Object;ILandroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newEntry(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;Ljava/lang/Object;ILandroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;
    .registers 11
    .param p4    # Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment<",
            "TK;TV;>;TK;I",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry<",
            "TK;TV;>;)",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    if-nez p4, :cond_d

    .line 874
    new-instance p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;

    # getter for: Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;->queueForKeys:Ljava/lang/ref/ReferenceQueue;
    invoke-static {p1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;->access$1200(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;)Ljava/lang/ref/ReferenceQueue;

    move-result-object p1

    const/4 p4, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILandroid/media/internal/guava_common/collect/MapMakerInternalMap$1;)V

    return-object p0

    .line 875
    :cond_d
    new-instance v0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$LinkedWeakKeyStrongValueEntry;

    # getter for: Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;->queueForKeys:Ljava/lang/ref/ReferenceQueue;
    invoke-static {p1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;->access$1200(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v1

    const/4 v5, 0x0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$LinkedWeakKeyStrongValueEntry;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILandroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$1;)V

    return-object v0
.end method

.method public bridge synthetic blacklist newSegment(Landroid/media/internal/guava_common/collect/MapMakerInternalMap;I)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 817
    invoke-virtual {p0, p1, p2}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;->newSegment(Landroid/media/internal/guava_common/collect/MapMakerInternalMap;I)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newSegment(Landroid/media/internal/guava_common/collect/MapMakerInternalMap;I)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap<",
            "TK;TV;",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry<",
            "TK;TV;>;",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment<",
            "TK;TV;>;>;I)",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment<",
            "TK;TV;>;"
        }
    .end annotation

    .line 842
    new-instance p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;

    invoke-direct {p0, p1, p2}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;-><init>(Landroid/media/internal/guava_common/collect/MapMakerInternalMap;I)V

    return-object p0
.end method

.method public bridge synthetic blacklist setValue(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 817
    check-cast p1, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;

    check-cast p2, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;->setValue(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist setValue(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment<",
            "TK;TV;>;",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry<",
            "TK;TV;>;TV;)V"
        }
    .end annotation

    .line 864
    # setter for: Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;->value:Ljava/lang/Object;
    invoke-static {p2, p3}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;->access$1102(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public blacklist valueStrength()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;
    .registers 1

    .line 834
    sget-object p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;->STRONG:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;

    return-object p0
.end method
