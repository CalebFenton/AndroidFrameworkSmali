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

.field lastReturned:Ljava/util/LinkedHashMap$LinkedEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap$LinkedEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field next:Ljava/util/LinkedHashMap$LinkedEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap$LinkedEntry",
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
    .line 335
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedHashIterator;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedHashIterator<TT;>;"
    .local p1, "this$0":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    iput-object p1, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->this$0:Ljava/util/LinkedHashMap;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 336
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->this$0:Ljava/util/LinkedHashMap;

    #@7
    iget-object v0, v0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedEntry;

    #@9
    iget-object v0, v0, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    #@b
    iput-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->next:Ljava/util/LinkedHashMap$LinkedEntry;

    #@d
    .line 337
    const/4 v0, 0x0

    #@e
    iput-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->lastReturned:Ljava/util/LinkedHashMap$LinkedEntry;

    #@10
    .line 338
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->this$0:Ljava/util/LinkedHashMap;

    #@12
    iget v0, v0, Ljava/util/LinkedHashMap;->modCount:I

    #@14
    iput v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->expectedModCount:I

    #@16
    .line 335
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
.method public final hasNext()Z
    .locals 2

    #@0
    .prologue
    .line 341
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedHashIterator;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedHashIterator<TT;>;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->next:Ljava/util/LinkedHashMap$LinkedEntry;

    #@2
    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->this$0:Ljava/util/LinkedHashMap;

    #@4
    iget-object v1, v1, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedEntry;

    #@6
    if-eq v0, v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method final nextEntry()Ljava/util/LinkedHashMap$LinkedEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap$LinkedEntry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 345
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedHashIterator;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedHashIterator<TT;>;"
    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->this$0:Ljava/util/LinkedHashMap;

    #@2
    iget v1, v1, Ljava/util/LinkedHashMap;->modCount:I

    #@4
    iget v2, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->expectedModCount:I

    #@6
    if-eq v1, v2, :cond_0

    #@8
    .line 346
    new-instance v1, Ljava/util/ConcurrentModificationException;

    #@a
    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@d
    throw v1

    #@e
    .line 347
    :cond_0
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->next:Ljava/util/LinkedHashMap$LinkedEntry;

    #@10
    .line 348
    .local v0, "e":Ljava/util/LinkedHashMap$LinkedEntry;, "Ljava/util/LinkedHashMap$LinkedEntry<TK;TV;>;"
    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->this$0:Ljava/util/LinkedHashMap;

    #@12
    iget-object v1, v1, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedEntry;

    #@14
    if-ne v0, v1, :cond_1

    #@16
    .line 349
    new-instance v1, Ljava/util/NoSuchElementException;

    #@18
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@1b
    throw v1

    #@1c
    .line 350
    :cond_1
    iget-object v1, v0, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    #@1e
    iput-object v1, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->next:Ljava/util/LinkedHashMap$LinkedEntry;

    #@20
    .line 351
    iput-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->lastReturned:Ljava/util/LinkedHashMap$LinkedEntry;

    #@22
    return-object v0
.end method

.method public final remove()V
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedHashIterator;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedHashIterator<TT;>;"
    const/4 v2, 0x0

    #@1
    .line 355
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->this$0:Ljava/util/LinkedHashMap;

    #@3
    iget v0, v0, Ljava/util/LinkedHashMap;->modCount:I

    #@5
    iget v1, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->expectedModCount:I

    #@7
    if-eq v0, v1, :cond_0

    #@9
    .line 356
    new-instance v0, Ljava/util/ConcurrentModificationException;

    #@b
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@e
    throw v0

    #@f
    .line 357
    :cond_0
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->lastReturned:Ljava/util/LinkedHashMap$LinkedEntry;

    #@11
    if-nez v0, :cond_1

    #@13
    .line 358
    new-instance v0, Ljava/lang/IllegalStateException;

    #@15
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@18
    throw v0

    #@19
    .line 359
    :cond_1
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->this$0:Ljava/util/LinkedHashMap;

    #@1b
    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->lastReturned:Ljava/util/LinkedHashMap$LinkedEntry;

    #@1d
    iget-object v1, v1, Ljava/util/LinkedHashMap$LinkedEntry;->key:Ljava/lang/Object;

    #@1f
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    .line 360
    iput-object v2, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->lastReturned:Ljava/util/LinkedHashMap$LinkedEntry;

    #@24
    .line 361
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->this$0:Ljava/util/LinkedHashMap;

    #@26
    iget v0, v0, Ljava/util/LinkedHashMap;->modCount:I

    #@28
    iput v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->expectedModCount:I

    #@2a
    .line 354
    return-void
.end method
