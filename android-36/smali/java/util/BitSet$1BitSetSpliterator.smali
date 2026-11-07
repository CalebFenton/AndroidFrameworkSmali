.class Ljava/util/BitSet$1BitSetSpliterator;
.super Ljava/lang/Object;
.source "BitSet.java"

# interfaces
.implements Ljava/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/BitSet;->stream()Ljava/util/stream/IntStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BitSetSpliterator"
.end annotation


# instance fields
.field private blacklist est:I

.field private blacklist fence:I

.field private blacklist index:I

.field private blacklist root:Z

.field final synthetic blacklist this$0:Ljava/util/BitSet;


# direct methods
.method constructor blacklist <init>(Ljava/util/BitSet;IIIZ)V
    .registers 6
    .param p1, "this$0"    # Ljava/util/BitSet;
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .param p4, "est"    # I
    .param p5, "root"    # Z
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

    .line 1237
    iput-object p1, p0, Ljava/util/BitSet$1BitSetSpliterator;->this$0:Ljava/util/BitSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1238
    iput p2, p0, Ljava/util/BitSet$1BitSetSpliterator;->index:I

    .line 1239
    iput p3, p0, Ljava/util/BitSet$1BitSetSpliterator;->fence:I

    .line 1240
    iput p4, p0, Ljava/util/BitSet$1BitSetSpliterator;->est:I

    .line 1241
    iput-boolean p5, p0, Ljava/util/BitSet$1BitSetSpliterator;->root:Z

    .line 1242
    return-void
.end method

.method private blacklist getFence()I
    .registers 5

    .line 1246
    iget v0, p0, Ljava/util/BitSet$1BitSetSpliterator;->fence:I

    move v1, v0

    .local v1, "hi":I
    if-gez v0, :cond_31

    .line 1250
    iget-object v0, p0, Ljava/util/BitSet$1BitSetSpliterator;->this$0:Ljava/util/BitSet;

    invoke-static {v0}, Ljava/util/BitSet;->-$$Nest$fgetwordsInUse(Ljava/util/BitSet;)I

    move-result v0

    const v2, 0x7fffffff

    invoke-static {v2}, Ljava/util/BitSet;->-$$Nest$smwordIndex(I)I

    move-result v3

    if-lt v0, v3, :cond_15

    .line 1251
    goto :goto_1d

    .line 1252
    :cond_15
    iget-object v0, p0, Ljava/util/BitSet$1BitSetSpliterator;->this$0:Ljava/util/BitSet;

    invoke-static {v0}, Ljava/util/BitSet;->-$$Nest$fgetwordsInUse(Ljava/util/BitSet;)I

    move-result v0

    shl-int/lit8 v2, v0, 0x6

    :goto_1d
    iput v2, p0, Ljava/util/BitSet$1BitSetSpliterator;->fence:I

    move v1, v2

    .line 1253
    iget-object v0, p0, Ljava/util/BitSet$1BitSetSpliterator;->this$0:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    iput v0, p0, Ljava/util/BitSet$1BitSetSpliterator;->est:I

    .line 1254
    iget-object v0, p0, Ljava/util/BitSet$1BitSetSpliterator;->this$0:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    iput v0, p0, Ljava/util/BitSet$1BitSetSpliterator;->index:I

    .line 1256
    :cond_31
    return v1
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 1360
    iget-boolean v0, p0, Ljava/util/BitSet$1BitSetSpliterator;->root:Z

    if-eqz v0, :cond_7

    const/16 v0, 0x40

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    or-int/lit8 v0, v0, 0x10

    or-int/lit8 v0, v0, 0x1

    or-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public whitelist test-api estimateSize()J
    .registers 3

    .line 1353
    invoke-direct {p0}, Ljava/util/BitSet$1BitSetSpliterator;->getFence()I

    .line 1354
    iget v0, p0, Ljava/util/BitSet$1BitSetSpliterator;->est:I

    int-to-long v0, v0

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

    .line 1228
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava/util/BitSet$1BitSetSpliterator;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/IntConsumer;)V
    .registers 10
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .line 1282
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1284
    invoke-direct {p0}, Ljava/util/BitSet$1BitSetSpliterator;->getFence()I

    move-result v0

    .line 1285
    .local v0, "hi":I
    iget v1, p0, Ljava/util/BitSet$1BitSetSpliterator;->index:I

    .line 1286
    .local v1, "i":I
    const/4 v2, -0x1

    iput v2, p0, Ljava/util/BitSet$1BitSetSpliterator;->index:I

    .line 1288
    if-ltz v1, :cond_50

    if-ge v1, v0, :cond_50

    .line 1289
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-interface {p1, v1}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 1291
    invoke-static {v2}, Ljava/util/BitSet;->-$$Nest$smwordIndex(I)I

    move-result v1

    .line 1292
    .local v1, "u":I
    add-int/lit8 v3, v0, -0x1

    invoke-static {v3}, Ljava/util/BitSet;->-$$Nest$smwordIndex(I)I

    move-result v3

    .line 1295
    .local v3, "v":I
    :goto_1f
    if-gt v1, v3, :cond_4f

    if-gt v2, v0, :cond_4f

    .line 1296
    iget-object v4, p0, Ljava/util/BitSet$1BitSetSpliterator;->this$0:Ljava/util/BitSet;

    invoke-static {v4}, Ljava/util/BitSet;->-$$Nest$fgetwords(Ljava/util/BitSet;)[J

    move-result-object v4

    aget-wide v4, v4, v1

    const-wide/16 v6, -0x1

    shl-long/2addr v6, v2

    and-long/2addr v4, v6

    .line 1297
    .local v4, "word":J
    :goto_2f
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_4a

    .line 1298
    shl-int/lit8 v6, v1, 0x6

    invoke-static {v4, v5}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v7

    add-int v2, v6, v7

    .line 1299
    if-lt v2, v0, :cond_41

    .line 1302
    move v1, v2

    goto :goto_50

    .line 1306
    :cond_41
    const-wide/16 v6, 0x1

    shl-long/2addr v6, v2

    not-long v6, v6

    and-long/2addr v4, v6

    .line 1308
    invoke-interface {p1, v2}, Ljava/util/function/IntConsumer;->accept(I)V

    goto :goto_2f

    .line 1295
    .end local v4    # "word":J
    :cond_4a
    add-int/lit8 v1, v1, 0x1

    shl-int/lit8 v2, v1, 0x6

    goto :goto_1f

    .line 1314
    .end local v1    # "u":I
    .end local v3    # "v":I
    :cond_4f
    move v1, v2

    .end local v2    # "i":I
    .local v1, "i":I
    :cond_50
    :goto_50
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_5a

    if-ne v0, v2, :cond_5a

    .line 1315
    invoke-interface {p1, v2}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 1317
    :cond_5a
    return-void
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

    .line 1366
    const/4 v0, 0x0

    return-object v0
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

    .line 1228
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava/util/BitSet$1BitSetSpliterator;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/IntConsumer;)Z
    .registers 8
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .line 1261
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1263
    invoke-direct {p0}, Ljava/util/BitSet$1BitSetSpliterator;->getFence()I

    move-result v0

    .line 1264
    .local v0, "hi":I
    iget v1, p0, Ljava/util/BitSet$1BitSetSpliterator;->index:I

    .line 1265
    .local v1, "i":I
    const/4 v2, 0x1

    if-ltz v1, :cond_23

    if-lt v1, v0, :cond_f

    goto :goto_23

    .line 1275
    :cond_f
    iget-object v3, p0, Ljava/util/BitSet$1BitSetSpliterator;->this$0:Ljava/util/BitSet;

    add-int/lit8 v4, v1, 0x1

    add-int/lit8 v5, v0, -0x1

    invoke-static {v5}, Ljava/util/BitSet;->-$$Nest$smwordIndex(I)I

    move-result v5

    invoke-static {v3, v4, v5}, Ljava/util/BitSet;->-$$Nest$mnextSetBit(Ljava/util/BitSet;II)I

    move-result v3

    iput v3, p0, Ljava/util/BitSet$1BitSetSpliterator;->index:I

    .line 1276
    invoke-interface {p1, v1}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 1277
    return v2

    .line 1267
    :cond_23
    :goto_23
    const v3, 0x7fffffff

    if-ne v1, v3, :cond_31

    if-ne v0, v3, :cond_31

    .line 1268
    const/4 v4, -0x1

    iput v4, p0, Ljava/util/BitSet$1BitSetSpliterator;->index:I

    .line 1269
    invoke-interface {p1, v3}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 1270
    return v2

    .line 1272
    :cond_31
    const/4 v2, 0x0

    return v2
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator$OfInt;
    .registers 8

    .line 1321
    invoke-direct {p0}, Ljava/util/BitSet$1BitSetSpliterator;->getFence()I

    move-result v0

    .line 1322
    .local v0, "hi":I
    iget v3, p0, Ljava/util/BitSet$1BitSetSpliterator;->index:I

    .line 1323
    .local v3, "lo":I
    const/4 v1, 0x0

    if-gez v3, :cond_a

    .line 1324
    return-object v1

    .line 1331
    :cond_a
    const v2, 0x7fffffff

    if-lt v0, v2, :cond_19

    iget-object v4, p0, Ljava/util/BitSet$1BitSetSpliterator;->this$0:Ljava/util/BitSet;

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_18

    goto :goto_19

    .line 1333
    :cond_18
    goto :goto_23

    .line 1332
    :cond_19
    :goto_19
    iget-object v2, p0, Ljava/util/BitSet$1BitSetSpliterator;->this$0:Ljava/util/BitSet;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->previousSetBit(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 1333
    :goto_23
    iput v2, p0, Ljava/util/BitSet$1BitSetSpliterator;->fence:I

    move v0, v2

    .line 1336
    add-int v2, v3, v0

    ushr-int/lit8 v4, v2, 0x1

    .line 1337
    .local v4, "mid":I
    if-lt v3, v4, :cond_2d

    .line 1338
    return-object v1

    .line 1343
    :cond_2d
    iget-object v1, p0, Ljava/util/BitSet$1BitSetSpliterator;->this$0:Ljava/util/BitSet;

    add-int/lit8 v2, v0, -0x1

    invoke-static {v2}, Ljava/util/BitSet;->-$$Nest$smwordIndex(I)I

    move-result v2

    invoke-static {v1, v4, v2}, Ljava/util/BitSet;->-$$Nest$mnextSetBit(Ljava/util/BitSet;II)I

    move-result v1

    iput v1, p0, Ljava/util/BitSet$1BitSetSpliterator;->index:I

    .line 1344
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/BitSet$1BitSetSpliterator;->root:Z

    .line 1348
    new-instance v1, Ljava/util/BitSet$1BitSetSpliterator;

    iget-object v2, p0, Ljava/util/BitSet$1BitSetSpliterator;->this$0:Ljava/util/BitSet;

    iget v5, p0, Ljava/util/BitSet$1BitSetSpliterator;->est:I

    ushr-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/util/BitSet$1BitSetSpliterator;->est:I

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Ljava/util/BitSet$1BitSetSpliterator;-><init>(Ljava/util/BitSet;IIIZ)V

    return-object v1
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 1228
    invoke-virtual {p0}, Ljava/util/BitSet$1BitSetSpliterator;->trySplit()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 1228
    invoke-virtual {p0}, Ljava/util/BitSet$1BitSetSpliterator;->trySplit()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method
