.class final Ljava/util/ArrayList$ArrayListSpliterator;
.super Ljava/lang/Object;
.source "ArrayList.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ArrayListSpliterator"
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
.field private expectedModCount:I

.field private fence:I

.field private index:I

.field private final list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/ArrayList;III)V
    .locals 0
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .param p4, "expectedModCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TE;>;III)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1302
    .local p0, "this":Ljava/util/ArrayList$ArrayListSpliterator;, "Ljava/util/ArrayList<TE;>.ArrayListSpliterator<TE;>;"
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1304
    iput-object p1, p0, Ljava/util/ArrayList$ArrayListSpliterator;->list:Ljava/util/ArrayList;

    #@5
    .line 1305
    iput p2, p0, Ljava/util/ArrayList$ArrayListSpliterator;->index:I

    #@7
    .line 1306
    iput p3, p0, Ljava/util/ArrayList$ArrayListSpliterator;->fence:I

    #@9
    .line 1307
    iput p4, p0, Ljava/util/ArrayList$ArrayListSpliterator;->expectedModCount:I

    #@b
    .line 1303
    return-void
.end method

.method private getFence()I
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/util/ArrayList$ArrayListSpliterator;, "Ljava/util/ArrayList<TE;>.ArrayListSpliterator<TE;>;"
    const/4 v2, 0x0

    #@1
    .line 1313
    iget v0, p0, Ljava/util/ArrayList$ArrayListSpliterator;->fence:I

    #@3
    .local v0, "hi":I
    if-gez v0, :cond_0

    #@5
    .line 1314
    iget-object v1, p0, Ljava/util/ArrayList$ArrayListSpliterator;->list:Ljava/util/ArrayList;

    #@7
    .local v1, "lst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    if-nez v1, :cond_1

    #@9
    .line 1315
    iput v2, p0, Ljava/util/ArrayList$ArrayListSpliterator;->fence:I

    #@b
    const/4 v0, 0x0

    #@c
    .line 1321
    .end local v1    # "lst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    :cond_0
    :goto_0
    return v0

    #@d
    .line 1317
    .restart local v1    # "lst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    :cond_1
    iget v2, v1, Ljava/util/ArrayList;->modCount:I

    #@f
    iput v2, p0, Ljava/util/ArrayList$ArrayListSpliterator;->expectedModCount:I

    #@11
    .line 1318
    invoke-static {v1}, Ljava/util/ArrayList;->-get0(Ljava/util/ArrayList;)I

    #@14
    move-result v0

    #@15
    .end local v0    # "hi":I
    iput v0, p0, Ljava/util/ArrayList$ArrayListSpliterator;->fence:I

    #@17
    .restart local v0    # "hi":I
    goto :goto_0
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    #@0
    .prologue
    .line 1375
    .local p0, "this":Ljava/util/ArrayList$ArrayListSpliterator;, "Ljava/util/ArrayList<TE;>.ArrayListSpliterator<TE;>;"
    const/16 v0, 0x4050

    #@2
    return v0
.end method

.method public estimateSize()J
    .locals 2

    #@0
    .prologue
    .line 1371
    .local p0, "this":Ljava/util/ArrayList$ArrayListSpliterator;, "Ljava/util/ArrayList<TE;>.ArrayListSpliterator<TE;>;"
    invoke-direct {p0}, Ljava/util/ArrayList$ArrayListSpliterator;->getFence()I

    #@3
    move-result v0

    #@4
    iget v1, p0, Ljava/util/ArrayList$ArrayListSpliterator;->index:I

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
    .line 1349
    .local p0, "this":Ljava/util/ArrayList$ArrayListSpliterator;, "Ljava/util/ArrayList<TE;>.ArrayListSpliterator<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    if-nez p1, :cond_0

    #@2
    .line 1350
    new-instance v6, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v6

    #@8
    .line 1351
    :cond_0
    iget-object v4, p0, Ljava/util/ArrayList$ArrayListSpliterator;->list:Ljava/util/ArrayList;

    #@a
    .local v4, "lst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    if-eqz v4, :cond_3

    #@c
    iget-object v0, v4, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@e
    .local v0, "a":[Ljava/lang/Object;
    if-eqz v0, :cond_3

    #@10
    .line 1352
    iget v2, p0, Ljava/util/ArrayList$ArrayListSpliterator;->fence:I

    #@12
    .local v2, "hi":I
    if-gez v2, :cond_1

    #@14
    .line 1353
    iget v5, v4, Ljava/util/ArrayList;->modCount:I

    #@16
    .line 1354
    .local v5, "mc":I
    invoke-static {v4}, Ljava/util/ArrayList;->-get0(Ljava/util/ArrayList;)I

    #@19
    move-result v2

    #@1a
    .line 1358
    :goto_0
    iget v3, p0, Ljava/util/ArrayList$ArrayListSpliterator;->index:I

    #@1c
    .local v3, "i":I
    if-ltz v3, :cond_3

    #@1e
    iput v2, p0, Ljava/util/ArrayList$ArrayListSpliterator;->index:I

    #@20
    array-length v6, v0

    #@21
    if-gt v2, v6, :cond_3

    #@23
    .line 1359
    :goto_1
    if-ge v3, v2, :cond_2

    #@25
    .line 1360
    aget-object v1, v0, v3

    #@27
    .line 1361
    .local v1, "e":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@2a
    .line 1359
    add-int/lit8 v3, v3, 0x1

    #@2c
    goto :goto_1

    #@2d
    .line 1357
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    .end local v3    # "i":I
    .end local v5    # "mc":I
    :cond_1
    iget v5, p0, Ljava/util/ArrayList$ArrayListSpliterator;->expectedModCount:I

    #@2f
    .restart local v5    # "mc":I
    goto :goto_0

    #@30
    .line 1363
    .restart local v3    # "i":I
    :cond_2
    iget v6, v4, Ljava/util/ArrayList;->modCount:I

    #@32
    if-ne v6, v5, :cond_3

    #@34
    .line 1364
    return-void

    #@35
    .line 1367
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v2    # "hi":I
    .end local v3    # "i":I
    .end local v5    # "mc":I
    :cond_3
    new-instance v6, Ljava/util/ConcurrentModificationException;

    #@37
    invoke-direct {v6}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@3a
    throw v6
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 1332
    .local p0, "this":Ljava/util/ArrayList$ArrayListSpliterator;, "Ljava/util/ArrayList<TE;>.ArrayListSpliterator<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    if-nez p1, :cond_0

    #@2
    .line 1333
    new-instance v3, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v3

    #@8
    .line 1334
    :cond_0
    invoke-direct {p0}, Ljava/util/ArrayList$ArrayListSpliterator;->getFence()I

    #@b
    move-result v1

    #@c
    .local v1, "hi":I
    iget v2, p0, Ljava/util/ArrayList$ArrayListSpliterator;->index:I

    #@e
    .line 1335
    .local v2, "i":I
    if-ge v2, v1, :cond_2

    #@10
    .line 1336
    add-int/lit8 v3, v2, 0x1

    #@12
    iput v3, p0, Ljava/util/ArrayList$ArrayListSpliterator;->index:I

    #@14
    .line 1337
    iget-object v3, p0, Ljava/util/ArrayList$ArrayListSpliterator;->list:Ljava/util/ArrayList;

    #@16
    iget-object v3, v3, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@18
    aget-object v0, v3, v2

    #@1a
    .line 1338
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@1d
    .line 1339
    iget-object v3, p0, Ljava/util/ArrayList$ArrayListSpliterator;->list:Ljava/util/ArrayList;

    #@1f
    iget v3, v3, Ljava/util/ArrayList;->modCount:I

    #@21
    iget v4, p0, Ljava/util/ArrayList$ArrayListSpliterator;->expectedModCount:I

    #@23
    if-eq v3, v4, :cond_1

    #@25
    .line 1340
    new-instance v3, Ljava/util/ConcurrentModificationException;

    #@27
    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@2a
    throw v3

    #@2b
    .line 1341
    :cond_1
    const/4 v3, 0x1

    #@2c
    return v3

    #@2d
    .line 1343
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_2
    const/4 v3, 0x0

    #@2e
    return v3
.end method

.method public trySplit()Ljava/util/ArrayList$ArrayListSpliterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList$ArrayListSpliterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1325
    .local p0, "this":Ljava/util/ArrayList$ArrayListSpliterator;, "Ljava/util/ArrayList<TE;>.ArrayListSpliterator<TE;>;"
    invoke-direct {p0}, Ljava/util/ArrayList$ArrayListSpliterator;->getFence()I

    #@3
    move-result v0

    #@4
    .local v0, "hi":I
    iget v1, p0, Ljava/util/ArrayList$ArrayListSpliterator;->index:I

    #@6
    .local v1, "lo":I
    add-int v3, v1, v0

    #@8
    ushr-int/lit8 v2, v3, 0x1

    #@a
    .line 1326
    .local v2, "mid":I
    if-lt v1, v2, :cond_0

    #@c
    const/4 v3, 0x0

    #@d
    :goto_0
    return-object v3

    #@e
    .line 1327
    :cond_0
    new-instance v3, Ljava/util/ArrayList$ArrayListSpliterator;

    #@10
    iget-object v4, p0, Ljava/util/ArrayList$ArrayListSpliterator;->list:Ljava/util/ArrayList;

    #@12
    iput v2, p0, Ljava/util/ArrayList$ArrayListSpliterator;->index:I

    #@14
    .line 1328
    iget v5, p0, Ljava/util/ArrayList$ArrayListSpliterator;->expectedModCount:I

    #@16
    .line 1327
    invoke-direct {v3, v4, v1, v2, v5}, Ljava/util/ArrayList$ArrayListSpliterator;-><init>(Ljava/util/ArrayList;III)V

    #@19
    goto :goto_0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    #@0
    .prologue
    .line 1324
    .local p0, "this":Ljava/util/ArrayList$ArrayListSpliterator;, "Ljava/util/ArrayList<TE;>.ArrayListSpliterator<TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList$ArrayListSpliterator;->trySplit()Ljava/util/ArrayList$ArrayListSpliterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
