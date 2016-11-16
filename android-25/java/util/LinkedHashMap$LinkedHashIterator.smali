.class abstract Ljava/util/LinkedHashMap$LinkedHashIterator;
.super Ljava/lang/Object;
.source "LinkedHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/LinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "LinkedHashIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field expectedModCount:I

.field lastReturned:Ljava/util/LinkedHashMap$LinkedHashMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap$LinkedHashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field nextEntry:Ljava/util/LinkedHashMap$LinkedHashMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap$LinkedHashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/LinkedHashMap;


# direct methods
.method private constructor <init>(Ljava/util/LinkedHashMap;)V
    .locals 1

    #@0
    .prologue
    .line 383
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedHashIterator;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedHashIterator<TT;>;"
    .local p1, "this$0":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    iput-object p1, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->this$0:Ljava/util/LinkedHashMap;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 384
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->this$0:Ljava/util/LinkedHashMap;

    #@7
    invoke-static {v0}, Ljava/util/LinkedHashMap;->-get1(Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    #@a
    move-result-object v0

    #@b
    iget-object v0, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    #@d
    iput-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->nextEntry:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    #@f
    .line 385
    const/4 v0, 0x0

    #@10
    iput-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->lastReturned:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    #@12
    .line 392
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->this$0:Ljava/util/LinkedHashMap;

    #@14
    iget v0, v0, Ljava/util/LinkedHashMap;->modCount:I

    #@16
    iput v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->expectedModCount:I

    #@18
    .line 383
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap$LinkedHashIterator;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/LinkedHashMap;

    #@0
    .prologue
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedHashIterator;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedHashIterator<TT;>;"
    invoke-direct {p0, p1}, Ljava/util/LinkedHashMap$LinkedHashIterator;-><init>(Ljava/util/LinkedHashMap;)V

    #@3
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    #@0
    .prologue
    .line 395
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedHashIterator;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedHashIterator<TT;>;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->nextEntry:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    #@2
    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->this$0:Ljava/util/LinkedHashMap;

    #@4
    invoke-static {v1}, Ljava/util/LinkedHashMap;->-get1(Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    #@7
    move-result-object v1

    #@8
    if-eq v0, v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method nextEntry()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 410
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedHashIterator;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedHashIterator<TT;>;"
    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->this$0:Ljava/util/LinkedHashMap;

    #@2
    iget v1, v1, Ljava/util/LinkedHashMap;->modCount:I

    #@4
    iget v2, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->expectedModCount:I

    #@6
    if-eq v1, v2, :cond_0

    #@8
    .line 411
    new-instance v1, Ljava/util/ConcurrentModificationException;

    #@a
    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@d
    throw v1

    #@e
    .line 412
    :cond_0
    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->nextEntry:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    #@10
    iget-object v2, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->this$0:Ljava/util/LinkedHashMap;

    #@12
    invoke-static {v2}, Ljava/util/LinkedHashMap;->-get1(Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    #@15
    move-result-object v2

    #@16
    if-ne v1, v2, :cond_1

    #@18
    .line 413
    new-instance v1, Ljava/util/NoSuchElementException;

    #@1a
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@1d
    throw v1

    #@1e
    .line 415
    :cond_1
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->nextEntry:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    #@20
    iput-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->lastReturned:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    #@22
    .line 416
    .local v0, "e":Ljava/util/LinkedHashMap$LinkedHashMapEntry;, "Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    iget-object v1, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    #@24
    iput-object v1, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->nextEntry:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    #@26
    .line 417
    return-object v0
.end method

.method public remove()V
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedHashIterator;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedHashIterator<TT;>;"
    const/4 v2, 0x0

    #@1
    .line 399
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->lastReturned:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 400
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@a
    throw v0

    #@b
    .line 401
    :cond_0
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->this$0:Ljava/util/LinkedHashMap;

    #@d
    iget v0, v0, Ljava/util/LinkedHashMap;->modCount:I

    #@f
    iget v1, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->expectedModCount:I

    #@11
    if-eq v0, v1, :cond_1

    #@13
    .line 402
    new-instance v0, Ljava/util/ConcurrentModificationException;

    #@15
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@18
    throw v0

    #@19
    .line 404
    :cond_1
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->this$0:Ljava/util/LinkedHashMap;

    #@1b
    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->lastReturned:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    #@1d
    iget-object v1, v1, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->key:Ljava/lang/Object;

    #@1f
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    .line 405
    iput-object v2, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->lastReturned:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    #@24
    .line 406
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->this$0:Ljava/util/LinkedHashMap;

    #@26
    iget v0, v0, Ljava/util/LinkedHashMap;->modCount:I

    #@28
    iput v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->expectedModCount:I

    #@2a
    .line 398
    return-void
.end method
