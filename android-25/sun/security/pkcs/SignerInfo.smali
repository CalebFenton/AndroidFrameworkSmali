.class public Lsun/security/pkcs/SignerInfo;
.super Ljava/lang/Object;
.source "SignerInfo.java"

# interfaces
.implements Lsun/security/util/DerEncoder;


# instance fields
.field authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

.field certificateSerialNumber:Ljava/math/BigInteger;

.field digestAlgorithmId:Lsun/security/x509/AlgorithmId;

.field digestEncryptionAlgorithmId:Lsun/security/x509/AlgorithmId;

.field encryptedDigest:[B

.field issuerName:Lsun/security/x509/X500Name;

.field unauthenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

.field version:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Lsun/security/util/DerInputStream;)V
    .locals 1
    .param p1, "derin"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lsun/security/pkcs/ParsingException;
        }
    .end annotation

    #@0
    .prologue
    .line 98
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lsun/security/pkcs/SignerInfo;-><init>(Lsun/security/util/DerInputStream;Z)V

    #@4
    .line 96
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerInputStream;Z)V
    .locals 8
    .param p1, "derin"    # Lsun/security/util/DerInputStream;
    .param p2, "oldStyle"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lsun/security/pkcs/ParsingException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 115
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getBigInteger()Ljava/math/BigInteger;

    #@8
    move-result-object v3

    #@9
    iput-object v3, p0, Lsun/security/pkcs/SignerInfo;->version:Ljava/math/BigInteger;

    #@b
    .line 118
    const/4 v3, 0x2

    #@c
    invoke-virtual {p1, v3}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    #@f
    move-result-object v0

    #@10
    .line 119
    .local v0, "issuerAndSerialNumber":[Lsun/security/util/DerValue;
    aget-object v3, v0, v6

    #@12
    invoke-virtual {v3}, Lsun/security/util/DerValue;->toByteArray()[B

    #@15
    move-result-object v1

    #@16
    .line 120
    .local v1, "issuerBytes":[B
    new-instance v3, Lsun/security/x509/X500Name;

    #@18
    new-instance v4, Lsun/security/util/DerValue;

    #@1a
    const/16 v5, 0x30

    #@1c
    invoke-direct {v4, v5, v1}, Lsun/security/util/DerValue;-><init>(B[B)V

    #@1f
    invoke-direct {v3, v4}, Lsun/security/x509/X500Name;-><init>(Lsun/security/util/DerValue;)V

    #@22
    iput-object v3, p0, Lsun/security/pkcs/SignerInfo;->issuerName:Lsun/security/x509/X500Name;

    #@24
    .line 122
    aget-object v3, v0, v7

    #@26
    invoke-virtual {v3}, Lsun/security/util/DerValue;->getBigInteger()Ljava/math/BigInteger;

    #@29
    move-result-object v3

    #@2a
    iput-object v3, p0, Lsun/security/pkcs/SignerInfo;->certificateSerialNumber:Ljava/math/BigInteger;

    #@2c
    .line 125
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@2f
    move-result-object v2

    #@30
    .line 127
    .local v2, "tmp":Lsun/security/util/DerValue;
    invoke-static {v2}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    #@33
    move-result-object v3

    #@34
    iput-object v3, p0, Lsun/security/pkcs/SignerInfo;->digestAlgorithmId:Lsun/security/x509/AlgorithmId;

    #@36
    .line 130
    if-eqz p2, :cond_2

    #@38
    .line 133
    invoke-virtual {p1, v6}, Lsun/security/util/DerInputStream;->getSet(I)[Lsun/security/util/DerValue;

    #@3b
    .line 144
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@3e
    move-result-object v2

    #@3f
    .line 146
    invoke-static {v2}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    #@42
    move-result-object v3

    #@43
    iput-object v3, p0, Lsun/security/pkcs/SignerInfo;->digestEncryptionAlgorithmId:Lsun/security/x509/AlgorithmId;

    #@45
    .line 149
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getOctetString()[B

    #@48
    move-result-object v3

    #@49
    iput-object v3, p0, Lsun/security/pkcs/SignerInfo;->encryptedDigest:[B

    #@4b
    .line 152
    if-eqz p2, :cond_3

    #@4d
    .line 155
    invoke-virtual {p1, v6}, Lsun/security/util/DerInputStream;->getSet(I)[Lsun/security/util/DerValue;

    #@50
    .line 167
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->available()I

    #@53
    move-result v3

    #@54
    if-eqz v3, :cond_4

    #@56
    .line 168
    new-instance v3, Lsun/security/pkcs/ParsingException;

    #@58
    const-string/jumbo v4, "extra data at the end"

    #@5b
    invoke-direct {v3, v4}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    #@5e
    throw v3

    #@5f
    .line 137
    :cond_2
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->peekByte()I

    #@62
    move-result v3

    #@63
    int-to-byte v3, v3

    #@64
    const/16 v4, -0x60

    #@66
    if-ne v3, v4, :cond_0

    #@68
    .line 138
    new-instance v3, Lsun/security/pkcs/PKCS9Attributes;

    #@6a
    invoke-direct {v3, p1}, Lsun/security/pkcs/PKCS9Attributes;-><init>(Lsun/security/util/DerInputStream;)V

    #@6d
    iput-object v3, p0, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    #@6f
    goto :goto_0

    #@70
    .line 159
    :cond_3
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->available()I

    #@73
    move-result v3

    #@74
    if-eqz v3, :cond_1

    #@76
    .line 160
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->peekByte()I

    #@79
    move-result v3

    #@7a
    int-to-byte v3, v3

    #@7b
    const/16 v4, -0x5f

    #@7d
    if-ne v3, v4, :cond_1

    #@7f
    .line 162
    new-instance v3, Lsun/security/pkcs/PKCS9Attributes;

    #@81
    invoke-direct {v3, p1, v7}, Lsun/security/pkcs/PKCS9Attributes;-><init>(Lsun/security/util/DerInputStream;Z)V

    #@84
    .line 161
    iput-object v3, p0, Lsun/security/pkcs/SignerInfo;->unauthenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    #@86
    goto :goto_1

    #@87
    .line 112
    :cond_4
    return-void
.end method

.method public constructor <init>(Lsun/security/x509/X500Name;Ljava/math/BigInteger;Lsun/security/x509/AlgorithmId;Lsun/security/pkcs/PKCS9Attributes;Lsun/security/x509/AlgorithmId;[BLsun/security/pkcs/PKCS9Attributes;)V
    .locals 1
    .param p1, "issuerName"    # Lsun/security/x509/X500Name;
    .param p2, "serial"    # Ljava/math/BigInteger;
    .param p3, "digestAlgorithmId"    # Lsun/security/x509/AlgorithmId;
    .param p4, "authenticatedAttributes"    # Lsun/security/pkcs/PKCS9Attributes;
    .param p5, "digestEncryptionAlgorithmId"    # Lsun/security/x509/AlgorithmId;
    .param p6, "encryptedDigest"    # [B
    .param p7, "unauthenticatedAttributes"    # Lsun/security/pkcs/PKCS9Attributes;

    #@0
    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 82
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    #@5
    iput-object v0, p0, Lsun/security/pkcs/SignerInfo;->version:Ljava/math/BigInteger;

    #@7
    .line 83
    iput-object p1, p0, Lsun/security/pkcs/SignerInfo;->issuerName:Lsun/security/x509/X500Name;

    #@9
    .line 84
    iput-object p2, p0, Lsun/security/pkcs/SignerInfo;->certificateSerialNumber:Ljava/math/BigInteger;

    #@b
    .line 85
    iput-object p3, p0, Lsun/security/pkcs/SignerInfo;->digestAlgorithmId:Lsun/security/x509/AlgorithmId;

    #@d
    .line 86
    iput-object p4, p0, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    #@f
    .line 87
    iput-object p5, p0, Lsun/security/pkcs/SignerInfo;->digestEncryptionAlgorithmId:Lsun/security/x509/AlgorithmId;

    #@11
    .line 88
    iput-object p6, p0, Lsun/security/pkcs/SignerInfo;->encryptedDigest:[B

    #@13
    .line 89
    iput-object p7, p0, Lsun/security/pkcs/SignerInfo;->unauthenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    #@15
    .line 81
    return-void
.end method

.method public constructor <init>(Lsun/security/x509/X500Name;Ljava/math/BigInteger;Lsun/security/x509/AlgorithmId;Lsun/security/x509/AlgorithmId;[B)V
    .locals 1
    .param p1, "issuerName"    # Lsun/security/x509/X500Name;
    .param p2, "serial"    # Ljava/math/BigInteger;
    .param p3, "digestAlgorithmId"    # Lsun/security/x509/AlgorithmId;
    .param p4, "digestEncryptionAlgorithmId"    # Lsun/security/x509/AlgorithmId;
    .param p5, "encryptedDigest"    # [B

    #@0
    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 67
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    #@5
    iput-object v0, p0, Lsun/security/pkcs/SignerInfo;->version:Ljava/math/BigInteger;

    #@7
    .line 68
    iput-object p1, p0, Lsun/security/pkcs/SignerInfo;->issuerName:Lsun/security/x509/X500Name;

    #@9
    .line 69
    iput-object p2, p0, Lsun/security/pkcs/SignerInfo;->certificateSerialNumber:Ljava/math/BigInteger;

    #@b
    .line 70
    iput-object p3, p0, Lsun/security/pkcs/SignerInfo;->digestAlgorithmId:Lsun/security/x509/AlgorithmId;

    #@d
    .line 71
    iput-object p4, p0, Lsun/security/pkcs/SignerInfo;->digestEncryptionAlgorithmId:Lsun/security/x509/AlgorithmId;

    #@f
    .line 72
    iput-object p5, p0, Lsun/security/pkcs/SignerInfo;->encryptedDigest:[B

    #@11
    .line 66
    return-void
.end method

.method private static convertToStandardName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "internalName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 281
    const-string/jumbo v0, "SHA"

    #@3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 282
    const-string/jumbo v0, "SHA-1"

    #@c
    return-object v0

    #@d
    .line 283
    :cond_0
    const-string/jumbo v0, "SHA224"

    #@10
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 284
    const-string/jumbo v0, "SHA-224"

    #@19
    return-object v0

    #@1a
    .line 285
    :cond_1
    const-string/jumbo v0, "SHA256"

    #@1d
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_2

    #@23
    .line 286
    const-string/jumbo v0, "SHA-256"

    #@26
    return-object v0

    #@27
    .line 287
    :cond_2
    const-string/jumbo v0, "SHA384"

    #@2a
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v0

    #@2e
    if-eqz v0, :cond_3

    #@30
    .line 288
    const-string/jumbo v0, "SHA-384"

    #@33
    return-object v0

    #@34
    .line 289
    :cond_3
    const-string/jumbo v0, "SHA512"

    #@37
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result v0

    #@3b
    if-eqz v0, :cond_4

    #@3d
    .line 290
    const-string/jumbo v0, "SHA-512"

    #@40
    return-object v0

    #@41
    .line 292
    :cond_4
    return-object p0
.end method


# virtual methods
.method public derEncode(Ljava/io/OutputStream;)V
    .locals 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v5, 0x30

    #@2
    .line 187
    new-instance v1, Lsun/security/util/DerOutputStream;

    #@4
    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    #@7
    .line 188
    .local v1, "seq":Lsun/security/util/DerOutputStream;
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->version:Ljava/math/BigInteger;

    #@9
    invoke-virtual {v1, v3}, Lsun/security/util/DerOutputStream;->putInteger(Ljava/math/BigInteger;)V

    #@c
    .line 189
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@e
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@11
    .line 190
    .local v0, "issuerAndSerialNumber":Lsun/security/util/DerOutputStream;
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->issuerName:Lsun/security/x509/X500Name;

    #@13
    invoke-virtual {v3, v0}, Lsun/security/x509/X500Name;->encode(Lsun/security/util/DerOutputStream;)V

    #@16
    .line 191
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->certificateSerialNumber:Ljava/math/BigInteger;

    #@18
    invoke-virtual {v0, v3}, Lsun/security/util/DerOutputStream;->putInteger(Ljava/math/BigInteger;)V

    #@1b
    .line 192
    invoke-virtual {v1, v5, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    #@1e
    .line 194
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->digestAlgorithmId:Lsun/security/x509/AlgorithmId;

    #@20
    invoke-virtual {v3, v1}, Lsun/security/x509/AlgorithmId;->encode(Lsun/security/util/DerOutputStream;)V

    #@23
    .line 197
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    #@25
    if-eqz v3, :cond_0

    #@27
    .line 198
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    #@29
    const/16 v4, -0x60

    #@2b
    invoke-virtual {v3, v4, v1}, Lsun/security/pkcs/PKCS9Attributes;->encode(BLjava/io/OutputStream;)V

    #@2e
    .line 200
    :cond_0
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->digestEncryptionAlgorithmId:Lsun/security/x509/AlgorithmId;

    #@30
    invoke-virtual {v3, v1}, Lsun/security/x509/AlgorithmId;->encode(Lsun/security/util/DerOutputStream;)V

    #@33
    .line 202
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->encryptedDigest:[B

    #@35
    invoke-virtual {v1, v3}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    #@38
    .line 205
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->unauthenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    #@3a
    if-eqz v3, :cond_1

    #@3c
    .line 206
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->unauthenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    #@3e
    const/16 v4, -0x5f

    #@40
    invoke-virtual {v3, v4, v1}, Lsun/security/pkcs/PKCS9Attributes;->encode(BLjava/io/OutputStream;)V

    #@43
    .line 208
    :cond_1
    new-instance v2, Lsun/security/util/DerOutputStream;

    #@45
    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    #@48
    .line 209
    .local v2, "tmp":Lsun/security/util/DerOutputStream;
    invoke-virtual {v2, v5, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    #@4b
    .line 211
    invoke-virtual {v2}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@4e
    move-result-object v3

    #@4f
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    #@52
    .line 186
    return-void
.end method

.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 0
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 174
    invoke-virtual {p0, p1}, Lsun/security/pkcs/SignerInfo;->derEncode(Ljava/io/OutputStream;)V

    #@3
    .line 172
    return-void
.end method

.method public getAuthenticatedAttributes()Lsun/security/pkcs/PKCS9Attributes;
    .locals 1

    #@0
    .prologue
    .line 472
    iget-object v0, p0, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    #@2
    return-object v0
.end method

.method public getCertificate(Lsun/security/pkcs/PKCS7;)Ljava/security/cert/X509Certificate;
    .locals 2
    .param p1, "block"    # Lsun/security/pkcs/PKCS7;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 222
    iget-object v0, p0, Lsun/security/pkcs/SignerInfo;->certificateSerialNumber:Ljava/math/BigInteger;

    #@2
    iget-object v1, p0, Lsun/security/pkcs/SignerInfo;->issuerName:Lsun/security/x509/X500Name;

    #@4
    invoke-virtual {p1, v0, v1}, Lsun/security/pkcs/PKCS7;->getCertificate(Ljava/math/BigInteger;Lsun/security/x509/X500Name;)Ljava/security/cert/X509Certificate;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getCertificateChain(Lsun/security/pkcs/PKCS7;)Ljava/util/ArrayList;
    .locals 11
    .param p1, "block"    # Lsun/security/pkcs/PKCS7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/pkcs/PKCS7;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 232
    iget-object v8, p0, Lsun/security/pkcs/SignerInfo;->certificateSerialNumber:Ljava/math/BigInteger;

    #@3
    iget-object v9, p0, Lsun/security/pkcs/SignerInfo;->issuerName:Lsun/security/x509/X500Name;

    #@5
    invoke-virtual {p1, v8, v9}, Lsun/security/pkcs/PKCS7;->getCertificate(Ljava/math/BigInteger;Lsun/security/x509/X500Name;)Ljava/security/cert/X509Certificate;

    #@8
    move-result-object v7

    #@9
    .line 233
    .local v7, "userCert":Ljava/security/cert/X509Certificate;
    if-nez v7, :cond_0

    #@b
    .line 234
    return-object v10

    #@c
    .line 236
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    #@e
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@11
    .line 237
    .local v0, "certList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/X509Certificate;>;"
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@14
    .line 239
    invoke-virtual {p1}, Lsun/security/pkcs/PKCS7;->getCertificates()[Ljava/security/cert/X509Certificate;

    #@17
    move-result-object v4

    #@18
    .line 240
    .local v4, "pkcsCerts":[Ljava/security/cert/X509Certificate;
    if-eqz v4, :cond_1

    #@1a
    .line 241
    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    #@1d
    move-result-object v8

    #@1e
    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    #@21
    move-result-object v9

    #@22
    invoke-interface {v8, v9}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v8

    #@26
    .line 240
    if-eqz v8, :cond_2

    #@28
    .line 242
    :cond_1
    return-object v0

    #@29
    .line 245
    :cond_2
    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    #@2c
    move-result-object v2

    #@2d
    .line 246
    .local v2, "issuer":Ljava/security/Principal;
    const/4 v5, 0x0

    #@2e
    .line 248
    .local v5, "start":I
    :cond_3
    const/4 v3, 0x0

    #@2f
    .line 249
    .local v3, "match":Z
    move v1, v5

    #@30
    .line 250
    .local v1, "i":I
    :goto_0
    array-length v8, v4

    #@31
    if-ge v1, v8, :cond_4

    #@33
    .line 251
    aget-object v8, v4, v1

    #@35
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    #@38
    move-result-object v8

    #@39
    invoke-interface {v2, v8}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    #@3c
    move-result v8

    #@3d
    if-eqz v8, :cond_6

    #@3f
    .line 253
    aget-object v8, v4, v1

    #@41
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@44
    .line 256
    aget-object v8, v4, v1

    #@46
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    #@49
    move-result-object v8

    #@4a
    .line 257
    aget-object v9, v4, v1

    #@4c
    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    #@4f
    move-result-object v9

    #@50
    .line 256
    invoke-interface {v8, v9}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    #@53
    move-result v8

    #@54
    if-eqz v8, :cond_5

    #@56
    .line 258
    array-length v5, v4

    #@57
    .line 266
    :goto_1
    const/4 v3, 0x1

    #@58
    .line 272
    :cond_4
    if-nez v3, :cond_3

    #@5a
    .line 276
    return-object v0

    #@5b
    .line 260
    :cond_5
    aget-object v8, v4, v1

    #@5d
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    #@60
    move-result-object v2

    #@61
    .line 261
    aget-object v6, v4, v5

    #@63
    .line 262
    .local v6, "tmpCert":Ljava/security/cert/X509Certificate;
    aget-object v8, v4, v1

    #@65
    aput-object v8, v4, v5

    #@67
    .line 263
    aput-object v6, v4, v1

    #@69
    .line 264
    add-int/lit8 v5, v5, 0x1

    #@6b
    goto :goto_1

    #@6c
    .line 269
    .end local v6    # "tmpCert":Ljava/security/cert/X509Certificate;
    :cond_6
    add-int/lit8 v1, v1, 0x1

    #@6e
    goto :goto_0
.end method

.method public getCertificateSerialNumber()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 464
    iget-object v0, p0, Lsun/security/pkcs/SignerInfo;->certificateSerialNumber:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getDigestAlgorithmId()Lsun/security/x509/AlgorithmId;
    .locals 1

    #@0
    .prologue
    .line 468
    iget-object v0, p0, Lsun/security/pkcs/SignerInfo;->digestAlgorithmId:Lsun/security/x509/AlgorithmId;

    #@2
    return-object v0
.end method

.method public getDigestEncryptionAlgorithmId()Lsun/security/x509/AlgorithmId;
    .locals 1

    #@0
    .prologue
    .line 476
    iget-object v0, p0, Lsun/security/pkcs/SignerInfo;->digestEncryptionAlgorithmId:Lsun/security/x509/AlgorithmId;

    #@2
    return-object v0
.end method

.method public getEncryptedDigest()[B
    .locals 1

    #@0
    .prologue
    .line 480
    iget-object v0, p0, Lsun/security/pkcs/SignerInfo;->encryptedDigest:[B

    #@2
    return-object v0
.end method

.method public getIssuerName()Lsun/security/x509/X500Name;
    .locals 1

    #@0
    .prologue
    .line 460
    iget-object v0, p0, Lsun/security/pkcs/SignerInfo;->issuerName:Lsun/security/x509/X500Name;

    #@2
    return-object v0
.end method

.method public getUnauthenticatedAttributes()Lsun/security/pkcs/PKCS9Attributes;
    .locals 1

    #@0
    .prologue
    .line 484
    iget-object v0, p0, Lsun/security/pkcs/SignerInfo;->unauthenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    #@2
    return-object v0
.end method

.method public getVersion()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 456
    iget-object v0, p0, Lsun/security/pkcs/SignerInfo;->version:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 488
    new-instance v0, Lsun/misc/HexDumpEncoder;

    #@2
    invoke-direct {v0}, Lsun/misc/HexDumpEncoder;-><init>()V

    #@5
    .line 490
    .local v0, "hexDump":Lsun/misc/HexDumpEncoder;
    const-string/jumbo v1, ""

    #@8
    .line 492
    .local v1, "out":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    const-string/jumbo v3, "Signer Info for (issuer): "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->issuerName:Lsun/security/x509/X500Name;

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    const-string/jumbo v3, "\n"

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    .line 493
    new-instance v2, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    const-string/jumbo v3, "\tversion: "

    #@35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->version:Ljava/math/BigInteger;

    #@3b
    invoke-static {v3}, Lsun/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    #@3e
    move-result-object v3

    #@3f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v2

    #@43
    const-string/jumbo v3, "\n"

    #@46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v2

    #@4a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v1

    #@4e
    .line 494
    new-instance v2, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v2

    #@57
    const-string/jumbo v3, "\tcertificateSerialNumber: "

    #@5a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v2

    #@5e
    .line 495
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->certificateSerialNumber:Ljava/math/BigInteger;

    #@60
    invoke-static {v3}, Lsun/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    #@63
    move-result-object v3

    #@64
    .line 494
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v2

    #@68
    .line 495
    const-string/jumbo v3, "\n"

    #@6b
    .line 494
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v2

    #@6f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v1

    #@73
    .line 496
    new-instance v2, Ljava/lang/StringBuilder;

    #@75
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@78
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v2

    #@7c
    const-string/jumbo v3, "\tdigestAlgorithmId: "

    #@7f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v2

    #@83
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->digestAlgorithmId:Lsun/security/x509/AlgorithmId;

    #@85
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v2

    #@89
    const-string/jumbo v3, "\n"

    #@8c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v2

    #@90
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@93
    move-result-object v1

    #@94
    .line 497
    iget-object v2, p0, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    #@96
    if-eqz v2, :cond_0

    #@98
    .line 498
    new-instance v2, Ljava/lang/StringBuilder;

    #@9a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9d
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v2

    #@a1
    const-string/jumbo v3, "\tauthenticatedAttributes: "

    #@a4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v2

    #@a8
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    #@aa
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v2

    #@ae
    .line 499
    const-string/jumbo v3, "\n"

    #@b1
    .line 498
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v2

    #@b5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b8
    move-result-object v1

    #@b9
    .line 501
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@bb
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@be
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v2

    #@c2
    const-string/jumbo v3, "\tdigestEncryptionAlgorithmId: "

    #@c5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v2

    #@c9
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->digestEncryptionAlgorithmId:Lsun/security/x509/AlgorithmId;

    #@cb
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v2

    #@cf
    .line 502
    const-string/jumbo v3, "\n"

    #@d2
    .line 501
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v2

    #@d6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d9
    move-result-object v1

    #@da
    .line 504
    new-instance v2, Ljava/lang/StringBuilder;

    #@dc
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@df
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v2

    #@e3
    const-string/jumbo v3, "\tencryptedDigest: \n"

    #@e6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v2

    #@ea
    .line 505
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->encryptedDigest:[B

    #@ec
    invoke-virtual {v0, v3}, Lsun/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    #@ef
    move-result-object v3

    #@f0
    .line 504
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f3
    move-result-object v2

    #@f4
    .line 505
    const-string/jumbo v3, "\n"

    #@f7
    .line 504
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v2

    #@fb
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fe
    move-result-object v1

    #@ff
    .line 506
    iget-object v2, p0, Lsun/security/pkcs/SignerInfo;->unauthenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    #@101
    if-eqz v2, :cond_1

    #@103
    .line 507
    new-instance v2, Ljava/lang/StringBuilder;

    #@105
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@108
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10b
    move-result-object v2

    #@10c
    const-string/jumbo v3, "\tunauthenticatedAttributes: "

    #@10f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@112
    move-result-object v2

    #@113
    .line 508
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->unauthenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    #@115
    .line 507
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@118
    move-result-object v2

    #@119
    .line 508
    const-string/jumbo v3, "\n"

    #@11c
    .line 507
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11f
    move-result-object v2

    #@120
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@123
    move-result-object v1

    #@124
    .line 510
    :cond_1
    return-object v1
.end method

.method verify(Lsun/security/pkcs/PKCS7;)Lsun/security/pkcs/SignerInfo;
    .locals 1
    .param p1, "block"    # Lsun/security/pkcs/PKCS7;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 451
    const/4 v0, 0x0

    #@1
    check-cast v0, [B

    #@3
    invoke-virtual {p0, p1, v0}, Lsun/security/pkcs/SignerInfo;->verify(Lsun/security/pkcs/PKCS7;[B)Lsun/security/pkcs/SignerInfo;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method verify(Lsun/security/pkcs/PKCS7;Ljava/io/InputStream;)Lsun/security/pkcs/SignerInfo;
    .locals 30
    .param p1, "block"    # Lsun/security/pkcs/PKCS7;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 314
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lsun/security/pkcs/PKCS7;->getContentInfo()Lsun/security/pkcs/ContentInfo;

    #@3
    move-result-object v7

    #@4
    .line 315
    .local v7, "content":Lsun/security/pkcs/ContentInfo;
    if-nez p2, :cond_0

    #@6
    .line 316
    new-instance v16, Ljava/io/ByteArrayInputStream;

    #@8
    invoke-virtual {v7}, Lsun/security/pkcs/ContentInfo;->getContentBytes()[B

    #@b
    move-result-object v27

    #@c
    move-object/from16 v0, v16

    #@e
    move-object/from16 v1, v27

    #@10
    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@13
    .end local p2    # "inputStream":Ljava/io/InputStream;
    .local v16, "inputStream":Ljava/io/InputStream;
    move-object/from16 p2, v16

    #@15
    .line 319
    .end local v16    # "inputStream":Ljava/io/InputStream;
    .restart local p2    # "inputStream":Ljava/io/InputStream;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lsun/security/pkcs/SignerInfo;->getDigestAlgorithmId()Lsun/security/x509/AlgorithmId;

    #@18
    move-result-object v27

    #@19
    invoke-virtual/range {v27 .. v27}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    #@1c
    move-result-object v11

    #@1d
    .line 325
    .local v11, "digestAlgname":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1f
    iget-object v0, v0, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    #@21
    move-object/from16 v27, v0

    #@23
    if-nez v27, :cond_2

    #@25
    .line 326
    move-object/from16 v9, p2

    #@27
    .line 374
    .local v9, "dataSigned":Ljava/io/InputStream;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lsun/security/pkcs/SignerInfo;->getDigestEncryptionAlgorithmId()Lsun/security/x509/AlgorithmId;

    #@2a
    move-result-object v27

    #@2b
    invoke-virtual/range {v27 .. v27}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    #@2e
    move-result-object v14

    #@2f
    .line 378
    .local v14, "encryptionAlgname":Ljava/lang/String;
    invoke-static {v14}, Lsun/security/x509/AlgorithmId;->getEncAlgFromSigAlg(Ljava/lang/String;)Ljava/lang/String;

    #@32
    move-result-object v26

    #@33
    .line 379
    .local v26, "tmp":Ljava/lang/String;
    if-eqz v26, :cond_1

    #@35
    move-object/from16 v14, v26

    #@37
    .line 380
    :cond_1
    invoke-static {v11, v14}, Lsun/security/x509/AlgorithmId;->makeSigAlg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    .line 383
    .local v3, "algname":Ljava/lang/String;
    invoke-static {v3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    #@3e
    move-result-object v25

    #@3f
    .line 384
    .local v25, "sig":Ljava/security/Signature;
    invoke-virtual/range {p0 .. p1}, Lsun/security/pkcs/SignerInfo;->getCertificate(Lsun/security/pkcs/PKCS7;)Ljava/security/cert/X509Certificate;

    #@42
    move-result-object v5

    #@43
    .line 386
    .local v5, "cert":Ljava/security/cert/X509Certificate;
    if-nez v5, :cond_9

    #@45
    .line 387
    const/16 v27, 0x0

    #@47
    return-object v27

    #@48
    .line 331
    .end local v3    # "algname":Ljava/lang/String;
    .end local v5    # "cert":Ljava/security/cert/X509Certificate;
    .end local v9    # "dataSigned":Ljava/io/InputStream;
    .end local v14    # "encryptionAlgname":Ljava/lang/String;
    .end local v25    # "sig":Ljava/security/Signature;
    .end local v26    # "tmp":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    #@4a
    iget-object v0, v0, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    #@4c
    move-object/from16 v27, v0

    #@4e
    .line 332
    sget-object v28, Lsun/security/pkcs/PKCS9Attribute;->CONTENT_TYPE_OID:Lsun/security/util/ObjectIdentifier;

    #@50
    .line 331
    invoke-virtual/range {v27 .. v28}, Lsun/security/pkcs/PKCS9Attributes;->getAttributeValue(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Object;

    #@53
    move-result-object v8

    #@54
    .line 330
    check-cast v8, Lsun/security/util/ObjectIdentifier;

    #@56
    .line 333
    .local v8, "contentType":Lsun/security/util/ObjectIdentifier;
    if-eqz v8, :cond_3

    #@58
    .line 334
    iget-object v0, v7, Lsun/security/pkcs/ContentInfo;->contentType:Lsun/security/util/ObjectIdentifier;

    #@5a
    move-object/from16 v27, v0

    #@5c
    move-object/from16 v0, v27

    #@5e
    invoke-virtual {v8, v0}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    #@61
    move-result v27

    #@62
    if-eqz v27, :cond_3

    #@64
    .line 339
    move-object/from16 v0, p0

    #@66
    iget-object v0, v0, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    #@68
    move-object/from16 v27, v0

    #@6a
    .line 340
    sget-object v28, Lsun/security/pkcs/PKCS9Attribute;->MESSAGE_DIGEST_OID:Lsun/security/util/ObjectIdentifier;

    #@6c
    .line 339
    invoke-virtual/range {v27 .. v28}, Lsun/security/pkcs/PKCS9Attributes;->getAttributeValue(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Object;

    #@6f
    move-result-object v22

    #@70
    .line 338
    check-cast v22, [B

    #@72
    .line 342
    .local v22, "messageDigest":[B
    if-nez v22, :cond_4

    #@74
    .line 343
    const/16 v27, 0x0

    #@76
    return-object v27

    #@77
    .line 335
    .end local v22    # "messageDigest":[B
    :cond_3
    const/16 v27, 0x0

    #@79
    return-object v27

    #@7a
    .line 346
    .restart local v22    # "messageDigest":[B
    :cond_4
    invoke-static {v11}, Lsun/security/pkcs/SignerInfo;->convertToStandardName(Ljava/lang/String;)Ljava/lang/String;

    #@7d
    move-result-object v27

    #@7e
    .line 345
    invoke-static/range {v27 .. v27}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@81
    move-result-object v21

    #@82
    .line 348
    .local v21, "md":Ljava/security/MessageDigest;
    const/16 v27, 0x1000

    #@84
    move/from16 v0, v27

    #@86
    new-array v4, v0, [B

    #@88
    .line 349
    .local v4, "buffer":[B
    const/16 v24, 0x0

    #@8a
    .line 350
    .local v24, "read":I
    :goto_1
    move-object/from16 v0, p2

    #@8c
    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    #@8f
    move-result v24

    #@90
    const/16 v27, -0x1

    #@92
    move/from16 v0, v24

    #@94
    move/from16 v1, v27

    #@96
    if-eq v0, v1, :cond_5

    #@98
    .line 351
    const/16 v27, 0x0

    #@9a
    move-object/from16 v0, v21

    #@9c
    move/from16 v1, v27

    #@9e
    move/from16 v2, v24

    #@a0
    invoke-virtual {v0, v4, v1, v2}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    #@a3
    goto :goto_1

    #@a4
    .line 437
    .end local v4    # "buffer":[B
    .end local v7    # "content":Lsun/security/pkcs/ContentInfo;
    .end local v8    # "contentType":Lsun/security/util/ObjectIdentifier;
    .end local v11    # "digestAlgname":Ljava/lang/String;
    .end local v21    # "md":Ljava/security/MessageDigest;
    .end local v22    # "messageDigest":[B
    .end local v24    # "read":I
    :catch_0
    move-exception v12

    #@a5
    .line 438
    .local v12, "e":Ljava/io/IOException;
    new-instance v27, Ljava/security/SignatureException;

    #@a7
    new-instance v28, Ljava/lang/StringBuilder;

    #@a9
    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    #@ac
    const-string/jumbo v29, "IO error verifying signature:\n"

    #@af
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v28

    #@b3
    .line 439
    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@b6
    move-result-object v29

    #@b7
    .line 438
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v28

    #@bb
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@be
    move-result-object v28

    #@bf
    invoke-direct/range {v27 .. v28}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@c2
    throw v27

    #@c3
    .line 353
    .end local v12    # "e":Ljava/io/IOException;
    .restart local v4    # "buffer":[B
    .restart local v7    # "content":Lsun/security/pkcs/ContentInfo;
    .restart local v8    # "contentType":Lsun/security/util/ObjectIdentifier;
    .restart local v11    # "digestAlgname":Ljava/lang/String;
    .restart local v21    # "md":Ljava/security/MessageDigest;
    .restart local v22    # "messageDigest":[B
    .restart local v24    # "read":I
    :cond_5
    :try_start_1
    invoke-virtual/range {v21 .. v21}, Ljava/security/MessageDigest;->digest()[B

    #@c6
    move-result-object v6

    #@c7
    .line 355
    .local v6, "computedMessageDigest":[B
    move-object/from16 v0, v22

    #@c9
    array-length v0, v0

    #@ca
    move/from16 v27, v0

    #@cc
    array-length v0, v6

    #@cd
    move/from16 v28, v0

    #@cf
    move/from16 v0, v27

    #@d1
    move/from16 v1, v28

    #@d3
    if-eq v0, v1, :cond_6

    #@d5
    .line 356
    const/16 v27, 0x0

    #@d7
    return-object v27

    #@d8
    .line 357
    :cond_6
    const/4 v15, 0x0

    #@d9
    .local v15, "i":I
    :goto_2
    move-object/from16 v0, v22

    #@db
    array-length v0, v0

    #@dc
    move/from16 v27, v0

    #@de
    move/from16 v0, v27

    #@e0
    if-ge v15, v0, :cond_8

    #@e2
    .line 358
    aget-byte v27, v22, v15

    #@e4
    aget-byte v28, v6, v15

    #@e6
    move/from16 v0, v27

    #@e8
    move/from16 v1, v28

    #@ea
    if-eq v0, v1, :cond_7

    #@ec
    .line 359
    const/16 v27, 0x0

    #@ee
    return-object v27

    #@ef
    .line 357
    :cond_7
    add-int/lit8 v15, v15, 0x1

    #@f1
    goto :goto_2

    #@f2
    .line 368
    :cond_8
    new-instance v9, Ljava/io/ByteArrayInputStream;

    #@f4
    move-object/from16 v0, p0

    #@f6
    iget-object v0, v0, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    #@f8
    move-object/from16 v27, v0

    #@fa
    invoke-virtual/range {v27 .. v27}, Lsun/security/pkcs/PKCS9Attributes;->getDerEncoding()[B

    #@fd
    move-result-object v27

    #@fe
    move-object/from16 v0, v27

    #@100
    invoke-direct {v9, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@103
    .restart local v9    # "dataSigned":Ljava/io/InputStream;
    goto/16 :goto_0

    #@105
    .line 389
    .end local v4    # "buffer":[B
    .end local v6    # "computedMessageDigest":[B
    .end local v8    # "contentType":Lsun/security/util/ObjectIdentifier;
    .end local v15    # "i":I
    .end local v21    # "md":Ljava/security/MessageDigest;
    .end local v22    # "messageDigest":[B
    .end local v24    # "read":I
    .restart local v3    # "algname":Ljava/lang/String;
    .restart local v5    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v14    # "encryptionAlgname":Ljava/lang/String;
    .restart local v25    # "sig":Ljava/security/Signature;
    .restart local v26    # "tmp":Ljava/lang/String;
    :cond_9
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->hasUnsupportedCriticalExtension()Z

    #@108
    move-result v27

    #@109
    if-eqz v27, :cond_a

    #@10b
    .line 390
    new-instance v27, Ljava/security/SignatureException;

    #@10d
    const-string/jumbo v28, "Certificate has unsupported critical extension(s)"

    #@110
    invoke-direct/range {v27 .. v28}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@113
    throw v27
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1

    #@114
    .line 441
    .end local v3    # "algname":Ljava/lang/String;
    .end local v5    # "cert":Ljava/security/cert/X509Certificate;
    .end local v7    # "content":Lsun/security/pkcs/ContentInfo;
    .end local v9    # "dataSigned":Ljava/io/InputStream;
    .end local v11    # "digestAlgname":Ljava/lang/String;
    .end local v14    # "encryptionAlgname":Ljava/lang/String;
    .end local v25    # "sig":Ljava/security/Signature;
    .end local v26    # "tmp":Ljava/lang/String;
    :catch_1
    move-exception v13

    #@115
    .line 442
    .local v13, "e":Ljava/security/InvalidKeyException;
    new-instance v27, Ljava/security/SignatureException;

    #@117
    new-instance v28, Ljava/lang/StringBuilder;

    #@119
    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    #@11c
    const-string/jumbo v29, "InvalidKey: "

    #@11f
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@122
    move-result-object v28

    #@123
    invoke-virtual {v13}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    #@126
    move-result-object v29

    #@127
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12a
    move-result-object v28

    #@12b
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12e
    move-result-object v28

    #@12f
    invoke-direct/range {v27 .. v28}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@132
    throw v27

    #@133
    .line 398
    .end local v13    # "e":Ljava/security/InvalidKeyException;
    .restart local v3    # "algname":Ljava/lang/String;
    .restart local v5    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v7    # "content":Lsun/security/pkcs/ContentInfo;
    .restart local v9    # "dataSigned":Ljava/io/InputStream;
    .restart local v11    # "digestAlgname":Ljava/lang/String;
    .restart local v14    # "encryptionAlgname":Ljava/lang/String;
    .restart local v25    # "sig":Ljava/security/Signature;
    .restart local v26    # "tmp":Ljava/lang/String;
    :cond_a
    :try_start_2
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_1

    #@136
    move-result-object v20

    #@137
    .line 399
    .local v20, "keyUsageBits":[Z
    if-eqz v20, :cond_b

    #@139
    .line 406
    :try_start_3
    new-instance v19, Lsun/security/x509/KeyUsageExtension;

    #@13b
    invoke-direct/range {v19 .. v20}, Lsun/security/x509/KeyUsageExtension;-><init>([Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_1

    #@13e
    .line 413
    .local v19, "keyUsage":Lsun/security/x509/KeyUsageExtension;
    :try_start_4
    const-string/jumbo v27, "digital_signature"

    #@141
    .line 412
    move-object/from16 v0, v19

    #@143
    move-object/from16 v1, v27

    #@145
    invoke-virtual {v0, v1}, Lsun/security/x509/KeyUsageExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@148
    move-result-object v27

    #@149
    check-cast v27, Ljava/lang/Boolean;

    #@14b
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Boolean;->booleanValue()Z

    #@14e
    move-result v10

    #@14f
    .line 416
    .local v10, "digSigAllowed":Z
    const-string/jumbo v27, "non_repudiation"

    #@152
    .line 415
    move-object/from16 v0, v19

    #@154
    move-object/from16 v1, v27

    #@156
    invoke-virtual {v0, v1}, Lsun/security/x509/KeyUsageExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@159
    move-result-object v27

    #@15a
    check-cast v27, Ljava/lang/Boolean;

    #@15c
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Boolean;->booleanValue()Z

    #@15f
    move-result v23

    #@160
    .line 418
    .local v23, "nonRepuAllowed":Z
    if-nez v10, :cond_b

    #@162
    if-eqz v23, :cond_c

    #@164
    .line 425
    .end local v10    # "digSigAllowed":Z
    .end local v19    # "keyUsage":Lsun/security/x509/KeyUsageExtension;
    .end local v23    # "nonRepuAllowed":Z
    :cond_b
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@167
    move-result-object v18

    #@168
    .line 426
    .local v18, "key":Ljava/security/PublicKey;
    move-object/from16 v0, v25

    #@16a
    move-object/from16 v1, v18

    #@16c
    invoke-virtual {v0, v1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    #@16f
    .line 428
    const/16 v27, 0x1000

    #@171
    move/from16 v0, v27

    #@173
    new-array v4, v0, [B

    #@175
    .line 429
    .restart local v4    # "buffer":[B
    const/16 v24, 0x0

    #@177
    .line 430
    .restart local v24    # "read":I
    :goto_3
    invoke-virtual {v9, v4}, Ljava/io/InputStream;->read([B)I

    #@17a
    move-result v24

    #@17b
    const/16 v27, -0x1

    #@17d
    move/from16 v0, v24

    #@17f
    move/from16 v1, v27

    #@181
    if-eq v0, v1, :cond_d

    #@183
    .line 431
    const/16 v27, 0x0

    #@185
    move-object/from16 v0, v25

    #@187
    move/from16 v1, v27

    #@189
    move/from16 v2, v24

    #@18b
    invoke-virtual {v0, v4, v1, v2}, Ljava/security/Signature;->update([BII)V

    #@18e
    goto :goto_3

    #@18f
    .line 407
    .end local v4    # "buffer":[B
    .end local v18    # "key":Ljava/security/PublicKey;
    .end local v24    # "read":I
    :catch_2
    move-exception v17

    #@190
    .line 408
    .local v17, "ioe":Ljava/io/IOException;
    new-instance v27, Ljava/security/SignatureException;

    #@192
    const-string/jumbo v28, "Failed to parse keyUsage extension"

    #@195
    invoke-direct/range {v27 .. v28}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@198
    throw v27

    #@199
    .line 419
    .end local v17    # "ioe":Ljava/io/IOException;
    .restart local v10    # "digSigAllowed":Z
    .restart local v19    # "keyUsage":Lsun/security/x509/KeyUsageExtension;
    .restart local v23    # "nonRepuAllowed":Z
    :cond_c
    new-instance v27, Ljava/security/SignatureException;

    #@19b
    const-string/jumbo v28, "Key usage restricted: cannot be used for digital signatures"

    #@19e
    invoke-direct/range {v27 .. v28}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@1a1
    throw v27

    #@1a2
    .line 433
    .end local v10    # "digSigAllowed":Z
    .end local v19    # "keyUsage":Lsun/security/x509/KeyUsageExtension;
    .end local v23    # "nonRepuAllowed":Z
    .restart local v4    # "buffer":[B
    .restart local v18    # "key":Ljava/security/PublicKey;
    .restart local v24    # "read":I
    :cond_d
    move-object/from16 v0, p0

    #@1a4
    iget-object v0, v0, Lsun/security/pkcs/SignerInfo;->encryptedDigest:[B

    #@1a6
    move-object/from16 v27, v0

    #@1a8
    move-object/from16 v0, v25

    #@1aa
    move-object/from16 v1, v27

    #@1ac
    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_4 .. :try_end_4} :catch_1

    #@1af
    move-result v27

    #@1b0
    if-eqz v27, :cond_e

    #@1b2
    .line 434
    return-object p0

    #@1b3
    .line 445
    :cond_e
    const/16 v27, 0x0

    #@1b5
    return-object v27
.end method

.method verify(Lsun/security/pkcs/PKCS7;[B)Lsun/security/pkcs/SignerInfo;
    .locals 2
    .param p1, "block"    # Lsun/security/pkcs/PKCS7;
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 300
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    #@2
    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@5
    invoke-virtual {p0, p1, v1}, Lsun/security/pkcs/SignerInfo;->verify(Lsun/security/pkcs/PKCS7;Ljava/io/InputStream;)Lsun/security/pkcs/SignerInfo;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result-object v1

    #@9
    return-object v1

    #@a
    .line 301
    :catch_0
    move-exception v0

    #@b
    .line 303
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    #@c
    return-object v1
.end method
