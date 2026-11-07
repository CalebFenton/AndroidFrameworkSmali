.class public abstract Ljava/security/cert/Certificate;
.super Ljava/lang/Object;
.source "Certificate.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/cert/Certificate$CertificateRep;
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x31c20b3b0df7f5e5L


# instance fields
.field private greylist-max-o hash:I

.field private final greylist-max-o type:Ljava/lang/String;


# direct methods
.method protected constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "type"    # Ljava/lang/String;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Ljava/security/cert/Certificate;->hash:I

    .line 83
    iput-object p1, p0, Ljava/security/cert/Certificate;->type:Ljava/lang/String;

    .line 84
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 107
    if-ne p0, p1, :cond_4

    .line 108
    const/4 v0, 0x1

    return v0

    .line 110
    :cond_4
    instance-of v0, p1, Ljava/security/cert/Certificate;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 111
    return v1

    .line 114
    :cond_a
    :try_start_a
    invoke-static {p0}, Lsun/security/x509/X509CertImpl;->getEncodedInternal(Ljava/security/cert/Certificate;)[B

    move-result-object v0

    .line 115
    .local v0, "thisCert":[B
    move-object v2, p1

    check-cast v2, Ljava/security/cert/Certificate;

    invoke-static {v2}, Lsun/security/x509/X509CertImpl;->getEncodedInternal(Ljava/security/cert/Certificate;)[B

    move-result-object v2

    .line 117
    .local v2, "otherCert":[B
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1
    :try_end_19
    .catch Ljava/security/cert/CertificateException; {:try_start_a .. :try_end_19} :catch_1a

    return v1

    .line 118
    .end local v0    # "thisCert":[B
    .end local v2    # "otherCert":[B
    :catch_1a
    move-exception v0

    .line 119
    .local v0, "e":Ljava/security/cert/CertificateException;
    return v1
.end method

.method public abstract whitelist test-api getEncoded()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api getPublicKey()Ljava/security/PublicKey;
.end method

.method public final whitelist test-api getType()Ljava/lang/String;
    .registers 2

    .line 92
    iget-object v0, p0, Ljava/security/cert/Certificate;->type:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 130
    iget v0, p0, Ljava/security/cert/Certificate;->hash:I

    .line 131
    .local v0, "h":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    .line 133
    :try_start_5
    invoke-static {p0}, Lsun/security/x509/X509CertImpl;->getEncodedInternal(Ljava/security/cert/Certificate;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1
    :try_end_d
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_d} :catch_f

    .line 136
    .end local v0    # "h":I
    .local v1, "h":I
    move v0, v1

    goto :goto_11

    .line 134
    .end local v1    # "h":I
    .restart local v0    # "h":I
    :catch_f
    move-exception v1

    .line 135
    .local v1, "e":Ljava/security/cert/CertificateException;
    const/4 v0, 0x0

    .line 137
    .end local v1    # "e":Ljava/security/cert/CertificateException;
    :goto_11
    iput v0, p0, Ljava/security/cert/Certificate;->hash:I

    .line 139
    :cond_13
    return v0
.end method

.method public abstract whitelist test-api toString()Ljava/lang/String;
.end method

.method public abstract whitelist test-api verify(Ljava/security/PublicKey;)V
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

.method public abstract whitelist test-api verify(Ljava/security/PublicKey;Ljava/lang/String;)V
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

.method public whitelist test-api verify(Ljava/security/PublicKey;Ljava/security/Provider;)V
    .registers 4
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 220
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected whitelist test-api writeReplace()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 295
    :try_start_0
    new-instance v0, Ljava/security/cert/Certificate$CertificateRep;

    iget-object v1, p0, Ljava/security/cert/Certificate;->type:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/security/cert/Certificate$CertificateRep;-><init>(Ljava/lang/String;[B)V
    :try_end_b
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    .line 296
    :catch_c
    move-exception v0

    .line 297
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v1, Ljava/io/NotSerializableException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "java.security.cert.Certificate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/security/cert/Certificate;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 301
    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
