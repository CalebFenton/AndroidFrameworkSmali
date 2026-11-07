.class Ljava/lang/StringUTF16$CodePointsSpliteratorForString;
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
    name = "CodePointsSpliteratorForString"
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

    .line 1416
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, p1, v0, v1, p2}, Ljava/lang/StringUTF16$CodePointsSpliteratorForString;-><init>(Ljava/lang/String;III)V

    .line 1418
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;III)V
    .registers 6
    .param p1, "array"    # Ljava/lang/String;
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .param p4, "acs"    # I

    .line 1424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1426
    iput-object p1, p0, Ljava/lang/StringUTF16$CodePointsSpliteratorForString;->array:Ljava/lang/String;

    .line 1427
    iput p2, p0, Ljava/lang/StringUTF16$CodePointsSpliteratorForString;->index:I

    .line 1428
    iput p3, p0, Ljava/lang/StringUTF16$CodePointsSpliteratorForString;->fence:I

    .line 1429
    or-int/lit8 v0, p4, 0x10

    iput v0, p0, Ljava/lang/StringUTF16$CodePointsSpliteratorForString;->cs:I

    .line 1430
    return-void
.end method

.method private static blacklist advance(Ljava/lang/String;IILjava/util/function/IntConsumer;)I
    .registers 8
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "i"    # I
    .param p2, "hi"    # I
    .param p3, "action"    # Ljava/util/function/IntConsumer;

    .line 1493
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "i":I
    .local v0, "i":I
    invoke-static {p0, p1}, Ljava/lang/StringUTF16;->charAt(Ljava/lang/String;I)C

    move-result p1

    .line 1494
    .local p1, "c1":C
    move v1, p1

    .line 1495
    .local v1, "cp":I
    invoke-static {p1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1f

    if-ge v0, p2, :cond_1f

    .line 1496
    invoke-static {p0, v0}, Ljava/lang/StringUTF16;->charAt(Ljava/lang/String;I)C

    move-result v2

    .line 1497
    .local v2, "c2":C
    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 1498
    add-int/lit8 v0, v0, 0x1

    .line 1499
    invoke-static {p1, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    .line 1502
    .end local v2    # "c2":C
    :cond_1f
    invoke-interface {p3, v1}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 1503
    return v0
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 1511
    iget v0, p0, Ljava/lang/StringUTF16$CodePointsSpliteratorForString;->cs:I

    return v0
.end method

.method public whitelist test-api estimateSize()J
    .registers 3

    .line 1507
    iget v0, p0, Ljava/lang/StringUTF16$CodePointsSpliteratorForString;->fence:I

    iget v1, p0, Ljava/lang/StringUTF16$CodePointsSpliteratorForString;->index:I

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

    .line 1399
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava/lang/StringUTF16$CodePointsSpliteratorForString;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/IntConsumer;)V
    .registers 6
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .line 1459
    if-eqz p1, :cond_1e

    .line 1465
    iget-object v0, p0, Ljava/lang/StringUTF16$CodePointsSpliteratorForString;->array:Ljava/lang/String;

    move-object v1, v0

    .local v1, "a":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v2, p0, Ljava/lang/StringUTF16$CodePointsSpliteratorForString;->fence:I

    move v3, v2

    .local v3, "hi":I
    if-lt v0, v2, :cond_1d

    iget v0, p0, Ljava/lang/StringUTF16$CodePointsSpliteratorForString;->index:I

    move v2, v0

    .local v2, "i":I
    if-ltz v0, :cond_1d

    iput v3, p0, Ljava/lang/StringUTF16$CodePointsSpliteratorForString;->index:I

    if-ge v2, v3, :cond_1d

    .line 1469
    :cond_17
    invoke-static {v1, v2, v3, p1}, Ljava/lang/StringUTF16$CodePointsSpliteratorForString;->advance(Ljava/lang/String;IILjava/util/function/IntConsumer;)I

    move-result v2

    .line 1470
    if-lt v2, v3, :cond_17

    .line 1472
    .end local v2    # "i":I
    :cond_1d
    return-void

    .line 1460
    .end local v1    # "a":Ljava/lang/String;
    .end local v3    # "hi":I
    :cond_1e
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

    .line 1399
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava/lang/StringUTF16$CodePointsSpliteratorForString;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/IntConsumer;)Z
    .registers 5
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .line 1476
    if-eqz p1, :cond_1c

    .line 1478
    iget v0, p0, Ljava/lang/StringUTF16$CodePointsSpliteratorForString;->index:I

    if-ltz v0, :cond_1a

    iget v0, p0, Ljava/lang/StringUTF16$CodePointsSpliteratorForString;->index:I

    iget v1, p0, Ljava/lang/StringUTF16$CodePointsSpliteratorForString;->fence:I

    if-ge v0, v1, :cond_1a

    .line 1479
    iget-object v0, p0, Ljava/lang/StringUTF16$CodePointsSpliteratorForString;->array:Ljava/lang/String;

    iget v1, p0, Ljava/lang/StringUTF16$CodePointsSpliteratorForString;->index:I

    iget v2, p0, Ljava/lang/StringUTF16$CodePointsSpliteratorForString;->fence:I

    invoke-static {v0, v1, v2, p1}, Ljava/lang/StringUTF16$CodePointsSpliteratorForString;->advance(Ljava/lang/String;IILjava/util/function/IntConsumer;)I

    move-result v0

    iput v0, p0, Ljava/lang/StringUTF16$CodePointsSpliteratorForString;->index:I

    .line 1480
    const/4 v0, 0x1

    return v0

    .line 1482
    :cond_1a
    const/4 v0, 0x0

    return v0

    .line 1477
    :cond_1c
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator$OfInt;
    .registers 7

    .line 1434
    iget v0, p0, Ljava/lang/StringUTF16$CodePointsSpliteratorForString;->index:I

    .local v0, "lo":I
    iget v1, p0, Ljava/lang/StringUTF16$CodePointsSpliteratorForString;->fence:I

    add-int/2addr v1, v0

    ushr-int/lit8 v1, v1, 0x1

    .line 1435
    .local v1, "mid":I
    const/4 v2, 0x0

    if-lt v0, v1, :cond_b

    .line 1436
    return-object v2

    .line 1440
    :cond_b
    iget-object v3, p0, Ljava/lang/StringUTF16$CodePointsSpliteratorForString;->array:Ljava/lang/String;

    invoke-static {v3, v1}, Ljava/lang/StringUTF16;->charAt(Ljava/lang/String;I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_35

    iget-object v3, p0, Ljava/lang/StringUTF16$CodePointsSpliteratorForString;->array:Ljava/lang/String;

    add-int/lit8 v4, v1, -0x1

    move v5, v4

    .line 1441
    .local v5, "midOneLess":I
    invoke-static {v3, v4}, Ljava/lang/StringUTF16;->charAt(Ljava/lang/String;I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 1443
    if-lt v0, v5, :cond_29

    .line 1444
    return-object v2

    .line 1446
    :cond_29
    new-instance v2, Ljava/lang/StringUTF16$CodePointsSpliteratorForString;

    iget-object v3, p0, Ljava/lang/StringUTF16$CodePointsSpliteratorForString;->array:Ljava/lang/String;

    iput v5, p0, Ljava/lang/StringUTF16$CodePointsSpliteratorForString;->index:I

    iget v4, p0, Ljava/lang/StringUTF16$CodePointsSpliteratorForString;->cs:I

    invoke-direct {v2, v3, v0, v5, v4}, Ljava/lang/StringUTF16$CodePointsSpliteratorForString;-><init>(Ljava/lang/String;III)V

    return-object v2

    .line 1448
    .end local v5    # "midOneLess":I
    :cond_35
    new-instance v2, Ljava/lang/StringUTF16$CodePointsSpliteratorForString;

    iget-object v3, p0, Ljava/lang/StringUTF16$CodePointsSpliteratorForString;->array:Ljava/lang/String;

    iput v1, p0, Ljava/lang/StringUTF16$CodePointsSpliteratorForString;->index:I

    iget v4, p0, Ljava/lang/StringUTF16$CodePointsSpliteratorForString;->cs:I

    invoke-direct {v2, v3, v0, v1, v4}, Ljava/lang/StringUTF16$CodePointsSpliteratorForString;-><init>(Ljava/lang/String;III)V

    return-object v2
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 1399
    invoke-virtual {p0}, Ljava/lang/StringUTF16$CodePointsSpliteratorForString;->trySplit()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 1399
    invoke-virtual {p0}, Ljava/lang/StringUTF16$CodePointsSpliteratorForString;->trySplit()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method
