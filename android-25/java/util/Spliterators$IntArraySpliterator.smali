.class final Ljava/util/Spliterators$IntArraySpliterator;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Spliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IntArraySpliterator"
.end annotation


# instance fields
.field private final array:[I

.field private final characteristics:I

.field private final fence:I

.field private index:I


# direct methods
.method public constructor <init>([II)V
    .locals 2
    .param p1, "array"    # [I
    .param p2, "additionalCharacteristics"    # I

    #@0
    .prologue
    .line 998
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, p1, v1, v0, p2}, Ljava/util/Spliterators$IntArraySpliterator;-><init>([IIII)V

    #@5
    .line 997
    return-void
.end method

.method public constructor <init>([IIII)V
    .locals 1
    .param p1, "array"    # [I
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .param p4, "additionalCharacteristics"    # I

    #@0
    .prologue
    .line 1010
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1011
    iput-object p1, p0, Ljava/util/Spliterators$IntArraySpliterator;->array:[I

    #@5
    .line 1012
    iput p2, p0, Ljava/util/Spliterators$IntArraySpliterator;->index:I

    #@7
    .line 1013
    iput p3, p0, Ljava/util/Spliterators$IntArraySpliterator;->fence:I

    #@9
    .line 1014
    or-int/lit8 v0, p4, 0x40

    #@b
    or-int/lit16 v0, v0, 0x4000

    #@d
    iput v0, p0, Ljava/util/Spliterators$IntArraySpliterator;->characteristics:I

    #@f
    .line 1010
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    #@0
    .prologue
    .line 1052
    iget v0, p0, Ljava/util/Spliterators$IntArraySpliterator;->characteristics:I

    #@2
    return v0
.end method

.method public estimateSize()J
    .locals 2

    #@0
    .prologue
    .line 1048
    iget v0, p0, Ljava/util/Spliterators$IntArraySpliterator;->fence:I

    #@2
    iget v1, p0, Ljava/util/Spliterators$IntArraySpliterator;->index:I

    #@4
    sub-int/2addr v0, v1

    #@5
    int-to-long v0, v0

    #@6
    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1026
    check-cast p1, Ljava/util/function/IntConsumer;

    #@2
    .end local p1    # "action":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/Spliterators$IntArraySpliterator;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    #@5
    return-void
.end method

.method public forEachRemaining(Ljava/util/function/IntConsumer;)V
    .locals 4
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    #@0
    .prologue
    .line 1028
    if-nez p1, :cond_0

    #@2
    .line 1029
    new-instance v3, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v3

    #@8
    .line 1030
    :cond_0
    iget-object v0, p0, Ljava/util/Spliterators$IntArraySpliterator;->array:[I

    #@a
    .local v0, "a":[I
    array-length v3, v0

    #@b
    iget v1, p0, Ljava/util/Spliterators$IntArraySpliterator;->fence:I

    #@d
    .local v1, "hi":I
    if-lt v3, v1, :cond_2

    #@f
    .line 1031
    iget v2, p0, Ljava/util/Spliterators$IntArraySpliterator;->index:I

    #@11
    .local v2, "i":I
    if-ltz v2, :cond_2

    #@13
    iput v1, p0, Ljava/util/Spliterators$IntArraySpliterator;->index:I

    #@15
    if-ge v2, v1, :cond_2

    #@17
    .line 1032
    :cond_1
    aget v3, v0, v2

    #@19
    invoke-interface {p1, v3}, Ljava/util/function/IntConsumer;->accept(I)V

    #@1c
    add-int/lit8 v2, v2, 0x1

    #@1e
    if-lt v2, v1, :cond_1

    #@20
    .line 1026
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1057
    const/4 v0, 0x4

    #@1
    invoke-virtual {p0, v0}, Ljava/util/Spliterators$IntArraySpliterator;->hasCharacteristics(I)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 1058
    const/4 v0, 0x0

    #@8
    return-object v0

    #@9
    .line 1059
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    #@b
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@e
    throw v0
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1037
    check-cast p1, Ljava/util/function/IntConsumer;

    #@2
    .end local p1    # "action":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/Spliterators$IntArraySpliterator;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public tryAdvance(Ljava/util/function/IntConsumer;)Z
    .locals 3
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1038
    if-nez p1, :cond_0

    #@3
    .line 1039
    new-instance v0, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v0

    #@9
    .line 1040
    :cond_0
    iget v0, p0, Ljava/util/Spliterators$IntArraySpliterator;->index:I

    #@b
    if-ltz v0, :cond_1

    #@d
    iget v0, p0, Ljava/util/Spliterators$IntArraySpliterator;->index:I

    #@f
    iget v1, p0, Ljava/util/Spliterators$IntArraySpliterator;->fence:I

    #@11
    if-ge v0, v1, :cond_1

    #@13
    .line 1041
    iget-object v0, p0, Ljava/util/Spliterators$IntArraySpliterator;->array:[I

    #@15
    iget v1, p0, Ljava/util/Spliterators$IntArraySpliterator;->index:I

    #@17
    add-int/lit8 v2, v1, 0x1

    #@19
    iput v2, p0, Ljava/util/Spliterators$IntArraySpliterator;->index:I

    #@1b
    aget v0, v0, v1

    #@1d
    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    #@20
    .line 1042
    const/4 v0, 0x1

    #@21
    return v0

    #@22
    .line 1044
    :cond_1
    return v2
.end method

.method public trySplit()Ljava/util/Spliterator$OfInt;
    .locals 5

    #@0
    .prologue
    .line 1019
    iget v0, p0, Ljava/util/Spliterators$IntArraySpliterator;->index:I

    #@2
    .local v0, "lo":I
    iget v2, p0, Ljava/util/Spliterators$IntArraySpliterator;->fence:I

    #@4
    add-int/2addr v2, v0

    #@5
    ushr-int/lit8 v1, v2, 0x1

    #@7
    .line 1020
    .local v1, "mid":I
    if-lt v0, v1, :cond_0

    #@9
    .line 1021
    const/4 v2, 0x0

    #@a
    .line 1020
    :goto_0
    return-object v2

    #@b
    .line 1022
    :cond_0
    new-instance v2, Ljava/util/Spliterators$IntArraySpliterator;

    #@d
    iget-object v3, p0, Ljava/util/Spliterators$IntArraySpliterator;->array:[I

    #@f
    iput v1, p0, Ljava/util/Spliterators$IntArraySpliterator;->index:I

    #@11
    iget v4, p0, Ljava/util/Spliterators$IntArraySpliterator;->characteristics:I

    #@13
    invoke-direct {v2, v3, v0, v1, v4}, Ljava/util/Spliterators$IntArraySpliterator;-><init>([IIII)V

    #@16
    goto :goto_0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    #@0
    .prologue
    .line 1018
    invoke-virtual {p0}, Ljava/util/Spliterators$IntArraySpliterator;->trySplit()Ljava/util/Spliterator$OfInt;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    #@0
    .prologue
    .line 1018
    invoke-virtual {p0}, Ljava/util/Spliterators$IntArraySpliterator;->trySplit()Ljava/util/Spliterator$OfInt;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
