.class public interface abstract Ljava/util/Spliterator;
.super Ljava/lang/Object;
.source "Spliterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Spliterator$OfDouble;,
        Ljava/util/Spliterator$OfLong;,
        Ljava/util/Spliterator$OfInt;,
        Ljava/util/Spliterator$OfPrimitive;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final whitelist test-api CONCURRENT:I = 0x1000

.field public static final whitelist test-api DISTINCT:I = 0x1

.field public static final whitelist test-api IMMUTABLE:I = 0x400

.field public static final whitelist test-api NONNULL:I = 0x100

.field public static final whitelist test-api ORDERED:I = 0x10

.field public static final whitelist test-api SIZED:I = 0x40

.field public static final whitelist test-api SORTED:I = 0x4

.field public static final whitelist test-api SUBSIZED:I = 0x4000


# virtual methods
.method public abstract whitelist test-api characteristics()I
.end method

.method public abstract whitelist test-api estimateSize()J
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 332
    .local p0, "this":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 333
    return-void
.end method

.method public whitelist test-api getComparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation

    .line 471
    .local p0, "this":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getExactSizeIfKnown()J
    .registers 3

    .line 414
    .local p0, "this":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    invoke-interface {p0}, Ljava/util/Spliterator;->characteristics()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_b

    const-wide/16 v0, -0x1

    goto :goto_f

    :cond_b
    invoke-interface {p0}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v0

    :goto_f
    return-wide v0
.end method

.method public whitelist test-api hasCharacteristics(I)Z
    .registers 3
    .param p1, "characteristics"    # I

    .line 453
    .local p0, "this":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    invoke-interface {p0}, Ljava/util/Spliterator;->characteristics()I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public abstract whitelist test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation
.end method

.method public abstract whitelist test-api trySplit()Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation
.end method
