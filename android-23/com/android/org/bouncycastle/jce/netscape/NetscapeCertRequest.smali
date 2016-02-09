.class public Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "NetscapeCertRequest.java"


# instance fields
.field challenge:Ljava/lang/String;

.field content:Lcom/android/org/bouncycastle/asn1/DERBitString;

.field keyAlg:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field pubkey:Ljava/security/PublicKey;

.field sigAlg:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field sigBits:[B


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 7
    .param p1, "spkac"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    const/4 v6, 0x2

    #@1
    .line 71
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@4
    .line 83
    :try_start_0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@7
    move-result v4

    #@8
    const/4 v5, 0x3

    #@9
    if-eq v4, v5, :cond_0

    #@b
    .line 85
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@d
    new-instance v5, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v6, "invalid SPKAC (size):"

    #@15
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v5

    #@19
    .line 86
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@1c
    move-result v6

    #@1d
    .line 85
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v5

    #@21
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v5

    #@25
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    .line 125
    :catch_0
    move-exception v0

    #@2a
    .line 126
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@2c
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@2f
    move-result-object v5

    #@30
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@33
    throw v4

    #@34
    .line 89
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    new-instance v5, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@36
    .line 90
    const/4 v4, 0x1

    #@37
    .line 89
    invoke-virtual {p1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@3a
    move-result-object v4

    #@3b
    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@3d
    invoke-direct {v5, v4}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@40
    iput-object v5, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->sigAlg:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@42
    .line 91
    const/4 v4, 0x2

    #@43
    invoke-virtual {p1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@46
    move-result-object v4

    #@47
    check-cast v4, Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@49
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    #@4c
    move-result-object v4

    #@4d
    iput-object v4, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->sigBits:[B

    #@4f
    .line 99
    const/4 v4, 0x0

    #@50
    invoke-virtual {p1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@53
    move-result-object v1

    #@54
    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@56
    .line 101
    .local v1, "pkac":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@59
    move-result v4

    #@5a
    if-eq v4, v6, :cond_1

    #@5c
    .line 103
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@5e
    new-instance v5, Ljava/lang/StringBuilder;

    #@60
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@63
    const-string/jumbo v6, "invalid PKAC (len): "

    #@66
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v5

    #@6a
    .line 104
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@6d
    move-result v6

    #@6e
    .line 103
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@71
    move-result-object v5

    #@72
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v5

    #@76
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@79
    throw v4

    #@7a
    .line 107
    :cond_1
    const/4 v4, 0x1

    #@7b
    invoke-virtual {v1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@7e
    move-result-object v4

    #@7f
    check-cast v4, Lcom/android/org/bouncycastle/asn1/DERIA5String;

    #@81
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/DERIA5String;->getString()Ljava/lang/String;

    #@84
    move-result-object v4

    #@85
    iput-object v4, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->challenge:Ljava/lang/String;

    #@87
    .line 111
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@89
    invoke-direct {v4, v1}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@8c
    iput-object v4, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->content:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@8e
    .line 113
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@90
    .line 114
    const/4 v4, 0x0

    #@91
    invoke-virtual {v1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@94
    move-result-object v4

    #@95
    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@97
    .line 113
    invoke-direct {v2, v4}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@9a
    .line 116
    .local v2, "pubkeyinfo":Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    #@9c
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@9e
    invoke-direct {v4, v2}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@a1
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    #@a4
    move-result-object v4

    #@a5
    invoke-direct {v3, v4}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    #@a8
    .line 119
    .local v3, "xspec":Ljava/security/spec/X509EncodedKeySpec;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@ab
    move-result-object v4

    #@ac
    iput-object v4, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->keyAlg:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@ae
    .line 120
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->keyAlg:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@b0
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@b3
    move-result-object v4

    #@b4
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@b7
    move-result-object v4

    #@b8
    const-string/jumbo v5, "BC"

    #@bb
    invoke-static {v4, v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    #@be
    move-result-object v4

    #@bf
    invoke-virtual {v4, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    #@c2
    move-result-object v4

    #@c3
    iput-object v4, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->pubkey:Ljava/security/PublicKey;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@c5
    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PublicKey;)V
    .locals 5
    .param p1, "challenge"    # Ljava/lang/String;
    .param p2, "signing_alg"    # Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "pub_key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    #@0
    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 137
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->challenge:Ljava/lang/String;

    #@5
    .line 138
    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->sigAlg:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@7
    .line 139
    iput-object p3, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->pubkey:Ljava/security/PublicKey;

    #@9
    .line 141
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@b
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@e
    .line 142
    .local v0, "content_der":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->getKeySpec()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@15
    .line 144
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERIA5String;

    #@17
    invoke-direct {v2, p1}, Lcom/android/org/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    #@1a
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@1d
    .line 148
    :try_start_0
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@1f
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@21
    invoke-direct {v3, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@24
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@27
    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->content:Lcom/android/org/bouncycastle/asn1/DERBitString;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    .line 134
    return-void

    #@2a
    .line 151
    :catch_0
    move-exception v1

    #@2b
    .line 152
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    #@2d
    new-instance v3, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v4, "exception encoding key: "

    #@35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@3c
    move-result-object v4

    #@3d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v3

    #@41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v3

    #@45
    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@48
    throw v2
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "req"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 68
    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->getReq([B)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@7
    .line 66
    return-void
.end method

.method private getKeySpec()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    #@0
    .prologue
    .line 260
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@5
    .line 262
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    #@6
    .line 266
    .local v3, "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :try_start_0
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->pubkey:Ljava/security/PublicKey;

    #@8
    invoke-interface {v4}, Ljava/security/PublicKey;->getEncoded()[B

    #@b
    move-result-object v4

    #@c
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@f
    .line 267
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    #@12
    .line 269
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    #@14
    .line 270
    new-instance v4, Ljava/io/ByteArrayInputStream;

    #@16
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@19
    move-result-object v5

    #@1a
    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@1d
    .line 269
    invoke-direct {v1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    #@20
    .line 272
    .local v1, "derin":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    move-result-object v3

    #@24
    .line 278
    .local v3, "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    return-object v3

    #@25
    .line 275
    .end local v1    # "derin":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .local v3, "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :catch_0
    move-exception v2

    #@26
    .line 276
    .local v2, "ioe":Ljava/io/IOException;
    new-instance v4, Ljava/security/spec/InvalidKeySpecException;

    #@28
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@2b
    move-result-object v5

    #@2c
    invoke-direct {v4, v5}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v4
.end method

.method private static getReq([B)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .locals 2
    .param p0, "r"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 59
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    #@2
    new-instance v1, Ljava/io/ByteArrayInputStream;

    #@4
    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@7
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    #@a
    .line 61
    .local v0, "aIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@d
    move-result-object v1

    #@e
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@11
    move-result-object v1

    #@12
    return-object v1
.end method


# virtual methods
.method public getChallenge()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->challenge:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getKeyAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    #@0
    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->keyAlg:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@2
    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 1

    #@0
    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->pubkey:Ljava/security/PublicKey;

    #@2
    return-object v0
.end method

.method public getSigningAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    #@0
    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->sigAlg:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@2
    return-object v0
.end method

.method public setChallenge(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->challenge:Ljava/lang/String;

    #@2
    .line 161
    return-void
.end method

.method public setKeyAlgorithm(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 0
    .param p1, "value"    # Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@0
    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->keyAlg:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@2
    .line 181
    return-void
.end method

.method public setPublicKey(Ljava/security/PublicKey;)V
    .locals 0
    .param p1, "value"    # Ljava/security/PublicKey;

    #@0
    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->pubkey:Ljava/security/PublicKey;

    #@2
    .line 191
    return-void
.end method

.method public setSigningAlgorithm(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 0
    .param p1, "value"    # Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@0
    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->sigAlg:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@2
    .line 171
    return-void
.end method

.method public sign(Ljava/security/PrivateKey;)V
    .locals 1
    .param p1, "priv_key"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 220
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->sign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    #@4
    .line 218
    return-void
.end method

.method public sign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .locals 5
    .param p1, "priv_key"    # Ljava/security/PrivateKey;
    .param p2, "rand"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 228
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->sigAlg:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@2
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5
    move-result-object v3

    #@6
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@9
    move-result-object v3

    #@a
    .line 229
    const-string/jumbo v4, "BC"

    #@d
    .line 228
    invoke-static {v3, v4}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    #@10
    move-result-object v2

    #@11
    .line 231
    .local v2, "sig":Ljava/security/Signature;
    if-eqz p2, :cond_0

    #@13
    .line 233
    invoke-virtual {v2, p1, p2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    #@16
    .line 240
    :goto_0
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@18
    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@1b
    .line 242
    .local v1, "pkac":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->getKeySpec()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@22
    .line 243
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERIA5String;

    #@24
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->challenge:Ljava/lang/String;

    #@26
    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    #@29
    invoke-virtual {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@2c
    .line 247
    :try_start_0
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@2e
    invoke-direct {v3, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@31
    const-string/jumbo v4, "DER"

    #@34
    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getEncoded(Ljava/lang/String;)[B

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v2, v3}, Ljava/security/Signature;->update([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3b
    .line 254
    invoke-virtual {v2}, Ljava/security/Signature;->sign()[B

    #@3e
    move-result-object v3

    #@3f
    iput-object v3, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->sigBits:[B

    #@41
    .line 226
    return-void

    #@42
    .line 237
    .end local v1    # "pkac":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_0
    invoke-virtual {v2, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    #@45
    goto :goto_0

    #@46
    .line 250
    .restart local v1    # "pkac":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :catch_0
    move-exception v0

    #@47
    .line 251
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v3, Ljava/security/SignatureException;

    #@49
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@4c
    move-result-object v4

    #@4d
    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@50
    throw v3
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    #@0
    .prologue
    .line 283
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@2
    invoke-direct {v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@5
    .line 284
    .local v2, "spkac":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@7
    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@a
    .line 288
    .local v1, "pkac":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :try_start_0
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->getKeySpec()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 295
    :goto_0
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERIA5String;

    #@13
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->challenge:Ljava/lang/String;

    #@15
    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    #@18
    invoke-virtual {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@1b
    .line 297
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@1d
    invoke-direct {v3, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@20
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@23
    .line 298
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->sigAlg:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@25
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@28
    .line 299
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@2a
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->sigBits:[B

    #@2c
    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([B)V

    #@2f
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@32
    .line 301
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@34
    invoke-direct {v3, v2}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@37
    return-object v3

    #@38
    .line 291
    :catch_0
    move-exception v0

    #@39
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public verify(Ljava/lang/String;)Z
    .locals 3
    .param p1, "challenge"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    #@0
    .prologue
    .line 199
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->challenge:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 201
    const/4 v1, 0x0

    #@9
    return v1

    #@a
    .line 208
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->sigAlg:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@c
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 209
    const-string/jumbo v2, "BC"

    #@17
    .line 208
    invoke-static {v1, v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    #@1a
    move-result-object v0

    #@1b
    .line 210
    .local v0, "sig":Ljava/security/Signature;
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->pubkey:Ljava/security/PublicKey;

    #@1d
    invoke-virtual {v0, v1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    #@20
    .line 211
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->content:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@22
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    #@29
    .line 213
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->sigBits:[B

    #@2b
    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    #@2e
    move-result v1

    #@2f
    return v1
.end method
