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
        "Ljava/util/stream/SpinedBuffer$OfPrimitive",
        "<",
        "Ljava/lang/Long;",
        "[J",
        "Ljava/util/function/LongConsumer;",
        ">;",
        "Ljava/util/function/LongConsumer;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 842
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfLong;, "Ljava/util/stream/SpinedBuffer<TE;>.OfLong;"
    invoke-direct {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "initialCapacity"    # I

    #@0
    .prologue
    .line 845
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfLong;, "Ljava/util/stream/SpinedBuffer<TE;>.OfLong;"
    invoke-direct {p0, p1}, Ljava/util/stream/SpinedBuffer$OfPrimitive;-><init>(I)V

    #@3
    .line 844
    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 3
    .param p1, "i"    # J

    #@0
    .prologue
    .line 885
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfLong;, "Ljava/util/stream/SpinedBuffer<TE;>.OfLong;"
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->preAccept()V

    #@3
    .line 886
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    #@5
    check-cast v0, [J

    #@7
    iget v1, p0, Ljava/util/stream/AbstractSpinedBuffer;->elementIndex:I

    #@9
    add-int/lit8 v2, v1, 0x1

    #@b
    iput v2, p0, Ljava/util/stream/AbstractSpinedBuffer;->elementIndex:I

    #@d
    aput-wide p1, v0, v1

    #@f
    .line 884
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
    .line 876
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfLong;, "Ljava/util/stream/SpinedBuffer<TE;>.OfLong;"
    check-cast p1, [J

    #@2
    .end local p1    # "array":Ljava/lang/Object;
    check-cast p4, Ljava/util/function/LongConsumer;

    #@4
    .end local p4    # "consumer":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/stream/SpinedBuffer$OfLong;->arrayForEach([JIILjava/util/function/LongConsumer;)V

    #@7
    return-void
.end method

.method protected arrayForEach([JIILjava/util/function/LongConsumer;)V
    .locals 4
    .param p1, "array"    # [J
    .param p2, "from"    # I
    .param p3, "to"    # I
    .param p4, "consumer"    # Ljava/util/function/LongConsumer;

    #@0
    .prologue
    .line 879
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfLong;, "Ljava/util/stream/SpinedBuffer<TE;>.OfLong;"
    move v0, p2

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    #@3
    .line 880
    aget-wide v2, p1, v0

    #@5
    invoke-interface {p4, v2, v3}, Ljava/util/function/LongConsumer;->accept(J)V

    #@8
    .line 879
    add-int/lit8 v0, v0, 0x1

    #@a
    goto :goto_0

    #@b
    .line 878
    :cond_0
    return-void
.end method

.method protected bridge synthetic arrayLength(Ljava/lang/Object;)I
    .locals 1
    .param p1, "array"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 871
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfLong;, "Ljava/util/stream/SpinedBuffer<TE;>.OfLong;"
    check-cast p1, [J

    #@2
    .end local p1    # "array":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/stream/SpinedBuffer$OfLong;->arrayLength([J)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected arrayLength([J)I
    .locals 1
    .param p1, "array"    # [J

    #@0
    .prologue
    .line 872
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfLong;, "Ljava/util/stream/SpinedBuffer<TE;>.OfLong;"
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
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 850
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfLong;, "Ljava/util/stream/SpinedBuffer<TE;>.OfLong;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Long;>;"
    instance-of v0, p1, Ljava/util/function/LongConsumer;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 851
    check-cast p1, Ljava/util/function/LongConsumer;

    #@6
    .end local p1    # "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Long;>;"
    invoke-virtual {p0, p1}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->forEach(Ljava/lang/Object;)V

    #@9
    .line 849
    :goto_0
    return-void

    #@a
    .line 854
    .restart local p1    # "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Long;>;"
    :cond_0
    sget-boolean v0, Ljava/util/stream/Tripwire;->ENABLED:Z

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 855
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, "{0} calling SpinedBuffer.OfLong.forEach(Consumer)"

    #@15
    invoke-static {v0, v1}, Ljava/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    #@18
    .line 856
    :cond_1
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfLong;->spliterator()Ljava/util/Spliterator$OfLong;

    #@1b
    move-result-object v0

    #@1c
    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfLong;->forEachRemaining(Ljava/util/function/Consumer;)V

    #@1f
    goto :goto_0
.end method

.method public get(J)J
    .locals 5
    .param p1, "index"    # J

    #@0
    .prologue
    .line 892
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfLong;, "Ljava/util/stream/SpinedBuffer<TE;>.OfLong;"
    invoke-virtual {p0, p1, p2}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->chunkFor(J)I

    #@3
    move-result v0

    #@4
    .line 893
    .local v0, "ch":I
    iget v1, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    #@6
    if-nez v1, :cond_0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 894
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    #@c
    check-cast v1, [J

    #@e
    long-to-int v2, p1

    #@f
    aget-wide v2, v1, v2

    #@11
    return-wide v2

    #@12
    .line 896
    :cond_0
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    #@14
    check-cast v1, [[J

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
    aget-wide v2, v1, v2

    #@21
    return-wide v2
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    #@0
    .prologue
    .line 900
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfLong;, "Ljava/util/stream/SpinedBuffer<TE;>.OfLong;"
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfLong;->iterator()Ljava/util/PrimitiveIterator$OfLong;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public iterator()Ljava/util/PrimitiveIterator$OfLong;
    .locals 1

    #@0
    .prologue
    .line 901
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfLong;, "Ljava/util/stream/SpinedBuffer<TE;>.OfLong;"
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfLong;->spliterator()Ljava/util/Spliterator$OfLong;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/util/Spliterators;->iterator(Ljava/util/Spliterator$OfLong;)Ljava/util/PrimitiveIterator$OfLong;

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
    .line 866
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfLong;, "Ljava/util/stream/SpinedBuffer<TE;>.OfLong;"
    invoke-virtual {p0, p1}, Ljava/util/stream/SpinedBuffer$OfLong;->newArray(I)[J

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[J
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 867
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfLong;, "Ljava/util/stream/SpinedBuffer<TE;>.OfLong;"
    new-array v0, p1, [J

    #@2
    return-object v0
.end method

.method protected bridge synthetic newArrayArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 861
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfLong;, "Ljava/util/stream/SpinedBuffer<TE;>.OfLong;"
    invoke-virtual {p0, p1}, Ljava/util/stream/SpinedBuffer$OfLong;->newArrayArray(I)[[J

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected newArrayArray(I)[[J
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 862
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfLong;, "Ljava/util/stream/SpinedBuffer<TE;>.OfLong;"
    new-array v0, p1, [[J

    #@2
    return-object v0
.end method

.method public spliterator()Ljava/util/Spliterator$OfLong;
    .locals 6

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfLong;, "Ljava/util/stream/SpinedBuffer<TE;>.OfLong;"
    const/4 v2, 0x0

    #@1
    .line 931
    new-instance v0, Ljava/util/stream/SpinedBuffer$OfLong$1Splitr;

    #@3
    iget v3, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    #@5
    iget v5, p0, Ljava/util/stream/AbstractSpinedBuffer;->elementIndex:I

    #@7
    move-object v1, p0

    #@8
    move v4, v2

    #@9
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/SpinedBuffer$OfLong$1Splitr;-><init>(Ljava/util/stream/SpinedBuffer$OfLong;IIII)V

    #@c
    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator;
    .locals 1

    #@0
    .prologue
    .line 905
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfLong;, "Ljava/util/stream/SpinedBuffer<TE;>.OfLong;"
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfLong;->spliterator()Ljava/util/Spliterator$OfLong;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfLong;, "Ljava/util/stream/SpinedBuffer<TE;>.OfLong;"
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
    .line 936
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->asPrimitiveArray()Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, [J

    #@b
    .line 937
    .local v0, "array":[J
    array-length v2, v0

    #@c
    const/16 v3, 0xc8

    #@e
    if-ge v2, v3, :cond_0

    #@10
    .line 938
    const-string/jumbo v2, "%s[length=%d, chunks=%d]%s"

    #@13
    new-array v3, v4, [Ljava/lang/Object;

    #@15
    .line 939
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
    .line 940
    iget v4, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    #@28
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2b
    move-result-object v4

    #@2c
    aput-object v4, v3, v7

    #@2e
    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    #@31
    move-result-object v4

    #@32
    aput-object v4, v3, v8

    #@34
    .line 938
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    return-object v2

    #@39
    .line 943
    :cond_0
    const/16 v2, 0xc8

    #@3b
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    #@3e
    move-result-object v1

    #@3f
    .line 944
    .local v1, "array2":[J
    const-string/jumbo v2, "%s[length=%d, chunks=%d]%s..."

    #@42
    new-array v3, v4, [Ljava/lang/Object;

    #@44
    .line 945
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
    .line 946
    iget v4, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    #@57
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5a
    move-result-object v4

    #@5b
    aput-object v4, v3, v7

    #@5d
    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    #@60
    move-result-object v4

    #@61
    aput-object v4, v3, v8

    #@63
    .line 944
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@66
    move-result-object v2

    #@67
    return-object v2
.end method
