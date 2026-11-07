.class Ljava/util/stream/SpinedBuffer$1Splitr;
.super Ljava/lang/Object;
.source "SpinedBuffer.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/SpinedBuffer;->spliterator()Ljava/util/Spliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Splitr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field final blacklist lastSpineElementFence:I

.field final blacklist lastSpineIndex:I

.field blacklist splChunk:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field blacklist splElementIndex:I

.field blacklist splSpineIndex:I

.field final synthetic blacklist this$0:Ljava/util/stream/SpinedBuffer;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 284
    const-class v0, Ljava/util/stream/SpinedBuffer;

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/stream/SpinedBuffer;IIII)V
    .registers 7
    .param p1, "this$0"    # Ljava/util/stream/SpinedBuffer;
    .param p2, "firstSpineIndex"    # I
    .param p3, "lastSpineIndex"    # I
    .param p4, "firstSpineElementIndex"    # I
    .param p5, "lastSpineElementFence"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 306
    .local p0, "this":Ljava/util/stream/SpinedBuffer$1Splitr;, "Ljava/util/stream/SpinedBuffer$1Splitr;"
    iput-object p1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->this$0:Ljava/util/stream/SpinedBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    iput p2, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    .line 308
    iput p3, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    .line 309
    iput p4, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    .line 310
    iput p5, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineElementFence:I

    .line 311
    nop

    .line 312
    iget-object v0, p1, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    if-nez v0, :cond_15

    iget-object v0, p1, Ljava/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    goto :goto_19

    :cond_15
    iget-object v0, p1, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    aget-object v0, v0, p2

    :goto_19
    iput-object v0, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splChunk:[Ljava/lang/Object;

    .line 313
    return-void
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 327
    .local p0, "this":Ljava/util/stream/SpinedBuffer$1Splitr;, "Ljava/util/stream/SpinedBuffer$1Splitr;"
    const/16 v0, 0x4050

    return v0
.end method

.method public whitelist test-api estimateSize()J
    .registers 5

    .line 317
    .local p0, "this":Ljava/util/stream/SpinedBuffer$1Splitr;, "Ljava/util/stream/SpinedBuffer$1Splitr;"
    iget v0, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    iget v1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    if-ne v0, v1, :cond_e

    .line 318
    iget v0, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineElementFence:I

    int-to-long v0, v0

    iget v2, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto :goto_27

    .line 322
    :cond_e
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->this$0:Ljava/util/stream/SpinedBuffer;

    iget-object v0, v0, Ljava/util/stream/SpinedBuffer;->priorElementCount:[J

    iget v1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    aget-wide v0, v0, v1

    iget v2, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineElementFence:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-object v2, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->this$0:Ljava/util/stream/SpinedBuffer;

    iget-object v2, v2, Ljava/util/stream/SpinedBuffer;->priorElementCount:[J

    iget v3, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    aget-wide v2, v2, v3

    sub-long/2addr v0, v2

    iget v2, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 317
    :goto_27
    return-wide v0
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 351
    .local p0, "this":Ljava/util/stream/SpinedBuffer$1Splitr;, "Ljava/util/stream/SpinedBuffer$1Splitr;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    iget v0, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    iget v1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    if-lt v0, v1, :cond_15

    iget v0, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    iget v1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    if-ne v0, v1, :cond_57

    iget v0, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    iget v1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineElementFence:I

    if-ge v0, v1, :cond_57

    .line 355
    :cond_15
    iget v0, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    .line 357
    .local v0, "i":I
    iget v1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    .local v1, "sp":I
    :goto_19
    iget v2, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    if-ge v1, v2, :cond_32

    .line 358
    iget-object v2, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->this$0:Ljava/util/stream/SpinedBuffer;

    iget-object v2, v2, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    aget-object v2, v2, v1

    .line 359
    .local v2, "chunk":[Ljava/lang/Object;, "[TE;"
    :goto_23
    array-length v3, v2

    if-ge v0, v3, :cond_2e

    .line 360
    aget-object v3, v2, v0

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 359
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 362
    :cond_2e
    const/4 v0, 0x0

    .line 357
    .end local v2    # "chunk":[Ljava/lang/Object;, "[TE;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 365
    .end local v1    # "sp":I
    :cond_32
    iget v1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    iget v2, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    if-ne v1, v2, :cond_3b

    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splChunk:[Ljava/lang/Object;

    goto :goto_43

    :cond_3b
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->this$0:Ljava/util/stream/SpinedBuffer;

    iget-object v1, v1, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    iget v2, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    aget-object v1, v1, v2

    .line 366
    .local v1, "chunk":[Ljava/lang/Object;, "[TE;"
    :goto_43
    iget v2, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineElementFence:I

    .line 367
    .local v2, "hElementIndex":I
    :goto_45
    if-ge v0, v2, :cond_4f

    .line 368
    aget-object v3, v1, v0

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 367
    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    .line 371
    :cond_4f
    iget v3, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    iput v3, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    .line 372
    iget v3, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineElementFence:I

    iput v3, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    .line 374
    .end local v0    # "i":I
    .end local v1    # "chunk":[Ljava/lang/Object;, "[TE;"
    .end local v2    # "hElementIndex":I
    :cond_57
    return-void
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 332
    .local p0, "this":Ljava/util/stream/SpinedBuffer$1Splitr;, "Ljava/util/stream/SpinedBuffer$1Splitr;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    iget v0, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    iget v1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_18

    iget v0, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    iget v1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    if-ne v0, v1, :cond_17

    iget v0, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    iget v1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineElementFence:I

    if-ge v0, v1, :cond_17

    goto :goto_18

    .line 346
    :cond_17
    return v2

    .line 336
    :cond_18
    :goto_18
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splChunk:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 338
    iget v0, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splChunk:[Ljava/lang/Object;

    array-length v1, v1

    const/4 v3, 0x1

    if-ne v0, v1, :cond_4a

    .line 339
    iput v2, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    .line 340
    iget v0, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    add-int/2addr v0, v3

    iput v0, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    .line 341
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->this$0:Ljava/util/stream/SpinedBuffer;

    iget-object v0, v0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    if-eqz v0, :cond_4a

    iget v0, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    iget v1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    if-gt v0, v1, :cond_4a

    .line 342
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->this$0:Ljava/util/stream/SpinedBuffer;

    iget-object v0, v0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    iget v1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splChunk:[Ljava/lang/Object;

    .line 344
    :cond_4a
    return v3
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 378
    .local p0, "this":Ljava/util/stream/SpinedBuffer$1Splitr;, "Ljava/util/stream/SpinedBuffer$1Splitr;"
    iget v0, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    iget v1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    if-ge v0, v1, :cond_32

    .line 380
    new-instance v2, Ljava/util/stream/SpinedBuffer$1Splitr;

    iget-object v3, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->this$0:Ljava/util/stream/SpinedBuffer;

    iget v4, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    iget v0, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    add-int/lit8 v5, v0, -0x1

    iget v6, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->this$0:Ljava/util/stream/SpinedBuffer;

    iget-object v0, v0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    iget v1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    array-length v7, v0

    invoke-direct/range {v2 .. v7}, Ljava/util/stream/SpinedBuffer$1Splitr;-><init>(Ljava/util/stream/SpinedBuffer;IIII)V

    .line 383
    .local v2, "ret":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TE;>;"
    iget v0, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    iput v0, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    .line 384
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    .line 385
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->this$0:Ljava/util/stream/SpinedBuffer;

    iget-object v0, v0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    iget v1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splChunk:[Ljava/lang/Object;

    .line 386
    return-object v2

    .line 388
    .end local v2    # "ret":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TE;>;"
    :cond_32
    iget v0, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    iget v1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_54

    .line 389
    iget v0, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineElementFence:I

    iget v1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 390
    .local v0, "t":I
    if-nez v0, :cond_43

    .line 391
    return-object v2

    .line 393
    :cond_43
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splChunk:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    iget v3, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    add-int/2addr v3, v0

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->spliterator([Ljava/lang/Object;II)Ljava/util/Spliterator;

    move-result-object v1

    .line 394
    .local v1, "ret":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TE;>;"
    iget v2, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    add-int/2addr v2, v0

    iput v2, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    .line 395
    return-object v1

    .line 399
    .end local v0    # "t":I
    .end local v1    # "ret":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TE;>;"
    :cond_54
    return-object v2
.end method
