.class final Ljava/util/stream/Streams$StreamBuilderImpl;
.super Ljava/util/stream/Streams$AbstractStreamBuilderImpl;
.source "Streams.java"

# interfaces
.implements Ljava/util/stream/Stream$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StreamBuilderImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/Streams$AbstractStreamBuilderImpl",
        "<TT;",
        "Ljava/util/Spliterator",
        "<TT;>;>;",
        "Ljava/util/stream/Stream$Builder",
        "<TT;>;"
    }
.end annotation


# instance fields
.field buffer:Ljava/util/stream/SpinedBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/SpinedBuffer",
            "<TT;>;"
        }
    .end annotation
.end field

.field first:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 343
    .local p0, "this":Ljava/util/stream/Streams$StreamBuilderImpl;, "Ljava/util/stream/Streams$StreamBuilderImpl<TT;>;"
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;-><init>(Ljava/util/stream/Streams$AbstractStreamBuilderImpl;)V

    #@4
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 350
    .local p0, "this":Ljava/util/stream/Streams$StreamBuilderImpl;, "Ljava/util/stream/Streams$StreamBuilderImpl<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;-><init>(Ljava/util/stream/Streams$AbstractStreamBuilderImpl;)V

    #@4
    .line 351
    iput-object p1, p0, Ljava/util/stream/Streams$StreamBuilderImpl;->first:Ljava/lang/Object;

    #@6
    .line 352
    const/4 v0, -0x2

    #@7
    iput v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    #@9
    .line 350
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 359
    .local p0, "this":Ljava/util/stream/Streams$StreamBuilderImpl;, "Ljava/util/stream/Streams$StreamBuilderImpl<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 360
    iput-object p1, p0, Ljava/util/stream/Streams$StreamBuilderImpl;->first:Ljava/lang/Object;

    #@6
    .line 361
    iget v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    #@8
    add-int/lit8 v0, v0, 0x1

    #@a
    iput v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    #@c
    .line 358
    :goto_0
    return-void

    #@d
    .line 363
    :cond_0
    iget v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    #@f
    if-lez v0, :cond_2

    #@11
    .line 364
    iget-object v0, p0, Ljava/util/stream/Streams$StreamBuilderImpl;->buffer:Ljava/util/stream/SpinedBuffer;

    #@13
    if-nez v0, :cond_1

    #@15
    .line 365
    new-instance v0, Ljava/util/stream/SpinedBuffer;

    #@17
    invoke-direct {v0}, Ljava/util/stream/SpinedBuffer;-><init>()V

    #@1a
    iput-object v0, p0, Ljava/util/stream/Streams$StreamBuilderImpl;->buffer:Ljava/util/stream/SpinedBuffer;

    #@1c
    .line 366
    iget-object v0, p0, Ljava/util/stream/Streams$StreamBuilderImpl;->buffer:Ljava/util/stream/SpinedBuffer;

    #@1e
    iget-object v1, p0, Ljava/util/stream/Streams$StreamBuilderImpl;->first:Ljava/lang/Object;

    #@20
    invoke-virtual {v0, v1}, Ljava/util/stream/SpinedBuffer;->accept(Ljava/lang/Object;)V

    #@23
    .line 367
    iget v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    #@25
    add-int/lit8 v0, v0, 0x1

    #@27
    iput v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    #@29
    .line 370
    :cond_1
    iget-object v0, p0, Ljava/util/stream/Streams$StreamBuilderImpl;->buffer:Ljava/util/stream/SpinedBuffer;

    #@2b
    invoke-virtual {v0, p1}, Ljava/util/stream/SpinedBuffer;->accept(Ljava/lang/Object;)V

    #@2e
    goto :goto_0

    #@2f
    .line 373
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    #@31
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@34
    throw v0
.end method

.method public add(Ljava/lang/Object;)Ljava/util/stream/Stream$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/stream/Stream$Builder",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 378
    .local p0, "this":Ljava/util/stream/Streams$StreamBuilderImpl;, "Ljava/util/stream/Streams$StreamBuilderImpl<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Ljava/util/stream/Streams$StreamBuilderImpl;->accept(Ljava/lang/Object;)V

    #@3
    .line 379
    return-object p0
.end method

.method public build()Ljava/util/stream/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/Streams$StreamBuilderImpl;, "Ljava/util/stream/Streams$StreamBuilderImpl<TT;>;"
    const/4 v2, 0x0

    #@1
    .line 384
    iget v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    #@3
    .line 385
    .local v0, "c":I
    if-ltz v0, :cond_1

    #@5
    .line 387
    iget v1, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    #@7
    neg-int v1, v1

    #@8
    add-int/lit8 v1, v1, -0x1

    #@a
    iput v1, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    #@c
    .line 390
    const/4 v1, 0x2

    #@d
    if-ge v0, v1, :cond_0

    #@f
    invoke-static {p0, v2}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    #@12
    move-result-object v1

    #@13
    :goto_0
    return-object v1

    #@14
    :cond_0
    iget-object v1, p0, Ljava/util/stream/Streams$StreamBuilderImpl;->buffer:Ljava/util/stream/SpinedBuffer;

    #@16
    invoke-virtual {v1}, Ljava/util/stream/SpinedBuffer;->spliterator()Ljava/util/Spliterator;

    #@19
    move-result-object v1

    #@1a
    invoke-static {v1, v2}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    #@1d
    move-result-object v1

    #@1e
    goto :goto_0

    #@1f
    .line 393
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    #@21
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    #@24
    throw v1
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 416
    .local p0, "this":Ljava/util/stream/Streams$StreamBuilderImpl;, "Ljava/util/stream/Streams$StreamBuilderImpl<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 418
    iget v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    #@5
    const/4 v1, -0x2

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 419
    iget-object v0, p0, Ljava/util/stream/Streams$StreamBuilderImpl;->first:Ljava/lang/Object;

    #@a
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@d
    .line 420
    const/4 v0, -0x1

    #@e
    iput v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    #@10
    .line 415
    :cond_0
    return-void
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 402
    .local p0, "this":Ljava/util/stream/Streams$StreamBuilderImpl;, "Ljava/util/stream/Streams$StreamBuilderImpl<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 404
    iget v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    #@5
    const/4 v1, -0x2

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 405
    iget-object v0, p0, Ljava/util/stream/Streams$StreamBuilderImpl;->first:Ljava/lang/Object;

    #@a
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@d
    .line 406
    const/4 v0, -0x1

    #@e
    iput v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    #@10
    .line 407
    const/4 v0, 0x1

    #@11
    return v0

    #@12
    .line 410
    :cond_0
    const/4 v0, 0x0

    #@13
    return v0
.end method
