.class public final Llibcore/util/CharsetUtils;
.super Ljava/lang/Object;
.source "CharsetUtils.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method public static native blacklist asciiBytesToChars([BII[C)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static native blacklist toAsciiBytes(Ljava/lang/String;II)[B
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static blacklist toBigEndianUtf16Bytes(Ljava/lang/String;II)[B
    .registers 10
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 53
    mul-int/lit8 v0, p2, 0x2

    new-array v0, v0, [B

    .line 54
    .local v0, "result":[B
    add-int v1, p1, p2

    .line 55
    .local v1, "end":I
    const/4 v2, 0x0

    .line 56
    .local v2, "resultIndex":I
    move v3, p1

    .local v3, "i":I
    :goto_8
    if-ge v3, v1, :cond_1d

    .line 57
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 58
    .local v4, "ch":C
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "resultIndex":I
    .local v5, "resultIndex":I
    shr-int/lit8 v6, v4, 0x8

    int-to-byte v6, v6

    aput-byte v6, v0, v2

    .line 59
    add-int/lit8 v2, v5, 0x1

    .end local v5    # "resultIndex":I
    .restart local v2    # "resultIndex":I
    int-to-byte v6, v4

    aput-byte v6, v0, v5

    .line 56
    .end local v4    # "ch":C
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 61
    .end local v3    # "i":I
    :cond_1d
    return-object v0
.end method

.method public static native blacklist toIsoLatin1Bytes(Ljava/lang/String;II)[B
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static native blacklist toUtf8Bytes(Ljava/lang/String;II)[B
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method
