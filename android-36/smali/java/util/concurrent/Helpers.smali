.class Ljava/util/concurrent/Helpers;
.super Ljava/lang/Object;
.source "Helpers.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist collectionToString(Ljava/util/Collection;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 53
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 54
    .local v0, "a":[Ljava/lang/Object;
    array-length v1, v0

    .line 55
    .local v1, "size":I
    if-nez v1, :cond_a

    .line 56
    const-string v2, "[]"

    return-object v2

    .line 57
    :cond_a
    const/4 v2, 0x0

    .line 60
    .local v2, "charLength":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    if-ge v3, v1, :cond_23

    .line 61
    aget-object v4, v0, v3

    .line 63
    .local v4, "e":Ljava/lang/Object;
    if-ne v4, p0, :cond_15

    const-string v5, "(this Collection)"

    goto :goto_19

    :cond_15
    invoke-static {v4}, Ljava/util/concurrent/Helpers;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 64
    .local v5, "s":Ljava/lang/String;
    :goto_19
    aput-object v5, v0, v3

    .line 65
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v2, v6

    .line 60
    .end local v4    # "e":Ljava/lang/Object;
    .end local v5    # "s":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 68
    .end local v3    # "i":I
    :cond_23
    invoke-static {v0, v1, v2}, Ljava/util/concurrent/Helpers;->toString([Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method static blacklist mapEntryToString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .registers 9
    .param p0, "key"    # Ljava/lang/Object;
    .param p1, "val"    # Ljava/lang/Object;

    .line 104
    nop

    .line 105
    invoke-static {p0}, Ljava/util/concurrent/Helpers;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .local v1, "k":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    move v2, v0

    .line 106
    .local v2, "klen":I
    invoke-static {p1}, Ljava/util/concurrent/Helpers;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "v":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    move v5, v3

    .local v5, "vlen":I
    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [C

    .line 107
    .local v0, "chars":[C
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v0, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 108
    const/16 v6, 0x3d

    aput-char v6, v0, v2

    .line 109
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v4, v3, v5, v0, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 110
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method

.method private static blacklist objectToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p0, "x"    # Ljava/lang/Object;

    .line 116
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .local v1, "s":Ljava/lang/String;
    if-nez v0, :cond_b

    .end local v1    # "s":Ljava/lang/String;
    :cond_9
    const-string v1, "null"

    :cond_b
    return-object v1
.end method

.method static blacklist toString([Ljava/lang/Object;II)Ljava/lang/String;
    .registers 9
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "size"    # I
    .param p2, "charLength"    # I

    .line 82
    mul-int/lit8 v0, p1, 0x2

    add-int/2addr v0, p2

    new-array v0, v0, [C

    .line 83
    .local v0, "chars":[C
    const/16 v1, 0x5b

    const/4 v2, 0x0

    aput-char v1, v0, v2

    .line 84
    const/4 v1, 0x1

    .line 85
    .local v1, "j":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    if-ge v3, p1, :cond_2b

    .line 86
    if-lez v3, :cond_1c

    .line 87
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "j":I
    .local v4, "j":I
    const/16 v5, 0x2c

    aput-char v5, v0, v1

    .line 88
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "j":I
    .restart local v1    # "j":I
    const/16 v5, 0x20

    aput-char v5, v0, v4

    .line 90
    :cond_1c
    aget-object v4, p0, v3

    check-cast v4, Ljava/lang/String;

    .line 91
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 92
    .local v5, "len":I
    invoke-virtual {v4, v2, v5, v0, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 93
    add-int/2addr v1, v5

    .line 85
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "len":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 95
    .end local v3    # "i":I
    :cond_2b
    const/16 v2, 0x5d

    aput-char v2, v0, v1

    .line 97
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method
