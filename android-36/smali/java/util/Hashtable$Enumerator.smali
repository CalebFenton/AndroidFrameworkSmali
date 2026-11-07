.class Ljava/util/Hashtable$Enumerator;
.super Ljava/lang/Object;
.source "Hashtable.java"

# interfaces
.implements Ljava/util/Enumeration;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Hashtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Enumerator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration<",
        "TT;>;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field greylist-max-o entry:Ljava/util/Hashtable$HashtableEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable$HashtableEntry<",
            "**>;"
        }
    .end annotation
.end field

.field protected greylist-max-o expectedModCount:I

.field greylist-max-o index:I

.field final greylist-max-o iterator:Z

.field greylist-max-o lastReturned:Ljava/util/Hashtable$HashtableEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable$HashtableEntry<",
            "**>;"
        }
    .end annotation
.end field

.field greylist-max-o table:[Ljava/util/Hashtable$HashtableEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Hashtable$HashtableEntry<",
            "**>;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Ljava/util/Hashtable;

.field final greylist-max-o type:I


# direct methods
.method constructor blacklist <init>(Ljava/util/Hashtable;IZ)V
    .registers 4
    .param p2, "type"    # I
    .param p3, "iterator"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1472
    .local p0, "this":Ljava/util/Hashtable$Enumerator;, "Ljava/util/Hashtable<TK;TV;>.Enumerator<TT;>;"
    iput-object p1, p0, Ljava/util/Hashtable$Enumerator;->this$0:Ljava/util/Hashtable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1453
    iget-object p1, p0, Ljava/util/Hashtable$Enumerator;->this$0:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/util/Hashtable;->-$$Nest$fgettable(Ljava/util/Hashtable;)[Ljava/util/Hashtable$HashtableEntry;

    move-result-object p1

    iput-object p1, p0, Ljava/util/Hashtable$Enumerator;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 1454
    iget-object p1, p0, Ljava/util/Hashtable$Enumerator;->table:[Ljava/util/Hashtable$HashtableEntry;

    array-length p1, p1

    iput p1, p0, Ljava/util/Hashtable$Enumerator;->index:I

    .line 1470
    iget-object p1, p0, Ljava/util/Hashtable$Enumerator;->this$0:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/util/Hashtable;->-$$Nest$fgetmodCount(Ljava/util/Hashtable;)I

    move-result p1

    iput p1, p0, Ljava/util/Hashtable$Enumerator;->expectedModCount:I

    .line 1473
    iput p2, p0, Ljava/util/Hashtable$Enumerator;->type:I

    .line 1474
    iput-boolean p3, p0, Ljava/util/Hashtable$Enumerator;->iterator:Z

    .line 1475
    return-void
.end method


# virtual methods
.method public whitelist test-api hasMoreElements()Z
    .registers 5

    .line 1478
    .local p0, "this":Ljava/util/Hashtable$Enumerator;, "Ljava/util/Hashtable<TK;TV;>.Enumerator<TT;>;"
    iget-object v0, p0, Ljava/util/Hashtable$Enumerator;->entry:Ljava/util/Hashtable$HashtableEntry;

    .line 1479
    .local v0, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    iget v1, p0, Ljava/util/Hashtable$Enumerator;->index:I

    .line 1480
    .local v1, "i":I
    iget-object v2, p0, Ljava/util/Hashtable$Enumerator;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 1482
    .local v2, "t":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    :goto_6
    if-nez v0, :cond_f

    if-lez v1, :cond_f

    .line 1483
    add-int/lit8 v1, v1, -0x1

    aget-object v0, v2, v1

    goto :goto_6

    .line 1485
    :cond_f
    iput-object v0, p0, Ljava/util/Hashtable$Enumerator;->entry:Ljava/util/Hashtable$HashtableEntry;

    .line 1486
    iput v1, p0, Ljava/util/Hashtable$Enumerator;->index:I

    .line 1487
    if-eqz v0, :cond_17

    const/4 v3, 0x1

    goto :goto_18

    :cond_17
    const/4 v3, 0x0

    :goto_18
    return v3
.end method

.method public whitelist test-api hasNext()Z
    .registers 2

    .line 1511
    .local p0, "this":Ljava/util/Hashtable$Enumerator;, "Ljava/util/Hashtable<TK;TV;>.Enumerator<TT;>;"
    invoke-virtual {p0}, Ljava/util/Hashtable$Enumerator;->hasMoreElements()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1515
    .local p0, "this":Ljava/util/Hashtable$Enumerator;, "Ljava/util/Hashtable<TK;TV;>.Enumerator<TT;>;"
    iget-object v0, p0, Ljava/util/Hashtable$Enumerator;->this$0:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/util/Hashtable;->-$$Nest$fgetmodCount(Ljava/util/Hashtable;)I

    move-result v0

    iget v1, p0, Ljava/util/Hashtable$Enumerator;->expectedModCount:I

    if-ne v0, v1, :cond_f

    .line 1517
    invoke-virtual {p0}, Ljava/util/Hashtable$Enumerator;->nextElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1516
    :cond_f
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api nextElement()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1492
    .local p0, "this":Ljava/util/Hashtable$Enumerator;, "Ljava/util/Hashtable<TK;TV;>.Enumerator<TT;>;"
    iget-object v0, p0, Ljava/util/Hashtable$Enumerator;->entry:Ljava/util/Hashtable$HashtableEntry;

    .line 1493
    .local v0, "et":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    iget v1, p0, Ljava/util/Hashtable$Enumerator;->index:I

    .line 1494
    .local v1, "i":I
    iget-object v2, p0, Ljava/util/Hashtable$Enumerator;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 1496
    .local v2, "t":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    :goto_6
    if-nez v0, :cond_f

    if-lez v1, :cond_f

    .line 1497
    add-int/lit8 v1, v1, -0x1

    aget-object v0, v2, v1

    goto :goto_6

    .line 1499
    :cond_f
    iput-object v0, p0, Ljava/util/Hashtable$Enumerator;->entry:Ljava/util/Hashtable$HashtableEntry;

    .line 1500
    iput v1, p0, Ljava/util/Hashtable$Enumerator;->index:I

    .line 1501
    if-eqz v0, :cond_2e

    .line 1502
    iget-object v3, p0, Ljava/util/Hashtable$Enumerator;->entry:Ljava/util/Hashtable$HashtableEntry;

    iput-object v3, p0, Ljava/util/Hashtable$Enumerator;->lastReturned:Ljava/util/Hashtable$HashtableEntry;

    .line 1503
    .local v3, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    iget-object v4, v3, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    iput-object v4, p0, Ljava/util/Hashtable$Enumerator;->entry:Ljava/util/Hashtable$HashtableEntry;

    .line 1504
    iget v4, p0, Ljava/util/Hashtable$Enumerator;->type:I

    if-nez v4, :cond_24

    iget-object v4, v3, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    goto :goto_2d

    :cond_24
    iget v4, p0, Ljava/util/Hashtable$Enumerator;->type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2c

    iget-object v4, v3, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    goto :goto_2d

    :cond_2c
    move-object v4, v3

    :goto_2d
    return-object v4

    .line 1506
    .end local v3    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    :cond_2e
    new-instance v3, Ljava/util/NoSuchElementException;

    const-string v4, "Hashtable Enumerator"

    invoke-direct {v3, v4}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public whitelist test-api remove()V
    .registers 8

    .line 1521
    .local p0, "this":Ljava/util/Hashtable$Enumerator;, "Ljava/util/Hashtable<TK;TV;>.Enumerator<TT;>;"
    iget-boolean v0, p0, Ljava/util/Hashtable$Enumerator;->iterator:Z

    if-eqz v0, :cond_76

    .line 1523
    iget-object v0, p0, Ljava/util/Hashtable$Enumerator;->lastReturned:Ljava/util/Hashtable$HashtableEntry;

    if-eqz v0, :cond_6e

    .line 1525
    iget-object v0, p0, Ljava/util/Hashtable$Enumerator;->this$0:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/util/Hashtable;->-$$Nest$fgetmodCount(Ljava/util/Hashtable;)I

    move-result v0

    iget v1, p0, Ljava/util/Hashtable$Enumerator;->expectedModCount:I

    if-ne v0, v1, :cond_68

    .line 1528
    iget-object v0, p0, Ljava/util/Hashtable$Enumerator;->this$0:Ljava/util/Hashtable;

    monitor-enter v0

    .line 1529
    :try_start_15
    iget-object v1, p0, Ljava/util/Hashtable$Enumerator;->this$0:Ljava/util/Hashtable;

    invoke-static {v1}, Ljava/util/Hashtable;->-$$Nest$fgettable(Ljava/util/Hashtable;)[Ljava/util/Hashtable$HashtableEntry;

    move-result-object v1

    .line 1530
    .local v1, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    iget-object v2, p0, Ljava/util/Hashtable$Enumerator;->lastReturned:Ljava/util/Hashtable$HashtableEntry;

    iget v2, v2, Ljava/util/Hashtable$HashtableEntry;->hash:I

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    array-length v3, v1

    rem-int/2addr v2, v3

    .line 1533
    .local v2, "index":I
    aget-object v3, v1, v2

    .line 1534
    .local v3, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    const/4 v4, 0x0

    .local v4, "prev":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_28
    if-eqz v3, :cond_5f

    .line 1535
    iget-object v5, p0, Ljava/util/Hashtable$Enumerator;->lastReturned:Ljava/util/Hashtable$HashtableEntry;

    if-ne v3, v5, :cond_5a

    .line 1536
    if-nez v4, :cond_35

    .line 1537
    iget-object v5, v3, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    aput-object v5, v1, v2

    goto :goto_39

    .line 1539
    :cond_35
    iget-object v5, v3, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    iput-object v5, v4, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    .line 1540
    :goto_39
    iget v5, p0, Ljava/util/Hashtable$Enumerator;->expectedModCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/util/Hashtable$Enumerator;->expectedModCount:I

    .line 1541
    const/4 v5, 0x0

    iput-object v5, p0, Ljava/util/Hashtable$Enumerator;->lastReturned:Ljava/util/Hashtable$HashtableEntry;

    .line 1542
    iget-object v5, p0, Ljava/util/Hashtable$Enumerator;->this$0:Ljava/util/Hashtable;

    invoke-static {v5}, Ljava/util/Hashtable;->-$$Nest$fgetmodCount(Ljava/util/Hashtable;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v5, v6}, Ljava/util/Hashtable;->-$$Nest$fputmodCount(Ljava/util/Hashtable;I)V

    .line 1543
    iget-object v5, p0, Ljava/util/Hashtable$Enumerator;->this$0:Ljava/util/Hashtable;

    invoke-static {v5}, Ljava/util/Hashtable;->-$$Nest$fgetcount(Ljava/util/Hashtable;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Ljava/util/Hashtable;->-$$Nest$fputcount(Ljava/util/Hashtable;I)V

    .line 1544
    monitor-exit v0

    return-void

    .line 1534
    :cond_5a
    move-object v4, v3

    iget-object v5, v3, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    move-object v3, v5

    goto :goto_28

    .line 1547
    .end local v4    # "prev":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_5f
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    .end local p0    # "this":Ljava/util/Hashtable$Enumerator;, "Ljava/util/Hashtable<TK;TV;>.Enumerator<TT;>;"
    throw v4

    .line 1548
    .end local v1    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    .end local v2    # "index":I
    .end local v3    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .restart local p0    # "this":Ljava/util/Hashtable$Enumerator;, "Ljava/util/Hashtable<TK;TV;>.Enumerator<TT;>;"
    :catchall_65
    move-exception v1

    monitor-exit v0
    :try_end_67
    .catchall {:try_start_15 .. :try_end_67} :catchall_65

    throw v1

    .line 1526
    :cond_68
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1524
    :cond_6e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Hashtable Enumerator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1522
    :cond_76
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
