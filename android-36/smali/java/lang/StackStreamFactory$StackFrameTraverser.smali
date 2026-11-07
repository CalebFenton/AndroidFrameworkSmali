.class Ljava/lang/StackStreamFactory$StackFrameTraverser;
.super Ljava/lang/StackStreamFactory$AbstractStackWalker;
.source "StackStreamFactory.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/StackStreamFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StackFrameTraverser"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/StackStreamFactory$StackFrameTraverser$StackFrameBuffer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/StackStreamFactory$AbstractStackWalker<",
        "TT;",
        "Ljava/lang/StackFrameInfo;",
        ">;",
        "Ljava/util/Spliterator<",
        "Ljava/lang/StackWalker$StackFrame;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist CHARACTERISTICS:I = 0x410


# instance fields
.field final blacklist function:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "-",
            "Ljava/util/stream/Stream<",
            "Ljava/lang/StackWalker$StackFrame;",
            ">;+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 511
    invoke-static {}, Ljava/lang/StackStreamFactory;->-$$Nest$sfgetstackWalkImplClasses()Ljava/util/Set;

    move-result-object v0

    const-class v1, Ljava/lang/StackStreamFactory$StackFrameTraverser;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 512
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/StackWalker;Ljava/util/function/Function;)V
    .registers 4
    .param p1, "walker"    # Ljava/lang/StackWalker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StackWalker;",
            "Ljava/util/function/Function<",
            "-",
            "Ljava/util/stream/Stream<",
            "Ljava/lang/StackWalker$StackFrame;",
            ">;+TT;>;)V"
        }
    .end annotation

    .line 573
    .local p0, "this":Ljava/lang/StackStreamFactory$StackFrameTraverser;, "Ljava/lang/StackStreamFactory$StackFrameTraverser<TT;>;"
    .local p2, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<-Ljava/util/stream/Stream<Ljava/lang/StackWalker$StackFrame;>;+TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/lang/StackStreamFactory$StackFrameTraverser;-><init>(Ljava/lang/StackWalker;Ljava/util/function/Function;I)V

    .line 574
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/StackWalker;Ljava/util/function/Function;I)V
    .registers 4
    .param p1, "walker"    # Ljava/lang/StackWalker;
    .param p3, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StackWalker;",
            "Ljava/util/function/Function<",
            "-",
            "Ljava/util/stream/Stream<",
            "Ljava/lang/StackWalker$StackFrame;",
            ">;+TT;>;I)V"
        }
    .end annotation

    .line 578
    .local p0, "this":Ljava/lang/StackStreamFactory$StackFrameTraverser;, "Ljava/lang/StackStreamFactory$StackFrameTraverser<TT;>;"
    .local p2, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<-Ljava/util/stream/Stream<Ljava/lang/StackWalker$StackFrame;>;+TT;>;"
    invoke-direct {p0, p1, p3}, Ljava/lang/StackStreamFactory$AbstractStackWalker;-><init>(Ljava/lang/StackWalker;I)V

    .line 579
    iput-object p2, p0, Ljava/lang/StackStreamFactory$StackFrameTraverser;->function:Ljava/util/function/Function;

    .line 580
    return-void
.end method


# virtual methods
.method protected blacklist batchSize(I)I
    .registers 4
    .param p1, "lastBatchFrameCount"    # I

    .line 613
    .local p0, "this":Ljava/lang/StackStreamFactory$StackFrameTraverser;, "Ljava/lang/StackStreamFactory$StackFrameTraverser<TT;>;"
    if-nez p1, :cond_15

    .line 616
    iget-object v0, p0, Ljava/lang/StackStreamFactory$StackFrameTraverser;->walker:Ljava/lang/StackWalker;

    invoke-virtual {v0}, Ljava/lang/StackWalker;->estimateDepth()I

    move-result v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 617
    .local v0, "initialBatchSize":I
    const/16 v1, 0x100

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1

    .line 619
    .end local v0    # "initialBatchSize":I
    :cond_15
    const/16 v0, 0x20

    if-le p1, v0, :cond_1a

    .line 620
    return p1

    .line 622
    :cond_1a
    mul-int/lit8 v1, p1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public whitelist test-api characteristics()I
    .registers 2

    .line 641
    .local p0, "this":Ljava/lang/StackStreamFactory$StackFrameTraverser;, "Ljava/lang/StackStreamFactory$StackFrameTraverser<TT;>;"
    const/16 v0, 0x410

    return v0
.end method

.method protected blacklist consumeFrames()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 598
    .local p0, "this":Ljava/lang/StackStreamFactory$StackFrameTraverser;, "Ljava/lang/StackStreamFactory$StackFrameTraverser<TT;>;"
    sget-object v0, Ljava/lang/StackStreamFactory$WalkerState;->OPEN:Ljava/lang/StackStreamFactory$WalkerState;

    invoke-virtual {p0, v0}, Ljava/lang/StackStreamFactory$StackFrameTraverser;->checkState(Ljava/lang/StackStreamFactory$WalkerState;)V

    .line 599
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    .line 600
    .local v0, "stream":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Ljava/lang/StackWalker$StackFrame;>;"
    iget-object v1, p0, Ljava/lang/StackStreamFactory$StackFrameTraverser;->function:Ljava/util/function/Function;

    if-eqz v1, :cond_15

    .line 601
    iget-object v1, p0, Ljava/lang/StackStreamFactory$StackFrameTraverser;->function:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 603
    :cond_15
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public whitelist test-api estimateSize()J
    .registers 3

    .line 636
    .local p0, "this":Ljava/lang/StackStreamFactory$StackFrameTraverser;, "Ljava/lang/StackStreamFactory$StackFrameTraverser<TT;>;"
    iget v0, p0, Ljava/lang/StackStreamFactory$StackFrameTraverser;->maxDepth:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/lang/StackWalker$StackFrame;",
            ">;)V"
        }
    .end annotation

    .line 646
    .local p0, "this":Ljava/lang/StackStreamFactory$StackFrameTraverser;, "Ljava/lang/StackStreamFactory$StackFrameTraverser<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/StackWalker$StackFrame;>;"
    sget-object v0, Ljava/lang/StackStreamFactory$WalkerState;->OPEN:Ljava/lang/StackStreamFactory$WalkerState;

    invoke-virtual {p0, v0}, Ljava/lang/StackStreamFactory$StackFrameTraverser;->checkState(Ljava/lang/StackStreamFactory$WalkerState;)V

    .line 647
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_6
    iget v1, p0, Ljava/lang/StackStreamFactory$StackFrameTraverser;->maxDepth:I

    if-ge v0, v1, :cond_17

    .line 648
    invoke-virtual {p0}, Ljava/lang/StackStreamFactory$StackFrameTraverser;->nextStackFrame()Ljava/lang/StackWalker$StackFrame;

    move-result-object v1

    .line 649
    .local v1, "frame":Ljava/lang/StackWalker$StackFrame;
    if-nez v1, :cond_11

    goto :goto_17

    .line 651
    :cond_11
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 647
    .end local v1    # "frame":Ljava/lang/StackWalker$StackFrame;
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 653
    .end local v0    # "n":I
    :cond_17
    :goto_17
    return-void
.end method

.method protected blacklist initFrameBuffer()V
    .registers 3

    .line 608
    .local p0, "this":Ljava/lang/StackStreamFactory$StackFrameTraverser;, "Ljava/lang/StackStreamFactory$StackFrameTraverser<TT;>;"
    new-instance v0, Ljava/lang/StackStreamFactory$StackFrameTraverser$StackFrameBuffer;

    invoke-virtual {p0}, Ljava/lang/StackStreamFactory$StackFrameTraverser;->getNextBatchSize()I

    move-result v1

    invoke-direct {v0, p0, v1}, Ljava/lang/StackStreamFactory$StackFrameTraverser$StackFrameBuffer;-><init>(Ljava/lang/StackStreamFactory$StackFrameTraverser;I)V

    iput-object v0, p0, Ljava/lang/StackStreamFactory$StackFrameTraverser;->frameBuffer:Ljava/lang/StackStreamFactory$FrameBuffer;

    .line 609
    return-void
.end method

.method blacklist nextStackFrame()Ljava/lang/StackWalker$StackFrame;
    .registers 3

    .line 587
    .local p0, "this":Ljava/lang/StackStreamFactory$StackFrameTraverser;, "Ljava/lang/StackStreamFactory$StackFrameTraverser<TT;>;"
    invoke-virtual {p0}, Ljava/lang/StackStreamFactory$StackFrameTraverser;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    .line 588
    const/4 v0, 0x0

    return-object v0

    .line 591
    :cond_8
    iget-object v0, p0, Ljava/lang/StackStreamFactory$StackFrameTraverser;->frameBuffer:Ljava/lang/StackStreamFactory$FrameBuffer;

    invoke-virtual {v0}, Ljava/lang/StackStreamFactory$FrameBuffer;->nextStackFrame()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StackFrameInfo;

    .line 592
    .local v0, "frame":Ljava/lang/StackFrameInfo;
    iget v1, p0, Ljava/lang/StackStreamFactory$StackFrameTraverser;->depth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/lang/StackStreamFactory$StackFrameTraverser;->depth:I

    .line 593
    return-object v0
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/lang/StackWalker$StackFrame;",
            ">;)Z"
        }
    .end annotation

    .line 657
    .local p0, "this":Ljava/lang/StackStreamFactory$StackFrameTraverser;, "Ljava/lang/StackStreamFactory$StackFrameTraverser<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/StackWalker$StackFrame;>;"
    sget-object v0, Ljava/lang/StackStreamFactory$WalkerState;->OPEN:Ljava/lang/StackStreamFactory$WalkerState;

    invoke-virtual {p0, v0}, Ljava/lang/StackStreamFactory$StackFrameTraverser;->checkState(Ljava/lang/StackStreamFactory$WalkerState;)V

    .line 659
    iget-object v0, p0, Ljava/lang/StackStreamFactory$StackFrameTraverser;->frameBuffer:Ljava/lang/StackStreamFactory$FrameBuffer;

    invoke-virtual {v0}, Ljava/lang/StackStreamFactory$FrameBuffer;->getIndex()I

    move-result v0

    .line 660
    .local v0, "index":I
    invoke-virtual {p0}, Ljava/lang/StackStreamFactory$StackFrameTraverser;->hasNext()Z

    move-result v1

    const-string v2, "tryAdvance: "

    if-eqz v1, :cond_40

    .line 661
    invoke-virtual {p0}, Ljava/lang/StackStreamFactory$StackFrameTraverser;->nextStackFrame()Ljava/lang/StackWalker$StackFrame;

    move-result-object v1

    .line 662
    .local v1, "frame":Ljava/lang/StackWalker$StackFrame;
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 663
    sget-boolean v3, Ljava/lang/StackStreamFactory;->isDebug:Z

    if-eqz v3, :cond_3e

    .line 664
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 666
    :cond_3e
    const/4 v2, 0x1

    return v2

    .line 668
    .end local v1    # "frame":Ljava/lang/StackWalker$StackFrame;
    :cond_40
    sget-boolean v1, Ljava/lang/StackStreamFactory;->isDebug:Z

    if-eqz v1, :cond_60

    .line 669
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " NO element"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 671
    :cond_60
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Ljava/lang/StackWalker$StackFrame;",
            ">;"
        }
    .end annotation

    .line 631
    .local p0, "this":Ljava/lang/StackStreamFactory$StackFrameTraverser;, "Ljava/lang/StackStreamFactory$StackFrameTraverser<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method
