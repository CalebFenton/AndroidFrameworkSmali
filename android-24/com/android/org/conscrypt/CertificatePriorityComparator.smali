.class public final Lcom/android/org/conscrypt/CertificatePriorityComparator;
.super Ljava/lang/Object;
.source "CertificatePriorityComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/security/cert/X509Certificate;",
        ">;"
    }
.end annotation


# static fields
.field private static final ALGORITHM_OID_PRIORITY_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final PRIORITY_MD5:Ljava/lang/Integer;

.field private static final PRIORITY_SHA1:Ljava/lang/Integer;

.field private static final PRIORITY_SHA224:Ljava/lang/Integer;

.field private static final PRIORITY_SHA256:Ljava/lang/Integer;

.field private static final PRIORITY_SHA384:Ljava/lang/Integer;

.field private static final PRIORITY_SHA512:Ljava/lang/Integer;

.field private static final PRIORITY_UNKNOWN:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 54
    const/4 v0, 0x6

    #@1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4
    move-result-object v0

    #@5
    sput-object v0, Lcom/android/org/conscrypt/CertificatePriorityComparator;->PRIORITY_MD5:Ljava/lang/Integer;

    #@7
    .line 55
    const/4 v0, 0x5

    #@8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object v0

    #@c
    sput-object v0, Lcom/android/org/conscrypt/CertificatePriorityComparator;->PRIORITY_SHA1:Ljava/lang/Integer;

    #@e
    .line 56
    const/4 v0, 0x4

    #@f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@12
    move-result-object v0

    #@13
    sput-object v0, Lcom/android/org/conscrypt/CertificatePriorityComparator;->PRIORITY_SHA224:Ljava/lang/Integer;

    #@15
    .line 57
    const/4 v0, 0x3

    #@16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@19
    move-result-object v0

    #@1a
    sput-object v0, Lcom/android/org/conscrypt/CertificatePriorityComparator;->PRIORITY_SHA256:Ljava/lang/Integer;

    #@1c
    .line 58
    const/4 v0, 0x2

    #@1d
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@20
    move-result-object v0

    #@21
    sput-object v0, Lcom/android/org/conscrypt/CertificatePriorityComparator;->PRIORITY_SHA384:Ljava/lang/Integer;

    #@23
    .line 59
    const/4 v0, 0x1

    #@24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@27
    move-result-object v0

    #@28
    sput-object v0, Lcom/android/org/conscrypt/CertificatePriorityComparator;->PRIORITY_SHA512:Ljava/lang/Integer;

    #@2a
    .line 60
    const/4 v0, -0x1

    #@2b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2e
    move-result-object v0

    #@2f
    sput-object v0, Lcom/android/org/conscrypt/CertificatePriorityComparator;->PRIORITY_UNKNOWN:Ljava/lang/Integer;

    #@31
    .line 62
    new-instance v0, Ljava/util/HashMap;

    #@33
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@36
    sput-object v0, Lcom/android/org/conscrypt/CertificatePriorityComparator;->ALGORITHM_OID_PRIORITY_MAP:Ljava/util/Map;

    #@38
    .line 64
    sget-object v0, Lcom/android/org/conscrypt/CertificatePriorityComparator;->ALGORITHM_OID_PRIORITY_MAP:Ljava/util/Map;

    #@3a
    const-string/jumbo v1, "1.2.840.113549.1.1.13"

    #@3d
    sget-object v2, Lcom/android/org/conscrypt/CertificatePriorityComparator;->PRIORITY_SHA512:Ljava/lang/Integer;

    #@3f
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@42
    .line 65
    sget-object v0, Lcom/android/org/conscrypt/CertificatePriorityComparator;->ALGORITHM_OID_PRIORITY_MAP:Ljava/util/Map;

    #@44
    const-string/jumbo v1, "1.2.840.113549.1.1.12"

    #@47
    sget-object v2, Lcom/android/org/conscrypt/CertificatePriorityComparator;->PRIORITY_SHA384:Ljava/lang/Integer;

    #@49
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4c
    .line 66
    sget-object v0, Lcom/android/org/conscrypt/CertificatePriorityComparator;->ALGORITHM_OID_PRIORITY_MAP:Ljava/util/Map;

    #@4e
    const-string/jumbo v1, "1.2.840.113549.1.1.11"

    #@51
    sget-object v2, Lcom/android/org/conscrypt/CertificatePriorityComparator;->PRIORITY_SHA256:Ljava/lang/Integer;

    #@53
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@56
    .line 67
    sget-object v0, Lcom/android/org/conscrypt/CertificatePriorityComparator;->ALGORITHM_OID_PRIORITY_MAP:Ljava/util/Map;

    #@58
    const-string/jumbo v1, "1.2.840.113549.1.1.14"

    #@5b
    sget-object v2, Lcom/android/org/conscrypt/CertificatePriorityComparator;->PRIORITY_SHA224:Ljava/lang/Integer;

    #@5d
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@60
    .line 68
    sget-object v0, Lcom/android/org/conscrypt/CertificatePriorityComparator;->ALGORITHM_OID_PRIORITY_MAP:Ljava/util/Map;

    #@62
    const-string/jumbo v1, "1.2.840.113549.1.1.5"

    #@65
    sget-object v2, Lcom/android/org/conscrypt/CertificatePriorityComparator;->PRIORITY_SHA1:Ljava/lang/Integer;

    #@67
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6a
    .line 69
    sget-object v0, Lcom/android/org/conscrypt/CertificatePriorityComparator;->ALGORITHM_OID_PRIORITY_MAP:Ljava/util/Map;

    #@6c
    const-string/jumbo v1, "1.2.840.113549.1.1.4"

    #@6f
    sget-object v2, Lcom/android/org/conscrypt/CertificatePriorityComparator;->PRIORITY_MD5:Ljava/lang/Integer;

    #@71
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@74
    .line 71
    sget-object v0, Lcom/android/org/conscrypt/CertificatePriorityComparator;->ALGORITHM_OID_PRIORITY_MAP:Ljava/util/Map;

    #@76
    const-string/jumbo v1, "1.2.840.10045.4.3.4"

    #@79
    sget-object v2, Lcom/android/org/conscrypt/CertificatePriorityComparator;->PRIORITY_SHA512:Ljava/lang/Integer;

    #@7b
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7e
    .line 72
    sget-object v0, Lcom/android/org/conscrypt/CertificatePriorityComparator;->ALGORITHM_OID_PRIORITY_MAP:Ljava/util/Map;

    #@80
    const-string/jumbo v1, "1.2.840.10045.4.3.3"

    #@83
    sget-object v2, Lcom/android/org/conscrypt/CertificatePriorityComparator;->PRIORITY_SHA384:Ljava/lang/Integer;

    #@85
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@88
    .line 73
    sget-object v0, Lcom/android/org/conscrypt/CertificatePriorityComparator;->ALGORITHM_OID_PRIORITY_MAP:Ljava/util/Map;

    #@8a
    const-string/jumbo v1, "1.2.840.10045.4.3.2"

    #@8d
    sget-object v2, Lcom/android/org/conscrypt/CertificatePriorityComparator;->PRIORITY_SHA256:Ljava/lang/Integer;

    #@8f
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@92
    .line 74
    sget-object v0, Lcom/android/org/conscrypt/CertificatePriorityComparator;->ALGORITHM_OID_PRIORITY_MAP:Ljava/util/Map;

    #@94
    const-string/jumbo v1, "1.2.840.10045.4.3.1"

    #@97
    sget-object v2, Lcom/android/org/conscrypt/CertificatePriorityComparator;->PRIORITY_SHA224:Ljava/lang/Integer;

    #@99
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9c
    .line 75
    sget-object v0, Lcom/android/org/conscrypt/CertificatePriorityComparator;->ALGORITHM_OID_PRIORITY_MAP:Ljava/util/Map;

    #@9e
    const-string/jumbo v1, "1.2.840.10045.4.1"

    #@a1
    sget-object v2, Lcom/android/org/conscrypt/CertificatePriorityComparator;->PRIORITY_SHA1:Ljava/lang/Integer;

    #@a3
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a6
    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private compareKeyAlgorithm(Ljava/security/PublicKey;Ljava/security/PublicKey;)I
    .locals 4
    .param p1, "lhs"    # Ljava/security/PublicKey;
    .param p2, "rhs"    # Ljava/security/PublicKey;

    #@0
    .prologue
    .line 121
    invoke-interface {p1}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@6
    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 122
    .local v0, "lhsAlgorithm":Ljava/lang/String;
    invoke-interface {p2}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 124
    .local v1, "rhsAlgorithm":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_0

    #@1a
    .line 125
    const/4 v2, 0x0

    #@1b
    return v2

    #@1c
    .line 129
    :cond_0
    const-string/jumbo v2, "EC"

    #@1f
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v2

    #@23
    if-eqz v2, :cond_1

    #@25
    .line 130
    const/4 v2, 0x1

    #@26
    return v2

    #@27
    .line 132
    :cond_1
    const/4 v2, -0x1

    #@28
    return v2
.end method

.method private compareKeySize(Ljava/security/PublicKey;Ljava/security/PublicKey;)I
    .locals 6
    .param p1, "lhs"    # Ljava/security/PublicKey;
    .param p2, "rhs"    # Ljava/security/PublicKey;

    #@0
    .prologue
    .line 137
    invoke-interface {p1}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    #@3
    move-result-object v4

    #@4
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@6
    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 138
    .local v0, "lhsAlgorithm":Ljava/lang/String;
    invoke-interface {p2}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    #@d
    move-result-object v4

    #@e
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@10
    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    .line 139
    .local v2, "rhsAlgorithm":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v4

    #@18
    if-nez v4, :cond_0

    #@1a
    .line 140
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@1c
    const-string/jumbo v5, "Keys are not of the same type"

    #@1f
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v4

    #@23
    .line 142
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/CertificatePriorityComparator;->getKeySize(Ljava/security/PublicKey;)I

    #@26
    move-result v1

    #@27
    .line 143
    .local v1, "lhsSize":I
    invoke-direct {p0, p2}, Lcom/android/org/conscrypt/CertificatePriorityComparator;->getKeySize(Ljava/security/PublicKey;)I

    #@2a
    move-result v3

    #@2b
    .line 144
    .local v3, "rhsSize":I
    sub-int v4, v1, v3

    #@2d
    return v4
.end method

.method private compareSignatureAlgorithm(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)I
    .locals 4
    .param p1, "lhs"    # Ljava/security/cert/X509Certificate;
    .param p2, "rhs"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    .line 159
    sget-object v2, Lcom/android/org/conscrypt/CertificatePriorityComparator;->ALGORITHM_OID_PRIORITY_MAP:Ljava/util/Map;

    #@2
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSigAlgOID()Ljava/lang/String;

    #@5
    move-result-object v3

    #@6
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/Integer;

    #@c
    .line 160
    .local v0, "lhsPriority":Ljava/lang/Integer;
    sget-object v2, Lcom/android/org/conscrypt/CertificatePriorityComparator;->ALGORITHM_OID_PRIORITY_MAP:Ljava/util/Map;

    #@e
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getSigAlgOID()Ljava/lang/String;

    #@11
    move-result-object v3

    #@12
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Ljava/lang/Integer;

    #@18
    .line 161
    .local v1, "rhsPriority":Ljava/lang/Integer;
    if-nez v0, :cond_0

    #@1a
    .line 162
    sget-object v0, Lcom/android/org/conscrypt/CertificatePriorityComparator;->PRIORITY_UNKNOWN:Ljava/lang/Integer;

    #@1c
    .line 164
    :cond_0
    if-nez v1, :cond_1

    #@1e
    .line 165
    sget-object v1, Lcom/android/org/conscrypt/CertificatePriorityComparator;->PRIORITY_UNKNOWN:Ljava/lang/Integer;

    #@20
    .line 167
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@23
    move-result v2

    #@24
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@27
    move-result v3

    #@28
    sub-int/2addr v2, v3

    #@29
    return v2
.end method

.method private compareStrength(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)I
    .locals 4
    .param p1, "lhs"    # Ljava/security/cert/X509Certificate;
    .param p2, "rhs"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    .line 107
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@3
    move-result-object v0

    #@4
    .line 108
    .local v0, "lhsPublicKey":Ljava/security/PublicKey;
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@7
    move-result-object v2

    #@8
    .line 109
    .local v2, "rhsPublicKey":Ljava/security/PublicKey;
    invoke-direct {p0, v0, v2}, Lcom/android/org/conscrypt/CertificatePriorityComparator;->compareKeyAlgorithm(Ljava/security/PublicKey;Ljava/security/PublicKey;)I

    #@b
    move-result v1

    #@c
    .line 110
    .local v1, "result":I
    if-eqz v1, :cond_0

    #@e
    .line 111
    return v1

    #@f
    .line 113
    :cond_0
    invoke-direct {p0, v0, v2}, Lcom/android/org/conscrypt/CertificatePriorityComparator;->compareKeySize(Ljava/security/PublicKey;Ljava/security/PublicKey;)I

    #@12
    move-result v1

    #@13
    .line 114
    if-eqz v1, :cond_1

    #@15
    .line 115
    return v1

    #@16
    .line 117
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/CertificatePriorityComparator;->compareSignatureAlgorithm(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)I

    #@19
    move-result v3

    #@1a
    return v3
.end method

.method private getKeySize(Ljava/security/PublicKey;)I
    .locals 3
    .param p1, "pkey"    # Ljava/security/PublicKey;

    #@0
    .prologue
    .line 148
    instance-of v0, p1, Ljava/security/interfaces/ECPublicKey;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 149
    check-cast p1, Ljava/security/interfaces/ECPublicKey;

    #@6
    .end local p1    # "pkey":Ljava/security/PublicKey;
    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    #@11
    move-result-object v0

    #@12
    invoke-interface {v0}, Ljava/security/spec/ECField;->getFieldSize()I

    #@15
    move-result v0

    #@16
    return v0

    #@17
    .line 150
    .restart local p1    # "pkey":Ljava/security/PublicKey;
    :cond_0
    instance-of v0, p1, Ljava/security/interfaces/RSAPublicKey;

    #@19
    if-eqz v0, :cond_1

    #@1b
    .line 151
    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    #@1d
    .end local p1    # "pkey":Ljava/security/PublicKey;
    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    #@24
    move-result v0

    #@25
    return v0

    #@26
    .line 153
    .restart local p1    # "pkey":Ljava/security/PublicKey;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@28
    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v2, "Unsupported public key type: "

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    .line 153
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@47
    throw v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 79
    check-cast p1, Ljava/security/cert/X509Certificate;

    #@2
    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Ljava/security/cert/X509Certificate;

    #@4
    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/org/conscrypt/CertificatePriorityComparator;->compare(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public compare(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)I
    .locals 9
    .param p1, "lhs"    # Ljava/security/cert/X509Certificate;
    .param p2, "rhs"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    .line 81
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    #@3
    move-result-object v7

    #@4
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    #@7
    move-result-object v8

    #@8
    invoke-interface {v7, v8}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v2

    #@c
    .line 82
    .local v2, "lhsSelfSigned":Z
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    #@f
    move-result-object v7

    #@10
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    #@13
    move-result-object v8

    #@14
    invoke-interface {v7, v8}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v6

    #@18
    .line 84
    .local v6, "rhsSelfSigned":Z
    if-eq v2, v6, :cond_1

    #@1a
    .line 85
    if-eqz v6, :cond_0

    #@1c
    const/4 v7, 0x1

    #@1d
    :goto_0
    return v7

    #@1e
    :cond_0
    const/4 v7, -0x1

    #@1f
    goto :goto_0

    #@20
    .line 88
    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/android/org/conscrypt/CertificatePriorityComparator;->compareStrength(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)I

    #@23
    move-result v3

    #@24
    .line 89
    .local v3, "result":I
    if-eqz v3, :cond_2

    #@26
    .line 90
    return v3

    #@27
    .line 93
    :cond_2
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    #@2a
    move-result-object v0

    #@2b
    .line 94
    .local v0, "lhsNotAfter":Ljava/util/Date;
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    #@2e
    move-result-object v4

    #@2f
    .line 95
    .local v4, "rhsNotAfter":Ljava/util/Date;
    invoke-virtual {v4, v0}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    #@32
    move-result v3

    #@33
    .line 96
    if-eqz v3, :cond_3

    #@35
    .line 97
    return v3

    #@36
    .line 100
    :cond_3
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    #@39
    move-result-object v1

    #@3a
    .line 101
    .local v1, "lhsNotBefore":Ljava/util/Date;
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    #@3d
    move-result-object v5

    #@3e
    .line 102
    .local v5, "rhsNotBefore":Ljava/util/Date;
    invoke-virtual {v5, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    #@41
    move-result v7

    #@42
    return v7
.end method
