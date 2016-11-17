.class public Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
.super Ljava/lang/Object;
.source "KeyParameter.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/CipherParameters;


# instance fields
.field private key:[B


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .param p1, "key"    # [B

    #@0
    .prologue
    .line 13
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, p1, v1, v0}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    #@5
    .line 11
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2
    .param p1, "key"    # [B
    .param p2, "keyOff"    # I
    .param p3, "keyLen"    # I

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 21
    new-array v0, p3, [B

    #@5
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->key:[B

    #@7
    .line 23
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->key:[B

    #@9
    const/4 v1, 0x0

    #@a
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@d
    .line 19
    return-void
.end method


# virtual methods
.method public getKey()[B
    .locals 1

    #@0
    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->key:[B

    #@2
    return-object v0
.end method
