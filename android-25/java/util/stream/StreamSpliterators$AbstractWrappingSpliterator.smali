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
        "Ljava/util/Spliterator",
        "<TP_OUT;>;"
    }
.end annotation


# instance fields
.field buffer:Ljava/util/stream/AbstractSpinedBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_BUFFER;"
        }
    .end annotation
.end field

.field bufferSink:Ljava/util/stream/Sink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/Sink",
            "<TP_IN;>;"
        }
    .end annotation
.end field

.field finished:Z

.field final isParallel:Z

.field nextToConsume:J

.field final ph:Ljava/util/stream/PipelineHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/PipelineHelper",
            "<TP_OUT;>;"
        }
    .end annotation
.end field

.field pusher:Ljava/util/function/BooleanSupplier;

.field spliterator:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Spliterator",
            "<TP_IN;>;"
        }
    .end annotation
.end field

.field private spliteratorSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier",
            "<",
            "Ljava/util/Spliterator",
            "<TP_IN;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Z)V
    .locals 1
    .param p3, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/PipelineHelper",
            "<TP_OUT;>;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 128
    .local p0, "this":Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator<TP_IN;TP_OUT;TT_BUFFER;>;"
    .local p1, "ph":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TP_OUT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 131
    iput-object p1, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->ph:Ljava/util/stream/PipelineHelper;

    #@5
    .line 132
    const/4 v0, 0x0

    #@6
    iput-object v0, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliteratorSupplier:Ljava/util/function/Supplier;

    #@8
    .line 133
    iput-object p2, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliterator:Ljava/util/Spliterator;

    #@a
    .line 134
    iput-boolean p3, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->isParallel:Z

    #@c
    .line 130
    return-void
.end method

.method constructor <init>(Ljava/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)V
    .locals 1
    .param p3, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/PipelineHelper",
            "<TP_OUT;>;",
            "Ljava/util/function/Supplier",
            "<",
            "Ljava/util/Spliterator",
            "<TP_IN;>;>;Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 115
    .local p0, "this":Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator<TP_IN;TP_OUT;TT_BUFFER;>;"
    .local p1, "ph":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TP_OUT;>;"
    .local p2, "spliteratorSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/Spliterator<TP_IN;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 118
    iput-object p1, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->ph:Ljava/util/stream/PipelineHelper;

    #@5
    .line 119
    iput-object p2, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliteratorSupplier:Ljava/util/function/Supplier;

    #@7
    .line 120
    const/4 v0, 0x0

    #@8
    iput-object v0, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliterator:Ljava/util/Spliterator;

    #@a
    .line 121
    iput-boolean p3, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->isParallel:Z

    #@c
    .line 117
    return-void
.end method

.method private fillBuffer()Z
    .locals 5

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator<TP_IN;TP_OUT;TT_BUFFER;>;"
    const/4 v4, 0x1

    #@1
    .line 205
    :cond_0
    :goto_0
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->buffer:Ljava/util/stream/AbstractSpinedBuffer;

    #@3
    invoke-virtual {v0}, Ljava/util/stream/AbstractSpinedBuffer;->count()J

    #@6
    move-result-wide v0

    #@7
    const-wide/16 v2, 0x0

    #@9
    cmp-long v0, v0, v2

    #@b
    if-nez v0, :cond_3

    #@d
    .line 206
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->bufferSink:Ljava/util/stream/Sink;

    #@f
    invoke-interface {v0}, Ljava/util/stream/Sink;->cancellationRequested()Z

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_1

    #@15
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->pusher:Ljava/util/function/BooleanSupplier;

    #@17
    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    #@1a
    move-result v0

    #@1b
    if-nez v0, :cond_0

    #@1d
    .line 207
    :cond_1
    iget-boolean v0, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->finished:Z

    #@1f
    if-eqz v0, :cond_2

    #@21
    .line 208
    const/4 v0, 0x0

    #@22
    return v0

    #@23
    .line 210
    :cond_2
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->bufferSink:Ljava/util/stream/Sink;

    #@25
    invoke-interface {v0}, Ljava/util/stream/Sink;->end()V

    #@28
    .line 211
    iput-boolean v4, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->finished:Z

    #@2a
    goto :goto_0

    #@2b
    .line 215
    :cond_3
    return v4
.end method


# virtual methods
.method public final characteristics()I
    .locals 2

    #@0
    .prologue
    .line 237
    .local p0, "this":Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator<TP_IN;TP_OUT;TT_BUFFER;>;"
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->init()V

    #@3
    .line 240
    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->ph:Ljava/util/stream/PipelineHelper;

    #@5
    invoke-virtual {v1}, Ljava/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    #@8
    move-result v1

    #@9
    invoke-static {v1}, Ljava/util/stream/StreamOpFlag;->toStreamFlags(I)I

    #@c
    move-result v1

    #@d
    invoke-static {v1}, Ljava/util/stream/StreamOpFlag;->toCharacteristics(I)I

    #@10
    move-result v0

    #@11
    .line 248
    .local v0, "c":I
    and-int/lit8 v1, v0, 0x40

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 249
    and-int/lit16 v0, v0, -0x4041

    #@17
    .line 250
    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliterator:Ljava/util/Spliterator;

    #@19
    invoke-interface {v1}, Ljava/util/Spliterator;->characteristics()I

    #@1c
    move-result v1

    #@1d
    and-int/lit16 v1, v1, 0x4040

    #@1f
    or-int/2addr v0, v1

    #@20
    .line 253
    :cond_0
    return v0
.end method

.method final doAdvance()Z
    .locals 8

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator<TP_IN;TP_OUT;TT_BUFFER;>;"
    const-wide/16 v6, 0x0

    #@2
    const/4 v0, 0x0

    #@3
    .line 153
    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->buffer:Ljava/util/stream/AbstractSpinedBuffer;

    #@5
    if-nez v1, :cond_1

    #@7
    .line 154
    iget-boolean v1, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->finished:Z

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 155
    return v0

    #@c
    .line 157
    :cond_0
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->init()V

    #@f
    .line 158
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->initPartialTraversalState()V

    #@12
    .line 159
    iput-wide v6, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->nextToConsume:J

    #@14
    .line 160
    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->bufferSink:Ljava/util/stream/Sink;

    #@16
    iget-object v2, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliterator:Ljava/util/Spliterator;

    #@18
    invoke-interface {v2}, Ljava/util/Spliterator;->getExactSizeIfKnown()J

    #@1b
    move-result-wide v2

    #@1c
    invoke-interface {v1, v2, v3}, Ljava/util/stream/Sink;->begin(J)V

    #@1f
    .line 161
    invoke-direct {p0}, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->fillBuffer()Z

    #@22
    move-result v1

    #@23
    return v1

    #@24
    .line 164
    :cond_1
    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->nextToConsume:J

    #@26
    const-wide/16 v4, 0x1

    #@28
    add-long/2addr v2, v4

    #@29
    iput-wide v2, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->nextToConsume:J

    #@2b
    .line 165
    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->nextToConsume:J

    #@2d
    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->buffer:Ljava/util/stream/AbstractSpinedBuffer;

    #@2f
    invoke-virtual {v1}, Ljava/util/stream/AbstractSpinedBuffer;->count()J

    #@32
    move-result-wide v4

    #@33
    cmp-long v1, v2, v4

    #@35
    if-gez v1, :cond_2

    #@37
    const/4 v0, 0x1

    #@38
    .line 166
    .local v0, "hasNext":Z
    :cond_2
    if-nez v0, :cond_3

    #@3a
    .line 167
    iput-wide v6, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->nextToConsume:J

    #@3c
    .line 168
    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->buffer:Ljava/util/stream/AbstractSpinedBuffer;

    #@3e
    invoke-virtual {v1}, Ljava/util/stream/AbstractSpinedBuffer;->clear()V

    #@41
    .line 169
    invoke-direct {p0}, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->fillBuffer()Z

    #@44
    move-result v0

    #@45
    .line 171
    :cond_3
    return v0
.end method

.method public final estimateSize()J
    .locals 2

    #@0
    .prologue
    .line 220
    .local p0, "this":Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator<TP_IN;TP_OUT;TT_BUFFER;>;"
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->init()V

    #@3
    .line 224
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliterator:Ljava/util/Spliterator;

    #@5
    invoke-interface {v0}, Ljava/util/Spliterator;->estimateSize()J

    #@8
    move-result-wide v0

    #@9
    return-wide v0
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TP_OUT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 258
    .local p0, "this":Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator<TP_IN;TP_OUT;TT_BUFFER;>;"
    const/4 v0, 0x4

    #@1
    invoke-virtual {p0, v0}, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->hasCharacteristics(I)Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 259
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@c
    throw v0

    #@d
    .line 260
    :cond_0
    const/4 v0, 0x0

    #@e
    return-object v0
.end method

.method public final getExactSizeIfKnown()J
    .locals 2

    #@0
    .prologue
    .line 229
    .local p0, "this":Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator<TP_IN;TP_OUT;TT_BUFFER;>;"
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->init()V

    #@3
    .line 230
    sget-object v0, Ljava/util/stream/StreamOpFlag;->SIZED:Ljava/util/stream/StreamOpFlag;

    #@5
    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->ph:Ljava/util/stream/PipelineHelper;

    #@7
    invoke-virtual {v1}, Ljava/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    #@a
    move-result v1

    #@b
    invoke-virtual {v0, v1}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 231
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliterator:Ljava/util/Spliterator;

    #@13
    invoke-interface {v0}, Ljava/util/Spliterator;->getExactSizeIfKnown()J

    #@16
    move-result-wide v0

    #@17
    .line 230
    :goto_0
    return-wide v0

    #@18
    .line 232
    :cond_0
    const-wide/16 v0, -0x1

    #@1a
    goto :goto_0
.end method

.method final init()V
    .locals 2

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator<TP_IN;TP_OUT;TT_BUFFER;>;"
    const/4 v1, 0x0

    #@1
    .line 141
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliterator:Ljava/util/Spliterator;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 142
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliteratorSupplier:Ljava/util/function/Supplier;

    #@7
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Ljava/util/Spliterator;

    #@d
    iput-object v0, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliterator:Ljava/util/Spliterator;

    #@f
    .line 143
    iput-object v1, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliteratorSupplier:Ljava/util/function/Supplier;

    #@11
    .line 140
    :cond_0
    return-void
.end method

.method abstract initPartialTraversalState()V
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 265
    .local p0, "this":Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator<TP_IN;TP_OUT;TT_BUFFER;>;"
    const-string/jumbo v0, "%s[%s]"

    #@3
    const/4 v1, 0x2

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    const/4 v3, 0x0

    #@f
    aput-object v2, v1, v3

    #@11
    iget-object v2, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliterator:Ljava/util/Spliterator;

    #@13
    const/4 v3, 0x1

    #@14
    aput-object v2, v1, v3

    #@16
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    return-object v0
.end method

.method public trySplit()Ljava/util/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TP_OUT;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator<TP_IN;TP_OUT;TT_BUFFER;>;"
    const/4 v1, 0x0

    #@1
    .line 189
    iget-boolean v2, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->isParallel:Z

    #@3
    if-eqz v2, :cond_0

    #@5
    iget-boolean v2, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->finished:Z

    #@7
    if-eqz v2, :cond_1

    #@9
    .line 196
    :cond_0
    return-object v1

    #@a
    .line 190
    :cond_1
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->init()V

    #@d
    .line 192
    iget-object v2, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliterator:Ljava/util/Spliterator;

    #@f
    invoke-interface {v2}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    #@12
    move-result-object v0

    #@13
    .line 193
    .local v0, "split":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    if-nez v0, :cond_2

    #@15
    :goto_0
    return-object v1

    #@16
    :cond_2
    invoke-virtual {p0, v0}, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->wrap(Ljava/util/Spliterator;)Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;

    #@19
    move-result-object v1

    #@1a
    goto :goto_0
.end method

.method abstract wrap(Ljava/util/Spliterator;)Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)",
            "Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator",
            "<TP_IN;TP_OUT;*>;"
        }
    .end annotation
.end method
