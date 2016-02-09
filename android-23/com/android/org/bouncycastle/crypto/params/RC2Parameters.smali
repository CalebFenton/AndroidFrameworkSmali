.class public Lcom/android/org/bouncycastle/crypto/params/RC2Parameters;
.super Ljava/lang/Object;
.source "RC2Parameters.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/CipherParameters;


# instance fields
.field private bits:I

.field private key:[B


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .param p1, "key"    # [B

    #@0
    .prologue
    .line 14
    array-length v0, p1

    #@1
    const/16 v1, 0x80

    #@3
    if-le v0, v1, :cond_0

    #@5
    const/16 v0, 0x400

    #@7
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/crypto/params/RC2Parameters;-><init>([BI)V

    #@a
    .line 12
    return-void

    #@b
    .line 14
    :cond_0
    array-length v0, p1

    #@c
    mul-int/lit8 v0, v0, 0x8

    #@e
    goto :goto_0
.end method

.method public constructor <init>([BI)V
    .locals 3
    .param p1, "key"    # [B
    .param p2, "bits"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 21
    array-length v0, p1

    #@5
    new-array v0, v0, [B

    #@7
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/RC2Parameters;->key:[B

    #@9
    .line 22
    iput p2, p0, Lcom/android/org/bouncycastle/crypto/params/RC2Parameters;->bits:I

    #@b
    .line 24
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/RC2Parameters;->key:[B

    #@d
    array-length v1, p1

    #@e
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@11
    .line 19
    return-void
.end method


# virtual methods
.method public getEffectiveKeyBits()I
    .locals 1

    #@0
    .prologue
    .line 34
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/params/RC2Parameters;->bits:I

    #@2
    return v0
.end method

.method public getKey()[B
    .locals 1

    #@0
    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/RC2Parameters;->key:[B

    #@2
    return-object v0
.end method
