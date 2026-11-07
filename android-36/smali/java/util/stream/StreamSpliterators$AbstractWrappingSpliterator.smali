.class abstract Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;
.super Ljava/lang/Object;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AbstractWrappingSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        "P_OUT:",
        "Ljava/lang/Object;",
        "T_BUFFER:",
        "Ljava/util/stream/AbstractSpinedBuffer;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator<",
        "TP_OUT;>;"
    }
.end annotation


# instance fields
.field blacklist buffer:Ljava/util/stream/AbstractSpinedBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_BUFFER;"
        }
    .end annotation
.end field

.field blacklist bufferSink:Ljava/util/stream/Sink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/Sink<",
            "TP_IN;>;"
        }
    .end annotation
.end field

.field blacklist finished:Z

.field final blacklist isParallel:Z

.field blacklist nextToConsume:J

.field final blacklist ph:Ljava/util/stream/PipelineHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/PipelineHelper<",
            "TP_OUT;>;"
        }
    .end annotation
.end field

.field blacklist pusher:Ljava/util/function/BooleanSupplier;

.field blacklist spliterator:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Spliterator<",
            "TP_IN;>;"
        }
    .end annotation
.end field

.field private blacklist spliteratorSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/util/Spliterator<",
            "TP_IN;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Z)V
    .registers 5
    .param p3, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/PipelineHelper<",
            "TP_OUT;>;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;Z)V"
        }
    .end annotation

    .line 130
    .local p0, "this":Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator<TP_IN;TP_OUT;TT_BUFFER;>;"
    .local p1, "ph":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TP_OUT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->ph:Ljava/util/stream/PipelineHelper;

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliteratorSupplier:Ljava/util/function/Supplier;

    .line 133
    iput-object p2, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliterator:Ljava/util/Spliterator;

    .line 134
    iput-boolean p3, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->isParallel:Z

    .line 135
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)V
    .registers 5
    .param p3, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/PipelineHelper<",
            "TP_OUT;>;",
            "Ljava/util/function/Supplier<",
            "Ljava/util/Spliterator<",
            "TP_IN;>;>;Z)V"
        }
    .end annotation

    .line 117
    .local p0, "this":Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator<TP_IN;TP_OUT;TT_BUFFER;>;"
    .local p1, "ph":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TP_OUT;>;"
    .local p2, "spliteratorSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/Spliterator<TP_IN;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->ph:Ljava/util/stream/PipelineHelper;

    .line 119
    iput-object p2, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliteratorSupplier:Ljava/util/function/Supplier;

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliterator:Ljava/util/Spliterator;

    .line 121
    iput-boolean p3, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->isParallel:Z

    .line 122
    return-void
.end method

.method private blacklist fillBuffer()Z
    .registers 5

    .line 205
    .local p0, "this":Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator<TP_IN;TP_OUT;TT_BUFFER;>;"
    nop

    :cond_1
    :goto_1
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->buffer:Ljava/util/stream/AbstractSpinedBuffer;

    invoke-virtual {v0}, Ljava/util/stream/AbstractSpinedBuffer;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_2c

    .line 206
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->bufferSink:Ljava/util/stream/Sink;

    invoke-interface {v0}, Ljava/util/stream/Sink;->cancellationRequested()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->pusher:Ljava/util/function/BooleanSupplier;

    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v0

    if-nez v0, :cond_1

    .line 207
    :cond_1e
    iget-boolean v0, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->finished:Z

    if-eqz v0, :cond_24

    .line 208
    const/4 v0, 0x0

    return v0

    .line 210
    :cond_24
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->bufferSink:Ljava/util/stream/Sink;

    invoke-interface {v0}, Ljava/util/stream/Sink;->end()V

    .line 211
    iput-boolean v1, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->finished:Z

    goto :goto_1

    .line 215
    :cond_2c
    return v1
.end method


# virtual methods
.method public final whitelist test-api characteristics()I
    .registers 3

    .line 235
    .local p0, "this":Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator<TP_IN;TP_OUT;TT_BUFFER;>;"
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->init()V

    .line 238
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->ph:Ljava/util/stream/PipelineHelper;

    invoke-virtual {v0}, Ljava/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v0

    invoke-static {v0}, Ljava/util/stream/StreamOpFlag;->toStreamFlags(I)I

    move-result v0

    invoke-static {v0}, Ljava/util/stream/StreamOpFlag;->toCharacteristics(I)I

    move-result v0

    .line 246
    .local v0, "c":I
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_20

    .line 247
    and-int/lit16 v0, v0, -0x4041

    .line 248
    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliterator:Ljava/util/Spliterator;

    invoke-interface {v1}, Ljava/util/Spliterator;->characteristics()I

    move-result v1

    and-int/lit16 v1, v1, 0x4040

    or-int/2addr v0, v1

    .line 251
    :cond_20
    return v0
.end method

.method final blacklist doAdvance()Z
    .registers 9

    .line 153
    .local p0, "this":Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator<TP_IN;TP_OUT;TT_BUFFER;>;"
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->buffer:Ljava/util/stream/AbstractSpinedBuffer;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_24

    .line 154
    iget-boolean v0, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->finished:Z

    if-eqz v0, :cond_c

    .line 155
    return v3

    .line 157
    :cond_c
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->init()V

    .line 158
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->initPartialTraversalState()V

    .line 159
    iput-wide v1, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->nextToConsume:J

    .line 160
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->bufferSink:Ljava/util/stream/Sink;

    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliterator:Ljava/util/Spliterator;

    invoke-interface {v1}, Ljava/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Ljava/util/stream/Sink;->begin(J)V

    .line 161
    invoke-direct {p0}, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->fillBuffer()Z

    move-result v0

    return v0

    .line 164
    :cond_24
    iget-wide v4, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->nextToConsume:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->nextToConsume:J

    .line 165
    iget-wide v4, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->nextToConsume:J

    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->buffer:Ljava/util/stream/AbstractSpinedBuffer;

    invoke-virtual {v0}, Ljava/util/stream/AbstractSpinedBuffer;->count()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gez v0, :cond_38

    const/4 v3, 0x1

    .line 166
    .local v3, "hasNext":Z
    :cond_38
    if-nez v3, :cond_45

    .line 167
    iput-wide v1, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->nextToConsume:J

    .line 168
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->buffer:Ljava/util/stream/AbstractSpinedBuffer;

    invoke-virtual {v0}, Ljava/util/stream/AbstractSpinedBuffer;->clear()V

    .line 169
    invoke-direct {p0}, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->fillBuffer()Z

    move-result v3

    .line 171
    :cond_45
    return v3
.end method

.method public final whitelist test-api estimateSize()J
    .registers 5

    .line 220
    .local p0, "this":Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator<TP_IN;TP_OUT;TT_BUFFER;>;"
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->getExactSizeIfKnown()J

    move-result-wide v0

    .line 224
    .local v0, "exactSizeIfKnown":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_11

    iget-object v2, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliterator:Ljava/util/Spliterator;

    invoke-interface {v2}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v2

    goto :goto_12

    :cond_11
    move-wide v2, v0

    :goto_12
    return-wide v2
.end method

.method public whitelist test-api getComparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TP_OUT;>;"
        }
    .end annotation

    .line 256
    .local p0, "this":Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator<TP_IN;TP_OUT;TT_BUFFER;>;"
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->hasCharacteristics(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 258
    const/4 v0, 0x0

    return-object v0

    .line 257
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final whitelist test-api getExactSizeIfKnown()J
    .registers 3

    .line 229
    .local p0, "this":Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator<TP_IN;TP_OUT;TT_BUFFER;>;"
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->init()V

    .line 230
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->ph:Ljava/util/stream/PipelineHelper;

    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliterator:Ljava/util/Spliterator;

    invoke-virtual {v0, v1}, Ljava/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljava/util/Spliterator;)J

    move-result-wide v0

    return-wide v0
.end method

.method final blacklist init()V
    .registers 2

    .line 141
    .local p0, "this":Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator<TP_IN;TP_OUT;TT_BUFFER;>;"
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliterator:Ljava/util/Spliterator;

    if-nez v0, :cond_11

    .line 142
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliteratorSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator;

    iput-object v0, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliterator:Ljava/util/Spliterator;

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliteratorSupplier:Ljava/util/function/Supplier;

    .line 145
    :cond_11
    return-void
.end method

.method abstract blacklist initPartialTraversalState()V
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 263
    .local p0, "this":Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator<TP_IN;TP_OUT;TT_BUFFER;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliterator:Ljava/util/Spliterator;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s[%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 189
    .local p0, "this":Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator<TP_IN;TP_OUT;TT_BUFFER;>;"
    iget-boolean v0, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->isParallel:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->buffer:Ljava/util/stream/AbstractSpinedBuffer;

    if-nez v0, :cond_1e

    iget-boolean v0, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->finished:Z

    if-nez v0, :cond_1e

    .line 190
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->init()V

    .line 192
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliterator:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    .line 193
    .local v0, "split":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    if-nez v0, :cond_19

    goto :goto_1d

    :cond_19
    invoke-virtual {p0, v0}, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->wrap(Ljava/util/Spliterator;)Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;

    move-result-object v1

    :goto_1d
    return-object v1

    .line 196
    .end local v0    # "split":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    :cond_1e
    return-object v1
.end method

.method abstract blacklist wrap(Ljava/util/Spliterator;)Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "TP_IN;>;)",
            "Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator<",
            "TP_IN;TP_OUT;*>;"
        }
    .end annotation
.end method
