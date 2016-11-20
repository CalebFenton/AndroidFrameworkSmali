.class public Ljavax/crypto/spec/DESKeySpec;
.super Ljava/lang/Object;
.source "DESKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# static fields
.field public static final DES_KEY_LEN:I = 0x8

.field private static final WEAK_KEYS:[[B


# instance fields
.field private key:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/16 v3, 0x8

    #@2
    .line 64
    const/16 v0, 0x10

    #@4
    new-array v0, v0, [[B

    #@6
    .line 66
    new-array v1, v3, [B

    #@8
    fill-array-data v1, :array_0

    #@b
    const/4 v2, 0x0

    #@c
    aput-object v1, v0, v2

    #@e
    .line 69
    new-array v1, v3, [B

    #@10
    fill-array-data v1, :array_1

    #@13
    const/4 v2, 0x1

    #@14
    aput-object v1, v0, v2

    #@16
    .line 72
    new-array v1, v3, [B

    #@18
    fill-array-data v1, :array_2

    #@1b
    const/4 v2, 0x2

    #@1c
    aput-object v1, v0, v2

    #@1e
    .line 75
    new-array v1, v3, [B

    #@20
    fill-array-data v1, :array_3

    #@23
    const/4 v2, 0x3

    #@24
    aput-object v1, v0, v2

    #@26
    .line 78
    new-array v1, v3, [B

    #@28
    fill-array-data v1, :array_4

    #@2b
    const/4 v2, 0x4

    #@2c
    aput-object v1, v0, v2

    #@2e
    .line 81
    new-array v1, v3, [B

    #@30
    fill-array-data v1, :array_5

    #@33
    const/4 v2, 0x5

    #@34
    aput-object v1, v0, v2

    #@36
    .line 84
    new-array v1, v3, [B

    #@38
    fill-array-data v1, :array_6

    #@3b
    const/4 v2, 0x6

    #@3c
    aput-object v1, v0, v2

    #@3e
    .line 87
    new-array v1, v3, [B

    #@40
    fill-array-data v1, :array_7

    #@43
    const/4 v2, 0x7

    #@44
    aput-object v1, v0, v2

    #@46
    .line 90
    new-array v1, v3, [B

    #@48
    fill-array-data v1, :array_8

    #@4b
    aput-object v1, v0, v3

    #@4d
    .line 93
    new-array v1, v3, [B

    #@4f
    fill-array-data v1, :array_9

    #@52
    const/16 v2, 0x9

    #@54
    aput-object v1, v0, v2

    #@56
    .line 96
    new-array v1, v3, [B

    #@58
    fill-array-data v1, :array_a

    #@5b
    const/16 v2, 0xa

    #@5d
    aput-object v1, v0, v2

    #@5f
    .line 99
    new-array v1, v3, [B

    #@61
    fill-array-data v1, :array_b

    #@64
    const/16 v2, 0xb

    #@66
    aput-object v1, v0, v2

    #@68
    .line 102
    new-array v1, v3, [B

    #@6a
    fill-array-data v1, :array_c

    #@6d
    const/16 v2, 0xc

    #@6f
    aput-object v1, v0, v2

    #@71
    .line 105
    new-array v1, v3, [B

    #@73
    fill-array-data v1, :array_d

    #@76
    const/16 v2, 0xd

    #@78
    aput-object v1, v0, v2

    #@7a
    .line 108
    new-array v1, v3, [B

    #@7c
    fill-array-data v1, :array_e

    #@7f
    const/16 v2, 0xe

    #@81
    aput-object v1, v0, v2

    #@83
    .line 111
    new-array v1, v3, [B

    #@85
    fill-array-data v1, :array_f

    #@88
    const/16 v2, 0xf

    #@8a
    aput-object v1, v0, v2

    #@8c
    .line 64
    sput-object v0, Ljavax/crypto/spec/DESKeySpec;->WEAK_KEYS:[[B

    #@8e
    .line 37
    return-void

    #@8f
    .line 66
    nop

    #@90
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
    .end array-data

    #@98
    .line 69
    :array_1
    .array-data 1
        -0x2t
        -0x2t
        -0x2t
        -0x2t
        -0x2t
        -0x2t
        -0x2t
        -0x2t
    .end array-data

    #@a0
    .line 72
    :array_2
    .array-data 1
        0x1ft
        0x1ft
        0x1ft
        0x1ft
        0xet
        0xet
        0xet
        0xet
    .end array-data

    #@a8
    .line 75
    :array_3
    .array-data 1
        -0x20t
        -0x20t
        -0x20t
        -0x20t
        -0xft
        -0xft
        -0xft
        -0xft
    .end array-data

    #@b0
    .line 78
    :array_4
    .array-data 1
        0x1t
        -0x2t
        0x1t
        -0x2t
        0x1t
        -0x2t
        0x1t
        -0x2t
    .end array-data

    #@b8
    .line 81
    :array_5
    .array-data 1
        0x1ft
        -0x20t
        0x1ft
        -0x20t
        0xet
        -0xft
        0xet
        -0xft
    .end array-data

    #@c0
    .line 84
    :array_6
    .array-data 1
        0x1t
        -0x20t
        0x1t
        -0x20t
        0x1t
        -0xft
        0x1t
        -0xft
    .end array-data

    #@c8
    .line 87
    :array_7
    .array-data 1
        0x1ft
        -0x2t
        0x1ft
        -0x2t
        0xet
        -0x2t
        0xet
        -0x2t
    .end array-data

    #@d0
    .line 90
    :array_8
    .array-data 1
        0x1t
        0x1ft
        0x1t
        0x1ft
        0x1t
        0xet
        0x1t
        0xet
    .end array-data

    #@d8
    .line 93
    :array_9
    .array-data 1
        -0x20t
        -0x2t
        -0x20t
        -0x2t
        -0xft
        -0x2t
        -0xft
        -0x2t
    .end array-data

    #@e0
    .line 96
    :array_a
    .array-data 1
        -0x2t
        0x1t
        -0x2t
        0x1t
        -0x2t
        0x1t
        -0x2t
        0x1t
    .end array-data

    #@e8
    .line 99
    :array_b
    .array-data 1
        -0x20t
        0x1ft
        -0x20t
        0x1ft
        -0xft
        0xet
        -0xft
        0xet
    .end array-data

    #@f0
    .line 102
    :array_c
    .array-data 1
        -0x20t
        0x1t
        -0x20t
        0x1t
        -0xft
        0x1t
        -0xft
        0x1t
    .end array-data

    #@f8
    .line 105
    :array_d
    .array-data 1
        -0x2t
        0x1ft
        -0x2t
        0x1ft
        -0x2t
        0xet
        -0x2t
        0xet
    .end array-data

    #@100
    .line 108
    :array_e
    .array-data 1
        0x1ft
        0x1t
        0x1ft
        0x1t
        0xet
        0x1t
        0xet
        0x1t
    .end array-data

    #@108
    .line 111
    :array_f
    .array-data 1
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
    .locals 1
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 131
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Ljavax/crypto/spec/DESKeySpec;-><init>([BI)V

    #@4
    .line 130
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 3
    .param p1, "key"    # [B
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v2, 0x8

    #@2
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 154
    array-length v0, p1

    #@6
    sub-int/2addr v0, p2

    #@7
    if-ge v0, v2, :cond_0

    #@9
    .line 155
    new-instance v0, Ljava/security/InvalidKeyException;

    #@b
    const-string/jumbo v1, "Wrong key size"

    #@e
    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 157
    :cond_0
    new-array v0, v2, [B

    #@14
    iput-object v0, p0, Ljavax/crypto/spec/DESKeySpec;->key:[B

    #@16
    .line 158
    iget-object v0, p0, Ljavax/crypto/spec/DESKeySpec;->key:[B

    #@18
    const/4 v1, 0x0

    #@19
    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1c
    .line 153
    return-void
.end method

.method public static isParityAdjusted([BI)Z
    .locals 6
    .param p0, "key"    # [B
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v5, 0x8

    #@2
    const/4 v4, 0x0

    #@3
    .line 188
    if-nez p0, :cond_0

    #@5
    .line 189
    new-instance v3, Ljava/security/InvalidKeyException;

    #@7
    const-string/jumbo v4, "null key"

    #@a
    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@d
    throw v3

    #@e
    .line 191
    :cond_0
    array-length v3, p0

    #@f
    sub-int/2addr v3, p1

    #@10
    if-ge v3, v5, :cond_1

    #@12
    .line 192
    new-instance v3, Ljava/security/InvalidKeyException;

    #@14
    const-string/jumbo v4, "Wrong key size"

    #@17
    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v3

    #@1b
    .line 195
    :cond_1
    const/4 v0, 0x0

    #@1c
    .local v0, "i":I
    move v2, p1

    #@1d
    .end local p1    # "offset":I
    .local v2, "offset":I
    :goto_0
    if-ge v0, v5, :cond_3

    #@1f
    .line 196
    add-int/lit8 p1, v2, 0x1

    #@21
    .end local v2    # "offset":I
    .restart local p1    # "offset":I
    aget-byte v3, p0, v2

    #@23
    and-int/lit16 v3, v3, 0xff

    #@25
    invoke-static {v3}, Ljava/lang/Integer;->bitCount(I)I

    #@28
    move-result v1

    #@29
    .line 197
    .local v1, "k":I
    and-int/lit8 v3, v1, 0x1

    #@2b
    if-nez v3, :cond_2

    #@2d
    .line 198
    return v4

    #@2e
    .line 195
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@30
    move v2, p1

    #@31
    .end local p1    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_0

    #@32
    .line 202
    .end local v1    # "k":I
    :cond_3
    const/4 v3, 0x1

    #@33
    return v3
.end method

.method public static isWeak([BI)Z
    .locals 6
    .param p0, "key"    # [B
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v5, 0x8

    #@2
    .line 221
    if-nez p0, :cond_0

    #@4
    .line 222
    new-instance v3, Ljava/security/InvalidKeyException;

    #@6
    const-string/jumbo v4, "null key"

    #@9
    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@c
    throw v3

    #@d
    .line 224
    :cond_0
    array-length v3, p0

    #@e
    sub-int/2addr v3, p1

    #@f
    if-ge v3, v5, :cond_1

    #@11
    .line 225
    new-instance v3, Ljava/security/InvalidKeyException;

    #@13
    const-string/jumbo v4, "Wrong key size"

    #@16
    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@19
    throw v3

    #@1a
    .line 227
    :cond_1
    const/4 v1, 0x0

    #@1b
    .local v1, "i":I
    :goto_0
    sget-object v3, Ljavax/crypto/spec/DESKeySpec;->WEAK_KEYS:[[B

    #@1d
    array-length v3, v3

    #@1e
    if-ge v1, v3, :cond_5

    #@20
    .line 228
    const/4 v0, 0x1

    #@21
    .line 229
    .local v0, "found":Z
    const/4 v2, 0x0

    #@22
    .local v2, "j":I
    :goto_1
    if-ge v2, v5, :cond_3

    #@24
    if-eqz v0, :cond_3

    #@26
    .line 230
    sget-object v3, Ljavax/crypto/spec/DESKeySpec;->WEAK_KEYS:[[B

    #@28
    aget-object v3, v3, v1

    #@2a
    aget-byte v3, v3, v2

    #@2c
    add-int v4, v2, p1

    #@2e
    aget-byte v4, p0, v4

    #@30
    if-eq v3, v4, :cond_2

    #@32
    .line 231
    const/4 v0, 0x0

    #@33
    .line 229
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@35
    goto :goto_1

    #@36
    .line 234
    :cond_3
    if-eqz v0, :cond_4

    #@38
    .line 235
    return v0

    #@39
    .line 227
    :cond_4
    add-int/lit8 v1, v1, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 238
    .end local v0    # "found":Z
    .end local v2    # "j":I
    :cond_5
    const/4 v3, 0x0

    #@3d
    return v3
.end method


# virtual methods
.method public getKey()[B
    .locals 1

    #@0
    .prologue
    .line 168
    iget-object v0, p0, Ljavax/crypto/spec/DESKeySpec;->key:[B

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [B

    #@8
    return-object v0
.end method
