.class final Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"

# interfaces
.implements Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntryHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;
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
        "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry<",
        "TK;TV;>;",
        "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final blacklist INSTANCE:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 921
    new-instance v0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;

    invoke-direct {v0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;-><init>()V

    sput-object v0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;->INSTANCE:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 918
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist instance()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper<",
            "TK;TV;>;"
        }
    .end annotation

    .line 925
    sget-object v0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;->INSTANCE:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;

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

    .line 918
    check-cast p1, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;

    check-cast p2, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;

    check-cast p3, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;->copy(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;

    move-result-object p0

    return-object p0
.end method

.method public blacklist copy(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;
    .registers 7
    .param p3    # Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment<",
            "TK;TV;>;",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry<",
            "TK;TV;>;",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry<",
            "TK;TV;>;)",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 951
    invoke-virtual {p2}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$AbstractWeakKeyEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 956
    :cond_8
    invoke-static {p2}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->isCollected(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;)Z

    move-result v2

    if-eqz v2, :cond_f

    return-object v1

    .line 959
    :cond_f
    iget v1, p2, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$AbstractWeakKeyEntry;->hash:I

    invoke-virtual {p0, p1, v0, v1, p3}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;->newEntry(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;Ljava/lang/Object;ILandroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;

    move-result-object p0

    .line 960
    # getter for: Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;->valueReference:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;
    invoke-static {p2}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;->access$1400(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;

    move-result-object p2

    # getter for: Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;->queueForValues:Ljava/lang/ref/ReferenceQueue;
    invoke-static {p1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;->access$1500(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;)Ljava/lang/ref/ReferenceQueue;

    move-result-object p1

    invoke-interface {p2, p1, p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;->copyFor(Ljava/lang/ref/ReferenceQueue;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;

    move-result-object p1

    # setter for: Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;->valueReference:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;
    invoke-static {p0, p1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;->access$1402(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;

    return-object p0
.end method

.method public blacklist keyStrength()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;
    .registers 1

    .line 930
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

    .line 918
    check-cast p1, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;

    check-cast p4, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;->newEntry(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;Ljava/lang/Object;ILandroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newEntry(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;Ljava/lang/Object;ILandroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;
    .registers 5
    .param p4    # Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment<",
            "TK;TV;>;TK;I",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry<",
            "TK;TV;>;)",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    if-nez p4, :cond_c

    .line 979
    new-instance p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;

    # getter for: Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;->queueForKeys:Ljava/lang/ref/ReferenceQueue;
    invoke-static {p1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;->access$1600(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;)Ljava/lang/ref/ReferenceQueue;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;I)V

    return-object p0

    .line 980
    :cond_c
    new-instance p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$LinkedWeakKeyWeakValueEntry;

    # getter for: Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;->queueForKeys:Ljava/lang/ref/ReferenceQueue;
    invoke-static {p1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;->access$1600(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;)Ljava/lang/ref/ReferenceQueue;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$LinkedWeakKeyWeakValueEntry;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILandroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;)V

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

    .line 918
    invoke-virtual {p0, p1, p2}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;->newSegment(Landroid/media/internal/guava_common/collect/MapMakerInternalMap;I)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newSegment(Landroid/media/internal/guava_common/collect/MapMakerInternalMap;I)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap<",
            "TK;TV;",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry<",
            "TK;TV;>;",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment<",
            "TK;TV;>;>;I)",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment<",
            "TK;TV;>;"
        }
    .end annotation

    .line 942
    new-instance p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;

    invoke-direct {p0, p1, p2}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;-><init>(Landroid/media/internal/guava_common/collect/MapMakerInternalMap;I)V

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

    .line 918
    check-cast p1, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;

    check-cast p2, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;->setValue(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist setValue(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment<",
            "TK;TV;>;",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry<",
            "TK;TV;>;TV;)V"
        }
    .end annotation

    .line 967
    # getter for: Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;->valueReference:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;
    invoke-static {p2}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;->access$1400(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;

    move-result-object p0

    .line 968
    new-instance v0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReferenceImpl;

    # getter for: Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;->queueForValues:Ljava/lang/ref/ReferenceQueue;
    invoke-static {p1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;->access$1500(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;)Ljava/lang/ref/ReferenceQueue;

    move-result-object p1

    invoke-direct {v0, p1, p3, p2}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReferenceImpl;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;)V

    # setter for: Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;->valueReference:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;
    invoke-static {p2, v0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;->access$1402(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;

    .line 969
    invoke-interface {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;->clear()V

    return-void
.end method

.method public blacklist valueStrength()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;
    .registers 1

    .line 935
    sget-object p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;->WEAK:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;

    return-object p0
.end method
