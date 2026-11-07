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
.field private final greylist-max-o array:[D

.field private final greylist-max-o characteristics:I

.field private blacklist estimatedSize:J

.field private final greylist-max-o fence:I

.field private greylist-max-o index:I


# direct methods
.method public constructor greylist-max-o <init>([DI)V
    .registers 5
    .param p1, "array"    # [D
    .param p2, "additionalCharacteristics"    # I

    .line 1275
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1, p2}, Ljava/util/Spliterators$DoubleArraySpliterator;-><init>([DIII)V

    .line 1276
    return-void
.end method

.method public constructor greylist-max-o <init>([DIII)V
    .registers 7
    .param p1, "array"    # [D
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .param p4, "additionalCharacteristics"    # I

    .line 1287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1288
    iput-object p1, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->array:[D

    .line 1289
    iput p2, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->index:I

    .line 1290
    iput p3, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->fence:I

    .line 1291
    or-int/lit8 v0, p4, 0x40

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->characteristics:I

    .line 1292
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->estimatedSize:J

    .line 1293
    return-void
.end method

.method private constructor blacklist <init>([DIIIJ)V
    .registers 8
    .param p1, "array"    # [D
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .param p4, "characteristics"    # I
    .param p5, "estimatedSize"    # J

    .line 1295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1296
    iput-object p1, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->array:[D

    .line 1297
    iput p2, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->index:I

    .line 1298
    iput p3, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->fence:I

    .line 1299
    and-int/lit16 v0, p4, -0x4041

    iput v0, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->characteristics:I

    .line 1300
    iput-wide p5, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->estimatedSize:J

    .line 1301
    return-void
.end method

.method synthetic constructor blacklist <init>([DIIIJLjava/util/Spliterators-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Ljava/util/Spliterators$DoubleArraySpliterator;-><init>([DIIIJ)V

    return-void
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 1344
    iget v0, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->characteristics:I

    return v0
.end method

.method public whitelist test-api estimateSize()J
    .registers 5

    .line 1339
    iget-wide v0, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->estimatedSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_b

    iget-wide v0, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->estimatedSize:J

    goto :goto_11

    :cond_b
    iget v0, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->fence:I

    iget v1, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->index:I

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

    .line 1260
    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljava/util/Spliterators$DoubleArraySpliterator;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    return-void
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .registers 8
    .param p1, "action"    # Ljava/util/function/DoubleConsumer;

    .line 1318
    if-eqz p1, :cond_1e

    .line 1320
    iget-object v0, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->array:[D

    move-object v1, v0

    .local v1, "a":[D
    array-length v0, v0

    iget v2, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->fence:I

    move v3, v2

    .local v3, "hi":I
    if-lt v0, v2, :cond_1d

    iget v0, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->index:I

    move v2, v0

    .local v2, "i":I
    if-ltz v0, :cond_1d

    iput v3, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->index:I

    if-ge v2, v3, :cond_1d

    .line 1322
    :cond_14
    aget-wide v4, v1, v2

    invoke-interface {p1, v4, v5}, Ljava/util/function/DoubleConsumer;->accept(D)V

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v3, :cond_14

    .line 1324
    .end local v2    # "i":I
    :cond_1d
    return-void

    .line 1319
    .end local v1    # "a":[D
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
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 1349
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/util/Spliterators$DoubleArraySpliterator;->hasCharacteristics(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1350
    const/4 v0, 0x0

    return-object v0

    .line 1351
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

    .line 1260
    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljava/util/Spliterators$DoubleArraySpliterator;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/DoubleConsumer;)Z
    .registers 5
    .param p1, "action"    # Ljava/util/function/DoubleConsumer;

    .line 1328
    if-eqz p1, :cond_1d

    .line 1330
    iget v0, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->index:I

    if-ltz v0, :cond_1b

    iget v0, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->index:I

    iget v1, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->fence:I

    if-ge v0, v1, :cond_1b

    .line 1331
    iget-object v0, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->array:[D

    iget v1, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->index:I

    aget-wide v0, v0, v1

    invoke-interface {p1, v0, v1}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 1332
    const/4 v0, 0x1

    return v0

    .line 1334
    :cond_1b
    const/4 v0, 0x0

    return v0

    .line 1329
    :cond_1d
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator$OfDouble;
    .registers 9

    .line 1305
    iget v2, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->index:I

    .local v2, "lo":I
    iget v0, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->fence:I

    add-int/2addr v0, v2

    const/4 v1, 0x1

    ushr-int/lit8 v3, v0, 0x1

    .line 1306
    .local v3, "mid":I
    if-lt v2, v3, :cond_c

    const/4 v0, 0x0

    return-object v0

    .line 1307
    :cond_c
    iget-wide v4, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->estimatedSize:J

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_20

    .line 1308
    new-instance v0, Ljava/util/Spliterators$DoubleArraySpliterator;

    iget-object v1, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->array:[D

    iput v3, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->index:I

    iget v4, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->characteristics:I

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/Spliterators$DoubleArraySpliterator;-><init>([DIII)V

    return-object v0

    .line 1310
    :cond_20
    iget-wide v4, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->estimatedSize:J

    ushr-long v5, v4, v1

    .line 1311
    .local v5, "prefixEstimatedSize":J
    iget-wide v0, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->estimatedSize:J

    sub-long/2addr v0, v5

    iput-wide v0, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->estimatedSize:J

    .line 1312
    new-instance v0, Ljava/util/Spliterators$DoubleArraySpliterator;

    iget-object v1, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->array:[D

    iput v3, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->index:I

    iget v4, p0, Ljava/util/Spliterators$DoubleArraySpliterator;->characteristics:I

    invoke-direct/range {v0 .. v6}, Ljava/util/Spliterators$DoubleArraySpliterator;-><init>([DIIIJ)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 1260
    invoke-virtual {p0}, Ljava/util/Spliterators$DoubleArraySpliterator;->trySplit()Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 1260
    invoke-virtual {p0}, Ljava/util/Spliterators$DoubleArraySpliterator;->trySplit()Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method
