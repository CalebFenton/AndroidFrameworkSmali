.class Ljava/util/ArrayList$SubList$2;
.super Ljava/lang/Object;
.source "ArrayList.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/ArrayList$SubList;->spliterator()Ljava/util/Spliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private blacklist expectedModCount:I

.field private blacklist fence:I

.field private blacklist index:I

.field final synthetic blacklist this$0:Ljava/util/ArrayList$SubList;


# direct methods
.method constructor blacklist <init>(Ljava/util/ArrayList$SubList;)V
    .registers 3
    .param p1, "this$0"    # Ljava/util/ArrayList$SubList;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1533
    .local p0, "this":Ljava/util/ArrayList$SubList$2;, "Ljava/util/ArrayList$SubList$2;"
    iput-object p1, p0, Ljava/util/ArrayList$SubList$2;->this$0:Ljava/util/ArrayList$SubList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1534
    iget-object v0, p0, Ljava/util/ArrayList$SubList$2;->this$0:Ljava/util/ArrayList$SubList;

    invoke-static {v0}, Ljava/util/ArrayList$SubList;->-$$Nest$fgetoffset(Ljava/util/ArrayList$SubList;)I

    move-result v0

    iput v0, p0, Ljava/util/ArrayList$SubList$2;->index:I

    .line 1535
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/ArrayList$SubList$2;->fence:I

    return-void
.end method

.method private blacklist getFence()I
    .registers 4

    .line 1540
    .local p0, "this":Ljava/util/ArrayList$SubList$2;, "Ljava/util/ArrayList$SubList$2;"
    iget v0, p0, Ljava/util/ArrayList$SubList$2;->fence:I

    move v1, v0

    .local v1, "hi":I
    if-gez v0, :cond_1b

    .line 1541
    iget-object v0, p0, Ljava/util/ArrayList$SubList$2;->this$0:Ljava/util/ArrayList$SubList;

    iget v0, v0, Ljava/util/ArrayList$SubList;->modCount:I

    iput v0, p0, Ljava/util/ArrayList$SubList$2;->expectedModCount:I

    .line 1542
    iget-object v0, p0, Ljava/util/ArrayList$SubList$2;->this$0:Ljava/util/ArrayList$SubList;

    invoke-static {v0}, Ljava/util/ArrayList$SubList;->-$$Nest$fgetoffset(Ljava/util/ArrayList$SubList;)I

    move-result v0

    iget-object v2, p0, Ljava/util/ArrayList$SubList$2;->this$0:Ljava/util/ArrayList$SubList;

    invoke-static {v2}, Ljava/util/ArrayList$SubList;->-$$Nest$fgetsize(Ljava/util/ArrayList$SubList;)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Ljava/util/ArrayList$SubList$2;->fence:I

    move v1, v0

    .line 1544
    :cond_1b
    return v1
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 1597
    .local p0, "this":Ljava/util/ArrayList$SubList$2;, "Ljava/util/ArrayList$SubList$2;"
    const/16 v0, 0x4050

    return v0
.end method

.method public whitelist test-api estimateSize()J
    .registers 3

    .line 1593
    .local p0, "this":Ljava/util/ArrayList$SubList$2;, "Ljava/util/ArrayList$SubList$2;"
    invoke-direct {p0}, Ljava/util/ArrayList$SubList$2;->getFence()I

    move-result v0

    iget v1, p0, Ljava/util/ArrayList$SubList$2;->index:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 1569
    .local p0, "this":Ljava/util/ArrayList$SubList$2;, "Ljava/util/ArrayList$SubList$2;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1571
    iget-object v0, p0, Ljava/util/ArrayList$SubList$2;->this$0:Ljava/util/ArrayList$SubList;

    invoke-static {v0}, Ljava/util/ArrayList$SubList;->-$$Nest$fgetroot(Ljava/util/ArrayList$SubList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1573
    .local v0, "lst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget-object v1, v0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    move-object v2, v1

    .local v2, "a":[Ljava/lang/Object;
    if-eqz v1, :cond_41

    .line 1574
    iget v1, p0, Ljava/util/ArrayList$SubList$2;->fence:I

    move v3, v1

    .local v3, "hi":I
    if-gez v1, :cond_26

    .line 1575
    iget-object v1, p0, Ljava/util/ArrayList$SubList$2;->this$0:Ljava/util/ArrayList$SubList;

    iget v1, v1, Ljava/util/ArrayList$SubList;->modCount:I

    .line 1576
    .local v1, "mc":I
    iget-object v4, p0, Ljava/util/ArrayList$SubList$2;->this$0:Ljava/util/ArrayList$SubList;

    invoke-static {v4}, Ljava/util/ArrayList$SubList;->-$$Nest$fgetoffset(Ljava/util/ArrayList$SubList;)I

    move-result v4

    iget-object v5, p0, Ljava/util/ArrayList$SubList$2;->this$0:Ljava/util/ArrayList$SubList;

    invoke-static {v5}, Ljava/util/ArrayList$SubList;->-$$Nest$fgetsize(Ljava/util/ArrayList$SubList;)I

    move-result v5

    add-int v3, v4, v5

    goto :goto_28

    .line 1579
    .end local v1    # "mc":I
    :cond_26
    iget v1, p0, Ljava/util/ArrayList$SubList$2;->expectedModCount:I

    .line 1580
    .restart local v1    # "mc":I
    :goto_28
    iget v4, p0, Ljava/util/ArrayList$SubList$2;->index:I

    move v5, v4

    .local v5, "i":I
    if-ltz v4, :cond_41

    iput v3, p0, Ljava/util/ArrayList$SubList$2;->index:I

    array-length v4, v2

    if-gt v3, v4, :cond_41

    .line 1581
    :goto_32
    if-ge v5, v3, :cond_3c

    .line 1582
    aget-object v4, v2, v5

    .line 1583
    .local v4, "e":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1581
    .end local v4    # "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v5, v5, 0x1

    goto :goto_32

    .line 1585
    :cond_3c
    iget v4, v0, Ljava/util/ArrayList;->modCount:I

    if-ne v4, v1, :cond_41

    .line 1586
    return-void

    .line 1589
    .end local v1    # "mc":I
    .end local v3    # "hi":I
    .end local v5    # "i":I
    :cond_41
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 1555
    .local p0, "this":Ljava/util/ArrayList$SubList$2;, "Ljava/util/ArrayList$SubList$2;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1556
    invoke-direct {p0}, Ljava/util/ArrayList$SubList$2;->getFence()I

    move-result v0

    .local v0, "hi":I
    iget v1, p0, Ljava/util/ArrayList$SubList$2;->index:I

    .line 1557
    .local v1, "i":I
    if-ge v1, v0, :cond_30

    .line 1558
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/ArrayList$SubList$2;->index:I

    .line 1559
    iget-object v2, p0, Ljava/util/ArrayList$SubList$2;->this$0:Ljava/util/ArrayList$SubList;

    invoke-static {v2}, Ljava/util/ArrayList$SubList;->-$$Nest$fgetroot(Ljava/util/ArrayList$SubList;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v2, v2, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    aget-object v2, v2, v1

    .line 1560
    .local v2, "e":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1561
    iget-object v3, p0, Ljava/util/ArrayList$SubList$2;->this$0:Ljava/util/ArrayList$SubList;

    invoke-static {v3}, Ljava/util/ArrayList$SubList;->-$$Nest$fgetroot(Ljava/util/ArrayList$SubList;)Ljava/util/ArrayList;

    move-result-object v3

    iget v3, v3, Ljava/util/ArrayList;->modCount:I

    iget v4, p0, Ljava/util/ArrayList$SubList$2;->expectedModCount:I

    if-ne v3, v4, :cond_2a

    .line 1563
    const/4 v3, 0x1

    return v3

    .line 1562
    :cond_2a
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3

    .line 1565
    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    :cond_30
    const/4 v2, 0x0

    return v2
.end method

.method public blacklist trySplit()Ljava/util/ArrayList$ArrayListSpliterator;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "TE;>.Array",
            "ListSpliterator;"
        }
    .end annotation

    .line 1548
    .local p0, "this":Ljava/util/ArrayList$SubList$2;, "Ljava/util/ArrayList$SubList$2;"
    invoke-direct {p0}, Ljava/util/ArrayList$SubList$2;->getFence()I

    move-result v0

    .local v0, "hi":I
    iget v1, p0, Ljava/util/ArrayList$SubList$2;->index:I

    .local v1, "lo":I
    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 1550
    .local v2, "mid":I
    if-lt v1, v2, :cond_e

    const/4 v3, 0x0

    goto :goto_20

    .line 1551
    :cond_e
    new-instance v3, Ljava/util/ArrayList$ArrayListSpliterator;

    iget-object v4, p0, Ljava/util/ArrayList$SubList$2;->this$0:Ljava/util/ArrayList$SubList;

    invoke-static {v4}, Ljava/util/ArrayList$SubList;->-$$Nest$fgetroot(Ljava/util/ArrayList$SubList;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput v2, p0, Ljava/util/ArrayList$SubList$2;->index:I

    iget v5, p0, Ljava/util/ArrayList$SubList$2;->expectedModCount:I

    invoke-direct {v3, v4, v1, v2, v5}, Ljava/util/ArrayList$ArrayListSpliterator;-><init>(Ljava/util/ArrayList;III)V

    .line 1550
    :goto_20
    return-object v3
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 1533
    .local p0, "this":Ljava/util/ArrayList$SubList$2;, "Ljava/util/ArrayList$SubList$2;"
    invoke-virtual {p0}, Ljava/util/ArrayList$SubList$2;->trySplit()Ljava/util/ArrayList$ArrayListSpliterator;

    move-result-object v0

    return-object v0
.end method
