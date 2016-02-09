.class public final Landroid/icu/impl/UCharacterUtility;
.super Ljava/lang/Object;
.source "UCharacterUtility.java"


# static fields
.field private static final NON_CHARACTER_MAX_3_1_:I = 0xfdef

.field private static final NON_CHARACTER_MIN_3_1_:I = 0xfdd0

.field private static final NON_CHARACTER_SUFFIX_MIN_3_0_:I = 0xfffe


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static compareNullTermByteSubString(Ljava/lang/String;[BII)I
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "array"    # [B
    .param p2, "strindex"    # I
    .param p3, "aindex"    # I

    #@0
    .prologue
    .line 90
    const/4 v0, 0x1

    #@1
    .line 91
    .local v0, "b":B
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v1

    #@5
    .line 93
    .end local v0    # "b":B
    .local v1, "length":I
    :goto_0
    if-eqz v0, :cond_0

    #@7
    .line 95
    aget-byte v0, p1, p3

    #@9
    .line 96
    .local v0, "b":B
    add-int/lit8 p3, p3, 0x1

    #@b
    .line 97
    if-nez v0, :cond_1

    #@d
    .line 108
    .end local v0    # "b":B
    :cond_0
    return p2

    #@e
    .line 102
    .restart local v0    # "b":B
    :cond_1
    if-eq p2, v1, :cond_2

    #@10
    .line 103
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    #@13
    move-result v2

    #@14
    and-int/lit16 v3, v0, 0xff

    #@16
    int-to-char v3, v3

    #@17
    if-eq v2, v3, :cond_3

    #@19
    .line 104
    :cond_2
    const/4 v2, -0x1

    #@1a
    return v2

    #@1b
    .line 106
    :cond_3
    add-int/lit8 p2, p2, 0x1

    #@1d
    goto :goto_0
.end method

.method static getNullTermByteSubString(Ljava/lang/StringBuffer;[BI)I
    .locals 2
    .param p0, "str"    # Ljava/lang/StringBuffer;
    .param p1, "array"    # [B
    .param p2, "index"    # I

    #@0
    .prologue
    .line 62
    const/4 v0, 0x1

    #@1
    .line 64
    :goto_0
    if-eqz v0, :cond_1

    #@3
    .line 66
    aget-byte v0, p1, p2

    #@5
    .line 67
    .local v0, "b":B
    if-eqz v0, :cond_0

    #@7
    .line 68
    and-int/lit16 v1, v0, 0xff

    #@9
    int-to-char v1, v1

    #@a
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@d
    .line 70
    :cond_0
    add-int/lit8 p2, p2, 0x1

    #@f
    goto :goto_0

    #@10
    .line 72
    .end local v0    # "b":B
    :cond_1
    return p2
.end method

.method public static isNonCharacter(I)Z
    .locals 4
    .param p0, "ch"    # I

    #@0
    .prologue
    const v3, 0xfffe

    #@3
    const/4 v0, 0x1

    #@4
    const/4 v1, 0x0

    #@5
    .line 27
    and-int v2, p0, v3

    #@7
    if-ne v2, v3, :cond_0

    #@9
    .line 29
    return v0

    #@a
    .line 32
    :cond_0
    const v2, 0xfdd0

    #@d
    if-lt p0, v2, :cond_1

    #@f
    const v2, 0xfdef

    #@12
    if-gt p0, v2, :cond_1

    #@14
    :goto_0
    return v0

    #@15
    :cond_1
    move v0, v1

    #@16
    goto :goto_0
.end method

.method static skipByteSubString([BIIB)I
    .locals 3
    .param p0, "array"    # [B
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "skipend"    # B

    #@0
    .prologue
    .line 154
    const/4 v1, 0x0

    #@1
    .local v1, "result":I
    :goto_0
    if-ge v1, p2, :cond_0

    #@3
    .line 156
    add-int v2, p1, v1

    #@5
    aget-byte v0, p0, v2

    #@7
    .line 157
    .local v0, "b":B
    if-ne v0, p3, :cond_1

    #@9
    .line 159
    add-int/lit8 v1, v1, 0x1

    #@b
    .line 164
    .end local v0    # "b":B
    :cond_0
    return v1

    #@c
    .line 154
    .restart local v0    # "b":B
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@e
    goto :goto_0
.end method

.method static skipNullTermByteSubString([BII)I
    .locals 2
    .param p0, "array"    # [B
    .param p1, "index"    # I
    .param p2, "skipcount"    # I

    #@0
    .prologue
    .line 125
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    #@3
    .line 127
    const/4 v0, 0x1

    #@4
    .line 128
    :goto_1
    if-eqz v0, :cond_0

    #@6
    .line 130
    aget-byte v0, p0, p1

    #@8
    .line 131
    .local v0, "b":B
    add-int/lit8 p1, p1, 0x1

    #@a
    goto :goto_1

    #@b
    .line 125
    .end local v0    # "b":B
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@d
    goto :goto_0

    #@e
    .line 134
    :cond_1
    return p1
.end method

.method static toInt(CC)I
    .locals 1
    .param p0, "msc"    # C
    .param p1, "lsc"    # C

    #@0
    .prologue
    .line 45
    shl-int/lit8 v0, p0, 0x10

    #@2
    or-int/2addr v0, p1

    #@3
    return v0
.end method
