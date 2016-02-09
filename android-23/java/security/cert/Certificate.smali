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
.field private static final serialVersionUID:J = -0x31c20b3b0df7f5e5L


# instance fields
.field private final type:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 51
    iput-object p1, p0, Ljava/security/cert/Certificate;->type:Ljava/lang/String;

    #@5
    .line 50
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 77
    if-ne p0, p1, :cond_0

    #@2
    .line 78
    const/4 v1, 0x1

    #@3
    return v1

    #@4
    .line 80
    :cond_0
    instance-of v1, p1, Ljava/security/cert/Certificate;

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 83
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getEncoded()[B

    #@b
    move-result-object v1

    #@c
    .line 84
    check-cast p1, Ljava/security/cert/Certificate;

    #@e
    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    #@11
    move-result-object v2

    #@12
    .line 83
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result v1

    #@16
    return v1

    #@17
    .line 85
    :catch_0
    move-exception v0

    #@18
    .line 86
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@1a
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@1d
    throw v1

    #@1e
    .line 89
    .end local v0    # "e":Ljava/security/cert/CertificateEncodingException;
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    const/4 v1, 0x0

    #@1f
    return v1
.end method

.method public abstract getEncoded()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation
.end method

.method public abstract getPublicKey()Ljava/security/PublicKey;
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 60
    iget-object v0, p0, Ljava/security/cert/Certificate;->type:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 5

    #@0
    .prologue
    .line 102
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getEncoded()[B

    #@3
    move-result-object v1

    #@4
    .line 103
    .local v1, "encoded":[B
    const/4 v2, 0x0

    #@5
    .line 104
    .local v2, "hash":I
    const/4 v3, 0x0

    #@6
    .local v3, "i":I
    :goto_0
    array-length v4, v1

    #@7
    if-ge v3, v4, :cond_0

    #@9
    .line 105
    aget-byte v4, v1, v3
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    mul-int/2addr v4, v3

    #@c
    add-int/2addr v2, v4

    #@d
    .line 104
    add-int/lit8 v3, v3, 0x1

    #@f
    goto :goto_0

    #@10
    .line 107
    :cond_0
    return v2

    #@11
    .line 108
    .end local v1    # "encoded":[B
    .end local v2    # "hash":I
    .end local v3    # "i":I
    :catch_0
    move-exception v0

    #@12
    .line 109
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v4, Ljava/lang/RuntimeException;

    #@14
    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@17
    throw v4
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public abstract verify(Ljava/security/PublicKey;)V
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

.method public abstract verify(Ljava/security/PublicKey;Ljava/lang/String;)V
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

.method protected writeReplace()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    #@0
    .prologue
    .line 197
    :try_start_0
    new-instance v1, Ljava/security/cert/Certificate$CertificateRep;

    #@2
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getEncoded()[B

    #@9
    move-result-object v3

    #@a
    invoke-direct {v1, v2, v3}, Ljava/security/cert/Certificate$CertificateRep;-><init>(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    return-object v1

    #@e
    .line 198
    :catch_0
    move-exception v0

    #@f
    .line 199
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v1, Ljava/io/NotSerializableException;

    #@11
    new-instance v2, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v3, "Could not create serialization object: "

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-direct {v1, v2}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    #@28
    throw v1
.end method
