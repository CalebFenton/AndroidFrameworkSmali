.class final Ljava/util/Spliterators$DoubleArraySpliterator;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava/util/Spliterator$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Spliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DoubleArraySpliterator"
.end annotation


# instance fields
.field private final array:[D

.field private final characteristics:I

.field private final fence:I

.field private index:I


# direct methods
.method public constructor <init>([DI)V
    .locals 2
    .param p1, "array"    # [D
    .param p2, "additionalCharacteristics"    # I

    #@0
    .prologue
    .line 1164
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, p1, v1, v0, p2}, Ljava/util/Spliterators$DoubleArraySpliterator;-><init>([DIII)V

    #@5
    .line 1163
    return-void
.end method

.method public constructor <init>([DIII)V
    .locals 1
    .param p1, "array"    # [D
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .param p4, "additionalCharacteristics"    # I

    #@0
    .prologue
    .line 1176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1177
    iput-object p1, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->array:[D

    #@5
    .line 1178
    iput p2, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->index:I

    #@7
    .line 1179
    iput p3, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->fence:I

    #@9
    .line 1180
    or-int/lit8 v0, p4, 0x40

    #@b
    or-int/lit16 v0, v0, 0x4000

    #@d
    iput v0, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->characteristics:I

    #@f
    .line 1176
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    #@0
    .prologue
    .line 1218
    iget v0, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->characteristics:I

    #@2
    return v0
.end method

.method public estimateSize()J
    .locals 2

    #@0
    .prologue
    .line 1214
    iget v0, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->fence:I

    #@2
    iget v1, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->index:I

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
    .line 1192
    check-cast p1, Ljava/util/function/DoubleConsumer;

    #@2
    .end local p1    # "action":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/Spliterators$DoubleArraySpliterator;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    #@5
    return-void
.end method

.method public forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .locals 6
    .param p1, "action"    # Ljava/util/function/DoubleConsumer;

    #@0
    .prologue
    .line 1194
    if-nez p1, :cond_0

    #@2
    .line 1195
    new-instance v3, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v3

    #@8
    .line 1196
    :cond_0
    iget-object v0, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->array:[D

    #@a
    .local v0, "a":[D
    array-length v3, v0

    #@b
    iget v1, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->fence:I

    #@d
    .local v1, "hi":I
    if-lt v3, v1, :cond_2

    #@f
    .line 1197
    iget v2, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->index:I

    #@11
    .local v2, "i":I
    if-ltz v2, :cond_2

    #@13
    iput v1, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->index:I

    #@15
    if-ge v2, v1, :cond_2

    #@17
    .line 1198
    :cond_1
    aget-wide v4, v0, v2

    #@19
    invoke-interface {p1, v4, v5}, Ljava/util/function/DoubleConsumer;->accept(D)V

    #@1c
    add-int/lit8 v2, v2, 0x1

    #@1e
    if-lt v2, v1, :cond_1

    #@20
    .line 1192
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
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1223
    const/4 v0, 0x4

    #@1
    invoke-virtual {p0, v0}, Ljava/util/Spliterators$DoubleArraySpliterator;->hasCharacteristics(I)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 1224
    const/4 v0, 0x0

    #@8
    return-object v0

    #@9
    .line 1225
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
    .line 1203
    check-cast p1, Ljava/util/function/DoubleConsumer;

    #@2
    .end local p1    # "action":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/Spliterators$DoubleArraySpliterator;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public tryAdvance(Ljava/util/function/DoubleConsumer;)Z
    .locals 3
    .param p1, "action"    # Ljava/util/function/DoubleConsumer;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1204
    if-nez p1, :cond_0

    #@3
    .line 1205
    new-instance v0, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v0

    #@9
    .line 1206
    :cond_0
    iget v0, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->index:I

    #@b
    if-ltz v0, :cond_1

    #@d
    iget v0, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->index:I

    #@f
    iget v1, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->fence:I

    #@11
    if-ge v0, v1, :cond_1

    #@13
    .line 1207
    iget-object v0, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->array:[D

    #@15
    iget v1, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->index:I

    #@17
    add-int/lit8 v2, v1, 0x1

    #@19
    iput v2, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->index:I

    #@1b
    aget-wide v0, v0, v1

    #@1d
    invoke-interface {p1, v0, v1}, Ljava/util/function/DoubleConsumer;->accept(D)V

    #@20
    .line 1208
    const/4 v0, 0x1

    #@21
    return v0

    #@22
    .line 1210
    :cond_1
    return v2
.end method

.method public trySplit()Ljava/util/Spliterator$OfDouble;
    .locals 5

    #@0
    .prologue
    .line 1185
    iget v0, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->index:I

    #@2
    .local v0, "lo":I
    iget v2, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->fence:I

    #@4
    add-int/2addr v2, v0

    #@5
    ushr-int/lit8 v1, v2, 0x1

    #@7
    .line 1186
    .local v1, "mid":I
    if-lt v0, v1, :cond_0

    #@9
    .line 1187
    const/4 v2, 0x0

    #@a
    .line 1186
    :goto_0
    return-object v2

    #@b
    .line 1188
    :cond_0
    new-instance v2, Ljava/util/Spliterators$DoubleArraySpliterator;

    #@d
    iget-object v3, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->array:[D

    #@f
    iput v1, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->index:I

    #@11
    iget v4, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->characteristics:I

    #@13
    invoke-direct {v2, v3, v0, v1, v4}, Ljava/util/Spliterators$DoubleArraySpliterator;-><init>([DIII)V

    #@16
    goto :goto_0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    #@0
    .prologue
    .line 1184
    invoke-virtual {p0}, Ljava/util/Spliterators$DoubleArraySpliterator;->trySplit()Ljava/util/Spliterator$OfDouble;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    #@0
    .prologue
    .line 1184
    invoke-virtual {p0}, Ljava/util/Spliterators$DoubleArraySpliterator;->trySplit()Ljava/util/Spliterator$OfDouble;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
