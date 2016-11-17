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
        "Ljava/util/Spliterator",
        "<TE;>;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field final lastSpineElementFence:I

.field final lastSpineIndex:I

.field splChunk:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field splElementIndex:I

.field splSpineIndex:I

.field final synthetic this$0:Ljava/util/stream/SpinedBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Ljava/util/stream/SpinedBuffer$1Splitr;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Ljava/util/stream/SpinedBuffer$1Splitr;->-assertionsDisabled:Z

    #@b
    .line 281
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method constructor <init>(Ljava/util/stream/SpinedBuffer;IIII)V
    .locals 3
    .param p2, "firstSpineIndex"    # I
    .param p3, "lastSpineIndex"    # I
    .param p4, "firstSpineElementIndex"    # I
    .param p5, "lastSpineElementFence"    # I

    #@0
    .prologue
    .local p1, "this$0":Ljava/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 302
    iput-object p1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->this$0:Ljava/util/stream/SpinedBuffer;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 304
    iput p2, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    #@9
    .line 305
    iput p3, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    #@b
    .line 306
    iput p4, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    #@d
    .line 307
    iput p5, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineElementFence:I

    #@f
    .line 308
    sget-boolean v2, Ljava/util/stream/SpinedBuffer$1Splitr;->-assertionsDisabled:Z

    #@11
    if-nez v2, :cond_2

    #@13
    iget-object v2, p1, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    #@15
    if-nez v2, :cond_0

    #@17
    if-nez p2, :cond_1

    #@19
    if-nez p3, :cond_1

    #@1b
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    #@1d
    new-instance v0, Ljava/lang/AssertionError;

    #@1f
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@22
    throw v0

    #@23
    :cond_1
    move v0, v1

    #@24
    goto :goto_0

    #@25
    .line 309
    :cond_2
    iget-object v0, p1, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    #@27
    if-nez v0, :cond_3

    #@29
    iget-object v0, p1, Ljava/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    #@2b
    :goto_1
    iput-object v0, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splChunk:[Ljava/lang/Object;

    #@2d
    .line 303
    return-void

    #@2e
    .line 309
    :cond_3
    iget-object v0, p1, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    #@30
    aget-object v0, v0, p2

    #@32
    goto :goto_1
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    #@0
    .prologue
    .line 324
    const/16 v0, 0x4050

    #@2
    return v0
.end method

.method public estimateSize()J
    .locals 4

    #@0
    .prologue
    .line 314
    iget v0, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    #@2
    iget v1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 315
    iget v0, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineElementFence:I

    #@8
    int-to-long v0, v0

    #@9
    iget v2, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    #@b
    int-to-long v2, v2

    #@c
    sub-long/2addr v0, v2

    #@d
    .line 314
    :goto_0
    return-wide v0

    #@e
    .line 317
    :cond_0
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->this$0:Ljava/util/stream/SpinedBuffer;

    #@10
    iget-object v0, v0, Ljava/util/stream/AbstractSpinedBuffer;->priorElementCount:[J

    #@12
    iget v1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    #@14
    aget-wide v0, v0, v1

    #@16
    iget v2, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineElementFence:I

    #@18
    int-to-long v2, v2

    #@19
    add-long/2addr v0, v2

    #@1a
    .line 319
    iget-object v2, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->this$0:Ljava/util/stream/SpinedBuffer;

    #@1c
    iget-object v2, v2, Ljava/util/stream/AbstractSpinedBuffer;->priorElementCount:[J

    #@1e
    iget v3, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    #@20
    aget-wide v2, v2, v3

    #@22
    .line 317
    sub-long/2addr v0, v2

    #@23
    .line 319
    iget v2, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    #@25
    int-to-long v2, v2

    #@26
    .line 317
    sub-long/2addr v0, v2

    #@27
    goto :goto_0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 348
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 350
    iget v4, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    #@5
    iget v5, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    #@7
    if-lt v4, v5, :cond_0

    #@9
    .line 351
    iget v4, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    #@b
    iget v5, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    #@d
    if-ne v4, v5, :cond_5

    #@f
    iget v4, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    #@11
    iget v5, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineElementFence:I

    #@13
    if-ge v4, v5, :cond_5

    #@15
    .line 352
    :cond_0
    iget v2, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    #@17
    .line 354
    .local v2, "i":I
    iget v3, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    #@19
    .local v3, "sp":I
    :goto_0
    iget v4, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    #@1b
    if-ge v3, v4, :cond_2

    #@1d
    .line 355
    iget-object v4, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->this$0:Ljava/util/stream/SpinedBuffer;

    #@1f
    iget-object v4, v4, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    #@21
    aget-object v0, v4, v3

    #@23
    .line 356
    .local v0, "chunk":[Ljava/lang/Object;, "[TE;"
    :goto_1
    array-length v4, v0

    #@24
    if-ge v2, v4, :cond_1

    #@26
    .line 357
    aget-object v4, v0, v2

    #@28
    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@2b
    .line 356
    add-int/lit8 v2, v2, 0x1

    #@2d
    goto :goto_1

    #@2e
    .line 359
    :cond_1
    const/4 v2, 0x0

    #@2f
    .line 354
    add-int/lit8 v3, v3, 0x1

    #@31
    goto :goto_0

    #@32
    .line 362
    .end local v0    # "chunk":[Ljava/lang/Object;, "[TE;"
    :cond_2
    iget v4, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    #@34
    iget v5, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    #@36
    if-ne v4, v5, :cond_3

    #@38
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splChunk:[Ljava/lang/Object;

    #@3a
    .line 363
    .restart local v0    # "chunk":[Ljava/lang/Object;, "[TE;"
    :goto_2
    iget v1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineElementFence:I

    #@3c
    .line 364
    .local v1, "hElementIndex":I
    :goto_3
    if-ge v2, v1, :cond_4

    #@3e
    .line 365
    aget-object v4, v0, v2

    #@40
    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@43
    .line 364
    add-int/lit8 v2, v2, 0x1

    #@45
    goto :goto_3

    #@46
    .line 362
    .end local v0    # "chunk":[Ljava/lang/Object;, "[TE;"
    .end local v1    # "hElementIndex":I
    :cond_3
    iget-object v4, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->this$0:Ljava/util/stream/SpinedBuffer;

    #@48
    iget-object v4, v4, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    #@4a
    iget v5, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    #@4c
    aget-object v0, v4, v5

    #@4e
    .restart local v0    # "chunk":[Ljava/lang/Object;, "[TE;"
    goto :goto_2

    #@4f
    .line 368
    .restart local v1    # "hElementIndex":I
    :cond_4
    iget v4, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    #@51
    iput v4, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    #@53
    .line 369
    iget v4, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineElementFence:I

    #@55
    iput v4, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    #@57
    .line 347
    .end local v0    # "chunk":[Ljava/lang/Object;, "[TE;"
    .end local v1    # "hElementIndex":I
    .end local v2    # "i":I
    .end local v3    # "sp":I
    :cond_5
    return-void
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    const/4 v3, 0x0

    #@1
    .line 329
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@4
    .line 331
    iget v0, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    #@6
    iget v1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    #@8
    if-lt v0, v1, :cond_0

    #@a
    .line 332
    iget v0, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    #@c
    iget v1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    #@e
    if-ne v0, v1, :cond_2

    #@10
    iget v0, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    #@12
    iget v1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineElementFence:I

    #@14
    if-ge v0, v1, :cond_2

    #@16
    .line 333
    :cond_0
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splChunk:[Ljava/lang/Object;

    #@18
    iget v1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    #@1a
    add-int/lit8 v2, v1, 0x1

    #@1c
    iput v2, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    #@1e
    aget-object v0, v0, v1

    #@20
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@23
    .line 335
    iget v0, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    #@25
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splChunk:[Ljava/lang/Object;

    #@27
    array-length v1, v1

    #@28
    if-ne v0, v1, :cond_1

    #@2a
    .line 336
    iput v3, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    #@2c
    .line 337
    iget v0, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    #@2e
    add-int/lit8 v0, v0, 0x1

    #@30
    iput v0, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    #@32
    .line 338
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->this$0:Ljava/util/stream/SpinedBuffer;

    #@34
    iget-object v0, v0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    #@36
    if-eqz v0, :cond_1

    #@38
    iget v0, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    #@3a
    iget v1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    #@3c
    if-gt v0, v1, :cond_1

    #@3e
    .line 339
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->this$0:Ljava/util/stream/SpinedBuffer;

    #@40
    iget-object v0, v0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    #@42
    iget v1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    #@44
    aget-object v0, v0, v1

    #@46
    iput-object v0, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splChunk:[Ljava/lang/Object;

    #@48
    .line 341
    :cond_1
    const/4 v0, 0x1

    #@49
    return v0

    #@4a
    .line 343
    :cond_2
    return v3
.end method

.method public trySplit()Ljava/util/Spliterator;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    .line 375
    iget v1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    #@4
    iget v2, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    #@6
    if-ge v1, v2, :cond_0

    #@8
    .line 377
    new-instance v0, Ljava/util/stream/SpinedBuffer$1Splitr;

    #@a
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->this$0:Ljava/util/stream/SpinedBuffer;

    #@c
    iget v2, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    #@e
    iget v3, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    #@10
    add-int/lit8 v3, v3, -0x1

    #@12
    .line 378
    iget v4, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    #@14
    iget-object v5, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->this$0:Ljava/util/stream/SpinedBuffer;

    #@16
    iget-object v5, v5, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    #@18
    iget v7, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    #@1a
    add-int/lit8 v7, v7, -0x1

    #@1c
    aget-object v5, v5, v7

    #@1e
    array-length v5, v5

    #@1f
    .line 377
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/SpinedBuffer$1Splitr;-><init>(Ljava/util/stream/SpinedBuffer;IIII)V

    #@22
    .line 380
    .local v0, "ret":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TE;>;"
    iget v1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    #@24
    iput v1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    #@26
    .line 381
    iput v8, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    #@28
    .line 382
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->this$0:Ljava/util/stream/SpinedBuffer;

    #@2a
    iget-object v1, v1, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    #@2c
    iget v2, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    #@2e
    aget-object v1, v1, v2

    #@30
    iput-object v1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splChunk:[Ljava/lang/Object;

    #@32
    .line 383
    return-object v0

    #@33
    .line 385
    .end local v0    # "ret":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TE;>;"
    :cond_0
    iget v1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    #@35
    iget v2, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    #@37
    if-ne v1, v2, :cond_2

    #@39
    .line 386
    iget v1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->lastSpineElementFence:I

    #@3b
    iget v2, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    #@3d
    sub-int/2addr v1, v2

    #@3e
    div-int/lit8 v6, v1, 0x2

    #@40
    .line 387
    .local v6, "t":I
    if-nez v6, :cond_1

    #@42
    .line 388
    return-object v3

    #@43
    .line 390
    :cond_1
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splChunk:[Ljava/lang/Object;

    #@45
    iget v2, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    #@47
    iget v3, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    #@49
    add-int/2addr v3, v6

    #@4a
    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->spliterator([Ljava/lang/Object;II)Ljava/util/Spliterator;

    #@4d
    move-result-object v0

    #@4e
    .line 391
    .restart local v0    # "ret":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TE;>;"
    iget v1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    #@50
    add-int/2addr v1, v6

    #@51
    iput v1, p0, Ljava/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    #@53
    .line 392
    return-object v0

    #@54
    .line 396
    .end local v0    # "ret":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TE;>;"
    .end local v6    # "t":I
    :cond_2
    return-object v3
.end method
