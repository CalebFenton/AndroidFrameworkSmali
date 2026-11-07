.class abstract Ljava/util/TreeMap$PrivateEntryIterator;
.super Ljava/lang/Object;
.source "TreeMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "PrivateEntryIterator"
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
.field greylist-max-o expectedModCount:I

.field greylist-max-o lastReturned:Ljava/util/TreeMap$TreeMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field greylist-max-o next:Ljava/util/TreeMap$TreeMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Ljava/util/TreeMap;


# direct methods
.method constructor blacklist <init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V
    .registers 4
    .param p1, "this$0"    # Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1507
    .local p0, "this":Ljava/util/TreeMap$PrivateEntryIterator;, "Ljava/util/TreeMap<TK;TV;>.PrivateEntryIterator<TT;>;"
    .local p2, "first":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iput-object p1, p0, Ljava/util/TreeMap$PrivateEntryIterator;->this$0:Ljava/util/TreeMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1508
    invoke-static {p1}, Ljava/util/TreeMap;->-$$Nest$fgetmodCount(Ljava/util/TreeMap;)I

    move-result v0

    iput v0, p0, Ljava/util/TreeMap$PrivateEntryIterator;->expectedModCount:I

    .line 1509
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/TreeMap$PrivateEntryIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    .line 1510
    iput-object p2, p0, Ljava/util/TreeMap$PrivateEntryIterator;->next:Ljava/util/TreeMap$TreeMapEntry;

    .line 1511
    return-void
.end method


# virtual methods
.method public final whitelist test-api hasNext()Z
    .registers 2

    .line 1514
    .local p0, "this":Ljava/util/TreeMap$PrivateEntryIterator;, "Ljava/util/TreeMap<TK;TV;>.PrivateEntryIterator<TT;>;"
    iget-object v0, p0, Ljava/util/TreeMap$PrivateEntryIterator;->next:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method final greylist-max-o nextEntry()Ljava/util/TreeMap$TreeMapEntry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1518
    .local p0, "this":Ljava/util/TreeMap$PrivateEntryIterator;, "Ljava/util/TreeMap<TK;TV;>.PrivateEntryIterator<TT;>;"
    iget-object v0, p0, Ljava/util/TreeMap$PrivateEntryIterator;->next:Ljava/util/TreeMap$TreeMapEntry;

    .line 1519
    .local v0, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v0, :cond_1d

    .line 1521
    iget-object v1, p0, Ljava/util/TreeMap$PrivateEntryIterator;->this$0:Ljava/util/TreeMap;

    invoke-static {v1}, Ljava/util/TreeMap;->-$$Nest$fgetmodCount(Ljava/util/TreeMap;)I

    move-result v1

    iget v2, p0, Ljava/util/TreeMap$PrivateEntryIterator;->expectedModCount:I

    if-ne v1, v2, :cond_17

    .line 1523
    invoke-static {v0}, Ljava/util/TreeMap;->successor(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    iput-object v1, p0, Ljava/util/TreeMap$PrivateEntryIterator;->next:Ljava/util/TreeMap$TreeMapEntry;

    .line 1524
    iput-object v0, p0, Ljava/util/TreeMap$PrivateEntryIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    .line 1525
    return-object v0

    .line 1522
    :cond_17
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 1520
    :cond_1d
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method final greylist-max-o prevEntry()Ljava/util/TreeMap$TreeMapEntry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1529
    .local p0, "this":Ljava/util/TreeMap$PrivateEntryIterator;, "Ljava/util/TreeMap<TK;TV;>.PrivateEntryIterator<TT;>;"
    iget-object v0, p0, Ljava/util/TreeMap$PrivateEntryIterator;->next:Ljava/util/TreeMap$TreeMapEntry;

    .line 1530
    .local v0, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v0, :cond_1d

    .line 1532
    iget-object v1, p0, Ljava/util/TreeMap$PrivateEntryIterator;->this$0:Ljava/util/TreeMap;

    invoke-static {v1}, Ljava/util/TreeMap;->-$$Nest$fgetmodCount(Ljava/util/TreeMap;)I

    move-result v1

    iget v2, p0, Ljava/util/TreeMap$PrivateEntryIterator;->expectedModCount:I

    if-ne v1, v2, :cond_17

    .line 1534
    invoke-static {v0}, Ljava/util/TreeMap;->predecessor(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    iput-object v1, p0, Ljava/util/TreeMap$PrivateEntryIterator;->next:Ljava/util/TreeMap$TreeMapEntry;

    .line 1535
    iput-object v0, p0, Ljava/util/TreeMap$PrivateEntryIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    .line 1536
    return-object v0

    .line 1533
    :cond_17
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 1531
    :cond_1d
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public whitelist test-api remove()V
    .registers 3

    .line 1540
    .local p0, "this":Ljava/util/TreeMap$PrivateEntryIterator;, "Ljava/util/TreeMap<TK;TV;>.PrivateEntryIterator<TT;>;"
    iget-object v0, p0, Ljava/util/TreeMap$PrivateEntryIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v0, :cond_37

    .line 1542
    iget-object v0, p0, Ljava/util/TreeMap$PrivateEntryIterator;->this$0:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/util/TreeMap;->-$$Nest$fgetmodCount(Ljava/util/TreeMap;)I

    move-result v0

    iget v1, p0, Ljava/util/TreeMap$PrivateEntryIterator;->expectedModCount:I

    if-ne v0, v1, :cond_31

    .line 1545
    iget-object v0, p0, Ljava/util/TreeMap$PrivateEntryIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Ljava/util/TreeMap$PrivateEntryIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v0, :cond_1e

    .line 1546
    iget-object v0, p0, Ljava/util/TreeMap$PrivateEntryIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v0, p0, Ljava/util/TreeMap$PrivateEntryIterator;->next:Ljava/util/TreeMap$TreeMapEntry;

    .line 1547
    :cond_1e
    iget-object v0, p0, Ljava/util/TreeMap$PrivateEntryIterator;->this$0:Ljava/util/TreeMap;

    iget-object v1, p0, Ljava/util/TreeMap$PrivateEntryIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    invoke-static {v0, v1}, Ljava/util/TreeMap;->-$$Nest$mdeleteEntry(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V

    .line 1548
    iget-object v0, p0, Ljava/util/TreeMap$PrivateEntryIterator;->this$0:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/util/TreeMap;->-$$Nest$fgetmodCount(Ljava/util/TreeMap;)I

    move-result v0

    iput v0, p0, Ljava/util/TreeMap$PrivateEntryIterator;->expectedModCount:I

    .line 1549
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/TreeMap$PrivateEntryIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    .line 1550
    return-void

    .line 1543
    :cond_31
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1541
    :cond_37
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
