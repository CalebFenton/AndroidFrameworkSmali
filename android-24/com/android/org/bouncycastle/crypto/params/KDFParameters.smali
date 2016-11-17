.class public Lcom/android/org/bouncycastle/crypto/params/KDFParameters;
.super Ljava/lang/Object;
.source "KDFParameters.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/DerivationParameters;


# instance fields
.field iv:[B

.field shared:[B


# direct methods
.method public constructor <init>([B[B)V
    .locals 0
    .param p1, "shared"    # [B
    .param p2, "iv"    # [B

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 18
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/params/KDFParameters;->shared:[B

    #@5
    .line 19
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/params/KDFParameters;->iv:[B

    #@7
    .line 16
    return-void
.end method


# virtual methods
.method public getIV()[B
    .locals 1

    #@0
    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/KDFParameters;->iv:[B

    #@2
    return-object v0
.end method

.method public getSharedSecret()[B
    .locals 1

    #@0
    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/KDFParameters;->shared:[B

    #@2
    return-object v0
.end method
