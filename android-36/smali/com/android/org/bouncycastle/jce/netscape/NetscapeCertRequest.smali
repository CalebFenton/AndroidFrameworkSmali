.class public Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "NetscapeCertRequest.java"


# instance fields
.field blacklist challenge:Ljava/lang/String;

.field blacklist content:Lcom/android/org/bouncycastle/asn1/DERBitString;

.field blacklist keyAlg:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field blacklist pubkey:Ljava/security/PublicKey;

.field blacklist sigAlg:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field blacklist sigBits:[B


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 6

    .line 75
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 86
    :try_start_3
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8c

    const/4 v0, 0x1

    .line 92
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->sigAlg:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    const/4 v1, 0x2

    .line 93
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/DERBitString;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->sigBits:[B

    const/4 v2, 0x0

    .line 101
    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 103
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    if-ne v3, v1, :cond_71

    .line 109
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1IA5String;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1IA5String;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->challenge:Ljava/lang/String;

    .line 113
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->content:Lcom/android/org/bouncycastle/asn1/DERBitString;

    .line 115
    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object p1

    .line 117
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v1, p1}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 118
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 120
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->keyAlg:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 121
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    .line 122
    invoke-virtual {p1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->pubkey:Ljava/security/PublicKey;

    return-void

    .line 105
    :cond_71
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid PKAC (len): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 88
    :cond_8c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid SPKAC (size):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a7} :catch_a7

    :catch_a7
    move-exception p0

    .line 127
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PublicKey;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 136
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 138
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->challenge:Ljava/lang/String;

    .line 139
    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->sigAlg:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 140
    iput-object p3, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->pubkey:Ljava/security/PublicKey;

    .line 142
    new-instance p2, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {p2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 143
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->getKeySpec()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 145
    new-instance p3, Lcom/android/org/bouncycastle/asn1/DERIA5String;

    invoke-direct {p3, p1}, Lcom/android/org/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 149
    :try_start_1d
    new-instance p1, Lcom/android/org/bouncycastle/asn1/DERBitString;

    new-instance p3, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {p3, p2}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {p1, p3}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->content:Lcom/android/org/bouncycastle/asn1/DERBitString;
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_29} :catch_2a

    return-void

    :catch_2a
    move-exception p0

    .line 153
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "exception encoding key: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor blacklist <init>([B)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->getReq([B)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-void
.end method

.method private blacklist getKeySpec()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 259
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 265
    :try_start_5
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->pubkey:Ljava/security/PublicKey;

    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 266
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 268
    new-instance p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 269
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 271
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_23} :catch_24

    return-object p0

    :catch_24
    move-exception p0

    .line 275
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist getReq([B)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .registers 3

    .line 62
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 64
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist getChallenge()Ljava/lang/String;
    .registers 1

    .line 159
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->challenge:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getKeyAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 1

    .line 179
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->keyAlg:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object p0
.end method

.method public blacklist getPublicKey()Ljava/security/PublicKey;
    .registers 1

    .line 189
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->pubkey:Ljava/security/PublicKey;

    return-object p0
.end method

.method public blacklist getSigningAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 1

    .line 169
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->sigAlg:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object p0
.end method

.method public blacklist setChallenge(Ljava/lang/String;)V
    .registers 2

    .line 164
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->challenge:Ljava/lang/String;

    return-void
.end method

.method public blacklist setKeyAlgorithm(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .registers 2

    .line 184
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->keyAlg:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method public blacklist setPublicKey(Ljava/security/PublicKey;)V
    .registers 2

    .line 194
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->pubkey:Ljava/security/PublicKey;

    return-void
.end method

.method public blacklist setSigningAlgorithm(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .registers 2

    .line 174
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->sigAlg:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method public blacklist sign(Ljava/security/PrivateKey;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 220
    invoke-virtual {p0, p1, v0}, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->sign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public blacklist sign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .registers 5
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
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->sigAlg:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    if-eqz p2, :cond_14

    .line 232
    invoke-virtual {v0, p1, p2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    goto :goto_17

    .line 236
    :cond_14
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 239
    :goto_17
    new-instance p1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {p1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 241
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->getKeySpec()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 242
    new-instance p2, Lcom/android/org/bouncycastle/asn1/DERIA5String;

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->challenge:Ljava/lang/String;

    invoke-direct {p2, v1}, Lcom/android/org/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 246
    :try_start_2d
    new-instance p2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {p2, p1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    const-string p1, "DER"

    invoke-virtual {p2, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_3b} :catch_42

    .line 253
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->sigBits:[B

    return-void

    :catch_42
    move-exception p0

    .line 250
    new-instance p1, Ljava/security/SignatureException;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 5

    .line 282
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 283
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 287
    :try_start_a
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->getKeySpec()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_11} :catch_11

    .line 294
    :catch_11
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERIA5String;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->challenge:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 296
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 297
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->sigAlg:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 298
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERBitString;

    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->sigBits:[B

    invoke-direct {v1, p0}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 300
    new-instance p0, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object p0
.end method

.method public blacklist verify(Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->challenge:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    const/4 p0, 0x0

    return p0

    .line 209
    :cond_a
    iget-object p1, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->sigAlg:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p1

    .line 210
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->pubkey:Ljava/security/PublicKey;

    invoke-virtual {p1, v0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 211
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->content:Lcom/android/org/bouncycastle/asn1/DERBitString;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/Signature;->update([B)V

    .line 213
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/netscape/NetscapeCertRequest;->sigBits:[B

    invoke-virtual {p1, p0}, Ljava/security/Signature;->verify([B)Z

    move-result p0

    return p0
.end method
