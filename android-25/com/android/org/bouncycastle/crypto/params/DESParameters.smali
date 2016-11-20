.class public Lcom/android/org/bouncycastle/crypto/params/DESParameters;
.super Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
.source "DESParameters.java"


# static fields
.field public static final DES_KEY_LENGTH:I = 0x8

.field private static DES_weak_keys:[B = null

.field private static final N_DES_WEAK_KEYS:I = 0x10


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 28
    const/16 v0, 0x80

    #@2
    new-array v0, v0, [B

    #@4
    fill-array-data v0, :array_0

    #@7
    .line 27
    sput-object v0, Lcom/android/org/bouncycastle/crypto/params/DESParameters;->DES_weak_keys:[B

    #@9
    .line 3
    return-void

    #@a
    .line 28
    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1ft
        0x1ft
        0x1ft
        0x1ft
        0xet
        0xet
        0xet
        0xet
        -0x20t
        -0x20t
        -0x20t
        -0x20t
        -0xft
        -0xft
        -0xft
        -0xft
        -0x2t
        -0x2t
        -0x2t
        -0x2t
        -0x2t
        -0x2t
        -0x2t
        -0x2t
        0x1t
        -0x2t
        0x1t
        -0x2t
        0x1t
        -0x2t
        0x1t
        -0x2t
        0x1ft
        -0x20t
        0x1ft
        -0x20t
        0xet
        -0xft
        0xet
        -0xft
        0x1t
        -0x20t
        0x1t
        -0x20t
        0x1t
        -0xft
        0x1t
        -0xft
        0x1ft
        -0x2t
        0x1ft
        -0x2t
        0xet
        -0x2t
        0xet
        -0x2t
        0x1t
        0x1ft
        0x1t
        0x1ft
        0x1t
        0xet
        0x1t
        0xet
        -0x20t
        -0x2t
        -0x20t
        -0x2t
        -0xft
        -0x2t
        -0xft
        -0x2t
        -0x2t
        0x1t
        -0x2t
        0x1t
        -0x2t
        0x1t
        -0x2t
        0x1t
        -0x20t
        0x1ft
        -0x20t
        0x1ft
        -0xft
        0xet
        -0xft
        0xet
        -0x20t
        0x1t
        -0x20t
        0x1t
        -0xft
        0x1t
        -0xft
        0x1t
        -0x2t
        0x1ft
        -0x2t
        0x1ft
        -0x2t
        0xet
        -0x2t
        0xet
        0x1ft
        0x1t
        0x1ft
        0x1t
        0xet
        0x1t
        0xet
        0x1t
        -0x2t
        -0x20t
        -0x2t
        -0x20t
        -0x2t
        -0xft
        -0x2t
        -0xft
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "key"    # [B

    #@0
    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    #@3
    .line 11
    const/4 v0, 0x0

    #@4
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/crypto/params/DESParameters;->isWeakKey([BI)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    const-string/jumbo v1, "attempt to create weak DES key"

    #@f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 7
    :cond_0
    return-void
.end method

.method public static isWeakKey([BI)Z
    .locals 6
    .param p0, "key"    # [B
    .param p1, "offset"    # I

    #@0
    .prologue
    const/16 v5, 0x8

    #@2
    .line 65
    array-length v2, p0

    #@3
    sub-int/2addr v2, p1

    #@4
    if-ge v2, v5, :cond_0

    #@6
    .line 67
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v3, "key material too short."

    #@b
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v2

    #@f
    .line 70
    :cond_0
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_0
    const/16 v2, 0x10

    #@12
    if-ge v0, v2, :cond_3

    #@14
    .line 72
    const/4 v1, 0x0

    #@15
    .local v1, "j":I
    :goto_1
    if-ge v1, v5, :cond_2

    #@17
    .line 74
    add-int v2, v1, p1

    #@19
    aget-byte v2, p0, v2

    #@1b
    sget-object v3, Lcom/android/org/bouncycastle/crypto/params/DESParameters;->DES_weak_keys:[B

    #@1d
    mul-int/lit8 v4, v0, 0x8

    #@1f
    add-int/2addr v4, v1

    #@20
    aget-byte v3, v3, v4

    #@22
    if-eq v2, v3, :cond_1

    #@24
    .line 70
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_0

    #@27
    .line 72
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@29
    goto :goto_1

    #@2a
    .line 80
    :cond_2
    const/4 v2, 0x1

    #@2b
    return v2

    #@2c
    .line 82
    .end local v1    # "j":I
    :cond_3
    const/4 v2, 0x0

    #@2d
    return v2
.end method

.method public static setOddParity([B)V
    .locals 5
    .param p0, "bytes"    # [B

    #@0
    .prologue
    .line 94
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    :goto_0
    array-length v2, p0

    #@2
    if-ge v1, v2, :cond_0

    #@4
    .line 96
    aget-byte v0, p0, v1

    #@6
    .line 97
    .local v0, "b":I
    and-int/lit16 v2, v0, 0xfe

    #@8
    .line 98
    shr-int/lit8 v3, v0, 0x1

    #@a
    .line 99
    shr-int/lit8 v4, v0, 0x2

    #@c
    .line 98
    xor-int/2addr v3, v4

    #@d
    .line 100
    shr-int/lit8 v4, v0, 0x3

    #@f
    .line 98
    xor-int/2addr v3, v4

    #@10
    .line 101
    shr-int/lit8 v4, v0, 0x4

    #@12
    .line 98
    xor-int/2addr v3, v4

    #@13
    .line 102
    shr-int/lit8 v4, v0, 0x5

    #@15
    .line 98
    xor-int/2addr v3, v4

    #@16
    .line 103
    shr-int/lit8 v4, v0, 0x6

    #@18
    .line 98
    xor-int/2addr v3, v4

    #@19
    .line 104
    shr-int/lit8 v4, v0, 0x7

    #@1b
    .line 98
    xor-int/2addr v3, v4

    #@1c
    xor-int/lit8 v3, v3, 0x1

    #@1e
    and-int/lit8 v3, v3, 0x1

    #@20
    .line 97
    or-int/2addr v2, v3

    #@21
    int-to-byte v2, v2

    #@22
    aput-byte v2, p0, v1

    #@24
    .line 94
    add-int/lit8 v1, v1, 0x1

    #@26
    goto :goto_0

    #@27
    .line 92
    .end local v0    # "b":I
    :cond_0
    return-void
.end method
