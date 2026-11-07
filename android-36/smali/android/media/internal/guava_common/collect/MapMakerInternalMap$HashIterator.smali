.class abstract Landroid/media/internal/guava_common/collect/MapMakerInternalMap$HashIterator;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "HashIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field blacklist currentSegment:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment<",
            "TK;TV;TE;TS;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field blacklist currentTable:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field blacklist lastReturned:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WriteThroughEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap<",
            "TK;TV;TE;TS;>.WriteThroughEntry;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field blacklist nextEntry:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field blacklist nextExternal:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WriteThroughEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap<",
            "TK;TV;TE;TS;>.WriteThroughEntry;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field blacklist nextSegmentIndex:I

.field blacklist nextTableIndex:I

.field final synthetic blacklist this$0:Landroid/media/internal/guava_common/collect/MapMakerInternalMap;


# direct methods
.method constructor blacklist <init>(Landroid/media/internal/guava_common/collect/MapMakerInternalMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2561
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$HashIterator;->this$0:Landroid/media/internal/guava_common/collect/MapMakerInternalMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2562
    iget-object p1, p1, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->segments:[Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$HashIterator;->nextSegmentIndex:I

    const/4 p1, -0x1

    .line 2563
    iput p1, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$HashIterator;->nextTableIndex:I

    .line 2564
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$HashIterator;->advance()V

    return-void
.end method


# virtual methods
.method final blacklist advance()V
    .registers 4

    const/4 v0, 0x0

    .line 2571
    iput-object v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$HashIterator;->nextExternal:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WriteThroughEntry;

    .line 2573
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$HashIterator;->nextInChain()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_39

    .line 2577
    :cond_a
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$HashIterator;->nextInTable()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_39

    .line 2581
    :cond_11
    iget v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$HashIterator;->nextSegmentIndex:I

    if-ltz v0, :cond_39

    .line 2582
    iget-object v1, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$HashIterator;->this$0:Landroid/media/internal/guava_common/collect/MapMakerInternalMap;

    iget-object v1, v1, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->segments:[Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$HashIterator;->nextSegmentIndex:I

    aget-object v0, v1, v0

    iput-object v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$HashIterator;->currentSegment:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;

    .line 2583
    iget v0, v0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->count:I

    if-eqz v0, :cond_11

    .line 2584
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$HashIterator;->currentSegment:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;

    iget-object v0, v0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput-object v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$HashIterator;->currentTable:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2585
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$HashIterator;->nextTableIndex:I

    .line 2586
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$HashIterator;->nextInTable()Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_39
    :goto_39
    return-void
.end method

.method blacklist advanceTo(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 2623
    :try_start_0
    invoke-interface {p1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 2624
    iget-object v1, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$HashIterator;->this$0:Landroid/media/internal/guava_common/collect/MapMakerInternalMap;

    invoke-virtual {v1, p1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->getLiveValue(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 2626
    new-instance v1, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WriteThroughEntry;

    iget-object v2, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$HashIterator;->this$0:Landroid/media/internal/guava_common/collect/MapMakerInternalMap;

    invoke-direct {v1, v2, v0, p1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WriteThroughEntry;-><init>(Landroid/media/internal/guava_common/collect/MapMakerInternalMap;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$HashIterator;->nextExternal:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WriteThroughEntry;
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_1c

    .line 2633
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$HashIterator;->currentSegment:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    const/4 p0, 0x1

    return p0

    :catchall_1c
    move-exception p1

    goto :goto_25

    :cond_1e
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$HashIterator;->currentSegment:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    const/4 p0, 0x0

    return p0

    :goto_25
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$HashIterator;->currentSegment:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    .line 2634
    throw p1
.end method

.method public whitelist test-api hasNext()Z
    .registers 1

    .line 2639
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$HashIterator;->nextExternal:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WriteThroughEntry;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method blacklist nextEntry()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WriteThroughEntry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap<",
            "TK;TV;TE;TS;>.WriteThroughEntry;"
        }
    .end annotation

    .line 2643
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$HashIterator;->nextExternal:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WriteThroughEntry;

    if-eqz v0, :cond_c

    .line 2646
    iput-object v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$HashIterator;->lastReturned:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WriteThroughEntry;

    .line 2647
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$HashIterator;->advance()V

    .line 2648
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$HashIterator;->lastReturned:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WriteThroughEntry;

    return-object p0

    .line 2644
    :cond_c
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method blacklist nextInChain()Z
    .registers 2

    .line 2595
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$HashIterator;->nextEntry:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;

    if-eqz v0, :cond_19

    .line 2596
    :goto_4
    invoke-interface {v0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;->getNext()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$HashIterator;->nextEntry:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;

    iget-object v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$HashIterator;->nextEntry:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;

    if-eqz v0, :cond_19

    .line 2597
    invoke-virtual {p0, v0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$HashIterator;->advanceTo(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 p0, 0x1

    return p0

    .line 2596
    :cond_16
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$HashIterator;->nextEntry:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;

    goto :goto_4

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method blacklist nextInTable()Z
    .registers 4

    .line 2607
    :cond_0
    iget v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$HashIterator;->nextTableIndex:I

    if-ltz v0, :cond_22

    .line 2608
    iget-object v1, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$HashIterator;->currentTable:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$HashIterator;->nextTableIndex:I

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;

    iput-object v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$HashIterator;->nextEntry:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;

    if-eqz v0, :cond_0

    .line 2609
    invoke-virtual {p0, v0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$HashIterator;->advanceTo(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;)Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$HashIterator;->nextInChain()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_20
    const/4 p0, 0x1

    return p0

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api remove()V
    .registers 3

    .line 2653
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$HashIterator;->lastReturned:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WriteThroughEntry;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Landroid/media/internal/guava_common/collect/CollectPreconditions;->checkRemove(Z)V

    .line 2654
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$HashIterator;->this$0:Landroid/media/internal/guava_common/collect/MapMakerInternalMap;

    iget-object v1, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$HashIterator;->lastReturned:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WriteThroughEntry;

    invoke-virtual {v1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WriteThroughEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2655
    iput-object v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$HashIterator;->lastReturned:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WriteThroughEntry;

    return-void
.end method
