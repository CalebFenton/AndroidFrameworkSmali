.class final Ljava/util/TreeMap$DescendingKeyIterator;
.super Ljava/util/TreeMap$PrivateEntryIterator;
.source "TreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DescendingKeyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/TreeMap<",
        "TK;TV;>.PrivateEntryIterator<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/TreeMap;


# direct methods
.method constructor blacklist <init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V
    .registers 3
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

    .line 1581
    .local p0, "this":Ljava/util/TreeMap$DescendingKeyIterator;, "Ljava/util/TreeMap<TK;TV;>.DescendingKeyIterator;"
    .local p2, "first":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iput-object p1, p0, Ljava/util/TreeMap$DescendingKeyIterator;->this$0:Ljava/util/TreeMap;

    .line 1582
    invoke-direct {p0, p1, p2}, Ljava/util/TreeMap$PrivateEntryIterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V

    .line 1583
    return-void
.end method


# virtual methods
.method public whitelist test-api next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1585
    .local p0, "this":Ljava/util/TreeMap$DescendingKeyIterator;, "Ljava/util/TreeMap<TK;TV;>.DescendingKeyIterator;"
    invoke-virtual {p0}, Ljava/util/TreeMap$DescendingKeyIterator;->prevEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist test-api remove()V
    .registers 3

    .line 1588
    .local p0, "this":Ljava/util/TreeMap$DescendingKeyIterator;, "Ljava/util/TreeMap<TK;TV;>.DescendingKeyIterator;"
    iget-object v0, p0, Ljava/util/TreeMap$DescendingKeyIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v0, :cond_27

    .line 1590
    iget-object v0, p0, Ljava/util/TreeMap$DescendingKeyIterator;->this$0:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/util/TreeMap;->-$$Nest$fgetmodCount(Ljava/util/TreeMap;)I

    move-result v0

    iget v1, p0, Ljava/util/TreeMap$DescendingKeyIterator;->expectedModCount:I

    if-ne v0, v1, :cond_21

    .line 1592
    iget-object v0, p0, Ljava/util/TreeMap$DescendingKeyIterator;->this$0:Ljava/util/TreeMap;

    iget-object v1, p0, Ljava/util/TreeMap$DescendingKeyIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    invoke-static {v0, v1}, Ljava/util/TreeMap;->-$$Nest$mdeleteEntry(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V

    .line 1593
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/TreeMap$DescendingKeyIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    .line 1594
    iget-object v0, p0, Ljava/util/TreeMap$DescendingKeyIterator;->this$0:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/util/TreeMap;->-$$Nest$fgetmodCount(Ljava/util/TreeMap;)I

    move-result v0

    iput v0, p0, Ljava/util/TreeMap$DescendingKeyIterator;->expectedModCount:I

    .line 1595
    return-void

    .line 1591
    :cond_21
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1589
    :cond_27
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
