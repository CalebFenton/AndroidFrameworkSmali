.class Ljava/util/ArrayList$SubList$1;
.super Ljava/lang/Object;
.source "ArrayList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/ArrayList$SubList;->listIterator(I)Ljava/util/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field blacklist cursor:I

.field blacklist expectedModCount:I

.field blacklist lastRet:I

.field final synthetic blacklist this$0:Ljava/util/ArrayList$SubList;

.field final synthetic blacklist val$index:I


# direct methods
.method constructor blacklist <init>(Ljava/util/ArrayList$SubList;I)V
    .registers 3
    .param p1, "this$0"    # Ljava/util/ArrayList$SubList;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1386
    .local p0, "this":Ljava/util/ArrayList$SubList$1;, "Ljava/util/ArrayList$SubList$1;"
    iput-object p1, p0, Ljava/util/ArrayList$SubList$1;->this$0:Ljava/util/ArrayList$SubList;

    iput p2, p0, Ljava/util/ArrayList$SubList$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1387
    iget p2, p0, Ljava/util/ArrayList$SubList$1;->val$index:I

    iput p2, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    .line 1388
    const/4 p2, -0x1

    iput p2, p0, Ljava/util/ArrayList$SubList$1;->lastRet:I

    .line 1389
    iget-object p2, p0, Ljava/util/ArrayList$SubList$1;->this$0:Ljava/util/ArrayList$SubList;

    iget p2, p2, Ljava/util/ArrayList$SubList;->modCount:I

    iput p2, p0, Ljava/util/ArrayList$SubList$1;->expectedModCount:I

    return-void
.end method


# virtual methods
.method public whitelist test-api add(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1478
    .local p0, "this":Ljava/util/ArrayList$SubList$1;, "Ljava/util/ArrayList$SubList$1;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Ljava/util/ArrayList$SubList$1;->checkForComodification()V

    .line 1481
    :try_start_3
    iget v0, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    .line 1482
    .local v0, "i":I
    iget-object v1, p0, Ljava/util/ArrayList$SubList$1;->this$0:Ljava/util/ArrayList$SubList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList$SubList;->add(ILjava/lang/Object;)V

    .line 1483
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    .line 1484
    const/4 v1, -0x1

    iput v1, p0, Ljava/util/ArrayList$SubList$1;->lastRet:I

    .line 1485
    iget-object v1, p0, Ljava/util/ArrayList$SubList$1;->this$0:Ljava/util/ArrayList$SubList;

    iget v1, v1, Ljava/util/ArrayList$SubList;->modCount:I

    iput v1, p0, Ljava/util/ArrayList$SubList$1;->expectedModCount:I
    :try_end_17
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_17} :catch_19

    .line 1488
    .end local v0    # "i":I
    nop

    .line 1489
    return-void

    .line 1486
    :catch_19
    move-exception v0

    .line 1487
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method

.method final blacklist checkForComodification()V
    .registers 3

    .line 1492
    .local p0, "this":Ljava/util/ArrayList$SubList$1;, "Ljava/util/ArrayList$SubList$1;"
    iget-object v0, p0, Ljava/util/ArrayList$SubList$1;->this$0:Ljava/util/ArrayList$SubList;

    invoke-static {v0}, Ljava/util/ArrayList$SubList;->-$$Nest$fgetroot(Ljava/util/ArrayList$SubList;)Ljava/util/ArrayList;

    move-result-object v0

    iget v0, v0, Ljava/util/ArrayList;->modCount:I

    iget v1, p0, Ljava/util/ArrayList$SubList$1;->expectedModCount:I

    if-ne v0, v1, :cond_d

    .line 1494
    return-void

    .line 1493
    :cond_d
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
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

    .line 1426
    .local p0, "this":Ljava/util/ArrayList$SubList$1;, "Ljava/util/ArrayList$SubList$1;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1427
    iget-object v0, p0, Ljava/util/ArrayList$SubList$1;->this$0:Ljava/util/ArrayList$SubList;

    invoke-static {v0}, Ljava/util/ArrayList$SubList;->-$$Nest$fgetsize(Ljava/util/ArrayList$SubList;)I

    move-result v0

    .line 1428
    .local v0, "size":I
    iget v1, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    .line 1429
    .local v1, "i":I
    if-ge v1, v0, :cond_4e

    .line 1430
    iget-object v2, p0, Ljava/util/ArrayList$SubList$1;->this$0:Ljava/util/ArrayList$SubList;

    invoke-static {v2}, Ljava/util/ArrayList$SubList;->-$$Nest$fgetroot(Ljava/util/ArrayList$SubList;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v2, v2, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 1431
    .local v2, "es":[Ljava/lang/Object;
    iget-object v3, p0, Ljava/util/ArrayList$SubList$1;->this$0:Ljava/util/ArrayList$SubList;

    invoke-static {v3}, Ljava/util/ArrayList$SubList;->-$$Nest$fgetoffset(Ljava/util/ArrayList$SubList;)I

    move-result v3

    add-int/2addr v3, v1

    array-length v4, v2

    if-ge v3, v4, :cond_48

    .line 1433
    :goto_1f
    if-ge v1, v0, :cond_3e

    iget-object v3, p0, Ljava/util/ArrayList$SubList$1;->this$0:Ljava/util/ArrayList$SubList;

    invoke-static {v3}, Ljava/util/ArrayList$SubList;->-$$Nest$fgetroot(Ljava/util/ArrayList$SubList;)Ljava/util/ArrayList;

    move-result-object v3

    iget v3, v3, Ljava/util/ArrayList;->modCount:I

    iget v4, p0, Ljava/util/ArrayList$SubList$1;->expectedModCount:I

    if-ne v3, v4, :cond_3e

    .line 1434
    iget-object v3, p0, Ljava/util/ArrayList$SubList$1;->this$0:Ljava/util/ArrayList$SubList;

    invoke-static {v3}, Ljava/util/ArrayList$SubList;->-$$Nest$fgetoffset(Ljava/util/ArrayList$SubList;)I

    move-result v3

    add-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/util/ArrayList;->elementAt([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1433
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 1436
    :cond_3e
    iput v1, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    .line 1437
    add-int/lit8 v3, v1, -0x1

    iput v3, p0, Ljava/util/ArrayList$SubList$1;->lastRet:I

    .line 1438
    invoke-virtual {p0}, Ljava/util/ArrayList$SubList$1;->checkForComodification()V

    goto :goto_4e

    .line 1432
    :cond_48
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3

    .line 1440
    .end local v2    # "es":[Ljava/lang/Object;
    :cond_4e
    :goto_4e
    return-void
.end method

.method public whitelist test-api hasNext()Z
    .registers 3

    .line 1392
    .local p0, "this":Ljava/util/ArrayList$SubList$1;, "Ljava/util/ArrayList$SubList$1;"
    iget v0, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    iget-object v1, p0, Ljava/util/ArrayList$SubList$1;->this$0:Ljava/util/ArrayList$SubList;

    invoke-static {v1}, Ljava/util/ArrayList$SubList;->-$$Nest$fgetsize(Ljava/util/ArrayList$SubList;)I

    move-result v1

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public whitelist test-api hasPrevious()Z
    .registers 2

    .line 1409
    .local p0, "this":Ljava/util/ArrayList$SubList$1;, "Ljava/util/ArrayList$SubList$1;"
    iget v0, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api next()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1397
    .local p0, "this":Ljava/util/ArrayList$SubList$1;, "Ljava/util/ArrayList$SubList$1;"
    invoke-virtual {p0}, Ljava/util/ArrayList$SubList$1;->checkForComodification()V

    .line 1398
    iget v0, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    .line 1399
    .local v0, "i":I
    iget-object v1, p0, Ljava/util/ArrayList$SubList$1;->this$0:Ljava/util/ArrayList$SubList;

    invoke-static {v1}, Ljava/util/ArrayList$SubList;->-$$Nest$fgetsize(Ljava/util/ArrayList$SubList;)I

    move-result v1

    if-ge v0, v1, :cond_35

    .line 1401
    iget-object v1, p0, Ljava/util/ArrayList$SubList$1;->this$0:Ljava/util/ArrayList$SubList;

    invoke-static {v1}, Ljava/util/ArrayList$SubList;->-$$Nest$fgetroot(Ljava/util/ArrayList$SubList;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v1, v1, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 1402
    .local v1, "elementData":[Ljava/lang/Object;
    iget-object v2, p0, Ljava/util/ArrayList$SubList$1;->this$0:Ljava/util/ArrayList$SubList;

    invoke-static {v2}, Ljava/util/ArrayList$SubList;->-$$Nest$fgetoffset(Ljava/util/ArrayList$SubList;)I

    move-result v2

    add-int/2addr v2, v0

    array-length v3, v1

    if-ge v2, v3, :cond_2f

    .line 1404
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    .line 1405
    iget-object v2, p0, Ljava/util/ArrayList$SubList$1;->this$0:Ljava/util/ArrayList$SubList;

    invoke-static {v2}, Ljava/util/ArrayList$SubList;->-$$Nest$fgetoffset(Ljava/util/ArrayList$SubList;)I

    move-result v2

    iput v0, p0, Ljava/util/ArrayList$SubList$1;->lastRet:I

    add-int/2addr v2, v0

    aget-object v2, v1, v2

    return-object v2

    .line 1403
    :cond_2f
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    .line 1400
    .end local v1    # "elementData":[Ljava/lang/Object;
    :cond_35
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public whitelist test-api nextIndex()I
    .registers 2

    .line 1443
    .local p0, "this":Ljava/util/ArrayList$SubList$1;, "Ljava/util/ArrayList$SubList$1;"
    iget v0, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    return v0
.end method

.method public whitelist test-api previous()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1414
    .local p0, "this":Ljava/util/ArrayList$SubList$1;, "Ljava/util/ArrayList$SubList$1;"
    invoke-virtual {p0}, Ljava/util/ArrayList$SubList$1;->checkForComodification()V

    .line 1415
    iget v0, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    add-int/lit8 v0, v0, -0x1

    .line 1416
    .local v0, "i":I
    if-ltz v0, :cond_2f

    .line 1418
    iget-object v1, p0, Ljava/util/ArrayList$SubList$1;->this$0:Ljava/util/ArrayList$SubList;

    invoke-static {v1}, Ljava/util/ArrayList$SubList;->-$$Nest$fgetroot(Ljava/util/ArrayList$SubList;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v1, v1, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 1419
    .local v1, "elementData":[Ljava/lang/Object;
    iget-object v2, p0, Ljava/util/ArrayList$SubList$1;->this$0:Ljava/util/ArrayList$SubList;

    invoke-static {v2}, Ljava/util/ArrayList$SubList;->-$$Nest$fgetoffset(Ljava/util/ArrayList$SubList;)I

    move-result v2

    add-int/2addr v2, v0

    array-length v3, v1

    if-ge v2, v3, :cond_29

    .line 1421
    iput v0, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    .line 1422
    iget-object v2, p0, Ljava/util/ArrayList$SubList$1;->this$0:Ljava/util/ArrayList$SubList;

    invoke-static {v2}, Ljava/util/ArrayList$SubList;->-$$Nest$fgetoffset(Ljava/util/ArrayList$SubList;)I

    move-result v2

    iput v0, p0, Ljava/util/ArrayList$SubList$1;->lastRet:I

    add-int/2addr v2, v0

    aget-object v2, v1, v2

    return-object v2

    .line 1420
    :cond_29
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    .line 1417
    .end local v1    # "elementData":[Ljava/lang/Object;
    :cond_2f
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public whitelist test-api previousIndex()I
    .registers 2

    .line 1447
    .local p0, "this":Ljava/util/ArrayList$SubList$1;, "Ljava/util/ArrayList$SubList$1;"
    iget v0, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public whitelist test-api remove()V
    .registers 3

    .line 1451
    .local p0, "this":Ljava/util/ArrayList$SubList$1;, "Ljava/util/ArrayList$SubList$1;"
    iget v0, p0, Ljava/util/ArrayList$SubList$1;->lastRet:I

    if-ltz v0, :cond_24

    .line 1453
    invoke-virtual {p0}, Ljava/util/ArrayList$SubList$1;->checkForComodification()V

    .line 1456
    :try_start_7
    iget-object v0, p0, Ljava/util/ArrayList$SubList$1;->this$0:Ljava/util/ArrayList$SubList;

    iget v1, p0, Ljava/util/ArrayList$SubList$1;->lastRet:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList$SubList;->remove(I)Ljava/lang/Object;

    .line 1457
    iget v0, p0, Ljava/util/ArrayList$SubList$1;->lastRet:I

    iput v0, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    .line 1458
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/ArrayList$SubList$1;->lastRet:I

    .line 1459
    iget-object v0, p0, Ljava/util/ArrayList$SubList$1;->this$0:Ljava/util/ArrayList$SubList;

    iget v0, v0, Ljava/util/ArrayList$SubList;->modCount:I

    iput v0, p0, Ljava/util/ArrayList$SubList$1;->expectedModCount:I
    :try_end_1b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_1b} :catch_1d

    .line 1462
    nop

    .line 1463
    return-void

    .line 1460
    :catch_1d
    move-exception v0

    .line 1461
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 1452
    .end local v0    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :cond_24
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public whitelist test-api set(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1466
    .local p0, "this":Ljava/util/ArrayList$SubList$1;, "Ljava/util/ArrayList$SubList$1;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget v0, p0, Ljava/util/ArrayList$SubList$1;->lastRet:I

    if-ltz v0, :cond_22

    .line 1468
    invoke-virtual {p0}, Ljava/util/ArrayList$SubList$1;->checkForComodification()V

    .line 1471
    :try_start_7
    iget-object v0, p0, Ljava/util/ArrayList$SubList$1;->this$0:Ljava/util/ArrayList$SubList;

    invoke-static {v0}, Ljava/util/ArrayList$SubList;->-$$Nest$fgetroot(Ljava/util/ArrayList$SubList;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Ljava/util/ArrayList$SubList$1;->this$0:Ljava/util/ArrayList$SubList;

    invoke-static {v1}, Ljava/util/ArrayList$SubList;->-$$Nest$fgetoffset(Ljava/util/ArrayList$SubList;)I

    move-result v1

    iget v2, p0, Ljava/util/ArrayList$SubList$1;->lastRet:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_19} :catch_1b

    .line 1474
    nop

    .line 1475
    return-void

    .line 1472
    :catch_1b
    move-exception v0

    .line 1473
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 1467
    .end local v0    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
