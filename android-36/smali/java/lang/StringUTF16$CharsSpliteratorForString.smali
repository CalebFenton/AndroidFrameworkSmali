.class Ljava/lang/StringUTF16$CharsSpliteratorForString;
.super Ljava/lang/Object;
.source "StringUTF16.java"

# interfaces
.implements Ljava/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/StringUTF16;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharsSpliteratorForString"
.end annotation


# instance fields
.field private final blacklist array:Ljava/lang/String;

.field private final blacklist cs:I

.field private final blacklist fence:I

.field private blacklist index:I


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 5
    .param p1, "array"    # Ljava/lang/String;
    .param p2, "acs"    # I

    .line 1329
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, p1, v0, v1, p2}, Ljava/lang/StringUTF16$CharsSpliteratorForString;-><init>(Ljava/lang/String;III)V

    .line 1331
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;III)V
    .registers 6
    .param p1, "array"    # Ljava/lang/String;
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .param p4, "acs"    # I

    .line 1337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1339
    iput-object p1, p0, Ljava/lang/StringUTF16$CharsSpliteratorForString;->array:Ljava/lang/String;

    .line 1340
    iput p2, p0, Ljava/lang/StringUTF16$CharsSpliteratorForString;->index:I

    .line 1341
    iput p3, p0, Ljava/lang/StringUTF16$CharsSpliteratorForString;->fence:I

    .line 1342
    or-int/lit8 v0, p4, 0x10

    or-int/lit8 v0, v0, 0x40

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Ljava/lang/StringUTF16$CharsSpliteratorForString;->cs:I

    .line 1344
    return-void
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 1395
    iget v0, p0, Ljava/lang/StringUTF16$CharsSpliteratorForString;->cs:I

    return v0
.end method

.method public whitelist test-api estimateSize()J
    .registers 3

    .line 1391
    iget v0, p0, Ljava/lang/StringUTF16$CharsSpliteratorForString;->fence:I

    iget v1, p0, Ljava/lang/StringUTF16$CharsSpliteratorForString;->index:I

    sub-int/2addr v0, v1

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

    .line 1312
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava/lang/StringUTF16$CharsSpliteratorForString;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/IntConsumer;)V
    .registers 6
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .line 1362
    if-eqz p1, :cond_23

    .line 1368
    iget-object v0, p0, Ljava/lang/StringUTF16$CharsSpliteratorForString;->array:Ljava/lang/String;

    move-object v1, v0

    .local v1, "a":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v2, p0, Ljava/lang/StringUTF16$CharsSpliteratorForString;->fence:I

    move v3, v2

    .local v3, "hi":I
    if-lt v0, v2, :cond_22

    iget v0, p0, Ljava/lang/StringUTF16$CharsSpliteratorForString;->index:I

    move v2, v0

    .local v2, "i":I
    if-ltz v0, :cond_22

    iput v3, p0, Ljava/lang/StringUTF16$CharsSpliteratorForString;->index:I

    if-ge v2, v3, :cond_22

    .line 1372
    :cond_17
    invoke-static {v1, v2}, Ljava/lang/StringUTF16;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 1373
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v3, :cond_17

    .line 1375
    .end local v2    # "i":I
    :cond_22
    return-void

    .line 1363
    .end local v1    # "a":Ljava/lang/String;
    .end local v3    # "hi":I
    :cond_23
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

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

    .line 1312
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava/lang/StringUTF16$CharsSpliteratorForString;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/IntConsumer;)Z
    .registers 5
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .line 1379
    if-eqz p1, :cond_1c

    .line 1381
    iget v0, p0, Ljava/lang/StringUTF16$CharsSpliteratorForString;->index:I

    .line 1382
    .local v0, "i":I
    if-ltz v0, :cond_1a

    iget v1, p0, Ljava/lang/StringUTF16$CharsSpliteratorForString;->fence:I

    if-ge v0, v1, :cond_1a

    .line 1383
    iget-object v1, p0, Ljava/lang/StringUTF16$CharsSpliteratorForString;->array:Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/lang/StringUTF16;->charAt(Ljava/lang/String;I)C

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 1384
    iget v1, p0, Ljava/lang/StringUTF16$CharsSpliteratorForString;->index:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Ljava/lang/StringUTF16$CharsSpliteratorForString;->index:I

    .line 1385
    return v2

    .line 1387
    :cond_1a
    const/4 v1, 0x0

    return v1

    .line 1380
    .end local v0    # "i":I
    :cond_1c
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator$OfInt;
    .registers 6

    .line 1348
    iget v0, p0, Ljava/lang/StringUTF16$CharsSpliteratorForString;->index:I

    .local v0, "lo":I
    iget v1, p0, Ljava/lang/StringUTF16$CharsSpliteratorForString;->fence:I

    add-int/2addr v1, v0

    ushr-int/lit8 v1, v1, 0x1

    .line 1349
    .local v1, "mid":I
    if-lt v0, v1, :cond_b

    .line 1350
    const/4 v2, 0x0

    goto :goto_16

    .line 1351
    :cond_b
    new-instance v2, Ljava/lang/StringUTF16$CharsSpliteratorForString;

    iget-object v3, p0, Ljava/lang/StringUTF16$CharsSpliteratorForString;->array:Ljava/lang/String;

    iput v1, p0, Ljava/lang/StringUTF16$CharsSpliteratorForString;->index:I

    iget v4, p0, Ljava/lang/StringUTF16$CharsSpliteratorForString;->cs:I

    invoke-direct {v2, v3, v0, v1, v4}, Ljava/lang/StringUTF16$CharsSpliteratorForString;-><init>(Ljava/lang/String;III)V

    .line 1349
    :goto_16
    return-object v2
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 1312
    invoke-virtual {p0}, Ljava/lang/StringUTF16$CharsSpliteratorForString;->trySplit()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 1312
    invoke-virtual {p0}, Ljava/lang/StringUTF16$CharsSpliteratorForString;->trySplit()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method
