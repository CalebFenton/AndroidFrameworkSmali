.class public final Lcom/android/org/conscrypt/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist checkOffsetAndCount(III)V
    .registers 6
    .param p0, "arrayLength"    # I
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .line 35
    or-int v0, p1, p2

    if-ltz v0, :cond_b

    if-gt p1, p0, :cond_b

    sub-int v0, p0, p1

    if-lt v0, p2, :cond_b

    .line 39
    return-void

    .line 36
    :cond_b
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; regionStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; regionLength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist concat([B[B)[B
    .registers 6
    .param p0, "a1"    # [B
    .param p1, "a2"    # [B

    .line 54
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 55
    .local v0, "result":[B
    array-length v1, p0

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    return-object v0
.end method

.method public static blacklist concat([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .line 48
    .local p0, "a1":[Ljava/lang/Object;, "[TT;"
    .local p1, "a2":[Ljava/lang/Object;, "[TT;"
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 49
    .local v0, "result":[Ljava/lang/Object;, "[TT;"
    array-length v1, p0

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    return-object v0
.end method

.method public static varargs blacklist concatValues([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 44
    .local p0, "a1":[Ljava/lang/Object;, "[TT;"
    .local p1, "values":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0, p1}, Lcom/android/org/conscrypt/ArrayUtils;->concat([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist isEmpty([Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)Z"
        }
    .end annotation

    .line 85
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    if-eqz p0, :cond_8

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 v0, 0x1

    :goto_9
    return v0
.end method

.method public static blacklist reverse([B)[B
    .registers 6
    .param p0, "array"    # [B

    .line 72
    array-length v0, p0

    new-array v0, v0, [B

    .line 73
    .local v0, "result":[B
    const/4 v1, 0x0

    .line 74
    .local v1, "front":I
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    .line 75
    .local v2, "back":I
    :goto_7
    if-ltz v2, :cond_14

    .line 76
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "front":I
    .local v3, "front":I
    add-int/lit8 v4, v2, -0x1

    .end local v2    # "back":I
    .local v4, "back":I
    aget-byte v2, p0, v2

    aput-byte v2, v0, v1

    move v1, v3

    move v2, v4

    goto :goto_7

    .line 78
    .end local v3    # "front":I
    .end local v4    # "back":I
    .restart local v1    # "front":I
    .restart local v2    # "back":I
    :cond_14
    return-object v0
.end method

.method public static blacklist startsWith([B[B)Z
    .registers 6
    .param p0, "array"    # [B
    .param p1, "startsWith"    # [B

    .line 60
    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_6

    .line 61
    return v2

    .line 63
    :cond_6
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    array-length v1, p1

    if-ge v0, v1, :cond_14

    .line 64
    aget-byte v1, p0, v0

    aget-byte v3, p1, v0

    if-eq v1, v3, :cond_11

    .line 65
    return v2

    .line 63
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 68
    .end local v0    # "i":I
    :cond_14
    const/4 v0, 0x1

    return v0
.end method
