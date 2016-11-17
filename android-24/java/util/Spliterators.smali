.class public final Ljava/util/Spliterators;
.super Ljava/lang/Object;
.source "Spliterators.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Spliterators$AbstractDoubleSpliterator;,
        Ljava/util/Spliterators$AbstractIntSpliterator;,
        Ljava/util/Spliterators$AbstractLongSpliterator;,
        Ljava/util/Spliterators$AbstractSpliterator;,
        Ljava/util/Spliterators$ArraySpliterator;,
        Ljava/util/Spliterators$DoubleArraySpliterator;,
        Ljava/util/Spliterators$DoubleIteratorSpliterator;,
        Ljava/util/Spliterators$EmptySpliterator;,
        Ljava/util/Spliterators$IntArraySpliterator;,
        Ljava/util/Spliterators$IntIteratorSpliterator;,
        Ljava/util/Spliterators$IteratorSpliterator;,
        Ljava/util/Spliterators$LongArraySpliterator;,
        Ljava/util/Spliterators$LongIteratorSpliterator;
    }
.end annotation


# static fields
.field private static final EMPTY_DOUBLE_SPLITERATOR:Ljava/util/Spliterator$OfDouble;

.field private static final EMPTY_INT_SPLITERATOR:Ljava/util/Spliterator$OfInt;

.field private static final EMPTY_LONG_SPLITERATOR:Ljava/util/Spliterator$OfLong;

.field private static final EMPTY_SPLITERATOR:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Spliterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 64
    new-instance v0, Ljava/util/Spliterators$EmptySpliterator$OfRef;

    #@2
    invoke-direct {v0}, Ljava/util/Spliterators$EmptySpliterator$OfRef;-><init>()V

    #@5
    .line 63
    sput-object v0, Ljava/util/Spliterators;->EMPTY_SPLITERATOR:Ljava/util/Spliterator;

    #@7
    .line 80
    new-instance v0, Ljava/util/Spliterators$EmptySpliterator$OfInt;

    #@9
    invoke-direct {v0}, Ljava/util/Spliterators$EmptySpliterator$OfInt;-><init>()V

    #@c
    .line 79
    sput-object v0, Ljava/util/Spliterators;->EMPTY_INT_SPLITERATOR:Ljava/util/Spliterator$OfInt;

    #@e
    .line 96
    new-instance v0, Ljava/util/Spliterators$EmptySpliterator$OfLong;

    #@10
    invoke-direct {v0}, Ljava/util/Spliterators$EmptySpliterator$OfLong;-><init>()V

    #@13
    .line 95
    sput-object v0, Ljava/util/Spliterators;->EMPTY_LONG_SPLITERATOR:Ljava/util/Spliterator$OfLong;

    #@15
    .line 112
    new-instance v0, Ljava/util/Spliterators$EmptySpliterator$OfDouble;

    #@17
    invoke-direct {v0}, Ljava/util/Spliterators$EmptySpliterator$OfDouble;-><init>()V

    #@1a
    .line 111
    sput-object v0, Ljava/util/Spliterators;->EMPTY_DOUBLE_SPLITERATOR:Ljava/util/Spliterator$OfDouble;

    #@1c
    .line 41
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static checkFromToBounds(III)V
    .locals 3
    .param p0, "arrayLength"    # I
    .param p1, "origin"    # I
    .param p2, "fence"    # I

    #@0
    .prologue
    .line 386
    if-le p1, p2, :cond_0

    #@2
    .line 387
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@4
    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "origin("

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    const-string/jumbo v2, ") > fence("

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    const-string/jumbo v2, ")"

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    .line 387
    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v0

    #@2e
    .line 390
    :cond_0
    if-gez p1, :cond_1

    #@30
    .line 391
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@32
    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    #@35
    throw v0

    #@36
    .line 393
    :cond_1
    if-le p2, p0, :cond_2

    #@38
    .line 394
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@3a
    invoke-direct {v0, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    #@3d
    throw v0

    #@3e
    .line 385
    :cond_2
    return-void
.end method

.method public static emptyDoubleSpliterator()Ljava/util/Spliterator$OfDouble;
    .locals 1

    #@0
    .prologue
    .line 108
    sget-object v0, Ljava/util/Spliterators;->EMPTY_DOUBLE_SPLITERATOR:Ljava/util/Spliterator$OfDouble;

    #@2
    return-object v0
.end method

.method public static emptyIntSpliterator()Ljava/util/Spliterator$OfInt;
    .locals 1

    #@0
    .prologue
    .line 76
    sget-object v0, Ljava/util/Spliterators;->EMPTY_INT_SPLITERATOR:Ljava/util/Spliterator$OfInt;

    #@2
    return-object v0
.end method

.method public static emptyLongSpliterator()Ljava/util/Spliterator$OfLong;
    .locals 1

    #@0
    .prologue
    .line 92
    sget-object v0, Ljava/util/Spliterators;->EMPTY_LONG_SPLITERATOR:Ljava/util/Spliterator$OfLong;

    #@2
    return-object v0
.end method

.method public static emptySpliterator()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Spliterator",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 60
    sget-object v0, Ljava/util/Spliterators;->EMPTY_SPLITERATOR:Ljava/util/Spliterator;

    #@2
    return-object v0
.end method

.method public static iterator(Ljava/util/Spliterator;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Spliterator",
            "<+TT;>;)",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 667
    .local p0, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<+TT;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 696
    new-instance v0, Ljava/util/Spliterators$1Adapter;

    #@5
    invoke-direct {v0, p0}, Ljava/util/Spliterators$1Adapter;-><init>(Ljava/util/Spliterator;)V

    #@8
    return-object v0
.end method

.method public static iterator(Ljava/util/Spliterator$OfDouble;)Ljava/util/PrimitiveIterator$OfDouble;
    .locals 1
    .param p0, "spliterator"    # Ljava/util/Spliterator$OfDouble;

    #@0
    .prologue
    .line 802
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 831
    new-instance v0, Ljava/util/Spliterators$4Adapter;

    #@5
    invoke-direct {v0, p0}, Ljava/util/Spliterators$4Adapter;-><init>(Ljava/util/Spliterator$OfDouble;)V

    #@8
    return-object v0
.end method

.method public static iterator(Ljava/util/Spliterator$OfInt;)Ljava/util/PrimitiveIterator$OfInt;
    .locals 1
    .param p0, "spliterator"    # Ljava/util/Spliterator$OfInt;

    #@0
    .prologue
    .line 712
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 741
    new-instance v0, Ljava/util/Spliterators$2Adapter;

    #@5
    invoke-direct {v0, p0}, Ljava/util/Spliterators$2Adapter;-><init>(Ljava/util/Spliterator$OfInt;)V

    #@8
    return-object v0
.end method

.method public static iterator(Ljava/util/Spliterator$OfLong;)Ljava/util/PrimitiveIterator$OfLong;
    .locals 1
    .param p0, "spliterator"    # Ljava/util/Spliterator$OfLong;

    #@0
    .prologue
    .line 757
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 786
    new-instance v0, Ljava/util/Spliterators$3Adapter;

    #@5
    invoke-direct {v0, p0}, Ljava/util/Spliterators$3Adapter;-><init>(Ljava/util/Spliterator$OfLong;)V

    #@8
    return-object v0
.end method

.method public static spliterator(Ljava/util/PrimitiveIterator$OfDouble;JI)Ljava/util/Spliterator$OfDouble;
    .locals 3
    .param p0, "iterator"    # Ljava/util/PrimitiveIterator$OfDouble;
    .param p1, "size"    # J
    .param p3, "characteristics"    # I

    #@0
    .prologue
    .line 622
    new-instance v1, Ljava/util/Spliterators$DoubleIteratorSpliterator;

    #@2
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/PrimitiveIterator$OfDouble;

    #@8
    invoke-direct {v1, v0, p1, p2, p3}, Ljava/util/Spliterators$DoubleIteratorSpliterator;-><init>(Ljava/util/PrimitiveIterator$OfDouble;JI)V

    #@b
    return-object v1
.end method

.method public static spliterator([DI)Ljava/util/Spliterator$OfDouble;
    .locals 2
    .param p0, "array"    # [D
    .param p1, "additionalCharacteristics"    # I

    #@0
    .prologue
    .line 334
    new-instance v1, Ljava/util/Spliterators$DoubleArraySpliterator;

    #@2
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [D

    #@8
    invoke-direct {v1, v0, p1}, Ljava/util/Spliterators$DoubleArraySpliterator;-><init>([DI)V

    #@b
    return-object v1
.end method

.method public static spliterator([DIII)Ljava/util/Spliterator$OfDouble;
    .locals 1
    .param p0, "array"    # [D
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "additionalCharacteristics"    # I

    #@0
    .prologue
    .line 371
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, [D

    #@6
    array-length v0, v0

    #@7
    invoke-static {v0, p1, p2}, Ljava/util/Spliterators;->checkFromToBounds(III)V

    #@a
    .line 372
    new-instance v0, Ljava/util/Spliterators$DoubleArraySpliterator;

    #@c
    invoke-direct {v0, p0, p1, p2, p3}, Ljava/util/Spliterators$DoubleArraySpliterator;-><init>([DIII)V

    #@f
    return-object v0
.end method

.method public static spliterator(Ljava/util/PrimitiveIterator$OfInt;JI)Ljava/util/Spliterator$OfInt;
    .locals 3
    .param p0, "iterator"    # Ljava/util/PrimitiveIterator$OfInt;
    .param p1, "size"    # J
    .param p3, "characteristics"    # I

    #@0
    .prologue
    .line 508
    new-instance v1, Ljava/util/Spliterators$IntIteratorSpliterator;

    #@2
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/PrimitiveIterator$OfInt;

    #@8
    invoke-direct {v1, v0, p1, p2, p3}, Ljava/util/Spliterators$IntIteratorSpliterator;-><init>(Ljava/util/PrimitiveIterator$OfInt;JI)V

    #@b
    return-object v1
.end method

.method public static spliterator([II)Ljava/util/Spliterator$OfInt;
    .locals 2
    .param p0, "array"    # [I
    .param p1, "additionalCharacteristics"    # I

    #@0
    .prologue
    .line 206
    new-instance v1, Ljava/util/Spliterators$IntArraySpliterator;

    #@2
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [I

    #@8
    invoke-direct {v1, v0, p1}, Ljava/util/Spliterators$IntArraySpliterator;-><init>([II)V

    #@b
    return-object v1
.end method

.method public static spliterator([IIII)Ljava/util/Spliterator$OfInt;
    .locals 1
    .param p0, "array"    # [I
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "additionalCharacteristics"    # I

    #@0
    .prologue
    .line 239
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, [I

    #@6
    array-length v0, v0

    #@7
    invoke-static {v0, p1, p2}, Ljava/util/Spliterators;->checkFromToBounds(III)V

    #@a
    .line 240
    new-instance v0, Ljava/util/Spliterators$IntArraySpliterator;

    #@c
    invoke-direct {v0, p0, p1, p2, p3}, Ljava/util/Spliterators$IntArraySpliterator;-><init>([IIII)V

    #@f
    return-object v0
.end method

.method public static spliterator(Ljava/util/PrimitiveIterator$OfLong;JI)Ljava/util/Spliterator$OfLong;
    .locals 3
    .param p0, "iterator"    # Ljava/util/PrimitiveIterator$OfLong;
    .param p1, "size"    # J
    .param p3, "characteristics"    # I

    #@0
    .prologue
    .line 565
    new-instance v1, Ljava/util/Spliterators$LongIteratorSpliterator;

    #@2
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/PrimitiveIterator$OfLong;

    #@8
    invoke-direct {v1, v0, p1, p2, p3}, Ljava/util/Spliterators$LongIteratorSpliterator;-><init>(Ljava/util/PrimitiveIterator$OfLong;JI)V

    #@b
    return-object v1
.end method

.method public static spliterator([JI)Ljava/util/Spliterator$OfLong;
    .locals 2
    .param p0, "array"    # [J
    .param p1, "additionalCharacteristics"    # I

    #@0
    .prologue
    .line 268
    new-instance v1, Ljava/util/Spliterators$LongArraySpliterator;

    #@2
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [J

    #@8
    invoke-direct {v1, v0, p1}, Ljava/util/Spliterators$LongArraySpliterator;-><init>([JI)V

    #@b
    return-object v1
.end method

.method public static spliterator([JIII)Ljava/util/Spliterator$OfLong;
    .locals 1
    .param p0, "array"    # [J
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "additionalCharacteristics"    # I

    #@0
    .prologue
    .line 305
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, [J

    #@6
    array-length v0, v0

    #@7
    invoke-static {v0, p1, p2}, Ljava/util/Spliterators;->checkFromToBounds(III)V

    #@a
    .line 306
    new-instance v0, Ljava/util/Spliterators$LongArraySpliterator;

    #@c
    invoke-direct {v0, p0, p1, p2, p3}, Ljava/util/Spliterators$LongArraySpliterator;-><init>([JIII)V

    #@f
    return-object v0
.end method

.method public static spliterator(Ljava/util/Collection;I)Ljava/util/Spliterator;
    .locals 2
    .param p1, "characteristics"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TT;>;I)",
            "Ljava/util/Spliterator",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 420
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    new-instance v1, Ljava/util/Spliterators$IteratorSpliterator;

    #@2
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/Collection;

    #@8
    invoke-direct {v1, v0, p1}, Ljava/util/Spliterators$IteratorSpliterator;-><init>(Ljava/util/Collection;I)V

    #@b
    return-object v1
.end method

.method public static spliterator(Ljava/util/Iterator;JI)Ljava/util/Spliterator;
    .locals 3
    .param p1, "size"    # J
    .param p3, "characteristics"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<+TT;>;JI)",
            "Ljava/util/Spliterator",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 451
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    new-instance v1, Ljava/util/Spliterators$IteratorSpliterator;

    #@2
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/Iterator;

    #@8
    invoke-direct {v1, v0, p1, p2, p3}, Ljava/util/Spliterators$IteratorSpliterator;-><init>(Ljava/util/Iterator;JI)V

    #@b
    return-object v1
.end method

.method public static spliterator([Ljava/lang/Object;I)Ljava/util/Spliterator;
    .locals 2
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "additionalCharacteristics"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "I)",
            "Ljava/util/Spliterator",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 142
    new-instance v1, Ljava/util/Spliterators$ArraySpliterator;

    #@2
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Ljava/lang/Object;

    #@8
    invoke-direct {v1, v0, p1}, Ljava/util/Spliterators$ArraySpliterator;-><init>([Ljava/lang/Object;I)V

    #@b
    return-object v1
.end method

.method public static spliterator([Ljava/lang/Object;III)Ljava/util/Spliterator;
    .locals 1
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
            "Ljava/util/Spliterator",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 177
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, [Ljava/lang/Object;

    #@6
    array-length v0, v0

    #@7
    invoke-static {v0, p1, p2}, Ljava/util/Spliterators;->checkFromToBounds(III)V

    #@a
    .line 178
    new-instance v0, Ljava/util/Spliterators$ArraySpliterator;

    #@c
    invoke-direct {v0, p0, p1, p2, p3}, Ljava/util/Spliterators$ArraySpliterator;-><init>([Ljava/lang/Object;III)V

    #@f
    return-object v0
.end method

.method public static spliteratorUnknownSize(Ljava/util/PrimitiveIterator$OfDouble;I)Ljava/util/Spliterator$OfDouble;
    .locals 2
    .param p0, "iterator"    # Ljava/util/PrimitiveIterator$OfDouble;
    .param p1, "characteristics"    # I

    #@0
    .prologue
    .line 649
    new-instance v1, Ljava/util/Spliterators$DoubleIteratorSpliterator;

    #@2
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/PrimitiveIterator$OfDouble;

    #@8
    invoke-direct {v1, v0, p1}, Ljava/util/Spliterators$DoubleIteratorSpliterator;-><init>(Ljava/util/PrimitiveIterator$OfDouble;I)V

    #@b
    return-object v1
.end method

.method public static spliteratorUnknownSize(Ljava/util/PrimitiveIterator$OfInt;I)Ljava/util/Spliterator$OfInt;
    .locals 2
    .param p0, "iterator"    # Ljava/util/PrimitiveIterator$OfInt;
    .param p1, "characteristics"    # I

    #@0
    .prologue
    .line 535
    new-instance v1, Ljava/util/Spliterators$IntIteratorSpliterator;

    #@2
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/PrimitiveIterator$OfInt;

    #@8
    invoke-direct {v1, v0, p1}, Ljava/util/Spliterators$IntIteratorSpliterator;-><init>(Ljava/util/PrimitiveIterator$OfInt;I)V

    #@b
    return-object v1
.end method

.method public static spliteratorUnknownSize(Ljava/util/PrimitiveIterator$OfLong;I)Ljava/util/Spliterator$OfLong;
    .locals 2
    .param p0, "iterator"    # Ljava/util/PrimitiveIterator$OfLong;
    .param p1, "characteristics"    # I

    #@0
    .prologue
    .line 592
    new-instance v1, Ljava/util/Spliterators$LongIteratorSpliterator;

    #@2
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/PrimitiveIterator$OfLong;

    #@8
    invoke-direct {v1, v0, p1}, Ljava/util/Spliterators$LongIteratorSpliterator;-><init>(Ljava/util/PrimitiveIterator$OfLong;I)V

    #@b
    return-object v1
.end method

.method public static spliteratorUnknownSize(Ljava/util/Iterator;I)Ljava/util/Spliterator;
    .locals 2
    .param p1, "characteristics"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<+TT;>;I)",
            "Ljava/util/Spliterator",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 478
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    new-instance v1, Ljava/util/Spliterators$IteratorSpliterator;

    #@2
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/Iterator;

    #@8
    invoke-direct {v1, v0, p1}, Ljava/util/Spliterators$IteratorSpliterator;-><init>(Ljava/util/Iterator;I)V

    #@b
    return-object v1
.end method
