.class public Lcom/android/internal/util/CharSequences;
.super Ljava/lang/Object;
.source "CharSequences.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static compareToIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 10
    .param p0, "me"    # Ljava/lang/CharSequence;
    .param p1, "another"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 119
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v4

    #@4
    .local v4, "myLen":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@7
    move-result v0

    #@8
    .line 120
    .local v0, "anotherLen":I
    const/4 v5, 0x0

    #@9
    .local v5, "myPos":I
    const/4 v1, 0x0

    #@a
    .line 121
    .local v1, "anotherPos":I
    if-ge v4, v0, :cond_0

    #@c
    move v3, v4

    #@d
    .local v3, "end":I
    move v2, v1

    #@e
    .end local v1    # "anotherPos":I
    .local v2, "anotherPos":I
    move v6, v5

    #@f
    .line 123
    .end local v5    # "myPos":I
    .local v6, "myPos":I
    :goto_0
    if-ge v6, v3, :cond_2

    #@11
    .line 124
    add-int/lit8 v5, v6, 0x1

    #@13
    .end local v6    # "myPos":I
    .restart local v5    # "myPos":I
    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    #@16
    move-result v8

    #@17
    invoke-static {v8}, Ljava/lang/Character;->toLowerCase(C)C

    #@1a
    move-result v8

    #@1b
    .line 125
    add-int/lit8 v1, v2, 0x1

    #@1d
    .end local v2    # "anotherPos":I
    .restart local v1    # "anotherPos":I
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    #@20
    move-result v9

    #@21
    invoke-static {v9}, Ljava/lang/Character;->toLowerCase(C)C

    #@24
    move-result v9

    #@25
    .line 124
    sub-int v7, v8, v9

    #@27
    .local v7, "result":I
    if-eqz v7, :cond_1

    #@29
    .line 126
    return v7

    #@2a
    .line 121
    .end local v3    # "end":I
    .end local v7    # "result":I
    :cond_0
    move v3, v0

    #@2b
    .restart local v3    # "end":I
    move v2, v1

    #@2c
    .end local v1    # "anotherPos":I
    .restart local v2    # "anotherPos":I
    move v6, v5

    #@2d
    .end local v5    # "myPos":I
    .restart local v6    # "myPos":I
    goto :goto_0

    #@2e
    .end local v2    # "anotherPos":I
    .end local v6    # "myPos":I
    .restart local v1    # "anotherPos":I
    .restart local v5    # "myPos":I
    .restart local v7    # "result":I
    :cond_1
    move v2, v1

    #@2f
    .end local v1    # "anotherPos":I
    .restart local v2    # "anotherPos":I
    move v6, v5

    #@30
    .end local v5    # "myPos":I
    .restart local v6    # "myPos":I
    goto :goto_0

    #@31
    .line 129
    .end local v7    # "result":I
    :cond_2
    sub-int v8, v4, v0

    #@33
    return v8
.end method

.method public static equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "a"    # Ljava/lang/CharSequence;
    .param p1, "b"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 97
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@4
    move-result v2

    #@5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@8
    move-result v3

    #@9
    if-eq v2, v3, :cond_0

    #@b
    .line 98
    return v4

    #@c
    .line 101
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@f
    move-result v1

    #@10
    .line 102
    .local v1, "length":I
    const/4 v0, 0x0

    #@11
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@13
    .line 103
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    #@16
    move-result v2

    #@17
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    #@1a
    move-result v3

    #@1b
    if-eq v2, v3, :cond_1

    #@1d
    .line 104
    return v4

    #@1e
    .line 102
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_0

    #@21
    .line 107
    :cond_2
    const/4 v2, 0x1

    #@22
    return v2
.end method

.method public static forAsciiBytes([B)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "bytes"    # [B

    #@0
    .prologue
    .line 31
    new-instance v0, Lcom/android/internal/util/CharSequences$1;

    #@2
    invoke-direct {v0, p0}, Lcom/android/internal/util/CharSequences$1;-><init>([B)V

    #@5
    return-object v0
.end method

.method public static forAsciiBytes([BII)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "bytes"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 63
    array-length v0, p0

    #@1
    invoke-static {p1, p2, v0}, Lcom/android/internal/util/CharSequences;->validate(III)V

    #@4
    .line 64
    new-instance v0, Lcom/android/internal/util/CharSequences$2;

    #@6
    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/util/CharSequences$2;-><init>([BII)V

    #@9
    return-object v0
.end method

.method static validate(III)V
    .locals 1
    .param p0, "start"    # I
    .param p1, "end"    # I
    .param p2, "length"    # I

    #@0
    .prologue
    .line 87
    if-gez p0, :cond_0

    #@2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@4
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@7
    throw v0

    #@8
    .line 88
    :cond_0
    if-gez p1, :cond_1

    #@a
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@c
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@f
    throw v0

    #@10
    .line 89
    :cond_1
    if-le p1, p2, :cond_2

    #@12
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@14
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@17
    throw v0

    #@18
    .line 90
    :cond_2
    if-le p0, p1, :cond_3

    #@1a
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@1c
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@1f
    throw v0

    #@20
    .line 86
    :cond_3
    return-void
.end method
