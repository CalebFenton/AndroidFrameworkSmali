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
.field private final greylist-max-o array:[J

.field private final greylist-max-o characteristics:I

.field private blacklist estimatedSize:J

.field private final greylist-max-o fence:I

.field private greylist-max-o index:I


# direct methods
.method public constructor greylist-max-o <init>([JI)V
    .registers 5
    .param p1, "array"    # [J
    .param p2, "additionalCharacteristics"    # I

    .line 1176
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1, p2}, Ljava/util/Spliterators$LongArraySpliterator;-><init>([JIII)V

    .line 1177
    return-void
.end method

.method public constructor greylist-max-o <init>([JIII)V
    .registers 7
    .param p1, "array"    # [J
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .param p4, "additionalCharacteristics"    # I

    .line 1188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1189
    iput-object p1, p0, Ljava/util/Spliterators$LongArraySpliterator;->array:[J

    .line 1190
    iput p2, p0, Ljava/util/Spliterators$LongArraySpliterator;->index:I

    .line 1191
    iput p3, p0, Ljava/util/Spliterators$LongArraySpliterator;->fence:I

    .line 1192
    or-int/lit8 v0, p4, 0x40

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Ljava/util/Spliterators$LongArraySpliterator;->characteristics:I

    .line 1193
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljava/util/Spliterators$LongArraySpliterator;->estimatedSize:J

    .line 1194
    return-void
.end method

.method private constructor blacklist <init>([JIIIJ)V
    .registers 8
    .param p1, "array"    # [J
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .param p4, "characteristics"    # I
    .param p5, "estimatedSize"    # J

    .line 1196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1197
    iput-object p1, p0, Ljava/util/Spliterators$LongArraySpliterator;->array:[J

    .line 1198
    iput p2, p0, Ljava/util/Spliterators$LongArraySpliterator;->index:I

    .line 1199
    iput p3, p0, Ljava/util/Spliterators$LongArraySpliterator;->fence:I

    .line 1200
    and-int/lit16 v0, p4, -0x4041

    iput v0, p0, Ljava/util/Spliterators$LongArraySpliterator;->characteristics:I

    .line 1201
    iput-wide p5, p0, Ljava/util/Spliterators$LongArraySpliterator;->estimatedSize:J

    .line 1202
    return-void
.end method

.method synthetic constructor blacklist <init>([JIIIJLjava/util/Spliterators-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Ljava/util/Spliterators$LongArraySpliterator;-><init>([JIIIJ)V

    return-void
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 1245
    iget v0, p0, Ljava/util/Spliterators$LongArraySpliterator;->characteristics:I

    return v0
.end method

.method public whitelist test-api estimateSize()J
    .registers 5

    .line 1240
    iget-wide v0, p0, Ljava/util/Spliterators$LongArraySpliterator;->estimatedSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_b

    iget-wide v0, p0, Ljava/util/Spliterators$LongArraySpliterator;->estimatedSize:J

    goto :goto_11

    :cond_b
    iget v0, p0, Ljava/util/Spliterators$LongArraySpliterator;->fence:I

    iget v1, p0, Ljava/util/Spliterators$LongArraySpliterator;->index:I

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

    .line 1161
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava/util/Spliterators$LongArraySpliterator;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/LongConsumer;)V
    .registers 8
    .param p1, "action"    # Ljava/util/function/LongConsumer;

    .line 1219
    if-eqz p1, :cond_1e

    .line 1221
    iget-object v0, p0, Ljava/util/Spliterators$LongArraySpliterator;->array:[J

    move-object v1, v0

    .local v1, "a":[J
    array-length v0, v0

    iget v2, p0, Ljava/util/Spliterators$LongArraySpliterator;->fence:I

    move v3, v2

    .local v3, "hi":I
    if-lt v0, v2, :cond_1d

    iget v0, p0, Ljava/util/Spliterators$LongArraySpliterator;->index:I

    move v2, v0

    .local v2, "i":I
    if-ltz v0, :cond_1d

    iput v3, p0, Ljava/util/Spliterators$LongArraySpliterator;->index:I

    if-ge v2, v3, :cond_1d

    .line 1223
    :cond_14
    aget-wide v4, v1, v2

    invoke-interface {p1, v4, v5}, Ljava/util/function/LongConsumer;->accept(J)V

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v3, :cond_14

    .line 1225
    .end local v2    # "i":I
    :cond_1d
    return-void

    .line 1220
    .end local v1    # "a":[J
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
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1250
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/util/Spliterators$LongArraySpliterator;->hasCharacteristics(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1251
    const/4 v0, 0x0

    return-object v0

    .line 1252
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

    .line 1161
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava/util/Spliterators$LongArraySpliterator;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/LongConsumer;)Z
    .registers 5
    .param p1, "action"    # Ljava/util/function/LongConsumer;

    .line 1229
    if-eqz p1, :cond_1d

    .line 1231
    iget v0, p0, Ljava/util/Spliterators$LongArraySpliterator;->index:I

    if-ltz v0, :cond_1b

    iget v0, p0, Ljava/util/Spliterators$LongArraySpliterator;->index:I

    iget v1, p0, Ljava/util/Spliterators$LongArraySpliterator;->fence:I

    if-ge v0, v1, :cond_1b

    .line 1232
    iget-object v0, p0, Ljava/util/Spliterators$LongArraySpliterator;->array:[J

    iget v1, p0, Ljava/util/Spliterators$LongArraySpliterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/Spliterators$LongArraySpliterator;->index:I

    aget-wide v0, v0, v1

    invoke-interface {p1, v0, v1}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 1233
    const/4 v0, 0x1

    return v0

    .line 1235
    :cond_1b
    const/4 v0, 0x0

    return v0

    .line 1230
    :cond_1d
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator$OfLong;
    .registers 9

    .line 1206
    iget v2, p0, Ljava/util/Spliterators$LongArraySpliterator;->index:I

    .local v2, "lo":I
    iget v0, p0, Ljava/util/Spliterators$LongArraySpliterator;->fence:I

    add-int/2addr v0, v2

    const/4 v1, 0x1

    ushr-int/lit8 v3, v0, 0x1

    .line 1207
    .local v3, "mid":I
    if-lt v2, v3, :cond_c

    const/4 v0, 0x0

    return-object v0

    .line 1208
    :cond_c
    iget-wide v4, p0, Ljava/util/Spliterators$LongArraySpliterator;->estimatedSize:J

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_20

    .line 1209
    new-instance v0, Ljava/util/Spliterators$LongArraySpliterator;

    iget-object v1, p0, Ljava/util/Spliterators$LongArraySpliterator;->array:[J

    iput v3, p0, Ljava/util/Spliterators$LongArraySpliterator;->index:I

    iget v4, p0, Ljava/util/Spliterators$LongArraySpliterator;->characteristics:I

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/Spliterators$LongArraySpliterator;-><init>([JIII)V

    return-object v0

    .line 1211
    :cond_20
    iget-wide v4, p0, Ljava/util/Spliterators$LongArraySpliterator;->estimatedSize:J

    ushr-long v5, v4, v1

    .line 1212
    .local v5, "prefixEstimatedSize":J
    iget-wide v0, p0, Ljava/util/Spliterators$LongArraySpliterator;->estimatedSize:J

    sub-long/2addr v0, v5

    iput-wide v0, p0, Ljava/util/Spliterators$LongArraySpliterator;->estimatedSize:J

    .line 1213
    new-instance v0, Ljava/util/Spliterators$LongArraySpliterator;

    iget-object v1, p0, Ljava/util/Spliterators$LongArraySpliterator;->array:[J

    iput v3, p0, Ljava/util/Spliterators$LongArraySpliterator;->index:I

    iget v4, p0, Ljava/util/Spliterators$LongArraySpliterator;->characteristics:I

    invoke-direct/range {v0 .. v6}, Ljava/util/Spliterators$LongArraySpliterator;-><init>([JIIIJ)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 1161
    invoke-virtual {p0}, Ljava/util/Spliterators$LongArraySpliterator;->trySplit()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 1161
    invoke-virtual {p0}, Ljava/util/Spliterators$LongArraySpliterator;->trySplit()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method
