.class public Lcom/android/internal/org/bouncycastle/cert/ocsp/RespID;
.super Ljava/lang/Object;
.source "RespID.java"


# static fields
.field public static final blacklist HASH_SHA1:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;


# instance fields
.field blacklist id:Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 21
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/cert/ocsp/RespID;->HASH_SHA1:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;)V
    .registers 2
    .param p1, "id"    # Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/RespID;->id:Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;

    .line 29
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V
    .registers 3
    .param p1, "name"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/RespID;->id:Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;

    .line 35
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;)V
    .registers 7
    .param p1, "subjectPublicKeyInfo"    # Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .param p2, "digCalc"    # Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    :try_start_3
    invoke-interface {p2}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    sget-object v1, Lcom/android/internal/org/bouncycastle/cert/ocsp/RespID;->HASH_SHA1:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 56
    invoke-interface {p2}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 58
    .local v0, "digOut":Ljava/io/OutputStream;
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 59
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 61
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-interface {p2}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/RespID;->id:Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;

    .line 66
    .end local v0    # "digOut":Ljava/io/OutputStream;
    nop

    .line 67
    return-void

    .line 53
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "only SHA-1 can be used with RespID - found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/cert/ocsp/RespID;
    .end local p1    # "subjectPublicKeyInfo":Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .end local p2    # "digCalc":Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;
    throw v0
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_54} :catch_54

    .line 63
    .restart local p0    # "this":Lcom/android/internal/org/bouncycastle/cert/ocsp/RespID;
    .restart local p1    # "subjectPublicKeyInfo":Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .restart local p2    # "digCalc":Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;
    :catch_54
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "problem creating ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 77
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/cert/ocsp/RespID;

    if-nez v0, :cond_6

    .line 79
    const/4 v0, 0x0

    return v0

    .line 82
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/cert/ocsp/RespID;

    .line 84
    .local v0, "obj":Lcom/android/internal/org/bouncycastle/cert/ocsp/RespID;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/RespID;->id:Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/cert/ocsp/RespID;->id:Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/RespID;->id:Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/RespID;->id:Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;

    return-object v0
.end method
