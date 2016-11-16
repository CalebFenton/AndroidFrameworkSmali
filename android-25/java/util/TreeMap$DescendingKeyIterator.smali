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
        "Ljava/util/TreeMap",
        "<TK;TV;>.PrivateEntryIterator<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/TreeMap;


# direct methods
.method constructor <init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1291
    .local p0, "this":Ljava/util/TreeMap$DescendingKeyIterator;, "Ljava/util/TreeMap<TK;TV;>.DescendingKeyIterator;"
    .local p1, "this$0":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p2, "first":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iput-object p1, p0, Ljava/util/TreeMap$DescendingKeyIterator;->this$0:Ljava/util/TreeMap;

    #@2
    .line 1292
    invoke-direct {p0, p1, p2}, Ljava/util/TreeMap$PrivateEntryIterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V

    #@5
    .line 1291
    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    #@0
    .prologue
    .line 1295
    .local p0, "this":Ljava/util/TreeMap$DescendingKeyIterator;, "Ljava/util/TreeMap<TK;TV;>.DescendingKeyIterator;"
    invoke-virtual {p0}, Ljava/util/TreeMap$PrivateEntryIterator;->prevEntry()Ljava/util/TreeMap$TreeMapEntry;

    #@3
    move-result-object v0

    #@4
    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    #@6
    return-object v0
.end method

.method public remove()V
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap$DescendingKeyIterator;, "Ljava/util/TreeMap<TK;TV;>.DescendingKeyIterator;"
    const/4 v2, 0x0

    #@1
    .line 1298
    iget-object v0, p0, Ljava/util/TreeMap$PrivateEntryIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1299
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@a
    throw v0

    #@b
    .line 1300
    :cond_0
    iget-object v0, p0, Ljava/util/TreeMap$DescendingKeyIterator;->this$0:Ljava/util/TreeMap;

    #@d
    invoke-static {v0}, Ljava/util/TreeMap;->-get2(Ljava/util/TreeMap;)I

    #@10
    move-result v0

    #@11
    iget v1, p0, Ljava/util/TreeMap$PrivateEntryIterator;->expectedModCount:I

    #@13
    if-eq v0, v1, :cond_1

    #@15
    .line 1301
    new-instance v0, Ljava/util/ConcurrentModificationException;

    #@17
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@1a
    throw v0

    #@1b
    .line 1302
    :cond_1
    iget-object v0, p0, Ljava/util/TreeMap$DescendingKeyIterator;->this$0:Ljava/util/TreeMap;

    #@1d
    iget-object v1, p0, Ljava/util/TreeMap$PrivateEntryIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    #@1f
    invoke-static {v0, v1}, Ljava/util/TreeMap;->-wrap0(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V

    #@22
    .line 1303
    iput-object v2, p0, Ljava/util/TreeMap$PrivateEntryIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    #@24
    .line 1304
    iget-object v0, p0, Ljava/util/TreeMap$DescendingKeyIterator;->this$0:Ljava/util/TreeMap;

    #@26
    invoke-static {v0}, Ljava/util/TreeMap;->-get2(Ljava/util/TreeMap;)I

    #@29
    move-result v0

    #@2a
    iput v0, p0, Ljava/util/TreeMap$PrivateEntryIterator;->expectedModCount:I

    #@2c
    .line 1297
    return-void
.end method
