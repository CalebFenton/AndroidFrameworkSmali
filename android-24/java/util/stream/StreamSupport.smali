.class public final Ljava/util/stream/StreamSupport;
.super Ljava/lang/Object;
.source "StreamSupport.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;
    .locals 2
    .param p0, "spliterator"    # Ljava/util/Spliterator$OfDouble;
    .param p1, "parallel"    # Z

    #@0
    .prologue
    .line 274
    new-instance v0, Ljava/util/stream/DoublePipeline$Head;

    #@2
    .line 275
    invoke-static {p0}, Ljava/util/stream/StreamOpFlag;->fromCharacteristics(Ljava/util/Spliterator;)I

    #@5
    move-result v1

    #@6
    .line 274
    invoke-direct {v0, p0, v1, p1}, Ljava/util/stream/DoublePipeline$Head;-><init>(Ljava/util/Spliterator;IZ)V

    #@9
    return-object v0
.end method

.method public static doubleStream(Ljava/util/function/Supplier;IZ)Ljava/util/stream/DoubleStream;
    .locals 2
    .param p1, "characteristics"    # I
    .param p2, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<+",
            "Ljava/util/Spliterator$OfDouble;",
            ">;IZ)",
            "Ljava/util/stream/DoubleStream;"
        }
    .end annotation

    #@0
    .prologue
    .line 314
    .local p0, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+Ljava/util/Spliterator$OfDouble;>;"
    new-instance v0, Ljava/util/stream/DoublePipeline$Head;

    #@2
    .line 315
    invoke-static {p1}, Ljava/util/stream/StreamOpFlag;->fromCharacteristics(I)I

    #@5
    move-result v1

    #@6
    .line 314
    invoke-direct {v0, p0, v1, p2}, Ljava/util/stream/DoublePipeline$Head;-><init>(Ljava/util/function/Supplier;IZ)V

    #@9
    return-object v0
.end method

.method public static intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;
    .locals 2
    .param p0, "spliterator"    # Ljava/util/Spliterator$OfInt;
    .param p1, "parallel"    # Z

    #@0
    .prologue
    .line 138
    new-instance v0, Ljava/util/stream/IntPipeline$Head;

    #@2
    .line 139
    invoke-static {p0}, Ljava/util/stream/StreamOpFlag;->fromCharacteristics(Ljava/util/Spliterator;)I

    #@5
    move-result v1

    #@6
    .line 138
    invoke-direct {v0, p0, v1, p1}, Ljava/util/stream/IntPipeline$Head;-><init>(Ljava/util/Spliterator;IZ)V

    #@9
    return-object v0
.end method

.method public static intStream(Ljava/util/function/Supplier;IZ)Ljava/util/stream/IntStream;
    .locals 2
    .param p1, "characteristics"    # I
    .param p2, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<+",
            "Ljava/util/Spliterator$OfInt;",
            ">;IZ)",
            "Ljava/util/stream/IntStream;"
        }
    .end annotation

    #@0
    .prologue
    .line 178
    .local p0, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+Ljava/util/Spliterator$OfInt;>;"
    new-instance v0, Ljava/util/stream/IntPipeline$Head;

    #@2
    .line 179
    invoke-static {p1}, Ljava/util/stream/StreamOpFlag;->fromCharacteristics(I)I

    #@5
    move-result v1

    #@6
    .line 178
    invoke-direct {v0, p0, v1, p2}, Ljava/util/stream/IntPipeline$Head;-><init>(Ljava/util/function/Supplier;IZ)V

    #@9
    return-object v0
.end method

.method public static longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;
    .locals 2
    .param p0, "spliterator"    # Ljava/util/Spliterator$OfLong;
    .param p1, "parallel"    # Z

    #@0
    .prologue
    .line 206
    new-instance v0, Ljava/util/stream/LongPipeline$Head;

    #@2
    .line 207
    invoke-static {p0}, Ljava/util/stream/StreamOpFlag;->fromCharacteristics(Ljava/util/Spliterator;)I

    #@5
    move-result v1

    #@6
    .line 206
    invoke-direct {v0, p0, v1, p1}, Ljava/util/stream/LongPipeline$Head;-><init>(Ljava/util/Spliterator;IZ)V

    #@9
    return-object v0
.end method

.method public static longStream(Ljava/util/function/Supplier;IZ)Ljava/util/stream/LongStream;
    .locals 2
    .param p1, "characteristics"    # I
    .param p2, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<+",
            "Ljava/util/Spliterator$OfLong;",
            ">;IZ)",
            "Ljava/util/stream/LongStream;"
        }
    .end annotation

    #@0
    .prologue
    .line 246
    .local p0, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+Ljava/util/Spliterator$OfLong;>;"
    new-instance v0, Ljava/util/stream/LongPipeline$Head;

    #@2
    .line 247
    invoke-static {p1}, Ljava/util/stream/StreamOpFlag;->fromCharacteristics(I)I

    #@5
    move-result v1

    #@6
    .line 246
    invoke-direct {v0, p0, v1, p2}, Ljava/util/stream/LongPipeline$Head;-><init>(Ljava/util/function/Supplier;IZ)V

    #@9
    return-object v0
.end method

.method public static stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;
    .locals 2
    .param p1, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Spliterator",
            "<TT;>;Z)",
            "Ljava/util/stream/Stream",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 68
    .local p0, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 69
    new-instance v0, Ljava/util/stream/ReferencePipeline$Head;

    #@5
    .line 70
    invoke-static {p0}, Ljava/util/stream/StreamOpFlag;->fromCharacteristics(Ljava/util/Spliterator;)I

    #@8
    move-result v1

    #@9
    .line 69
    invoke-direct {v0, p0, v1, p1}, Ljava/util/stream/ReferencePipeline$Head;-><init>(Ljava/util/Spliterator;IZ)V

    #@c
    return-object v0
.end method

.method public static stream(Ljava/util/function/Supplier;IZ)Ljava/util/stream/Stream;
    .locals 2
    .param p1, "characteristics"    # I
    .param p2, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier",
            "<+",
            "Ljava/util/Spliterator",
            "<TT;>;>;IZ)",
            "Ljava/util/stream/Stream",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 110
    .local p0, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+Ljava/util/Spliterator<TT;>;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 111
    new-instance v0, Ljava/util/stream/ReferencePipeline$Head;

    #@5
    .line 112
    invoke-static {p1}, Ljava/util/stream/StreamOpFlag;->fromCharacteristics(I)I

    #@8
    move-result v1

    #@9
    .line 111
    invoke-direct {v0, p0, v1, p2}, Ljava/util/stream/ReferencePipeline$Head;-><init>(Ljava/util/function/Supplier;IZ)V

    #@c
    return-object v0
.end method
