.class public interface abstract Lcom/android/internal/org/bouncycastle/x509/X509AttributeCertificate;
.super Ljava/lang/Object;
.source "X509AttributeCertificate.java"

# interfaces
.implements Ljava/security/cert/X509Extension;


# virtual methods
.method public abstract blacklist checkValidity()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation
.end method

.method public abstract blacklist checkValidity(Ljava/util/Date;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation
.end method

.method public abstract blacklist getAttributes()[Lcom/android/internal/org/bouncycastle/x509/X509Attribute;
.end method

.method public abstract blacklist getAttributes(Ljava/lang/String;)[Lcom/android/internal/org/bouncycastle/x509/X509Attribute;
.end method

.method public abstract blacklist getEncoded()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist getHolder()Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateHolder;
.end method

.method public abstract blacklist getIssuer()Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateIssuer;
.end method

.method public abstract blacklist getIssuerUniqueID()[Z
.end method

.method public abstract blacklist getNotAfter()Ljava/util/Date;
.end method

.method public abstract blacklist getNotBefore()Ljava/util/Date;
.end method

.method public abstract blacklist getSerialNumber()Ljava/math/BigInteger;
.end method

.method public abstract blacklist getSignature()[B
.end method

.method public abstract blacklist getVersion()I
.end method

.method public abstract blacklist verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation
.end method
