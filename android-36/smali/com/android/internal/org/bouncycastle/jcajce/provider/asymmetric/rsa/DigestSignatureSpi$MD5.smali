.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi$MD5;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;
.source "DigestSignatureSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MD5"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 5

    .line 410
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getMD5()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v1

    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;

    new-instance v3, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v3}, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;-><init>()V

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;-><init>(Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/crypto/Digest;Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;)V

    .line 411
    return-void
.end method
