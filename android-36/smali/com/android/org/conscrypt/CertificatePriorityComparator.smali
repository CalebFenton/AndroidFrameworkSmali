.class public final Lcom/android/org/conscrypt/CertificatePriorityComparator;
.super Ljava/lang/Object;
.source "CertificatePriorityComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/security/cert/X509Certificate;",
        ">;"
    }
.end annotation


# static fields
.field private static final greylist-max-o ALGORITHM_OID_PRIORITY_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o PRIORITY_MD5:Ljava/lang/Integer;

.field private static final greylist-max-o PRIORITY_SHA1:Ljava/lang/Integer;

.field private static final greylist-max-o PRIORITY_SHA224:Ljava/lang/Integer;

.field private static final greylist-max-o PRIORITY_SHA256:Ljava/lang/Integer;

.field private static final greylist-max-o PRIORITY_SHA384:Ljava/lang/Integer;

.field private static final greylist-max-o PRIORITY_SHA512:Ljava/lang/Integer;

.field private static final greylist-max-o PRIORITY_UNKNOWN:Ljava/lang/Integer;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 55
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/CertificatePriorityComparator;->PRIORITY_MD5:Ljava/lang/Integer;

    .line 56
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/CertificatePriorityComparator;->PRIORITY_SHA1:Ljava/lang/Integer;

    .line 57
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/CertificatePriorityComparator;->PRIORITY_SHA224:Ljava/lang/Integer;

    .line 58
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/CertificatePriorityComparator;->PRIORITY_SHA256:Ljava/lang/Integer;

    .line 59
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/CertificatePriorityComparator;->PRIORITY_SHA384:Ljava/lang/Integer;

    .line 60
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/CertificatePriorityComparator;->PRIORITY_SHA512:Ljava/lang/Integer;

    .line 61
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/CertificatePriorityComparator;->PRIORITY_UNKNOWN:Ljava/lang/Integer;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/org/conscrypt/CertificatePriorityComparator;->ALGORITHM_OID_PRIORITY_MAP:Ljava/util/Map;

    .line 65
    sget-object v0, Lcom/android/org/conscrypt/CertificatePriorityComparator;->ALGORITHM_OID_PRIORITY_MAP:Ljava/util/Map;

    const-string v1, "1.2.840.113549.1.1.13"

    sget-object v2, Lcom/android/org/conscrypt/CertificatePriorityComparator;->PRIORITY_SHA512:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/android/org/conscrypt/CertificatePriorityComparator;->ALGORITHM_OID_PRIORITY_MAP:Ljava/util/Map;

    const-string v1, "1.2.840.113549.1.1.12"

    sget-object v2, Lcom/android/org/conscrypt/CertificatePriorityComparator;->PRIORITY_SHA384:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/android/org/conscrypt/CertificatePriorityComparator;->ALGORITHM_OID_PRIORITY_MAP:Ljava/util/Map;

    const-string v1, "1.2.840.113549.1.1.11"

    sget-object v2, Lcom/android/org/conscrypt/CertificatePriorityComparator;->PRIORITY_SHA256:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/android/org/conscrypt/CertificatePriorityComparator;->ALGORITHM_OID_PRIORITY_MAP:Ljava/util/Map;

    const-string v1, "1.2.840.113549.1.1.14"

    sget-object v2, Lcom/android/org/conscrypt/CertificatePriorityComparator;->PRIORITY_SHA224:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/android/org/conscrypt/CertificatePriorityComparator;->ALGORITHM_OID_PRIORITY_MAP:Ljava/util/Map;

    const-string v1, "1.2.840.113549.1.1.5"

    sget-object v2, Lcom/android/org/conscrypt/CertificatePriorityComparator;->PRIORITY_SHA1:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/android/org/conscrypt/CertificatePriorityComparator;->ALGORITHM_OID_PRIORITY_MAP:Ljava/util/Map;

    const-string v1, "1.2.840.113549.1.1.4"

    sget-object v2, Lcom/android/org/conscrypt/CertificatePriorityComparator;->PRIORITY_MD5:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/android/org/conscrypt/CertificatePriorityComparator;->ALGORITHM_OID_PRIORITY_MAP:Ljava/util/Map;

    const-string v1, "1.2.840.10045.4.3.4"

    sget-object v2, Lcom/android/org/conscrypt/CertificatePriorityComparator;->PRIORITY_SHA512:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/android/org/conscrypt/CertificatePriorityComparator;->ALGORITHM_OID_PRIORITY_MAP:Ljava/util/Map;

    const-string v1, "1.2.840.10045.4.3.3"

    sget-object v2, Lcom/android/org/conscrypt/CertificatePriorityComparator;->PRIORITY_SHA384:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/android/org/conscrypt/CertificatePriorityComparator;->ALGORITHM_OID_PRIORITY_MAP:Ljava/util/Map;

    const-string v1, "1.2.840.10045.4.3.2"

    sget-object v2, Lcom/android/org/conscrypt/CertificatePriorityComparator;->PRIORITY_SHA256:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/android/org/conscrypt/CertificatePriorityComparator;->ALGORITHM_OID_PRIORITY_MAP:Ljava/util/Map;

    const-string v1, "1.2.840.10045.4.3.1"

    sget-object v2, Lcom/android/org/conscrypt/CertificatePriorityComparator;->PRIORITY_SHA224:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/android/org/conscrypt/CertificatePriorityComparator;->ALGORITHM_OID_PRIORITY_MAP:Ljava/util/Map;

    const-string v1, "1.2.840.10045.4.1"

    sget-object v2, Lcom/android/org/conscrypt/CertificatePriorityComparator;->PRIORITY_SHA1:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private greylist-max-o compareKeyAlgorithm(Ljava/security/PublicKey;Ljava/security/PublicKey;)I
    .registers 6
    .param p1, "lhs"    # Ljava/security/PublicKey;
    .param p2, "rhs"    # Ljava/security/PublicKey;

    .line 123
    invoke-interface {p1}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "lhsAlgorithm":Ljava/lang/String;
    invoke-interface {p2}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "rhsAlgorithm":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 127
    const/4 v2, 0x0

    return v2

    .line 131
    :cond_10
    const-string v2, "EC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 132
    const/4 v2, 0x1

    return v2

    .line 134
    :cond_1a
    const/4 v2, -0x1

    return v2
.end method

.method private greylist-max-o compareKeySize(Ljava/security/PublicKey;Ljava/security/PublicKey;)I
    .registers 8
    .param p1, "lhs"    # Ljava/security/PublicKey;
    .param p2, "rhs"    # Ljava/security/PublicKey;

    .line 139
    invoke-interface {p1}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "lhsAlgorithm":Ljava/lang/String;
    invoke-interface {p2}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "rhsAlgorithm":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 144
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/CertificatePriorityComparator;->getKeySize(Ljava/security/PublicKey;)I

    move-result v2

    .line 145
    .local v2, "lhsSize":I
    invoke-direct {p0, p2}, Lcom/android/org/conscrypt/CertificatePriorityComparator;->getKeySize(Ljava/security/PublicKey;)I

    move-result v3

    .line 146
    .local v3, "rhsSize":I
    sub-int v4, v2, v3

    return v4

    .line 142
    .end local v2    # "lhsSize":I
    .end local v3    # "rhsSize":I
    :cond_19
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Keys are not of the same type"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private greylist-max-o compareSignatureAlgorithm(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)I
    .registers 7
    .param p1, "lhs"    # Ljava/security/cert/X509Certificate;
    .param p2, "rhs"    # Ljava/security/cert/X509Certificate;

    .line 161
    sget-object v0, Lcom/android/org/conscrypt/CertificatePriorityComparator;->ALGORITHM_OID_PRIORITY_MAP:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSigAlgOID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 162
    .local v0, "lhsPriority":Ljava/lang/Integer;
    sget-object v1, Lcom/android/org/conscrypt/CertificatePriorityComparator;->ALGORITHM_OID_PRIORITY_MAP:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getSigAlgOID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 163
    .local v1, "rhsPriority":Ljava/lang/Integer;
    if-nez v0, :cond_1c

    .line 164
    sget-object v0, Lcom/android/org/conscrypt/CertificatePriorityComparator;->PRIORITY_UNKNOWN:Ljava/lang/Integer;

    .line 166
    :cond_1c
    if-nez v1, :cond_20

    .line 167
    sget-object v1, Lcom/android/org/conscrypt/CertificatePriorityComparator;->PRIORITY_UNKNOWN:Ljava/lang/Integer;

    .line 169
    :cond_20
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v2, v3

    return v2
.end method

.method private greylist-max-o compareStrength(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)I
    .registers 7
    .param p1, "lhs"    # Ljava/security/cert/X509Certificate;
    .param p2, "rhs"    # Ljava/security/cert/X509Certificate;

    .line 109
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    .line 110
    .local v0, "lhsPublicKey":Ljava/security/PublicKey;
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    .line 111
    .local v1, "rhsPublicKey":Ljava/security/PublicKey;
    invoke-direct {p0, v0, v1}, Lcom/android/org/conscrypt/CertificatePriorityComparator;->compareKeyAlgorithm(Ljava/security/PublicKey;Ljava/security/PublicKey;)I

    move-result v2

    .line 112
    .local v2, "result":I
    if-eqz v2, :cond_f

    .line 113
    return v2

    .line 115
    :cond_f
    invoke-direct {p0, v0, v1}, Lcom/android/org/conscrypt/CertificatePriorityComparator;->compareKeySize(Ljava/security/PublicKey;Ljava/security/PublicKey;)I

    move-result v2

    .line 116
    if-eqz v2, :cond_16

    .line 117
    return v2

    .line 119
    :cond_16
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/CertificatePriorityComparator;->compareSignatureAlgorithm(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)I

    move-result v3

    return v3
.end method

.method private greylist-max-o getKeySize(Ljava/security/PublicKey;)I
    .registers 5
    .param p1, "pkey"    # Ljava/security/PublicKey;

    .line 150
    instance-of v0, p1, Ljava/security/interfaces/ECPublicKey;

    if-eqz v0, :cond_18

    .line 151
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/spec/ECField;->getFieldSize()I

    move-result v0

    return v0

    .line 152
    :cond_18
    instance-of v0, p1, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v0, :cond_28

    .line 153
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0

    .line 155
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported public key type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 156
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 43
    check-cast p1, Ljava/security/cert/X509Certificate;

    check-cast p2, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0, p1, p2}, Lcom/android/org/conscrypt/CertificatePriorityComparator;->compare(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)I

    move-result p1

    return p1
.end method

.method public greylist-max-o compare(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)I
    .registers 11
    .param p1, "lhs"    # Ljava/security/cert/X509Certificate;
    .param p2, "rhs"    # Ljava/security/cert/X509Certificate;

    .line 83
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 84
    .local v0, "lhsSelfSigned":Z
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v1

    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 86
    .local v1, "rhsSelfSigned":Z
    if-eq v0, v1, :cond_20

    .line 87
    if-eqz v1, :cond_1e

    const/4 v2, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v2, -0x1

    :goto_1f
    return v2

    .line 90
    :cond_20
    invoke-direct {p0, p2, p1}, Lcom/android/org/conscrypt/CertificatePriorityComparator;->compareStrength(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)I

    move-result v2

    .line 91
    .local v2, "result":I
    if-eqz v2, :cond_27

    .line 92
    return v2

    .line 95
    :cond_27
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v3

    .line 96
    .local v3, "lhsNotAfter":Ljava/util/Date;
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v4

    .line 97
    .local v4, "rhsNotAfter":Ljava/util/Date;
    invoke-virtual {v4, v3}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v2

    .line 98
    if-eqz v2, :cond_36

    .line 99
    return v2

    .line 102
    :cond_36
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v5

    .line 103
    .local v5, "lhsNotBefore":Ljava/util/Date;
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v6

    .line 104
    .local v6, "rhsNotBefore":Ljava/util/Date;
    invoke-virtual {v6, v5}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v7

    return v7
.end method
