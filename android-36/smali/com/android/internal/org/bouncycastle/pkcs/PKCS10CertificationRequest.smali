.class public Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;
.super Ljava/lang/Object;
.source "PKCS10CertificationRequest.java"


# static fields
.field private static blacklist EMPTY_ARRAY:[Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;


# instance fields
.field private final blacklist altPublicKey:Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

.field private final blacklist altSignature:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final blacklist altSignatureValue:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

.field private final blacklist certificationRequest:Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;

.field private final blacklist isAltRequest:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 41
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;

    sput-object v0, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->EMPTY_ARRAY:[Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;)V
    .registers 10
    .param p1, "certificationRequest"    # Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    if-eqz p1, :cond_9e

    .line 95
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->certificationRequest:Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;

    .line 97
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;->getCertificationRequestInfo()Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->getAttributes()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    .line 99
    .local v0, "attributes":Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    const/4 v1, 0x0

    .line 100
    .local v1, "altSig":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    const/4 v2, 0x0

    .line 101
    .local v2, "altPub":Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    const/4 v3, 0x0

    .line 103
    .local v3, "altSigValue":Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
    if-eqz v0, :cond_63

    .line 105
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v4

    .local v4, "en":Ljava/util/Enumeration;
    :goto_18
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_63

    .line 107
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;

    move-result-object v5

    .line 109
    .local v5, "at":Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;
    sget-object v6, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->altSignatureAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;->getAttrType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 111
    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->getSingleValue(Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    .line 113
    :cond_3a
    sget-object v6, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->subjectAltPublicKeyInfo:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;->getAttrType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v6

    if-eqz v6, :cond_4e

    .line 115
    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->getSingleValue(Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v2

    .line 117
    :cond_4e
    sget-object v6, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->altSignatureValue:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;->getAttrType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v6

    if-eqz v6, :cond_62

    .line 119
    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->getSingleValue(Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v3

    .line 121
    .end local v5    # "at":Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;
    :cond_62
    goto :goto_18

    .line 124
    .end local v4    # "en":Ljava/util/Enumeration;
    :cond_63
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_69

    move v6, v4

    goto :goto_6a

    :cond_69
    move v6, v5

    :goto_6a
    if-eqz v2, :cond_6e

    move v7, v4

    goto :goto_6f

    :cond_6e
    move v7, v5

    :goto_6f
    or-int/2addr v6, v7

    if-eqz v3, :cond_74

    move v7, v4

    goto :goto_75

    :cond_74
    move v7, v5

    :goto_75
    or-int/2addr v6, v7

    iput-boolean v6, p0, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->isAltRequest:Z

    .line 125
    iget-boolean v6, p0, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->isAltRequest:Z

    if-eqz v6, :cond_97

    .line 127
    if-eqz v1, :cond_80

    move v6, v4

    goto :goto_81

    :cond_80
    move v6, v5

    :goto_81
    if-eqz v2, :cond_85

    move v7, v4

    goto :goto_86

    :cond_85
    move v7, v5

    :goto_86
    and-int/2addr v6, v7

    if-eqz v3, :cond_8a

    goto :goto_8b

    :cond_8a
    move v4, v5

    :goto_8b
    and-int/2addr v4, v6

    if-eqz v4, :cond_8f

    goto :goto_97

    .line 129
    :cond_8f
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "invalid alternate public key details found"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 133
    :cond_97
    :goto_97
    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->altSignature:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 134
    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->altPublicKey:Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 135
    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->altSignatureValue:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    .line 136
    return-void

    .line 93
    .end local v0    # "attributes":Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .end local v1    # "altSig":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v2    # "altPub":Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .end local v3    # "altSigValue":Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
    :cond_9e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "certificationRequest cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>([B)V
    .registers 3
    .param p1, "encoded"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->parseBytes([B)Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;-><init>(Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;)V

    .line 148
    return-void
.end method

.method private static blacklist getSingleValue(Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 4
    .param p0, "at"    # Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;

    .line 75
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;->getAttributeValues()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 76
    .local v0, "attrValues":[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    .line 81
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1

    .line 78
    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "single value attribute value not size of 1"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist parseBytes([B)Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;
    .registers 5
    .param p0, "encoding"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    const-string v0, "malformed data: "

    :try_start_2
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;

    move-result-object v1

    .line 56
    .local v1, "rv":Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;
    if-eqz v1, :cond_d

    .line 61
    return-object v1

    .line 58
    :cond_d
    new-instance v2, Lcom/android/internal/org/bouncycastle/pkcs/PKCSIOException;

    const-string v3, "empty data passed to constructor"

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/pkcs/PKCSIOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "encoding":[B
    throw v2
    :try_end_15
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_15} :catch_31
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_15} :catch_15

    .line 67
    .end local v1    # "rv":Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;
    .restart local p0    # "encoding":[B
    :catch_15
    move-exception v1

    .line 69
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Lcom/android/internal/org/bouncycastle/pkcs/PKCSIOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/pkcs/PKCSIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 63
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_31
    move-exception v1

    .line 65
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Lcom/android/internal/org/bouncycastle/pkcs/PKCSIOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/pkcs/PKCSIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 418
    if-ne p1, p0, :cond_4

    .line 420
    const/4 v0, 0x1

    return v0

    .line 423
    :cond_4
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;

    if-nez v0, :cond_a

    .line 425
    const/4 v0, 0x0

    return v0

    .line 428
    :cond_a
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;

    .line 430
    .local v0, "other":Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->toASN1Structure()Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->toASN1Structure()Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public blacklist getAttributes()[Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;
    .registers 5

    .line 207
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->certificationRequest:Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;->getCertificationRequestInfo()Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->getAttributes()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    .line 209
    .local v0, "attrSet":Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    if-nez v0, :cond_f

    .line 211
    sget-object v1, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->EMPTY_ARRAY:[Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;

    return-object v1

    .line 214
    :cond_f
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;

    .line 216
    .local v1, "attrs":[Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v3

    if-eq v2, v3, :cond_29

    .line 218
    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;

    move-result-object v3

    aput-object v3, v1, v2

    .line 216
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 221
    .end local v2    # "i":I
    :cond_29
    return-object v1
.end method

.method public blacklist getAttributes(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)[Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;
    .registers 7
    .param p1, "type"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 232
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->certificationRequest:Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;->getCertificationRequestInfo()Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->getAttributes()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    .line 234
    .local v0, "attrSet":Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    if-nez v0, :cond_f

    .line 236
    sget-object v1, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->EMPTY_ARRAY:[Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;

    return-object v1

    .line 239
    :cond_f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .local v1, "list":Ljava/util/List;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v3

    if-eq v2, v3, :cond_33

    .line 243
    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;

    move-result-object v3

    .line 244
    .local v3, "attr":Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;->getAttrType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 246
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    .end local v3    # "attr":Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;
    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 250
    .end local v2    # "i":I
    :cond_33
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3c

    .line 252
    sget-object v2, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->EMPTY_ARRAY:[Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;

    return-object v2

    .line 255
    :cond_3c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;

    return-object v2
.end method

.method public blacklist getEncoded()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->certificationRequest:Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRequestedExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    .registers 15

    .line 367
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->getAttributes()[Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;

    move-result-object v0

    .line 368
    .local v0, "attributes":[Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v2, v0

    if-eq v1, v2, :cond_eb

    .line 370
    aget-object v2, v0, v1

    .line 371
    .local v2, "encodable":Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;
    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_extensionRequest:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;->getAttrType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-eqz v3, :cond_e7

    .line 373
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-direct {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;-><init>()V

    .line 375
    .local v3, "extensionsGenerator":Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;->getAttrValues()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v4

    .line 376
    .local v4, "attrValues":Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    if-eqz v4, :cond_de

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v5

    if-eqz v5, :cond_de

    .line 381
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v6

    .line 385
    .local v6, "extensionSequence":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_30
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v7

    .local v7, "en":Ljava/util/Enumeration;
    :goto_34
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_bb

    .line 387
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v8

    .line 389
    .local v8, "itemSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v9

    const/4 v10, 0x3

    const/4 v11, 0x1

    if-ne v9, v10, :cond_5a

    invoke-virtual {v8, v11}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v9

    if-eqz v9, :cond_5a

    move v9, v11

    goto :goto_5b

    :cond_5a
    move v9, v5

    .line 390
    .local v9, "critical":Z
    :goto_5b
    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_7a

    .line 392
    invoke-virtual {v8, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v10

    invoke-virtual {v8, v11}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v11

    invoke-virtual {v3, v10, v5, v11}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->addExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V

    goto :goto_97

    .line 394
    :cond_7a
    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v11

    if-ne v11, v10, :cond_98

    .line 396
    invoke-virtual {v8, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v10

    invoke-virtual {v8, v13}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v11

    invoke-virtual {v3, v10, v9, v11}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->addExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V

    .line 402
    .end local v8    # "itemSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v9    # "critical":Z
    :goto_97
    goto :goto_34

    .line 400
    .restart local v8    # "itemSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v9    # "critical":Z
    :cond_98
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "incorrect sequence size of Extension get "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " expected 2 or three"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "attributes":[Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;
    .end local v1    # "i":I
    .end local v2    # "encodable":Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;
    .end local v3    # "extensionsGenerator":Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;
    .end local v4    # "attrValues":Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .end local v6    # "extensionSequence":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;
    throw v5
    :try_end_bb
    .catch Ljava/lang/IllegalArgumentException; {:try_start_30 .. :try_end_bb} :catch_c1

    .line 407
    .end local v7    # "en":Ljava/util/Enumeration;
    .end local v8    # "itemSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v9    # "critical":Z
    .restart local v0    # "attributes":[Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;
    .restart local v1    # "i":I
    .restart local v2    # "encodable":Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;
    .restart local v3    # "extensionsGenerator":Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;
    .restart local v4    # "attrValues":Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .restart local v6    # "extensionSequence":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .restart local p0    # "this":Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;
    :cond_bb
    nop

    .line 409
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->generate()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v5

    return-object v5

    .line 404
    :catch_c1
    move-exception v5

    .line 406
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "asn1 processing issue: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Lcom/android/internal/org/bouncycastle/util/Exceptions;->illegalStateException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/IllegalStateException;

    move-result-object v7

    throw v7

    .line 378
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    .end local v6    # "extensionSequence":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :cond_de
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "pkcs_9_at_extensionRequest present but has no value"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 368
    .end local v2    # "encodable":Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;
    .end local v3    # "extensionsGenerator":Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;
    .end local v4    # "attrValues":Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    :cond_e7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 412
    .end local v1    # "i":I
    :cond_eb
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getSignature()[B
    .registers 2

    .line 187
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->certificationRequest:Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;->getSignature()Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .line 177
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->certificationRequest:Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSubject()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .registers 2

    .line 167
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->certificationRequest:Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;->getCertificationRequestInfo()Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->getSubject()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSubjectPublicKeyInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .registers 2

    .line 197
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->certificationRequest:Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;->getCertificationRequestInfo()Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->getSubjectPublicKeyInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist hasAltPublicKey()Z
    .registers 2

    .line 303
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->isAltRequest:Z

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 435
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->toASN1Structure()Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist isAltSignatureValid(Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;)Z
    .registers 9
    .param p1, "verifierProvider"    # Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/pkcs/PKCSException;
        }
    .end annotation

    .line 316
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->isAltRequest:Z

    if-eqz v0, :cond_89

    .line 321
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->certificationRequest:Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;->getCertificationRequestInfo()Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    move-result-object v0

    .line 322
    .local v0, "requestInfo":Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->getAttributes()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    .line 323
    .local v1, "attributes":Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 325
    .local v2, "atV":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    .local v3, "en":Ljava/util/Enumeration;
    :goto_17
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 327
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;

    move-result-object v4

    .line 329
    .local v4, "at":Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;
    sget-object v5, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->altSignatureValue:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;->getAttrType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 331
    goto :goto_17

    .line 334
    :cond_32
    invoke-virtual {v2, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 335
    .end local v4    # "at":Lcom/android/internal/org/bouncycastle/asn1/pkcs/Attribute;
    goto :goto_17

    .line 337
    .end local v3    # "en":Ljava/util/Enumeration;
    :cond_36
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->getSubject()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->getSubjectPublicKeyInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v5

    new-instance v6, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    invoke-direct {v6, v2}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V

    .line 342
    .end local v0    # "requestInfo":Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;
    .local v3, "requestInfo":Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;
    :try_start_48
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->altSignature:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-interface {p1, v0}, Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;->get(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;

    move-result-object v0

    .line 344
    .local v0, "verifier":Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;
    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 346
    .local v4, "sOut":Ljava/io/OutputStream;
    const-string v5, "DER"

    invoke-virtual {v3, v5}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->getEncoded(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    .line 348
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_5e} :catch_6a

    .line 353
    .end local v4    # "sOut":Ljava/io/OutputStream;
    nop

    .line 355
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->altSignatureValue:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;->verify([B)Z

    move-result v4

    return v4

    .line 350
    .end local v0    # "verifier":Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;
    :catch_6a
    move-exception v0

    .line 352
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/android/internal/org/bouncycastle/pkcs/PKCSException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unable to process signature: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/android/internal/org/bouncycastle/pkcs/PKCSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 318
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "attributes":Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .end local v2    # "atV":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v3    # "requestInfo":Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;
    :cond_89
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no alternate public key present"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist isSignatureValid(Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;)Z
    .registers 7
    .param p1, "verifierProvider"    # Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/pkcs/PKCSException;
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->certificationRequest:Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;->getCertificationRequestInfo()Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    move-result-object v0

    .line 280
    .local v0, "requestInfo":Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;
    :try_start_6
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->certificationRequest:Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;->get(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;

    move-result-object v1

    .line 282
    .local v1, "verifier":Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;
    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 284
    .local v2, "sOut":Ljava/io/OutputStream;
    const-string v3, "DER"

    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->getEncoded(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 286
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_20} :catch_2a

    .line 291
    .end local v2    # "sOut":Ljava/io/OutputStream;
    nop

    .line 293
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->getSignature()[B

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;->verify([B)Z

    move-result v2

    return v2

    .line 288
    .end local v1    # "verifier":Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;
    :catch_2a
    move-exception v1

    .line 290
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/android/internal/org/bouncycastle/pkcs/PKCSException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to process signature: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/android/internal/org/bouncycastle/pkcs/PKCSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public blacklist toASN1Structure()Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;
    .registers 2

    .line 157
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/pkcs/PKCS10CertificationRequest;->certificationRequest:Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertificationRequest;

    return-object v0
.end method
