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
        "LITR::Ljava/util/Spliterator$OfPrimitive",
        "<TE;TT_CONS;TT_SP",
        "LITR;",
        ">;>",
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator$OfPrimitive",
        "<TE;TT_CONS;TT_SP",
        "LITR;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field final synthetic $assertionsDisabled:Z

.field final lastSpineElementFence:I

.field final lastSpineIndex:I

.field splChunk:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_ARR;"
        }
    .end annotation
.end field

.field splElementIndex:I

.field splSpineIndex:I

.field final synthetic this$1:Ljava/util/stream/SpinedBuffer$OfPrimitive;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;

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
    sput-boolean v0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->-assertionsDisabled:Z

    #@b
    .line 598
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method constructor <init>(Ljava/util/stream/SpinedBuffer$OfPrimitive;IIII)V
    .locals 3
    .param p2, "firstSpineIndex"    # I
    .param p3, "lastSpineIndex"    # I
    .param p4, "firstSpineElementIndex"    # I
    .param p5, "lastSpineElementFence"    # I

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;, "Ljava/util/stream/SpinedBuffer<TE;>.OfPrimitive<TE;TT_ARR;TT_CONS;>.BaseSpliterator<TT_SPLITR;>;"
    .local p1, "this$1":Ljava/util/stream/SpinedBuffer$OfPrimitive;, "Ljava/util/stream/SpinedBuffer<TE;>.OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 620
    iput-object p1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$1:Ljava/util/stream/SpinedBuffer$OfPrimitive;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 622
    iput p2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    #@9
    .line 623
    iput p3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    #@b
    .line 624
    iput p4, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    #@d
    .line 625
    iput p5, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineElementFence:I

    #@f
    .line 626
    sget-boolean v2, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->-assertionsDisabled:Z

    #@11
    if-nez v2, :cond_2

    #@13
    iget-object v2, p1, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

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
    .line 627
    :cond_2
    iget-object v0, p1, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    #@27
    if-nez v0, :cond_3

    #@29
    iget-object v0, p1, Ljava/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    #@2b
    :goto_1
    iput-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splChunk:Ljava/lang/Object;

    #@2d
    .line 621
    return-void

    #@2e
    .line 627
    :cond_3
    iget-object v0, p1, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    #@30
    aget-object v0, v0, p2

    #@32
    goto :goto_1
.end method


# virtual methods
.method abstract arrayForOne(Ljava/lang/Object;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_ARR;ITT_CONS;)V"
        }
    .end annotation
.end method

.method abstract arraySpliterator(Ljava/lang/Object;II)Ljava/util/Spliterator$OfPrimitive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_ARR;II)TT_SP",
            "LITR;"
        }
    .end annotation
.end method

.method public characteristics()I
    .locals 1

    #@0
    .prologue
    .line 649
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;, "Ljava/util/stream/SpinedBuffer<TE;>.OfPrimitive<TE;TT_ARR;TT_CONS;>.BaseSpliterator<TT_SPLITR;>;"
    const/16 v0, 0x4050

    #@2
    return v0
.end method

.method public estimateSize()J
    .locals 4

    #@0
    .prologue
    .line 639
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;, "Ljava/util/stream/SpinedBuffer<TE;>.OfPrimitive<TE;TT_ARR;TT_CONS;>.BaseSpliterator<TT_SPLITR;>;"
    iget v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    #@2
    iget v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 640
    iget v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineElementFence:I

    #@8
    int-to-long v0, v0

    #@9
    iget v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    #@b
    int-to-long v2, v2

    #@c
    sub-long/2addr v0, v2

    #@d
    .line 639
    :goto_0
    return-wide v0

    #@e
    .line 642
    :cond_0
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$1:Ljava/util/stream/SpinedBuffer$OfPrimitive;

    #@10
    iget-object v0, v0, Ljava/util/stream/AbstractSpinedBuffer;->priorElementCount:[J

    #@12
    iget v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    #@14
    aget-wide v0, v0, v1

    #@16
    iget v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineElementFence:I

    #@18
    int-to-long v2, v2

    #@19
    add-long/2addr v0, v2

    #@1a
    .line 644
    iget-object v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$1:Ljava/util/stream/SpinedBuffer$OfPrimitive;

    #@1c
    iget-object v2, v2, Ljava/util/stream/AbstractSpinedBuffer;->priorElementCount:[J

    #@1e
    iget v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    #@20
    aget-wide v2, v2, v3

    #@22
    .line 642
    sub-long/2addr v0, v2

    #@23
    .line 644
    iget v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    #@25
    int-to-long v2, v2

    #@26
    .line 642
    sub-long/2addr v0, v2

    #@27
    goto :goto_0
.end method

.method public forEachRemaining(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 673
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;, "Ljava/util/stream/SpinedBuffer<TE;>.OfPrimitive<TE;TT_ARR;TT_CONS;>.BaseSpliterator<TT_SPLITR;>;"
    .local p1, "consumer":Ljava/lang/Object;, "TT_CONS;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 675
    iget v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    #@5
    iget v4, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    #@7
    if-lt v3, v4, :cond_0

    #@9
    .line 676
    iget v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    #@b
    iget v4, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    #@d
    if-ne v3, v4, :cond_2

    #@f
    iget v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    #@11
    iget v4, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineElementFence:I

    #@13
    if-ge v3, v4, :cond_2

    #@15
    .line 677
    :cond_0
    iget v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    #@17
    .line 679
    .local v1, "i":I
    iget v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    #@19
    .local v2, "sp":I
    :goto_0
    iget v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    #@1b
    if-ge v2, v3, :cond_1

    #@1d
    .line 680
    iget-object v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$1:Ljava/util/stream/SpinedBuffer$OfPrimitive;

    #@1f
    iget-object v3, v3, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    #@21
    aget-object v0, v3, v2

    #@23
    .line 681
    .local v0, "chunk":Ljava/lang/Object;, "TT_ARR;"
    iget-object v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$1:Ljava/util/stream/SpinedBuffer$OfPrimitive;

    #@25
    iget-object v4, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$1:Ljava/util/stream/SpinedBuffer$OfPrimitive;

    #@27
    invoke-virtual {v4, v0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    #@2a
    move-result v4

    #@2b
    invoke-virtual {v3, v0, v1, v4, p1}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->arrayForEach(Ljava/lang/Object;IILjava/lang/Object;)V

    #@2e
    .line 682
    const/4 v1, 0x0

    #@2f
    .line 679
    add-int/lit8 v2, v2, 0x1

    #@31
    goto :goto_0

    #@32
    .line 685
    .end local v0    # "chunk":Ljava/lang/Object;, "TT_ARR;"
    :cond_1
    iget v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    #@34
    iget v4, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    #@36
    if-ne v3, v4, :cond_3

    #@38
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splChunk:Ljava/lang/Object;

    #@3a
    .line 686
    .restart local v0    # "chunk":Ljava/lang/Object;, "TT_ARR;"
    :goto_1
    iget-object v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$1:Ljava/util/stream/SpinedBuffer$OfPrimitive;

    #@3c
    iget v4, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineElementFence:I

    #@3e
    invoke-virtual {v3, v0, v1, v4, p1}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->arrayForEach(Ljava/lang/Object;IILjava/lang/Object;)V

    #@41
    .line 688
    iget v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    #@43
    iput v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    #@45
    .line 689
    iget v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineElementFence:I

    #@47
    iput v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    #@49
    .line 672
    .end local v0    # "chunk":Ljava/lang/Object;, "TT_ARR;"
    .end local v1    # "i":I
    .end local v2    # "sp":I
    :cond_2
    return-void

    #@4a
    .line 685
    .restart local v1    # "i":I
    .restart local v2    # "sp":I
    :cond_3
    iget-object v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$1:Ljava/util/stream/SpinedBuffer$OfPrimitive;

    #@4c
    iget-object v3, v3, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    #@4e
    iget v4, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    #@50
    aget-object v0, v3, v4

    #@52
    .restart local v0    # "chunk":Ljava/lang/Object;, "TT_ARR;"
    goto :goto_1
.end method

.method abstract newSpliterator(IIII)Ljava/util/Spliterator$OfPrimitive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)TT_SP",
            "LITR;"
        }
    .end annotation
.end method

.method public tryAdvance(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;, "Ljava/util/stream/SpinedBuffer<TE;>.OfPrimitive<TE;TT_ARR;TT_CONS;>.BaseSpliterator<TT_SPLITR;>;"
    .local p1, "consumer":Ljava/lang/Object;, "TT_CONS;"
    const/4 v3, 0x0

    #@1
    .line 654
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@4
    .line 656
    iget v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    #@6
    iget v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    #@8
    if-lt v0, v1, :cond_0

    #@a
    .line 657
    iget v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    #@c
    iget v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    #@e
    if-ne v0, v1, :cond_2

    #@10
    iget v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    #@12
    iget v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineElementFence:I

    #@14
    if-ge v0, v1, :cond_2

    #@16
    .line 658
    :cond_0
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splChunk:Ljava/lang/Object;

    #@18
    iget v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    #@1a
    add-int/lit8 v2, v1, 0x1

    #@1c
    iput v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    #@1e
    invoke-virtual {p0, v0, v1, p1}, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->arrayForOne(Ljava/lang/Object;ILjava/lang/Object;)V

    #@21
    .line 660
    iget v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    #@23
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$1:Ljava/util/stream/SpinedBuffer$OfPrimitive;

    #@25
    iget-object v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splChunk:Ljava/lang/Object;

    #@27
    invoke-virtual {v1, v2}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    #@2a
    move-result v1

    #@2b
    if-ne v0, v1, :cond_1

    #@2d
    .line 661
    iput v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    #@2f
    .line 662
    iget v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    #@31
    add-int/lit8 v0, v0, 0x1

    #@33
    iput v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    #@35
    .line 663
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$1:Ljava/util/stream/SpinedBuffer$OfPrimitive;

    #@37
    iget-object v0, v0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    #@39
    if-eqz v0, :cond_1

    #@3b
    iget v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    #@3d
    iget v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    #@3f
    if-gt v0, v1, :cond_1

    #@41
    .line 664
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$1:Ljava/util/stream/SpinedBuffer$OfPrimitive;

    #@43
    iget-object v0, v0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    #@45
    iget v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    #@47
    aget-object v0, v0, v1

    #@49
    iput-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splChunk:Ljava/lang/Object;

    #@4b
    .line 666
    :cond_1
    const/4 v0, 0x1

    #@4c
    return v0

    #@4d
    .line 668
    :cond_2
    return v3
.end method

.method public trySplit()Ljava/util/Spliterator$OfPrimitive;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_SP",
            "LITR;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;, "Ljava/util/stream/SpinedBuffer<TE;>.OfPrimitive<TE;TT_ARR;TT_CONS;>.BaseSpliterator<TT_SPLITR;>;"
    const/4 v4, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    .line 695
    iget v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    #@4
    iget v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    #@6
    if-ge v2, v3, :cond_0

    #@8
    .line 697
    iget v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    #@a
    iget v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    #@c
    add-int/lit8 v3, v3, -0x1

    #@e
    .line 698
    iget v4, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    #@10
    iget-object v5, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$1:Ljava/util/stream/SpinedBuffer$OfPrimitive;

    #@12
    iget-object v6, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$1:Ljava/util/stream/SpinedBuffer$OfPrimitive;

    #@14
    iget-object v6, v6, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    #@16
    iget v7, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    #@18
    add-int/lit8 v7, v7, -0x1

    #@1a
    aget-object v6, v6, v7

    #@1c
    invoke-virtual {v5, v6}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    #@1f
    move-result v5

    #@20
    .line 697
    invoke-virtual {p0, v2, v3, v4, v5}, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->newSpliterator(IIII)Ljava/util/Spliterator$OfPrimitive;

    #@23
    move-result-object v0

    #@24
    .line 700
    .local v0, "ret":Ljava/util/Spliterator$OfPrimitive;, "TT_SPLITR;"
    iget v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    #@26
    iput v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    #@28
    .line 701
    iput v8, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    #@2a
    .line 702
    iget-object v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$1:Ljava/util/stream/SpinedBuffer$OfPrimitive;

    #@2c
    iget-object v2, v2, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    #@2e
    iget v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    #@30
    aget-object v2, v2, v3

    #@32
    iput-object v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splChunk:Ljava/lang/Object;

    #@34
    .line 703
    return-object v0

    #@35
    .line 705
    .end local v0    # "ret":Ljava/util/Spliterator$OfPrimitive;, "TT_SPLITR;"
    :cond_0
    iget v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    #@37
    iget v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    #@39
    if-ne v2, v3, :cond_2

    #@3b
    .line 706
    iget v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineElementFence:I

    #@3d
    iget v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    #@3f
    sub-int/2addr v2, v3

    #@40
    div-int/lit8 v1, v2, 0x2

    #@42
    .line 707
    .local v1, "t":I
    if-nez v1, :cond_1

    #@44
    .line 708
    return-object v4

    #@45
    .line 710
    :cond_1
    iget-object v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splChunk:Ljava/lang/Object;

    #@47
    iget v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    #@49
    invoke-virtual {p0, v2, v3, v1}, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->arraySpliterator(Ljava/lang/Object;II)Ljava/util/Spliterator$OfPrimitive;

    #@4c
    move-result-object v0

    #@4d
    .line 711
    .restart local v0    # "ret":Ljava/util/Spliterator$OfPrimitive;, "TT_SPLITR;"
    iget v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    #@4f
    add-int/2addr v2, v1

    #@50
    iput v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    #@52
    .line 712
    return-object v0

    #@53
    .line 716
    .end local v0    # "ret":Ljava/util/Spliterator$OfPrimitive;, "TT_SPLITR;"
    .end local v1    # "t":I
    :cond_2
    return-object v4
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    #@0
    .prologue
    .line 694
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;, "Ljava/util/stream/SpinedBuffer<TE;>.OfPrimitive<TE;TT_ARR;TT_CONS;>.BaseSpliterator<TT_SPLITR;>;"
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->trySplit()Ljava/util/Spliterator$OfPrimitive;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
