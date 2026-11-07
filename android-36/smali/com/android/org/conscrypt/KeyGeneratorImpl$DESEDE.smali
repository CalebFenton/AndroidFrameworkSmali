.class public final Lcom/android/org/conscrypt/KeyGeneratorImpl$DESEDE;
.super Lcom/android/org/conscrypt/KeyGeneratorImpl;
.source "KeyGeneratorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/KeyGeneratorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DESEDE"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 4

    .line 148
    const/16 v0, 0xc0

    const/4 v1, 0x0

    const-string v2, "DESEDE"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/org/conscrypt/KeyGeneratorImpl;-><init>(Ljava/lang/String;ILcom/android/org/conscrypt/KeyGeneratorImpl-IA;)V

    .line 149
    return-void
.end method


# virtual methods
.method protected blacklist checkKeySize(I)V
    .registers 4
    .param p1, "keySize"    # I

    .line 153
    const/16 v0, 0x70

    if-eq p1, v0, :cond_11

    const/16 v0, 0xa8

    if-ne p1, v0, :cond_9

    goto :goto_11

    .line 154
    :cond_9
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Key size must be either 112 or 168 bits"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_11
    :goto_11
    return-void
.end method

.method protected blacklist doKeyGeneration(I)[B
    .registers 6
    .param p1, "keyBytes"    # I

    .line 160
    const/16 v0, 0x18

    new-array v0, v0, [B

    .line 161
    .local v0, "keyData":[B
    iget-object v1, p0, Lcom/android/org/conscrypt/KeyGeneratorImpl$DESEDE;->secureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 163
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    array-length v2, v0

    if-ge v1, v2, :cond_21

    .line 164
    aget-byte v2, v0, v1

    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1e

    .line 165
    aget-byte v2, v0, v1

    xor-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 163
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 168
    .end local v1    # "i":I
    :cond_21
    const/16 v1, 0xe

    if-ne p1, v1, :cond_2d

    .line 170
    const/16 v1, 0x10

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-static {v0, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    :cond_2d
    return-object v0
.end method
