.class final Ljava/util/concurrent/ConcurrentHashMap$KeySpliterator;
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
    name = "KeySpliterator"
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
        "TK;>;"
    }
.end annotation


# instance fields
.field greylist-max-o est:J


# direct methods
.method constructor greylist-max-o <init>([Ljava/util/concurrent/ConcurrentHashMap$Node;IIIJ)V
    .registers 7
    .param p2, "size"    # I
    .param p3, "index"    # I
    .param p4, "limit"    # I
    .param p5, "est"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;IIIJ)V"
        }
    .end annotation

    .line 3565
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$KeySpliterator;, "Ljava/util/concurrent/ConcurrentHashMap$KeySpliterator<TK;TV;>;"
    .local p1, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    .line 3566
    iput-wide p5, p0, Ljava/util/concurrent/ConcurrentHashMap$KeySpliterator;->est:J

    .line 3567
    return-void
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 3594
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$KeySpliterator;, "Ljava/util/concurrent/ConcurrentHashMap$KeySpliterator<TK;TV;>;"
    const/16 v0, 0x1101

    return v0
.end method

.method public whitelist test-api estimateSize()J
    .registers 3

    .line 3591
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$KeySpliterator;, "Ljava/util/concurrent/ConcurrentHashMap$KeySpliterator<TK;TV;>;"
    iget-wide v0, p0, Ljava/util/concurrent/ConcurrentHashMap$KeySpliterator;->est:J

    return-wide v0
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TK;>;)V"
        }
    .end annotation

    .line 3577
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$KeySpliterator;, "Ljava/util/concurrent/ConcurrentHashMap$KeySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    if-eqz p1, :cond_10

    .line 3578
    :goto_2
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$KeySpliterator;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_f

    .line 3579
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_2

    .line 3580
    .end local v1    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_f
    return-void

    .line 3577
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TK;>;)Z"
        }
    .end annotation

    .line 3583
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$KeySpliterator;, "Ljava/util/concurrent/ConcurrentHashMap$KeySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    if-eqz p1, :cond_12

    .line 3585
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$KeySpliterator;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v0, :cond_b

    .line 3586
    const/4 v0, 0x0

    return v0

    .line 3587
    :cond_b
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3588
    const/4 v0, 0x1

    return v0

    .line 3583
    .end local v1    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_12
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 3560
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$KeySpliterator;, "Ljava/util/concurrent/ConcurrentHashMap$KeySpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$KeySpliterator;->trySplit()Ljava/util/concurrent/ConcurrentHashMap$KeySpliterator;

    move-result-object v0

    return-object v0
.end method

.method public blacklist trySplit()Ljava/util/concurrent/ConcurrentHashMap$KeySpliterator;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap$KeySpliterator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3571
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$KeySpliterator;, "Ljava/util/concurrent/ConcurrentHashMap$KeySpliterator<TK;TV;>;"
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$KeySpliterator;->baseIndex:I

    move v1, v0

    .local v1, "i":I
    iget v2, p0, Ljava/util/concurrent/ConcurrentHashMap$KeySpliterator;->baseLimit:I

    move v7, v2

    .local v7, "f":I
    add-int/2addr v0, v2

    const/4 v2, 0x1

    ushr-int/lit8 v6, v0, 0x1

    move v0, v6

    .local v6, "h":I
    if-gt v0, v1, :cond_f

    const/4 v0, 0x0

    goto :goto_20

    .line 3572
    :cond_f
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap$KeySpliterator;

    iget-object v4, p0, Ljava/util/concurrent/ConcurrentHashMap$KeySpliterator;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    iget v5, p0, Ljava/util/concurrent/ConcurrentHashMap$KeySpliterator;->baseSize:I

    iput v6, p0, Ljava/util/concurrent/ConcurrentHashMap$KeySpliterator;->baseLimit:I

    iget-wide v8, p0, Ljava/util/concurrent/ConcurrentHashMap$KeySpliterator;->est:J

    ushr-long/2addr v8, v2

    iput-wide v8, p0, Ljava/util/concurrent/ConcurrentHashMap$KeySpliterator;->est:J

    invoke-direct/range {v3 .. v9}, Ljava/util/concurrent/ConcurrentHashMap$KeySpliterator;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;IIIJ)V

    move-object v0, v3

    .line 3571
    :goto_20
    return-object v0
.end method
