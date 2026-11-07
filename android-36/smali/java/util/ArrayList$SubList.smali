.class Ljava/util/ArrayList$SubList;
.super Ljava/util/AbstractList;
.source "ArrayList.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SubList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private final greylist-max-r offset:I

.field private final blacklist parent:Ljava/util/ArrayList$SubList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList$SubList<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final blacklist root:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TE;>;"
        }
    .end annotation
.end field

.field private greylist size:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetoffset(Ljava/util/ArrayList$SubList;)I
    .registers 1

    iget p0, p0, Ljava/util/ArrayList$SubList;->offset:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetroot(Ljava/util/ArrayList$SubList;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Ljava/util/ArrayList$SubList;->root:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetsize(Ljava/util/ArrayList$SubList;)I
    .registers 1

    iget p0, p0, Ljava/util/ArrayList$SubList;->size:I

    return p0
.end method

.method private constructor blacklist <init>(Ljava/util/ArrayList$SubList;II)V
    .registers 5
    .param p2, "fromIndex"    # I
    .param p3, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList$SubList<",
            "TE;>;II)V"
        }
    .end annotation

    .line 1231
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList$SubList<TE;>;"
    .local p1, "parent":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList$SubList<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 1232
    iget-object v0, p1, Ljava/util/ArrayList$SubList;->root:Ljava/util/ArrayList;

    iput-object v0, p0, Ljava/util/ArrayList$SubList;->root:Ljava/util/ArrayList;

    .line 1233
    iput-object p1, p0, Ljava/util/ArrayList$SubList;->parent:Ljava/util/ArrayList$SubList;

    .line 1234
    iget v0, p1, Ljava/util/ArrayList$SubList;->offset:I

    add-int/2addr v0, p2

    iput v0, p0, Ljava/util/ArrayList$SubList;->offset:I

    .line 1235
    sub-int v0, p3, p2

    iput v0, p0, Ljava/util/ArrayList$SubList;->size:I

    .line 1236
    iget v0, p1, Ljava/util/ArrayList$SubList;->modCount:I

    iput v0, p0, Ljava/util/ArrayList$SubList;->modCount:I

    .line 1237
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/ArrayList;II)V
    .registers 5
    .param p2, "fromIndex"    # I
    .param p3, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "TE;>;II)V"
        }
    .end annotation

    .line 1220
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList$SubList<TE;>;"
    .local p1, "root":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 1221
    iput-object p1, p0, Ljava/util/ArrayList$SubList;->root:Ljava/util/ArrayList;

    .line 1222
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/ArrayList$SubList;->parent:Ljava/util/ArrayList$SubList;

    .line 1223
    iput p2, p0, Ljava/util/ArrayList$SubList;->offset:I

    .line 1224
    sub-int v0, p3, p2

    iput v0, p0, Ljava/util/ArrayList$SubList;->size:I

    .line 1225
    iget v0, p1, Ljava/util/ArrayList;->modCount:I

    iput v0, p0, Ljava/util/ArrayList$SubList;->modCount:I

    .line 1226
    return-void
.end method

.method private blacklist batchRemove(Ljava/util/Collection;Z)Z
    .registers 8
    .param p2, "complement"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;Z)Z"
        }
    .end annotation

    .line 1307
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList$SubList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-direct {p0}, Ljava/util/ArrayList$SubList;->checkForComodification()V

    .line 1308
    iget-object v0, p0, Ljava/util/ArrayList$SubList;->root:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/ArrayList;->-$$Nest$fgetsize(Ljava/util/ArrayList;)I

    move-result v0

    .line 1309
    .local v0, "oldSize":I
    iget-object v1, p0, Ljava/util/ArrayList$SubList;->root:Ljava/util/ArrayList;

    iget v2, p0, Ljava/util/ArrayList$SubList;->offset:I

    iget v3, p0, Ljava/util/ArrayList$SubList;->offset:I

    iget v4, p0, Ljava/util/ArrayList$SubList;->size:I

    add-int/2addr v3, v4

    .line 1310
    invoke-virtual {v1, p1, p2, v2, v3}, Ljava/util/ArrayList;->batchRemove(Ljava/util/Collection;ZII)Z

    move-result v1

    .line 1311
    .local v1, "modified":Z
    if-eqz v1, :cond_22

    .line 1312
    iget-object v2, p0, Ljava/util/ArrayList$SubList;->root:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/ArrayList;->-$$Nest$fgetsize(Ljava/util/ArrayList;)I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v2}, Ljava/util/ArrayList$SubList;->updateSizeAndModCount(I)V

    .line 1313
    :cond_22
    return v1
.end method

.method private blacklist checkForComodification()V
    .registers 3

    .line 1513
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList$SubList<TE;>;"
    iget-object v0, p0, Ljava/util/ArrayList$SubList;->root:Ljava/util/ArrayList;

    iget v0, v0, Ljava/util/ArrayList;->modCount:I

    iget v1, p0, Ljava/util/ArrayList$SubList;->modCount:I

    if-ne v0, v1, :cond_9

    .line 1515
    return-void

    .line 1514
    :cond_9
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method private greylist-max-o outOfBoundsMsg(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .line 1509
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList$SubList<TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/ArrayList$SubList;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist rangeCheckForAdd(I)V
    .registers 4
    .param p1, "index"    # I

    .line 1504
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList$SubList<TE;>;"
    if-ltz p1, :cond_7

    iget v0, p0, Ljava/util/ArrayList$SubList;->size:I

    if-gt p1, v0, :cond_7

    .line 1506
    return-void

    .line 1505
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/util/ArrayList$SubList;->outOfBoundsMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist updateSizeAndModCount(I)V
    .registers 4
    .param p1, "sizeChange"    # I

    .line 1518
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList$SubList<TE;>;"
    move-object v0, p0

    .line 1520
    .local v0, "slist":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList$SubList<TE;>;"
    :cond_1
    iget v1, v0, Ljava/util/ArrayList$SubList;->size:I

    add-int/2addr v1, p1

    iput v1, v0, Ljava/util/ArrayList$SubList;->size:I

    .line 1521
    iget-object v1, p0, Ljava/util/ArrayList$SubList;->root:Ljava/util/ArrayList;

    iget v1, v1, Ljava/util/ArrayList;->modCount:I

    iput v1, v0, Ljava/util/ArrayList$SubList;->modCount:I

    .line 1522
    iget-object v0, v0, Ljava/util/ArrayList$SubList;->parent:Ljava/util/ArrayList$SubList;

    .line 1523
    if-nez v0, :cond_1

    .line 1524
    return-void
.end method


# virtual methods
.method public whitelist test-api add(ILjava/lang/Object;)V
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 1259
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList$SubList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, p1}, Ljava/util/ArrayList$SubList;->rangeCheckForAdd(I)V

    .line 1260
    invoke-direct {p0}, Ljava/util/ArrayList$SubList;->checkForComodification()V

    .line 1261
    iget-object v0, p0, Ljava/util/ArrayList$SubList;->root:Ljava/util/ArrayList;

    iget v1, p0, Ljava/util/ArrayList$SubList;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1262
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/ArrayList$SubList;->updateSizeAndModCount(I)V

    .line 1263
    return-void
.end method

.method public whitelist test-api addAll(ILjava/util/Collection;)Z
    .registers 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 1284
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList$SubList<TE;>;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0, p1}, Ljava/util/ArrayList$SubList;->rangeCheckForAdd(I)V

    .line 1285
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    .line 1286
    .local v0, "cSize":I
    if-nez v0, :cond_b

    .line 1287
    const/4 v1, 0x0

    return v1

    .line 1288
    :cond_b
    invoke-direct {p0}, Ljava/util/ArrayList$SubList;->checkForComodification()V

    .line 1289
    iget-object v1, p0, Ljava/util/ArrayList$SubList;->root:Ljava/util/ArrayList;

    iget v2, p0, Ljava/util/ArrayList$SubList;->offset:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 1290
    invoke-direct {p0, v0}, Ljava/util/ArrayList$SubList;->updateSizeAndModCount(I)V

    .line 1291
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist test-api addAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 1280
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList$SubList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget v0, p0, Ljava/util/ArrayList$SubList;->size:I

    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList$SubList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 1375
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList$SubList<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayList$SubList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 1343
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList$SubList<TE;>;"
    if-ne p1, p0, :cond_4

    .line 1344
    const/4 v0, 0x1

    return v0

    .line 1347
    :cond_4
    instance-of v0, p1, Ljava/util/List;

    if-nez v0, :cond_a

    .line 1348
    const/4 v0, 0x0

    return v0

    .line 1351
    :cond_a
    iget-object v0, p0, Ljava/util/ArrayList$SubList;->root:Ljava/util/ArrayList;

    move-object v1, p1

    check-cast v1, Ljava/util/List;

    iget v2, p0, Ljava/util/ArrayList$SubList;->offset:I

    iget v3, p0, Ljava/util/ArrayList$SubList;->offset:I

    iget v4, p0, Ljava/util/ArrayList$SubList;->size:I

    add-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/ArrayList;->equalsRange(Ljava/util/List;II)Z

    move-result v0

    .line 1352
    .local v0, "equal":Z
    invoke-direct {p0}, Ljava/util/ArrayList$SubList;->checkForComodification()V

    .line 1353
    return v0
.end method

.method public whitelist test-api get(I)Ljava/lang/Object;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1248
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList$SubList<TE;>;"
    iget v0, p0, Ljava/util/ArrayList$SubList;->size:I

    invoke-static {p1, v0}, Ljava/util/Objects;->checkIndex(II)I

    .line 1249
    invoke-direct {p0}, Ljava/util/ArrayList$SubList;->checkForComodification()V

    .line 1250
    iget-object v0, p0, Ljava/util/ArrayList$SubList;->root:Ljava/util/ArrayList;

    iget v1, p0, Ljava/util/ArrayList$SubList;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->elementData(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 1357
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList$SubList<TE;>;"
    iget-object v0, p0, Ljava/util/ArrayList$SubList;->root:Ljava/util/ArrayList;

    iget v1, p0, Ljava/util/ArrayList$SubList;->offset:I

    iget v2, p0, Ljava/util/ArrayList$SubList;->offset:I

    iget v3, p0, Ljava/util/ArrayList$SubList;->size:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->hashCodeRange(II)I

    move-result v0

    .line 1358
    .local v0, "hash":I
    invoke-direct {p0}, Ljava/util/ArrayList$SubList;->checkForComodification()V

    .line 1359
    return v0
.end method

.method public whitelist test-api indexOf(Ljava/lang/Object;)I
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 1363
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList$SubList<TE;>;"
    iget-object v0, p0, Ljava/util/ArrayList$SubList;->root:Ljava/util/ArrayList;

    iget v1, p0, Ljava/util/ArrayList$SubList;->offset:I

    iget v2, p0, Ljava/util/ArrayList$SubList;->offset:I

    iget v3, p0, Ljava/util/ArrayList$SubList;->size:I

    add-int/2addr v2, v3

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/ArrayList;->indexOfRange(Ljava/lang/Object;II)I

    move-result v0

    .line 1364
    .local v0, "index":I
    invoke-direct {p0}, Ljava/util/ArrayList$SubList;->checkForComodification()V

    .line 1365
    if-ltz v0, :cond_17

    iget v1, p0, Ljava/util/ArrayList$SubList;->offset:I

    sub-int v1, v0, v1

    goto :goto_18

    :cond_17
    const/4 v1, -0x1

    :goto_18
    return v1
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1379
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList$SubList<TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList$SubList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api lastIndexOf(Ljava/lang/Object;)I
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 1369
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList$SubList<TE;>;"
    iget-object v0, p0, Ljava/util/ArrayList$SubList;->root:Ljava/util/ArrayList;

    iget v1, p0, Ljava/util/ArrayList$SubList;->offset:I

    iget v2, p0, Ljava/util/ArrayList$SubList;->offset:I

    iget v3, p0, Ljava/util/ArrayList$SubList;->size:I

    add-int/2addr v2, v3

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/ArrayList;->lastIndexOfRange(Ljava/lang/Object;II)I

    move-result v0

    .line 1370
    .local v0, "index":I
    invoke-direct {p0}, Ljava/util/ArrayList$SubList;->checkForComodification()V

    .line 1371
    if-ltz v0, :cond_17

    iget v1, p0, Ljava/util/ArrayList$SubList;->offset:I

    sub-int v1, v0, v1

    goto :goto_18

    :cond_17
    const/4 v1, -0x1

    :goto_18
    return v1
.end method

.method public whitelist test-api listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 1383
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList$SubList<TE;>;"
    invoke-direct {p0}, Ljava/util/ArrayList$SubList;->checkForComodification()V

    .line 1384
    invoke-direct {p0, p1}, Ljava/util/ArrayList$SubList;->rangeCheckForAdd(I)V

    .line 1386
    new-instance v0, Ljava/util/ArrayList$SubList$1;

    invoke-direct {v0, p0, p1}, Ljava/util/ArrayList$SubList$1;-><init>(Ljava/util/ArrayList$SubList;I)V

    return-object v0
.end method

.method public whitelist test-api remove(I)Ljava/lang/Object;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1266
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList$SubList<TE;>;"
    iget v0, p0, Ljava/util/ArrayList$SubList;->size:I

    invoke-static {p1, v0}, Ljava/util/Objects;->checkIndex(II)I

    .line 1267
    invoke-direct {p0}, Ljava/util/ArrayList$SubList;->checkForComodification()V

    .line 1268
    iget-object v0, p0, Ljava/util/ArrayList$SubList;->root:Ljava/util/ArrayList;

    iget v1, p0, Ljava/util/ArrayList$SubList;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 1269
    .local v0, "result":Ljava/lang/Object;, "TE;"
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Ljava/util/ArrayList$SubList;->updateSizeAndModCount(I)V

    .line 1270
    return-object v0
.end method

.method public whitelist test-api removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1299
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList$SubList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/ArrayList$SubList;->batchRemove(Ljava/util/Collection;Z)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api removeIf(Ljava/util/function/Predicate;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 1317
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList$SubList<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    invoke-direct {p0}, Ljava/util/ArrayList$SubList;->checkForComodification()V

    .line 1318
    iget-object v0, p0, Ljava/util/ArrayList$SubList;->root:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/ArrayList;->-$$Nest$fgetsize(Ljava/util/ArrayList;)I

    move-result v0

    .line 1319
    .local v0, "oldSize":I
    iget-object v1, p0, Ljava/util/ArrayList$SubList;->root:Ljava/util/ArrayList;

    iget v2, p0, Ljava/util/ArrayList$SubList;->offset:I

    iget v3, p0, Ljava/util/ArrayList$SubList;->offset:I

    iget v4, p0, Ljava/util/ArrayList$SubList;->size:I

    add-int/2addr v3, v4

    invoke-virtual {v1, p1, v2, v3}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;II)Z

    move-result v1

    .line 1320
    .local v1, "modified":Z
    if-eqz v1, :cond_22

    .line 1321
    iget-object v2, p0, Ljava/util/ArrayList$SubList;->root:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/ArrayList;->-$$Nest$fgetsize(Ljava/util/ArrayList;)I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v2}, Ljava/util/ArrayList$SubList;->updateSizeAndModCount(I)V

    .line 1322
    :cond_22
    return v1
.end method

.method protected whitelist test-api removeRange(II)V
    .registers 6
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 1274
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList$SubList<TE;>;"
    invoke-direct {p0}, Ljava/util/ArrayList$SubList;->checkForComodification()V

    .line 1275
    iget-object v0, p0, Ljava/util/ArrayList$SubList;->root:Ljava/util/ArrayList;

    iget v1, p0, Ljava/util/ArrayList$SubList;->offset:I

    add-int/2addr v1, p1

    iget v2, p0, Ljava/util/ArrayList$SubList;->offset:I

    add-int/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->removeRange(II)V

    .line 1276
    sub-int v0, p1, p2

    invoke-direct {p0, v0}, Ljava/util/ArrayList$SubList;->updateSizeAndModCount(I)V

    .line 1277
    return-void
.end method

.method public whitelist test-api replaceAll(Ljava/util/function/UnaryOperator;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/UnaryOperator<",
            "TE;>;)V"
        }
    .end annotation

    .line 1295
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList$SubList<TE;>;"
    .local p1, "operator":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TE;>;"
    iget-object v0, p0, Ljava/util/ArrayList$SubList;->root:Ljava/util/ArrayList;

    iget v1, p0, Ljava/util/ArrayList$SubList;->offset:I

    iget v2, p0, Ljava/util/ArrayList$SubList;->offset:I

    iget v3, p0, Ljava/util/ArrayList$SubList;->size:I

    add-int/2addr v2, v3

    invoke-static {v0, p1, v1, v2}, Ljava/util/ArrayList;->-$$Nest$mreplaceAllRange(Ljava/util/ArrayList;Ljava/util/function/UnaryOperator;II)V

    .line 1296
    return-void
.end method

.method public whitelist test-api retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1303
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList$SubList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/util/ArrayList$SubList;->batchRemove(Ljava/util/Collection;Z)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 1240
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList$SubList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    iget v0, p0, Ljava/util/ArrayList$SubList;->size:I

    invoke-static {p1, v0}, Ljava/util/Objects;->checkIndex(II)I

    .line 1241
    invoke-direct {p0}, Ljava/util/ArrayList$SubList;->checkForComodification()V

    .line 1242
    iget-object v0, p0, Ljava/util/ArrayList$SubList;->root:Ljava/util/ArrayList;

    iget v1, p0, Ljava/util/ArrayList$SubList;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->elementData(I)Ljava/lang/Object;

    move-result-object v0

    .line 1243
    .local v0, "oldValue":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Ljava/util/ArrayList$SubList;->root:Ljava/util/ArrayList;

    iget-object v1, v1, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/ArrayList$SubList;->offset:I

    add-int/2addr v2, p1

    aput-object p2, v1, v2

    .line 1244
    return-object v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 1254
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList$SubList<TE;>;"
    invoke-direct {p0}, Ljava/util/ArrayList$SubList;->checkForComodification()V

    .line 1255
    iget v0, p0, Ljava/util/ArrayList$SubList;->size:I

    return v0
.end method

.method public whitelist test-api spliterator()Ljava/util/Spliterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 1527
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList$SubList<TE;>;"
    invoke-direct {p0}, Ljava/util/ArrayList$SubList;->checkForComodification()V

    .line 1533
    new-instance v0, Ljava/util/ArrayList$SubList$2;

    invoke-direct {v0, p0}, Ljava/util/ArrayList$SubList$2;-><init>(Ljava/util/ArrayList$SubList;)V

    return-object v0
.end method

.method public whitelist test-api subList(II)Ljava/util/List;
    .registers 4
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 1499
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList$SubList<TE;>;"
    iget v0, p0, Ljava/util/ArrayList$SubList;->size:I

    invoke-static {p1, p2, v0}, Ljava/util/ArrayList$SubList;->subListRangeCheck(III)V

    .line 1500
    new-instance v0, Ljava/util/ArrayList$SubList;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/ArrayList$SubList;-><init>(Ljava/util/ArrayList$SubList;II)V

    return-object v0
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 5

    .line 1326
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList$SubList<TE;>;"
    invoke-direct {p0}, Ljava/util/ArrayList$SubList;->checkForComodification()V

    .line 1327
    iget-object v0, p0, Ljava/util/ArrayList$SubList;->root:Ljava/util/ArrayList;

    iget-object v0, v0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayList$SubList;->offset:I

    iget v2, p0, Ljava/util/ArrayList$SubList;->offset:I

    iget v3, p0, Ljava/util/ArrayList$SubList;->size:I

    add-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 1332
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList$SubList<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0}, Ljava/util/ArrayList$SubList;->checkForComodification()V

    .line 1333
    array-length v0, p1

    iget v1, p0, Ljava/util/ArrayList$SubList;->size:I

    if-ge v0, v1, :cond_1c

    .line 1334
    iget-object v0, p0, Ljava/util/ArrayList$SubList;->root:Ljava/util/ArrayList;

    iget-object v0, v0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayList$SubList;->offset:I

    iget v2, p0, Ljava/util/ArrayList$SubList;->offset:I

    iget v3, p0, Ljava/util/ArrayList$SubList;->size:I

    add-int/2addr v2, v3

    .line 1335
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 1334
    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1336
    :cond_1c
    iget-object v0, p0, Ljava/util/ArrayList$SubList;->root:Ljava/util/ArrayList;

    iget-object v0, v0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayList$SubList;->offset:I

    const/4 v2, 0x0

    iget v3, p0, Ljava/util/ArrayList$SubList;->size:I

    invoke-static {v0, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1337
    array-length v0, p1

    iget v1, p0, Ljava/util/ArrayList$SubList;->size:I

    if-le v0, v1, :cond_32

    .line 1338
    iget v0, p0, Ljava/util/ArrayList$SubList;->size:I

    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 1339
    :cond_32
    return-object p1
.end method
