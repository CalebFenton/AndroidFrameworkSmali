.class public Lsun/security/pkcs/PKCS7;
.super Ljava/lang/Object;
.source "PKCS7.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/pkcs/PKCS7$VerbatimX509Certificate;,
        Lsun/security/pkcs/PKCS7$WrappedX509Certificate;
    }
.end annotation


# instance fields
.field private certIssuerNames:[Ljava/security/Principal;

.field private certificates:[Ljava/security/cert/X509Certificate;

.field private contentInfo:Lsun/security/pkcs/ContentInfo;

.field private contentType:Lsun/security/util/ObjectIdentifier;

.field private crls:[Ljava/security/cert/X509CRL;

.field private digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

.field private oldStyle:Z

.field private signerInfos:[Lsun/security/pkcs/SignerInfo;

.field private version:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/security/pkcs/ParsingException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 67
    iput-object v2, p0, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    #@6
    .line 68
    iput-object v2, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    #@8
    .line 69
    iput-object v2, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    #@a
    .line 70
    iput-object v2, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    #@c
    .line 71
    iput-object v2, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    #@e
    .line 72
    iput-object v2, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    #@10
    .line 74
    const/4 v2, 0x0

    #@11
    iput-boolean v2, p0, Lsun/security/pkcs/PKCS7;->oldStyle:Z

    #@13
    .line 87
    new-instance v1, Ljava/io/DataInputStream;

    #@15
    invoke-direct {v1, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #@18
    .line 88
    .local v1, "dis":Ljava/io/DataInputStream;
    invoke-virtual {v1}, Ljava/io/DataInputStream;->available()I

    #@1b
    move-result v2

    #@1c
    new-array v0, v2, [B

    #@1e
    .line 89
    .local v0, "data":[B
    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    #@21
    .line 91
    new-instance v2, Lsun/security/util/DerInputStream;

    #@23
    invoke-direct {v2, v0}, Lsun/security/util/DerInputStream;-><init>([B)V

    #@26
    invoke-direct {p0, v2}, Lsun/security/pkcs/PKCS7;->parse(Lsun/security/util/DerInputStream;)V

    #@29
    .line 86
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerInputStream;)V
    .locals 1
    .param p1, "derin"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/security/pkcs/ParsingException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 67
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    #@6
    .line 68
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    #@8
    .line 69
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    #@a
    .line 70
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    #@c
    .line 71
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    #@e
    .line 72
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    #@10
    .line 74
    const/4 v0, 0x0

    #@11
    iput-boolean v0, p0, Lsun/security/pkcs/PKCS7;->oldStyle:Z

    #@13
    .line 102
    invoke-direct {p0, p1}, Lsun/security/pkcs/PKCS7;->parse(Lsun/security/util/DerInputStream;)V

    #@16
    .line 101
    return-void
.end method

.method public constructor <init>([B)V
    .locals 4
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/security/pkcs/ParsingException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 67
    iput-object v3, p0, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    #@6
    .line 68
    iput-object v3, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    #@8
    .line 69
    iput-object v3, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    #@a
    .line 70
    iput-object v3, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    #@c
    .line 71
    iput-object v3, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    #@e
    .line 72
    iput-object v3, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    #@10
    .line 74
    const/4 v3, 0x0

    #@11
    iput-boolean v3, p0, Lsun/security/pkcs/PKCS7;->oldStyle:Z

    #@13
    .line 114
    :try_start_0
    new-instance v0, Lsun/security/util/DerInputStream;

    #@15
    invoke-direct {v0, p1}, Lsun/security/util/DerInputStream;-><init>([B)V

    #@18
    .line 115
    .local v0, "derin":Lsun/security/util/DerInputStream;
    invoke-direct {p0, v0}, Lsun/security/pkcs/PKCS7;->parse(Lsun/security/util/DerInputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    .line 112
    return-void

    #@1c
    .line 116
    .end local v0    # "derin":Lsun/security/util/DerInputStream;
    :catch_0
    move-exception v1

    #@1d
    .line 117
    .local v1, "ioe1":Ljava/io/IOException;
    new-instance v2, Lsun/security/pkcs/ParsingException;

    #@1f
    .line 118
    const-string/jumbo v3, "Unable to parse the encoded bytes"

    #@22
    .line 117
    invoke-direct {v2, v3}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    #@25
    .line 119
    .local v2, "pe":Lsun/security/pkcs/ParsingException;
    invoke-virtual {v2, v1}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@28
    .line 120
    throw v2
.end method

.method public constructor <init>([Lsun/security/x509/AlgorithmId;Lsun/security/pkcs/ContentInfo;[Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509CRL;[Lsun/security/pkcs/SignerInfo;)V
    .locals 1
    .param p1, "digestAlgorithmIds"    # [Lsun/security/x509/AlgorithmId;
    .param p2, "contentInfo"    # Lsun/security/pkcs/ContentInfo;
    .param p3, "certificates"    # [Ljava/security/cert/X509Certificate;
    .param p4, "crls"    # [Ljava/security/cert/X509CRL;
    .param p5, "signerInfos"    # [Lsun/security/pkcs/SignerInfo;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 67
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    #@6
    .line 68
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    #@8
    .line 69
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    #@a
    .line 70
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    #@c
    .line 71
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    #@e
    .line 72
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    #@10
    .line 74
    const/4 v0, 0x0

    #@11
    iput-boolean v0, p0, Lsun/security/pkcs/PKCS7;->oldStyle:Z

    #@13
    .line 192
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    #@15
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    #@17
    .line 193
    iput-object p1, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    #@19
    .line 194
    iput-object p2, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    #@1b
    .line 195
    iput-object p3, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    #@1d
    .line 196
    iput-object p4, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    #@1f
    .line 197
    iput-object p5, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    #@21
    .line 190
    return-void
.end method

.method public constructor <init>([Lsun/security/x509/AlgorithmId;Lsun/security/pkcs/ContentInfo;[Ljava/security/cert/X509Certificate;[Lsun/security/pkcs/SignerInfo;)V
    .locals 6
    .param p1, "digestAlgorithmIds"    # [Lsun/security/x509/AlgorithmId;
    .param p2, "contentInfo"    # Lsun/security/pkcs/ContentInfo;
    .param p3, "certificates"    # [Ljava/security/cert/X509Certificate;
    .param p4, "signerInfos"    # [Lsun/security/pkcs/SignerInfo;

    #@0
    .prologue
    .line 204
    const/4 v4, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v5, p4

    #@6
    invoke-direct/range {v0 .. v5}, Lsun/security/pkcs/PKCS7;-><init>([Lsun/security/x509/AlgorithmId;Lsun/security/pkcs/ContentInfo;[Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509CRL;[Lsun/security/pkcs/SignerInfo;)V

    #@9
    .line 203
    return-void
.end method

.method private parse(Lsun/security/util/DerInputStream;)V
    .locals 4
    .param p1, "derin"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/security/pkcs/ParsingException;
        }
    .end annotation

    #@0
    .prologue
    .line 131
    :try_start_0
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->available()I

    #@3
    move-result v3

    #@4
    invoke-virtual {p1, v3}, Lsun/security/util/DerInputStream;->mark(I)V

    #@7
    .line 133
    const/4 v3, 0x0

    #@8
    invoke-direct {p0, p1, v3}, Lsun/security/pkcs/PKCS7;->parse(Lsun/security/util/DerInputStream;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 128
    :goto_0
    return-void

    #@c
    .line 134
    :catch_0
    move-exception v0

    #@d
    .line 136
    .local v0, "ioe":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->reset()V

    #@10
    .line 138
    const/4 v3, 0x1

    #@11
    invoke-direct {p0, p1, v3}, Lsun/security/pkcs/PKCS7;->parse(Lsun/security/util/DerInputStream;Z)V

    #@14
    .line 139
    const/4 v3, 0x1

    #@15
    iput-boolean v3, p0, Lsun/security/pkcs/PKCS7;->oldStyle:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@17
    goto :goto_0

    #@18
    .line 140
    :catch_1
    move-exception v1

    #@19
    .line 141
    .local v1, "ioe1":Ljava/io/IOException;
    new-instance v2, Lsun/security/pkcs/ParsingException;

    #@1b
    .line 142
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    .line 141
    invoke-direct {v2, v3}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    #@22
    .line 143
    .local v2, "pe":Lsun/security/pkcs/ParsingException;
    invoke-virtual {v2, v0}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@25
    .line 144
    invoke-virtual {v2, v1}, Lsun/security/pkcs/ParsingException;->addSuppressed(Ljava/lang/Throwable;)V

    #@28
    .line 145
    throw v2
.end method

.method private parse(Lsun/security/util/DerInputStream;Z)V
    .locals 4
    .param p1, "derin"    # Lsun/security/util/DerInputStream;
    .param p2, "oldStyle"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 160
    new-instance v1, Lsun/security/pkcs/ContentInfo;

    #@2
    invoke-direct {v1, p1, p2}, Lsun/security/pkcs/ContentInfo;-><init>(Lsun/security/util/DerInputStream;Z)V

    #@5
    iput-object v1, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    #@7
    .line 161
    iget-object v1, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    #@9
    iget-object v1, v1, Lsun/security/pkcs/ContentInfo;->contentType:Lsun/security/util/ObjectIdentifier;

    #@b
    iput-object v1, p0, Lsun/security/pkcs/PKCS7;->contentType:Lsun/security/util/ObjectIdentifier;

    #@d
    .line 162
    iget-object v1, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    #@f
    invoke-virtual {v1}, Lsun/security/pkcs/ContentInfo;->getContent()Lsun/security/util/DerValue;

    #@12
    move-result-object v0

    #@13
    .line 164
    .local v0, "content":Lsun/security/util/DerValue;
    iget-object v1, p0, Lsun/security/pkcs/PKCS7;->contentType:Lsun/security/util/ObjectIdentifier;

    #@15
    sget-object v2, Lsun/security/pkcs/ContentInfo;->SIGNED_DATA_OID:Lsun/security/util/ObjectIdentifier;

    #@17
    invoke-virtual {v1, v2}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_0

    #@1d
    .line 165
    invoke-direct {p0, v0}, Lsun/security/pkcs/PKCS7;->parseSignedData(Lsun/security/util/DerValue;)V

    #@20
    .line 158
    :goto_0
    return-void

    #@21
    .line 166
    :cond_0
    iget-object v1, p0, Lsun/security/pkcs/PKCS7;->contentType:Lsun/security/util/ObjectIdentifier;

    #@23
    sget-object v2, Lsun/security/pkcs/ContentInfo;->OLD_SIGNED_DATA_OID:Lsun/security/util/ObjectIdentifier;

    #@25
    invoke-virtual {v1, v2}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    #@28
    move-result v1

    #@29
    if-eqz v1, :cond_1

    #@2b
    .line 168
    invoke-direct {p0, v0}, Lsun/security/pkcs/PKCS7;->parseOldSignedData(Lsun/security/util/DerValue;)V

    #@2e
    goto :goto_0

    #@2f
    .line 169
    :cond_1
    iget-object v1, p0, Lsun/security/pkcs/PKCS7;->contentType:Lsun/security/util/ObjectIdentifier;

    #@31
    sget-object v2, Lsun/security/pkcs/ContentInfo;->NETSCAPE_CERT_SEQUENCE_OID:Lsun/security/util/ObjectIdentifier;

    #@33
    invoke-virtual {v1, v2}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    #@36
    move-result v1

    #@37
    if-eqz v1, :cond_2

    #@39
    .line 170
    invoke-direct {p0, v0}, Lsun/security/pkcs/PKCS7;->parseNetscapeCertChain(Lsun/security/util/DerValue;)V

    #@3c
    goto :goto_0

    #@3d
    .line 172
    :cond_2
    new-instance v1, Lsun/security/pkcs/ParsingException;

    #@3f
    new-instance v2, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v3, "content type "

    #@47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v2

    #@4b
    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->contentType:Lsun/security/util/ObjectIdentifier;

    #@4d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v2

    #@51
    .line 173
    const-string/jumbo v3, " not supported."

    #@54
    .line 172
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v2

    #@58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v2

    #@5c
    invoke-direct {v1, v2}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    #@5f
    throw v1
.end method

.method private parseNetscapeCertChain(Lsun/security/util/DerValue;)V
    .locals 14
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/security/pkcs/ParsingException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v13, 0x0

    #@1
    .line 209
    new-instance v5, Lsun/security/util/DerInputStream;

    #@3
    invoke-virtual {p1}, Lsun/security/util/DerValue;->toByteArray()[B

    #@6
    move-result-object v10

    #@7
    invoke-direct {v5, v10}, Lsun/security/util/DerInputStream;-><init>([B)V

    #@a
    .line 210
    .local v5, "dis":Lsun/security/util/DerInputStream;
    const/4 v10, 0x2

    #@b
    const/4 v11, 0x1

    #@c
    invoke-virtual {v5, v10, v11}, Lsun/security/util/DerInputStream;->getSequence(IZ)[Lsun/security/util/DerValue;

    #@f
    move-result-object v4

    #@10
    .line 211
    .local v4, "contents":[Lsun/security/util/DerValue;
    array-length v10, v4

    #@11
    new-array v10, v10, [Ljava/security/cert/X509Certificate;

    #@13
    iput-object v10, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    #@15
    .line 213
    const/4 v3, 0x0

    #@16
    .line 215
    .local v3, "certfac":Ljava/security/cert/CertificateFactory;
    :try_start_0
    const-string/jumbo v10, "X.509"

    #@19
    invoke-static {v10}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_4

    #@1c
    move-result-object v3

    #@1d
    .line 220
    .end local v3    # "certfac":Ljava/security/cert/CertificateFactory;
    :goto_0
    const/4 v6, 0x0

    #@1e
    .local v6, "i":I
    :goto_1
    array-length v10, v4

    #@1f
    if-ge v6, v10, :cond_3

    #@21
    .line 221
    const/4 v0, 0x0

    #@22
    .line 223
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_1
    aget-object v10, v4, v6

    #@24
    invoke-virtual {v10}, Lsun/security/util/DerValue;->getOriginalEncodedForm()[B

    #@27
    move-result-object v8

    #@28
    .line 224
    .local v8, "original":[B
    if-nez v3, :cond_1

    #@2a
    .line 225
    iget-object v10, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    #@2c
    new-instance v11, Lsun/security/x509/X509CertImpl;

    #@2e
    aget-object v12, v4, v6

    #@30
    invoke-direct {v11, v12, v8}, Lsun/security/x509/X509CertImpl;-><init>(Lsun/security/util/DerValue;[B)V

    #@33
    aput-object v11, v10, v6
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@35
    .line 243
    :goto_2
    if-eqz v13, :cond_0

    #@37
    .line 244
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    #@3a
    .line 220
    :cond_0
    add-int/lit8 v6, v6, 0x1

    #@3c
    goto :goto_1

    #@3d
    .line 227
    :cond_1
    :try_start_2
    new-instance v1, Ljava/io/ByteArrayInputStream;

    #@3f
    invoke-direct {v1, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@42
    .line 228
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .local v1, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_3
    iget-object v11, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    #@44
    new-instance v12, Lsun/security/pkcs/PKCS7$VerbatimX509Certificate;

    #@46
    .line 229
    invoke-virtual {v3, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    #@49
    move-result-object v10

    #@4a
    check-cast v10, Ljava/security/cert/X509Certificate;

    #@4c
    .line 228
    invoke-direct {v12, v10, v8}, Lsun/security/pkcs/PKCS7$VerbatimX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V

    #@4f
    aput-object v12, v11, v6

    #@51
    .line 231
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@54
    .line 232
    const/4 v0, 0x0

    #@55
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_2

    #@56
    .line 238
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v8    # "original":[B
    :catch_0
    move-exception v7

    #@57
    .line 239
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .local v7, "ioe":Ljava/io/IOException;
    :goto_3
    :try_start_4
    new-instance v9, Lsun/security/pkcs/ParsingException;

    #@59
    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@5c
    move-result-object v10

    #@5d
    invoke-direct {v9, v10}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    #@60
    .line 240
    .local v9, "pe":Lsun/security/pkcs/ParsingException;
    invoke-virtual {v9, v7}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@63
    .line 241
    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@64
    .line 242
    .end local v7    # "ioe":Ljava/io/IOException;
    .end local v9    # "pe":Lsun/security/pkcs/ParsingException;
    :catchall_0
    move-exception v10

    #@65
    .line 243
    :goto_4
    if-eqz v0, :cond_2

    #@67
    .line 244
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    #@6a
    .line 242
    :cond_2
    throw v10

    #@6b
    .line 234
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_1
    move-exception v2

    #@6c
    .line 235
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .local v2, "ce":Ljava/security/cert/CertificateException;
    :goto_5
    :try_start_5
    new-instance v9, Lsun/security/pkcs/ParsingException;

    #@6e
    invoke-virtual {v2}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    #@71
    move-result-object v10

    #@72
    invoke-direct {v9, v10}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    #@75
    .line 236
    .restart local v9    # "pe":Lsun/security/pkcs/ParsingException;
    invoke-virtual {v9, v2}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@78
    .line 237
    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@79
    .line 208
    .end local v2    # "ce":Ljava/security/cert/CertificateException;
    .end local v9    # "pe":Lsun/security/pkcs/ParsingException;
    :cond_3
    return-void

    #@7a
    .line 242
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v8    # "original":[B
    :catchall_1
    move-exception v10

    #@7b
    move-object v0, v1

    #@7c
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_4

    #@7d
    .line 234
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_2
    move-exception v2

    #@7e
    .restart local v2    # "ce":Ljava/security/cert/CertificateException;
    move-object v0, v1

    #@7f
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_5

    #@80
    .line 238
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v2    # "ce":Ljava/security/cert/CertificateException;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_3
    move-exception v7

    #@81
    .restart local v7    # "ioe":Ljava/io/IOException;
    move-object v0, v1

    #@82
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_3

    #@83
    .line 216
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v6    # "i":I
    .end local v7    # "ioe":Ljava/io/IOException;
    .end local v8    # "original":[B
    .restart local v3    # "certfac":Ljava/security/cert/CertificateFactory;
    :catch_4
    move-exception v2

    #@84
    .restart local v2    # "ce":Ljava/security/cert/CertificateException;
    goto :goto_0
.end method

.method private parseOldSignedData(Lsun/security/util/DerValue;)V
    .locals 22
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/security/pkcs/ParsingException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 383
    invoke-virtual/range {p1 .. p1}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    #@3
    move-result-object v9

    #@4
    .line 386
    .local v9, "dis":Lsun/security/util/DerInputStream;
    invoke-virtual {v9}, Lsun/security/util/DerInputStream;->getBigInteger()Ljava/math/BigInteger;

    #@7
    move-result-object v19

    #@8
    move-object/from16 v0, v19

    #@a
    move-object/from16 v1, p0

    #@c
    iput-object v0, v1, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    #@e
    .line 389
    const/16 v19, 0x1

    #@10
    move/from16 v0, v19

    #@12
    invoke-virtual {v9, v0}, Lsun/security/util/DerInputStream;->getSet(I)[Lsun/security/util/DerValue;

    #@15
    move-result-object v8

    #@16
    .line 390
    .local v8, "digestAlgorithmIdVals":[Lsun/security/util/DerValue;
    array-length v14, v8

    #@17
    .line 392
    .local v14, "len":I
    new-array v0, v14, [Lsun/security/x509/AlgorithmId;

    #@19
    move-object/from16 v19, v0

    #@1b
    move-object/from16 v0, v19

    #@1d
    move-object/from16 v1, p0

    #@1f
    iput-object v0, v1, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    #@21
    .line 394
    const/4 v11, 0x0

    #@22
    .local v11, "i":I
    :goto_0
    if-ge v11, v14, :cond_0

    #@24
    .line 395
    :try_start_0
    aget-object v15, v8, v11

    #@26
    .line 396
    .local v15, "oid":Lsun/security/util/DerValue;
    move-object/from16 v0, p0

    #@28
    iget-object v0, v0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    #@2a
    move-object/from16 v19, v0

    #@2c
    invoke-static {v15}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    #@2f
    move-result-object v20

    #@30
    aput-object v20, v19, v11
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@32
    .line 394
    add-int/lit8 v11, v11, 0x1

    #@34
    goto :goto_0

    #@35
    .line 398
    .end local v15    # "oid":Lsun/security/util/DerValue;
    :catch_0
    move-exception v10

    #@36
    .line 399
    .local v10, "e":Ljava/io/IOException;
    new-instance v19, Lsun/security/pkcs/ParsingException;

    #@38
    const-string/jumbo v20, "Error parsing digest AlgorithmId IDs"

    #@3b
    invoke-direct/range {v19 .. v20}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v19

    #@3f
    .line 403
    .end local v10    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v19, Lsun/security/pkcs/ContentInfo;

    #@41
    const/16 v20, 0x1

    #@43
    move-object/from16 v0, v19

    #@45
    move/from16 v1, v20

    #@47
    invoke-direct {v0, v9, v1}, Lsun/security/pkcs/ContentInfo;-><init>(Lsun/security/util/DerInputStream;Z)V

    #@4a
    move-object/from16 v0, v19

    #@4c
    move-object/from16 v1, p0

    #@4e
    iput-object v0, v1, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    #@50
    .line 406
    const/4 v7, 0x0

    #@51
    .line 408
    .local v7, "certfac":Ljava/security/cert/CertificateFactory;
    :try_start_1
    const-string/jumbo v19, "X.509"

    #@54
    invoke-static/range {v19 .. v19}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_5

    #@57
    move-result-object v7

    #@58
    .line 412
    .end local v7    # "certfac":Ljava/security/cert/CertificateFactory;
    :goto_1
    const/16 v19, 0x2

    #@5a
    const/16 v20, 0x0

    #@5c
    const/16 v21, 0x1

    #@5e
    move/from16 v0, v19

    #@60
    move/from16 v1, v20

    #@62
    move/from16 v2, v21

    #@64
    invoke-virtual {v9, v0, v1, v2}, Lsun/security/util/DerInputStream;->getSet(IZZ)[Lsun/security/util/DerValue;

    #@67
    move-result-object v6

    #@68
    .line 413
    .local v6, "certVals":[Lsun/security/util/DerValue;
    array-length v14, v6

    #@69
    .line 414
    new-array v0, v14, [Ljava/security/cert/X509Certificate;

    #@6b
    move-object/from16 v19, v0

    #@6d
    move-object/from16 v0, v19

    #@6f
    move-object/from16 v1, p0

    #@71
    iput-object v0, v1, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    #@73
    .line 416
    const/4 v11, 0x0

    #@74
    :goto_2
    if-ge v11, v14, :cond_4

    #@76
    .line 417
    const/4 v3, 0x0

    #@77
    .line 419
    .local v3, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_2
    aget-object v19, v6, v11

    #@79
    invoke-virtual/range {v19 .. v19}, Lsun/security/util/DerValue;->getOriginalEncodedForm()[B

    #@7c
    move-result-object v16

    #@7d
    .line 420
    .local v16, "original":[B
    if-nez v7, :cond_2

    #@7f
    .line 421
    move-object/from16 v0, p0

    #@81
    iget-object v0, v0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    #@83
    move-object/from16 v19, v0

    #@85
    new-instance v20, Lsun/security/x509/X509CertImpl;

    #@87
    aget-object v21, v6, v11

    #@89
    move-object/from16 v0, v20

    #@8b
    move-object/from16 v1, v21

    #@8d
    move-object/from16 v2, v16

    #@8f
    invoke-direct {v0, v1, v2}, Lsun/security/x509/X509CertImpl;-><init>(Lsun/security/util/DerValue;[B)V

    #@92
    aput-object v20, v19, v11
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@94
    .line 439
    :goto_3
    const/16 v19, 0x0

    #@96
    if-eqz v19, :cond_1

    #@98
    .line 440
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    #@9b
    .line 416
    :cond_1
    add-int/lit8 v11, v11, 0x1

    #@9d
    goto :goto_2

    #@9e
    .line 423
    :cond_2
    :try_start_3
    new-instance v4, Ljava/io/ByteArrayInputStream;

    #@a0
    move-object/from16 v0, v16

    #@a2
    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_3
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@a5
    .line 424
    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .local v4, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_4
    move-object/from16 v0, p0

    #@a7
    iget-object v0, v0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    #@a9
    move-object/from16 v20, v0

    #@ab
    new-instance v21, Lsun/security/pkcs/PKCS7$VerbatimX509Certificate;

    #@ad
    .line 425
    invoke-virtual {v7, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    #@b0
    move-result-object v19

    #@b1
    check-cast v19, Ljava/security/cert/X509Certificate;

    #@b3
    .line 424
    move-object/from16 v0, v21

    #@b5
    move-object/from16 v1, v19

    #@b7
    move-object/from16 v2, v16

    #@b9
    invoke-direct {v0, v1, v2}, Lsun/security/pkcs/PKCS7$VerbatimX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V

    #@bc
    aput-object v21, v20, v11

    #@be
    .line 427
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@c1
    .line 428
    const/4 v3, 0x0

    #@c2
    .restart local v3    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_3

    #@c3
    .line 434
    .end local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v16    # "original":[B
    :catch_1
    move-exception v13

    #@c4
    .line 435
    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .local v13, "ioe":Ljava/io/IOException;
    :goto_4
    :try_start_5
    new-instance v17, Lsun/security/pkcs/ParsingException;

    #@c6
    invoke-virtual {v13}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@c9
    move-result-object v19

    #@ca
    move-object/from16 v0, v17

    #@cc
    move-object/from16 v1, v19

    #@ce
    invoke-direct {v0, v1}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    #@d1
    .line 436
    .local v17, "pe":Lsun/security/pkcs/ParsingException;
    move-object/from16 v0, v17

    #@d3
    invoke-virtual {v0, v13}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@d6
    .line 437
    throw v17
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@d7
    .line 438
    .end local v13    # "ioe":Ljava/io/IOException;
    .end local v17    # "pe":Lsun/security/pkcs/ParsingException;
    :catchall_0
    move-exception v19

    #@d8
    .line 439
    :goto_5
    if-eqz v3, :cond_3

    #@da
    .line 440
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    #@dd
    .line 438
    :cond_3
    throw v19

    #@de
    .line 430
    .restart local v3    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_2
    move-exception v5

    #@df
    .line 431
    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .local v5, "ce":Ljava/security/cert/CertificateException;
    :goto_6
    :try_start_6
    new-instance v17, Lsun/security/pkcs/ParsingException;

    #@e1
    invoke-virtual {v5}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    #@e4
    move-result-object v19

    #@e5
    move-object/from16 v0, v17

    #@e7
    move-object/from16 v1, v19

    #@e9
    invoke-direct {v0, v1}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    #@ec
    .line 432
    .restart local v17    # "pe":Lsun/security/pkcs/ParsingException;
    move-object/from16 v0, v17

    #@ee
    invoke-virtual {v0, v5}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@f1
    .line 433
    throw v17
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@f2
    .line 445
    .end local v5    # "ce":Ljava/security/cert/CertificateException;
    .end local v17    # "pe":Lsun/security/pkcs/ParsingException;
    :cond_4
    const/16 v19, 0x0

    #@f4
    move/from16 v0, v19

    #@f6
    invoke-virtual {v9, v0}, Lsun/security/util/DerInputStream;->getSet(I)[Lsun/security/util/DerValue;

    #@f9
    .line 448
    const/16 v19, 0x1

    #@fb
    move/from16 v0, v19

    #@fd
    invoke-virtual {v9, v0}, Lsun/security/util/DerInputStream;->getSet(I)[Lsun/security/util/DerValue;

    #@100
    move-result-object v18

    #@101
    .line 449
    .local v18, "signerInfoVals":[Lsun/security/util/DerValue;
    move-object/from16 v0, v18

    #@103
    array-length v14, v0

    #@104
    .line 450
    new-array v0, v14, [Lsun/security/pkcs/SignerInfo;

    #@106
    move-object/from16 v19, v0

    #@108
    move-object/from16 v0, v19

    #@10a
    move-object/from16 v1, p0

    #@10c
    iput-object v0, v1, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    #@10e
    .line 451
    const/4 v11, 0x0

    #@10f
    :goto_7
    if-ge v11, v14, :cond_5

    #@111
    .line 452
    aget-object v19, v18, v11

    #@113
    invoke-virtual/range {v19 .. v19}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    #@116
    move-result-object v12

    #@117
    .line 453
    .local v12, "in":Lsun/security/util/DerInputStream;
    move-object/from16 v0, p0

    #@119
    iget-object v0, v0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    #@11b
    move-object/from16 v19, v0

    #@11d
    new-instance v20, Lsun/security/pkcs/SignerInfo;

    #@11f
    const/16 v21, 0x1

    #@121
    move-object/from16 v0, v20

    #@123
    move/from16 v1, v21

    #@125
    invoke-direct {v0, v12, v1}, Lsun/security/pkcs/SignerInfo;-><init>(Lsun/security/util/DerInputStream;Z)V

    #@128
    aput-object v20, v19, v11

    #@12a
    .line 451
    add-int/lit8 v11, v11, 0x1

    #@12c
    goto :goto_7

    #@12d
    .line 381
    .end local v12    # "in":Lsun/security/util/DerInputStream;
    :cond_5
    return-void

    #@12e
    .line 438
    .end local v18    # "signerInfoVals":[Lsun/security/util/DerValue;
    .restart local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v16    # "original":[B
    :catchall_1
    move-exception v19

    #@12f
    move-object v3, v4

    #@130
    .end local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .local v3, "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_5

    #@131
    .line 430
    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_3
    move-exception v5

    #@132
    .restart local v5    # "ce":Ljava/security/cert/CertificateException;
    move-object v3, v4

    #@133
    .end local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_6

    #@134
    .line 434
    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v5    # "ce":Ljava/security/cert/CertificateException;
    .restart local v4    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_4
    move-exception v13

    #@135
    .restart local v13    # "ioe":Ljava/io/IOException;
    move-object v3, v4

    #@136
    .end local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_4

    #@137
    .line 409
    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v6    # "certVals":[Lsun/security/util/DerValue;
    .end local v13    # "ioe":Ljava/io/IOException;
    .end local v16    # "original":[B
    .restart local v7    # "certfac":Ljava/security/cert/CertificateFactory;
    :catch_5
    move-exception v5

    #@138
    .restart local v5    # "ce":Ljava/security/cert/CertificateException;
    goto/16 :goto_1
.end method

.method private parseSignedData(Lsun/security/util/DerValue;)V
    .locals 27
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/security/pkcs/ParsingException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 252
    invoke-virtual/range {p1 .. p1}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    #@3
    move-result-object v11

    #@4
    .line 255
    .local v11, "dis":Lsun/security/util/DerInputStream;
    invoke-virtual {v11}, Lsun/security/util/DerInputStream;->getBigInteger()Ljava/math/BigInteger;

    #@7
    move-result-object v24

    #@8
    move-object/from16 v0, v24

    #@a
    move-object/from16 v1, p0

    #@c
    iput-object v0, v1, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    #@e
    .line 258
    const/16 v24, 0x1

    #@10
    move/from16 v0, v24

    #@12
    invoke-virtual {v11, v0}, Lsun/security/util/DerInputStream;->getSet(I)[Lsun/security/util/DerValue;

    #@15
    move-result-object v10

    #@16
    .line 259
    .local v10, "digestAlgorithmIdVals":[Lsun/security/util/DerValue;
    array-length v0, v10

    #@17
    move/from16 v18, v0

    #@19
    .line 260
    .local v18, "len":I
    move/from16 v0, v18

    #@1b
    new-array v0, v0, [Lsun/security/x509/AlgorithmId;

    #@1d
    move-object/from16 v24, v0

    #@1f
    move-object/from16 v0, v24

    #@21
    move-object/from16 v1, p0

    #@23
    iput-object v0, v1, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    #@25
    .line 262
    const/4 v15, 0x0

    #@26
    .local v15, "i":I
    :goto_0
    move/from16 v0, v18

    #@28
    if-ge v15, v0, :cond_0

    #@2a
    .line 263
    :try_start_0
    aget-object v19, v10, v15

    #@2c
    .line 264
    .local v19, "oid":Lsun/security/util/DerValue;
    move-object/from16 v0, p0

    #@2e
    iget-object v0, v0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    #@30
    move-object/from16 v24, v0

    #@32
    invoke-static/range {v19 .. v19}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    #@35
    move-result-object v25

    #@36
    aput-object v25, v24, v15
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@38
    .line 262
    add-int/lit8 v15, v15, 0x1

    #@3a
    goto :goto_0

    #@3b
    .line 267
    .end local v19    # "oid":Lsun/security/util/DerValue;
    :catch_0
    move-exception v12

    #@3c
    .line 269
    .local v12, "e":Ljava/io/IOException;
    new-instance v21, Lsun/security/pkcs/ParsingException;

    #@3e
    new-instance v24, Ljava/lang/StringBuilder;

    #@40
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v25, "Error parsing digest AlgorithmId IDs: "

    #@46
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v24

    #@4a
    .line 270
    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@4d
    move-result-object v25

    #@4e
    .line 269
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v24

    #@52
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v24

    #@56
    move-object/from16 v0, v21

    #@58
    move-object/from16 v1, v24

    #@5a
    invoke-direct {v0, v1}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    #@5d
    .line 271
    .local v21, "pe":Lsun/security/pkcs/ParsingException;
    move-object/from16 v0, v21

    #@5f
    invoke-virtual {v0, v12}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@62
    .line 272
    throw v21

    #@63
    .line 275
    .end local v12    # "e":Ljava/io/IOException;
    .end local v21    # "pe":Lsun/security/pkcs/ParsingException;
    :cond_0
    new-instance v24, Lsun/security/pkcs/ContentInfo;

    #@65
    move-object/from16 v0, v24

    #@67
    invoke-direct {v0, v11}, Lsun/security/pkcs/ContentInfo;-><init>(Lsun/security/util/DerInputStream;)V

    #@6a
    move-object/from16 v0, v24

    #@6c
    move-object/from16 v1, p0

    #@6e
    iput-object v0, v1, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    #@70
    .line 277
    const/4 v7, 0x0

    #@71
    .line 279
    .local v7, "certfac":Ljava/security/cert/CertificateFactory;
    :try_start_1
    const-string/jumbo v24, "X.509"

    #@74
    invoke-static/range {v24 .. v24}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_7

    #@77
    move-result-object v7

    #@78
    .line 288
    .end local v7    # "certfac":Ljava/security/cert/CertificateFactory;
    :goto_1
    invoke-virtual {v11}, Lsun/security/util/DerInputStream;->peekByte()I

    #@7b
    move-result v24

    #@7c
    move/from16 v0, v24

    #@7e
    int-to-byte v0, v0

    #@7f
    move/from16 v24, v0

    #@81
    const/16 v25, -0x60

    #@83
    move/from16 v0, v24

    #@85
    move/from16 v1, v25

    #@87
    if-ne v0, v1, :cond_6

    #@89
    .line 289
    const/16 v24, 0x2

    #@8b
    const/16 v25, 0x1

    #@8d
    const/16 v26, 0x1

    #@8f
    move/from16 v0, v24

    #@91
    move/from16 v1, v25

    #@93
    move/from16 v2, v26

    #@95
    invoke-virtual {v11, v0, v1, v2}, Lsun/security/util/DerInputStream;->getSet(IZZ)[Lsun/security/util/DerValue;

    #@98
    move-result-object v6

    #@99
    .line 291
    .local v6, "certVals":[Lsun/security/util/DerValue;
    array-length v0, v6

    #@9a
    move/from16 v18, v0

    #@9c
    .line 292
    move/from16 v0, v18

    #@9e
    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    #@a0
    move-object/from16 v24, v0

    #@a2
    move-object/from16 v0, v24

    #@a4
    move-object/from16 v1, p0

    #@a6
    iput-object v0, v1, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    #@a8
    .line 293
    const/4 v8, 0x0

    #@a9
    .line 295
    .local v8, "count":I
    const/4 v15, 0x0

    #@aa
    :goto_2
    move/from16 v0, v18

    #@ac
    if-ge v15, v0, :cond_5

    #@ae
    .line 296
    const/4 v3, 0x0

    #@af
    .line 298
    .local v3, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_2
    aget-object v24, v6, v15

    #@b1
    invoke-virtual/range {v24 .. v24}, Lsun/security/util/DerValue;->getTag()B

    #@b4
    move-result v23

    #@b5
    .line 301
    .local v23, "tag":B
    const/16 v24, 0x30

    #@b7
    move/from16 v0, v23

    #@b9
    move/from16 v1, v24

    #@bb
    if-ne v0, v1, :cond_1

    #@bd
    .line 302
    aget-object v24, v6, v15

    #@bf
    invoke-virtual/range {v24 .. v24}, Lsun/security/util/DerValue;->getOriginalEncodedForm()[B

    #@c2
    move-result-object v20

    #@c3
    .line 303
    .local v20, "original":[B
    if-nez v7, :cond_3

    #@c5
    .line 304
    move-object/from16 v0, p0

    #@c7
    iget-object v0, v0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    #@c9
    move-object/from16 v24, v0

    #@cb
    new-instance v25, Lsun/security/x509/X509CertImpl;

    #@cd
    aget-object v26, v6, v15

    #@cf
    move-object/from16 v0, v25

    #@d1
    move-object/from16 v1, v26

    #@d3
    move-object/from16 v2, v20

    #@d5
    invoke-direct {v0, v1, v2}, Lsun/security/x509/X509CertImpl;-><init>(Lsun/security/util/DerValue;[B)V

    #@d8
    aput-object v25, v24, v8
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@da
    .line 313
    :goto_3
    add-int/lit8 v8, v8, 0x1

    #@dc
    .line 324
    .end local v20    # "original":[B
    :cond_1
    const/16 v24, 0x0

    #@de
    if-eqz v24, :cond_2

    #@e0
    .line 325
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    #@e3
    .line 295
    :cond_2
    add-int/lit8 v15, v15, 0x1

    #@e5
    goto :goto_2

    #@e6
    .line 306
    .restart local v20    # "original":[B
    :cond_3
    :try_start_3
    new-instance v4, Ljava/io/ByteArrayInputStream;

    #@e8
    move-object/from16 v0, v20

    #@ea
    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_3
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@ed
    .line 307
    .local v4, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_4
    move-object/from16 v0, p0

    #@ef
    iget-object v0, v0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    #@f1
    move-object/from16 v25, v0

    #@f3
    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    new-instance v26, Lsun/security/pkcs/PKCS7$VerbatimX509Certificate;

    #@f5
    .line 308
    invoke-virtual {v7, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    #@f8
    move-result-object v24

    #@f9
    check-cast v24, Ljava/security/cert/X509Certificate;

    #@fb
    .line 307
    move-object/from16 v0, v26

    #@fd
    move-object/from16 v1, v24

    #@ff
    move-object/from16 v2, v20

    #@101
    invoke-direct {v0, v1, v2}, Lsun/security/pkcs/PKCS7$VerbatimX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V

    #@104
    aput-object v26, v25, v8

    #@106
    .line 310
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    #@109
    .line 311
    const/4 v3, 0x0

    #@10a
    .restart local v3    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_3

    #@10b
    .line 319
    .end local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v20    # "original":[B
    .end local v23    # "tag":B
    :catch_1
    move-exception v17

    #@10c
    .line 320
    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .local v17, "ioe":Ljava/io/IOException;
    :goto_4
    :try_start_5
    new-instance v21, Lsun/security/pkcs/ParsingException;

    #@10e
    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@111
    move-result-object v24

    #@112
    move-object/from16 v0, v21

    #@114
    move-object/from16 v1, v24

    #@116
    invoke-direct {v0, v1}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    #@119
    .line 321
    .restart local v21    # "pe":Lsun/security/pkcs/ParsingException;
    move-object/from16 v0, v21

    #@11b
    move-object/from16 v1, v17

    #@11d
    invoke-virtual {v0, v1}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@120
    .line 322
    throw v21
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@121
    .line 323
    .end local v17    # "ioe":Ljava/io/IOException;
    .end local v21    # "pe":Lsun/security/pkcs/ParsingException;
    :catchall_0
    move-exception v24

    #@122
    .line 324
    :goto_5
    if-eqz v3, :cond_4

    #@124
    .line 325
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    #@127
    .line 323
    :cond_4
    throw v24

    #@128
    .line 315
    .restart local v3    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_2
    move-exception v5

    #@129
    .line 316
    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .local v5, "ce":Ljava/security/cert/CertificateException;
    :goto_6
    :try_start_6
    new-instance v21, Lsun/security/pkcs/ParsingException;

    #@12b
    invoke-virtual {v5}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    #@12e
    move-result-object v24

    #@12f
    move-object/from16 v0, v21

    #@131
    move-object/from16 v1, v24

    #@133
    invoke-direct {v0, v1}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    #@136
    .line 317
    .restart local v21    # "pe":Lsun/security/pkcs/ParsingException;
    move-object/from16 v0, v21

    #@138
    invoke-virtual {v0, v5}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@13b
    .line 318
    throw v21
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@13c
    .line 328
    .end local v5    # "ce":Ljava/security/cert/CertificateException;
    .end local v21    # "pe":Lsun/security/pkcs/ParsingException;
    :cond_5
    move/from16 v0, v18

    #@13e
    if-eq v8, v0, :cond_6

    #@140
    .line 329
    move-object/from16 v0, p0

    #@142
    iget-object v0, v0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    #@144
    move-object/from16 v24, v0

    #@146
    move-object/from16 v0, v24

    #@148
    invoke-static {v0, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@14b
    move-result-object v24

    #@14c
    check-cast v24, [Ljava/security/cert/X509Certificate;

    #@14e
    move-object/from16 v0, v24

    #@150
    move-object/from16 v1, p0

    #@152
    iput-object v0, v1, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    #@154
    .line 334
    .end local v6    # "certVals":[Lsun/security/util/DerValue;
    .end local v8    # "count":I
    :cond_6
    invoke-virtual {v11}, Lsun/security/util/DerInputStream;->peekByte()I

    #@157
    move-result v24

    #@158
    move/from16 v0, v24

    #@15a
    int-to-byte v0, v0

    #@15b
    move/from16 v24, v0

    #@15d
    const/16 v25, -0x5f

    #@15f
    move/from16 v0, v24

    #@161
    move/from16 v1, v25

    #@163
    if-ne v0, v1, :cond_a

    #@165
    .line 335
    const/16 v24, 0x1

    #@167
    const/16 v25, 0x1

    #@169
    move/from16 v0, v24

    #@16b
    move/from16 v1, v25

    #@16d
    invoke-virtual {v11, v0, v1}, Lsun/security/util/DerInputStream;->getSet(IZ)[Lsun/security/util/DerValue;

    #@170
    move-result-object v9

    #@171
    .line 337
    .local v9, "crlVals":[Lsun/security/util/DerValue;
    array-length v0, v9

    #@172
    move/from16 v18, v0

    #@174
    .line 338
    move/from16 v0, v18

    #@176
    new-array v0, v0, [Ljava/security/cert/X509CRL;

    #@178
    move-object/from16 v24, v0

    #@17a
    move-object/from16 v0, v24

    #@17c
    move-object/from16 v1, p0

    #@17e
    iput-object v0, v1, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    #@180
    .line 340
    const/4 v15, 0x0

    #@181
    :goto_7
    move/from16 v0, v18

    #@183
    if-ge v15, v0, :cond_a

    #@185
    .line 341
    const/4 v3, 0x0

    #@186
    .line 343
    .restart local v3    # "bais":Ljava/io/ByteArrayInputStream;
    if-nez v7, :cond_8

    #@188
    .line 344
    :try_start_7
    move-object/from16 v0, p0

    #@18a
    iget-object v0, v0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    #@18c
    move-object/from16 v24, v0

    #@18e
    new-instance v25, Lsun/security/x509/X509CRLImpl;

    #@190
    aget-object v26, v9, v15

    #@192
    invoke-direct/range {v25 .. v26}, Lsun/security/x509/X509CRLImpl;-><init>(Lsun/security/util/DerValue;)V

    #@195
    aput-object v25, v24, v15
    :try_end_7
    .catch Ljava/security/cert/CRLException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@197
    .line 358
    :goto_8
    const/16 v24, 0x0

    #@199
    if-eqz v24, :cond_7

    #@19b
    .line 359
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    #@19e
    .line 340
    :cond_7
    add-int/lit8 v15, v15, 0x1

    #@1a0
    goto :goto_7

    #@1a1
    .line 346
    :cond_8
    :try_start_8
    aget-object v24, v9, v15

    #@1a3
    invoke-virtual/range {v24 .. v24}, Lsun/security/util/DerValue;->toByteArray()[B

    #@1a6
    move-result-object v14

    #@1a7
    .line 347
    .local v14, "encoded":[B
    new-instance v4, Ljava/io/ByteArrayInputStream;

    #@1a9
    invoke-direct {v4, v14}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_8
    .catch Ljava/security/cert/CRLException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@1ac
    .line 348
    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "bais":Ljava/io/ByteArrayInputStream;
    :try_start_9
    move-object/from16 v0, p0

    #@1ae
    iget-object v0, v0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    #@1b0
    move-object/from16 v25, v0

    #@1b2
    invoke-virtual {v7, v4}, Ljava/security/cert/CertificateFactory;->generateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    #@1b5
    move-result-object v24

    #@1b6
    check-cast v24, Ljava/security/cert/X509CRL;

    #@1b8
    aput-object v24, v25, v15

    #@1ba
    .line 349
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_9
    .catch Ljava/security/cert/CRLException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    #@1bd
    .line 350
    const/4 v3, 0x0

    #@1be
    .restart local v3    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_8

    #@1bf
    .line 352
    .end local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v14    # "encoded":[B
    :catch_3
    move-exception v13

    #@1c0
    .line 354
    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .local v13, "e":Ljava/security/cert/CRLException;
    :goto_9
    :try_start_a
    new-instance v21, Lsun/security/pkcs/ParsingException;

    #@1c2
    invoke-virtual {v13}, Ljava/security/cert/CRLException;->getMessage()Ljava/lang/String;

    #@1c5
    move-result-object v24

    #@1c6
    move-object/from16 v0, v21

    #@1c8
    move-object/from16 v1, v24

    #@1ca
    invoke-direct {v0, v1}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    #@1cd
    .line 355
    .restart local v21    # "pe":Lsun/security/pkcs/ParsingException;
    move-object/from16 v0, v21

    #@1cf
    invoke-virtual {v0, v13}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@1d2
    .line 356
    throw v21
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    #@1d3
    .line 357
    .end local v13    # "e":Ljava/security/cert/CRLException;
    .end local v21    # "pe":Lsun/security/pkcs/ParsingException;
    :catchall_1
    move-exception v24

    #@1d4
    .line 358
    :goto_a
    if-eqz v3, :cond_9

    #@1d6
    .line 359
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    #@1d9
    .line 357
    :cond_9
    throw v24

    #@1da
    .line 365
    .end local v9    # "crlVals":[Lsun/security/util/DerValue;
    :cond_a
    const/16 v24, 0x1

    #@1dc
    move/from16 v0, v24

    #@1de
    invoke-virtual {v11, v0}, Lsun/security/util/DerInputStream;->getSet(I)[Lsun/security/util/DerValue;

    #@1e1
    move-result-object v22

    #@1e2
    .line 367
    .local v22, "signerInfoVals":[Lsun/security/util/DerValue;
    move-object/from16 v0, v22

    #@1e4
    array-length v0, v0

    #@1e5
    move/from16 v18, v0

    #@1e7
    .line 368
    move/from16 v0, v18

    #@1e9
    new-array v0, v0, [Lsun/security/pkcs/SignerInfo;

    #@1eb
    move-object/from16 v24, v0

    #@1ed
    move-object/from16 v0, v24

    #@1ef
    move-object/from16 v1, p0

    #@1f1
    iput-object v0, v1, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    #@1f3
    .line 370
    const/4 v15, 0x0

    #@1f4
    :goto_b
    move/from16 v0, v18

    #@1f6
    if-ge v15, v0, :cond_b

    #@1f8
    .line 371
    aget-object v24, v22, v15

    #@1fa
    invoke-virtual/range {v24 .. v24}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    #@1fd
    move-result-object v16

    #@1fe
    .line 372
    .local v16, "in":Lsun/security/util/DerInputStream;
    move-object/from16 v0, p0

    #@200
    iget-object v0, v0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    #@202
    move-object/from16 v24, v0

    #@204
    new-instance v25, Lsun/security/pkcs/SignerInfo;

    #@206
    move-object/from16 v0, v25

    #@208
    move-object/from16 v1, v16

    #@20a
    invoke-direct {v0, v1}, Lsun/security/pkcs/SignerInfo;-><init>(Lsun/security/util/DerInputStream;)V

    #@20d
    aput-object v25, v24, v15

    #@20f
    .line 370
    add-int/lit8 v15, v15, 0x1

    #@211
    goto :goto_b

    #@212
    .line 250
    .end local v16    # "in":Lsun/security/util/DerInputStream;
    :cond_b
    return-void

    #@213
    .line 357
    .end local v22    # "signerInfoVals":[Lsun/security/util/DerValue;
    .restart local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v9    # "crlVals":[Lsun/security/util/DerValue;
    .restart local v14    # "encoded":[B
    :catchall_2
    move-exception v24

    #@214
    move-object v3, v4

    #@215
    .end local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .local v3, "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_a

    #@216
    .line 352
    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_4
    move-exception v13

    #@217
    .restart local v13    # "e":Ljava/security/cert/CRLException;
    move-object v3, v4

    #@218
    .end local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_9

    #@219
    .line 323
    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v9    # "crlVals":[Lsun/security/util/DerValue;
    .end local v13    # "e":Ljava/security/cert/CRLException;
    .end local v14    # "encoded":[B
    .restart local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v6    # "certVals":[Lsun/security/util/DerValue;
    .restart local v8    # "count":I
    .restart local v20    # "original":[B
    .restart local v23    # "tag":B
    :catchall_3
    move-exception v24

    #@21a
    move-object v3, v4

    #@21b
    .end local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bais":Ljava/io/ByteArrayInputStream;
    goto/16 :goto_5

    #@21d
    .line 315
    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_5
    move-exception v5

    #@21e
    .restart local v5    # "ce":Ljava/security/cert/CertificateException;
    move-object v3, v4

    #@21f
    .end local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bais":Ljava/io/ByteArrayInputStream;
    goto/16 :goto_6

    #@221
    .line 319
    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v5    # "ce":Ljava/security/cert/CertificateException;
    .restart local v4    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_6
    move-exception v17

    #@222
    .restart local v17    # "ioe":Ljava/io/IOException;
    move-object v3, v4

    #@223
    .end local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bais":Ljava/io/ByteArrayInputStream;
    goto/16 :goto_4

    #@225
    .line 280
    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v6    # "certVals":[Lsun/security/util/DerValue;
    .end local v8    # "count":I
    .end local v17    # "ioe":Ljava/io/IOException;
    .end local v20    # "original":[B
    .end local v23    # "tag":B
    .restart local v7    # "certfac":Ljava/security/cert/CertificateFactory;
    :catch_7
    move-exception v5

    #@226
    .restart local v5    # "ce":Ljava/security/cert/CertificateException;
    goto/16 :goto_1
.end method

.method private populateCertIssuerNames()V
    .locals 7

    #@0
    .prologue
    .line 708
    iget-object v6, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    #@2
    if-nez v6, :cond_0

    #@4
    .line 709
    return-void

    #@5
    .line 711
    :cond_0
    iget-object v6, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    #@7
    array-length v6, v6

    #@8
    new-array v6, v6, [Ljava/security/Principal;

    #@a
    iput-object v6, p0, Lsun/security/pkcs/PKCS7;->certIssuerNames:[Ljava/security/Principal;

    #@c
    .line 712
    const/4 v4, 0x0

    #@d
    .local v4, "i":I
    :goto_0
    iget-object v6, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    #@f
    array-length v6, v6

    #@10
    if-ge v4, v6, :cond_2

    #@12
    .line 713
    iget-object v6, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    #@14
    aget-object v1, v6, v4

    #@16
    .line 714
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    #@19
    move-result-object v2

    #@1a
    .line 715
    .local v2, "certIssuerName":Ljava/security/Principal;
    instance-of v6, v2, Lsun/security/x509/X500Name;

    #@1c
    if-nez v6, :cond_1

    #@1e
    .line 722
    :try_start_0
    new-instance v5, Lsun/security/x509/X509CertInfo;

    #@20
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    #@23
    move-result-object v6

    #@24
    invoke-direct {v5, v6}, Lsun/security/x509/X509CertInfo;-><init>([B)V

    #@27
    .line 724
    .local v5, "tbsCert":Lsun/security/x509/X509CertInfo;
    const-string/jumbo v6, "issuer.dname"

    #@2a
    invoke-virtual {v5, v6}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@2d
    move-result-object v6

    #@2e
    .line 723
    move-object v0, v6

    #@2f
    check-cast v0, Ljava/security/Principal;

    #@31
    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@32
    .line 731
    .end local v5    # "tbsCert":Lsun/security/x509/X509CertInfo;
    :cond_1
    :goto_1
    iget-object v6, p0, Lsun/security/pkcs/PKCS7;->certIssuerNames:[Ljava/security/Principal;

    #@34
    aput-object v2, v6, v4

    #@36
    .line 712
    add-int/lit8 v4, v4, 0x1

    #@38
    goto :goto_0

    #@39
    .line 707
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    .end local v2    # "certIssuerName":Ljava/security/Principal;
    :cond_2
    return-void

    #@3a
    .line 726
    .restart local v1    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v2    # "certIssuerName":Ljava/security/Principal;
    :catch_0
    move-exception v3

    #@3b
    .local v3, "e":Ljava/lang/Exception;
    goto :goto_1
.end method


# virtual methods
.method public encodeSignedData(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 464
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@2
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@5
    .line 465
    .local v0, "derout":Lsun/security/util/DerOutputStream;
    invoke-virtual {p0, v0}, Lsun/security/pkcs/PKCS7;->encodeSignedData(Lsun/security/util/DerOutputStream;)V

    #@8
    .line 466
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    #@f
    .line 463
    return-void
.end method

.method public encodeSignedData(Lsun/security/util/DerOutputStream;)V
    .locals 16
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 478
    new-instance v10, Lsun/security/util/DerOutputStream;

    #@2
    invoke-direct {v10}, Lsun/security/util/DerOutputStream;-><init>()V

    #@5
    .line 481
    .local v10, "signedData":Lsun/security/util/DerOutputStream;
    move-object/from16 v0, p0

    #@7
    iget-object v12, v0, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    #@9
    invoke-virtual {v10, v12}, Lsun/security/util/DerOutputStream;->putInteger(Ljava/math/BigInteger;)V

    #@c
    .line 484
    move-object/from16 v0, p0

    #@e
    iget-object v12, v0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    #@10
    const/16 v13, 0x31

    #@12
    invoke-virtual {v10, v13, v12}, Lsun/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun/security/util/DerEncoder;)V

    #@15
    .line 487
    move-object/from16 v0, p0

    #@17
    iget-object v12, v0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    #@19
    invoke-virtual {v12, v10}, Lsun/security/pkcs/ContentInfo;->encode(Lsun/security/util/DerOutputStream;)V

    #@1c
    .line 490
    move-object/from16 v0, p0

    #@1e
    iget-object v12, v0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    #@20
    if-eqz v12, :cond_2

    #@22
    move-object/from16 v0, p0

    #@24
    iget-object v12, v0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    #@26
    array-length v12, v12

    #@27
    if-eqz v12, :cond_2

    #@29
    .line 492
    move-object/from16 v0, p0

    #@2b
    iget-object v12, v0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    #@2d
    array-length v12, v12

    #@2e
    new-array v9, v12, [Lsun/security/x509/X509CertImpl;

    #@30
    .line 493
    .local v9, "implCerts":[Lsun/security/x509/X509CertImpl;
    const/4 v6, 0x0

    #@31
    .local v6, "i":I
    :goto_0
    move-object/from16 v0, p0

    #@33
    iget-object v12, v0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    #@35
    array-length v12, v12

    #@36
    if-ge v6, v12, :cond_1

    #@38
    .line 494
    move-object/from16 v0, p0

    #@3a
    iget-object v12, v0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    #@3c
    aget-object v12, v12, v6

    #@3e
    instance-of v12, v12, Lsun/security/x509/X509CertImpl;

    #@40
    if-eqz v12, :cond_0

    #@42
    .line 495
    move-object/from16 v0, p0

    #@44
    iget-object v12, v0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    #@46
    aget-object v12, v12, v6

    #@48
    check-cast v12, Lsun/security/x509/X509CertImpl;

    #@4a
    aput-object v12, v9, v6

    #@4c
    .line 493
    :goto_1
    add-int/lit8 v6, v6, 0x1

    #@4e
    goto :goto_0

    #@4f
    .line 498
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    #@51
    iget-object v12, v0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    #@53
    aget-object v12, v12, v6

    #@55
    invoke-virtual {v12}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    #@58
    move-result-object v5

    #@59
    .line 499
    .local v5, "encoded":[B
    new-instance v12, Lsun/security/x509/X509CertImpl;

    #@5b
    invoke-direct {v12, v5}, Lsun/security/x509/X509CertImpl;-><init>([B)V

    #@5e
    aput-object v12, v9, v6
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    #@60
    goto :goto_1

    #@61
    .line 500
    .end local v5    # "encoded":[B
    :catch_0
    move-exception v3

    #@62
    .line 501
    .local v3, "ce":Ljava/security/cert/CertificateException;
    new-instance v7, Ljava/io/IOException;

    #@64
    invoke-virtual {v3}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    #@67
    move-result-object v12

    #@68
    invoke-direct {v7, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@6b
    .line 502
    .local v7, "ie":Ljava/io/IOException;
    invoke-virtual {v7, v3}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@6e
    .line 503
    throw v7

    #@6f
    .line 510
    .end local v3    # "ce":Ljava/security/cert/CertificateException;
    .end local v7    # "ie":Ljava/io/IOException;
    :cond_1
    const/16 v12, -0x60

    #@71
    invoke-virtual {v10, v12, v9}, Lsun/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun/security/util/DerEncoder;)V

    #@74
    .line 514
    .end local v6    # "i":I
    .end local v9    # "implCerts":[Lsun/security/x509/X509CertImpl;
    :cond_2
    move-object/from16 v0, p0

    #@76
    iget-object v12, v0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    #@78
    if-eqz v12, :cond_5

    #@7a
    move-object/from16 v0, p0

    #@7c
    iget-object v12, v0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    #@7e
    array-length v12, v12

    #@7f
    if-eqz v12, :cond_5

    #@81
    .line 516
    new-instance v8, Ljava/util/HashSet;

    #@83
    move-object/from16 v0, p0

    #@85
    iget-object v12, v0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    #@87
    array-length v12, v12

    #@88
    invoke-direct {v8, v12}, Ljava/util/HashSet;-><init>(I)V

    #@8b
    .line 517
    .local v8, "implCRLs":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/x509/X509CRLImpl;>;"
    move-object/from16 v0, p0

    #@8d
    iget-object v13, v0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    #@8f
    const/4 v12, 0x0

    #@90
    array-length v14, v13

    #@91
    :goto_2
    if-ge v12, v14, :cond_4

    #@93
    aget-object v4, v13, v12

    #@95
    .line 518
    .local v4, "crl":Ljava/security/cert/X509CRL;
    instance-of v15, v4, Lsun/security/x509/X509CRLImpl;

    #@97
    if-eqz v15, :cond_3

    #@99
    .line 519
    check-cast v4, Lsun/security/x509/X509CRLImpl;

    #@9b
    .end local v4    # "crl":Ljava/security/cert/X509CRL;
    invoke-interface {v8, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@9e
    .line 517
    :goto_3
    add-int/lit8 v12, v12, 0x1

    #@a0
    goto :goto_2

    #@a1
    .line 522
    .restart local v4    # "crl":Ljava/security/cert/X509CRL;
    :cond_3
    :try_start_1
    invoke-virtual {v4}, Ljava/security/cert/X509CRL;->getEncoded()[B

    #@a4
    move-result-object v5

    #@a5
    .line 523
    .restart local v5    # "encoded":[B
    new-instance v15, Lsun/security/x509/X509CRLImpl;

    #@a7
    invoke-direct {v15, v5}, Lsun/security/x509/X509CRLImpl;-><init>([B)V

    #@aa
    invoke-interface {v8, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/security/cert/CRLException; {:try_start_1 .. :try_end_1} :catch_1

    #@ad
    goto :goto_3

    #@ae
    .line 524
    .end local v5    # "encoded":[B
    :catch_1
    move-exception v2

    #@af
    .line 525
    .local v2, "ce":Ljava/security/cert/CRLException;
    new-instance v7, Ljava/io/IOException;

    #@b1
    invoke-virtual {v2}, Ljava/security/cert/CRLException;->getMessage()Ljava/lang/String;

    #@b4
    move-result-object v12

    #@b5
    invoke-direct {v7, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@b8
    .line 526
    .restart local v7    # "ie":Ljava/io/IOException;
    invoke-virtual {v7, v2}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@bb
    .line 527
    throw v7

    #@bc
    .line 535
    .end local v2    # "ce":Ljava/security/cert/CRLException;
    .end local v4    # "crl":Ljava/security/cert/X509CRL;
    .end local v7    # "ie":Ljava/io/IOException;
    :cond_4
    invoke-interface {v8}, Ljava/util/Set;->size()I

    #@bf
    move-result v12

    #@c0
    new-array v12, v12, [Lsun/security/x509/X509CRLImpl;

    #@c2
    invoke-interface {v8, v12}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@c5
    move-result-object v12

    #@c6
    check-cast v12, [Lsun/security/util/DerEncoder;

    #@c8
    .line 534
    const/16 v13, -0x5f

    #@ca
    invoke-virtual {v10, v13, v12}, Lsun/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun/security/util/DerEncoder;)V

    #@cd
    .line 539
    .end local v8    # "implCRLs":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/x509/X509CRLImpl;>;"
    :cond_5
    move-object/from16 v0, p0

    #@cf
    iget-object v12, v0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    #@d1
    const/16 v13, 0x31

    #@d3
    invoke-virtual {v10, v13, v12}, Lsun/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun/security/util/DerEncoder;)V

    #@d6
    .line 542
    new-instance v11, Lsun/security/util/DerValue;

    #@d8
    .line 543
    invoke-virtual {v10}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@db
    move-result-object v12

    #@dc
    .line 542
    const/16 v13, 0x30

    #@de
    invoke-direct {v11, v13, v12}, Lsun/security/util/DerValue;-><init>(B[B)V

    #@e1
    .line 546
    .local v11, "signedDataSeq":Lsun/security/util/DerValue;
    new-instance v1, Lsun/security/pkcs/ContentInfo;

    #@e3
    sget-object v12, Lsun/security/pkcs/ContentInfo;->SIGNED_DATA_OID:Lsun/security/util/ObjectIdentifier;

    #@e5
    invoke-direct {v1, v12, v11}, Lsun/security/pkcs/ContentInfo;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    #@e8
    .line 550
    .local v1, "block":Lsun/security/pkcs/ContentInfo;
    move-object/from16 v0, p1

    #@ea
    invoke-virtual {v1, v0}, Lsun/security/pkcs/ContentInfo;->encode(Lsun/security/util/DerOutputStream;)V

    #@ed
    .line 476
    return-void
.end method

.method public getCRLs()[Ljava/security/cert/X509CRL;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 663
    iget-object v0, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 664
    iget-object v0, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    #@7
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, [Ljava/security/cert/X509CRL;

    #@d
    return-object v0

    #@e
    .line 666
    :cond_0
    return-object v1
.end method

.method public getCertificate(Ljava/math/BigInteger;Lsun/security/x509/X500Name;)Ljava/security/cert/X509Certificate;
    .locals 5
    .param p1, "serial"    # Ljava/math/BigInteger;
    .param p2, "issuerName"    # Lsun/security/x509/X500Name;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 687
    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    #@3
    if-eqz v3, :cond_2

    #@5
    .line 688
    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->certIssuerNames:[Ljava/security/Principal;

    #@7
    if-nez v3, :cond_0

    #@9
    .line 689
    invoke-direct {p0}, Lsun/security/pkcs/PKCS7;->populateCertIssuerNames()V

    #@c
    .line 690
    :cond_0
    const/4 v1, 0x0

    #@d
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    #@f
    array-length v3, v3

    #@10
    if-ge v1, v3, :cond_2

    #@12
    .line 691
    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    #@14
    aget-object v0, v3, v1

    #@16
    .line 692
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    #@19
    move-result-object v2

    #@1a
    .line 693
    .local v2, "thisSerial":Ljava/math/BigInteger;
    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_1

    #@20
    .line 694
    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->certIssuerNames:[Ljava/security/Principal;

    #@22
    aget-object v3, v3, v1

    #@24
    invoke-virtual {p2, v3}, Lsun/security/x509/X500Name;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v3

    #@28
    .line 693
    if-eqz v3, :cond_1

    #@2a
    .line 696
    return-object v0

    #@2b
    .line 690
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 700
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "i":I
    .end local v2    # "thisSerial":Ljava/math/BigInteger;
    :cond_2
    return-object v4
.end method

.method public getCertificates()[Ljava/security/cert/X509Certificate;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 651
    iget-object v0, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 652
    iget-object v0, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    #@7
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, [Ljava/security/cert/X509Certificate;

    #@d
    return-object v0

    #@e
    .line 654
    :cond_0
    return-object v1
.end method

.method public getContentInfo()Lsun/security/pkcs/ContentInfo;
    .locals 1

    #@0
    .prologue
    .line 642
    iget-object v0, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    #@2
    return-object v0
.end method

.method public getDigestAlgorithmIds()[Lsun/security/x509/AlgorithmId;
    .locals 1

    #@0
    .prologue
    .line 635
    iget-object v0, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    #@2
    return-object v0
.end method

.method public getSignerInfos()[Lsun/security/pkcs/SignerInfo;
    .locals 1

    #@0
    .prologue
    .line 675
    iget-object v0, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    #@2
    return-object v0
.end method

.method public getVersion()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 626
    iget-object v0, p0, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public isOldStyle()Z
    .locals 1

    #@0
    .prologue
    .line 772
    iget-boolean v0, p0, Lsun/security/pkcs/PKCS7;->oldStyle:Z

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 739
    const-string/jumbo v1, ""

    #@3
    .line 741
    .local v1, "out":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    const-string/jumbo v3, "\n"

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    .line 742
    iget-object v2, p0, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    #@1f
    if-eqz v2, :cond_0

    #@21
    .line 743
    new-instance v2, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    const-string/jumbo v3, "PKCS7 :: version: "

    #@2d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    #@33
    invoke-static {v3}, Lsun/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v2

    #@3b
    const-string/jumbo v3, "\n"

    #@3e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v1

    #@46
    .line 744
    :cond_0
    iget-object v2, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    #@48
    if-eqz v2, :cond_1

    #@4a
    .line 745
    new-instance v2, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v2

    #@53
    const-string/jumbo v3, "PKCS7 :: digest AlgorithmIds: \n"

    #@56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v2

    #@5a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v1

    #@5e
    .line 746
    const/4 v0, 0x0

    #@5f
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    #@61
    array-length v2, v2

    #@62
    if-ge v0, v2, :cond_1

    #@64
    .line 747
    new-instance v2, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v2

    #@6d
    const-string/jumbo v3, "\t"

    #@70
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v2

    #@74
    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    #@76
    aget-object v3, v3, v0

    #@78
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v2

    #@7c
    const-string/jumbo v3, "\n"

    #@7f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v2

    #@83
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@86
    move-result-object v1

    #@87
    .line 746
    add-int/lit8 v0, v0, 0x1

    #@89
    goto :goto_0

    #@8a
    .line 749
    .end local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    #@8c
    if-eqz v2, :cond_2

    #@8e
    .line 750
    new-instance v2, Ljava/lang/StringBuilder;

    #@90
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@93
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v2

    #@97
    const-string/jumbo v3, "PKCS7 :: certificates: \n"

    #@9a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v2

    #@9e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a1
    move-result-object v1

    #@a2
    .line 751
    const/4 v0, 0x0

    #@a3
    .restart local v0    # "i":I
    :goto_1
    iget-object v2, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    #@a5
    array-length v2, v2

    #@a6
    if-ge v0, v2, :cond_2

    #@a8
    .line 752
    new-instance v2, Ljava/lang/StringBuilder;

    #@aa
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@ad
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v2

    #@b1
    const-string/jumbo v3, "\t"

    #@b4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v2

    #@b8
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v2

    #@bc
    const-string/jumbo v3, ".   "

    #@bf
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v2

    #@c3
    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    #@c5
    aget-object v3, v3, v0

    #@c7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v2

    #@cb
    const-string/jumbo v3, "\n"

    #@ce
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v2

    #@d2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d5
    move-result-object v1

    #@d6
    .line 751
    add-int/lit8 v0, v0, 0x1

    #@d8
    goto :goto_1

    #@d9
    .line 754
    .end local v0    # "i":I
    :cond_2
    iget-object v2, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    #@db
    if-eqz v2, :cond_3

    #@dd
    .line 755
    new-instance v2, Ljava/lang/StringBuilder;

    #@df
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v2

    #@e6
    const-string/jumbo v3, "PKCS7 :: crls: \n"

    #@e9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ec
    move-result-object v2

    #@ed
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f0
    move-result-object v1

    #@f1
    .line 756
    const/4 v0, 0x0

    #@f2
    .restart local v0    # "i":I
    :goto_2
    iget-object v2, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    #@f4
    array-length v2, v2

    #@f5
    if-ge v0, v2, :cond_3

    #@f7
    .line 757
    new-instance v2, Ljava/lang/StringBuilder;

    #@f9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@fc
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v2

    #@100
    const-string/jumbo v3, "\t"

    #@103
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@106
    move-result-object v2

    #@107
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10a
    move-result-object v2

    #@10b
    const-string/jumbo v3, ".   "

    #@10e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@111
    move-result-object v2

    #@112
    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    #@114
    aget-object v3, v3, v0

    #@116
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@119
    move-result-object v2

    #@11a
    const-string/jumbo v3, "\n"

    #@11d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@120
    move-result-object v2

    #@121
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@124
    move-result-object v1

    #@125
    .line 756
    add-int/lit8 v0, v0, 0x1

    #@127
    goto :goto_2

    #@128
    .line 759
    .end local v0    # "i":I
    :cond_3
    iget-object v2, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    #@12a
    if-eqz v2, :cond_4

    #@12c
    .line 760
    new-instance v2, Ljava/lang/StringBuilder;

    #@12e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@131
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@134
    move-result-object v2

    #@135
    const-string/jumbo v3, "PKCS7 :: signer infos: \n"

    #@138
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13b
    move-result-object v2

    #@13c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13f
    move-result-object v1

    #@140
    .line 761
    const/4 v0, 0x0

    #@141
    .restart local v0    # "i":I
    :goto_3
    iget-object v2, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    #@143
    array-length v2, v2

    #@144
    if-ge v0, v2, :cond_4

    #@146
    .line 762
    new-instance v2, Ljava/lang/StringBuilder;

    #@148
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14b
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14e
    move-result-object v2

    #@14f
    const-string/jumbo v3, "\t"

    #@152
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@155
    move-result-object v2

    #@156
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@159
    move-result-object v2

    #@15a
    const-string/jumbo v3, ".  "

    #@15d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@160
    move-result-object v2

    #@161
    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    #@163
    aget-object v3, v3, v0

    #@165
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@168
    move-result-object v2

    #@169
    const-string/jumbo v3, "\n"

    #@16c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16f
    move-result-object v2

    #@170
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@173
    move-result-object v1

    #@174
    .line 761
    add-int/lit8 v0, v0, 0x1

    #@176
    goto :goto_3

    #@177
    .line 764
    .end local v0    # "i":I
    :cond_4
    return-object v1
.end method

.method public verify(Lsun/security/pkcs/SignerInfo;Ljava/io/InputStream;)Lsun/security/pkcs/SignerInfo;
    .locals 1
    .param p1, "info"    # Lsun/security/pkcs/SignerInfo;
    .param p2, "dataInputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 578
    invoke-virtual {p1, p0, p2}, Lsun/security/pkcs/SignerInfo;->verify(Lsun/security/pkcs/PKCS7;Ljava/io/InputStream;)Lsun/security/pkcs/SignerInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public verify(Lsun/security/pkcs/SignerInfo;[B)Lsun/security/pkcs/SignerInfo;
    .locals 1
    .param p1, "info"    # Lsun/security/pkcs/SignerInfo;
    .param p2, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 564
    invoke-virtual {p1, p0, p2}, Lsun/security/pkcs/SignerInfo;->verify(Lsun/security/pkcs/PKCS7;[B)Lsun/security/pkcs/SignerInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public verify()[Lsun/security/pkcs/SignerInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 617
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Lsun/security/pkcs/PKCS7;->verify([B)[Lsun/security/pkcs/SignerInfo;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public verify([B)[Lsun/security/pkcs/SignerInfo;
    .locals 6
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 592
    new-instance v1, Ljava/util/Vector;

    #@3
    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    #@6
    .line 593
    .local v1, "intResult":Ljava/util/Vector;, "Ljava/util/Vector<Lsun/security/pkcs/SignerInfo;>;"
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    #@9
    array-length v4, v4

    #@a
    if-ge v0, v4, :cond_1

    #@c
    .line 595
    iget-object v4, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    #@e
    aget-object v4, v4, v0

    #@10
    invoke-virtual {p0, v4, p1}, Lsun/security/pkcs/PKCS7;->verify(Lsun/security/pkcs/SignerInfo;[B)Lsun/security/pkcs/SignerInfo;

    #@13
    move-result-object v3

    #@14
    .line 596
    .local v3, "signerInfo":Lsun/security/pkcs/SignerInfo;
    if-eqz v3, :cond_0

    #@16
    .line 597
    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@19
    .line 593
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 600
    .end local v3    # "signerInfo":Lsun/security/pkcs/SignerInfo;
    :cond_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    #@1f
    move-result v4

    #@20
    if-eqz v4, :cond_2

    #@22
    .line 602
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    #@25
    move-result v4

    #@26
    new-array v2, v4, [Lsun/security/pkcs/SignerInfo;

    #@28
    .line 603
    .local v2, "result":[Lsun/security/pkcs/SignerInfo;
    invoke-virtual {v1, v2}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    #@2b
    .line 604
    return-object v2

    #@2c
    .line 606
    .end local v2    # "result":[Lsun/security/pkcs/SignerInfo;
    :cond_2
    return-object v5
.end method
