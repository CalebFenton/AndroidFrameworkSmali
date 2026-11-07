.class public final Ljava/util/stream/StreamSupport;
.super Ljava/lang/Object;
.source "StreamSupport.java"


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist test-api doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;
    .registers 4
    .param p0, "spliterator"    # Ljava/util/Spliterator$OfDouble;
    .param p1, "parallel"    # Z

    .line 274
    new-instance v0, Ljava/util/stream/DoublePipeline$Head;

    .line 275
    invoke-static {p0}, Ljava/util/stream/StreamOpFlag;->fromCharacteristics(Ljava/util/Spliterator;)I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Ljava/util/stream/DoublePipeline$Head;-><init>(Ljava/util/Spliterator;IZ)V

    .line 274
    return-object v0
.end method

.method public static whitelist test-api doubleStream(Ljava/util/function/Supplier;IZ)Ljava/util/stream/DoubleStream;
    .registers 5
    .param p1, "characteristics"    # I
    .param p2, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "+",
            "Ljava/util/Spliterator$OfDouble;",
            ">;IZ)",
            "Ljava/util/stream/DoubleStream;"
        }
    .end annotation

    .line 314
    .local p0, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+Ljava/util/Spliterator$OfDouble;>;"
    new-instance v0, Ljava/util/stream/DoublePipeline$Head;

    .line 315
    invoke-static {p1}, Ljava/util/stream/StreamOpFlag;->fromCharacteristics(I)I

    move-result v1

    invoke-direct {v0, p0, v1, p2}, Ljava/util/stream/DoublePipeline$Head;-><init>(Ljava/util/function/Supplier;IZ)V

    .line 314
    return-object v0
.end method

.method public static whitelist test-api intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;
    .registers 4
    .param p0, "spliterator"    # Ljava/util/Spliterator$OfInt;
    .param p1, "parallel"    # Z

    .line 138
    new-instance v0, Ljava/util/stream/IntPipeline$Head;

    .line 139
    invoke-static {p0}, Ljava/util/stream/StreamOpFlag;->fromCharacteristics(Ljava/util/Spliterator;)I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Ljava/util/stream/IntPipeline$Head;-><init>(Ljava/util/Spliterator;IZ)V

    .line 138
    return-object v0
.end method

.method public static whitelist test-api intStream(Ljava/util/function/Supplier;IZ)Ljava/util/stream/IntStream;
    .registers 5
    .param p1, "characteristics"    # I
    .param p2, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "+",
            "Ljava/util/Spliterator$OfInt;",
            ">;IZ)",
            "Ljava/util/stream/IntStream;"
        }
    .end annotation

    .line 178
    .local p0, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+Ljava/util/Spliterator$OfInt;>;"
    new-instance v0, Ljava/util/stream/IntPipeline$Head;

    .line 179
    invoke-static {p1}, Ljava/util/stream/StreamOpFlag;->fromCharacteristics(I)I

    move-result v1

    invoke-direct {v0, p0, v1, p2}, Ljava/util/stream/IntPipeline$Head;-><init>(Ljava/util/function/Supplier;IZ)V

    .line 178
    return-object v0
.end method

.method public static whitelist test-api longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;
    .registers 4
    .param p0, "spliterator"    # Ljava/util/Spliterator$OfLong;
    .param p1, "parallel"    # Z

    .line 206
    new-instance v0, Ljava/util/stream/LongPipeline$Head;

    .line 207
    invoke-static {p0}, Ljava/util/stream/StreamOpFlag;->fromCharacteristics(Ljava/util/Spliterator;)I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Ljava/util/stream/LongPipeline$Head;-><init>(Ljava/util/Spliterator;IZ)V

    .line 206
    return-object v0
.end method

.method public static whitelist test-api longStream(Ljava/util/function/Supplier;IZ)Ljava/util/stream/LongStream;
    .registers 5
    .param p1, "characteristics"    # I
    .param p2, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "+",
            "Ljava/util/Spliterator$OfLong;",
            ">;IZ)",
            "Ljava/util/stream/LongStream;"
        }
    .end annotation

    .line 246
    .local p0, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+Ljava/util/Spliterator$OfLong;>;"
    new-instance v0, Ljava/util/stream/LongPipeline$Head;

    .line 247
    invoke-static {p1}, Ljava/util/stream/StreamOpFlag;->fromCharacteristics(I)I

    move-result v1

    invoke-direct {v0, p0, v1, p2}, Ljava/util/stream/LongPipeline$Head;-><init>(Ljava/util/function/Supplier;IZ)V

    .line 246
    return-object v0
.end method

.method public static whitelist test-api stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;
    .registers 4
    .param p1, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Spliterator<",
            "TT;>;Z)",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 68
    .local p0, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v0, Ljava/util/stream/ReferencePipeline$Head;

    .line 70
    invoke-static {p0}, Ljava/util/stream/StreamOpFlag;->fromCharacteristics(Ljava/util/Spliterator;)I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Ljava/util/stream/ReferencePipeline$Head;-><init>(Ljava/util/Spliterator;IZ)V

    .line 69
    return-object v0
.end method

.method public static whitelist test-api stream(Ljava/util/function/Supplier;IZ)Ljava/util/stream/Stream;
    .registers 5
    .param p1, "characteristics"    # I
    .param p2, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "+",
            "Ljava/util/Spliterator<",
            "TT;>;>;IZ)",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 110
    .local p0, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+Ljava/util/Spliterator<TT;>;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    new-instance v0, Ljava/util/stream/ReferencePipeline$Head;

    .line 112
    invoke-static {p1}, Ljava/util/stream/StreamOpFlag;->fromCharacteristics(I)I

    move-result v1

    invoke-direct {v0, p0, v1, p2}, Ljava/util/stream/ReferencePipeline$Head;-><init>(Ljava/util/function/Supplier;IZ)V

    .line 111
    return-object v0
.end method
