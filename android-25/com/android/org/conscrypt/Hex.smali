.class public Lcom/android/org/conscrypt/Hex;
.super Ljava/lang/Object;
.source "Hex.java"


# static fields
.field private static final DIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 28
    const/16 v0, 0x10

    #@2
    new-array v0, v0, [C

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Lcom/android/org/conscrypt/Hex;->DIGITS:[C

    #@9
    .line 25
    return-void

    #@a
    .line 28
    :array_0
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

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 8
    .param p0, "bytes"    # [B

    #@0
    .prologue
    .line 31
    array-length v4, p0

    #@1
    mul-int/lit8 v4, v4, 0x2

    #@3
    new-array v1, v4, [C

    #@5
    .line 32
    .local v1, "buf":[C
    const/4 v2, 0x0

    #@6
    .line 33
    .local v2, "c":I
    const/4 v4, 0x0

    #@7
    array-length v5, p0

    #@8
    move v3, v2

    #@9
    .end local v2    # "c":I
    .local v3, "c":I
    :goto_0
    if-ge v4, v5, :cond_0

    #@b
    aget-byte v0, p0, v4

    #@d
    .line 34
    .local v0, "b":B
    add-int/lit8 v2, v3, 0x1

    #@f
    .end local v3    # "c":I
    .restart local v2    # "c":I
    sget-object v6, Lcom/android/org/conscrypt/Hex;->DIGITS:[C

    #@11
    shr-int/lit8 v7, v0, 0x4

    #@13
    and-int/lit8 v7, v7, 0xf

    #@15
    aget-char v6, v6, v7

    #@17
    aput-char v6, v1, v3

    #@19
    .line 35
    add-int/lit8 v3, v2, 0x1

    #@1b
    .end local v2    # "c":I
    .restart local v3    # "c":I
    sget-object v6, Lcom/android/org/conscrypt/Hex;->DIGITS:[C

    #@1d
    and-int/lit8 v7, v0, 0xf

    #@1f
    aget-char v6, v6, v7

    #@21
    aput-char v6, v1, v2

    #@23
    .line 33
    add-int/lit8 v4, v4, 0x1

    #@25
    goto :goto_0

    #@26
    .line 37
    .end local v0    # "b":B
    :cond_0
    new-instance v4, Ljava/lang/String;

    #@28
    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([C)V

    #@2b
    return-object v4
.end method

.method public static intToHexString(II)Ljava/lang/String;
    .locals 5
    .param p0, "i"    # I
    .param p1, "minWidth"    # I

    #@0
    .prologue
    .line 41
    const/16 v1, 0x8

    #@2
    .line 42
    .local v1, "bufLen":I
    new-array v0, v1, [C

    #@4
    .line 41
    .local v0, "buf":[C
    const/16 v2, 0x8

    #@6
    .line 46
    .local v2, "cursor":I
    :cond_0
    add-int/lit8 v2, v2, -0x1

    #@8
    sget-object v3, Lcom/android/org/conscrypt/Hex;->DIGITS:[C

    #@a
    and-int/lit8 v4, p0, 0xf

    #@c
    aget-char v3, v3, v4

    #@e
    aput-char v3, v0, v2

    #@10
    .line 47
    ushr-int/lit8 p0, p0, 0x4

    #@12
    if-nez p0, :cond_0

    #@14
    rsub-int/lit8 v3, v2, 0x8

    #@16
    if-lt v3, p1, :cond_0

    #@18
    .line 49
    new-instance v3, Ljava/lang/String;

    #@1a
    rsub-int/lit8 v4, v2, 0x8

    #@1c
    invoke-direct {v3, v0, v2, v4}, Ljava/lang/String;-><init>([CII)V

    #@1f
    return-object v3
.end method
