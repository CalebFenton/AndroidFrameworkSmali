.class public Ljdk/internal/util/Preconditions;
.super Ljava/lang/Object;
.source "Preconditions.java"


# direct methods
.method static bridge synthetic blacklist -$$Nest$smoutOfBoundsMessage(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Ljdk/internal/util/Preconditions;->outOfBoundsMessage(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist checkFromIndexSize(IIILjava/util/function/BiFunction;)I
    .registers 5
    .param p0, "fromIndex"    # I
    .param p1, "size"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/RuntimeException;",
            ">(III",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;TX;>;)I"
        }
    .end annotation

    .line 360
    .local p3, "oobef":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/String;Ljava/util/List<Ljava/lang/Number;>;TX;>;"
    or-int v0, p2, p0

    or-int/2addr v0, p1

    if-ltz v0, :cond_a

    sub-int v0, p2, p0

    if-gt p1, v0, :cond_a

    .line 362
    return p0

    .line 361
    :cond_a
    invoke-static {p3, p0, p1, p2}, Ljdk/internal/util/Preconditions;->outOfBoundsCheckFromIndexSize(Ljava/util/function/BiFunction;III)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static blacklist checkFromIndexSize(JJJLjava/util/function/BiFunction;)J
    .registers 13
    .param p0, "fromIndex"    # J
    .param p2, "size"    # J
    .param p4, "length"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/RuntimeException;",
            ">(JJJ",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;TX;>;)J"
        }
    .end annotation

    .line 507
    .local p6, "oobef":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/String;Ljava/util/List<Ljava/lang/Number;>;TX;>;"
    or-long v0, p4, p0

    or-long/2addr v0, p2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_10

    sub-long v0, p4, p0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_10

    .line 509
    return-wide p0

    .line 508
    :cond_10
    move-wide v4, p0

    move-object p0, p6

    move-wide p5, p4

    move-wide p3, p2

    move-wide p1, v4

    .end local p2    # "size":J
    .end local p4    # "length":J
    .end local p6    # "oobef":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/String;Ljava/util/List<Ljava/lang/Number;>;TX;>;"
    .local p0, "oobef":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/String;Ljava/util/List<Ljava/lang/Number;>;TX;>;"
    .local p1, "fromIndex":J
    .local p3, "size":J
    .local p5, "length":J
    invoke-static/range {p0 .. p6}, Ljdk/internal/util/Preconditions;->outOfBoundsCheckFromIndexSize(Ljava/util/function/BiFunction;JJJ)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static blacklist checkFromToIndex(IIILjava/util/function/BiFunction;)I
    .registers 5
    .param p0, "fromIndex"    # I
    .param p1, "toIndex"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/RuntimeException;",
            ">(III",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;TX;>;)I"
        }
    .end annotation

    .line 312
    .local p3, "oobef":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/String;Ljava/util/List<Ljava/lang/Number;>;TX;>;"
    if-ltz p0, :cond_7

    if-gt p0, p1, :cond_7

    if-gt p1, p2, :cond_7

    .line 314
    return p0

    .line 313
    :cond_7
    invoke-static {p3, p0, p1, p2}, Ljdk/internal/util/Preconditions;->outOfBoundsCheckFromToIndex(Ljava/util/function/BiFunction;III)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static blacklist checkFromToIndex(JJJLjava/util/function/BiFunction;)J
    .registers 11
    .param p0, "fromIndex"    # J
    .param p2, "toIndex"    # J
    .param p4, "length"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/RuntimeException;",
            ">(JJJ",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;TX;>;)J"
        }
    .end annotation

    .line 459
    .local p6, "oobef":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/String;Ljava/util/List<Ljava/lang/Number;>;TX;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_f

    cmp-long v0, p0, p2

    if-gtz v0, :cond_f

    cmp-long v0, p2, p4

    if-gtz v0, :cond_f

    .line 461
    return-wide p0

    .line 460
    :cond_f
    move-wide v2, p0

    move-object p0, p6

    move-wide p5, p4

    move-wide p3, p2

    move-wide p1, v2

    .end local p2    # "toIndex":J
    .end local p4    # "length":J
    .end local p6    # "oobef":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/String;Ljava/util/List<Ljava/lang/Number;>;TX;>;"
    .local p0, "oobef":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/String;Ljava/util/List<Ljava/lang/Number;>;TX;>;"
    .local p1, "fromIndex":J
    .local p3, "toIndex":J
    .local p5, "length":J
    invoke-static/range {p0 .. p6}, Ljdk/internal/util/Preconditions;->outOfBoundsCheckFromToIndex(Ljava/util/function/BiFunction;JJJ)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static blacklist checkIndex(IILjava/util/function/BiFunction;)I
    .registers 4
    .param p0, "index"    # I
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/RuntimeException;",
            ">(II",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;TX;>;)I"
        }
    .end annotation

    .line 265
    .local p2, "oobef":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/String;Ljava/util/List<Ljava/lang/Number;>;TX;>;"
    if-ltz p0, :cond_5

    if-ge p0, p1, :cond_5

    .line 267
    return p0

    .line 266
    :cond_5
    invoke-static {p2, p0, p1}, Ljdk/internal/util/Preconditions;->outOfBoundsCheckIndex(Ljava/util/function/BiFunction;II)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static blacklist checkIndex(JJLjava/util/function/BiFunction;)J
    .registers 7
    .param p0, "index"    # J
    .param p2, "length"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/RuntimeException;",
            ">(JJ",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;TX;>;)J"
        }
    .end annotation

    .line 412
    .local p4, "oobef":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/String;Ljava/util/List<Ljava/lang/Number;>;TX;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_b

    cmp-long v0, p0, p2

    if-gez v0, :cond_b

    .line 414
    return-wide p0

    .line 413
    :cond_b
    invoke-static {p4, p0, p1, p2, p3}, Ljdk/internal/util/Preconditions;->outOfBoundsCheckIndex(Ljava/util/function/BiFunction;JJ)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private static varargs blacklist outOfBounds(Ljava/util/function/BiFunction;Ljava/lang/String;[Ljava/lang/Number;)Ljava/lang/RuntimeException;
    .registers 7
    .param p1, "checkKind"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;+",
            "Ljava/lang/RuntimeException;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Number;",
            ")",
            "Ljava/lang/RuntimeException;"
        }
    .end annotation

    .line 60
    .local p0, "oobef":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/String;Ljava/util/List<Ljava/lang/Number;>;+Ljava/lang/RuntimeException;>;"
    invoke-static {p2}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 61
    .local v0, "largs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Number;>;"
    if-nez p0, :cond_8

    .line 62
    const/4 v1, 0x0

    goto :goto_e

    :cond_8
    invoke-interface {p0, p1, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/RuntimeException;

    .line 63
    .local v1, "e":Ljava/lang/RuntimeException;
    :goto_e
    if-nez v1, :cond_1a

    .line 64
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1, v0}, Ljdk/internal/util/Preconditions;->outOfBoundsMessage(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_1b

    :cond_1a
    move-object v2, v1

    .line 63
    :goto_1b
    return-object v2
.end method

.method private static blacklist outOfBoundsCheckFromIndexSize(Ljava/util/function/BiFunction;III)Ljava/lang/RuntimeException;
    .registers 7
    .param p1, "fromIndex"    # I
    .param p2, "size"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;+",
            "Ljava/lang/RuntimeException;",
            ">;III)",
            "Ljava/lang/RuntimeException;"
        }
    .end annotation

    .line 82
    .local p0, "oobe":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/String;Ljava/util/List<Ljava/lang/Number;>;+Ljava/lang/RuntimeException;>;"
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Number;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "checkFromIndexSize"

    invoke-static {p0, v1, v0}, Ljdk/internal/util/Preconditions;->outOfBounds(Ljava/util/function/BiFunction;Ljava/lang/String;[Ljava/lang/Number;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist outOfBoundsCheckFromIndexSize(Ljava/util/function/BiFunction;JJJ)Ljava/lang/RuntimeException;
    .registers 10
    .param p1, "fromIndex"    # J
    .param p3, "size"    # J
    .param p5, "length"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;+",
            "Ljava/lang/RuntimeException;",
            ">;JJJ)",
            "Ljava/lang/RuntimeException;"
        }
    .end annotation

    .line 100
    .local p0, "oobe":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/String;Ljava/util/List<Ljava/lang/Number;>;+Ljava/lang/RuntimeException;>;"
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Number;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "checkFromIndexSize"

    invoke-static {p0, v1, v0}, Ljdk/internal/util/Preconditions;->outOfBounds(Ljava/util/function/BiFunction;Ljava/lang/String;[Ljava/lang/Number;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist outOfBoundsCheckFromToIndex(Ljava/util/function/BiFunction;III)Ljava/lang/RuntimeException;
    .registers 7
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;+",
            "Ljava/lang/RuntimeException;",
            ">;III)",
            "Ljava/lang/RuntimeException;"
        }
    .end annotation

    .line 76
    .local p0, "oobe":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/String;Ljava/util/List<Ljava/lang/Number;>;+Ljava/lang/RuntimeException;>;"
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Number;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "checkFromToIndex"

    invoke-static {p0, v1, v0}, Ljdk/internal/util/Preconditions;->outOfBounds(Ljava/util/function/BiFunction;Ljava/lang/String;[Ljava/lang/Number;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist outOfBoundsCheckFromToIndex(Ljava/util/function/BiFunction;JJJ)Ljava/lang/RuntimeException;
    .registers 10
    .param p1, "fromIndex"    # J
    .param p3, "toIndex"    # J
    .param p5, "length"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;+",
            "Ljava/lang/RuntimeException;",
            ">;JJJ)",
            "Ljava/lang/RuntimeException;"
        }
    .end annotation

    .line 94
    .local p0, "oobe":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/String;Ljava/util/List<Ljava/lang/Number;>;+Ljava/lang/RuntimeException;>;"
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Number;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "checkFromToIndex"

    invoke-static {p0, v1, v0}, Ljdk/internal/util/Preconditions;->outOfBounds(Ljava/util/function/BiFunction;Ljava/lang/String;[Ljava/lang/Number;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist outOfBoundsCheckIndex(Ljava/util/function/BiFunction;II)Ljava/lang/RuntimeException;
    .registers 6
    .param p1, "index"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;+",
            "Ljava/lang/RuntimeException;",
            ">;II)",
            "Ljava/lang/RuntimeException;"
        }
    .end annotation

    .line 70
    .local p0, "oobe":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/String;Ljava/util/List<Ljava/lang/Number;>;+Ljava/lang/RuntimeException;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Number;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "checkIndex"

    invoke-static {p0, v1, v0}, Ljdk/internal/util/Preconditions;->outOfBounds(Ljava/util/function/BiFunction;Ljava/lang/String;[Ljava/lang/Number;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist outOfBoundsCheckIndex(Ljava/util/function/BiFunction;JJ)Ljava/lang/RuntimeException;
    .registers 8
    .param p1, "index"    # J
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;+",
            "Ljava/lang/RuntimeException;",
            ">;JJ)",
            "Ljava/lang/RuntimeException;"
        }
    .end annotation

    .line 88
    .local p0, "oobe":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/String;Ljava/util/List<Ljava/lang/Number;>;+Ljava/lang/RuntimeException;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Number;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "checkIndex"

    invoke-static {p0, v1, v0}, Ljdk/internal/util/Preconditions;->outOfBounds(Ljava/util/function/BiFunction;Ljava/lang/String;[Ljava/lang/Number;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist outOfBoundsExceptionFormatter(Ljava/util/function/Function;)Ljava/util/function/BiFunction;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/RuntimeException;",
            ">(",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "TX;>;)",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;TX;>;"
        }
    .end annotation

    .line 174
    .local p0, "f":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;TX;>;"
    new-instance v0, Ljdk/internal/util/Preconditions$1;

    invoke-direct {v0, p0}, Ljdk/internal/util/Preconditions$1;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method private static blacklist outOfBoundsMessage(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .registers 12
    .param p0, "checkKind"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Number;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 183
    .local p1, "args":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Number;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_e

    if-nez p1, :cond_e

    .line 184
    const-string v1, "Range check failed"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 185
    :cond_e
    const-string v1, "Range check failed: %s"

    if-nez p0, :cond_1b

    .line 186
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 187
    :cond_1b
    if-nez p1, :cond_26

    .line 188
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 191
    :cond_26
    const/4 v1, 0x0

    .line 192
    .local v1, "argSize":I
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v3, "checkFromIndexSize"

    const-string v4, "checkFromToIndex"

    const-string v5, "checkIndex"

    const/4 v6, -0x1

    const/4 v7, 0x2

    const/4 v8, 0x1

    sparse-switch v2, :sswitch_data_d4

    :cond_37
    goto :goto_50

    :sswitch_38
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    move v2, v7

    goto :goto_51

    :sswitch_40
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    move v2, v8

    goto :goto_51

    :sswitch_48
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    move v2, v0

    goto :goto_51

    :goto_50
    move v2, v6

    :goto_51
    packed-switch v2, :pswitch_data_e2

    goto :goto_59

    .line 198
    :pswitch_55
    const/4 v1, 0x3

    .line 199
    goto :goto_59

    .line 194
    :pswitch_57
    const/4 v1, 0x2

    .line 195
    nop

    .line 204
    :goto_59
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v2, v1, :cond_62

    const-string v2, ""

    goto :goto_63

    :cond_62
    move-object v2, p0

    :goto_63
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_ec

    :cond_6a
    goto :goto_82

    :sswitch_6b
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    move v6, v7

    goto :goto_82

    :sswitch_73
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    move v6, v8

    goto :goto_82

    :sswitch_7b
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    move v6, v0

    :goto_82
    packed-switch v6, :pswitch_data_fa

    .line 215
    const-string v0, "Range check failed: %s %s"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 212
    :pswitch_90
    nop

    .line 213
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    filled-new-array {v0, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 212
    const-string v2, "Range [%s, %<s + %s) out of bounds for length %s"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 209
    :pswitch_a8
    nop

    .line 210
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    filled-new-array {v0, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 209
    const-string v2, "Range [%s, %s) out of bounds for length %s"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 206
    :pswitch_c0
    nop

    .line 207
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 206
    const-string v2, "Index %s out of bounds for length %s"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_data_d4
    .sparse-switch
        -0x201dc756 -> :sswitch_48
        0x6def39e5 -> :sswitch_40
        0x6e348341 -> :sswitch_38
    .end sparse-switch

    :pswitch_data_e2
    .packed-switch 0x0
        :pswitch_57
        :pswitch_55
        :pswitch_55
    .end packed-switch

    :sswitch_data_ec
    .sparse-switch
        -0x201dc756 -> :sswitch_7b
        0x6def39e5 -> :sswitch_73
        0x6e348341 -> :sswitch_6b
    .end sparse-switch

    :pswitch_data_fa
    .packed-switch 0x0
        :pswitch_c0
        :pswitch_a8
        :pswitch_90
    .end packed-switch
.end method
