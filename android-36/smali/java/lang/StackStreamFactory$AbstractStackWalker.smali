.class abstract Ljava/lang/StackStreamFactory$AbstractStackWalker;
.super Ljava/lang/Object;
.source "StackStreamFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/StackStreamFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractStackWalker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/StackStreamFactory$AbstractStackWalker$LibcoreAnchor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected blacklist anchor:Ljava/lang/Object;

.field protected blacklist depth:I

.field protected blacklist frameBuffer:Ljava/lang/StackStreamFactory$FrameBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/StackStreamFactory$FrameBuffer<",
            "+TT;>;"
        }
    .end annotation
.end field

.field protected final blacklist maxDepth:I

.field protected final blacklist mode:J

.field protected final blacklist thread:Ljava/lang/Thread;

.field protected final blacklist walker:Ljava/lang/StackWalker;


# direct methods
.method protected constructor blacklist <init>(Ljava/lang/StackWalker;I)V
    .registers 4
    .param p1, "walker"    # Ljava/lang/StackWalker;
    .param p2, "mode"    # I

    .line 134
    .local p0, "this":Ljava/lang/StackStreamFactory$AbstractStackWalker;, "Ljava/lang/StackStreamFactory$AbstractStackWalker<TR;TT;>;"
    const v0, 0x7fffffff

    invoke-direct {p0, p1, p2, v0}, Ljava/lang/StackStreamFactory$AbstractStackWalker;-><init>(Ljava/lang/StackWalker;II)V

    .line 135
    return-void
.end method

.method protected constructor blacklist <init>(Ljava/lang/StackWalker;II)V
    .registers 6
    .param p1, "walker"    # Ljava/lang/StackWalker;
    .param p2, "mode"    # I
    .param p3, "maxDepth"    # I

    .line 136
    .local p0, "this":Ljava/lang/StackStreamFactory$AbstractStackWalker;, "Ljava/lang/StackStreamFactory$AbstractStackWalker<TR;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/StackStreamFactory$AbstractStackWalker;->thread:Ljava/lang/Thread;

    .line 138
    invoke-direct {p0, p1, p2}, Ljava/lang/StackStreamFactory$AbstractStackWalker;->toStackWalkMode(Ljava/lang/StackWalker;I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Ljava/lang/StackStreamFactory$AbstractStackWalker;->mode:J

    .line 139
    iput-object p1, p0, Ljava/lang/StackStreamFactory$AbstractStackWalker;->walker:Ljava/lang/StackWalker;

    .line 140
    iput p3, p0, Ljava/lang/StackStreamFactory$AbstractStackWalker;->maxDepth:I

    .line 141
    const/4 v0, 0x0

    iput v0, p0, Ljava/lang/StackStreamFactory$AbstractStackWalker;->depth:I

    .line 142
    return-void
.end method

.method private blacklist beginStackWalk()Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 378
    .local p0, "this":Ljava/lang/StackStreamFactory$AbstractStackWalker;, "Ljava/lang/StackStreamFactory$AbstractStackWalker<TR;TT;>;"
    invoke-virtual {p0}, Ljava/lang/StackStreamFactory$AbstractStackWalker;->initFrameBuffer()V

    .line 380
    iget-wide v1, p0, Ljava/lang/StackStreamFactory$AbstractStackWalker;->mode:J

    iget-object v0, p0, Ljava/lang/StackStreamFactory$AbstractStackWalker;->frameBuffer:Ljava/lang/StackStreamFactory$FrameBuffer;

    .line 381
    invoke-virtual {v0}, Ljava/lang/StackStreamFactory$FrameBuffer;->curBatchFrameCount()I

    move-result v4

    iget-object v0, p0, Ljava/lang/StackStreamFactory$AbstractStackWalker;->frameBuffer:Ljava/lang/StackStreamFactory$FrameBuffer;

    .line 382
    invoke-virtual {v0}, Ljava/lang/StackStreamFactory$FrameBuffer;->startIndex()I

    move-result v5

    iget-object v0, p0, Ljava/lang/StackStreamFactory$AbstractStackWalker;->frameBuffer:Ljava/lang/StackStreamFactory$FrameBuffer;

    .line 383
    invoke-virtual {v0}, Ljava/lang/StackStreamFactory$FrameBuffer;->frames()[Ljava/lang/Object;

    move-result-object v6

    .line 380
    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Ljava/lang/StackStreamFactory$AbstractStackWalker;->callStackWalk(JIII[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private blacklist callStackWalk(JIII[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16
    .param p1, "mode"    # J
    .param p3, "skipframes"    # I
    .param p4, "batchSize"    # I
    .param p5, "startIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIII[TT;)TR;"
        }
    .end annotation

    .line 429
    .local p0, "this":Ljava/lang/StackStreamFactory$AbstractStackWalker;, "Ljava/lang/StackStreamFactory$AbstractStackWalker<TR;TT;>;"
    .local p6, "frames":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0, p1, p2, p6}, Ljava/lang/StackStreamFactory$AbstractStackWalker;->checkFrameType(J[Ljava/lang/Object;)V

    .line 430
    invoke-static {}, Ljava/lang/StackStreamFactory;->-$$Nest$smnativeGetStackAnchor()Ljava/lang/Object;

    move-result-object v7

    .line 431
    .local v7, "nativeAnchor":Ljava/lang/Object;
    const/4 v3, 0x0

    if-nez v7, :cond_b

    .line 432
    return-object v3

    .line 434
    :cond_b
    new-instance v4, Ljava/lang/StackStreamFactory$AbstractStackWalker$LibcoreAnchor;

    invoke-direct {v4, v7, v3}, Ljava/lang/StackStreamFactory$AbstractStackWalker$LibcoreAnchor;-><init>(Ljava/lang/Object;Ljava/lang/StackStreamFactory-IA;)V

    move-object v3, v4

    .line 435
    .local v3, "anchor":Ljava/lang/Object;
    move-object v0, p0

    move-wide v1, p1

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Ljava/lang/StackStreamFactory$AbstractStackWalker;->fetchStackFrames(JLjava/lang/Object;II[Ljava/lang/Object;)I

    move-result v8

    .line 436
    move-object v1, v3

    .end local v3    # "anchor":Ljava/lang/Object;
    .local v1, "anchor":Ljava/lang/Object;
    .local v8, "endIndex":I
    move v2, p3

    move v3, p4

    move v4, p5

    move v5, v8

    .end local v8    # "endIndex":I
    .local v5, "endIndex":I
    invoke-direct/range {v0 .. v5}, Ljava/lang/StackStreamFactory$AbstractStackWalker;->doStackWalk(Ljava/lang/Object;IIII)Ljava/lang/Object;

    move-result-object v6

    return-object v6
.end method

.method private blacklist checkFrameType(J[Ljava/lang/Object;)V
    .registers 8
    .param p1, "mode"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[TT;)V"
        }
    .end annotation

    .line 459
    .local p0, "this":Ljava/lang/StackStreamFactory$AbstractStackWalker;, "Ljava/lang/StackStreamFactory$AbstractStackWalker<TR;TT;>;"
    .local p3, "frames":[Ljava/lang/Object;, "[TT;"
    instance-of v0, p3, [Ljava/lang/StackFrameInfo;

    if-eqz v0, :cond_5

    .line 460
    return-void

    .line 463
    :cond_5
    const-wide/16 v0, 0x2

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_13

    instance-of v0, p3, [Ljava/lang/Class;

    if-eqz v0, :cond_13

    .line 464
    return-void

    .line 466
    :cond_13
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Frame array type isn\'t supported yet:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 467
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist close()V
    .registers 2

    .line 238
    .local p0, "this":Ljava/lang/StackStreamFactory$AbstractStackWalker;, "Ljava/lang/StackStreamFactory$AbstractStackWalker<TR;TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/lang/StackStreamFactory$AbstractStackWalker;->anchor:Ljava/lang/Object;

    .line 239
    return-void
.end method

.method private blacklist doStackWalk(Ljava/lang/Object;IIII)Ljava/lang/Object;
    .registers 10
    .param p1, "anchor"    # Ljava/lang/Object;
    .param p2, "skipFrames"    # I
    .param p3, "batchSize"    # I
    .param p4, "bufStartIndex"    # I
    .param p5, "bufEndIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "IIII)TR;"
        }
    .end annotation

    .line 303
    .local p0, "this":Ljava/lang/StackStreamFactory$AbstractStackWalker;, "Ljava/lang/StackStreamFactory$AbstractStackWalker<TR;TT;>;"
    sget-object v0, Ljava/lang/StackStreamFactory$WalkerState;->NEW:Ljava/lang/StackStreamFactory$WalkerState;

    invoke-virtual {p0, v0}, Ljava/lang/StackStreamFactory$AbstractStackWalker;->checkState(Ljava/lang/StackStreamFactory$WalkerState;)V

    .line 305
    iget-object v0, p0, Ljava/lang/StackStreamFactory$AbstractStackWalker;->frameBuffer:Ljava/lang/StackStreamFactory$FrameBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StackStreamFactory$FrameBuffer;->check(I)V

    .line 307
    sget-boolean v0, Ljava/lang/StackStreamFactory;->isDebug:Z

    if-eqz v0, :cond_25

    .line 308
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 309
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 308
    const-string v2, "doStackWalk: skip %d start %d end %d%n"

    invoke-virtual {v0, v2, v1}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 312
    :cond_25
    iput-object p1, p0, Ljava/lang/StackStreamFactory$AbstractStackWalker;->anchor:Ljava/lang/Object;

    .line 313
    iget-object v0, p0, Ljava/lang/StackStreamFactory$AbstractStackWalker;->frameBuffer:Ljava/lang/StackStreamFactory$FrameBuffer;

    iget v1, p0, Ljava/lang/StackStreamFactory$AbstractStackWalker;->depth:I

    invoke-virtual {v0, v1, p4, p5}, Ljava/lang/StackStreamFactory$FrameBuffer;->setBatch(III)V

    .line 316
    invoke-virtual {p0}, Ljava/lang/StackStreamFactory$AbstractStackWalker;->consumeFrames()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private blacklist fetchStackFrames(I)I
    .registers 10
    .param p1, "batchSize"    # I

    .line 393
    .local p0, "this":Ljava/lang/StackStreamFactory$AbstractStackWalker;, "Ljava/lang/StackStreamFactory$AbstractStackWalker<TR;TT;>;"
    iget-object v0, p0, Ljava/lang/StackStreamFactory$AbstractStackWalker;->frameBuffer:Ljava/lang/StackStreamFactory$FrameBuffer;

    invoke-virtual {v0}, Ljava/lang/StackStreamFactory$FrameBuffer;->startIndex()I

    move-result v6

    .line 394
    .local v6, "startIndex":I
    iget-object v0, p0, Ljava/lang/StackStreamFactory$AbstractStackWalker;->frameBuffer:Ljava/lang/StackStreamFactory$FrameBuffer;

    invoke-virtual {v0, v6, p1}, Ljava/lang/StackStreamFactory$FrameBuffer;->resize(II)V

    .line 396
    iget-wide v2, p0, Ljava/lang/StackStreamFactory$AbstractStackWalker;->mode:J

    iget-object v4, p0, Ljava/lang/StackStreamFactory$AbstractStackWalker;->anchor:Ljava/lang/Object;

    iget-object v0, p0, Ljava/lang/StackStreamFactory$AbstractStackWalker;->frameBuffer:Ljava/lang/StackStreamFactory$FrameBuffer;

    .line 398
    invoke-virtual {v0}, Ljava/lang/StackStreamFactory$FrameBuffer;->frames()[Ljava/lang/Object;

    move-result-object v7

    .line 396
    move-object v1, p0

    move v5, p1

    .end local p1    # "batchSize":I
    .local v5, "batchSize":I
    invoke-direct/range {v1 .. v7}, Ljava/lang/StackStreamFactory$AbstractStackWalker;->fetchStackFrames(JLjava/lang/Object;II[Ljava/lang/Object;)I

    move-result p1

    .line 399
    .local p1, "endIndex":I
    sget-boolean v0, Ljava/lang/StackStreamFactory;->isDebug:Z

    if-eqz v0, :cond_3c

    .line 400
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 401
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v1, Ljava/lang/StackStreamFactory$AbstractStackWalker;->frameBuffer:Ljava/lang/StackStreamFactory$FrameBuffer;

    invoke-virtual {v3}, Ljava/lang/StackStreamFactory$FrameBuffer;->startIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 400
    const-string v3, "  more stack walk requesting %d got %d to %d frames%n"

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 403
    :cond_3c
    sub-int v0, p1, v6

    .line 404
    .local v0, "numFrames":I
    if-nez v0, :cond_46

    .line 405
    iget-object v2, v1, Ljava/lang/StackStreamFactory$AbstractStackWalker;->frameBuffer:Ljava/lang/StackStreamFactory$FrameBuffer;

    invoke-virtual {v2}, Ljava/lang/StackStreamFactory$FrameBuffer;->freeze()V

    goto :goto_4d

    .line 407
    :cond_46
    iget-object v2, v1, Ljava/lang/StackStreamFactory$AbstractStackWalker;->frameBuffer:Ljava/lang/StackStreamFactory$FrameBuffer;

    iget v3, v1, Ljava/lang/StackStreamFactory$AbstractStackWalker;->depth:I

    invoke-virtual {v2, v3, v6, p1}, Ljava/lang/StackStreamFactory$FrameBuffer;->setBatch(III)V

    .line 409
    :goto_4d
    return v0
.end method

.method private blacklist fetchStackFrames(JLjava/lang/Object;II[Ljava/lang/Object;)I
    .registers 15
    .param p1, "mode"    # J
    .param p3, "anchor"    # Ljava/lang/Object;
    .param p4, "batchSize"    # I
    .param p5, "startIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Object;",
            "II[TT;)I"
        }
    .end annotation

    .line 490
    .local p0, "this":Ljava/lang/StackStreamFactory$AbstractStackWalker;, "Ljava/lang/StackStreamFactory$AbstractStackWalker<TR;TT;>;"
    .local p6, "frames":[Ljava/lang/Object;, "[TT;"
    const-string v0, "internal anchor can\'t be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 491
    invoke-direct {p0, p1, p2, p6}, Ljava/lang/StackStreamFactory$AbstractStackWalker;->checkFrameType(J[Ljava/lang/Object;)V

    .line 492
    move-object v0, p3

    check-cast v0, Ljava/lang/StackStreamFactory$AbstractStackWalker$LibcoreAnchor;

    .line 493
    .local v0, "stacks":Ljava/lang/StackStreamFactory$AbstractStackWalker$LibcoreAnchor;
    invoke-static {v0}, Ljava/lang/StackStreamFactory$AbstractStackWalker$LibcoreAnchor;->-$$Nest$fgetstackLevel(Ljava/lang/StackStreamFactory$AbstractStackWalker$LibcoreAnchor;)I

    move-result v4

    .line 494
    .local v4, "startTraceIndex":I
    invoke-static {v0}, Ljava/lang/StackStreamFactory$AbstractStackWalker$LibcoreAnchor;->-$$Nest$fgetnativeAnchor(Ljava/lang/StackStreamFactory$AbstractStackWalker$LibcoreAnchor;)Ljava/lang/Object;

    move-result-object v3

    move-wide v1, p1

    move v5, p4

    move v6, p5

    move-object v7, p6

    .end local p1    # "mode":J
    .end local p4    # "batchSize":I
    .end local p5    # "startIndex":I
    .end local p6    # "frames":[Ljava/lang/Object;, "[TT;"
    .local v1, "mode":J
    .local v5, "batchSize":I
    .local v6, "startIndex":I
    .local v7, "frames":[Ljava/lang/Object;, "[TT;"
    invoke-static/range {v1 .. v7}, Ljava/lang/StackStreamFactory;->-$$Nest$smnativeFetchStackFrameInfo(JLjava/lang/Object;III[Ljava/lang/Object;)I

    move-result p1

    .line 497
    .local p1, "endIndex":I
    invoke-static {v0}, Ljava/lang/StackStreamFactory$AbstractStackWalker$LibcoreAnchor;->-$$Nest$fgetstackLevel(Ljava/lang/StackStreamFactory$AbstractStackWalker$LibcoreAnchor;)I

    move-result p2

    sub-int p4, p1, v6

    add-int/2addr p2, p4

    invoke-static {v0, p2}, Ljava/lang/StackStreamFactory$AbstractStackWalker$LibcoreAnchor;->-$$Nest$fputstackLevel(Ljava/lang/StackStreamFactory$AbstractStackWalker$LibcoreAnchor;I)V

    .line 498
    return p1
.end method

.method private blacklist getNextBatch()I
    .registers 6

    .line 323
    .local p0, "this":Ljava/lang/StackStreamFactory$AbstractStackWalker;, "Ljava/lang/StackStreamFactory$AbstractStackWalker<TR;TT;>;"
    iget v0, p0, Ljava/lang/StackStreamFactory$AbstractStackWalker;->maxDepth:I

    iget v1, p0, Ljava/lang/StackStreamFactory$AbstractStackWalker;->depth:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/lang/StackStreamFactory$AbstractStackWalker;->getNextBatchSize()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 324
    .local v0, "nextBatchSize":I
    iget-object v1, p0, Ljava/lang/StackStreamFactory$AbstractStackWalker;->frameBuffer:Ljava/lang/StackStreamFactory$FrameBuffer;

    invoke-virtual {v1}, Ljava/lang/StackStreamFactory$FrameBuffer;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1d

    if-gtz v0, :cond_18

    goto :goto_1d

    .line 332
    :cond_18
    invoke-direct {p0, v0}, Ljava/lang/StackStreamFactory$AbstractStackWalker;->fetchStackFrames(I)I

    move-result v1

    return v1

    .line 325
    :cond_1d
    :goto_1d
    sget-boolean v1, Ljava/lang/StackStreamFactory;->isDebug:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2b

    .line 326
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "  more stack walk done%n"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 328
    :cond_2b
    iget-object v1, p0, Ljava/lang/StackStreamFactory$AbstractStackWalker;->frameBuffer:Ljava/lang/StackStreamFactory$FrameBuffer;

    invoke-virtual {v1}, Ljava/lang/StackStreamFactory$FrameBuffer;->freeze()V

    .line 329
    return v2
.end method

.method private blacklist skipReflectionFrames()Z
    .registers 3

    .line 258
    .local p0, "this":Ljava/lang/StackStreamFactory$AbstractStackWalker;, "Ljava/lang/StackStreamFactory$AbstractStackWalker<TR;TT;>;"
    iget-object v0, p0, Ljava/lang/StackStreamFactory$AbstractStackWalker;->walker:Ljava/lang/StackWalker;

    sget-object v1, Ljava/lang/StackWalker$Option;->SHOW_REFLECT_FRAMES:Ljava/lang/StackWalker$Option;

    invoke-virtual {v0, v1}, Ljava/lang/StackWalker;->hasOption(Ljava/lang/StackWalker$Option;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Ljava/lang/StackStreamFactory$AbstractStackWalker;->walker:Ljava/lang/StackWalker;

    sget-object v1, Ljava/lang/StackWalker$Option;->SHOW_HIDDEN_FRAMES:Ljava/lang/StackWalker$Option;

    .line 259
    invoke-virtual {v0, v1}, Ljava/lang/StackWalker;->hasOption(Ljava/lang/StackWalker$Option;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 258
    :goto_17
    return v0
.end method

.method private blacklist toStackWalkMode(Ljava/lang/StackWalker;I)I
    .registers 6
    .param p1, "walker"    # Ljava/lang/StackWalker;
    .param p2, "mode"    # I

    .line 145
    .local p0, "this":Ljava/lang/StackStreamFactory$AbstractStackWalker;, "Ljava/lang/StackStreamFactory$AbstractStackWalker<TR;TT;>;"
    move v0, p2

    .line 146
    .local v0, "newMode":I
    sget-object v1, Ljava/lang/StackWalker$Option;->SHOW_HIDDEN_FRAMES:Ljava/lang/StackWalker$Option;

    invoke-virtual {p1, v1}, Ljava/lang/StackWalker;->hasOption(Ljava/lang/StackWalker$Option;)Z

    move-result v1

    if-eqz v1, :cond_10

    and-int/lit8 v1, p2, 0x2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_10

    .line 148
    or-int/lit8 v0, v0, 0x20

    .line 149
    :cond_10
    invoke-virtual {p1}, Ljava/lang/StackWalker;->hasLocalsOperandsOption()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 150
    or-int/lit16 v0, v0, 0x100

    .line 151
    :cond_18
    return v0
.end method


# virtual methods
.method protected abstract blacklist batchSize(I)I
.end method

.method final blacklist checkState(Ljava/lang/StackStreamFactory$WalkerState;)V
    .registers 5
    .param p1, "state"    # Ljava/lang/StackStreamFactory$WalkerState;

    .line 206
    .local p0, "this":Ljava/lang/StackStreamFactory$AbstractStackWalker;, "Ljava/lang/StackStreamFactory$AbstractStackWalker<TR;TT;>;"
    iget-object v0, p0, Ljava/lang/StackStreamFactory$AbstractStackWalker;->thread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_38

    .line 210
    invoke-virtual {p1}, Ljava/lang/StackStreamFactory$WalkerState;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_6a

    goto :goto_37

    .line 226
    :pswitch_10
    iget-object v0, p0, Ljava/lang/StackStreamFactory$AbstractStackWalker;->anchor:Ljava/lang/Object;

    if-nez v0, :cond_15

    goto :goto_37

    .line 227
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This stack stream is not closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :pswitch_1d
    iget-object v0, p0, Ljava/lang/StackStreamFactory$AbstractStackWalker;->anchor:Ljava/lang/Object;

    if-eqz v0, :cond_22

    goto :goto_37

    .line 221
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This stack stream is not valid for walking."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :pswitch_2a
    iget-object v0, p0, Ljava/lang/StackStreamFactory$AbstractStackWalker;->anchor:Ljava/lang/Object;

    if-nez v0, :cond_2f

    goto :goto_37

    .line 215
    :cond_2f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This stack stream is being reused."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :goto_37
    return-void

    .line 207
    :cond_38
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid thread walking this stack stream: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 208
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/lang/StackStreamFactory$AbstractStackWalker;->thread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_1d
        :pswitch_10
    .end packed-switch
.end method

.method protected abstract blacklist consumeFrames()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation
.end method

.method protected blacklist getNextBatchSize()I
    .registers 6

    .line 190
    .local p0, "this":Ljava/lang/StackStreamFactory$AbstractStackWalker;, "Ljava/lang/StackStreamFactory$AbstractStackWalker<TR;TT;>;"
    iget v0, p0, Ljava/lang/StackStreamFactory$AbstractStackWalker;->depth:I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Ljava/lang/StackStreamFactory$AbstractStackWalker;->frameBuffer:Ljava/lang/StackStreamFactory$FrameBuffer;

    invoke-virtual {v0}, Ljava/lang/StackStreamFactory$FrameBuffer;->curBatchFrameCount()I

    move-result v0

    .line 191
    .local v0, "lastBatchSize":I
    :goto_c
    invoke-virtual {p0, v0}, Ljava/lang/StackStreamFactory$AbstractStackWalker;->batchSize(I)I

    move-result v1

    .line 192
    .local v1, "nextBatchSize":I
    sget-boolean v2, Ljava/lang/StackStreamFactory;->isDebug:Z

    if-eqz v2, :cond_36

    .line 193
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "last batch size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " next batch size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 196
    :cond_36
    const/16 v2, 0x8

    if-lt v1, v2, :cond_3b

    move v2, v1

    :cond_3b
    return v2
.end method

.method final blacklist hasNext()Z
    .registers 2

    .line 361
    .local p0, "this":Ljava/lang/StackStreamFactory$AbstractStackWalker;, "Ljava/lang/StackStreamFactory$AbstractStackWalker<TR;TT;>;"
    invoke-virtual {p0}, Ljava/lang/StackStreamFactory$AbstractStackWalker;->peekFrame()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method protected abstract blacklist initFrameBuffer()V
.end method

.method final blacklist nextFrame()Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 346
    .local p0, "this":Ljava/lang/StackStreamFactory$AbstractStackWalker;, "Ljava/lang/StackStreamFactory$AbstractStackWalker<TR;TT;>;"
    invoke-virtual {p0}, Ljava/lang/StackStreamFactory$AbstractStackWalker;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    .line 347
    const/4 v0, 0x0

    return-object v0

    .line 350
    :cond_8
    iget-object v0, p0, Ljava/lang/StackStreamFactory$AbstractStackWalker;->frameBuffer:Ljava/lang/StackStreamFactory$FrameBuffer;

    invoke-virtual {v0}, Ljava/lang/StackStreamFactory$FrameBuffer;->next()Ljava/lang/Class;

    move-result-object v0

    .line 351
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget v1, p0, Ljava/lang/StackStreamFactory$AbstractStackWalker;->depth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/lang/StackStreamFactory$AbstractStackWalker;->depth:I

    .line 352
    return-object v0
.end method

.method final blacklist peekFrame()Ljava/lang/Class;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 268
    .local p0, "this":Ljava/lang/StackStreamFactory$AbstractStackWalker;, "Ljava/lang/StackStreamFactory$AbstractStackWalker<TR;TT;>;"
    nop

    :goto_1
    iget-object v0, p0, Ljava/lang/StackStreamFactory$AbstractStackWalker;->frameBuffer:Ljava/lang/StackStreamFactory$FrameBuffer;

    invoke-virtual {v0}, Ljava/lang/StackStreamFactory$FrameBuffer;->isActive()Z

    move-result v0

    if-eqz v0, :cond_66

    iget v0, p0, Ljava/lang/StackStreamFactory$AbstractStackWalker;->depth:I

    iget v1, p0, Ljava/lang/StackStreamFactory$AbstractStackWalker;->maxDepth:I

    if-ge v0, v1, :cond_66

    .line 269
    iget-object v0, p0, Ljava/lang/StackStreamFactory$AbstractStackWalker;->frameBuffer:Ljava/lang/StackStreamFactory$FrameBuffer;

    invoke-virtual {v0}, Ljava/lang/StackStreamFactory$FrameBuffer;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 271
    invoke-direct {p0}, Ljava/lang/StackStreamFactory$AbstractStackWalker;->getNextBatch()I

    goto :goto_1

    .line 273
    :cond_1b
    iget-object v0, p0, Ljava/lang/StackStreamFactory$AbstractStackWalker;->frameBuffer:Ljava/lang/StackStreamFactory$FrameBuffer;

    invoke-virtual {v0}, Ljava/lang/StackStreamFactory$FrameBuffer;->get()Ljava/lang/Class;

    move-result-object v0

    .line 274
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/StackStreamFactory$AbstractStackWalker;->skipReflectionFrames()Z

    move-result v1

    if-eqz v1, :cond_65

    invoke-static {v0}, Ljava/lang/StackStreamFactory;->-$$Nest$smisReflectionFrame(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 275
    sget-boolean v1, Ljava/lang/StackStreamFactory;->isDebug:Z

    if-eqz v1, :cond_59

    .line 276
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  skip: frame "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/lang/StackStreamFactory$AbstractStackWalker;->frameBuffer:Ljava/lang/StackStreamFactory$FrameBuffer;

    invoke-virtual {v3}, Ljava/lang/StackStreamFactory$FrameBuffer;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 278
    :cond_59
    iget-object v1, p0, Ljava/lang/StackStreamFactory$AbstractStackWalker;->frameBuffer:Ljava/lang/StackStreamFactory$FrameBuffer;

    invoke-virtual {v1}, Ljava/lang/StackStreamFactory$FrameBuffer;->next()Ljava/lang/Class;

    .line 279
    iget v1, p0, Ljava/lang/StackStreamFactory$AbstractStackWalker;->depth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/lang/StackStreamFactory$AbstractStackWalker;->depth:I

    .line 280
    goto :goto_1

    .line 282
    :cond_65
    return-object v0

    .line 286
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_66
    const/4 v0, 0x0

    return-object v0
.end method

.method final blacklist walk()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 246
    .local p0, "this":Ljava/lang/StackStreamFactory$AbstractStackWalker;, "Ljava/lang/StackStreamFactory$AbstractStackWalker<TR;TT;>;"
    sget-object v0, Ljava/lang/StackStreamFactory$WalkerState;->NEW:Ljava/lang/StackStreamFactory$WalkerState;

    invoke-virtual {p0, v0}, Ljava/lang/StackStreamFactory$AbstractStackWalker;->checkState(Ljava/lang/StackStreamFactory$WalkerState;)V

    .line 251
    :try_start_5
    invoke-direct {p0}, Ljava/lang/StackStreamFactory$AbstractStackWalker;->beginStackWalk()Ljava/lang/Object;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    .line 253
    invoke-direct {p0}, Ljava/lang/StackStreamFactory$AbstractStackWalker;->close()V

    .line 251
    return-object v0

    .line 253
    :catchall_d
    move-exception v0

    invoke-direct {p0}, Ljava/lang/StackStreamFactory$AbstractStackWalker;->close()V

    .line 254
    throw v0
.end method
