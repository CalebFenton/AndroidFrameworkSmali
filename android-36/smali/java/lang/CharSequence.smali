.class public interface abstract Ljava/lang/CharSequence;
.super Ljava/lang/Object;
.source "CharSequence.java"


# direct methods
.method public static synthetic blacklist $r8$lambda$b90r_-RvKSomERXTQT28QWJHl7o(Ljava/lang/CharSequence;)Ljava/util/Spliterator$OfInt;
    .registers 1

    invoke-direct {p0}, Ljava/lang/CharSequence;->lambda$codePoints$1()Ljava/util/Spliterator$OfInt;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$wQi8e-h4w6VOR116gpXnxiYyDp8(Ljava/lang/CharSequence;)Ljava/util/Spliterator$OfInt;
    .registers 1

    invoke-direct {p0}, Ljava/lang/CharSequence;->lambda$chars$0()Ljava/util/Spliterator$OfInt;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist test-api compare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 7
    .param p0, "cs1"    # Ljava/lang/CharSequence;
    .param p1, "cs2"    # Ljava/lang/CharSequence;

    .line 286
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_c

    .line 287
    const/4 v0, 0x0

    return v0

    .line 290
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_22

    instance-of v0, p0, Ljava/lang/Comparable;

    if-eqz v0, :cond_22

    .line 291
    move-object v0, p0

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {v0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 294
    :cond_22
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .local v1, "len":I
    :goto_2f
    if-ge v0, v1, :cond_41

    .line 295
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 296
    .local v2, "a":C
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 297
    .local v3, "b":C
    if-eq v2, v3, :cond_3e

    .line 298
    sub-int v4, v2, v3

    return v4

    .line 294
    .end local v2    # "a":C
    .end local v3    # "b":C
    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 302
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_41
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private synthetic blacklist lambda$chars$0()Ljava/util/Spliterator$OfInt;
    .registers 5

    .line 173
    new-instance v0, Ljava/lang/CharSequence$1CharIterator;

    invoke-direct {v0, p0}, Ljava/lang/CharSequence$1CharIterator;-><init>(Ljava/lang/CharSequence;)V

    .line 175
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    int-to-long v1, v1

    .line 173
    const/16 v3, 0x10

    invoke-static {v0, v1, v2, v3}, Ljava/util/Spliterators;->spliterator(Ljava/util/PrimitiveIterator$OfInt;JI)Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$codePoints$1()Ljava/util/Spliterator$OfInt;
    .registers 3

    .line 249
    new-instance v0, Ljava/lang/CharSequence$1CodePointIterator;

    invoke-direct {v0, p0}, Ljava/lang/CharSequence$1CodePointIterator;-><init>(Ljava/lang/CharSequence;)V

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/util/Spliterators;->spliteratorUnknownSize(Ljava/util/PrimitiveIterator$OfInt;I)Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract whitelist test-api charAt(I)C
.end method

.method public whitelist test-api chars()Ljava/util/stream/IntStream;
    .registers 4

    .line 172
    new-instance v0, Ljava/lang/CharSequence$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Ljava/lang/CharSequence$$ExternalSyntheticLambda1;-><init>(Ljava/lang/CharSequence;)V

    const/16 v1, 0x4050

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/function/Supplier;IZ)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api codePoints()Ljava/util/stream/IntStream;
    .registers 4

    .line 248
    new-instance v0, Ljava/lang/CharSequence$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Ljava/lang/CharSequence$$ExternalSyntheticLambda0;-><init>(Ljava/lang/CharSequence;)V

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/function/Supplier;IZ)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 101
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public abstract whitelist test-api length()I
.end method

.method public abstract whitelist test-api subSequence(II)Ljava/lang/CharSequence;
.end method

.method public abstract whitelist test-api toString()Ljava/lang/String;
.end method
