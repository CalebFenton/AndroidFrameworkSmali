.class public Lcom/android/internal/org/bouncycastle/jce/netscape/NetscapeCertRequest;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "NetscapeCertRequest.java"


# instance fields
.field blacklist challenge:Ljava/lang/String;

.field blacklist content:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

.field blacklist keyAlg:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field blacklist pubkey:Ljava/security/PublicKey;

.field blacklist sigAlg:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field blacklist sigBits:[B


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 7
    .param p1, "spkac"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 75
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 86
    :try_start_3
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_91

    .line 92
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/netscape/NetscapeCertRequest;->sigAlg:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 93
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getOctets()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/jce/netscape/NetscapeCertRequest;->sigBits:[B

    .line 101
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 103
    .local v3, "pkac":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    if-ne v4, v1, :cond_74

    .line 109
    invoke-virtual {v3, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/netscape/NetscapeCertRequest;->challenge:Ljava/lang/String;

    .line 113
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/netscape/NetscapeCertRequest;->content:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    .line 115
    invoke-virtual {v3, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    .line 117
    .local v0, "pubkeyinfo":Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 118
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 120
    .local v1, "xspec":Ljava/security/spec/X509EncodedKeySpec;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/jce/netscape/NetscapeCertRequest;->keyAlg:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 121
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jce/netscape/NetscapeCertRequest;->keyAlg:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 122
    invoke-virtual {v2, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/jce/netscape/NetscapeCertRequest;->pubkey:Ljava/security/PublicKey;

    .line 128
    .end local v0    # "pubkeyinfo":Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .end local v1    # "xspec":Ljava/security/spec/X509EncodedKeySpec;
    .end local v3    # "pkac":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    nop

    .line 129
    return-void

    .line 105
    .restart local v3    # "pkac":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :cond_74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid PKAC (len): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 106
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/jce/netscape/NetscapeCertRequest;
    .end local p1    # "spkac":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    throw v0

    .line 88
    .end local v3    # "pkac":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .restart local p0    # "this":Lcom/android/internal/org/bouncycastle/jce/netscape/NetscapeCertRequest;
    .restart local p1    # "spkac":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :cond_91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid SPKAC (size):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 89
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/jce/netscape/NetscapeCertRequest;
    .end local p1    # "spkac":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    throw v0
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_ae} :catch_ae

    .line 125
    .restart local p0    # "this":Lcom/android/internal/org/bouncycastle/jce/netscape/NetscapeCertRequest;
    .restart local p1    # "spkac":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :catch_ae
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PublicKey;)V
    .registers 9
    .param p1, "challenge"    # Ljava/lang/String;
    .param p2, "signing_alg"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "pub_key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 136
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 138
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jce/netscape/NetscapeCertRequest;->challenge:Ljava/lang/String;

    .line 139
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jce/netscape/NetscapeCertRequest;->sigAlg:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 140
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/jce/netscape/NetscapeCertRequest;->pubkey:Ljava/security/PublicKey;

    .line 142
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 143
    .local v0, "content_der":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jce/netscape/NetscapeCertRequest;->getKeySpec()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 145
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;

    invoke-direct {v1, p1}, Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 149
    :try_start_1d
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/netscape/NetscapeCertRequest;->content:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_29} :catch_2b

    .line 154
    nop

    .line 155
    return-void

    .line 151
    :catch_2b
    move-exception v1

    .line 153
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception encoding key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor blacklist <init>([B)V
    .registers 3
    .param p1, "req"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jce/netscape/NetscapeCertRequest;->getReq([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/jce/netscape/NetscapeCertRequest;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 72
    return-void
.end method

.method private blacklist getKeySpec()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 259
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 261
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 265
    .local v1, "obj":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    :try_start_6
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jce/netscape/NetscapeCertRequest;->pubkey:Ljava/security/PublicKey;

    invoke-interface {v2}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 266
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 268
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 269
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 271
    .local v2, "derin":Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_24} :catch_26

    .line 276
    .end local v1    # "obj":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .end local v2    # "derin":Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;
    .local v3, "obj":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    nop

    .line 277
    return-object v3

    .line 273
    .end local v3    # "obj":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .restart local v1    # "obj":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    :catch_26
    move-exception v2

    .line 275
    .local v2, "ioe":Ljava/io/IOException;
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static blacklist getReq([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .registers 3
    .param p0, "r"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 64
    .local v0, "aIn":Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public blacklist getChallenge()Ljava/lang/String;
    .registers 2

    .line 159
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/netscape/NetscapeCertRequest;->challenge:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getKeyAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .line 179
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/netscape/NetscapeCertRequest;->keyAlg:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public blacklist getPublicKey()Ljava/security/PublicKey;
    .registers 2

    .line 189
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/netscape/NetscapeCertRequest;->pubkey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public blacklist getSigningAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .line 169
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/netscape/NetscapeCertRequest;->sigAlg:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public blacklist setChallenge(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .line 164
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jce/netscape/NetscapeCertRequest;->challenge:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public blacklist setKeyAlgorithm(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .registers 2
    .param p1, "value"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 184
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jce/netscape/NetscapeCertRequest;->keyAlg:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 185
    return-void
.end method

.method public blacklist setPublicKey(Ljava/security/PublicKey;)V
    .registers 2
    .param p1, "value"    # Ljava/security/PublicKey;

    .line 194
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jce/netscape/NetscapeCertRequest;->pubkey:Ljava/security/PublicKey;

    .line 195
    return-void
.end method

.method public blacklist setSigningAlgorithm(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .registers 2
    .param p1, "value"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 174
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jce/netscape/NetscapeCertRequest;->sigAlg:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 175
    return-void
.end method

.method public blacklist sign(Ljava/security/PrivateKey;)V
    .registers 3
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

    .line 220
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/jce/netscape/NetscapeCertRequest;->sign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    .line 221
    return-void
.end method

.method public blacklist sign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .registers 8
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

    .line 228
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/netscape/NetscapeCertRequest;->sigAlg:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 230
    .local v0, "sig":Ljava/security/Signature;
    if-eqz p2, :cond_14

    .line 232
    invoke-virtual {v0, p1, p2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    goto :goto_17

    .line 236
    :cond_14
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 239
    :goto_17
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 241
    .local v1, "pkac":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jce/netscape/NetscapeCertRequest;->getKeySpec()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 242
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jce/netscape/NetscapeCertRequest;->challenge:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 246
    :try_start_2d
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    const-string v3, "DER"

    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;->getEncoded(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/Signature;->update([B)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_3b} :catch_43

    .line 251
    nop

    .line 253
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/jce/netscape/NetscapeCertRequest;->sigBits:[B

    .line 254
    return-void

    .line 248
    :catch_43
    move-exception v2

    .line 250
    .local v2, "ioe":Ljava/io/IOException;
    new-instance v3, Ljava/security/SignatureException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 5

    .line 282
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 283
    .local v0, "spkac":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 287
    .local v1, "pkac":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    :try_start_a
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jce/netscape/NetscapeCertRequest;->getKeySpec()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_11} :catch_12

    .line 292
    goto :goto_13

    .line 289
    :catch_12
    move-exception v2

    .line 294
    :goto_13
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jce/netscape/NetscapeCertRequest;->challenge:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 296
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 297
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jce/netscape/NetscapeCertRequest;->sigAlg:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 298
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jce/netscape/NetscapeCertRequest;->sigBits:[B

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;-><init>([B)V

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 300
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v2
.end method

.method public blacklist verify(Ljava/lang/String;)Z
    .registers 4
    .param p1, "challenge"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/netscape/NetscapeCertRequest;->challenge:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 202
    const/4 v0, 0x0

    return v0

    .line 209
    :cond_a
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/netscape/NetscapeCertRequest;->sigAlg:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 210
    .local v0, "sig":Ljava/security/Signature;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/netscape/NetscapeCertRequest;->pubkey:Ljava/security/PublicKey;

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 211
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/netscape/NetscapeCertRequest;->content:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    .line 213
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/netscape/NetscapeCertRequest;->sigBits:[B

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    return v1
.end method
