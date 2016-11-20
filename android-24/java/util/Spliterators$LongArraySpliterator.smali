.class final Ljava/util/Spliterators$LongArraySpliterator;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava/util/Spliterator$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Spliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LongArraySpliterator"
.end annotation


# instance fields
.field private final array:[J

.field private final characteristics:I

.field private final fence:I

.field private index:I


# direct methods
.method public constructor <init>([JI)V
    .locals 2
    .param p1, "array"    # [J
    .param p2, "additionalCharacteristics"    # I

    #@0
    .prologue
    .line 1081
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, p1, v1, v0, p2}, Ljava/util/Spliterators$LongArraySpliterator;-><init>([JIII)V

    #@5
    .line 1080
    return-void
.end method

.method public constructor <init>([JIII)V
    .locals 1
    .param p1, "array"    # [J
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .param p4, "additionalCharacteristics"    # I

    #@0
    .prologue
    .line 1093
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1094
    iput-object p1, p0, Ljava/util/Spliterators$LongArraySpliterator;->array:[J

    #@5
    .line 1095
    iput p2, p0, Ljava/util/Spliterators$LongArraySpliterator;->index:I

    #@7
    .line 1096
    iput p3, p0, Ljava/util/Spliterators$LongArraySpliterator;->fence:I

    #@9
    .line 1097
    or-int/lit8 v0, p4, 0x40

    #@b
    or-int/lit16 v0, v0, 0x4000

    #@d
    iput v0, p0, Ljava/util/Spliterators$LongArraySpliterator;->characteristics:I

    #@f
    .line 1093
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    #@0
    .prologue
    .line 1135
    iget v0, p0, Ljava/util/Spliterators$LongArraySpliterator;->characteristics:I

    #@2
    return v0
.end method

.method public estimateSize()J
    .locals 2

    #@0
    .prologue
    .line 1131
    iget v0, p0, Ljava/util/Spliterators$LongArraySpliterator;->fence:I

    #@2
    iget v1, p0, Ljava/util/Spliterators$LongArraySpliterator;->index:I

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
    .line 1109
    check-cast p1, Ljava/util/function/LongConsumer;

    #@2
    .end local p1    # "action":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/Spliterators$LongArraySpliterator;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    #@5
    return-void
.end method

.method public forEachRemaining(Ljava/util/function/LongConsumer;)V
    .locals 6
    .param p1, "action"    # Ljava/util/function/LongConsumer;

    #@0
    .prologue
    .line 1111
    if-nez p1, :cond_0

    #@2
    .line 1112
    new-instance v3, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v3

    #@8
    .line 1113
    :cond_0
    iget-object v0, p0, Ljava/util/Spliterators$LongArraySpliterator;->array:[J

    #@a
    .local v0, "a":[J
    array-length v3, v0

    #@b
    iget v1, p0, Ljava/util/Spliterators$LongArraySpliterator;->fence:I

    #@d
    .local v1, "hi":I
    if-lt v3, v1, :cond_2

    #@f
    .line 1114
    iget v2, p0, Ljava/util/Spliterators$LongArraySpliterator;->index:I

    #@11
    .local v2, "i":I
    if-ltz v2, :cond_2

    #@13
    iput v1, p0, Ljava/util/Spliterators$LongArraySpliterator;->index:I

    #@15
    if-ge v2, v1, :cond_2

    #@17
    .line 1115
    :cond_1
    aget-wide v4, v0, v2

    #@19
    invoke-interface {p1, v4, v5}, Ljava/util/function/LongConsumer;->accept(J)V

    #@1c
    add-int/lit8 v2, v2, 0x1

    #@1e
    if-lt v2, v1, :cond_1

    #@20
    .line 1109
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
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1140
    const/4 v0, 0x4

    #@1
    invoke-virtual {p0, v0}, Ljava/util/Spliterators$LongArraySpliterator;->hasCharacteristics(I)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 1141
    const/4 v0, 0x0

    #@8
    return-object v0

    #@9
    .line 1142
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
    .line 1120
    check-cast p1, Ljava/util/function/LongConsumer;

    #@2
    .end local p1    # "action":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/Spliterators$LongArraySpliterator;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public tryAdvance(Ljava/util/function/LongConsumer;)Z
    .locals 3
    .param p1, "action"    # Ljava/util/function/LongConsumer;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1121
    if-nez p1, :cond_0

    #@3
    .line 1122
    new-instance v0, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v0

    #@9
    .line 1123
    :cond_0
    iget v0, p0, Ljava/util/Spliterators$LongArraySpliterator;->index:I

    #@b
    if-ltz v0, :cond_1

    #@d
    iget v0, p0, Ljava/util/Spliterators$LongArraySpliterator;->index:I

    #@f
    iget v1, p0, Ljava/util/Spliterators$LongArraySpliterator;->fence:I

    #@11
    if-ge v0, v1, :cond_1

    #@13
    .line 1124
    iget-object v0, p0, Ljava/util/Spliterators$LongArraySpliterator;->array:[J

    #@15
    iget v1, p0, Ljava/util/Spliterators$LongArraySpliterator;->index:I

    #@17
    add-int/lit8 v2, v1, 0x1

    #@19
    iput v2, p0, Ljava/util/Spliterators$LongArraySpliterator;->index:I

    #@1b
    aget-wide v0, v0, v1

    #@1d
    invoke-interface {p1, v0, v1}, Ljava/util/function/LongConsumer;->accept(J)V

    #@20
    .line 1125
    const/4 v0, 0x1

    #@21
    return v0

    #@22
    .line 1127
    :cond_1
    return v2
.end method

.method public trySplit()Ljava/util/Spliterator$OfLong;
    .locals 5

    #@0
    .prologue
    .line 1102
    iget v0, p0, Ljava/util/Spliterators$LongArraySpliterator;->index:I

    #@2
    .local v0, "lo":I
    iget v2, p0, Ljava/util/Spliterators$LongArraySpliterator;->fence:I

    #@4
    add-int/2addr v2, v0

    #@5
    ushr-int/lit8 v1, v2, 0x1

    #@7
    .line 1103
    .local v1, "mid":I
    if-lt v0, v1, :cond_0

    #@9
    .line 1104
    const/4 v2, 0x0

    #@a
    .line 1103
    :goto_0
    return-object v2

    #@b
    .line 1105
    :cond_0
    new-instance v2, Ljava/util/Spliterators$LongArraySpliterator;

    #@d
    iget-object v3, p0, Ljava/util/Spliterators$LongArraySpliterator;->array:[J

    #@f
    iput v1, p0, Ljava/util/Spliterators$LongArraySpliterator;->index:I

    #@11
    iget v4, p0, Ljava/util/Spliterators$LongArraySpliterator;->characteristics:I

    #@13
    invoke-direct {v2, v3, v0, v1, v4}, Ljava/util/Spliterators$LongArraySpliterator;-><init>([JIII)V

    #@16
    goto :goto_0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    #@0
    .prologue
    .line 1101
    invoke-virtual {p0}, Ljava/util/Spliterators$LongArraySpliterator;->trySplit()Ljava/util/Spliterator$OfLong;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    #@0
    .prologue
    .line 1101
    invoke-virtual {p0}, Ljava/util/Spliterators$LongArraySpliterator;->trySplit()Ljava/util/Spliterator$OfLong;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
