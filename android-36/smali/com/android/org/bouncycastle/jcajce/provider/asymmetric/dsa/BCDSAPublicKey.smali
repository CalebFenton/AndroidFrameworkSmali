.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;
.super Ljava/lang/Object;
.source "BCDSAPublicKey.java"

# interfaces
.implements Ljava/security/interfaces/DSAPublicKey;


# static fields
.field private static blacklist ZERO:Ljava/math/BigInteger; = null

.field private static final whitelist serialVersionUID:J = 0x1851f637e242c807L


# instance fields
.field private transient blacklist dsaSpec:Ljava/security/interfaces/DSAParams;

.field private transient blacklist lwKeyParams:Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;

.field private blacklist y:Ljava/math/BigInteger;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    const-wide/16 v0, 0x0

    .line 31
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;->ZERO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .registers 5

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    :try_start_3
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->parsePublicKey()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_9} :catch_50

    .line 83
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;->y:Ljava/math/BigInteger;

    .line 85
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;->isNotNull(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 87
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;

    move-result-object p1

    .line 89
    new-instance v0, Ljava/security/spec/DSAParameterSpec;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getG()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Ljava/security/spec/DSAParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;->dsaSpec:Ljava/security/interfaces/DSAParams;

    goto :goto_40

    :cond_3d
    const/4 p1, 0x0

    .line 93
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;->dsaSpec:Ljava/security/interfaces/DSAParams;

    .line 96
    :goto_40
    new-instance p1, Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;

    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;->y:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;->dsaSpec:Ljava/security/interfaces/DSAParams;

    invoke-static {v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSAUtil;->toDSAParameters(Ljava/security/interfaces/DSAParams;)Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DSAParameters;)V

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;->lwKeyParams:Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;

    return-void

    .line 80
    :catch_50
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid info structure in DSA public key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;)V
    .registers 6

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;->y:Ljava/math/BigInteger;

    .line 58
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DSAKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 60
    new-instance v0, Ljava/security/spec/DSAParameterSpec;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DSAKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DSAKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DSAKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ljava/security/spec/DSAParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;->dsaSpec:Ljava/security/interfaces/DSAParams;

    goto :goto_32

    :cond_2f
    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;->dsaSpec:Ljava/security/interfaces/DSAParams;

    .line 66
    :goto_32
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;->lwKeyParams:Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;

    return-void
.end method

.method constructor blacklist <init>(Ljava/security/interfaces/DSAPublicKey;)V
    .registers 4

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-interface {p1}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;->y:Ljava/math/BigInteger;

    .line 50
    invoke-interface {p1}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;->dsaSpec:Ljava/security/interfaces/DSAParams;

    .line 51
    new-instance p1, Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;

    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;->y:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;->dsaSpec:Ljava/security/interfaces/DSAParams;

    invoke-static {v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSAUtil;->toDSAParameters(Ljava/security/interfaces/DSAParams;)Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DSAParameters;)V

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;->lwKeyParams:Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;

    return-void
.end method

.method constructor blacklist <init>(Ljava/security/spec/DSAPublicKeySpec;)V
    .registers 5

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Ljava/security/spec/DSAPublicKeySpec;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;->y:Ljava/math/BigInteger;

    .line 42
    new-instance v0, Ljava/security/spec/DSAParameterSpec;

    invoke-virtual {p1}, Ljava/security/spec/DSAPublicKeySpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Ljava/security/spec/DSAPublicKeySpec;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/spec/DSAPublicKeySpec;->getG()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Ljava/security/spec/DSAParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;->dsaSpec:Ljava/security/interfaces/DSAParams;

    .line 43
    new-instance p1, Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;

    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;->y:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;->dsaSpec:Ljava/security/interfaces/DSAParams;

    invoke-static {v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSAUtil;->toDSAParameters(Ljava/security/interfaces/DSAParams;)Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DSAParameters;)V

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;->lwKeyParams:Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;

    return-void
.end method

.method private blacklist isNotNull(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)Z
    .registers 2

    if-eqz p1, :cond_10

    .line 101
    sget-object p0, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    invoke-interface {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 191
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 193
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    .line 194
    sget-object v1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 p1, 0x0

    .line 196
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;->dsaSpec:Ljava/security/interfaces/DSAParams;

    goto :goto_28

    .line 200
    :cond_15
    new-instance v1, Ljava/security/spec/DSAParameterSpec;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/math/BigInteger;

    invoke-direct {v1, v0, v2, p1}, Ljava/security/spec/DSAParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;->dsaSpec:Ljava/security/interfaces/DSAParams;

    .line 202
    :goto_28
    new-instance p1, Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;

    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;->y:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;->dsaSpec:Ljava/security/interfaces/DSAParams;

    invoke-static {v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSAUtil;->toDSAParameters(Ljava/security/interfaces/DSAParams;)Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DSAParameters;)V

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;->lwKeyParams:Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;

    return-void
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 211
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;->dsaSpec:Ljava/security/interfaces/DSAParams;

    if-nez v0, :cond_d

    .line 213
    sget-object p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void

    .line 217
    :cond_d
    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 218
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;->dsaSpec:Ljava/security/interfaces/DSAParams;

    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 219
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;->dsaSpec:Ljava/security/interfaces/DSAParams;

    invoke-interface {p0}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method blacklist engineGetKeyParameters()Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;
    .registers 1

    .line 116
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;->lwKeyParams:Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;

    return-object p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 166
    instance-of v0, p1, Ljava/security/interfaces/DSAPublicKey;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 171
    :cond_6
    check-cast p1, Ljava/security/interfaces/DSAPublicKey;

    .line 173
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;->dsaSpec:Ljava/security/interfaces/DSAParams;

    const/4 v2, 0x1

    if-eqz v0, :cond_65

    .line 175
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p1}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 176
    invoke-interface {p1}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v0

    if-eqz v0, :cond_64

    .line 177
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p1}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 178
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p1}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 179
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object p0

    invoke-interface {p0}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object p0

    invoke-interface {p1}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object p1

    invoke-interface {p1}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_64

    return v2

    :cond_64
    return v1

    .line 183
    :cond_65
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object p0

    invoke-interface {p1}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7a

    invoke-interface {p1}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object p0

    if-nez p0, :cond_7a

    return v2

    :cond_7a
    return v1
.end method

.method public whitelist test-api getAlgorithm()Ljava/lang/String;
    .registers 1

    .line 106
    const-string p0, "DSA"

    return-object p0
.end method

.method public whitelist test-api getEncoded()[B
    .registers 7

    .line 121
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;->dsaSpec:Ljava/security/interfaces/DSAParams;

    if-nez v0, :cond_17

    .line 123
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;->y:Ljava/math/BigInteger;

    invoke-direct {v1, p0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/KeyUtil;->getEncodedSubjectPublicKeyInfo(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object p0

    return-object p0

    .line 126
    :cond_17
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v3, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;

    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;->dsaSpec:Ljava/security/interfaces/DSAParams;

    invoke-interface {v4}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;->dsaSpec:Ljava/security/interfaces/DSAParams;

    invoke-interface {v5}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v3, v0, v4, v5}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;->y:Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/KeyUtil;->getEncodedSubjectPublicKeyInfo(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getFormat()Ljava/lang/String;
    .registers 1

    .line 111
    const-string p0, "X.509"

    return-object p0
.end method

.method public whitelist test-api getParams()Ljava/security/interfaces/DSAParams;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;->dsaSpec:Ljava/security/interfaces/DSAParams;

    return-object p0
.end method

.method public whitelist test-api getY()Ljava/math/BigInteger;
    .registers 1

    .line 136
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;->y:Ljava/math/BigInteger;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 152
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;->dsaSpec:Ljava/security/interfaces/DSAParams;

    if-eqz v0, :cond_34

    .line 154
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 155
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object p0

    invoke-interface {p0}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0

    .line 159
    :cond_34
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->hashCode()I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 141
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 142
    invoke-static {}, Lcom/android/org/bouncycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    .line 144
    const-string v2, "DSA Public Key ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;->y:Ljava/math/BigInteger;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSAUtil;->generateKeyFingerprint(Ljava/math/BigInteger;Ljava/security/interfaces/DSAParams;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    const-string v2, "            Y: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object p0

    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
