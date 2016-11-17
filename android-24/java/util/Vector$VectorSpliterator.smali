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
    accessFlags = 0x18
    name = "VectorSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private array:[Ljava/lang/Object;

.field private expectedModCount:I

.field private fence:I

.field private index:I

.field private final list:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Vector;[Ljava/lang/Object;III)V
    .locals 0
    .param p2, "array"    # [Ljava/lang/Object;
    .param p3, "origin"    # I
    .param p4, "fence"    # I
    .param p5, "expectedModCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<TE;>;[",
            "Ljava/lang/Object;",
            "III)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1289
    .local p0, "this":Ljava/util/Vector$VectorSpliterator;, "Ljava/util/Vector<TE;>.VectorSpliterator<TE;>;"
    .local p1, "list":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1291
    iput-object p1, p0, Ljava/util/Vector$VectorSpliterator;->list:Ljava/util/Vector;

    #@5
    .line 1292
    iput-object p2, p0, Ljava/util/Vector$VectorSpliterator;->array:[Ljava/lang/Object;

    #@7
    .line 1293
    iput p3, p0, Ljava/util/Vector$VectorSpliterator;->index:I

    #@9
    .line 1294
    iput p4, p0, Ljava/util/Vector$VectorSpliterator;->fence:I

    #@b
    .line 1295
    iput p5, p0, Ljava/util/Vector$VectorSpliterator;->expectedModCount:I

    #@d
    .line 1290
    return-void
.end method

.method private getFence()I
    .locals 3

    #@0
    .prologue
    .line 1300
    .local p0, "this":Ljava/util/Vector$VectorSpliterator;, "Ljava/util/Vector<TE;>.VectorSpliterator<TE;>;"
    iget v0, p0, Ljava/util/Vector$VectorSpliterator;->fence:I

    #@2
    .local v0, "hi":I
    if-gez v0, :cond_0

    #@4
    .line 1301
    iget-object v2, p0, Ljava/util/Vector$VectorSpliterator;->list:Ljava/util/Vector;

    #@6
    monitor-enter v2

    #@7
    .line 1302
    :try_start_0
    iget-object v1, p0, Ljava/util/Vector$VectorSpliterator;->list:Ljava/util/Vector;

    #@9
    iget-object v1, v1, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@b
    iput-object v1, p0, Ljava/util/Vector$VectorSpliterator;->array:[Ljava/lang/Object;

    #@d
    .line 1303
    iget-object v1, p0, Ljava/util/Vector$VectorSpliterator;->list:Ljava/util/Vector;

    #@f
    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    #@11
    iput v1, p0, Ljava/util/Vector$VectorSpliterator;->expectedModCount:I

    #@13
    .line 1304
    iget-object v1, p0, Ljava/util/Vector$VectorSpliterator;->list:Ljava/util/Vector;

    #@15
    iget v0, v1, Ljava/util/Vector;->elementCount:I

    #@17
    .end local v0    # "hi":I
    iput v0, p0, Ljava/util/Vector$VectorSpliterator;->fence:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .restart local v0    # "hi":I
    monitor-exit v2

    #@1a
    .line 1307
    :cond_0
    return v0

    #@1b
    .line 1301
    .end local v0    # "hi":I
    :catchall_0
    move-exception v1

    #@1c
    monitor-exit v2

    #@1d
    throw v1
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    #@0
    .prologue
    .line 1363
    .local p0, "this":Ljava/util/Vector$VectorSpliterator;, "Ljava/util/Vector<TE;>.VectorSpliterator<TE;>;"
    const/16 v0, 0x4050

    #@2
    return v0
.end method

.method public estimateSize()J
    .locals 2

    #@0
    .prologue
    .line 1359
    .local p0, "this":Ljava/util/Vector$VectorSpliterator;, "Ljava/util/Vector<TE;>.VectorSpliterator<TE;>;"
    invoke-direct {p0}, Ljava/util/Vector$VectorSpliterator;->getFence()I

    #@3
    move-result v0

    #@4
    iget v1, p0, Ljava/util/Vector$VectorSpliterator;->index:I

    #@6
    sub-int/2addr v0, v1

    #@7
    int-to-long v0, v0

    #@8
    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1336
    .local p0, "this":Ljava/util/Vector$VectorSpliterator;, "Ljava/util/Vector<TE;>.VectorSpliterator<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    if-nez p1, :cond_0

    #@2
    .line 1337
    new-instance v5, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v5

    #@8
    .line 1338
    :cond_0
    iget-object v4, p0, Ljava/util/Vector$VectorSpliterator;->list:Ljava/util/Vector;

    #@a
    .local v4, "lst":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    if-eqz v4, :cond_3

    #@c
    .line 1339
    iget v1, p0, Ljava/util/Vector$VectorSpliterator;->fence:I

    #@e
    .local v1, "hi":I
    if-gez v1, :cond_1

    #@10
    .line 1340
    monitor-enter v4

    #@11
    .line 1341
    :try_start_0
    iget v5, v4, Ljava/util/AbstractList;->modCount:I

    #@13
    iput v5, p0, Ljava/util/Vector$VectorSpliterator;->expectedModCount:I

    #@15
    .line 1342
    iget-object v0, v4, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@17
    iput-object v0, p0, Ljava/util/Vector$VectorSpliterator;->array:[Ljava/lang/Object;

    #@19
    .line 1343
    .local v0, "a":[Ljava/lang/Object;
    iget v1, v4, Ljava/util/Vector;->elementCount:I

    #@1b
    .end local v1    # "hi":I
    iput v1, p0, Ljava/util/Vector$VectorSpliterator;->fence:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    .restart local v1    # "hi":I
    monitor-exit v4

    #@1e
    .line 1348
    :goto_0
    if-eqz v0, :cond_3

    #@20
    iget v2, p0, Ljava/util/Vector$VectorSpliterator;->index:I

    #@22
    .local v2, "i":I
    if-ltz v2, :cond_3

    #@24
    iput v1, p0, Ljava/util/Vector$VectorSpliterator;->index:I

    #@26
    array-length v5, v0

    #@27
    if-gt v1, v5, :cond_3

    #@29
    move v3, v2

    #@2a
    .line 1349
    .end local v2    # "i":I
    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_2

    #@2c
    .line 1350
    add-int/lit8 v2, v3, 0x1

    #@2e
    .end local v3    # "i":I
    .restart local v2    # "i":I
    aget-object v5, v0, v3

    #@30
    invoke-interface {p1, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@33
    move v3, v2

    #@34
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_1

    #@35
    .line 1340
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v1    # "hi":I
    .end local v3    # "i":I
    :catchall_0
    move-exception v5

    #@36
    monitor-exit v4

    #@37
    throw v5

    #@38
    .line 1347
    .restart local v1    # "hi":I
    :cond_1
    iget-object v0, p0, Ljava/util/Vector$VectorSpliterator;->array:[Ljava/lang/Object;

    #@3a
    .restart local v0    # "a":[Ljava/lang/Object;
    goto :goto_0

    #@3b
    .line 1351
    .restart local v3    # "i":I
    :cond_2
    iget v5, v4, Ljava/util/AbstractList;->modCount:I

    #@3d
    iget v6, p0, Ljava/util/Vector$VectorSpliterator;->expectedModCount:I

    #@3f
    if-ne v5, v6, :cond_3

    #@41
    .line 1352
    return-void

    #@42
    .line 1355
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v1    # "hi":I
    .end local v3    # "i":I
    :cond_3
    new-instance v5, Ljava/util/ConcurrentModificationException;

    #@44
    invoke-direct {v5}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@47
    throw v5
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 1320
    .local p0, "this":Ljava/util/Vector$VectorSpliterator;, "Ljava/util/Vector<TE;>.VectorSpliterator<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    if-nez p1, :cond_0

    #@2
    .line 1321
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v1

    #@8
    .line 1322
    :cond_0
    invoke-direct {p0}, Ljava/util/Vector$VectorSpliterator;->getFence()I

    #@b
    move-result v1

    #@c
    iget v0, p0, Ljava/util/Vector$VectorSpliterator;->index:I

    #@e
    .local v0, "i":I
    if-le v1, v0, :cond_2

    #@10
    .line 1323
    add-int/lit8 v1, v0, 0x1

    #@12
    iput v1, p0, Ljava/util/Vector$VectorSpliterator;->index:I

    #@14
    .line 1324
    iget-object v1, p0, Ljava/util/Vector$VectorSpliterator;->array:[Ljava/lang/Object;

    #@16
    aget-object v1, v1, v0

    #@18
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@1b
    .line 1325
    iget-object v1, p0, Ljava/util/Vector$VectorSpliterator;->list:Ljava/util/Vector;

    #@1d
    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    #@1f
    iget v2, p0, Ljava/util/Vector$VectorSpliterator;->expectedModCount:I

    #@21
    if-eq v1, v2, :cond_1

    #@23
    .line 1326
    new-instance v1, Ljava/util/ConcurrentModificationException;

    #@25
    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@28
    throw v1

    #@29
    .line 1327
    :cond_1
    const/4 v1, 0x1

    #@2a
    return v1

    #@2b
    .line 1329
    :cond_2
    const/4 v1, 0x0

    #@2c
    return v1
.end method

.method public trySplit()Ljava/util/Spliterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1311
    .local p0, "this":Ljava/util/Vector$VectorSpliterator;, "Ljava/util/Vector<TE;>.VectorSpliterator<TE;>;"
    invoke-direct {p0}, Ljava/util/Vector$VectorSpliterator;->getFence()I

    #@3
    move-result v6

    #@4
    .local v6, "hi":I
    iget v3, p0, Ljava/util/Vector$VectorSpliterator;->index:I

    #@6
    .local v3, "lo":I
    add-int v0, v3, v6

    #@8
    ushr-int/lit8 v4, v0, 0x1

    #@a
    .line 1312
    .local v4, "mid":I
    if-lt v3, v4, :cond_0

    #@c
    const/4 v0, 0x0

    #@d
    :goto_0
    return-object v0

    #@e
    .line 1313
    :cond_0
    new-instance v0, Ljava/util/Vector$VectorSpliterator;

    #@10
    iget-object v1, p0, Ljava/util/Vector$VectorSpliterator;->list:Ljava/util/Vector;

    #@12
    iget-object v2, p0, Ljava/util/Vector$VectorSpliterator;->array:[Ljava/lang/Object;

    #@14
    iput v4, p0, Ljava/util/Vector$VectorSpliterator;->index:I

    #@16
    .line 1314
    iget v5, p0, Ljava/util/Vector$VectorSpliterator;->expectedModCount:I

    #@18
    .line 1313
    invoke-direct/range {v0 .. v5}, Ljava/util/Vector$VectorSpliterator;-><init>(Ljava/util/Vector;[Ljava/lang/Object;III)V

    #@1b
    goto :goto_0
.end method
