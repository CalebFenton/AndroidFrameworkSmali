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
        "Ljava/util/stream/SpinedBuffer$OfPrimitive",
        "<",
        "Ljava/lang/Integer;",
        "[I",
        "Ljava/util/function/IntConsumer;",
        ">;",
        "Ljava/util/function/IntConsumer;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 728
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfInt;, "Ljava/util/stream/SpinedBuffer<TE;>.OfInt;"
    invoke-direct {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "initialCapacity"    # I

    #@0
    .prologue
    .line 731
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfInt;, "Ljava/util/stream/SpinedBuffer<TE;>.OfInt;"
    invoke-direct {p0, p1}, Ljava/util/stream/SpinedBuffer$OfPrimitive;-><init>(I)V

    #@3
    .line 730
    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 3
    .param p1, "i"    # I

    #@0
    .prologue
    .line 771
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfInt;, "Ljava/util/stream/SpinedBuffer<TE;>.OfInt;"
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->preAccept()V

    #@3
    .line 772
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    #@5
    check-cast v0, [I

    #@7
    iget v1, p0, Ljava/util/stream/AbstractSpinedBuffer;->elementIndex:I

    #@9
    add-int/lit8 v2, v1, 0x1

    #@b
    iput v2, p0, Ljava/util/stream/AbstractSpinedBuffer;->elementIndex:I

    #@d
    aput p1, v0, v1

    #@f
    .line 770
    return-void
.end method

.method protected bridge synthetic arrayForEach(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 0
    .param p1, "array"    # Ljava/lang/Object;
    .param p2, "from"    # I
    .param p3, "to"    # I
    .param p4, "consumer"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 762
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfInt;, "Ljava/util/stream/SpinedBuffer<TE;>.OfInt;"
    check-cast p1, [I

    #@2
    .end local p1    # "array":Ljava/lang/Object;
    check-cast p4, Ljava/util/function/IntConsumer;

    #@4
    .end local p4    # "consumer":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/stream/SpinedBuffer$OfInt;->arrayForEach([IIILjava/util/function/IntConsumer;)V

    #@7
    return-void
.end method

.method protected arrayForEach([IIILjava/util/function/IntConsumer;)V
    .locals 2
    .param p1, "array"    # [I
    .param p2, "from"    # I
    .param p3, "to"    # I
    .param p4, "consumer"    # Ljava/util/function/IntConsumer;

    #@0
    .prologue
    .line 765
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfInt;, "Ljava/util/stream/SpinedBuffer<TE;>.OfInt;"
    move v0, p2

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    #@3
    .line 766
    aget v1, p1, v0

    #@5
    invoke-interface {p4, v1}, Ljava/util/function/IntConsumer;->accept(I)V

    #@8
    .line 765
    add-int/lit8 v0, v0, 0x1

    #@a
    goto :goto_0

    #@b
    .line 764
    :cond_0
    return-void
.end method

.method protected bridge synthetic arrayLength(Ljava/lang/Object;)I
    .locals 1
    .param p1, "array"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 757
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfInt;, "Ljava/util/stream/SpinedBuffer<TE;>.OfInt;"
    check-cast p1, [I

    #@2
    .end local p1    # "array":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/stream/SpinedBuffer$OfInt;->arrayLength([I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected arrayLength([I)I
    .locals 1
    .param p1, "array"    # [I

    #@0
    .prologue
    .line 758
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfInt;, "Ljava/util/stream/SpinedBuffer<TE;>.OfInt;"
    array-length v0, p1

    #@1
    return v0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 736
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfInt;, "Ljava/util/stream/SpinedBuffer<TE;>.OfInt;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Integer;>;"
    instance-of v0, p1, Ljava/util/function/IntConsumer;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 737
    check-cast p1, Ljava/util/function/IntConsumer;

    #@6
    .end local p1    # "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Integer;>;"
    invoke-virtual {p0, p1}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->forEach(Ljava/lang/Object;)V

    #@9
    .line 735
    :goto_0
    return-void

    #@a
    .line 740
    .restart local p1    # "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Integer;>;"
    :cond_0
    sget-boolean v0, Ljava/util/stream/Tripwire;->ENABLED:Z

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 741
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, "{0} calling SpinedBuffer.OfInt.forEach(Consumer)"

    #@15
    invoke-static {v0, v1}, Ljava/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    #@18
    .line 742
    :cond_1
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfInt;->spliterator()Ljava/util/Spliterator$OfInt;

    #@1b
    move-result-object v0

    #@1c
    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfInt;->forEachRemaining(Ljava/util/function/Consumer;)V

    #@1f
    goto :goto_0
.end method

.method public get(J)I
    .locals 5
    .param p1, "index"    # J

    #@0
    .prologue
    .line 778
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfInt;, "Ljava/util/stream/SpinedBuffer<TE;>.OfInt;"
    invoke-virtual {p0, p1, p2}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->chunkFor(J)I

    #@3
    move-result v0

    #@4
    .line 779
    .local v0, "ch":I
    iget v1, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    #@6
    if-nez v1, :cond_0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 780
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    #@c
    check-cast v1, [I

    #@e
    long-to-int v2, p1

    #@f
    aget v1, v1, v2

    #@11
    return v1

    #@12
    .line 782
    :cond_0
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    #@14
    check-cast v1, [[I

    #@16
    aget-object v1, v1, v0

    #@18
    iget-object v2, p0, Ljava/util/stream/AbstractSpinedBuffer;->priorElementCount:[J

    #@1a
    aget-wide v2, v2, v0

    #@1c
    sub-long v2, p1, v2

    #@1e
    long-to-int v2, v2

    #@1f
    aget v1, v1, v2

    #@21
    return v1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    #@0
    .prologue
    .line 786
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfInt;, "Ljava/util/stream/SpinedBuffer<TE;>.OfInt;"
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfInt;->iterator()Ljava/util/PrimitiveIterator$OfInt;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public iterator()Ljava/util/PrimitiveIterator$OfInt;
    .locals 1

    #@0
    .prologue
    .line 787
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfInt;, "Ljava/util/stream/SpinedBuffer<TE;>.OfInt;"
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfInt;->spliterator()Ljava/util/Spliterator$OfInt;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/util/Spliterators;->iterator(Ljava/util/Spliterator$OfInt;)Ljava/util/PrimitiveIterator$OfInt;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public bridge synthetic newArray(I)Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 752
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfInt;, "Ljava/util/stream/SpinedBuffer<TE;>.OfInt;"
    invoke-virtual {p0, p1}, Ljava/util/stream/SpinedBuffer$OfInt;->newArray(I)[I

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[I
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 753
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfInt;, "Ljava/util/stream/SpinedBuffer<TE;>.OfInt;"
    new-array v0, p1, [I

    #@2
    return-object v0
.end method

.method protected bridge synthetic newArrayArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 747
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfInt;, "Ljava/util/stream/SpinedBuffer<TE;>.OfInt;"
    invoke-virtual {p0, p1}, Ljava/util/stream/SpinedBuffer$OfInt;->newArrayArray(I)[[I

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected newArrayArray(I)[[I
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 748
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfInt;, "Ljava/util/stream/SpinedBuffer<TE;>.OfInt;"
    new-array v0, p1, [[I

    #@2
    return-object v0
.end method

.method public spliterator()Ljava/util/Spliterator$OfInt;
    .locals 6

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfInt;, "Ljava/util/stream/SpinedBuffer<TE;>.OfInt;"
    const/4 v2, 0x0

    #@1
    .line 816
    new-instance v0, Ljava/util/stream/SpinedBuffer$OfInt$1Splitr;

    #@3
    iget v3, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    #@5
    iget v5, p0, Ljava/util/stream/AbstractSpinedBuffer;->elementIndex:I

    #@7
    move-object v1, p0

    #@8
    move v4, v2

    #@9
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/SpinedBuffer$OfInt$1Splitr;-><init>(Ljava/util/stream/SpinedBuffer$OfInt;IIII)V

    #@c
    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator;
    .locals 1

    #@0
    .prologue
    .line 790
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfInt;, "Ljava/util/stream/SpinedBuffer<TE;>.OfInt;"
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfInt;->spliterator()Ljava/util/Spliterator$OfInt;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfInt;, "Ljava/util/stream/SpinedBuffer<TE;>.OfInt;"
    const/4 v4, 0x4

    #@1
    const/4 v8, 0x3

    #@2
    const/4 v7, 0x2

    #@3
    const/4 v6, 0x1

    #@4
    const/4 v5, 0x0

    #@5
    .line 821
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->asPrimitiveArray()Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, [I

    #@b
    .line 822
    .local v0, "array":[I
    array-length v2, v0

    #@c
    const/16 v3, 0xc8

    #@e
    if-ge v2, v3, :cond_0

    #@10
    .line 823
    const-string/jumbo v2, "%s[length=%d, chunks=%d]%s"

    #@13
    new-array v3, v4, [Ljava/lang/Object;

    #@15
    .line 824
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@18
    move-result-object v4

    #@19
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@1c
    move-result-object v4

    #@1d
    aput-object v4, v3, v5

    #@1f
    array-length v4, v0

    #@20
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@23
    move-result-object v4

    #@24
    aput-object v4, v3, v6

    #@26
    .line 825
    iget v4, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    #@28
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2b
    move-result-object v4

    #@2c
    aput-object v4, v3, v7

    #@2e
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    #@31
    move-result-object v4

    #@32
    aput-object v4, v3, v8

    #@34
    .line 823
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    return-object v2

    #@39
    .line 828
    :cond_0
    const/16 v2, 0xc8

    #@3b
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    #@3e
    move-result-object v1

    #@3f
    .line 829
    .local v1, "array2":[I
    const-string/jumbo v2, "%s[length=%d, chunks=%d]%s..."

    #@42
    new-array v3, v4, [Ljava/lang/Object;

    #@44
    .line 830
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@47
    move-result-object v4

    #@48
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@4b
    move-result-object v4

    #@4c
    aput-object v4, v3, v5

    #@4e
    array-length v4, v0

    #@4f
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@52
    move-result-object v4

    #@53
    aput-object v4, v3, v6

    #@55
    .line 831
    iget v4, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    #@57
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5a
    move-result-object v4

    #@5b
    aput-object v4, v3, v7

    #@5d
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    #@60
    move-result-object v4

    #@61
    aput-object v4, v3, v8

    #@63
    .line 829
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@66
    move-result-object v2

    #@67
    return-object v2
.end method
