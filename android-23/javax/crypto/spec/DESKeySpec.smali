.class public Ljavax/crypto/spec/DESKeySpec;
.super Ljava/lang/Object;
.source "DESKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# static fields
.field public static final DES_KEY_LEN:I = 0x8

.field private static final SEMIWEAKS:[[B


# instance fields
.field private final key:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/16 v3, 0x8

    #@2
    .line 41
    const/16 v0, 0x10

    #@4
    new-array v0, v0, [[B

    #@6
    .line 42
    new-array v1, v3, [B

    #@8
    fill-array-data v1, :array_0

    #@b
    const/4 v2, 0x0

    #@c
    aput-object v1, v0, v2

    #@e
    .line 45
    new-array v1, v3, [B

    #@10
    fill-array-data v1, :array_1

    #@13
    const/4 v2, 0x1

    #@14
    aput-object v1, v0, v2

    #@16
    .line 48
    new-array v1, v3, [B

    #@18
    fill-array-data v1, :array_2

    #@1b
    const/4 v2, 0x2

    #@1c
    aput-object v1, v0, v2

    #@1e
    .line 51
    new-array v1, v3, [B

    #@20
    fill-array-data v1, :array_3

    #@23
    const/4 v2, 0x3

    #@24
    aput-object v1, v0, v2

    #@26
    .line 54
    new-array v1, v3, [B

    #@28
    fill-array-data v1, :array_4

    #@2b
    const/4 v2, 0x4

    #@2c
    aput-object v1, v0, v2

    #@2e
    .line 57
    new-array v1, v3, [B

    #@30
    fill-array-data v1, :array_5

    #@33
    const/4 v2, 0x5

    #@34
    aput-object v1, v0, v2

    #@36
    .line 60
    new-array v1, v3, [B

    #@38
    fill-array-data v1, :array_6

    #@3b
    const/4 v2, 0x6

    #@3c
    aput-object v1, v0, v2

    #@3e
    .line 63
    new-array v1, v3, [B

    #@40
    fill-array-data v1, :array_7

    #@43
    const/4 v2, 0x7

    #@44
    aput-object v1, v0, v2

    #@46
    .line 66
    new-array v1, v3, [B

    #@48
    fill-array-data v1, :array_8

    #@4b
    aput-object v1, v0, v3

    #@4d
    .line 69
    new-array v1, v3, [B

    #@4f
    fill-array-data v1, :array_9

    #@52
    const/16 v2, 0x9

    #@54
    aput-object v1, v0, v2

    #@56
    .line 72
    new-array v1, v3, [B

    #@58
    fill-array-data v1, :array_a

    #@5b
    const/16 v2, 0xa

    #@5d
    aput-object v1, v0, v2

    #@5f
    .line 75
    new-array v1, v3, [B

    #@61
    fill-array-data v1, :array_b

    #@64
    const/16 v2, 0xb

    #@66
    aput-object v1, v0, v2

    #@68
    .line 78
    new-array v1, v3, [B

    #@6a
    fill-array-data v1, :array_c

    #@6d
    const/16 v2, 0xc

    #@6f
    aput-object v1, v0, v2

    #@71
    .line 81
    new-array v1, v3, [B

    #@73
    fill-array-data v1, :array_d

    #@76
    const/16 v2, 0xd

    #@78
    aput-object v1, v0, v2

    #@7a
    .line 84
    new-array v1, v3, [B

    #@7c
    fill-array-data v1, :array_e

    #@7f
    const/16 v2, 0xe

    #@81
    aput-object v1, v0, v2

    #@83
    .line 87
    new-array v1, v3, [B

    #@85
    fill-array-data v1, :array_f

    #@88
    const/16 v2, 0xf

    #@8a
    aput-object v1, v0, v2

    #@8c
    .line 41
    sput-object v0, Ljavax/crypto/spec/DESKeySpec;->SEMIWEAKS:[[B

    #@8e
    .line 26
    return-void

    #@8f
    .line 42
    nop

    #@90
    :array_0
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

    #@98
    .line 45
    :array_1
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

    #@a0
    .line 48
    :array_2
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

    #@a8
    .line 51
    :array_3
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

    #@b0
    .line 54
    :array_4
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

    #@b8
    .line 57
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
    .line 60
    :array_6
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

    #@c8
    .line 63
    :array_7
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

    #@d0
    .line 66
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
    .line 69
    :array_9
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

    #@e0
    .line 72
    :array_a
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

    #@e8
    .line 75
    :array_b
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

    #@f0
    .line 78
    :array_c
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

    #@f8
    .line 81
    :array_d
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

    #@100
    .line 84
    :array_e
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

    #@108
    .line 87
    :array_f
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
    .line 102
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Ljavax/crypto/spec/DESKeySpec;-><init>([BI)V

    #@4
    .line 101
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
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 118
    if-nez p1, :cond_0

    #@7
    .line 119
    new-instance v0, Ljava/lang/NullPointerException;

    #@9
    const-string/jumbo v1, "key == null"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 121
    :cond_0
    array-length v0, p1

    #@11
    sub-int/2addr v0, p2

    #@12
    if-ge v0, v2, :cond_1

    #@14
    .line 122
    new-instance v0, Ljava/security/InvalidKeyException;

    #@16
    const-string/jumbo v1, "key too short"

    #@19
    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 124
    :cond_1
    new-array v0, v2, [B

    #@1f
    iput-object v0, p0, Ljavax/crypto/spec/DESKeySpec;->key:[B

    #@21
    .line 125
    iget-object v0, p0, Ljavax/crypto/spec/DESKeySpec;->key:[B

    #@23
    const/4 v1, 0x0

    #@24
    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@27
    .line 117
    return-void
.end method

.method public static isParityAdjusted([BI)Z
    .locals 5
    .param p0, "key"    # [B
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v4, 0x8

    #@2
    const/4 v3, 0x0

    #@3
    .line 154
    if-nez p0, :cond_0

    #@5
    .line 155
    new-instance v2, Ljava/security/InvalidKeyException;

    #@7
    const-string/jumbo v3, "key == null"

    #@a
    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@d
    throw v2

    #@e
    .line 157
    :cond_0
    array-length v2, p0

    #@f
    sub-int/2addr v2, p1

    #@10
    if-ge v2, v4, :cond_1

    #@12
    .line 158
    new-instance v2, Ljava/security/InvalidKeyException;

    #@14
    const-string/jumbo v3, "key too short"

    #@17
    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v2

    #@1b
    .line 161
    :cond_1
    const/4 v0, 0x0

    #@1c
    .line 163
    .local v0, "byteKey":I
    move v1, p1

    #@1d
    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_3

    #@1f
    .line 164
    aget-byte v0, p0, v1

    #@21
    .line 166
    shr-int/lit8 v2, v0, 0x1

    #@23
    xor-int/2addr v0, v2

    #@24
    .line 167
    shr-int/lit8 v2, v0, 0x2

    #@26
    xor-int/2addr v0, v2

    #@27
    .line 168
    shr-int/lit8 v2, v0, 0x4

    #@29
    xor-int/2addr v0, v2

    #@2a
    .line 170
    and-int/lit8 v2, v0, 0x1

    #@2c
    if-nez v2, :cond_2

    #@2e
    .line 171
    return v3

    #@2f
    .line 163
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@31
    goto :goto_0

    #@32
    .line 174
    :cond_3
    const/4 v2, 0x1

    #@33
    return v2
.end method

.method public static isWeak([BI)Z
    .locals 5
    .param p0, "key"    # [B
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v4, 0x8

    #@2
    .line 191
    if-nez p0, :cond_0

    #@4
    .line 192
    new-instance v2, Ljava/security/InvalidKeyException;

    #@6
    const-string/jumbo v3, "key == null"

    #@9
    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@c
    throw v2

    #@d
    .line 194
    :cond_0
    array-length v2, p0

    #@e
    sub-int/2addr v2, p1

    #@f
    if-ge v2, v4, :cond_1

    #@11
    .line 195
    new-instance v2, Ljava/security/InvalidKeyException;

    #@13
    const-string/jumbo v3, "key too short"

    #@16
    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@19
    throw v2

    #@1a
    .line 198
    :cond_1
    const/4 v0, 0x0

    #@1b
    .local v0, "i":I
    :goto_0
    sget-object v2, Ljavax/crypto/spec/DESKeySpec;->SEMIWEAKS:[[B

    #@1d
    array-length v2, v2

    #@1e
    if-ge v0, v2, :cond_4

    #@20
    .line 199
    const/4 v1, 0x0

    #@21
    .local v1, "j":I
    :goto_1
    if-ge v1, v4, :cond_3

    #@23
    .line 200
    sget-object v2, Ljavax/crypto/spec/DESKeySpec;->SEMIWEAKS:[[B

    #@25
    aget-object v2, v2, v0

    #@27
    aget-byte v2, v2, v1

    #@29
    add-int v3, p1, v1

    #@2b
    aget-byte v3, p0, v3

    #@2d
    if-eq v2, v3, :cond_2

    #@2f
    .line 198
    add-int/lit8 v0, v0, 0x1

    #@31
    goto :goto_0

    #@32
    .line 199
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@34
    goto :goto_1

    #@35
    .line 204
    :cond_3
    const/4 v2, 0x1

    #@36
    return v2

    #@37
    .line 206
    .end local v1    # "j":I
    :cond_4
    const/4 v2, 0x0

    #@38
    return v2
.end method


# virtual methods
.method public getKey()[B
    .locals 4

    #@0
    .prologue
    const/16 v3, 0x8

    #@2
    const/4 v2, 0x0

    #@3
    .line 134
    new-array v0, v3, [B

    #@5
    .line 135
    .local v0, "result":[B
    iget-object v1, p0, Ljavax/crypto/spec/DESKeySpec;->key:[B

    #@7
    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@a
    .line 136
    return-object v0
.end method
