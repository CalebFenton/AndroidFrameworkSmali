.class public final Lcom/android/org/conscrypt/Hex;
.super Ljava/lang/Object;
.source "Hex.java"


# static fields
.field private static final blacklist DIGITS:[C


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 29
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/org/conscrypt/Hex;->DIGITS:[C

    return-void

    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist bytesToHexString([B)Ljava/lang/String;
    .registers 9
    .param p0, "bytes"    # [B

    .line 33
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    .line 34
    .local v0, "buf":[C
    const/4 v1, 0x0

    .line 35
    .local v1, "c":I
    array-length v2, p0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v2, :cond_25

    aget-byte v4, p0, v3

    .line 36
    .local v4, "b":B
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "c":I
    .local v5, "c":I
    sget-object v6, Lcom/android/org/conscrypt/Hex;->DIGITS:[C

    shr-int/lit8 v7, v4, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v0, v1

    .line 37
    add-int/lit8 v1, v5, 0x1

    .end local v5    # "c":I
    .restart local v1    # "c":I
    sget-object v6, Lcom/android/org/conscrypt/Hex;->DIGITS:[C

    and-int/lit8 v7, v4, 0xf

    aget-char v6, v6, v7

    aput-char v6, v0, v5

    .line 35
    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 39
    :cond_25
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method public static blacklist intToHexString(II)Ljava/lang/String;
    .registers 7
    .param p0, "i"    # I
    .param p1, "minWidth"    # I

    .line 43
    const/16 v0, 0x8

    .line 44
    .local v0, "bufLen":I
    new-array v1, v0, [C

    .line 45
    .local v1, "buf":[C
    move v2, v0

    .line 48
    .local v2, "cursor":I
    :cond_5
    add-int/lit8 v2, v2, -0x1

    sget-object v3, Lcom/android/org/conscrypt/Hex;->DIGITS:[C

    and-int/lit8 v4, p0, 0xf

    aget-char v3, v3, v4

    aput-char v3, v1, v2

    .line 49
    ushr-int/lit8 v3, p0, 0x4

    move p0, v3

    if-nez v3, :cond_5

    sub-int v3, v0, v2

    if-lt v3, p1, :cond_5

    .line 51
    new-instance v3, Ljava/lang/String;

    sub-int v4, v0, v2

    invoke-direct {v3, v1, v2, v4}, Ljava/lang/String;-><init>([CII)V

    return-object v3
.end method
