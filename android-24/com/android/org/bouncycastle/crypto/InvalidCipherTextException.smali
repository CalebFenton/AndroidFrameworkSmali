.class public Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
.super Lcom/android/org/bouncycastle/crypto/CryptoException;
.source "InvalidCipherTextException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/CryptoException;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/CryptoException;-><init>(Ljava/lang/String;)V

    #@3
    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/crypto/CryptoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3
    .line 36
    return-void
.end method
