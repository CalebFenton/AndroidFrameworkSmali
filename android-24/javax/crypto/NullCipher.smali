.class public Ljavax/crypto/NullCipher;
.super Ljavax/crypto/Cipher;
.source "NullCipher.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 42
    new-instance v0, Ljavax/crypto/NullCipherSpi;

    #@3
    invoke-direct {v0}, Ljavax/crypto/NullCipherSpi;-><init>()V

    #@6
    invoke-direct {p0, v0, v1, v1}, Ljavax/crypto/Cipher;-><init>(Ljavax/crypto/CipherSpi;Ljava/security/Provider;Ljava/lang/String;)V

    #@9
    .line 41
    return-void
.end method
