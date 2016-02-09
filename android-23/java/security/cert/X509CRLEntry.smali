.class public abstract Ljava/security/cert/X509CRLEntry;
.super Ljava/lang/Object;
.source "X509CRLEntry.java"

# interfaces
.implements Ljava/security/cert/X509Extension;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 49
    if-ne p1, p0, :cond_0

    #@3
    .line 50
    const/4 v2, 0x1

    #@4
    return v2

    #@5
    .line 52
    :cond_0
    instance-of v2, p1, Ljava/security/cert/X509CRLEntry;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 53
    return v4

    #@a
    :cond_1
    move-object v1, p1

    #@b
    .line 55
    check-cast v1, Ljava/security/cert/X509CRLEntry;

    #@d
    .line 57
    .local v1, "obj":Ljava/security/cert/X509CRLEntry;
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509CRLEntry;->getEncoded()[B

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v1}, Ljava/security/cert/X509CRLEntry;->getEncoded()[B

    #@14
    move-result-object v3

    #@15
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/security/cert/CRLException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    move-result v2

    #@19
    return v2

    #@1a
    .line 58
    :catch_0
    move-exception v0

    #@1b
    .line 59
    .local v0, "e":Ljava/security/cert/CRLException;
    return v4
.end method

.method public getCertificateIssuer()Ljavax/security/auth/x500/X500Principal;
    .locals 1

    #@0
    .prologue
    .line 103
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public abstract getEncoded()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation
.end method

.method public abstract getRevocationDate()Ljava/util/Date;
.end method

.method public getRevocationReason()Ljava/security/cert/CRLReason;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 136
    const-string/jumbo v3, "2.5.29.21"

    #@4
    invoke-virtual {p0, v3}, Ljava/security/cert/X509CRLEntry;->getExtensionValue(Ljava/lang/String;)[B

    #@7
    move-result-object v2

    #@8
    .line 137
    .local v2, "reasonBytes":[B
    if-nez v2, :cond_0

    #@a
    .line 138
    return-object v4

    #@b
    .line 142
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v3, v2}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->decode([B)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, [B

    #@15
    .line 143
    .local v1, "rawBytes":[B
    new-instance v3, Lorg/apache/harmony/security/x509/ReasonCode;

    #@17
    invoke-direct {v3, v1}, Lorg/apache/harmony/security/x509/ReasonCode;-><init>([B)V

    #@1a
    invoke-virtual {v3}, Lorg/apache/harmony/security/x509/ReasonCode;->getReason()Ljava/security/cert/CRLReason;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    move-result-object v3

    #@1e
    return-object v3

    #@1f
    .line 144
    .end local v1    # "rawBytes":[B
    :catch_0
    move-exception v0

    #@20
    .line 145
    .local v0, "e":Ljava/io/IOException;
    return-object v4
.end method

.method public abstract getSerialNumber()Ljava/math/BigInteger;
.end method

.method public abstract hasExtensions()Z
.end method

.method public hashCode()I
    .locals 5

    #@0
    .prologue
    .line 69
    const/4 v3, 0x0

    #@1
    .line 71
    .local v3, "res":I
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509CRLEntry;->getEncoded()[B

    #@4
    move-result-object v0

    #@5
    .line 72
    .local v0, "array":[B
    const/4 v2, 0x0

    #@6
    .local v2, "i":I
    :goto_0
    array-length v4, v0

    #@7
    if-ge v2, v4, :cond_0

    #@9
    .line 73
    aget-byte v4, v0, v2
    :try_end_0
    .catch Ljava/security/cert/CRLException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    and-int/lit16 v4, v4, 0xff

    #@d
    add-int/2addr v3, v4

    #@e
    .line 72
    add-int/lit8 v2, v2, 0x1

    #@10
    goto :goto_0

    #@11
    .line 75
    .end local v0    # "array":[B
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    #@12
    .line 77
    :cond_0
    return v3
.end method

.method public abstract toString()Ljava/lang/String;
.end method
