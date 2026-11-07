.class public Ljava/util/stream/SpinedBuffer$OfDouble;
.super Ljava/util/stream/SpinedBuffer$OfPrimitive;
.source "SpinedBuffer.java"

# interfaces
.implements Ljava/util/function/DoubleConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/SpinedBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/SpinedBuffer$OfPrimitive<",
        "Ljava/lang/Double;",
        "[D",
        "Ljava/util/function/DoubleConsumer;",
        ">;",
        "Ljava/util/function/DoubleConsumer;"
    }
.end annotation


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 973
    invoke-direct {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;-><init>()V

    return-void
.end method

.method public constructor greylist-max-o <init>(I)V
    .registers 2
    .param p1, "initialCapacity"    # I

    .line 977
    invoke-direct {p0, p1}, Ljava/util/stream/SpinedBuffer$OfPrimitive;-><init>(I)V

    .line 978
    return-void
.end method


# virtual methods
.method public whitelist test-api accept(D)V
    .registers 6
    .param p1, "i"    # D

    .line 1017
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfDouble;->preAccept()V

    .line 1018
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$OfDouble;->curChunk:Ljava/lang/Object;

    check-cast v0, [D

    iget v1, p0, Ljava/util/stream/SpinedBuffer$OfDouble;->elementIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/stream/SpinedBuffer$OfDouble;->elementIndex:I

    aput-wide p1, v0, v1

    .line 1019
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

    .line 967
    check-cast p1, [D

    check-cast p4, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/stream/SpinedBuffer$OfDouble;->arrayForEach([DIILjava/util/function/DoubleConsumer;)V

    return-void
.end method

.method protected greylist-max-o arrayForEach([DIILjava/util/function/DoubleConsumer;)V
    .registers 8
    .param p1, "array"    # [D
    .param p2, "from"    # I
    .param p3, "to"    # I
    .param p4, "consumer"    # Ljava/util/function/DoubleConsumer;

    .line 1011
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_b

    .line 1012
    aget-wide v1, p1, v0

    invoke-interface {p4, v1, v2}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 1011
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1013
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

    .line 967
    check-cast p1, [D

    invoke-virtual {p0, p1}, Ljava/util/stream/SpinedBuffer$OfDouble;->arrayLength([D)I

    move-result p1

    return p1
.end method

.method protected greylist-max-o arrayLength([D)I
    .registers 3
    .param p1, "array"    # [D

    .line 1004
    array-length v0, p1

    return v0
.end method

.method public bridge synthetic blacklist asPrimitiveArray()Ljava/lang/Object;
    .registers 2

    .line 967
    invoke-super {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist clear()V
    .registers 1

    .line 967
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

    .line 967
    invoke-super {p0, p1, p2}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->copyInto(Ljava/lang/Object;I)V

    return-void
.end method

.method public bridge synthetic blacklist count()J
    .registers 3

    .line 967
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

    .line 967
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
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 982
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Double;>;"
    instance-of v0, p1, Ljava/util/function/DoubleConsumer;

    if-eqz v0, :cond_b

    .line 983
    move-object v0, p1

    check-cast v0, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, v0}, Ljava/util/stream/SpinedBuffer$OfDouble;->forEach(Ljava/lang/Object;)V

    goto :goto_1f

    .line 986
    :cond_b
    sget-boolean v0, Ljava/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_18

    .line 987
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "{0} calling SpinedBuffer.OfDouble.forEach(Consumer)"

    invoke-static {v0, v1}, Ljava/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 988
    :cond_18
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfDouble;->spliterator()Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfDouble;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 990
    :goto_1f
    return-void
.end method

.method public greylist-max-o get(J)D
    .registers 7
    .param p1, "index"    # J

    .line 1024
    invoke-virtual {p0, p1, p2}, Ljava/util/stream/SpinedBuffer$OfDouble;->chunkFor(J)I

    move-result v0

    .line 1025
    .local v0, "ch":I
    iget v1, p0, Ljava/util/stream/SpinedBuffer$OfDouble;->spineIndex:I

    if-nez v1, :cond_12

    if-nez v0, :cond_12

    .line 1026
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$OfDouble;->curChunk:Ljava/lang/Object;

    check-cast v1, [D

    long-to-int v2, p1

    aget-wide v1, v1, v2

    return-wide v1

    .line 1028
    :cond_12
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$OfDouble;->spine:[Ljava/lang/Object;

    check-cast v1, [[D

    aget-object v1, v1, v0

    iget-object v2, p0, Ljava/util/stream/SpinedBuffer$OfDouble;->priorElementCount:[J

    aget-wide v2, v2, v0

    sub-long v2, p1, v2

    long-to-int v2, v2

    aget-wide v1, v1, v2

    return-wide v1
.end method

.method public bridge synthetic blacklist isEmpty()Z
    .registers 2

    .line 967
    invoke-super {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2

    .line 967
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfDouble;->iterator()Ljava/util/PrimitiveIterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public blacklist iterator()Ljava/util/PrimitiveIterator$OfDouble;
    .registers 2

    .line 1033
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfDouble;->spliterator()Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Spliterators;->iterator(Ljava/util/Spliterator$OfDouble;)Ljava/util/PrimitiveIterator$OfDouble;

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

    .line 967
    invoke-virtual {p0, p1}, Ljava/util/stream/SpinedBuffer$OfDouble;->newArray(I)[D

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o newArray(I)[D
    .registers 3
    .param p1, "size"    # I

    .line 999
    new-array v0, p1, [D

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

    .line 967
    invoke-virtual {p0, p1}, Ljava/util/stream/SpinedBuffer$OfDouble;->newArrayArray(I)[[D

    move-result-object p1

    return-object p1
.end method

.method protected greylist-max-o newArrayArray(I)[[D
    .registers 3
    .param p1, "size"    # I

    .line 994
    new-array v0, p1, [[D

    return-object v0
.end method

.method public blacklist spliterator()Ljava/util/Spliterator$OfDouble;
    .registers 7

    .line 1063
    new-instance v0, Ljava/util/stream/SpinedBuffer$OfDouble$1Splitr;

    iget v3, p0, Ljava/util/stream/SpinedBuffer$OfDouble;->spineIndex:I

    const/4 v4, 0x0

    iget v5, p0, Ljava/util/stream/SpinedBuffer$OfDouble;->elementIndex:I

    const/4 v2, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/SpinedBuffer$OfDouble$1Splitr;-><init>(Ljava/util/stream/SpinedBuffer$OfDouble;IIII)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api spliterator()Ljava/util/Spliterator;
    .registers 2

    .line 967
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfDouble;->spliterator()Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 1068
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfDouble;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 1069
    .local v0, "array":[D
    array-length v1, v0

    const/16 v2, 0xc8

    if-ge v1, v2, :cond_2e

    .line 1070
    nop

    .line 1071
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    array-length v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Ljava/util/stream/SpinedBuffer$OfDouble;->spineIndex:I

    .line 1072
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    .line 1070
    const-string v2, "%s[length=%d, chunks=%d]%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1075
    :cond_2e
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v1

    .line 1076
    .local v1, "array2":[D
    nop

    .line 1077
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    array-length v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Ljava/util/stream/SpinedBuffer$OfDouble;->spineIndex:I

    .line 1078
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v2

    .line 1076
    const-string v3, "%s[length=%d, chunks=%d]%s..."

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
