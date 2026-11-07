.class public Ljavax/crypto/spec/DESedeKeySpec;
.super Ljava/lang/Object;
.source "DESedeKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# static fields
.field public static final whitelist test-api DES_EDE_KEY_LEN:I = 0x18


# instance fields
.field private greylist-max-o key:[B


# direct methods
.method public constructor whitelist test-api <init>([B)V
    .registers 3
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljavax/crypto/spec/DESedeKeySpec;-><init>([BI)V

    .line 63
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

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    array-length v0, p1

    sub-int/2addr v0, p2

    const/16 v1, 0x18

    if-lt v0, v1, :cond_14

    .line 87
    new-array v0, v1, [B

    iput-object v0, p0, Ljavax/crypto/spec/DESedeKeySpec;->key:[B

    .line 88
    iget-object v0, p0, Ljavax/crypto/spec/DESedeKeySpec;->key:[B

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    return-void

    .line 85
    :cond_14
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Wrong key size"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api isParityAdjusted([BI)Z
    .registers 4
    .param p0, "key"    # [B
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 116
    array-length v0, p0

    sub-int/2addr v0, p1

    const/16 v1, 0x18

    if-lt v0, v1, :cond_21

    .line 119
    invoke-static {p0, p1}, Ljavax/crypto/spec/DESKeySpec;->isParityAdjusted([BI)Z

    move-result v0

    if-eqz v0, :cond_1f

    add-int/lit8 v0, p1, 0x8

    .line 120
    invoke-static {p0, v0}, Ljavax/crypto/spec/DESKeySpec;->isParityAdjusted([BI)Z

    move-result v0

    if-eqz v0, :cond_1f

    add-int/lit8 v0, p1, 0x10

    .line 121
    invoke-static {p0, v0}, Ljavax/crypto/spec/DESKeySpec;->isParityAdjusted([BI)Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_1f

    .line 124
    :cond_1d
    const/4 v0, 0x1

    return v0

    .line 122
    :cond_1f
    :goto_1f
    const/4 v0, 0x0

    return v0

    .line 117
    :cond_21
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Wrong key size"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api getKey()[B
    .registers 2

    .line 98
    iget-object v0, p0, Ljavax/crypto/spec/DESedeKeySpec;->key:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method
