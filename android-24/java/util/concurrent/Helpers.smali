.class Ljava/util/concurrent/Helpers;
.super Ljava/lang/Object;
.source "Helpers.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static collectionToString(Ljava/util/Collection;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 24
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 25
    .local v0, "a":[Ljava/lang/Object;
    array-length v5, v0

    #@5
    .line 26
    .local v5, "size":I
    if-nez v5, :cond_0

    #@7
    .line 27
    const-string/jumbo v6, "[]"

    #@a
    return-object v6

    #@b
    .line 28
    :cond_0
    const/4 v1, 0x0

    #@c
    .line 31
    .local v1, "charLength":I
    const/4 v3, 0x0

    #@d
    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_2

    #@f
    .line 32
    aget-object v2, v0, v3

    #@11
    .line 34
    .local v2, "e":Ljava/lang/Object;
    if-ne v2, p0, :cond_1

    #@13
    const-string/jumbo v4, "(this Collection)"

    #@16
    .line 35
    .local v4, "s":Ljava/lang/String;
    :goto_1
    aput-object v4, v0, v3

    #@18
    .line 36
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@1b
    move-result v6

    #@1c
    add-int/2addr v1, v6

    #@1d
    .line 31
    add-int/lit8 v3, v3, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 34
    .end local v4    # "s":Ljava/lang/String;
    :cond_1
    invoke-static {v2}, Ljava/util/concurrent/Helpers;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    #@23
    move-result-object v4

    #@24
    goto :goto_1

    #@25
    .line 39
    .end local v2    # "e":Ljava/lang/Object;
    :cond_2
    invoke-static {v0, v5, v1}, Ljava/util/concurrent/Helpers;->toString([Ljava/lang/Object;II)Ljava/lang/String;

    #@28
    move-result-object v6

    #@29
    return-object v6
.end method

.method static mapEntryToString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .param p0, "key"    # Ljava/lang/Object;
    .param p1, "val"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 76
    invoke-static {p0}, Ljava/util/concurrent/Helpers;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    .local v1, "k":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@8
    move-result v2

    #@9
    .line 77
    .local v2, "klen":I
    invoke-static {p1}, Ljava/util/concurrent/Helpers;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    #@c
    move-result-object v3

    #@d
    .local v3, "v":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@10
    move-result v4

    #@11
    .line 76
    .local v4, "vlen":I
    add-int v5, v2, v4

    #@13
    add-int/lit8 v5, v5, 0x1

    #@15
    new-array v0, v5, [C

    #@17
    .line 78
    .local v0, "chars":[C
    invoke-virtual {v1, v6, v2, v0, v6}, Ljava/lang/String;->getChars(II[CI)V

    #@1a
    .line 79
    const/16 v5, 0x3d

    #@1c
    aput-char v5, v0, v2

    #@1e
    .line 80
    add-int/lit8 v5, v2, 0x1

    #@20
    invoke-virtual {v3, v6, v4, v0, v5}, Ljava/lang/String;->getChars(II[CI)V

    #@23
    .line 81
    new-instance v5, Ljava/lang/String;

    #@25
    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([C)V

    #@28
    return-object v5
.end method

.method private static objectToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "x"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 87
    if-eqz p0, :cond_0

    #@2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_1

    #@8
    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "null"

    #@b
    :cond_1
    return-object v0
.end method

.method static toString([Ljava/lang/Object;II)Ljava/lang/String;
    .locals 8
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "size"    # I
    .param p2, "charLength"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 53
    mul-int/lit8 v6, p1, 0x2

    #@3
    add-int/2addr v6, p2

    #@4
    new-array v0, v6, [C

    #@6
    .line 54
    .local v0, "chars":[C
    const/16 v6, 0x5b

    #@8
    aput-char v6, v0, v7

    #@a
    .line 55
    const/4 v2, 0x1

    #@b
    .line 56
    .local v2, "j":I
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    move v3, v2

    #@d
    .end local v2    # "j":I
    .local v3, "j":I
    :goto_0
    if-ge v1, p1, :cond_0

    #@f
    .line 57
    if-lez v1, :cond_1

    #@11
    .line 58
    add-int/lit8 v2, v3, 0x1

    #@13
    .end local v3    # "j":I
    .restart local v2    # "j":I
    const/16 v6, 0x2c

    #@15
    aput-char v6, v0, v3

    #@17
    .line 59
    add-int/lit8 v3, v2, 0x1

    #@19
    .end local v2    # "j":I
    .restart local v3    # "j":I
    const/16 v6, 0x20

    #@1b
    aput-char v6, v0, v2

    #@1d
    move v2, v3

    #@1e
    .line 61
    .end local v3    # "j":I
    .restart local v2    # "j":I
    :goto_1
    aget-object v5, p0, v1

    #@20
    check-cast v5, Ljava/lang/String;

    #@22
    .line 62
    .local v5, "s":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@25
    move-result v4

    #@26
    .line 63
    .local v4, "len":I
    invoke-virtual {v5, v7, v4, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    #@29
    .line 64
    add-int/2addr v2, v4

    #@2a
    .line 56
    add-int/lit8 v1, v1, 0x1

    #@2c
    move v3, v2

    #@2d
    .end local v2    # "j":I
    .restart local v3    # "j":I
    goto :goto_0

    #@2e
    .line 66
    .end local v4    # "len":I
    .end local v5    # "s":Ljava/lang/String;
    :cond_0
    const/16 v6, 0x5d

    #@30
    aput-char v6, v0, v3

    #@32
    .line 68
    new-instance v6, Ljava/lang/String;

    #@34
    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([C)V

    #@37
    return-object v6

    #@38
    :cond_1
    move v2, v3

    #@39
    .end local v3    # "j":I
    .restart local v2    # "j":I
    goto :goto_1
.end method
