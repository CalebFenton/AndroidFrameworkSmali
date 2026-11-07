.class public final Landroid/icu/impl/UCharacterUtility;
.super Ljava/lang/Object;
.source "UCharacterUtility.java"


# static fields
.field private static final blacklist NON_CHARACTER_MAX_3_1_:I = 0xfdef

.field private static final blacklist NON_CHARACTER_MIN_3_1_:I = 0xfdd0

.field private static final blacklist NON_CHARACTER_SUFFIX_MIN_3_0_:I = 0xfffe


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    return-void
.end method

.method static blacklist compareNullTermByteSubString(Ljava/lang/String;[BII)I
    .registers 8
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "array"    # [B
    .param p2, "strindex"    # I
    .param p3, "aindex"    # I

    .line 93
    const/4 v0, 0x1

    .line 94
    .local v0, "b":B
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 96
    .local v1, "length":I
    :goto_5
    if-eqz v0, :cond_1f

    .line 98
    aget-byte v0, p1, p3

    .line 99
    add-int/lit8 p3, p3, 0x1

    .line 100
    if-nez v0, :cond_e

    .line 101
    goto :goto_1f

    .line 105
    :cond_e
    if-eq p2, v1, :cond_1d

    .line 106
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    and-int/lit16 v3, v0, 0xff

    int-to-char v3, v3

    if-eq v2, v3, :cond_1a

    goto :goto_1d

    .line 109
    :cond_1a
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    .line 107
    :cond_1d
    :goto_1d
    const/4 v2, -0x1

    return v2

    .line 111
    :cond_1f
    :goto_1f
    return p2
.end method

.method static blacklist getNullTermByteSubString(Ljava/lang/StringBuffer;[BI)I
    .registers 5
    .param p0, "str"    # Ljava/lang/StringBuffer;
    .param p1, "array"    # [B
    .param p2, "index"    # I

    .line 65
    const/4 v0, 0x1

    .line 67
    .local v0, "b":B
    :goto_1
    if-eqz v0, :cond_10

    .line 69
    aget-byte v0, p1, p2

    .line 70
    if-eqz v0, :cond_d

    .line 71
    and-int/lit16 v1, v0, 0xff

    int-to-char v1, v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 73
    :cond_d
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 75
    :cond_10
    return p2
.end method

.method public static blacklist isNonCharacter(I)Z
    .registers 4
    .param p0, "ch"    # I

    .line 30
    const v0, 0xfffe

    and-int v1, p0, v0

    const/4 v2, 0x1

    if-ne v1, v0, :cond_9

    .line 32
    return v2

    .line 35
    :cond_9
    const v0, 0xfdd0

    if-lt p0, v0, :cond_14

    const v0, 0xfdef

    if-gt p0, v0, :cond_14

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    return v2
.end method

.method static blacklist skipByteSubString([BIIB)I
    .registers 6
    .param p0, "array"    # [B
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "skipend"    # B

    .line 157
    const/4 v0, 0x0

    .local v0, "result":I
    :goto_1
    if-ge v0, p2, :cond_f

    .line 159
    add-int v1, p1, v0

    aget-byte v1, p0, v1

    .line 160
    .local v1, "b":B
    if-ne v1, p3, :cond_c

    .line 162
    add-int/lit8 v0, v0, 0x1

    .line 163
    goto :goto_f

    .line 157
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 167
    .end local v1    # "b":B
    :cond_f
    :goto_f
    return v0
.end method

.method static blacklist skipNullTermByteSubString([BII)I
    .registers 5
    .param p0, "array"    # [B
    .param p1, "index"    # I
    .param p2, "skipcount"    # I

    .line 128
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_e

    .line 130
    const/4 v1, 0x1

    .line 131
    .local v1, "b":B
    :goto_4
    if-eqz v1, :cond_b

    .line 133
    aget-byte v1, p0, p1

    .line 134
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 128
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 137
    .end local v0    # "i":I
    .end local v1    # "b":B
    :cond_e
    return p1
.end method

.method static blacklist toInt(CC)I
    .registers 3
    .param p0, "msc"    # C
    .param p1, "lsc"    # C

    .line 48
    shl-int/lit8 v0, p0, 0x10

    or-int/2addr v0, p1

    return v0
.end method
