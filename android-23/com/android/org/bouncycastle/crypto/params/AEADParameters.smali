.class public Lcom/android/org/bouncycastle/crypto/params/AEADParameters;
.super Ljava/lang/Object;
.source "AEADParameters.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/CipherParameters;


# instance fields
.field private associatedText:[B

.field private key:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

.field private macSize:I

.field private nonce:[B


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/params/KeyParameter;I[B)V
    .locals 1
    .param p1, "key"    # Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    .param p2, "macSize"    # I
    .param p3, "nonce"    # [B

    #@0
    .prologue
    .line 22
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;-><init>(Lcom/android/org/bouncycastle/crypto/params/KeyParameter;I[B[B)V

    #@4
    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/params/KeyParameter;I[B[B)V
    .locals 0
    .param p1, "key"    # Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    .param p2, "macSize"    # I
    .param p3, "nonce"    # [B
    .param p4, "associatedText"    # [B

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 35
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->key:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@5
    .line 36
    iput-object p3, p0, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->nonce:[B

    #@7
    .line 37
    iput p2, p0, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->macSize:I

    #@9
    .line 38
    iput-object p4, p0, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->associatedText:[B

    #@b
    .line 33
    return-void
.end method


# virtual methods
.method public getAssociatedText()[B
    .locals 1

    #@0
    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->associatedText:[B

    #@2
    return-object v0
.end method

.method public getKey()Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    .locals 1

    #@0
    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->key:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@2
    return-object v0
.end method

.method public getMacSize()I
    .locals 1

    #@0
    .prologue
    .line 48
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->macSize:I

    #@2
    return v0
.end method

.method public getNonce()[B
    .locals 1

    #@0
    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->nonce:[B

    #@2
    return-object v0
.end method
