.class abstract Ljava/util/HashMap$HashIterator;
.super Ljava/lang/Object;
.source "HashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "HashIterator"
.end annotation


# instance fields
.field greylist-max-o current:Ljava/util/HashMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field greylist-max-o expectedModCount:I

.field greylist-max-o index:I

.field greylist-max-o next:Ljava/util/HashMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Ljava/util/HashMap;


# direct methods
.method constructor blacklist <init>(Ljava/util/HashMap;)V
    .registers 5
    .param p1, "this$0"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1585
    .local p0, "this":Ljava/util/HashMap$HashIterator;, "Ljava/util/HashMap<TK;TV;>.HashIterator;"
    iput-object p1, p0, Ljava/util/HashMap$HashIterator;->this$0:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1586
    iget v0, p1, Ljava/util/HashMap;->modCount:I

    iput v0, p0, Ljava/util/HashMap$HashIterator;->expectedModCount:I

    .line 1587
    iget-object v0, p1, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    .line 1588
    .local v0, "t":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/HashMap$HashIterator;->next:Ljava/util/HashMap$Node;

    iput-object v1, p0, Ljava/util/HashMap$HashIterator;->current:Ljava/util/HashMap$Node;

    .line 1589
    const/4 v1, 0x0

    iput v1, p0, Ljava/util/HashMap$HashIterator;->index:I

    .line 1590
    if-eqz v0, :cond_2a

    iget v1, p1, Ljava/util/HashMap;->size:I

    if-lez v1, :cond_2a

    .line 1591
    :cond_19
    iget v1, p0, Ljava/util/HashMap$HashIterator;->index:I

    array-length v2, v0

    if-ge v1, v2, :cond_2a

    iget v1, p0, Ljava/util/HashMap$HashIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/HashMap$HashIterator;->index:I

    aget-object v1, v0, v1

    iput-object v1, p0, Ljava/util/HashMap$HashIterator;->next:Ljava/util/HashMap$Node;

    if-eqz v1, :cond_19

    .line 1593
    :cond_2a
    return-void
.end method


# virtual methods
.method public final whitelist test-api hasNext()Z
    .registers 2

    .line 1596
    .local p0, "this":Ljava/util/HashMap$HashIterator;, "Ljava/util/HashMap<TK;TV;>.HashIterator;"
    iget-object v0, p0, Ljava/util/HashMap$HashIterator;->next:Ljava/util/HashMap$Node;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method final greylist-max-o nextNode()Ljava/util/HashMap$Node;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1601
    .local p0, "this":Ljava/util/HashMap$HashIterator;, "Ljava/util/HashMap<TK;TV;>.HashIterator;"
    iget-object v0, p0, Ljava/util/HashMap$HashIterator;->next:Ljava/util/HashMap$Node;

    .line 1602
    .local v0, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    iget-object v1, p0, Ljava/util/HashMap$HashIterator;->this$0:Ljava/util/HashMap;

    iget v1, v1, Ljava/util/HashMap;->modCount:I

    iget v2, p0, Ljava/util/HashMap$HashIterator;->expectedModCount:I

    if-ne v1, v2, :cond_33

    .line 1604
    if-eqz v0, :cond_2d

    .line 1606
    iput-object v0, p0, Ljava/util/HashMap$HashIterator;->current:Ljava/util/HashMap$Node;

    iget-object v1, v0, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    iput-object v1, p0, Ljava/util/HashMap$HashIterator;->next:Ljava/util/HashMap$Node;

    if-nez v1, :cond_2c

    iget-object v1, p0, Ljava/util/HashMap$HashIterator;->this$0:Ljava/util/HashMap;

    iget-object v1, v1, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    move-object v2, v1

    .local v2, "t":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v1, :cond_2c

    .line 1607
    :cond_1b
    iget v1, p0, Ljava/util/HashMap$HashIterator;->index:I

    array-length v3, v2

    if-ge v1, v3, :cond_2c

    iget v1, p0, Ljava/util/HashMap$HashIterator;->index:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Ljava/util/HashMap$HashIterator;->index:I

    aget-object v1, v2, v1

    iput-object v1, p0, Ljava/util/HashMap$HashIterator;->next:Ljava/util/HashMap$Node;

    if-eqz v1, :cond_1b

    .line 1609
    .end local v2    # "t":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_2c
    return-object v0

    .line 1605
    :cond_2d
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 1603
    :cond_33
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method

.method public final whitelist test-api remove()V
    .registers 9

    .line 1613
    .local p0, "this":Ljava/util/HashMap$HashIterator;, "Ljava/util/HashMap<TK;TV;>.HashIterator;"
    iget-object v0, p0, Ljava/util/HashMap$HashIterator;->current:Ljava/util/HashMap$Node;

    .line 1614
    .local v0, "p":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_28

    .line 1616
    iget-object v1, p0, Ljava/util/HashMap$HashIterator;->this$0:Ljava/util/HashMap;

    iget v1, v1, Ljava/util/HashMap;->modCount:I

    iget v2, p0, Ljava/util/HashMap$HashIterator;->expectedModCount:I

    if-ne v1, v2, :cond_22

    .line 1618
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/HashMap$HashIterator;->current:Ljava/util/HashMap$Node;

    .line 1619
    iget-object v2, p0, Ljava/util/HashMap$HashIterator;->this$0:Ljava/util/HashMap;

    iget v3, v0, Ljava/util/HashMap$Node;->hash:I

    iget-object v4, v0, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/util/HashMap;->removeNode(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/util/HashMap$Node;

    .line 1620
    iget-object v1, p0, Ljava/util/HashMap$HashIterator;->this$0:Ljava/util/HashMap;

    iget v1, v1, Ljava/util/HashMap;->modCount:I

    iput v1, p0, Ljava/util/HashMap$HashIterator;->expectedModCount:I

    .line 1621
    return-void

    .line 1617
    :cond_22
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 1615
    :cond_28
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method
