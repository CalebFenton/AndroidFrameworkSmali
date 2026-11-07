.class public Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "PBKDF2Params.java"


# static fields
.field private static final blacklist algid_hmacWithSHA1:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;


# instance fields
.field private final blacklist iterationCount:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

.field private final blacklist keyLength:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

.field private final blacklist octStr:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

.field private final blacklist prf:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 35
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->algid_hmacWithSHA1:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5

    .line 138
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 139
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    .line 141
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->octStr:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 142
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->iterationCount:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 144
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_47

    .line 146
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    .line 148
    instance-of v2, v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v2, :cond_39

    .line 150
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->keyLength:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 151
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 153
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    goto :goto_3b

    :cond_37
    move-object v0, v1

    goto :goto_3b

    .line 162
    :cond_39
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->keyLength:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    :goto_3b
    if-eqz v0, :cond_44

    .line 167
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->prf:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void

    .line 171
    :cond_44
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->prf:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void

    .line 176
    :cond_47
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->keyLength:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 177
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->prf:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method public constructor blacklist <init>([BIILcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .registers 7

    .line 105
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 106
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->octStr:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 107
    new-instance p1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    int-to-long v0, p2

    invoke-direct {p1, v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->iterationCount:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    if-lez p3, :cond_21

    .line 111
    new-instance p1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    int-to-long p2, p3

    invoke-direct {p1, p2, p3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->keyLength:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    goto :goto_24

    :cond_21
    const/4 p1, 0x0

    .line 115
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->keyLength:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 118
    :goto_24
    iput-object p4, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->prf:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;
    .registers 2

    .line 51
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;

    if-eqz v0, :cond_7

    .line 53
    check-cast p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    .line 58
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public blacklist getIterationCount()Ljava/math/BigInteger;
    .registers 1

    .line 198
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->iterationCount:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getPrf()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 1

    .line 233
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->prf:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz p0, :cond_5

    return-object p0

    .line 238
    :cond_5
    sget-object p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->algid_hmacWithSHA1:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object p0
.end method

.method public blacklist getSalt()[B
    .registers 1

    .line 188
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->octStr:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0
.end method

.method public blacklist isDefaultPrf()Z
    .registers 2

    .line 223
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->prf:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz p0, :cond_f

    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->algid_hmacWithSHA1:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 4

    .line 248
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 250
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->octStr:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 251
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->iterationCount:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 253
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->keyLength:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_17

    .line 255
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 258
    :cond_17
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->prf:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v1, :cond_28

    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->algid_hmacWithSHA1:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 260
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->prf:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 263
    :cond_28
    new-instance p0, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object p0
.end method
