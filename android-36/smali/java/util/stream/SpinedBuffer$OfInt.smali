.class public Ljava/util/stream/SpinedBuffer$OfInt;
.super Ljava/util/stream/SpinedBuffer$OfPrimitive;
.source "SpinedBuffer.java"

# interfaces
.implements Ljava/util/function/IntConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/SpinedBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OfInt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/SpinedBuffer$OfPrimitive<",
        "Ljava/lang/Integer;",
        "[I",
        "Ljava/util/function/IntConsumer;",
        ">;",
        "Ljava/util/function/IntConsumer;"
    }
.end annotation


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 733
    invoke-direct {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;-><init>()V

    return-void
.end method

.method public constructor greylist-max-o <init>(I)V
    .registers 2
    .param p1, "initialCapacity"    # I

    .line 737
    invoke-direct {p0, p1}, Ljava/util/stream/SpinedBuffer$OfPrimitive;-><init>(I)V

    .line 738
    return-void
.end method


# virtual methods
.method public whitelist test-api accept(I)V
    .registers 5
    .param p1, "i"    # I

    .line 777
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfInt;->preAccept()V

    .line 778
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$OfInt;->curChunk:Ljava/lang/Object;

    check-cast v0, [I

    iget v1, p0, Ljava/util/stream/SpinedBuffer$OfInt;->elementIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/stream/SpinedBuffer$OfInt;->elementIndex:I

    aput p1, v0, v1

    .line 779
    return-void
.end method

.method protected bridge synthetic blacklist arrayForEach(Ljava/lang/Object;IILjava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 728
    check-cast p1, [I

    check-cast p4, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/stream/SpinedBuffer$OfInt;->arrayForEach([IIILjava/util/function/IntConsumer;)V

    return-void
.end method

.method protected greylist-max-o arrayForEach([IIILjava/util/function/IntConsumer;)V
    .registers 7
    .param p1, "array"    # [I
    .param p2, "from"    # I
    .param p3, "to"    # I
    .param p4, "consumer"    # Ljava/util/function/IntConsumer;

    .line 771
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_b

    .line 772
    aget v1, p1, v0

    invoke-interface {p4, v1}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 771
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 773
    .end local v0    # "i":I
    :cond_b
    return-void
.end method

.method protected bridge synthetic blacklist arrayLength(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 728
    check-cast p1, [I

    invoke-virtual {p0, p1}, Ljava/util/stream/SpinedBuffer$OfInt;->arrayLength([I)I

    move-result p1

    return p1
.end method

.method protected greylist-max-o arrayLength([I)I
    .registers 3
    .param p1, "array"    # [I

    .line 764
    array-length v0, p1

    return v0
.end method

.method public bridge synthetic blacklist asPrimitiveArray()Ljava/lang/Object;
    .registers 2

    .line 728
    invoke-super {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist clear()V
    .registers 1

    .line 728
    invoke-super {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->clear()V

    return-void
.end method

.method public bridge synthetic blacklist copyInto(Ljava/lang/Object;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 728
    invoke-super {p0, p1, p2}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->copyInto(Ljava/lang/Object;I)V

    return-void
.end method

.method public bridge synthetic blacklist count()J
    .registers 3

    .line 728
    invoke-super {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->count()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic blacklist forEach(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 728
    invoke-super {p0, p1}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->forEach(Ljava/lang/Object;)V

    return-void
.end method

.method public whitelist test-api forEach(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 742
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Integer;>;"
    instance-of v0, p1, Ljava/util/function/IntConsumer;

    if-eqz v0, :cond_b

    .line 743
    move-object v0, p1

    check-cast v0, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, v0}, Ljava/util/stream/SpinedBuffer$OfInt;->forEach(Ljava/lang/Object;)V

    goto :goto_1f

    .line 746
    :cond_b
    sget-boolean v0, Ljava/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_18

    .line 747
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "{0} calling SpinedBuffer.OfInt.forEach(Consumer)"

    invoke-static {v0, v1}, Ljava/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 748
    :cond_18
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfInt;->spliterator()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfInt;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 750
    :goto_1f
    return-void
.end method

.method public greylist-max-o get(J)I
    .registers 7
    .param p1, "index"    # J

    .line 784
    invoke-virtual {p0, p1, p2}, Ljava/util/stream/SpinedBuffer$OfInt;->chunkFor(J)I

    move-result v0

    .line 785
    .local v0, "ch":I
    iget v1, p0, Ljava/util/stream/SpinedBuffer$OfInt;->spineIndex:I

    if-nez v1, :cond_12

    if-nez v0, :cond_12

    .line 786
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$OfInt;->curChunk:Ljava/lang/Object;

    check-cast v1, [I

    long-to-int v2, p1

    aget v1, v1, v2

    return v1

    .line 788
    :cond_12
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$OfInt;->spine:[Ljava/lang/Object;

    check-cast v1, [[I

    aget-object v1, v1, v0

    iget-object v2, p0, Ljava/util/stream/SpinedBuffer$OfInt;->priorElementCount:[J

    aget-wide v2, v2, v0

    sub-long v2, p1, v2

    long-to-int v2, v2

    aget v1, v1, v2

    return v1
.end method

.method public bridge synthetic blacklist isEmpty()Z
    .registers 2

    .line 728
    invoke-super {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2

    .line 728
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfInt;->iterator()Ljava/util/PrimitiveIterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public blacklist iterator()Ljava/util/PrimitiveIterator$OfInt;
    .registers 2

    .line 793
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfInt;->spliterator()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Spliterators;->iterator(Ljava/util/Spliterator$OfInt;)Ljava/util/PrimitiveIterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist newArray(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 728
    invoke-virtual {p0, p1}, Ljava/util/stream/SpinedBuffer$OfInt;->newArray(I)[I

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o newArray(I)[I
    .registers 3
    .param p1, "size"    # I

    .line 759
    new-array v0, p1, [I

    return-object v0
.end method

.method protected bridge synthetic blacklist newArrayArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 728
    invoke-virtual {p0, p1}, Ljava/util/stream/SpinedBuffer$OfInt;->newArrayArray(I)[[I

    move-result-object p1

    return-object p1
.end method

.method protected greylist-max-o newArrayArray(I)[[I
    .registers 3
    .param p1, "size"    # I

    .line 754
    new-array v0, p1, [[I

    return-object v0
.end method

.method public blacklist spliterator()Ljava/util/Spliterator$OfInt;
    .registers 7

    .line 823
    new-instance v0, Ljava/util/stream/SpinedBuffer$OfInt$1Splitr;

    iget v3, p0, Ljava/util/stream/SpinedBuffer$OfInt;->spineIndex:I

    const/4 v4, 0x0

    iget v5, p0, Ljava/util/stream/SpinedBuffer$OfInt;->elementIndex:I

    const/4 v2, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/SpinedBuffer$OfInt$1Splitr;-><init>(Ljava/util/stream/SpinedBuffer$OfInt;IIII)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api spliterator()Ljava/util/Spliterator;
    .registers 2

    .line 728
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfInt;->spliterator()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 828
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfInt;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 829
    .local v0, "array":[I
    array-length v1, v0

    const/16 v2, 0xc8

    if-ge v1, v2, :cond_2e

    .line 830
    nop

    .line 831
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    array-length v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Ljava/util/stream/SpinedBuffer$OfInt;->spineIndex:I

    .line 832
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    .line 830
    const-string v2, "%s[length=%d, chunks=%d]%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 835
    :cond_2e
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 836
    .local v1, "array2":[I
    nop

    .line 837
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    array-length v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Ljava/util/stream/SpinedBuffer$OfInt;->spineIndex:I

    .line 838
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v2

    .line 836
    const-string v3, "%s[length=%d, chunks=%d]%s..."

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
