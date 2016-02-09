.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi$SHA256;
.super Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;
.source "DigestSignatureSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SHA256"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    .line 287
    sget-object v0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA256()Lcom/android/org/bouncycastle/crypto/Digest;

    #@5
    move-result-object v1

    #@6
    new-instance v2, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;

    #@8
    new-instance v3, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;

    #@a
    invoke-direct {v3}, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;-><init>()V

    #@d
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;-><init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;)V

    #@10
    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/crypto/Digest;Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;)V

    #@13
    .line 284
    return-void
.end method
