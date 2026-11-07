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
.field private greylist-max-o certIssuerNames:[Ljava/security/Principal;

.field private greylist-max-o certificates:[Ljava/security/cert/X509Certificate;

.field private greylist-max-o contentInfo:Lsun/security/pkcs/ContentInfo;

.field private greylist-max-o contentType:Lsun/security/util/ObjectIdentifier;

.field private greylist-max-o crls:[Ljava/security/cert/X509CRL;

.field private greylist-max-o digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

.field private greylist-max-o oldStyle:Z

.field private greylist-max-o signerInfos:[Lsun/security/pkcs/SignerInfo;

.field private greylist-max-o version:Ljava/math/BigInteger;


# direct methods
.method public constructor blacklist test-api <init>(Ljava/io/InputStream;)V
    .registers 5
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/security/pkcs/ParsingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    .line 70
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    .line 71
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    .line 72
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    .line 73
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    .line 74
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/pkcs/PKCS7;->oldStyle:Z

    .line 121
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 122
    .local v0, "dis":Ljava/io/DataInputStream;
    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    .line 123
    .local v1, "data":[B
    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 125
    new-instance v2, Lsun/security/util/DerInputStream;

    invoke-direct {v2, v1}, Lsun/security/util/DerInputStream;-><init>([B)V

    invoke-direct {p0, v2}, Lsun/security/pkcs/PKCS7;->parse(Lsun/security/util/DerInputStream;)V

    .line 126
    return-void
.end method

.method public constructor blacklist <init>(Lsun/security/util/DerInputStream;)V
    .registers 3
    .param p1, "derin"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/security/pkcs/ParsingException;
        }
    .end annotation

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    .line 70
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    .line 71
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    .line 72
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    .line 73
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    .line 74
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/pkcs/PKCS7;->oldStyle:Z

    .line 136
    invoke-direct {p0, p1}, Lsun/security/pkcs/PKCS7;->parse(Lsun/security/util/DerInputStream;)V

    .line 137
    return-void
.end method

.method public constructor greylist test-api <init>([B)V
    .registers 5
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/security/pkcs/ParsingException;
        }
    .end annotation

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    .line 70
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    .line 71
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    .line 72
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    .line 73
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    .line 74
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/pkcs/PKCS7;->oldStyle:Z

    .line 149
    :try_start_13
    new-instance v0, Lsun/security/util/DerInputStream;

    invoke-direct {v0, p1}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 150
    .local v0, "derin":Lsun/security/util/DerInputStream;
    invoke-direct {p0, v0}, Lsun/security/pkcs/PKCS7;->parse(Lsun/security/util/DerInputStream;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1b} :catch_1d

    .line 156
    .end local v0    # "derin":Lsun/security/util/DerInputStream;
    nop

    .line 157
    return-void

    .line 151
    :catch_1d
    move-exception v0

    .line 152
    .local v0, "ioe1":Ljava/io/IOException;
    new-instance v1, Lsun/security/pkcs/ParsingException;

    const-string v2, "Unable to parse the encoded bytes"

    invoke-direct {v1, v2}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    .line 154
    .local v1, "pe":Lsun/security/pkcs/ParsingException;
    invoke-virtual {v1, v0}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 155
    throw v1
.end method

.method public constructor greylist <init>([Lsun/security/x509/AlgorithmId;Lsun/security/pkcs/ContentInfo;[Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509CRL;[Lsun/security/pkcs/SignerInfo;)V
    .registers 7
    .param p1, "digestAlgorithmIds"    # [Lsun/security/x509/AlgorithmId;
    .param p2, "contentInfo"    # Lsun/security/pkcs/ContentInfo;
    .param p3, "certificates"    # [Ljava/security/cert/X509Certificate;
    .param p4, "crls"    # [Ljava/security/cert/X509CRL;
    .param p5, "signerInfos"    # [Lsun/security/pkcs/SignerInfo;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    .line 70
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    .line 71
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    .line 72
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    .line 73
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    .line 74
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/pkcs/PKCS7;->oldStyle:Z

    .line 228
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    .line 229
    iput-object p1, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    .line 230
    iput-object p2, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    .line 231
    iput-object p3, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    .line 232
    iput-object p4, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    .line 233
    iput-object p5, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    .line 234
    return-void
.end method

.method public constructor greylist <init>([Lsun/security/x509/AlgorithmId;Lsun/security/pkcs/ContentInfo;[Ljava/security/cert/X509Certificate;[Lsun/security/pkcs/SignerInfo;)V
    .registers 11
    .param p1, "digestAlgorithmIds"    # [Lsun/security/x509/AlgorithmId;
    .param p2, "contentInfo"    # Lsun/security/pkcs/ContentInfo;
    .param p3, "certificates"    # [Ljava/security/cert/X509Certificate;
    .param p4, "signerInfos"    # [Lsun/security/pkcs/SignerInfo;

    .line 240
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .end local p1    # "digestAlgorithmIds":[Lsun/security/x509/AlgorithmId;
    .end local p2    # "contentInfo":Lsun/security/pkcs/ContentInfo;
    .end local p3    # "certificates":[Ljava/security/cert/X509Certificate;
    .end local p4    # "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .local v1, "digestAlgorithmIds":[Lsun/security/x509/AlgorithmId;
    .local v2, "contentInfo":Lsun/security/pkcs/ContentInfo;
    .local v3, "certificates":[Ljava/security/cert/X509Certificate;
    .local v5, "signerInfos":[Lsun/security/pkcs/SignerInfo;
    invoke-direct/range {v0 .. v5}, Lsun/security/pkcs/PKCS7;-><init>([Lsun/security/x509/AlgorithmId;Lsun/security/pkcs/ContentInfo;[Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509CRL;[Lsun/security/pkcs/SignerInfo;)V

    .line 241
    return-void
.end method

.method private greylist-max-o parse(Lsun/security/util/DerInputStream;)V
    .registers 6
    .param p1, "derin"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/security/pkcs/ParsingException;
        }
    .end annotation

    .line 166
    :try_start_0
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->available()I

    move-result v0

    invoke-virtual {p1, v0}, Lsun/security/util/DerInputStream;->mark(I)V

    .line 168
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsun/security/pkcs/PKCS7;->parse(Lsun/security/util/DerInputStream;Z)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    .line 182
    goto :goto_17

    .line 169
    :catch_c
    move-exception v0

    .line 171
    .local v0, "ioe":Ljava/io/IOException;
    :try_start_d
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->reset()V

    .line 173
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lsun/security/pkcs/PKCS7;->parse(Lsun/security/util/DerInputStream;Z)V

    .line 174
    iput-boolean v1, p0, Lsun/security/pkcs/PKCS7;->oldStyle:Z
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_16} :catch_18

    .line 181
    nop

    .line 183
    .end local v0    # "ioe":Ljava/io/IOException;
    :goto_17
    return-void

    .line 175
    .restart local v0    # "ioe":Ljava/io/IOException;
    :catch_18
    move-exception v1

    .line 176
    .local v1, "ioe1":Ljava/io/IOException;
    new-instance v2, Lsun/security/pkcs/ParsingException;

    .line 177
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    .line 178
    .local v2, "pe":Lsun/security/pkcs/ParsingException;
    invoke-virtual {v2, v0}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 179
    invoke-virtual {v2, v1}, Lsun/security/pkcs/ParsingException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 180
    throw v2
.end method

.method private greylist-max-o parse(Lsun/security/util/DerInputStream;Z)V
    .registers 7
    .param p1, "derin"    # Lsun/security/util/DerInputStream;
    .param p2, "oldStyle"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    new-instance v0, Lsun/security/pkcs/ContentInfo;

    invoke-direct {v0, p1, p2}, Lsun/security/pkcs/ContentInfo;-><init>(Lsun/security/util/DerInputStream;Z)V

    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    .line 196
    iget-object v0, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    iget-object v0, v0, Lsun/security/pkcs/ContentInfo;->contentType:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->contentType:Lsun/security/util/ObjectIdentifier;

    .line 197
    iget-object v0, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    invoke-virtual {v0}, Lsun/security/pkcs/ContentInfo;->getContent()Lsun/security/util/DerValue;

    move-result-object v0

    .line 199
    .local v0, "content":Lsun/security/util/DerValue;
    iget-object v1, p0, Lsun/security/pkcs/PKCS7;->contentType:Lsun/security/util/ObjectIdentifier;

    sget-object v2, Lsun/security/pkcs/ContentInfo;->SIGNED_DATA_OID:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1, v2}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 200
    invoke-direct {p0, v0}, Lsun/security/pkcs/PKCS7;->parseSignedData(Lsun/security/util/DerValue;)V

    goto :goto_3c

    .line 201
    :cond_21
    iget-object v1, p0, Lsun/security/pkcs/PKCS7;->contentType:Lsun/security/util/ObjectIdentifier;

    sget-object v2, Lsun/security/pkcs/ContentInfo;->OLD_SIGNED_DATA_OID:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1, v2}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 203
    invoke-direct {p0, v0}, Lsun/security/pkcs/PKCS7;->parseOldSignedData(Lsun/security/util/DerValue;)V

    goto :goto_3c

    .line 204
    :cond_2f
    iget-object v1, p0, Lsun/security/pkcs/PKCS7;->contentType:Lsun/security/util/ObjectIdentifier;

    sget-object v2, Lsun/security/pkcs/ContentInfo;->NETSCAPE_CERT_SEQUENCE_OID:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1, v2}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 206
    invoke-direct {p0, v0}, Lsun/security/pkcs/PKCS7;->parseNetscapeCertChain(Lsun/security/util/DerValue;)V

    .line 211
    :goto_3c
    return-void

    .line 208
    :cond_3d
    new-instance v1, Lsun/security/pkcs/ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->contentType:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not supported."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o parseNetscapeCertChain(Lsun/security/util/DerValue;)V
    .registers 11
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/security/pkcs/ParsingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    new-instance v0, Lsun/security/util/DerInputStream;

    invoke-virtual {p1}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 247
    .local v0, "dis":Lsun/security/util/DerInputStream;
    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lsun/security/util/DerInputStream;->getSequence(IZ)[Lsun/security/util/DerValue;

    move-result-object v1

    .line 248
    .local v1, "contents":[Lsun/security/util/DerValue;
    array-length v2, v1

    new-array v2, v2, [Ljava/security/cert/X509Certificate;

    iput-object v2, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    .line 250
    const/4 v2, 0x0

    .line 252
    .local v2, "certfac":Ljava/security/cert/CertificateFactory;
    :try_start_15
    const-string v3, "X.509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3
    :try_end_1b
    .catch Ljava/security/cert/CertificateException; {:try_start_15 .. :try_end_1b} :catch_1d

    move-object v2, v3

    .line 255
    goto :goto_1e

    .line 253
    :catch_1d
    move-exception v3

    .line 257
    :goto_1e
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1f
    array-length v4, v1

    if-ge v3, v4, :cond_7e

    .line 258
    const/4 v4, 0x0

    .line 261
    .local v4, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_23
    aget-object v5, v1, v3

    invoke-virtual {v5}, Lsun/security/util/DerValue;->getOriginalEncodedForm()[B

    move-result-object v5

    .line 262
    .local v5, "original":[B
    if-nez v2, :cond_37

    .line 263
    iget-object v6, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    new-instance v7, Lsun/security/x509/X509CertImpl;

    aget-object v8, v1, v3

    invoke-direct {v7, v8, v5}, Lsun/security/x509/X509CertImpl;-><init>(Lsun/security/util/DerValue;[B)V

    aput-object v7, v6, v3

    goto :goto_50

    .line 265
    :cond_37
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v4, v6

    .line 266
    iget-object v6, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    new-instance v7, Lsun/security/pkcs/PKCS7$VerbatimX509Certificate;

    .line 267
    invoke-virtual {v2, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509Certificate;

    invoke-direct {v7, v8, v5}, Lsun/security/pkcs/PKCS7$VerbatimX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V

    aput-object v7, v6, v3

    .line 269
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4f
    .catch Ljava/security/cert/CertificateException; {:try_start_23 .. :try_end_4f} :catch_69
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_4f} :catch_5a
    .catchall {:try_start_23 .. :try_end_4f} :catchall_58

    .line 270
    const/4 v4, 0x0

    .line 282
    .end local v5    # "original":[B
    :goto_50
    if-eqz v4, :cond_55

    .line 283
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V

    .line 257
    .end local v4    # "bais":Ljava/io/ByteArrayInputStream;
    :cond_55
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 282
    .restart local v4    # "bais":Ljava/io/ByteArrayInputStream;
    :catchall_58
    move-exception v5

    goto :goto_78

    .line 277
    :catch_5a
    move-exception v5

    .line 278
    .local v5, "ioe":Ljava/io/IOException;
    :try_start_5b
    new-instance v6, Lsun/security/pkcs/ParsingException;

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    .line 279
    .local v6, "pe":Lsun/security/pkcs/ParsingException;
    invoke-virtual {v6, v5}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 280
    nop

    .end local v0    # "dis":Lsun/security/util/DerInputStream;
    .end local v1    # "contents":[Lsun/security/util/DerValue;
    .end local v2    # "certfac":Ljava/security/cert/CertificateFactory;
    .end local v3    # "i":I
    .end local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .end local p0    # "this":Lsun/security/pkcs/PKCS7;
    .end local p1    # "val":Lsun/security/util/DerValue;
    throw v6

    .line 273
    .end local v5    # "ioe":Ljava/io/IOException;
    .end local v6    # "pe":Lsun/security/pkcs/ParsingException;
    .restart local v0    # "dis":Lsun/security/util/DerInputStream;
    .restart local v1    # "contents":[Lsun/security/util/DerValue;
    .restart local v2    # "certfac":Ljava/security/cert/CertificateFactory;
    .restart local v3    # "i":I
    .restart local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local p0    # "this":Lsun/security/pkcs/PKCS7;
    .restart local p1    # "val":Lsun/security/util/DerValue;
    :catch_69
    move-exception v5

    .line 274
    .local v5, "ce":Ljava/security/cert/CertificateException;
    new-instance v6, Lsun/security/pkcs/ParsingException;

    invoke-virtual {v5}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    .line 275
    .restart local v6    # "pe":Lsun/security/pkcs/ParsingException;
    invoke-virtual {v6, v5}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 276
    nop

    .end local v0    # "dis":Lsun/security/util/DerInputStream;
    .end local v1    # "contents":[Lsun/security/util/DerValue;
    .end local v2    # "certfac":Ljava/security/cert/CertificateFactory;
    .end local v3    # "i":I
    .end local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .end local p0    # "this":Lsun/security/pkcs/PKCS7;
    .end local p1    # "val":Lsun/security/util/DerValue;
    throw v6
    :try_end_78
    .catchall {:try_start_5b .. :try_end_78} :catchall_58

    .line 282
    .end local v5    # "ce":Ljava/security/cert/CertificateException;
    .end local v6    # "pe":Lsun/security/pkcs/ParsingException;
    .restart local v0    # "dis":Lsun/security/util/DerInputStream;
    .restart local v1    # "contents":[Lsun/security/util/DerValue;
    .restart local v2    # "certfac":Ljava/security/cert/CertificateFactory;
    .restart local v3    # "i":I
    .restart local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local p0    # "this":Lsun/security/pkcs/PKCS7;
    .restart local p1    # "val":Lsun/security/util/DerValue;
    :goto_78
    if-eqz v4, :cond_7d

    .line 283
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V

    .line 284
    :cond_7d
    throw v5

    .line 286
    .end local v3    # "i":I
    .end local v4    # "bais":Ljava/io/ByteArrayInputStream;
    :cond_7e
    return-void
.end method

.method private greylist-max-o parseOldSignedData(Lsun/security/util/DerValue;)V
    .registers 15
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/security/pkcs/ParsingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 425
    invoke-virtual {p1}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    move-result-object v0

    .line 428
    .local v0, "dis":Lsun/security/util/DerInputStream;
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    .line 431
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsun/security/util/DerInputStream;->getSet(I)[Lsun/security/util/DerValue;

    move-result-object v2

    .line 432
    .local v2, "digestAlgorithmIdVals":[Lsun/security/util/DerValue;
    array-length v3, v2

    .line 434
    .local v3, "len":I
    new-array v4, v3, [Lsun/security/x509/AlgorithmId;

    iput-object v4, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    .line 436
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_15
    if-ge v4, v3, :cond_2d

    .line 437
    :try_start_17
    aget-object v5, v2, v4

    .line 438
    .local v5, "oid":Lsun/security/util/DerValue;
    iget-object v6, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    invoke-static {v5}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v7

    aput-object v7, v6, v4
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_21} :catch_24

    .line 436
    .end local v5    # "oid":Lsun/security/util/DerValue;
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 440
    .end local v4    # "i":I
    :catch_24
    move-exception v1

    .line 441
    .local v1, "e":Ljava/io/IOException;
    new-instance v4, Lsun/security/pkcs/ParsingException;

    const-string v5, "Error parsing digest AlgorithmId IDs"

    invoke-direct {v4, v5}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 442
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2d
    nop

    .line 445
    new-instance v4, Lsun/security/pkcs/ContentInfo;

    invoke-direct {v4, v0, v1}, Lsun/security/pkcs/ContentInfo;-><init>(Lsun/security/util/DerInputStream;Z)V

    iput-object v4, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    .line 448
    const/4 v4, 0x0

    .line 450
    .local v4, "certfac":Ljava/security/cert/CertificateFactory;
    :try_start_36
    const-string v5, "X.509"

    invoke-static {v5}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v5
    :try_end_3c
    .catch Ljava/security/cert/CertificateException; {:try_start_36 .. :try_end_3c} :catch_3e

    move-object v4, v5

    .line 453
    goto :goto_3f

    .line 451
    :catch_3e
    move-exception v5

    .line 455
    :goto_3f
    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v1}, Lsun/security/util/DerInputStream;->getSet(IZZ)[Lsun/security/util/DerValue;

    move-result-object v5

    .line 456
    .local v5, "certVals":[Lsun/security/util/DerValue;
    array-length v3, v5

    .line 457
    new-array v7, v3, [Ljava/security/cert/X509Certificate;

    iput-object v7, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    .line 459
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4b
    if-ge v7, v3, :cond_a9

    .line 460
    const/4 v8, 0x0

    .line 463
    .local v8, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_4e
    aget-object v9, v5, v7

    invoke-virtual {v9}, Lsun/security/util/DerValue;->getOriginalEncodedForm()[B

    move-result-object v9

    .line 464
    .local v9, "original":[B
    if-nez v4, :cond_62

    .line 465
    iget-object v10, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    new-instance v11, Lsun/security/x509/X509CertImpl;

    aget-object v12, v5, v7

    invoke-direct {v11, v12, v9}, Lsun/security/x509/X509CertImpl;-><init>(Lsun/security/util/DerValue;[B)V

    aput-object v11, v10, v7

    goto :goto_7b

    .line 467
    :cond_62
    new-instance v10, Ljava/io/ByteArrayInputStream;

    invoke-direct {v10, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v8, v10

    .line 468
    iget-object v10, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    new-instance v11, Lsun/security/pkcs/PKCS7$VerbatimX509Certificate;

    .line 469
    invoke-virtual {v4, v8}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v12

    check-cast v12, Ljava/security/cert/X509Certificate;

    invoke-direct {v11, v12, v9}, Lsun/security/pkcs/PKCS7$VerbatimX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V

    aput-object v11, v10, v7

    .line 471
    invoke-virtual {v8}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7a
    .catch Ljava/security/cert/CertificateException; {:try_start_4e .. :try_end_7a} :catch_94
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_7a} :catch_85
    .catchall {:try_start_4e .. :try_end_7a} :catchall_83

    .line 472
    const/4 v8, 0x0

    .line 484
    .end local v9    # "original":[B
    :goto_7b
    if-eqz v8, :cond_80

    .line 485
    invoke-virtual {v8}, Ljava/io/ByteArrayInputStream;->close()V

    .line 459
    .end local v8    # "bais":Ljava/io/ByteArrayInputStream;
    :cond_80
    add-int/lit8 v7, v7, 0x1

    goto :goto_4b

    .line 484
    .restart local v8    # "bais":Ljava/io/ByteArrayInputStream;
    :catchall_83
    move-exception v1

    goto :goto_a3

    .line 479
    :catch_85
    move-exception v1

    .line 480
    .local v1, "ioe":Ljava/io/IOException;
    :try_start_86
    new-instance v6, Lsun/security/pkcs/ParsingException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    .line 481
    .local v6, "pe":Lsun/security/pkcs/ParsingException;
    invoke-virtual {v6, v1}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 482
    nop

    .end local v0    # "dis":Lsun/security/util/DerInputStream;
    .end local v2    # "digestAlgorithmIdVals":[Lsun/security/util/DerValue;
    .end local v3    # "len":I
    .end local v4    # "certfac":Ljava/security/cert/CertificateFactory;
    .end local v5    # "certVals":[Lsun/security/util/DerValue;
    .end local v7    # "i":I
    .end local v8    # "bais":Ljava/io/ByteArrayInputStream;
    .end local p0    # "this":Lsun/security/pkcs/PKCS7;
    .end local p1    # "val":Lsun/security/util/DerValue;
    throw v6

    .line 475
    .end local v1    # "ioe":Ljava/io/IOException;
    .end local v6    # "pe":Lsun/security/pkcs/ParsingException;
    .restart local v0    # "dis":Lsun/security/util/DerInputStream;
    .restart local v2    # "digestAlgorithmIdVals":[Lsun/security/util/DerValue;
    .restart local v3    # "len":I
    .restart local v4    # "certfac":Ljava/security/cert/CertificateFactory;
    .restart local v5    # "certVals":[Lsun/security/util/DerValue;
    .restart local v7    # "i":I
    .restart local v8    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local p0    # "this":Lsun/security/pkcs/PKCS7;
    .restart local p1    # "val":Lsun/security/util/DerValue;
    :catch_94
    move-exception v1

    .line 476
    .local v1, "ce":Ljava/security/cert/CertificateException;
    new-instance v6, Lsun/security/pkcs/ParsingException;

    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    .line 477
    .restart local v6    # "pe":Lsun/security/pkcs/ParsingException;
    invoke-virtual {v6, v1}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 478
    nop

    .end local v0    # "dis":Lsun/security/util/DerInputStream;
    .end local v2    # "digestAlgorithmIdVals":[Lsun/security/util/DerValue;
    .end local v3    # "len":I
    .end local v4    # "certfac":Ljava/security/cert/CertificateFactory;
    .end local v5    # "certVals":[Lsun/security/util/DerValue;
    .end local v7    # "i":I
    .end local v8    # "bais":Ljava/io/ByteArrayInputStream;
    .end local p0    # "this":Lsun/security/pkcs/PKCS7;
    .end local p1    # "val":Lsun/security/util/DerValue;
    throw v6
    :try_end_a3
    .catchall {:try_start_86 .. :try_end_a3} :catchall_83

    .line 484
    .end local v1    # "ce":Ljava/security/cert/CertificateException;
    .end local v6    # "pe":Lsun/security/pkcs/ParsingException;
    .restart local v0    # "dis":Lsun/security/util/DerInputStream;
    .restart local v2    # "digestAlgorithmIdVals":[Lsun/security/util/DerValue;
    .restart local v3    # "len":I
    .restart local v4    # "certfac":Ljava/security/cert/CertificateFactory;
    .restart local v5    # "certVals":[Lsun/security/util/DerValue;
    .restart local v7    # "i":I
    .restart local v8    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local p0    # "this":Lsun/security/pkcs/PKCS7;
    .restart local p1    # "val":Lsun/security/util/DerValue;
    :goto_a3
    if-eqz v8, :cond_a8

    .line 485
    invoke-virtual {v8}, Ljava/io/ByteArrayInputStream;->close()V

    .line 486
    :cond_a8
    throw v1

    .line 490
    .end local v7    # "i":I
    .end local v8    # "bais":Ljava/io/ByteArrayInputStream;
    :cond_a9
    invoke-virtual {v0, v6}, Lsun/security/util/DerInputStream;->getSet(I)[Lsun/security/util/DerValue;

    .line 493
    invoke-virtual {v0, v1}, Lsun/security/util/DerInputStream;->getSet(I)[Lsun/security/util/DerValue;

    move-result-object v6

    .line 494
    .local v6, "signerInfoVals":[Lsun/security/util/DerValue;
    array-length v3, v6

    .line 495
    new-array v7, v3, [Lsun/security/pkcs/SignerInfo;

    iput-object v7, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    .line 496
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_b6
    if-ge v7, v3, :cond_ca

    .line 497
    aget-object v8, v6, v7

    invoke-virtual {v8}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    move-result-object v8

    .line 498
    .local v8, "in":Lsun/security/util/DerInputStream;
    iget-object v9, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    new-instance v10, Lsun/security/pkcs/SignerInfo;

    invoke-direct {v10, v8, v1}, Lsun/security/pkcs/SignerInfo;-><init>(Lsun/security/util/DerInputStream;Z)V

    aput-object v10, v9, v7

    .line 496
    .end local v8    # "in":Lsun/security/util/DerInputStream;
    add-int/lit8 v7, v7, 0x1

    goto :goto_b6

    .line 500
    .end local v7    # "i":I
    :cond_ca
    return-void
.end method

.method private greylist-max-o parseSignedData(Lsun/security/util/DerValue;)V
    .registers 16
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/security/pkcs/ParsingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 291
    invoke-virtual {p1}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    move-result-object v0

    .line 294
    .local v0, "dis":Lsun/security/util/DerInputStream;
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    .line 297
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsun/security/util/DerInputStream;->getSet(I)[Lsun/security/util/DerValue;

    move-result-object v2

    .line 298
    .local v2, "digestAlgorithmIdVals":[Lsun/security/util/DerValue;
    array-length v3, v2

    .line 299
    .local v3, "len":I
    new-array v4, v3, [Lsun/security/x509/AlgorithmId;

    iput-object v4, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    .line 301
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_15
    if-ge v4, v3, :cond_45

    .line 302
    :try_start_17
    aget-object v5, v2, v4

    .line 303
    .local v5, "oid":Lsun/security/util/DerValue;
    iget-object v6, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    invoke-static {v5}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v7

    aput-object v7, v6, v4
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_21} :catch_24

    .line 301
    .end local v5    # "oid":Lsun/security/util/DerValue;
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 306
    .end local v4    # "i":I
    :catch_24
    move-exception v1

    .line 307
    .local v1, "e":Ljava/io/IOException;
    new-instance v4, Lsun/security/pkcs/ParsingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error parsing digest AlgorithmId IDs: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 309
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    .line 310
    .local v4, "pe":Lsun/security/pkcs/ParsingException;
    invoke-virtual {v4, v1}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 311
    throw v4

    .line 312
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "pe":Lsun/security/pkcs/ParsingException;
    :cond_45
    nop

    .line 314
    new-instance v4, Lsun/security/pkcs/ContentInfo;

    invoke-direct {v4, v0}, Lsun/security/pkcs/ContentInfo;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v4, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    .line 316
    const/4 v4, 0x0

    .line 318
    .local v4, "certfac":Ljava/security/cert/CertificateFactory;
    :try_start_4e
    const-string v5, "X.509"

    invoke-static {v5}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v5
    :try_end_54
    .catch Ljava/security/cert/CertificateException; {:try_start_4e .. :try_end_54} :catch_56

    move-object v4, v5

    .line 321
    goto :goto_57

    .line 319
    :catch_56
    move-exception v5

    .line 327
    :goto_57
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->peekByte()I

    move-result v5

    int-to-byte v5, v5

    const/16 v6, -0x60

    if-ne v5, v6, :cond_e2

    .line 329
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v1, v1}, Lsun/security/util/DerInputStream;->getSet(IZZ)[Lsun/security/util/DerValue;

    move-result-object v5

    .line 331
    .local v5, "certVals":[Lsun/security/util/DerValue;
    array-length v3, v5

    .line 332
    new-array v6, v3, [Ljava/security/cert/X509Certificate;

    iput-object v6, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    .line 333
    const/4 v6, 0x0

    .line 335
    .local v6, "count":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_6c
    if-ge v7, v3, :cond_d6

    .line 336
    const/4 v8, 0x0

    .line 338
    .local v8, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_6f
    aget-object v9, v5, v7

    invoke-virtual {v9}, Lsun/security/util/DerValue;->getTag()B

    move-result v9

    .line 341
    .local v9, "tag":B
    const/16 v10, 0x30

    if-ne v9, v10, :cond_a8

    .line 343
    aget-object v10, v5, v7

    invoke-virtual {v10}, Lsun/security/util/DerValue;->getOriginalEncodedForm()[B

    move-result-object v10

    .line 344
    .local v10, "original":[B
    if-nez v4, :cond_8d

    .line 345
    iget-object v11, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    new-instance v12, Lsun/security/x509/X509CertImpl;

    aget-object v13, v5, v7

    invoke-direct {v12, v13, v10}, Lsun/security/x509/X509CertImpl;-><init>(Lsun/security/util/DerValue;[B)V

    aput-object v12, v11, v6

    goto :goto_a6

    .line 347
    :cond_8d
    new-instance v11, Ljava/io/ByteArrayInputStream;

    invoke-direct {v11, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v8, v11

    .line 348
    iget-object v11, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    new-instance v12, Lsun/security/pkcs/PKCS7$VerbatimX509Certificate;

    .line 349
    invoke-virtual {v4, v8}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v13

    check-cast v13, Ljava/security/cert/X509Certificate;

    invoke-direct {v12, v13, v10}, Lsun/security/pkcs/PKCS7$VerbatimX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V

    aput-object v12, v11, v6

    .line 351
    invoke-virtual {v8}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_a5
    .catch Ljava/security/cert/CertificateException; {:try_start_6f .. :try_end_a5} :catch_c1
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_a5} :catch_b2
    .catchall {:try_start_6f .. :try_end_a5} :catchall_b0

    .line 352
    const/4 v8, 0x0

    .line 355
    :goto_a6
    add-int/lit8 v6, v6, 0x1

    .line 366
    .end local v9    # "tag":B
    .end local v10    # "original":[B
    :cond_a8
    if-eqz v8, :cond_ad

    .line 367
    invoke-virtual {v8}, Ljava/io/ByteArrayInputStream;->close()V

    .line 335
    .end local v8    # "bais":Ljava/io/ByteArrayInputStream;
    :cond_ad
    add-int/lit8 v7, v7, 0x1

    goto :goto_6c

    .line 366
    .restart local v8    # "bais":Ljava/io/ByteArrayInputStream;
    :catchall_b0
    move-exception v1

    goto :goto_d0

    .line 361
    :catch_b2
    move-exception v1

    .line 362
    .local v1, "ioe":Ljava/io/IOException;
    :try_start_b3
    new-instance v9, Lsun/security/pkcs/ParsingException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    .line 363
    .local v9, "pe":Lsun/security/pkcs/ParsingException;
    invoke-virtual {v9, v1}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 364
    nop

    .end local v0    # "dis":Lsun/security/util/DerInputStream;
    .end local v2    # "digestAlgorithmIdVals":[Lsun/security/util/DerValue;
    .end local v3    # "len":I
    .end local v4    # "certfac":Ljava/security/cert/CertificateFactory;
    .end local v5    # "certVals":[Lsun/security/util/DerValue;
    .end local v6    # "count":I
    .end local v7    # "i":I
    .end local v8    # "bais":Ljava/io/ByteArrayInputStream;
    .end local p0    # "this":Lsun/security/pkcs/PKCS7;
    .end local p1    # "val":Lsun/security/util/DerValue;
    throw v9

    .line 357
    .end local v1    # "ioe":Ljava/io/IOException;
    .end local v9    # "pe":Lsun/security/pkcs/ParsingException;
    .restart local v0    # "dis":Lsun/security/util/DerInputStream;
    .restart local v2    # "digestAlgorithmIdVals":[Lsun/security/util/DerValue;
    .restart local v3    # "len":I
    .restart local v4    # "certfac":Ljava/security/cert/CertificateFactory;
    .restart local v5    # "certVals":[Lsun/security/util/DerValue;
    .restart local v6    # "count":I
    .restart local v7    # "i":I
    .restart local v8    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local p0    # "this":Lsun/security/pkcs/PKCS7;
    .restart local p1    # "val":Lsun/security/util/DerValue;
    :catch_c1
    move-exception v1

    .line 358
    .local v1, "ce":Ljava/security/cert/CertificateException;
    new-instance v9, Lsun/security/pkcs/ParsingException;

    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    .line 359
    .restart local v9    # "pe":Lsun/security/pkcs/ParsingException;
    invoke-virtual {v9, v1}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 360
    nop

    .end local v0    # "dis":Lsun/security/util/DerInputStream;
    .end local v2    # "digestAlgorithmIdVals":[Lsun/security/util/DerValue;
    .end local v3    # "len":I
    .end local v4    # "certfac":Ljava/security/cert/CertificateFactory;
    .end local v5    # "certVals":[Lsun/security/util/DerValue;
    .end local v6    # "count":I
    .end local v7    # "i":I
    .end local v8    # "bais":Ljava/io/ByteArrayInputStream;
    .end local p0    # "this":Lsun/security/pkcs/PKCS7;
    .end local p1    # "val":Lsun/security/util/DerValue;
    throw v9
    :try_end_d0
    .catchall {:try_start_b3 .. :try_end_d0} :catchall_b0

    .line 366
    .end local v1    # "ce":Ljava/security/cert/CertificateException;
    .end local v9    # "pe":Lsun/security/pkcs/ParsingException;
    .restart local v0    # "dis":Lsun/security/util/DerInputStream;
    .restart local v2    # "digestAlgorithmIdVals":[Lsun/security/util/DerValue;
    .restart local v3    # "len":I
    .restart local v4    # "certfac":Ljava/security/cert/CertificateFactory;
    .restart local v5    # "certVals":[Lsun/security/util/DerValue;
    .restart local v6    # "count":I
    .restart local v7    # "i":I
    .restart local v8    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local p0    # "this":Lsun/security/pkcs/PKCS7;
    .restart local p1    # "val":Lsun/security/util/DerValue;
    :goto_d0
    if-eqz v8, :cond_d5

    .line 367
    invoke-virtual {v8}, Ljava/io/ByteArrayInputStream;->close()V

    .line 368
    :cond_d5
    throw v1

    .line 370
    .end local v7    # "i":I
    .end local v8    # "bais":Ljava/io/ByteArrayInputStream;
    :cond_d6
    if-eq v6, v3, :cond_e2

    .line 371
    iget-object v7, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    invoke-static {v7, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/security/cert/X509Certificate;

    iput-object v7, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    .line 376
    .end local v5    # "certVals":[Lsun/security/util/DerValue;
    .end local v6    # "count":I
    :cond_e2
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->peekByte()I

    move-result v5

    int-to-byte v5, v5

    const/16 v6, -0x5f

    if-ne v5, v6, :cond_13f

    .line 377
    invoke-virtual {v0, v1, v1}, Lsun/security/util/DerInputStream;->getSet(IZ)[Lsun/security/util/DerValue;

    move-result-object v5

    .line 379
    .local v5, "crlVals":[Lsun/security/util/DerValue;
    array-length v3, v5

    .line 380
    new-array v6, v3, [Ljava/security/cert/X509CRL;

    iput-object v6, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    .line 382
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_f5
    if-ge v6, v3, :cond_13f

    .line 383
    const/4 v7, 0x0

    .line 385
    .local v7, "bais":Ljava/io/ByteArrayInputStream;
    if-nez v4, :cond_106

    .line 386
    :try_start_fa
    iget-object v8, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    new-instance v9, Lsun/security/x509/X509CRLImpl;

    aget-object v10, v5, v6

    invoke-direct {v9, v10}, Lsun/security/x509/X509CRLImpl;-><init>(Lsun/security/util/DerValue;)V

    aput-object v9, v8, v6

    goto :goto_120

    .line 388
    :cond_106
    aget-object v8, v5, v6

    invoke-virtual {v8}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v8

    .line 389
    .local v8, "encoded":[B
    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-direct {v9, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v7, v9

    .line 390
    iget-object v9, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    invoke-virtual {v4, v7}, Ljava/security/cert/CertificateFactory;->generateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v10

    check-cast v10, Ljava/security/cert/X509CRL;

    aput-object v10, v9, v6

    .line 391
    invoke-virtual {v7}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_11f
    .catch Ljava/security/cert/CRLException; {:try_start_fa .. :try_end_11f} :catch_12a
    .catchall {:try_start_fa .. :try_end_11f} :catchall_128

    .line 392
    const/4 v7, 0x0

    .line 400
    .end local v8    # "encoded":[B
    :goto_120
    if-eqz v7, :cond_125

    .line 401
    invoke-virtual {v7}, Ljava/io/ByteArrayInputStream;->close()V

    .line 382
    .end local v7    # "bais":Ljava/io/ByteArrayInputStream;
    :cond_125
    add-int/lit8 v6, v6, 0x1

    goto :goto_f5

    .line 400
    .restart local v7    # "bais":Ljava/io/ByteArrayInputStream;
    :catchall_128
    move-exception v1

    goto :goto_139

    .line 394
    :catch_12a
    move-exception v1

    .line 395
    .local v1, "e":Ljava/security/cert/CRLException;
    :try_start_12b
    new-instance v8, Lsun/security/pkcs/ParsingException;

    .line 396
    invoke-virtual {v1}, Ljava/security/cert/CRLException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    .line 397
    .local v8, "pe":Lsun/security/pkcs/ParsingException;
    invoke-virtual {v8, v1}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 398
    nop

    .end local v0    # "dis":Lsun/security/util/DerInputStream;
    .end local v2    # "digestAlgorithmIdVals":[Lsun/security/util/DerValue;
    .end local v3    # "len":I
    .end local v4    # "certfac":Ljava/security/cert/CertificateFactory;
    .end local v5    # "crlVals":[Lsun/security/util/DerValue;
    .end local v6    # "i":I
    .end local v7    # "bais":Ljava/io/ByteArrayInputStream;
    .end local p0    # "this":Lsun/security/pkcs/PKCS7;
    .end local p1    # "val":Lsun/security/util/DerValue;
    throw v8
    :try_end_139
    .catchall {:try_start_12b .. :try_end_139} :catchall_128

    .line 400
    .end local v1    # "e":Ljava/security/cert/CRLException;
    .end local v8    # "pe":Lsun/security/pkcs/ParsingException;
    .restart local v0    # "dis":Lsun/security/util/DerInputStream;
    .restart local v2    # "digestAlgorithmIdVals":[Lsun/security/util/DerValue;
    .restart local v3    # "len":I
    .restart local v4    # "certfac":Ljava/security/cert/CertificateFactory;
    .restart local v5    # "crlVals":[Lsun/security/util/DerValue;
    .restart local v6    # "i":I
    .restart local v7    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local p0    # "this":Lsun/security/pkcs/PKCS7;
    .restart local p1    # "val":Lsun/security/util/DerValue;
    :goto_139
    if-eqz v7, :cond_13e

    .line 401
    invoke-virtual {v7}, Ljava/io/ByteArrayInputStream;->close()V

    .line 402
    :cond_13e
    throw v1

    .line 407
    .end local v5    # "crlVals":[Lsun/security/util/DerValue;
    .end local v6    # "i":I
    .end local v7    # "bais":Ljava/io/ByteArrayInputStream;
    :cond_13f
    invoke-virtual {v0, v1}, Lsun/security/util/DerInputStream;->getSet(I)[Lsun/security/util/DerValue;

    move-result-object v1

    .line 409
    .local v1, "signerInfoVals":[Lsun/security/util/DerValue;
    array-length v3, v1

    .line 410
    new-array v5, v3, [Lsun/security/pkcs/SignerInfo;

    iput-object v5, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    .line 412
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_149
    if-ge v5, v3, :cond_15d

    .line 413
    aget-object v6, v1, v5

    invoke-virtual {v6}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    move-result-object v6

    .line 414
    .local v6, "in":Lsun/security/util/DerInputStream;
    iget-object v7, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    new-instance v8, Lsun/security/pkcs/SignerInfo;

    invoke-direct {v8, v6}, Lsun/security/pkcs/SignerInfo;-><init>(Lsun/security/util/DerInputStream;)V

    aput-object v8, v7, v5

    .line 412
    .end local v6    # "in":Lsun/security/util/DerInputStream;
    add-int/lit8 v5, v5, 0x1

    goto :goto_149

    .line 416
    .end local v5    # "i":I
    :cond_15d
    return-void
.end method

.method private greylist-max-o populateCertIssuerNames()V
    .registers 6

    .line 756
    iget-object v0, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_5

    .line 757
    return-void

    .line 759
    :cond_5
    iget-object v0, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    array-length v0, v0

    new-array v0, v0, [Ljava/security/Principal;

    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->certIssuerNames:[Ljava/security/Principal;

    .line 760
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    iget-object v1, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    array-length v1, v1

    if-ge v0, v1, :cond_39

    .line 761
    iget-object v1, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    aget-object v1, v1, v0

    .line 762
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v2

    .line 763
    .local v2, "certIssuerName":Ljava/security/Principal;
    instance-of v3, v2, Lsun/security/x509/X500Name;

    if-nez v3, :cond_32

    .line 769
    :try_start_1e
    new-instance v3, Lsun/security/x509/X509CertInfo;

    .line 770
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lsun/security/x509/X509CertInfo;-><init>([B)V

    .line 771
    .local v3, "tbsCert":Lsun/security/x509/X509CertInfo;
    const-string v4, "issuer.dname"

    .line 772
    invoke-virtual {v3, v4}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/Principal;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2f} :catch_31

    move-object v2, v4

    .line 777
    .end local v3    # "tbsCert":Lsun/security/x509/X509CertInfo;
    goto :goto_32

    .line 774
    :catch_31
    move-exception v3

    .line 779
    :cond_32
    :goto_32
    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->certIssuerNames:[Ljava/security/Principal;

    aput-object v2, v3, v0

    .line 760
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    .end local v2    # "certIssuerName":Ljava/security/Principal;
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 781
    .end local v0    # "i":I
    :cond_39
    return-void
.end method


# virtual methods
.method public greylist encodeSignedData(Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 509
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 510
    .local v0, "derout":Lsun/security/util/DerOutputStream;
    invoke-virtual {p0, v0}, Lsun/security/pkcs/PKCS7;->encodeSignedData(Lsun/security/util/DerOutputStream;)V

    .line 511
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 512
    return-void
.end method

.method public blacklist encodeSignedData(Lsun/security/util/DerOutputStream;)V
    .registers 11
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 523
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 526
    .local v0, "signedData":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putInteger(Ljava/math/BigInteger;)V

    .line 529
    iget-object v1, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    const/16 v2, 0x31

    invoke-virtual {v0, v2, v1}, Lsun/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun/security/util/DerEncoder;)V

    .line 532
    iget-object v1, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    invoke-virtual {v1, v0}, Lsun/security/pkcs/ContentInfo;->encode(Lsun/security/util/DerOutputStream;)V

    .line 535
    iget-object v1, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_5a

    iget-object v1, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    array-length v1, v1

    if-eqz v1, :cond_5a

    .line 537
    iget-object v1, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    array-length v1, v1

    new-array v1, v1, [Lsun/security/x509/X509CertImpl;

    .line 538
    .local v1, "implCerts":[Lsun/security/x509/X509CertImpl;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_25
    iget-object v4, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    array-length v4, v4

    if-ge v3, v4, :cond_55

    .line 539
    iget-object v4, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    aget-object v4, v4, v3

    instance-of v4, v4, Lsun/security/x509/X509CertImpl;

    if-eqz v4, :cond_3b

    .line 540
    iget-object v4, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    aget-object v4, v4, v3

    check-cast v4, Lsun/security/x509/X509CertImpl;

    aput-object v4, v1, v3

    goto :goto_4b

    .line 543
    :cond_3b
    :try_start_3b
    iget-object v4, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v4

    .line 544
    .local v4, "encoded":[B
    new-instance v5, Lsun/security/x509/X509CertImpl;

    invoke-direct {v5, v4}, Lsun/security/x509/X509CertImpl;-><init>([B)V

    aput-object v5, v1, v3
    :try_end_4a
    .catch Ljava/security/cert/CertificateException; {:try_start_3b .. :try_end_4a} :catch_4e

    .line 547
    .end local v4    # "encoded":[B
    nop

    .line 538
    :goto_4b
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 545
    :catch_4e
    move-exception v2

    .line 546
    .local v2, "ce":Ljava/security/cert/CertificateException;
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 553
    .end local v2    # "ce":Ljava/security/cert/CertificateException;
    .end local v3    # "i":I
    :cond_55
    const/16 v3, -0x60

    invoke-virtual {v0, v3, v1}, Lsun/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun/security/util/DerEncoder;)V

    .line 557
    .end local v1    # "implCerts":[Lsun/security/x509/X509CertImpl;
    :cond_5a
    iget-object v1, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    if-eqz v1, :cond_a7

    iget-object v1, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    array-length v1, v1

    if-eqz v1, :cond_a7

    .line 559
    new-instance v1, Ljava/util/HashSet;

    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    array-length v3, v3

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 560
    .local v1, "implCRLs":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/x509/X509CRLImpl;>;"
    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_6f
    if-ge v5, v4, :cond_95

    aget-object v6, v3, v5

    .line 561
    .local v6, "crl":Ljava/security/cert/X509CRL;
    instance-of v7, v6, Lsun/security/x509/X509CRLImpl;

    if-eqz v7, :cond_7e

    .line 562
    move-object v7, v6

    check-cast v7, Lsun/security/x509/X509CRLImpl;

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_8b

    .line 565
    :cond_7e
    :try_start_7e
    invoke-virtual {v6}, Ljava/security/cert/X509CRL;->getEncoded()[B

    move-result-object v7

    .line 566
    .local v7, "encoded":[B
    new-instance v8, Lsun/security/x509/X509CRLImpl;

    invoke-direct {v8, v7}, Lsun/security/x509/X509CRLImpl;-><init>([B)V

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_8a
    .catch Ljava/security/cert/CRLException; {:try_start_7e .. :try_end_8a} :catch_8e

    .line 569
    nop

    .line 560
    .end local v6    # "crl":Ljava/security/cert/X509CRL;
    .end local v7    # "encoded":[B
    :goto_8b
    add-int/lit8 v5, v5, 0x1

    goto :goto_6f

    .line 567
    .restart local v6    # "crl":Ljava/security/cert/X509CRL;
    :catch_8e
    move-exception v2

    .line 568
    .local v2, "ce":Ljava/security/cert/CRLException;
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 575
    .end local v2    # "ce":Ljava/security/cert/CRLException;
    .end local v6    # "crl":Ljava/security/cert/X509CRL;
    :cond_95
    nop

    .line 576
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Lsun/security/x509/X509CRLImpl;

    invoke-interface {v1, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lsun/security/util/DerEncoder;

    .line 575
    const/16 v4, -0x5f

    invoke-virtual {v0, v4, v3}, Lsun/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun/security/util/DerEncoder;)V

    .line 580
    .end local v1    # "implCRLs":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/x509/X509CRLImpl;>;"
    :cond_a7
    iget-object v1, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    invoke-virtual {v0, v2, v1}, Lsun/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun/security/util/DerEncoder;)V

    .line 583
    new-instance v1, Lsun/security/util/DerValue;

    .line 584
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v2

    const/16 v3, 0x30

    invoke-direct {v1, v3, v2}, Lsun/security/util/DerValue;-><init>(B[B)V

    .line 587
    .local v1, "signedDataSeq":Lsun/security/util/DerValue;
    new-instance v2, Lsun/security/pkcs/ContentInfo;

    sget-object v3, Lsun/security/pkcs/ContentInfo;->SIGNED_DATA_OID:Lsun/security/util/ObjectIdentifier;

    invoke-direct {v2, v3, v1}, Lsun/security/pkcs/ContentInfo;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    .line 591
    .local v2, "block":Lsun/security/pkcs/ContentInfo;
    invoke-virtual {v2, p1}, Lsun/security/pkcs/ContentInfo;->encode(Lsun/security/util/DerOutputStream;)V

    .line 592
    return-void
.end method

.method public blacklist getCRLs()[Ljava/security/cert/X509CRL;
    .registers 2

    .line 710
    iget-object v0, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    if-eqz v0, :cond_d

    .line 711
    iget-object v0, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    invoke-virtual {v0}, [Ljava/security/cert/X509CRL;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509CRL;

    return-object v0

    .line 713
    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCertificate(Ljava/math/BigInteger;Lsun/security/x509/X500Name;)Ljava/security/cert/X509Certificate;
    .registers 7
    .param p1, "serial"    # Ljava/math/BigInteger;
    .param p2, "issuerName"    # Lsun/security/x509/X500Name;

    .line 735
    iget-object v0, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_2d

    .line 736
    iget-object v0, p0, Lsun/security/pkcs/PKCS7;->certIssuerNames:[Ljava/security/Principal;

    if-nez v0, :cond_b

    .line 737
    invoke-direct {p0}, Lsun/security/pkcs/PKCS7;->populateCertIssuerNames()V

    .line 738
    :cond_b
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    iget-object v1, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    array-length v1, v1

    if-ge v0, v1, :cond_2d

    .line 739
    iget-object v1, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    aget-object v1, v1, v0

    .line 740
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    .line 741
    .local v2, "thisSerial":Ljava/math/BigInteger;
    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->certIssuerNames:[Ljava/security/Principal;

    aget-object v3, v3, v0

    .line 742
    invoke-virtual {p2, v3}, Lsun/security/x509/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 744
    return-object v1

    .line 738
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    .end local v2    # "thisSerial":Ljava/math/BigInteger;
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 748
    .end local v0    # "i":I
    :cond_2d
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist test-api getCertificates()[Ljava/security/cert/X509Certificate;
    .registers 2

    .line 698
    iget-object v0, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_d

    .line 699
    iget-object v0, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, [Ljava/security/cert/X509Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    return-object v0

    .line 701
    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist getContentInfo()Lsun/security/pkcs/ContentInfo;
    .registers 2

    .line 688
    iget-object v0, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    return-object v0
.end method

.method public blacklist getDigestAlgorithmIds()[Lsun/security/x509/AlgorithmId;
    .registers 2

    .line 681
    iget-object v0, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    return-object v0
.end method

.method public greylist test-api getSignerInfos()[Lsun/security/pkcs/SignerInfo;
    .registers 2

    .line 723
    iget-object v0, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    return-object v0
.end method

.method public blacklist getVersion()Ljava/math/BigInteger;
    .registers 2

    .line 672
    iget-object v0, p0, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist isOldStyle()Z
    .registers 2

    .line 820
    iget-boolean v0, p0, Lsun/security/pkcs/PKCS7;->oldStyle:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 8

    .line 787
    const-string v0, ""

    .line 789
    .local v0, "out":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 790
    iget-object v1, p0, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    if-eqz v1, :cond_40

    .line 791
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "PKCS7 :: version: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    invoke-static {v3}, Lsun/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 792
    :cond_40
    iget-object v1, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    const-string v3, "\t"

    if-eqz v1, :cond_7f

    .line 793
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "PKCS7 :: digest AlgorithmIds: \n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 794
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5a
    iget-object v4, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    array-length v4, v4

    if-ge v1, v4, :cond_7f

    .line 795
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 794
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    .line 797
    .end local v1    # "i":I
    :cond_7f
    iget-object v1, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    const-string v4, ".   "

    if-eqz v1, :cond_c6

    .line 798
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "PKCS7 :: certificates: \n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 799
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_99
    iget-object v5, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    array-length v5, v5

    if-ge v1, v5, :cond_c6

    .line 800
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 799
    add-int/lit8 v1, v1, 0x1

    goto :goto_99

    .line 802
    .end local v1    # "i":I
    :cond_c6
    iget-object v1, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    if-eqz v1, :cond_10b

    .line 803
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "PKCS7 :: crls: \n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 804
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_de
    iget-object v5, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    array-length v5, v5

    if-ge v1, v5, :cond_10b

    .line 805
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 804
    add-int/lit8 v1, v1, 0x1

    goto :goto_de

    .line 807
    .end local v1    # "i":I
    :cond_10b
    iget-object v1, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    if-eqz v1, :cond_152

    .line 808
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "PKCS7 :: signer infos: \n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 809
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_123
    iget-object v4, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    array-length v4, v4

    if-ge v1, v4, :cond_152

    .line 810
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 809
    add-int/lit8 v1, v1, 0x1

    goto :goto_123

    .line 812
    .end local v1    # "i":I
    :cond_152
    return-object v0
.end method

.method public blacklist test-api verify(Lsun/security/pkcs/SignerInfo;Ljava/io/InputStream;)Lsun/security/pkcs/SignerInfo;
    .registers 4
    .param p1, "info"    # Lsun/security/pkcs/SignerInfo;
    .param p2, "dataInputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 622
    invoke-virtual {p1, p0, p2}, Lsun/security/pkcs/SignerInfo;->verify(Lsun/security/pkcs/PKCS7;Ljava/io/InputStream;)Lsun/security/pkcs/SignerInfo;

    move-result-object v0

    return-object v0
.end method

.method public greylist verify(Lsun/security/pkcs/SignerInfo;[B)Lsun/security/pkcs/SignerInfo;
    .registers 4
    .param p1, "info"    # Lsun/security/pkcs/SignerInfo;
    .param p2, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 605
    invoke-virtual {p1, p0, p2}, Lsun/security/pkcs/SignerInfo;->verify(Lsun/security/pkcs/PKCS7;[B)Lsun/security/pkcs/SignerInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist verify()[Lsun/security/pkcs/SignerInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 663
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsun/security/pkcs/PKCS7;->verify([B)[Lsun/security/pkcs/SignerInfo;

    move-result-object v0

    return-object v0
.end method

.method public greylist test-api verify([B)[Lsun/security/pkcs/SignerInfo;
    .registers 5
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 638
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 639
    .local v0, "intResult":Ljava/util/Vector;, "Ljava/util/Vector<Lsun/security/pkcs/SignerInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_1b

    .line 641
    iget-object v2, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2, p1}, Lsun/security/pkcs/PKCS7;->verify(Lsun/security/pkcs/SignerInfo;[B)Lsun/security/pkcs/SignerInfo;

    move-result-object v2

    .line 642
    .local v2, "signerInfo":Lsun/security/pkcs/SignerInfo;
    if-eqz v2, :cond_18

    .line 643
    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 639
    .end local v2    # "signerInfo":Lsun/security/pkcs/SignerInfo;
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 646
    .end local v1    # "i":I
    :cond_1b
    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 648
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Lsun/security/pkcs/SignerInfo;

    .line 649
    .local v1, "result":[Lsun/security/pkcs/SignerInfo;
    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 650
    return-object v1

    .line 652
    .end local v1    # "result":[Lsun/security/pkcs/SignerInfo;
    :cond_2b
    const/4 v1, 0x0

    return-object v1
.end method
