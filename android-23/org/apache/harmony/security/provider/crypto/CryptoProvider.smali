.class public final Lorg/apache/harmony/security/provider/crypto/CryptoProvider;
.super Ljava/security/Provider;
.source "CryptoProvider.java"


# static fields
.field private static final serialVersionUID:J = 0x6ee674ab6c76830eL


# direct methods
.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    .line 36
    const-string/jumbo v0, "Crypto"

    #@3
    const-string/jumbo v1, "HARMONY (SHA1 digest; SecureRandom; SHA1withDSA signature)"

    #@6
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    #@8
    invoke-direct {p0, v0, v2, v3, v1}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    #@b
    .line 38
    const-string/jumbo v0, "SecureRandom.SHA1PRNG"

    #@e
    .line 39
    const-string/jumbo v1, "org.apache.harmony.security.provider.crypto.SHA1PRNG_SecureRandomImpl"

    #@11
    .line 38
    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/security/provider/crypto/CryptoProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    .line 40
    const-string/jumbo v0, "SecureRandom.SHA1PRNG ImplementedIn"

    #@17
    const-string/jumbo v1, "Software"

    #@1a
    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/security/provider/crypto/CryptoProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    .line 35
    return-void
.end method
