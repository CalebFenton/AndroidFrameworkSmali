.class final Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;
.super Ljava/util/concurrent/ConcurrentHashMap$Traverser;
.source "ConcurrentHashMap.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EntrySpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentHashMap$Traverser",
        "<TK;TV;>;",
        "Ljava/util/Spliterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field est:J

.field final map:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([Ljava/util/concurrent/ConcurrentHashMap$Node;IIIJLjava/util/concurrent/ConcurrentHashMap;)V
    .locals 1
    .param p2, "size"    # I
    .param p3, "index"    # I
    .param p4, "limit"    # I
    .param p5, "est"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;IIIJ",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 3622
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.EntrySpliterator<TK;TV;>;"
    .local p1, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p7, "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    #@3
    .line 3623
    iput-object p7, p0, Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;->map:Ljava/util/concurrent/ConcurrentHashMap;

    #@5
    .line 3624
    iput-wide p5, p0, Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;->est:J

    #@7
    .line 3621
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    #@0
    .prologue
    .line 3652
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.EntrySpliterator<TK;TV;>;"
    const/16 v0, 0x1101

    #@2
    return v0
.end method

.method public estimateSize()J
    .locals 2

    #@0
    .prologue
    .line 3649
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.EntrySpliterator<TK;TV;>;"
    iget-wide v0, p0, Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;->est:J

    #@2
    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 3635
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.EntrySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    if-nez p1, :cond_0

    #@2
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v1

    #@8
    .line 3636
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@b
    move-result-object v0

    #@c
    .local v0, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_1

    #@e
    .line 3637
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$MapEntry;

    #@10
    iget-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    #@12
    iget-object v3, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    #@14
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;->map:Ljava/util/concurrent/ConcurrentHashMap;

    #@16
    invoke-direct {v1, v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap$MapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap;)V

    #@19
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@1c
    goto :goto_0

    #@1d
    .line 3634
    :cond_1
    return-void
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 3641
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.EntrySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    if-nez p1, :cond_0

    #@2
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v1

    #@8
    .line 3643
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@b
    move-result-object v0

    #@c
    .local v0, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v0, :cond_1

    #@e
    .line 3644
    const/4 v1, 0x0

    #@f
    return v1

    #@10
    .line 3645
    :cond_1
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$MapEntry;

    #@12
    iget-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    #@14
    iget-object v3, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    #@16
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;->map:Ljava/util/concurrent/ConcurrentHashMap;

    #@18
    invoke-direct {v1, v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap$MapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap;)V

    #@1b
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@1e
    .line 3646
    const/4 v1, 0x1

    #@1f
    return v1
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    #@0
    .prologue
    .line 3627
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.EntrySpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;->trySplit()Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public trySplit()Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 3629
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.EntrySpliterator<TK;TV;>;"
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseIndex:I

    #@2
    .local v0, "i":I
    iget v5, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseLimit:I

    #@4
    .local v5, "f":I
    add-int v1, v0, v5

    #@6
    ushr-int/lit8 v4, v1, 0x1

    #@8
    .local v4, "h":I
    if-gt v4, v0, :cond_0

    #@a
    const/4 v1, 0x0

    #@b
    :goto_0
    return-object v1

    #@c
    .line 3630
    :cond_0
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;

    #@e
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@10
    iget v3, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseSize:I

    #@12
    iput v4, p0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->baseLimit:I

    #@14
    .line 3631
    iget-wide v6, p0, Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;->est:J

    #@16
    const/4 v8, 0x1

    #@17
    ushr-long/2addr v6, v8

    #@18
    iput-wide v6, p0, Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;->est:J

    #@1a
    iget-object v8, p0, Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;->map:Ljava/util/concurrent/ConcurrentHashMap;

    #@1c
    .line 3630
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;IIIJLjava/util/concurrent/ConcurrentHashMap;)V

    #@1f
    goto :goto_0
.end method
