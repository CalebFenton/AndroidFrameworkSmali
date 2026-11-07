.class public Lsun/security/pkcs/SigningCertificateInfo;
.super Ljava/lang/Object;
.source "SigningCertificateInfo.java"


# instance fields
.field private blacklist ber:[B

.field private blacklist certId:[Lsun/security/pkcs/ESSCertId;


# direct methods
.method public constructor blacklist <init>([B)V
    .registers 3
    .param p1, "ber"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/pkcs/SigningCertificateInfo;->ber:[B

    .line 88
    iput-object v0, p0, Lsun/security/pkcs/SigningCertificateInfo;->certId:[Lsun/security/pkcs/ESSCertId;

    .line 91
    invoke-virtual {p0, p1}, Lsun/security/pkcs/SigningCertificateInfo;->parse([B)V

    .line 92
    return-void
.end method


# virtual methods
.method public blacklist parse([B)V
    .registers 9
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    new-instance v0, Lsun/security/util/DerValue;

    invoke-direct {v0, p1}, Lsun/security/util/DerValue;-><init>([B)V

    .line 110
    .local v0, "derValue":Lsun/security/util/DerValue;
    iget-byte v1, v0, Lsun/security/util/DerValue;->tag:B

    const/16 v2, 0x30

    if-ne v1, v2, :cond_3f

    .line 115
    iget-object v1, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v1

    .line 116
    .local v1, "certs":[Lsun/security/util/DerValue;
    array-length v3, v1

    new-array v3, v3, [Lsun/security/pkcs/ESSCertId;

    iput-object v3, p0, Lsun/security/pkcs/SigningCertificateInfo;->certId:[Lsun/security/pkcs/ESSCertId;

    .line 117
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_18
    array-length v4, v1

    if-ge v3, v4, :cond_29

    .line 118
    iget-object v4, p0, Lsun/security/pkcs/SigningCertificateInfo;->certId:[Lsun/security/pkcs/ESSCertId;

    new-instance v5, Lsun/security/pkcs/ESSCertId;

    aget-object v6, v1, v3

    invoke-direct {v5, v6}, Lsun/security/pkcs/ESSCertId;-><init>(Lsun/security/util/DerValue;)V

    aput-object v5, v4, v3

    .line 117
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 122
    .end local v3    # "i":I
    :cond_29
    iget-object v3, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->available()I

    move-result v3

    if-lez v3, :cond_3e

    .line 123
    iget-object v3, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3, v2}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v2

    .line 124
    .local v2, "policies":[Lsun/security/util/DerValue;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_38
    array-length v4, v2

    if-ge v3, v4, :cond_3e

    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 128
    .end local v2    # "policies":[Lsun/security/util/DerValue;
    .end local v3    # "i":I
    :cond_3e
    return-void

    .line 111
    .end local v1    # "certs":[Lsun/security/util/DerValue;
    :cond_3f
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Bad encoding for signingCertificate"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 95
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 96
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    iget-object v2, p0, Lsun/security/pkcs/SigningCertificateInfo;->certId:[Lsun/security/pkcs/ESSCertId;

    array-length v2, v2

    if-ge v1, v2, :cond_1e

    .line 98
    iget-object v2, p0, Lsun/security/pkcs/SigningCertificateInfo;->certId:[Lsun/security/pkcs/ESSCertId;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lsun/security/pkcs/ESSCertId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 101
    .end local v1    # "i":I
    :cond_1e
    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
