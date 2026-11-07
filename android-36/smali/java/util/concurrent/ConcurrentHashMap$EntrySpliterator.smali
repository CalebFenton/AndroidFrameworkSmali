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
        "Ljava/util/concurrent/ConcurrentHashMap$Traverser<",
        "TK;TV;>;",
        "Ljava/util/Spliterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field greylist-max-o est:J

.field final greylist-max-o map:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>([Ljava/util/concurrent/ConcurrentHashMap$Node;IIIJLjava/util/concurrent/ConcurrentHashMap;)V
    .registers 8
    .param p2, "size"    # I
    .param p3, "index"    # I
    .param p4, "limit"    # I
    .param p5, "est"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;IIIJ",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 3643
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;, "Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator<TK;TV;>;"
    .local p1, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p7, "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    .line 3644
    iput-object p7, p0, Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;->map:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3645
    iput-wide p5, p0, Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;->est:J

    .line 3646
    return-void
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 3673
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;, "Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator<TK;TV;>;"
    const/16 v0, 0x1101

    return v0
.end method

.method public whitelist test-api estimateSize()J
    .registers 3

    .line 3670
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;, "Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator<TK;TV;>;"
    iget-wide v0, p0, Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;->est:J

    return-wide v0
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 3656
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;, "Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz p1, :cond_19

    .line 3657
    :goto_2
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_18

    .line 3658
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapEntry;

    iget-object v2, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v3, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    iget-object v4, p0, Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap$MapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap;)V

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_2

    .line 3659
    .end local v1    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_18
    return-void

    .line 3656
    :cond_19
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)Z"
        }
    .end annotation

    .line 3662
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;, "Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz p1, :cond_1b

    .line 3664
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v0, :cond_b

    .line 3665
    const/4 v0, 0x0

    return v0

    .line 3666
    :cond_b
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapEntry;

    iget-object v2, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v3, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    iget-object v4, p0, Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap$MapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap;)V

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3667
    const/4 v0, 0x1

    return v0

    .line 3662
    .end local v1    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_1b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 3637
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;, "Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;->trySplit()Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;

    move-result-object v0

    return-object v0
.end method

.method public blacklist trySplit()Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3650
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;, "Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator<TK;TV;>;"
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;->baseIndex:I

    move v1, v0

    .local v1, "i":I
    iget v2, p0, Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;->baseLimit:I

    move v7, v2

    .local v7, "f":I
    add-int/2addr v0, v2

    const/4 v2, 0x1

    ushr-int/lit8 v6, v0, 0x1

    move v0, v6

    .local v6, "h":I
    if-gt v0, v1, :cond_f

    const/4 v0, 0x0

    goto :goto_22

    .line 3651
    :cond_f
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;

    iget-object v4, p0, Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    iget v5, p0, Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;->baseSize:I

    iput v6, p0, Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;->baseLimit:I

    iget-wide v8, p0, Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;->est:J

    ushr-long/2addr v8, v2

    iput-wide v8, p0, Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;->est:J

    iget-object v10, p0, Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct/range {v3 .. v10}, Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;IIIJLjava/util/concurrent/ConcurrentHashMap;)V

    move-object v0, v3

    .line 3650
    :goto_22
    return-object v0
.end method
