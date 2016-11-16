.class public Ljavax/crypto/spec/DESedeKeySpec;
.super Ljava/lang/Object;
.source "DESedeKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# static fields
.field public static final DES_EDE_KEY_LEN:I = 0x18


# instance fields
.field private key:[B


# direct methods
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
    .line 62
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Ljavax/crypto/spec/DESedeKeySpec;-><init>([BI)V

    #@4
    .line 61
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
    const/16 v2, 0x18

    #@2
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 84
    array-length v0, p1

    #@6
    sub-int/2addr v0, p2

    #@7
    if-ge v0, v2, :cond_0

    #@9
    .line 85
    new-instance v0, Ljava/security/InvalidKeyException;

    #@b
    const-string/jumbo v1, "Wrong key size"

    #@e
    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 87
    :cond_0
    new-array v0, v2, [B

    #@14
    iput-object v0, p0, Ljavax/crypto/spec/DESedeKeySpec;->key:[B

    #@16
    .line 88
    iget-object v0, p0, Ljavax/crypto/spec/DESedeKeySpec;->key:[B

    #@18
    const/4 v1, 0x0

    #@19
    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1c
    .line 83
    return-void
.end method

.method public static isParityAdjusted([BI)Z
    .locals 2
    .param p0, "key"    # [B
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 116
    array-length v0, p0

    #@1
    sub-int/2addr v0, p1

    #@2
    const/16 v1, 0x18

    #@4
    if-ge v0, v1, :cond_0

    #@6
    .line 117
    new-instance v0, Ljava/security/InvalidKeyException;

    #@8
    const-string/jumbo v1, "Wrong key size"

    #@b
    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 119
    :cond_0
    invoke-static {p0, p1}, Ljavax/crypto/spec/DESKeySpec;->isParityAdjusted([BI)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 120
    add-int/lit8 v0, p1, 0x8

    #@17
    invoke-static {p0, v0}, Ljavax/crypto/spec/DESKeySpec;->isParityAdjusted([BI)Z

    #@1a
    move-result v0

    #@1b
    if-nez v0, :cond_2

    #@1d
    .line 122
    :cond_1
    const/4 v0, 0x0

    #@1e
    return v0

    #@1f
    .line 121
    :cond_2
    add-int/lit8 v0, p1, 0x10

    #@21
    invoke-static {p0, v0}, Ljavax/crypto/spec/DESKeySpec;->isParityAdjusted([BI)Z

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_1

    #@27
    .line 124
    const/4 v0, 0x1

    #@28
    return v0
.end method


# virtual methods
.method public getKey()[B
    .locals 1

    #@0
    .prologue
    .line 98
    iget-object v0, p0, Ljavax/crypto/spec/DESedeKeySpec;->key:[B

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [B

    #@8
    return-object v0
.end method
