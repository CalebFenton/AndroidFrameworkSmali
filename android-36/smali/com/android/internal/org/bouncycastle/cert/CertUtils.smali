.class Lcom/android/internal/org/bouncycastle/cert/CertUtils;
.super Ljava/lang/Object;
.source "CertUtils.java"


# static fields
.field private static blacklist EMPTY_LIST:Ljava/util/List;

.field private static blacklist EMPTY_SET:Ljava/util/Set;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/cert/CertUtils;->EMPTY_SET:Ljava/util/Set;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/cert/CertUtils;->EMPTY_LIST:Ljava/util/List;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist addExtension(Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZLcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 8
    .param p0, "extGenerator"    # Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "isCritical"    # Z
    .param p3, "value"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cert/CertIOException;
        }
    .end annotation

    .line 154
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->addExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZLcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    .line 159
    nop

    .line 160
    return-void

    .line 156
    :catch_5
    move-exception v0

    .line 158
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/android/internal/org/bouncycastle/cert/CertIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot encode extension: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/cert/CertIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static blacklist bitStringToBoolean(Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;)[Z
    .registers 7
    .param p0, "bitString"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    .line 185
    if-eqz p0, :cond_2a

    .line 187
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v0

    .line 188
    .local v0, "bytes":[B
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getPadBits()I

    move-result v2

    sub-int/2addr v1, v2

    new-array v1, v1, [Z

    .line 190
    .local v1, "boolId":[Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    array-length v3, v1

    if-eq v2, v3, :cond_29

    .line 192
    div-int/lit8 v3, v2, 0x8

    aget-byte v3, v0, v3

    rem-int/lit8 v4, v2, 0x8

    const/16 v5, 0x80

    ushr-int v4, v5, v4

    and-int/2addr v3, v4

    if-eqz v3, :cond_23

    const/4 v3, 0x1

    goto :goto_24

    :cond_23
    const/4 v3, 0x0

    :goto_24
    aput-boolean v3, v1, v2

    .line 190
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 195
    .end local v2    # "i":I
    :cond_29
    return-object v1

    .line 198
    .end local v0    # "bytes":[B
    .end local v1    # "boolId":[Z
    :cond_2a
    const/4 v0, 0x0

    return-object v0
.end method

.method static blacklist booleanToBitString([Z)Lcom/android/internal/org/bouncycastle/asn1/DERBitString;
    .registers 7
    .param p0, "id"    # [Z

    .line 164
    array-length v0, p0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    .line 166
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    array-length v2, p0

    if-eq v1, v2, :cond_23

    .line 168
    div-int/lit8 v2, v1, 0x8

    aget-byte v3, v0, v2

    aget-boolean v4, p0, v1

    if-eqz v4, :cond_1b

    rem-int/lit8 v4, v1, 0x8

    rsub-int/lit8 v4, v4, 0x7

    const/4 v5, 0x1

    shl-int v4, v5, v4

    goto :goto_1c

    :cond_1b
    const/4 v4, 0x0

    :goto_1c
    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 171
    .end local v1    # "i":I
    :cond_23
    array-length v1, p0

    rem-int/lit8 v1, v1, 0x8

    .line 173
    .local v1, "pad":I
    if-nez v1, :cond_2e

    .line 175
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;-><init>([B)V

    return-object v2

    .line 179
    :cond_2e
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    rsub-int/lit8 v3, v1, 0x8

    invoke-direct {v2, v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;-><init>([BI)V

    return-object v2
.end method

.method static blacklist doRemoveExtension(Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;
    .registers 7
    .param p0, "extGenerator"    # Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 287
    const/4 v0, 0x0

    .line 288
    .local v0, "isRemoved":Z
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->generate()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v1

    .line 289
    .local v1, "exts":Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-direct {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;-><init>()V

    .line 291
    .end local p0    # "extGenerator":Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;
    .local v2, "extGenerator":Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    move-result-object p0

    .local p0, "en":Ljava/util/Enumeration;
    :goto_e
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 293
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 295
    .local v3, "extOid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v3, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 297
    const/4 v0, 0x1

    goto :goto_29

    .line 301
    :cond_22
    invoke-virtual {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->addExtension(Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;)V

    .line 303
    .end local v3    # "extOid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :goto_29
    goto :goto_e

    .line 305
    .end local p0    # "en":Ljava/util/Enumeration;
    :cond_2a
    if-eqz v0, :cond_2d

    .line 310
    return-object v2

    .line 307
    :cond_2d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "remove - extension (OID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static blacklist doReplaceExtension(Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;)Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;
    .registers 7
    .param p0, "extGenerator"    # Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;
    .param p1, "ext"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    .line 258
    const/4 v0, 0x0

    .line 259
    .local v0, "isReplaced":Z
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->generate()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v1

    .line 260
    .local v1, "exts":Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-direct {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;-><init>()V

    .line 262
    .end local p0    # "extGenerator":Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;
    .local v2, "extGenerator":Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    move-result-object p0

    .local p0, "en":Ljava/util/Enumeration;
    :goto_e
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 264
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 266
    .local v3, "extOid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getExtnId()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 268
    const/4 v0, 0x1

    .line 269
    invoke-virtual {v2, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->addExtension(Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;)V

    goto :goto_30

    .line 273
    :cond_29
    invoke-virtual {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->addExtension(Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;)V

    .line 275
    .end local v3    # "extOid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :goto_30
    goto :goto_e

    .line 277
    .end local p0    # "en":Ljava/util/Enumeration;
    :cond_31
    if-eqz v0, :cond_34

    .line 282
    return-object v2

    .line 279
    :cond_34
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "replace - original extension (OID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getExtnId()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist generateAttrStructure(Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;
    .registers 5
    .param p0, "attrInfo"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;
    .param p1, "sigAlgId"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "signature"    # [B

    .line 98
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 100
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 101
    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 102
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v1, p2}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 104
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist generateCRLStructure(Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;
    .registers 5
    .param p0, "tbsCertList"    # Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;
    .param p1, "sigAlgId"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "signature"    # [B

    .line 109
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 111
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 112
    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 113
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v1, p2}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 115
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    move-result-object v1

    return-object v1
.end method

.method static blacklist generateFullAttrCert(Lcom/android/internal/org/bouncycastle/operator/ContentSigner;Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;)Lcom/android/internal/org/bouncycastle/cert/X509AttributeCertificateHolder;
    .registers 5
    .param p0, "signer"    # Lcom/android/internal/org/bouncycastle/operator/ContentSigner;
    .param p1, "attrInfo"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    .line 77
    :try_start_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/cert/X509AttributeCertificateHolder;

    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/cert/CertUtils;->generateSig(Lcom/android/internal/org/bouncycastle/operator/ContentSigner;Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;)[B

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/android/internal/org/bouncycastle/cert/CertUtils;->generateAttrStructure(Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/cert/X509AttributeCertificateHolder;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_12

    return-object v0

    .line 79
    :catch_12
    move-exception v0

    .line 81
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "cannot produce attribute certificate signature"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static blacklist generateFullCert(Lcom/android/internal/org/bouncycastle/operator/ContentSigner;Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;)Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;
    .registers 5
    .param p0, "signer"    # Lcom/android/internal/org/bouncycastle/operator/ContentSigner;
    .param p1, "tbsCert"    # Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    .line 65
    :try_start_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/cert/CertUtils;->generateSig(Lcom/android/internal/org/bouncycastle/operator/ContentSigner;Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;)[B

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/android/internal/org/bouncycastle/cert/CertUtils;->generateStructure(Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_12

    return-object v0

    .line 67
    :catch_12
    move-exception v0

    .line 69
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "cannot produce certificate signature"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist generateSig(Lcom/android/internal/org/bouncycastle/operator/ContentSigner;Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;)[B
    .registers 4
    .param p0, "signer"    # Lcom/android/internal/org/bouncycastle/operator/ContentSigner;
    .param p1, "tbsObj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 316
    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/operator/ContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 317
    .local v0, "sOut":Ljava/io/OutputStream;
    const-string v1, "DER"

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;->encodeTo(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 318
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 320
    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/operator/ContentSigner;->getSignature()[B

    move-result-object v1

    return-object v1
.end method

.method private static blacklist generateStructure(Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;
    .registers 5
    .param p0, "tbsCert"    # Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;
    .param p1, "sigAlgId"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "signature"    # [B

    .line 87
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 89
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 90
    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 91
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v1, p2}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 93
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    move-result-object v1

    return-object v1
.end method

.method static blacklist getCriticalExtensionOIDs(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Ljava/util/Set;
    .registers 3
    .param p0, "extensions"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 120
    if-nez p0, :cond_5

    .line 122
    sget-object v0, Lcom/android/internal/org/bouncycastle/cert/CertUtils;->EMPTY_SET:Ljava/util/Set;

    return-object v0

    .line 125
    :cond_5
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getCriticalExtensionOIDs()[Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static blacklist getExtensionOIDs(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Ljava/util/List;
    .registers 2
    .param p0, "extensions"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 141
    if-nez p0, :cond_5

    .line 143
    sget-object v0, Lcom/android/internal/org/bouncycastle/cert/CertUtils;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 146
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtensionOIDs()[Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static blacklist getNonCriticalExtensionOIDs(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Ljava/util/Set;
    .registers 3
    .param p0, "extensions"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 130
    if-nez p0, :cond_5

    .line 132
    sget-object v0, Lcom/android/internal/org/bouncycastle/cert/CertUtils;->EMPTY_SET:Ljava/util/Set;

    return-object v0

    .line 136
    :cond_5
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getNonCriticalExtensionOIDs()[Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static blacklist isAlgIdEqual(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Z
    .registers 6
    .param p0, "id1"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p1, "id2"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 215
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 217
    return v1

    .line 220
    :cond_10
    const-string v0, "com.android.internal.org.bouncycastle.x509.allow_absent_equiv_NULL"

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Properties;->isOverrideSet(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4d

    .line 222
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-nez v0, :cond_33

    .line 224
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-interface {v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 226
    return v1

    .line 229
    :cond_32
    return v2

    .line 232
    :cond_33
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-nez v0, :cond_4d

    .line 234
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-eqz v0, :cond_4c

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-interface {v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 236
    return v1

    .line 239
    :cond_4c
    return v2

    .line 243
    :cond_4d
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-eqz v0, :cond_60

    .line 245
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 248
    :cond_60
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-eqz v0, :cond_73

    .line 250
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 253
    :cond_73
    return v2
.end method

.method static blacklist parseNonEmptyASN1([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 4
    .param p0, "encoding"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 53
    .local v0, "p":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    if-eqz v0, :cond_7

    .line 57
    return-object v0

    .line 55
    :cond_7
    new-instance v1, Ljava/io/IOException;

    const-string v2, "no content found"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static blacklist recoverDate(Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;)Ljava/util/Date;
    .registers 5
    .param p0, "time"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 205
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->getDate()Ljava/util/Date;

    move-result-object v0
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 207
    :catch_5
    move-exception v0

    .line 209
    .local v0, "e":Ljava/text/ParseException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to recover date: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static blacklist trimExtensions(ILcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .registers 8
    .param p0, "tagNo"    # I
    .param p1, "exts"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 325
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 326
    .local v0, "extSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 327
    .local v1, "extV":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    if-eq v2, v3, :cond_2f

    .line 329
    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3

    .line 331
    .local v3, "ext":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    sget-object v4, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->altSignatureValue:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 333
    invoke-virtual {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 327
    .end local v3    # "ext":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 337
    .end local v2    # "i":I
    :cond_2f
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    const/4 v4, 0x1

    invoke-direct {v2, v4, p0, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v2
.end method
