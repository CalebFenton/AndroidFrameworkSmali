.class final Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UnmodifiableEntrySetSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final greylist-max-o s:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Spliterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/Spliterator;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 1835
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator;, "Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator<TK;TV;>;"
    .local p1, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1836
    iput-object p1, p0, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator;->s:Ljava/util/Spliterator;

    .line 1837
    return-void
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 1871
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator;, "Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator;->s:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->characteristics()I

    move-result v0

    return v0
.end method

.method public whitelist test-api estimateSize()J
    .registers 3

    .line 1861
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator;, "Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator;->s:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 1847
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator;, "Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1848
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator;->s:Ljava/util/Spliterator;

    invoke-static {p1}, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;->entryConsumer(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 1849
    return-void
.end method

.method public whitelist test-api getComparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1881
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator;, "Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator;->s:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->getComparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getExactSizeIfKnown()J
    .registers 3

    .line 1866
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator;, "Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator;->s:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api hasCharacteristics(I)Z
    .registers 3
    .param p1, "characteristics"    # I

    .line 1876
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator;, "Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator;->s:Ljava/util/Spliterator;

    invoke-interface {v0, p1}, Ljava/util/Spliterator;->hasCharacteristics(I)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)Z"
        }
    .end annotation

    .line 1841
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator;, "Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1842
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator;->s:Ljava/util/Spliterator;

    invoke-static {p1}, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;->entryConsumer(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1853
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator;, "Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator;->s:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    .line 1854
    .local v0, "split":Ljava/util/Spliterator;, "Ljava/util/Spliterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-nez v0, :cond_a

    .line 1855
    const/4 v1, 0x0

    goto :goto_f

    .line 1856
    :cond_a
    new-instance v1, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator;

    invoke-direct {v1, v0}, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator;-><init>(Ljava/util/Spliterator;)V

    .line 1854
    :goto_f
    return-object v1
.end method
