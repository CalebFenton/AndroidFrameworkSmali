.class final Ljava/util/Vector$VectorSpliterator;
.super Ljava/lang/Object;
.source "Vector.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Vector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "VectorSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private greylist-max-o array:[Ljava/lang/Object;

.field private greylist-max-o expectedModCount:I

.field private greylist-max-o fence:I

.field private greylist-max-o index:I

.field final synthetic blacklist this$0:Ljava/util/Vector;


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/Vector;[Ljava/lang/Object;III)V
    .registers 6
    .param p1, "this$0"    # Ljava/util/Vector;
    .param p2, "array"    # [Ljava/lang/Object;
    .param p3, "origin"    # I
    .param p4, "fence"    # I
    .param p5, "expectedModCount"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 1444
    .local p0, "this":Ljava/util/Vector$VectorSpliterator;, "Ljava/util/Vector<TE;>.VectorSpliterator;"
    iput-object p1, p0, Ljava/util/Vector$VectorSpliterator;->this$0:Ljava/util/Vector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1445
    iput-object p2, p0, Ljava/util/Vector$VectorSpliterator;->array:[Ljava/lang/Object;

    .line 1446
    iput p3, p0, Ljava/util/Vector$VectorSpliterator;->index:I

    .line 1447
    iput p4, p0, Ljava/util/Vector$VectorSpliterator;->fence:I

    .line 1448
    iput p5, p0, Ljava/util/Vector$VectorSpliterator;->expectedModCount:I

    .line 1449
    return-void
.end method

.method private greylist-max-o getFence()I
    .registers 4

    .line 1453
    .local p0, "this":Ljava/util/Vector$VectorSpliterator;, "Ljava/util/Vector<TE;>.VectorSpliterator;"
    iget v0, p0, Ljava/util/Vector$VectorSpliterator;->fence:I

    move v1, v0

    .local v1, "hi":I
    if-gez v0, :cond_20

    .line 1454
    iget-object v0, p0, Ljava/util/Vector$VectorSpliterator;->this$0:Ljava/util/Vector;

    monitor-enter v0

    .line 1455
    :try_start_8
    iget-object v2, p0, Ljava/util/Vector$VectorSpliterator;->this$0:Ljava/util/Vector;

    iget-object v2, v2, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iput-object v2, p0, Ljava/util/Vector$VectorSpliterator;->array:[Ljava/lang/Object;

    .line 1456
    iget-object v2, p0, Ljava/util/Vector$VectorSpliterator;->this$0:Ljava/util/Vector;

    iget v2, v2, Ljava/util/Vector;->modCount:I

    iput v2, p0, Ljava/util/Vector$VectorSpliterator;->expectedModCount:I

    .line 1457
    iget-object v2, p0, Ljava/util/Vector$VectorSpliterator;->this$0:Ljava/util/Vector;

    iget v2, v2, Ljava/util/Vector;->elementCount:I

    iput v2, p0, Ljava/util/Vector$VectorSpliterator;->fence:I

    move v1, v2

    .line 1458
    monitor-exit v0

    goto :goto_20

    :catchall_1d
    move-exception v2

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_1d

    throw v2

    .line 1460
    :cond_20
    :goto_20
    return v1
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 1500
    .local p0, "this":Ljava/util/Vector$VectorSpliterator;, "Ljava/util/Vector<TE;>.VectorSpliterator;"
    const/16 v0, 0x4050

    return v0
.end method

.method public whitelist test-api estimateSize()J
    .registers 3

    .line 1496
    .local p0, "this":Ljava/util/Vector$VectorSpliterator;, "Ljava/util/Vector<TE;>.VectorSpliterator;"
    invoke-direct {p0}, Ljava/util/Vector$VectorSpliterator;->getFence()I

    move-result v0

    iget v1, p0, Ljava/util/Vector$VectorSpliterator;->index:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 1485
    .local p0, "this":Ljava/util/Vector$VectorSpliterator;, "Ljava/util/Vector<TE;>.VectorSpliterator;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1486
    invoke-direct {p0}, Ljava/util/Vector$VectorSpliterator;->getFence()I

    move-result v0

    .line 1487
    .local v0, "hi":I
    iget-object v1, p0, Ljava/util/Vector$VectorSpliterator;->array:[Ljava/lang/Object;

    .line 1489
    .local v1, "a":[Ljava/lang/Object;
    iget v2, p0, Ljava/util/Vector$VectorSpliterator;->index:I

    .local v2, "i":I
    iput v0, p0, Ljava/util/Vector$VectorSpliterator;->index:I

    :goto_d
    if-ge v2, v0, :cond_17

    .line 1490
    aget-object v3, v1, v2

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1489
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1491
    :cond_17
    iget-object v3, p0, Ljava/util/Vector$VectorSpliterator;->this$0:Ljava/util/Vector;

    iget v3, v3, Ljava/util/Vector;->modCount:I

    iget v4, p0, Ljava/util/Vector$VectorSpliterator;->expectedModCount:I

    if-ne v3, v4, :cond_20

    .line 1493
    return-void

    .line 1492
    :cond_20
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 1471
    .local p0, "this":Ljava/util/Vector$VectorSpliterator;, "Ljava/util/Vector<TE;>.VectorSpliterator;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1473
    invoke-direct {p0}, Ljava/util/Vector$VectorSpliterator;->getFence()I

    move-result v0

    iget v1, p0, Ljava/util/Vector$VectorSpliterator;->index:I

    move v2, v1

    .local v2, "i":I
    if-le v0, v1, :cond_27

    .line 1474
    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Ljava/util/Vector$VectorSpliterator;->index:I

    .line 1475
    iget-object v0, p0, Ljava/util/Vector$VectorSpliterator;->array:[Ljava/lang/Object;

    aget-object v0, v0, v2

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1476
    iget-object v0, p0, Ljava/util/Vector$VectorSpliterator;->this$0:Ljava/util/Vector;

    iget v0, v0, Ljava/util/Vector;->modCount:I

    iget v1, p0, Ljava/util/Vector$VectorSpliterator;->expectedModCount:I

    if-ne v0, v1, :cond_21

    .line 1478
    const/4 v0, 0x1

    return v0

    .line 1477
    :cond_21
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1480
    :cond_27
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 1464
    .local p0, "this":Ljava/util/Vector$VectorSpliterator;, "Ljava/util/Vector<TE;>.VectorSpliterator;"
    invoke-direct {p0}, Ljava/util/Vector$VectorSpliterator;->getFence()I

    move-result v0

    .local v0, "hi":I
    iget v4, p0, Ljava/util/Vector$VectorSpliterator;->index:I

    .local v4, "lo":I
    add-int v1, v4, v0

    ushr-int/lit8 v5, v1, 0x1

    .line 1465
    .local v5, "mid":I
    if-lt v4, v5, :cond_e

    const/4 v1, 0x0

    goto :goto_1b

    .line 1466
    :cond_e
    new-instance v1, Ljava/util/Vector$VectorSpliterator;

    iget-object v2, p0, Ljava/util/Vector$VectorSpliterator;->this$0:Ljava/util/Vector;

    iget-object v3, p0, Ljava/util/Vector$VectorSpliterator;->array:[Ljava/lang/Object;

    iput v5, p0, Ljava/util/Vector$VectorSpliterator;->index:I

    iget v6, p0, Ljava/util/Vector$VectorSpliterator;->expectedModCount:I

    invoke-direct/range {v1 .. v6}, Ljava/util/Vector$VectorSpliterator;-><init>(Ljava/util/Vector;[Ljava/lang/Object;III)V

    .line 1465
    :goto_1b
    return-object v1
.end method
