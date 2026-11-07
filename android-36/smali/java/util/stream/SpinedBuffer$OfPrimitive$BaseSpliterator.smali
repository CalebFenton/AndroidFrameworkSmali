.class abstract Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;
.super Ljava/lang/Object;
.source "SpinedBuffer.java"

# interfaces
.implements Ljava/util/Spliterator$OfPrimitive;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/SpinedBuffer$OfPrimitive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "BaseSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T_SP",
        "LITR::Ljava/util/Spliterator$OfPrimitive<",
        "TE;TT_CONS;TT_SP",
        "LITR;",
        ">;>",
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator$OfPrimitive<",
        "TE;TT_CONS;TT_SP",
        "LITR;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field final greylist-max-o lastSpineElementFence:I

.field final greylist-max-o lastSpineIndex:I

.field greylist-max-o splChunk:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_ARR;"
        }
    .end annotation
.end field

.field greylist-max-o splElementIndex:I

.field greylist-max-o splSpineIndex:I

.field final synthetic blacklist this$0:Ljava/util/stream/SpinedBuffer$OfPrimitive;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 600
    const-class v0, Ljava/util/stream/SpinedBuffer;

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/stream/SpinedBuffer$OfPrimitive;IIII)V
    .registers 7
    .param p1, "this$0"    # Ljava/util/stream/SpinedBuffer$OfPrimitive;
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

    .line 623
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;, "Ljava/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>.BaseSpliterator<TT_SPLITR;>;"
    iput-object p1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Ljava/util/stream/SpinedBuffer$OfPrimitive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 624
    iput p2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    .line 625
    iput p3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    .line 626
    iput p4, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    .line 627
    iput p5, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineElementFence:I

    .line 628
    nop

    .line 629
    iget-object v0, p1, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    if-nez v0, :cond_15

    iget-object v0, p1, Ljava/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    goto :goto_19

    :cond_15
    iget-object v0, p1, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    aget-object v0, v0, p2

    :goto_19
    iput-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splChunk:Ljava/lang/Object;

    .line 630
    return-void
.end method


# virtual methods
.method abstract greylist-max-o arrayForOne(Ljava/lang/Object;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_ARR;ITT_CONS;)V"
        }
    .end annotation
.end method

.method abstract greylist-max-o arraySpliterator(Ljava/lang/Object;II)Ljava/util/Spliterator$OfPrimitive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_ARR;II)TT_SP",
            "LITR;"
        }
    .end annotation
.end method

.method public whitelist test-api characteristics()I
    .registers 2

    .line 651
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;, "Ljava/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>.BaseSpliterator<TT_SPLITR;>;"
    const/16 v0, 0x4050

    return v0
.end method

.method public whitelist test-api estimateSize()J
    .registers 5

    .line 641
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;, "Ljava/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>.BaseSpliterator<TT_SPLITR;>;"
    iget v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    iget v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    if-ne v0, v1, :cond_e

    .line 642
    iget v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineElementFence:I

    int-to-long v0, v0

    iget v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto :goto_27

    .line 646
    :cond_e
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Ljava/util/stream/SpinedBuffer$OfPrimitive;

    iget-object v0, v0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->priorElementCount:[J

    iget v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    aget-wide v0, v0, v1

    iget v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineElementFence:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-object v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Ljava/util/stream/SpinedBuffer$OfPrimitive;

    iget-object v2, v2, Ljava/util/stream/SpinedBuffer$OfPrimitive;->priorElementCount:[J

    iget v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    aget-wide v2, v2, v3

    sub-long/2addr v0, v2

    iget v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 641
    :goto_27
    return-wide v0
.end method

.method public whitelist test-api forEachRemaining(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)V"
        }
    .end annotation

    .line 675
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;, "Ljava/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>.BaseSpliterator<TT_SPLITR;>;"
    .local p1, "consumer":Ljava/lang/Object;, "TT_CONS;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    iget v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    iget v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    if-lt v0, v1, :cond_15

    iget v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    iget v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    if-ne v0, v1, :cond_52

    iget v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    iget v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineElementFence:I

    if-ge v0, v1, :cond_52

    .line 679
    :cond_15
    iget v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    .line 681
    .local v0, "i":I
    iget v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    .local v1, "sp":I
    :goto_19
    iget v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    if-ge v1, v2, :cond_32

    .line 682
    iget-object v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Ljava/util/stream/SpinedBuffer$OfPrimitive;

    iget-object v2, v2, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    aget-object v2, v2, v1

    .line 683
    .local v2, "chunk":Ljava/lang/Object;, "TT_ARR;"
    iget-object v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Ljava/util/stream/SpinedBuffer$OfPrimitive;

    iget-object v4, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Ljava/util/stream/SpinedBuffer$OfPrimitive;

    invoke-virtual {v4, v2}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v2, v0, v4, p1}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->arrayForEach(Ljava/lang/Object;IILjava/lang/Object;)V

    .line 684
    const/4 v0, 0x0

    .line 681
    .end local v2    # "chunk":Ljava/lang/Object;, "TT_ARR;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 687
    .end local v1    # "sp":I
    :cond_32
    iget v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    iget v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    if-ne v1, v2, :cond_3b

    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splChunk:Ljava/lang/Object;

    goto :goto_43

    :cond_3b
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Ljava/util/stream/SpinedBuffer$OfPrimitive;

    iget-object v1, v1, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    aget-object v1, v1, v2

    .line 688
    .local v1, "chunk":Ljava/lang/Object;, "TT_ARR;"
    :goto_43
    iget-object v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Ljava/util/stream/SpinedBuffer$OfPrimitive;

    iget v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineElementFence:I

    invoke-virtual {v2, v1, v0, v3, p1}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->arrayForEach(Ljava/lang/Object;IILjava/lang/Object;)V

    .line 690
    iget v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    iput v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    .line 691
    iget v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineElementFence:I

    iput v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    .line 693
    .end local v0    # "i":I
    .end local v1    # "chunk":Ljava/lang/Object;, "TT_ARR;"
    :cond_52
    return-void
.end method

.method abstract greylist-max-o newSpliterator(IIII)Ljava/util/Spliterator$OfPrimitive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)TT_SP",
            "LITR;"
        }
    .end annotation
.end method

.method public whitelist test-api tryAdvance(Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)Z"
        }
    .end annotation

    .line 656
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;, "Ljava/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>.BaseSpliterator<TT_SPLITR;>;"
    .local p1, "consumer":Ljava/lang/Object;, "TT_CONS;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    iget v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    iget v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_18

    iget v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    iget v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    if-ne v0, v1, :cond_17

    iget v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    iget v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineElementFence:I

    if-ge v0, v1, :cond_17

    goto :goto_18

    .line 670
    :cond_17
    return v2

    .line 660
    :cond_18
    :goto_18
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splChunk:Ljava/lang/Object;

    iget v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    invoke-virtual {p0, v0, v1, p1}, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->arrayForOne(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 662
    iget v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Ljava/util/stream/SpinedBuffer$OfPrimitive;

    iget-object v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splChunk:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v0, v1, :cond_4d

    .line 663
    iput v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    .line 664
    iget v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    add-int/2addr v0, v3

    iput v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    .line 665
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Ljava/util/stream/SpinedBuffer$OfPrimitive;

    iget-object v0, v0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    if-eqz v0, :cond_4d

    iget v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    iget v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    if-gt v0, v1, :cond_4d

    .line 666
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Ljava/util/stream/SpinedBuffer$OfPrimitive;

    iget-object v0, v0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splChunk:Ljava/lang/Object;

    .line 668
    :cond_4d
    return v3
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_SP",
            "LITR;"
        }
    .end annotation

    .line 697
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;, "Ljava/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>.BaseSpliterator<TT_SPLITR;>;"
    iget v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    iget v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    if-ge v0, v1, :cond_34

    .line 699
    iget v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    iget v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    iget-object v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Ljava/util/stream/SpinedBuffer$OfPrimitive;

    iget-object v4, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Ljava/util/stream/SpinedBuffer$OfPrimitive;

    iget-object v4, v4, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    iget v5, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    .line 700
    invoke-virtual {v3, v4}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v3

    .line 699
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->newSpliterator(IIII)Ljava/util/Spliterator$OfPrimitive;

    move-result-object v0

    .line 702
    .local v0, "ret":Ljava/util/Spliterator$OfPrimitive;, "TT_SPLITR;"
    iget v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    iput v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    .line 703
    const/4 v1, 0x0

    iput v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    .line 704
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Ljava/util/stream/SpinedBuffer$OfPrimitive;

    iget-object v1, v1, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    aget-object v1, v1, v2

    iput-object v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splChunk:Ljava/lang/Object;

    .line 705
    return-object v0

    .line 707
    .end local v0    # "ret":Ljava/util/Spliterator$OfPrimitive;, "TT_SPLITR;"
    :cond_34
    iget v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    iget v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_53

    .line 708
    iget v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineElementFence:I

    iget v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 709
    .local v0, "t":I
    if-nez v0, :cond_45

    .line 710
    return-object v2

    .line 712
    :cond_45
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splChunk:Ljava/lang/Object;

    iget v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    invoke-virtual {p0, v1, v2, v0}, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->arraySpliterator(Ljava/lang/Object;II)Ljava/util/Spliterator$OfPrimitive;

    move-result-object v1

    .line 713
    .local v1, "ret":Ljava/util/Spliterator$OfPrimitive;, "TT_SPLITR;"
    iget v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    add-int/2addr v2, v0

    iput v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    .line 714
    return-object v1

    .line 718
    .end local v0    # "t":I
    .end local v1    # "ret":Ljava/util/Spliterator$OfPrimitive;, "TT_SPLITR;"
    :cond_53
    return-object v2
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 600
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;, "Ljava/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>.BaseSpliterator<TT_SPLITR;>;"
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->trySplit()Ljava/util/Spliterator$OfPrimitive;

    move-result-object v0

    return-object v0
.end method
