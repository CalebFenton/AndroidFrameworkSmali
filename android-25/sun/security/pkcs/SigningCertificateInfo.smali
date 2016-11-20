.class public Lsun/security/pkcs/SigningCertificateInfo;
.super Ljava/lang/Object;
.source "SigningCertificateInfo.java"


# instance fields
.field private ber:[B

.field private certId:[Lsun/security/pkcs/ESSCertId;


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1, "ber"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 86
    iput-object v0, p0, Lsun/security/pkcs/SigningCertificateInfo;->ber:[B

    #@6
    .line 88
    iput-object v0, p0, Lsun/security/pkcs/SigningCertificateInfo;->certId:[Lsun/security/pkcs/ESSCertId;

    #@8
    .line 91
    invoke-virtual {p0, p1}, Lsun/security/pkcs/SigningCertificateInfo;->parse([B)V

    #@b
    .line 90
    return-void
.end method


# virtual methods
.method public parse([B)V
    .locals 8
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    .line 109
    new-instance v1, Lsun/security/util/DerValue;

    #@3
    invoke-direct {v1, p1}, Lsun/security/util/DerValue;-><init>([B)V

    #@6
    .line 110
    .local v1, "derValue":Lsun/security/util/DerValue;
    iget-byte v4, v1, Lsun/security/util/DerValue;->tag:B

    #@8
    const/16 v5, 0x30

    #@a
    if-eq v4, v5, :cond_0

    #@c
    .line 111
    new-instance v4, Ljava/io/IOException;

    #@e
    const-string/jumbo v5, "Bad encoding for signingCertificate"

    #@11
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@14
    throw v4

    #@15
    .line 115
    :cond_0
    iget-object v4, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@17
    invoke-virtual {v4, v7}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    #@1a
    move-result-object v0

    #@1b
    .line 116
    .local v0, "certs":[Lsun/security/util/DerValue;
    array-length v4, v0

    #@1c
    new-array v4, v4, [Lsun/security/pkcs/ESSCertId;

    #@1e
    iput-object v4, p0, Lsun/security/pkcs/SigningCertificateInfo;->certId:[Lsun/security/pkcs/ESSCertId;

    #@20
    .line 117
    const/4 v2, 0x0

    #@21
    .local v2, "i":I
    :goto_0
    array-length v4, v0

    #@22
    if-ge v2, v4, :cond_1

    #@24
    .line 118
    iget-object v4, p0, Lsun/security/pkcs/SigningCertificateInfo;->certId:[Lsun/security/pkcs/ESSCertId;

    #@26
    new-instance v5, Lsun/security/pkcs/ESSCertId;

    #@28
    aget-object v6, v0, v2

    #@2a
    invoke-direct {v5, v6}, Lsun/security/pkcs/ESSCertId;-><init>(Lsun/security/util/DerValue;)V

    #@2d
    aput-object v5, v4, v2

    #@2f
    .line 117
    add-int/lit8 v2, v2, 0x1

    #@31
    goto :goto_0

    #@32
    .line 122
    :cond_1
    iget-object v4, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@34
    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->available()I

    #@37
    move-result v4

    #@38
    if-lez v4, :cond_2

    #@3a
    .line 123
    iget-object v4, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@3c
    invoke-virtual {v4, v7}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    #@3f
    move-result-object v3

    #@40
    .line 124
    .local v3, "policies":[Lsun/security/util/DerValue;
    const/4 v2, 0x0

    #@41
    :goto_1
    array-length v4, v3

    #@42
    if-ge v2, v4, :cond_2

    #@44
    add-int/lit8 v2, v2, 0x1

    #@46
    goto :goto_1

    #@47
    .line 106
    .end local v3    # "policies":[Lsun/security/util/DerValue;
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 96
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string/jumbo v2, "[\n"

    #@8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b
    .line 97
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lsun/security/pkcs/SigningCertificateInfo;->certId:[Lsun/security/pkcs/ESSCertId;

    #@e
    array-length v2, v2

    #@f
    if-ge v1, v2, :cond_0

    #@11
    .line 98
    iget-object v2, p0, Lsun/security/pkcs/SigningCertificateInfo;->certId:[Lsun/security/pkcs/ESSCertId;

    #@13
    aget-object v2, v2, v1

    #@15
    invoke-virtual {v2}, Lsun/security/pkcs/ESSCertId;->toString()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1c
    .line 97
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 101
    :cond_0
    const-string/jumbo v2, "\n]"

    #@22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@25
    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    return-object v2
.end method
