.class public Ljavax/crypto/spec/DESKeySpec;
.super Ljava/lang/Object;
.source "DESKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# static fields
.field public static final whitelist test-api DES_KEY_LEN:I = 0x8

.field private static final greylist-max-o WEAK_KEYS:[[B


# instance fields
.field private greylist-max-o key:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 17

    .line 64
    const/16 v0, 0x8

    new-array v1, v0, [B

    fill-array-data v1, :array_5c

    new-array v2, v0, [B

    fill-array-data v2, :array_64

    new-array v3, v0, [B

    fill-array-data v3, :array_6c

    new-array v4, v0, [B

    fill-array-data v4, :array_74

    new-array v5, v0, [B

    fill-array-data v5, :array_7c

    new-array v6, v0, [B

    fill-array-data v6, :array_84

    new-array v7, v0, [B

    fill-array-data v7, :array_8c

    new-array v8, v0, [B

    fill-array-data v8, :array_94

    new-array v9, v0, [B

    fill-array-data v9, :array_9c

    new-array v10, v0, [B

    fill-array-data v10, :array_a4

    new-array v11, v0, [B

    fill-array-data v11, :array_ac

    new-array v12, v0, [B

    fill-array-data v12, :array_b4

    new-array v13, v0, [B

    fill-array-data v13, :array_bc

    new-array v14, v0, [B

    fill-array-data v14, :array_c4

    new-array v15, v0, [B

    fill-array-data v15, :array_cc

    new-array v0, v0, [B

    fill-array-data v0, :array_d4

    move-object/from16 v16, v0

    filled-new-array/range {v1 .. v16}, [[B

    move-result-object v0

    sput-object v0, Ljavax/crypto/spec/DESKeySpec;->WEAK_KEYS:[[B

    return-void

    nop

    :array_5c
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

    :array_64
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

    :array_6c
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

    :array_74
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

    :array_7c
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

    :array_84
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

    :array_8c
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

    :array_94
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

    :array_9c
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

    :array_a4
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

    :array_ac
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

    :array_b4
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

    :array_bc
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

    :array_c4
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

    :array_cc
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

    :array_d4
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

.method public constructor whitelist test-api <init>([B)V
    .registers 3
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljavax/crypto/spec/DESKeySpec;-><init>([BI)V

    .line 132
    return-void
.end method

.method public constructor whitelist test-api <init>([BI)V
    .registers 6
    .param p1, "key"    # [B
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    array-length v0, p1

    sub-int/2addr v0, p2

    const/16 v1, 0x8

    if-lt v0, v1, :cond_14

    .line 157
    new-array v0, v1, [B

    iput-object v0, p0, Ljavax/crypto/spec/DESKeySpec;->key:[B

    .line 158
    iget-object v0, p0, Ljavax/crypto/spec/DESKeySpec;->key:[B

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    return-void

    .line 155
    :cond_14
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Wrong key size"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api isParityAdjusted([BI)Z
    .registers 6
    .param p0, "key"    # [B
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 188
    if-eqz p0, :cond_29

    .line 191
    array-length v0, p0

    sub-int/2addr v0, p1

    const/16 v1, 0x8

    if-lt v0, v1, :cond_21

    .line 195
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    if-ge v0, v1, :cond_1f

    .line 196
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "offset":I
    .local v2, "offset":I
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result p1

    .line 197
    .local p1, "k":I
    and-int/lit8 v3, p1, 0x1

    if-nez v3, :cond_1b

    .line 198
    const/4 v1, 0x0

    return v1

    .line 195
    .end local p1    # "k":I
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    move p1, v2

    goto :goto_9

    .line 202
    .end local v0    # "i":I
    .end local v2    # "offset":I
    .local p1, "offset":I
    :cond_1f
    const/4 v0, 0x1

    return v0

    .line 192
    :cond_21
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Wrong key size"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_29
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "null key"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api isWeak([BI)Z
    .registers 8
    .param p0, "key"    # [B
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 221
    if-eqz p0, :cond_35

    .line 224
    array-length v0, p0

    sub-int/2addr v0, p1

    const/16 v1, 0x8

    if-lt v0, v1, :cond_2d

    .line 227
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    sget-object v2, Ljavax/crypto/spec/DESKeySpec;->WEAK_KEYS:[[B

    array-length v2, v2

    if-ge v0, v2, :cond_2b

    .line 228
    const/4 v2, 0x1

    .line 229
    .local v2, "found":Z
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_10
    const/4 v4, 0x1

    if-ge v3, v1, :cond_25

    if-ne v2, v4, :cond_25

    .line 230
    sget-object v4, Ljavax/crypto/spec/DESKeySpec;->WEAK_KEYS:[[B

    aget-object v4, v4, v0

    aget-byte v4, v4, v3

    add-int v5, v3, p1

    aget-byte v5, p0, v5

    if-eq v4, v5, :cond_22

    .line 231
    const/4 v2, 0x0

    .line 229
    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 234
    .end local v3    # "j":I
    :cond_25
    if-ne v2, v4, :cond_28

    .line 235
    return v2

    .line 227
    .end local v2    # "found":Z
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 238
    .end local v0    # "i":I
    :cond_2b
    const/4 v0, 0x0

    return v0

    .line 225
    :cond_2d
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Wrong key size"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_35
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "null key"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api getKey()[B
    .registers 2

    .line 168
    iget-object v0, p0, Ljavax/crypto/spec/DESKeySpec;->key:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method
