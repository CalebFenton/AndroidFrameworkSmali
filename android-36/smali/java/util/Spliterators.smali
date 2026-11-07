.class public final Ljava/util/Spliterators;
.super Ljava/lang/Object;
.source "Spliterators.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Spliterators$ArraySpliterator;,
        Ljava/util/Spliterators$IntArraySpliterator;,
        Ljava/util/Spliterators$LongArraySpliterator;,
        Ljava/util/Spliterators$DoubleArraySpliterator;,
        Ljava/util/Spliterators$IteratorSpliterator;,
        Ljava/util/Spliterators$IntIteratorSpliterator;,
        Ljava/util/Spliterators$LongIteratorSpliterator;,
        Ljava/util/Spliterators$DoubleIteratorSpliterator;,
        Ljava/util/Spliterators$EmptySpliterator;,
        Ljava/util/Spliterators$AbstractDoubleSpliterator;,
        Ljava/util/Spliterators$AbstractLongSpliterator;,
        Ljava/util/Spliterators$AbstractIntSpliterator;,
        Ljava/util/Spliterators$AbstractSpliterator;
    }
.end annotation


# static fields
.field private static final greylist-max-o EMPTY_DOUBLE_SPLITERATOR:Ljava/util/Spliterator$OfDouble;

.field private static final greylist-max-o EMPTY_INT_SPLITERATOR:Ljava/util/Spliterator$OfInt;

.field private static final greylist-max-o EMPTY_LONG_SPLITERATOR:Ljava/util/Spliterator$OfLong;

.field private static final greylist-max-o EMPTY_SPLITERATOR:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Spliterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 63
    new-instance v0, Ljava/util/Spliterators$EmptySpliterator$OfRef;

    invoke-direct {v0}, Ljava/util/Spliterators$EmptySpliterator$OfRef;-><init>()V

    sput-object v0, Ljava/util/Spliterators;->EMPTY_SPLITERATOR:Ljava/util/Spliterator;

    .line 79
    new-instance v0, Ljava/util/Spliterators$EmptySpliterator$OfInt;

    invoke-direct {v0}, Ljava/util/Spliterators$EmptySpliterator$OfInt;-><init>()V

    sput-object v0, Ljava/util/Spliterators;->EMPTY_INT_SPLITERATOR:Ljava/util/Spliterator$OfInt;

    .line 95
    new-instance v0, Ljava/util/Spliterators$EmptySpliterator$OfLong;

    invoke-direct {v0}, Ljava/util/Spliterators$EmptySpliterator$OfLong;-><init>()V

    sput-object v0, Ljava/util/Spliterators;->EMPTY_LONG_SPLITERATOR:Ljava/util/Spliterator$OfLong;

    .line 111
    new-instance v0, Ljava/util/Spliterators$EmptySpliterator$OfDouble;

    invoke-direct {v0}, Ljava/util/Spliterators$EmptySpliterator$OfDouble;-><init>()V

    sput-object v0, Ljava/util/Spliterators;->EMPTY_DOUBLE_SPLITERATOR:Ljava/util/Spliterator$OfDouble;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o checkFromToBounds(III)V
    .registers 6
    .param p0, "arrayLength"    # I
    .param p1, "origin"    # I
    .param p2, "fence"    # I

    .line 386
    if-gt p1, p2, :cond_13

    .line 390
    if-ltz p1, :cond_d

    .line 393
    if-gt p2, p0, :cond_7

    .line 396
    return-void

    .line 394
    :cond_7
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 391
    :cond_d
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 387
    :cond_13
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "origin("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") > fence("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api emptyDoubleSpliterator()Ljava/util/Spliterator$OfDouble;
    .registers 1

    .line 108
    sget-object v0, Ljava/util/Spliterators;->EMPTY_DOUBLE_SPLITERATOR:Ljava/util/Spliterator$OfDouble;

    return-object v0
.end method

.method public static whitelist test-api emptyIntSpliterator()Ljava/util/Spliterator$OfInt;
    .registers 1

    .line 76
    sget-object v0, Ljava/util/Spliterators;->EMPTY_INT_SPLITERATOR:Ljava/util/Spliterator$OfInt;

    return-object v0
.end method

.method public static whitelist test-api emptyLongSpliterator()Ljava/util/Spliterator$OfLong;
    .registers 1

    .line 92
    sget-object v0, Ljava/util/Spliterators;->EMPTY_LONG_SPLITERATOR:Ljava/util/Spliterator$OfLong;

    return-object v0
.end method

.method public static whitelist test-api emptySpliterator()Ljava/util/Spliterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 60
    sget-object v0, Ljava/util/Spliterators;->EMPTY_SPLITERATOR:Ljava/util/Spliterator;

    return-object v0
.end method

.method public static whitelist test-api iterator(Ljava/util/Spliterator;)Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Spliterator<",
            "+TT;>;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 667
    .local p0, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<+TT;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    new-instance v0, Ljava/util/Spliterators$1Adapter;

    invoke-direct {v0, p0}, Ljava/util/Spliterators$1Adapter;-><init>(Ljava/util/Spliterator;)V

    return-object v0
.end method

.method public static whitelist test-api iterator(Ljava/util/Spliterator$OfDouble;)Ljava/util/PrimitiveIterator$OfDouble;
    .registers 2
    .param p0, "spliterator"    # Ljava/util/Spliterator$OfDouble;

    .line 836
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    new-instance v0, Ljava/util/Spliterators$4Adapter;

    invoke-direct {v0, p0}, Ljava/util/Spliterators$4Adapter;-><init>(Ljava/util/Spliterator$OfDouble;)V

    return-object v0
.end method

.method public static whitelist test-api iterator(Ljava/util/Spliterator$OfInt;)Ljava/util/PrimitiveIterator$OfInt;
    .registers 2
    .param p0, "spliterator"    # Ljava/util/Spliterator$OfInt;

    .line 726
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    new-instance v0, Ljava/util/Spliterators$2Adapter;

    invoke-direct {v0, p0}, Ljava/util/Spliterators$2Adapter;-><init>(Ljava/util/Spliterator$OfInt;)V

    return-object v0
.end method

.method public static whitelist test-api iterator(Ljava/util/Spliterator$OfLong;)Ljava/util/PrimitiveIterator$OfLong;
    .registers 2
    .param p0, "spliterator"    # Ljava/util/Spliterator$OfLong;

    .line 781
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    new-instance v0, Ljava/util/Spliterators$3Adapter;

    invoke-direct {v0, p0}, Ljava/util/Spliterators$3Adapter;-><init>(Ljava/util/Spliterator$OfLong;)V

    return-object v0
.end method

.method public static whitelist test-api spliterator(Ljava/util/PrimitiveIterator$OfDouble;JI)Ljava/util/Spliterator$OfDouble;
    .registers 6
    .param p0, "iterator"    # Ljava/util/PrimitiveIterator$OfDouble;
    .param p1, "size"    # J
    .param p3, "characteristics"    # I

    .line 622
    new-instance v0, Ljava/util/Spliterators$DoubleIteratorSpliterator;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/PrimitiveIterator$OfDouble;

    invoke-direct {v0, v1, p1, p2, p3}, Ljava/util/Spliterators$DoubleIteratorSpliterator;-><init>(Ljava/util/PrimitiveIterator$OfDouble;JI)V

    return-object v0
.end method

.method public static whitelist test-api spliterator([DI)Ljava/util/Spliterator$OfDouble;
    .registers 4
    .param p0, "array"    # [D
    .param p1, "additionalCharacteristics"    # I

    .line 334
    new-instance v0, Ljava/util/Spliterators$DoubleArraySpliterator;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    invoke-direct {v0, v1, p1}, Ljava/util/Spliterators$DoubleArraySpliterator;-><init>([DI)V

    return-object v0
.end method

.method public static whitelist test-api spliterator([DIII)Ljava/util/Spliterator$OfDouble;
    .registers 5
    .param p0, "array"    # [D
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "additionalCharacteristics"    # I

    .line 371
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    array-length v0, v0

    invoke-static {v0, p1, p2}, Ljava/util/Spliterators;->checkFromToBounds(III)V

    .line 372
    new-instance v0, Ljava/util/Spliterators$DoubleArraySpliterator;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/util/Spliterators$DoubleArraySpliterator;-><init>([DIII)V

    return-object v0
.end method

.method public static whitelist test-api spliterator(Ljava/util/PrimitiveIterator$OfInt;JI)Ljava/util/Spliterator$OfInt;
    .registers 6
    .param p0, "iterator"    # Ljava/util/PrimitiveIterator$OfInt;
    .param p1, "size"    # J
    .param p3, "characteristics"    # I

    .line 508
    new-instance v0, Ljava/util/Spliterators$IntIteratorSpliterator;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/PrimitiveIterator$OfInt;

    invoke-direct {v0, v1, p1, p2, p3}, Ljava/util/Spliterators$IntIteratorSpliterator;-><init>(Ljava/util/PrimitiveIterator$OfInt;JI)V

    return-object v0
.end method

.method public static whitelist test-api spliterator([II)Ljava/util/Spliterator$OfInt;
    .registers 4
    .param p0, "array"    # [I
    .param p1, "additionalCharacteristics"    # I

    .line 206
    new-instance v0, Ljava/util/Spliterators$IntArraySpliterator;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    invoke-direct {v0, v1, p1}, Ljava/util/Spliterators$IntArraySpliterator;-><init>([II)V

    return-object v0
.end method

.method public static whitelist test-api spliterator([IIII)Ljava/util/Spliterator$OfInt;
    .registers 5
    .param p0, "array"    # [I
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "additionalCharacteristics"    # I

    .line 239
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    array-length v0, v0

    invoke-static {v0, p1, p2}, Ljava/util/Spliterators;->checkFromToBounds(III)V

    .line 240
    new-instance v0, Ljava/util/Spliterators$IntArraySpliterator;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/util/Spliterators$IntArraySpliterator;-><init>([IIII)V

    return-object v0
.end method

.method public static whitelist test-api spliterator(Ljava/util/PrimitiveIterator$OfLong;JI)Ljava/util/Spliterator$OfLong;
    .registers 6
    .param p0, "iterator"    # Ljava/util/PrimitiveIterator$OfLong;
    .param p1, "size"    # J
    .param p3, "characteristics"    # I

    .line 565
    new-instance v0, Ljava/util/Spliterators$LongIteratorSpliterator;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/PrimitiveIterator$OfLong;

    invoke-direct {v0, v1, p1, p2, p3}, Ljava/util/Spliterators$LongIteratorSpliterator;-><init>(Ljava/util/PrimitiveIterator$OfLong;JI)V

    return-object v0
.end method

.method public static whitelist test-api spliterator([JI)Ljava/util/Spliterator$OfLong;
    .registers 4
    .param p0, "array"    # [J
    .param p1, "additionalCharacteristics"    # I

    .line 268
    new-instance v0, Ljava/util/Spliterators$LongArraySpliterator;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    invoke-direct {v0, v1, p1}, Ljava/util/Spliterators$LongArraySpliterator;-><init>([JI)V

    return-object v0
.end method

.method public static whitelist test-api spliterator([JIII)Ljava/util/Spliterator$OfLong;
    .registers 5
    .param p0, "array"    # [J
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "additionalCharacteristics"    # I

    .line 305
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    array-length v0, v0

    invoke-static {v0, p1, p2}, Ljava/util/Spliterators;->checkFromToBounds(III)V

    .line 306
    new-instance v0, Ljava/util/Spliterators$LongArraySpliterator;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/util/Spliterators$LongArraySpliterator;-><init>([JIII)V

    return-object v0
.end method

.method public static whitelist test-api spliterator(Ljava/util/Collection;I)Ljava/util/Spliterator;
    .registers 4
    .param p1, "characteristics"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TT;>;I)",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 420
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    new-instance v0, Ljava/util/Spliterators$IteratorSpliterator;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1, p1}, Ljava/util/Spliterators$IteratorSpliterator;-><init>(Ljava/util/Collection;I)V

    return-object v0
.end method

.method public static whitelist test-api spliterator(Ljava/util/Iterator;JI)Ljava/util/Spliterator;
    .registers 6
    .param p1, "size"    # J
    .param p3, "characteristics"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;JI)",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 451
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    new-instance v0, Ljava/util/Spliterators$IteratorSpliterator;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Iterator;

    invoke-direct {v0, v1, p1, p2, p3}, Ljava/util/Spliterators$IteratorSpliterator;-><init>(Ljava/util/Iterator;JI)V

    return-object v0
.end method

.method public static whitelist test-api spliterator([Ljava/lang/Object;I)Ljava/util/Spliterator;
    .registers 4
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "additionalCharacteristics"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "I)",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 142
    new-instance v0, Ljava/util/Spliterators$ArraySpliterator;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    invoke-direct {v0, v1, p1}, Ljava/util/Spliterators$ArraySpliterator;-><init>([Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static whitelist test-api spliterator([Ljava/lang/Object;III)Ljava/util/Spliterator;
    .registers 5
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "additionalCharacteristics"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "III)",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 177
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    invoke-static {v0, p1, p2}, Ljava/util/Spliterators;->checkFromToBounds(III)V

    .line 178
    new-instance v0, Ljava/util/Spliterators$ArraySpliterator;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/util/Spliterators$ArraySpliterator;-><init>([Ljava/lang/Object;III)V

    return-object v0
.end method

.method public static whitelist test-api spliteratorUnknownSize(Ljava/util/PrimitiveIterator$OfDouble;I)Ljava/util/Spliterator$OfDouble;
    .registers 4
    .param p0, "iterator"    # Ljava/util/PrimitiveIterator$OfDouble;
    .param p1, "characteristics"    # I

    .line 649
    new-instance v0, Ljava/util/Spliterators$DoubleIteratorSpliterator;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/PrimitiveIterator$OfDouble;

    invoke-direct {v0, v1, p1}, Ljava/util/Spliterators$DoubleIteratorSpliterator;-><init>(Ljava/util/PrimitiveIterator$OfDouble;I)V

    return-object v0
.end method

.method public static whitelist test-api spliteratorUnknownSize(Ljava/util/PrimitiveIterator$OfInt;I)Ljava/util/Spliterator$OfInt;
    .registers 4
    .param p0, "iterator"    # Ljava/util/PrimitiveIterator$OfInt;
    .param p1, "characteristics"    # I

    .line 535
    new-instance v0, Ljava/util/Spliterators$IntIteratorSpliterator;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/PrimitiveIterator$OfInt;

    invoke-direct {v0, v1, p1}, Ljava/util/Spliterators$IntIteratorSpliterator;-><init>(Ljava/util/PrimitiveIterator$OfInt;I)V

    return-object v0
.end method

.method public static whitelist test-api spliteratorUnknownSize(Ljava/util/PrimitiveIterator$OfLong;I)Ljava/util/Spliterator$OfLong;
    .registers 4
    .param p0, "iterator"    # Ljava/util/PrimitiveIterator$OfLong;
    .param p1, "characteristics"    # I

    .line 592
    new-instance v0, Ljava/util/Spliterators$LongIteratorSpliterator;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/PrimitiveIterator$OfLong;

    invoke-direct {v0, v1, p1}, Ljava/util/Spliterators$LongIteratorSpliterator;-><init>(Ljava/util/PrimitiveIterator$OfLong;I)V

    return-object v0
.end method

.method public static whitelist test-api spliteratorUnknownSize(Ljava/util/Iterator;I)Ljava/util/Spliterator;
    .registers 4
    .param p1, "characteristics"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;I)",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 478
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    new-instance v0, Ljava/util/Spliterators$IteratorSpliterator;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Iterator;

    invoke-direct {v0, v1, p1}, Ljava/util/Spliterators$IteratorSpliterator;-><init>(Ljava/util/Iterator;I)V

    return-object v0
.end method
