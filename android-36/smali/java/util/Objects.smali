.class public final Ljava/util/Objects;
.super Ljava/lang/Object;
.source "Objects.java"


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No java.util.Objects instances for you!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static whitelist test-api checkFromIndexSize(III)I
    .registers 4
    .param p0, "fromIndex"    # I
    .param p1, "size"    # I
    .param p2, "length"    # I

    .line 437
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Ljdk/internal/util/Preconditions;->checkFromIndexSize(IIILjava/util/function/BiFunction;)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api checkFromIndexSize(JJJ)J
    .registers 13
    .param p0, "fromIndex"    # J
    .param p2, "size"    # J
    .param p4, "length"    # J

    .line 513
    const/4 v6, 0x0

    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    .end local p0    # "fromIndex":J
    .end local p2    # "size":J
    .end local p4    # "length":J
    .local v0, "fromIndex":J
    .local v2, "size":J
    .local v4, "length":J
    invoke-static/range {v0 .. v6}, Ljdk/internal/util/Preconditions;->checkFromIndexSize(JJJLjava/util/function/BiFunction;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static whitelist test-api checkFromToIndex(III)I
    .registers 4
    .param p0, "fromIndex"    # I
    .param p1, "toIndex"    # I
    .param p2, "length"    # I

    .line 411
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Ljdk/internal/util/Preconditions;->checkFromToIndex(IIILjava/util/function/BiFunction;)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api checkFromToIndex(JJJ)J
    .registers 13
    .param p0, "fromIndex"    # J
    .param p2, "toIndex"    # J
    .param p4, "length"    # J

    .line 487
    const/4 v6, 0x0

    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    .end local p0    # "fromIndex":J
    .end local p2    # "toIndex":J
    .end local p4    # "length":J
    .local v0, "fromIndex":J
    .local v2, "toIndex":J
    .local v4, "length":J
    invoke-static/range {v0 .. v6}, Ljdk/internal/util/Preconditions;->checkFromToIndex(JJJLjava/util/function/BiFunction;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static whitelist test-api checkIndex(II)I
    .registers 3
    .param p0, "index"    # I
    .param p1, "length"    # I

    .line 385
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljdk/internal/util/Preconditions;->checkIndex(IILjava/util/function/BiFunction;)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api checkIndex(JJ)J
    .registers 6
    .param p0, "index"    # J
    .param p2, "length"    # J

    .line 461
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Ljdk/internal/util/Preconditions;->checkIndex(JJLjava/util/function/BiFunction;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/util/Comparator<",
            "-TT;>;)I"
        }
    .end annotation

    .line 212
    .local p0, "a":Ljava/lang/Object;, "TT;"
    .local p1, "b":Ljava/lang/Object;, "TT;"
    .local p2, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    if-ne p0, p1, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-interface {p2, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    :goto_8
    return v0
.end method

.method public static whitelist test-api deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .line 85
    if-ne p0, p1, :cond_4

    .line 86
    const/4 v0, 0x1

    return v0

    .line 87
    :cond_4
    if-eqz p0, :cond_e

    if-nez p1, :cond_9

    goto :goto_e

    .line 90
    :cond_9
    invoke-static {p0, p1}, Ljava/util/Arrays;->deepEquals0(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 88
    :cond_e
    :goto_e
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist test-api equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .line 64
    if-eq p0, p1, :cond_d

    if-eqz p0, :cond_b

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public static varargs whitelist test-api hash([Ljava/lang/Object;)I
    .registers 2
    .param p0, "values"    # [Ljava/lang/Object;

    .line 133
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api hashCode(Ljava/lang/Object;)I
    .registers 2
    .param p0, "o"    # Ljava/lang/Object;

    .line 103
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static whitelist test-api isNull(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 278
    if-nez p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method public static whitelist test-api nonNull(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 296
    if-eqz p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method public static whitelist test-api requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 232
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_3

    .line 234
    return-object p0

    .line 233
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static whitelist test-api requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 258
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_3

    .line 260
    return-object p0

    .line 259
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api requireNonNull(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    .line 358
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    .local p1, "messageSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/String;>;"
    if-nez p0, :cond_12

    .line 359
    new-instance v0, Ljava/lang/NullPointerException;

    if-nez p1, :cond_8

    .line 360
    const/4 v1, 0x0

    goto :goto_e

    :cond_8
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_e
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_12
    return-object p0
.end method

.method public static whitelist test-api requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 314
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    .local p1, "defaultObj":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_4

    move-object v0, p0

    goto :goto_a

    :cond_4
    const-string v0, "defaultObj"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :goto_a
    return-object v0
.end method

.method public static whitelist test-api requireNonNullElseGet(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/function/Supplier<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 333
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+TT;>;"
    if-eqz p0, :cond_4

    move-object v0, p0

    goto :goto_16

    .line 334
    :cond_4
    const-string v0, "supplier"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "supplier.get()"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 333
    :goto_16
    return-object v0
.end method

.method public static whitelist test-api toIdentityString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # Ljava/lang/Object;

    .line 187
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api toString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .param p0, "o"    # Ljava/lang/Object;

    .line 147
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "nullDefault"    # Ljava/lang/String;

    .line 164
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_7
    move-object v0, p1

    :goto_8
    return-object v0
.end method
