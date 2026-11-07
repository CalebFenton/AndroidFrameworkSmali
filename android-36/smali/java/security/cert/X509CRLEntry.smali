.class public abstract Ljava/security/cert/X509CRLEntry;
.super Ljava/lang/Object;
.source "X509CRLEntry.java"

# interfaces
.implements Ljava/security/cert/X509Extension;


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "other"    # Ljava/lang/Object;

    .line 82
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 83
    return v0

    .line 84
    :cond_4
    instance-of v1, p1, Ljava/security/cert/X509CRLEntry;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 85
    return v2

    .line 87
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Ljava/security/cert/X509CRLEntry;->getEncoded()[B

    move-result-object v1

    .line 88
    .local v1, "thisCRLEntry":[B
    move-object v3, p1

    check-cast v3, Ljava/security/cert/X509CRLEntry;

    invoke-virtual {v3}, Ljava/security/cert/X509CRLEntry;->getEncoded()[B

    move-result-object v3

    .line 90
    .local v3, "otherCRLEntry":[B
    array-length v4, v1

    array-length v5, v3

    if-eq v4, v5, :cond_1a

    .line 91
    return v2

    .line 92
    :cond_1a
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1b
    array-length v5, v1

    if-ge v4, v5, :cond_28

    .line 93
    aget-byte v5, v1, v4

    aget-byte v6, v3, v4
    :try_end_22
    .catch Ljava/security/cert/CRLException; {:try_start_a .. :try_end_22} :catch_2a

    if-eq v5, v6, :cond_25

    .line 94
    return v2

    .line 92
    :cond_25
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 97
    .end local v1    # "thisCRLEntry":[B
    .end local v3    # "otherCRLEntry":[B
    .end local v4    # "i":I
    :cond_28
    nop

    .line 98
    return v0

    .line 95
    :catch_2a
    move-exception v0

    .line 96
    .local v0, "ce":Ljava/security/cert/CRLException;
    return v2
.end method

.method public whitelist test-api getCertificateIssuer()Ljavax/security/auth/x500/X500Principal;
    .registers 2

    .line 152
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract whitelist test-api getEncoded()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api getRevocationDate()Ljava/util/Date;
.end method

.method public whitelist test-api getRevocationReason()Ljava/security/cert/CRLReason;
    .registers 2

    .line 187
    invoke-virtual {p0}, Ljava/security/cert/X509CRLEntry;->hasExtensions()Z

    move-result v0

    if-nez v0, :cond_8

    .line 188
    const/4 v0, 0x0

    return-object v0

    .line 190
    :cond_8
    invoke-static {p0}, Lsun/security/x509/X509CRLEntryImpl;->getRevocationReason(Ljava/security/cert/X509CRLEntry;)Ljava/security/cert/CRLReason;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api getSerialNumber()Ljava/math/BigInteger;
.end method

.method public abstract whitelist test-api hasExtensions()Z
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 108
    const/4 v0, 0x0

    .line 110
    .local v0, "retval":I
    :try_start_1
    invoke-virtual {p0}, Ljava/security/cert/X509CRLEntry;->getEncoded()[B

    move-result-object v1

    .line 111
    .local v1, "entryData":[B
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_6
    array-length v3, v1

    if-ge v2, v3, :cond_10

    .line 112
    aget-byte v3, v1, v2
    :try_end_b
    .catch Ljava/security/cert/CRLException; {:try_start_1 .. :try_end_b} :catch_12

    mul-int/2addr v3, v2

    add-int/2addr v0, v3

    .line 111
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 116
    .end local v1    # "entryData":[B
    .end local v2    # "i":I
    :cond_10
    nop

    .line 117
    return v0

    .line 114
    :catch_12
    move-exception v1

    .line 115
    .local v1, "ce":Ljava/security/cert/CRLException;
    return v0
.end method

.method public abstract whitelist test-api toString()Ljava/lang/String;
.end method
