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
.field private final greylist-max-o array:[I

.field private final greylist-max-o characteristics:I

.field private blacklist estimatedSize:J

.field private final greylist-max-o fence:I

.field private greylist-max-o index:I


# direct methods
.method public constructor greylist-max-o <init>([II)V
    .registers 5
    .param p1, "array"    # [I
    .param p2, "additionalCharacteristics"    # I

    .line 1077
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1, p2}, Ljava/util/Spliterators$IntArraySpliterator;-><init>([IIII)V

    .line 1078
    return-void
.end method

.method public constructor greylist-max-o <init>([IIII)V
    .registers 7
    .param p1, "array"    # [I
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .param p4, "additionalCharacteristics"    # I

    .line 1089
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1090
    iput-object p1, p0, Ljava/util/Spliterators$IntArraySpliterator;->array:[I

    .line 1091
    iput p2, p0, Ljava/util/Spliterators$IntArraySpliterator;->index:I

    .line 1092
    iput p3, p0, Ljava/util/Spliterators$IntArraySpliterator;->fence:I

    .line 1093
    or-int/lit8 v0, p4, 0x40

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Ljava/util/Spliterators$IntArraySpliterator;->characteristics:I

    .line 1094
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljava/util/Spliterators$IntArraySpliterator;->estimatedSize:J

    .line 1095
    return-void
.end method

.method private constructor blacklist <init>([IIIIJ)V
    .registers 8
    .param p1, "array"    # [I
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .param p4, "characteristics"    # I
    .param p5, "estimatedSize"    # J

    .line 1097
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1098
    iput-object p1, p0, Ljava/util/Spliterators$IntArraySpliterator;->array:[I

    .line 1099
    iput p2, p0, Ljava/util/Spliterators$IntArraySpliterator;->index:I

    .line 1100
    iput p3, p0, Ljava/util/Spliterators$IntArraySpliterator;->fence:I

    .line 1101
    and-int/lit16 v0, p4, -0x4041

    iput v0, p0, Ljava/util/Spliterators$IntArraySpliterator;->characteristics:I

    .line 1102
    iput-wide p5, p0, Ljava/util/Spliterators$IntArraySpliterator;->estimatedSize:J

    .line 1103
    return-void
.end method

.method synthetic constructor blacklist <init>([IIIIJLjava/util/Spliterators-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Ljava/util/Spliterators$IntArraySpliterator;-><init>([IIIIJ)V

    return-void
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 1146
    iget v0, p0, Ljava/util/Spliterators$IntArraySpliterator;->characteristics:I

    return v0
.end method

.method public whitelist test-api estimateSize()J
    .registers 5

    .line 1141
    iget-wide v0, p0, Ljava/util/Spliterators$IntArraySpliterator;->estimatedSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_b

    iget-wide v0, p0, Ljava/util/Spliterators$IntArraySpliterator;->estimatedSize:J

    goto :goto_11

    :cond_b
    iget v0, p0, Ljava/util/Spliterators$IntArraySpliterator;->fence:I

    iget v1, p0, Ljava/util/Spliterators$IntArraySpliterator;->index:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    :goto_11
    return-wide v0
.end method

.method public bridge synthetic whitelist test-api forEachRemaining(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1062
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava/util/Spliterators$IntArraySpliterator;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/IntConsumer;)V
    .registers 6
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .line 1120
    if-eqz p1, :cond_1e

    .line 1122
    iget-object v0, p0, Ljava/util/Spliterators$IntArraySpliterator;->array:[I

    move-object v1, v0

    .local v1, "a":[I
    array-length v0, v0

    iget v2, p0, Ljava/util/Spliterators$IntArraySpliterator;->fence:I

    move v3, v2

    .local v3, "hi":I
    if-lt v0, v2, :cond_1d

    iget v0, p0, Ljava/util/Spliterators$IntArraySpliterator;->index:I

    move v2, v0

    .local v2, "i":I
    if-ltz v0, :cond_1d

    iput v3, p0, Ljava/util/Spliterators$IntArraySpliterator;->index:I

    if-ge v2, v3, :cond_1d

    .line 1124
    :cond_14
    aget v0, v1, v2

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v3, :cond_14

    .line 1126
    .end local v2    # "i":I
    :cond_1d
    return-void

    .line 1121
    .end local v1    # "a":[I
    .end local v3    # "hi":I
    :cond_1e
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getComparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1151
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/util/Spliterators$IntArraySpliterator;->hasCharacteristics(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1152
    const/4 v0, 0x0

    return-object v0

    .line 1153
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist test-api tryAdvance(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1062
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava/util/Spliterators$IntArraySpliterator;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/IntConsumer;)Z
    .registers 5
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .line 1130
    if-eqz p1, :cond_1d

    .line 1132
    iget v0, p0, Ljava/util/Spliterators$IntArraySpliterator;->index:I

    if-ltz v0, :cond_1b

    iget v0, p0, Ljava/util/Spliterators$IntArraySpliterator;->index:I

    iget v1, p0, Ljava/util/Spliterators$IntArraySpliterator;->fence:I

    if-ge v0, v1, :cond_1b

    .line 1133
    iget-object v0, p0, Ljava/util/Spliterators$IntArraySpliterator;->array:[I

    iget v1, p0, Ljava/util/Spliterators$IntArraySpliterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/Spliterators$IntArraySpliterator;->index:I

    aget v0, v0, v1

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 1134
    const/4 v0, 0x1

    return v0

    .line 1136
    :cond_1b
    const/4 v0, 0x0

    return v0

    .line 1131
    :cond_1d
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator$OfInt;
    .registers 9

    .line 1107
    iget v2, p0, Ljava/util/Spliterators$IntArraySpliterator;->index:I

    .local v2, "lo":I
    iget v0, p0, Ljava/util/Spliterators$IntArraySpliterator;->fence:I

    add-int/2addr v0, v2

    const/4 v1, 0x1

    ushr-int/lit8 v3, v0, 0x1

    .line 1108
    .local v3, "mid":I
    if-lt v2, v3, :cond_c

    const/4 v0, 0x0

    return-object v0

    .line 1109
    :cond_c
    iget-wide v4, p0, Ljava/util/Spliterators$IntArraySpliterator;->estimatedSize:J

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_20

    .line 1110
    new-instance v0, Ljava/util/Spliterators$IntArraySpliterator;

    iget-object v1, p0, Ljava/util/Spliterators$IntArraySpliterator;->array:[I

    iput v3, p0, Ljava/util/Spliterators$IntArraySpliterator;->index:I

    iget v4, p0, Ljava/util/Spliterators$IntArraySpliterator;->characteristics:I

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/Spliterators$IntArraySpliterator;-><init>([IIII)V

    return-object v0

    .line 1112
    :cond_20
    iget-wide v4, p0, Ljava/util/Spliterators$IntArraySpliterator;->estimatedSize:J

    ushr-long v5, v4, v1

    .line 1113
    .local v5, "prefixEstimatedSize":J
    iget-wide v0, p0, Ljava/util/Spliterators$IntArraySpliterator;->estimatedSize:J

    sub-long/2addr v0, v5

    iput-wide v0, p0, Ljava/util/Spliterators$IntArraySpliterator;->estimatedSize:J

    .line 1114
    new-instance v0, Ljava/util/Spliterators$IntArraySpliterator;

    iget-object v1, p0, Ljava/util/Spliterators$IntArraySpliterator;->array:[I

    iput v3, p0, Ljava/util/Spliterators$IntArraySpliterator;->index:I

    iget v4, p0, Ljava/util/Spliterators$IntArraySpliterator;->characteristics:I

    invoke-direct/range {v0 .. v6}, Ljava/util/Spliterators$IntArraySpliterator;-><init>([IIIIJ)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 1062
    invoke-virtual {p0}, Ljava/util/Spliterators$IntArraySpliterator;->trySplit()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 1062
    invoke-virtual {p0}, Ljava/util/Spliterators$IntArraySpliterator;->trySplit()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method
