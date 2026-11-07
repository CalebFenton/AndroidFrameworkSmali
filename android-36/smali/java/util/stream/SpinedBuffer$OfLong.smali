.class public Ljava/util/stream/SpinedBuffer$OfLong;
.super Ljava/util/stream/SpinedBuffer$OfPrimitive;
.source "SpinedBuffer.java"

# interfaces
.implements Ljava/util/function/LongConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/SpinedBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/SpinedBuffer$OfPrimitive<",
        "Ljava/lang/Long;",
        "[J",
        "Ljava/util/function/LongConsumer;",
        ">;",
        "Ljava/util/function/LongConsumer;"
    }
.end annotation


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 852
    invoke-direct {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;-><init>()V

    return-void
.end method

.method public constructor greylist-max-o <init>(I)V
    .registers 2
    .param p1, "initialCapacity"    # I

    .line 856
    invoke-direct {p0, p1}, Ljava/util/stream/SpinedBuffer$OfPrimitive;-><init>(I)V

    .line 857
    return-void
.end method


# virtual methods
.method public whitelist test-api accept(J)V
    .registers 6
    .param p1, "i"    # J

    .line 896
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfLong;->preAccept()V

    .line 897
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$OfLong;->curChunk:Ljava/lang/Object;

    check-cast v0, [J

    iget v1, p0, Ljava/util/stream/SpinedBuffer$OfLong;->elementIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/stream/SpinedBuffer$OfLong;->elementIndex:I

    aput-wide p1, v0, v1

    .line 898
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

    .line 847
    check-cast p1, [J

    check-cast p4, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/stream/SpinedBuffer$OfLong;->arrayForEach([JIILjava/util/function/LongConsumer;)V

    return-void
.end method

.method protected greylist-max-o arrayForEach([JIILjava/util/function/LongConsumer;)V
    .registers 8
    .param p1, "array"    # [J
    .param p2, "from"    # I
    .param p3, "to"    # I
    .param p4, "consumer"    # Ljava/util/function/LongConsumer;

    .line 890
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_b

    .line 891
    aget-wide v1, p1, v0

    invoke-interface {p4, v1, v2}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 890
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 892
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

    .line 847
    check-cast p1, [J

    invoke-virtual {p0, p1}, Ljava/util/stream/SpinedBuffer$OfLong;->arrayLength([J)I

    move-result p1

    return p1
.end method

.method protected greylist-max-o arrayLength([J)I
    .registers 3
    .param p1, "array"    # [J

    .line 883
    array-length v0, p1

    return v0
.end method

.method public bridge synthetic blacklist asPrimitiveArray()Ljava/lang/Object;
    .registers 2

    .line 847
    invoke-super {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist clear()V
    .registers 1

    .line 847
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

    .line 847
    invoke-super {p0, p1, p2}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->copyInto(Ljava/lang/Object;I)V

    return-void
.end method

.method public bridge synthetic blacklist count()J
    .registers 3

    .line 847
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

    .line 847
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
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 861
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Long;>;"
    instance-of v0, p1, Ljava/util/function/LongConsumer;

    if-eqz v0, :cond_b

    .line 862
    move-object v0, p1

    check-cast v0, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, v0}, Ljava/util/stream/SpinedBuffer$OfLong;->forEach(Ljava/lang/Object;)V

    goto :goto_1f

    .line 865
    :cond_b
    sget-boolean v0, Ljava/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_18

    .line 866
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "{0} calling SpinedBuffer.OfLong.forEach(Consumer)"

    invoke-static {v0, v1}, Ljava/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 867
    :cond_18
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfLong;->spliterator()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfLong;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 869
    :goto_1f
    return-void
.end method

.method public greylist-max-o get(J)J
    .registers 7
    .param p1, "index"    # J

    .line 903
    invoke-virtual {p0, p1, p2}, Ljava/util/stream/SpinedBuffer$OfLong;->chunkFor(J)I

    move-result v0

    .line 904
    .local v0, "ch":I
    iget v1, p0, Ljava/util/stream/SpinedBuffer$OfLong;->spineIndex:I

    if-nez v1, :cond_12

    if-nez v0, :cond_12

    .line 905
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$OfLong;->curChunk:Ljava/lang/Object;

    check-cast v1, [J

    long-to-int v2, p1

    aget-wide v1, v1, v2

    return-wide v1

    .line 907
    :cond_12
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$OfLong;->spine:[Ljava/lang/Object;

    check-cast v1, [[J

    aget-object v1, v1, v0

    iget-object v2, p0, Ljava/util/stream/SpinedBuffer$OfLong;->priorElementCount:[J

    aget-wide v2, v2, v0

    sub-long v2, p1, v2

    long-to-int v2, v2

    aget-wide v1, v1, v2

    return-wide v1
.end method

.method public bridge synthetic blacklist isEmpty()Z
    .registers 2

    .line 847
    invoke-super {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2

    .line 847
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfLong;->iterator()Ljava/util/PrimitiveIterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public blacklist iterator()Ljava/util/PrimitiveIterator$OfLong;
    .registers 2

    .line 912
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfLong;->spliterator()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Spliterators;->iterator(Ljava/util/Spliterator$OfLong;)Ljava/util/PrimitiveIterator$OfLong;

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

    .line 847
    invoke-virtual {p0, p1}, Ljava/util/stream/SpinedBuffer$OfLong;->newArray(I)[J

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o newArray(I)[J
    .registers 3
    .param p1, "size"    # I

    .line 878
    new-array v0, p1, [J

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

    .line 847
    invoke-virtual {p0, p1}, Ljava/util/stream/SpinedBuffer$OfLong;->newArrayArray(I)[[J

    move-result-object p1

    return-object p1
.end method

.method protected greylist-max-o newArrayArray(I)[[J
    .registers 3
    .param p1, "size"    # I

    .line 873
    new-array v0, p1, [[J

    return-object v0
.end method

.method public blacklist spliterator()Ljava/util/Spliterator$OfLong;
    .registers 7

    .line 943
    new-instance v0, Ljava/util/stream/SpinedBuffer$OfLong$1Splitr;

    iget v3, p0, Ljava/util/stream/SpinedBuffer$OfLong;->spineIndex:I

    const/4 v4, 0x0

    iget v5, p0, Ljava/util/stream/SpinedBuffer$OfLong;->elementIndex:I

    const/4 v2, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/SpinedBuffer$OfLong$1Splitr;-><init>(Ljava/util/stream/SpinedBuffer$OfLong;IIII)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api spliterator()Ljava/util/Spliterator;
    .registers 2

    .line 847
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfLong;->spliterator()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 948
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfLong;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 949
    .local v0, "array":[J
    array-length v1, v0

    const/16 v2, 0xc8

    if-ge v1, v2, :cond_2e

    .line 950
    nop

    .line 951
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    array-length v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Ljava/util/stream/SpinedBuffer$OfLong;->spineIndex:I

    .line 952
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    .line 950
    const-string v2, "%s[length=%d, chunks=%d]%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 955
    :cond_2e
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    .line 956
    .local v1, "array2":[J
    nop

    .line 957
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    array-length v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Ljava/util/stream/SpinedBuffer$OfLong;->spineIndex:I

    .line 958
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v2

    .line 956
    const-string v3, "%s[length=%d, chunks=%d]%s..."

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
