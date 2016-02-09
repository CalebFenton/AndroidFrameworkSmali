.class public final Llibcore/icu/CollationKeyICU;
.super Ljava/text/CollationKey;
.source "CollationKeyICU.java"


# instance fields
.field private final bytes:[B

.field private hashCode:I


# direct methods
.method constructor <init>(Ljava/lang/String;[B)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "bytes"    # [B

    #@0
    .prologue
    .line 30
    invoke-direct {p0, p1}, Ljava/text/CollationKey;-><init>(Ljava/lang/String;)V

    #@3
    .line 31
    iput-object p2, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    #@5
    .line 29
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/text/CollationKey;)I
    .locals 10
    .param p1, "other"    # Ljava/text/CollationKey;

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, -0x1

    #@2
    const/4 v7, 0x0

    #@3
    .line 37
    instance-of v5, p1, Llibcore/icu/CollationKeyICU;

    #@5
    if-eqz v5, :cond_2

    #@7
    .line 38
    check-cast p1, Llibcore/icu/CollationKeyICU;

    #@9
    .end local p1    # "other":Ljava/text/CollationKey;
    iget-object v2, p1, Llibcore/icu/CollationKeyICU;->bytes:[B

    #@b
    .line 43
    .local v2, "rhsBytes":[B
    :goto_0
    iget-object v5, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    #@d
    if-eqz v5, :cond_0

    #@f
    iget-object v5, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    #@11
    array-length v5, v5

    #@12
    if-nez v5, :cond_4

    #@14
    .line 44
    :cond_0
    if-eqz v2, :cond_1

    #@16
    array-length v5, v2

    #@17
    if-nez v5, :cond_3

    #@19
    .line 45
    :cond_1
    return v7

    #@1a
    .line 40
    .end local v2    # "rhsBytes":[B
    .restart local p1    # "other":Ljava/text/CollationKey;
    :cond_2
    invoke-virtual {p1}, Ljava/text/CollationKey;->toByteArray()[B

    #@1d
    move-result-object v2

    #@1e
    .restart local v2    # "rhsBytes":[B
    goto :goto_0

    #@1f
    .line 47
    .end local p1    # "other":Ljava/text/CollationKey;
    :cond_3
    return v8

    #@20
    .line 49
    :cond_4
    if-eqz v2, :cond_5

    #@22
    array-length v5, v2

    #@23
    if-nez v5, :cond_6

    #@25
    .line 50
    :cond_5
    return v9

    #@26
    .line 54
    :cond_6
    iget-object v5, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    #@28
    array-length v5, v5

    #@29
    array-length v6, v2

    #@2a
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    #@2d
    move-result v0

    #@2e
    .line 55
    .local v0, "count":I
    const/4 v1, 0x0

    #@2f
    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_9

    #@31
    .line 56
    iget-object v5, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    #@33
    aget-byte v5, v5, v1

    #@35
    and-int/lit16 v3, v5, 0xff

    #@37
    .line 57
    .local v3, "s":I
    aget-byte v5, v2, v1

    #@39
    and-int/lit16 v4, v5, 0xff

    #@3b
    .line 58
    .local v4, "t":I
    if-ge v3, v4, :cond_7

    #@3d
    .line 59
    return v8

    #@3e
    .line 61
    :cond_7
    if-le v3, v4, :cond_8

    #@40
    .line 62
    return v9

    #@41
    .line 55
    :cond_8
    add-int/lit8 v1, v1, 0x1

    #@43
    goto :goto_1

    #@44
    .line 65
    .end local v3    # "s":I
    .end local v4    # "t":I
    :cond_9
    iget-object v5, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    #@46
    array-length v5, v5

    #@47
    array-length v6, v2

    #@48
    if-ge v5, v6, :cond_a

    #@4a
    .line 66
    return v8

    #@4b
    .line 68
    :cond_a
    iget-object v5, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    #@4d
    array-length v5, v5

    #@4e
    array-length v6, v2

    #@4f
    if-le v5, v6, :cond_b

    #@51
    .line 69
    return v9

    #@52
    .line 71
    :cond_b
    return v7
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 75
    if-ne p1, p0, :cond_0

    #@4
    .line 76
    return v0

    #@5
    .line 78
    :cond_0
    instance-of v2, p1, Ljava/text/CollationKey;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 79
    return v1

    #@a
    .line 81
    :cond_1
    check-cast p1, Ljava/text/CollationKey;

    #@c
    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Llibcore/icu/CollationKeyICU;->compareTo(Ljava/text/CollationKey;)I

    #@f
    move-result v2

    #@10
    if-nez v2, :cond_2

    #@12
    :goto_0
    return v0

    #@13
    :cond_2
    move v0, v1

    #@14
    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    #@0
    .prologue
    .line 95
    iget v3, p0, Llibcore/icu/CollationKeyICU;->hashCode:I

    #@2
    if-nez v3, :cond_1

    #@4
    .line 96
    iget-object v3, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    #@6
    if-eqz v3, :cond_0

    #@8
    iget-object v3, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    #@a
    array-length v3, v3

    #@b
    if-eqz v3, :cond_0

    #@d
    .line 97
    iget-object v3, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    #@f
    array-length v2, v3

    #@10
    .line 98
    .local v2, "len":I
    add-int/lit8 v3, v2, -0x20

    #@12
    div-int/lit8 v3, v3, 0x20

    #@14
    add-int/lit8 v1, v3, 0x1

    #@16
    .line 99
    .local v1, "inc":I
    const/4 v0, 0x0

    #@17
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@19
    .line 100
    iget v3, p0, Llibcore/icu/CollationKeyICU;->hashCode:I

    #@1b
    mul-int/lit8 v3, v3, 0x25

    #@1d
    iget-object v4, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    #@1f
    aget-byte v4, v4, v0

    #@21
    add-int/2addr v3, v4

    #@22
    iput v3, p0, Llibcore/icu/CollationKeyICU;->hashCode:I

    #@24
    .line 101
    add-int/2addr v0, v1

    #@25
    goto :goto_0

    #@26
    .line 104
    .end local v0    # "i":I
    .end local v1    # "inc":I
    .end local v2    # "len":I
    :cond_0
    iget v3, p0, Llibcore/icu/CollationKeyICU;->hashCode:I

    #@28
    if-nez v3, :cond_1

    #@2a
    .line 105
    const/4 v3, 0x1

    #@2b
    iput v3, p0, Llibcore/icu/CollationKeyICU;->hashCode:I

    #@2d
    .line 108
    :cond_1
    iget v3, p0, Llibcore/icu/CollationKeyICU;->hashCode:I

    #@2f
    return v3
.end method

.method public toByteArray()[B
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 112
    iget-object v0, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    #@7
    array-length v0, v0

    #@8
    if-nez v0, :cond_1

    #@a
    .line 113
    :cond_0
    return-object v1

    #@b
    .line 115
    :cond_1
    iget-object v0, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    #@d
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, [B

    #@13
    return-object v0
.end method
