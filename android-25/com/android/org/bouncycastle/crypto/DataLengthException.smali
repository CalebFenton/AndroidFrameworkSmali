.class public Lcom/android/org/bouncycastle/crypto/DataLengthException;
.super Lcom/android/org/bouncycastle/crypto/RuntimeCryptoException;
.source "DataLengthException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 15
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/RuntimeCryptoException;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/RuntimeCryptoException;-><init>(Ljava/lang/String;)V

    #@3
    .line 25
    return-void
.end method
