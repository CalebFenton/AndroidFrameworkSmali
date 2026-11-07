.class final Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"

# interfaces
.implements Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntryHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;
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
        "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
        "TK;TV;>;",
        "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final blacklist INSTANCE:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 520
    new-instance v0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;

    invoke-direct {v0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;-><init>()V

    sput-object v0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;->INSTANCE:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist instance()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper<",
            "TK;TV;>;"
        }
    .end annotation

    .line 524
    sget-object v0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;->INSTANCE:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;

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

    .line 517
    check-cast p1, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;

    check-cast p2, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;

    check-cast p3, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;->copy(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;

    move-result-object p0

    return-object p0
.end method

.method public blacklist copy(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;
    .registers 6
    .param p3    # Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<",
            "TK;TV;>;",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;)",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 551
    invoke-static {p2}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->isCollected(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 554
    :cond_8
    iget-object v0, p2, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$AbstractStrongKeyEntry;->key:Ljava/lang/Object;

    iget v1, p2, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$AbstractStrongKeyEntry;->hash:I

    invoke-virtual {p0, p1, v0, v1, p3}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;->newEntry(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;Ljava/lang/Object;ILandroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;

    move-result-object p0

    .line 555
    # getter for: Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;->valueReference:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;
    invoke-static {p2}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;->access$400(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;

    move-result-object p2

    # getter for: Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->queueForValues:Ljava/lang/ref/ReferenceQueue;
    invoke-static {p1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->access$500(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;)Ljava/lang/ref/ReferenceQueue;

    move-result-object p1

    invoke-interface {p2, p1, p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;->copyFor(Ljava/lang/ref/ReferenceQueue;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;

    move-result-object p1

    # setter for: Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;->valueReference:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;
    invoke-static {p0, p1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;->access$402(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;

    return-object p0
.end method

.method public blacklist keyStrength()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;
    .registers 1

    .line 529
    sget-object p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;->STRONG:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;

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

    .line 517
    check-cast p1, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;

    check-cast p4, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;->newEntry(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;Ljava/lang/Object;ILandroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newEntry(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;Ljava/lang/Object;ILandroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;
    .registers 5
    .param p4    # Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<",
            "TK;TV;>;TK;I",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;)",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    if-nez p4, :cond_9

    .line 574
    new-instance p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p3, p1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;-><init>(Ljava/lang/Object;ILandroid/media/internal/guava_common/collect/MapMakerInternalMap$1;)V

    return-object p0

    .line 575
    :cond_9
    new-instance p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$LinkedStrongKeyWeakValueEntry;

    invoke-direct {p0, p2, p3, p4}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$LinkedStrongKeyWeakValueEntry;-><init>(Ljava/lang/Object;ILandroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;)V

    return-object p0
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

    .line 517
    invoke-virtual {p0, p1, p2}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;->newSegment(Landroid/media/internal/guava_common/collect/MapMakerInternalMap;I)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newSegment(Landroid/media/internal/guava_common/collect/MapMakerInternalMap;I)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap<",
            "TK;TV;",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<",
            "TK;TV;>;>;I)",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<",
            "TK;TV;>;"
        }
    .end annotation

    .line 542
    new-instance p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;

    invoke-direct {p0, p1, p2}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;-><init>(Landroid/media/internal/guava_common/collect/MapMakerInternalMap;I)V

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

    .line 517
    check-cast p1, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;

    check-cast p2, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;->setValue(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist setValue(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<",
            "TK;TV;>;",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;TV;)V"
        }
    .end annotation

    .line 562
    # getter for: Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;->valueReference:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;
    invoke-static {p2}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;->access$400(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;

    move-result-object p0

    .line 563
    new-instance v0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReferenceImpl;

    # getter for: Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->queueForValues:Ljava/lang/ref/ReferenceQueue;
    invoke-static {p1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->access$500(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;)Ljava/lang/ref/ReferenceQueue;

    move-result-object p1

    invoke-direct {v0, p1, p3, p2}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReferenceImpl;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;)V

    # setter for: Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;->valueReference:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;
    invoke-static {p2, v0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;->access$402(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;

    .line 564
    invoke-interface {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;->clear()V

    return-void
.end method

.method public blacklist valueStrength()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;
    .registers 1

    .line 534
    sget-object p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;->WEAK:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;

    return-object p0
.end method
