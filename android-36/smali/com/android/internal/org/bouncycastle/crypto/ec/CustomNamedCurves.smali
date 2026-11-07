.class public Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;
.super Ljava/lang/Object;
.source "CustomNamedCurves.java"


# static fields
.field static final blacklist nameToCurve:Ljava/util/Hashtable;

.field static final blacklist nameToOID:Ljava/util/Hashtable;

.field static final blacklist names:Ljava/util/Vector;

.field static final blacklist oidToCurve:Ljava/util/Hashtable;

.field static final blacklist oidToName:Ljava/util/Hashtable;

.field static blacklist secp192k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist secp192r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist secp224k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist secp224r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist secp256k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist secp256r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist secp384r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist secp521r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smconfigureBasepoint(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->configureBasepoint(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smconfigureCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->configureCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smconfigureCurveGLV(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->configureCurveGLV(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 214
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves$1;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves$1;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp192k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 247
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves$2;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves$2;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp192r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 267
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves$3;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves$3;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp224k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 300
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves$4;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves$4;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp224r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 320
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves$5;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves$5;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp256k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 353
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves$6;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves$6;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp256r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 373
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves$7;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves$7;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp384r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 394
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves$8;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves$8;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp521r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 804
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->nameToCurve:Ljava/util/Hashtable;

    .line 805
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->nameToOID:Ljava/util/Hashtable;

    .line 806
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->oidToCurve:Ljava/util/Hashtable;

    .line 807
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->oidToName:Ljava/util/Hashtable;

    .line 808
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->names:Ljava/util/Vector;

    .line 855
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp192k1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp192k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "secp192k1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 856
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp192r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp192r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "secp192r1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 857
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp224k1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp224k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "secp224k1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 858
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp224r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp224r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "secp224r1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 859
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256k1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp256k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "secp256k1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 860
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp256r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "secp256r1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 861
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp384r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp384r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "secp384r1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 862
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp521r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp521r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "secp521r1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 901
    const-string v0, "P-192"

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp192r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveAlias(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 902
    const-string v0, "P-224"

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp224r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveAlias(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 903
    const-string v0, "P-256"

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveAlias(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 904
    const-string v0, "P-384"

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp384r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveAlias(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 905
    const-string v0, "P-521"

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp521r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveAlias(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 906
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist configureBasepoint(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;
    .registers 4
    .param p0, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .param p1, "encoding"    # Ljava/lang/String;

    .line 68
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;[B)V

    .line 69
    .local v0, "G":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;->getPoint()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->configureBasepoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V

    .line 70
    return-object v0
.end method

.method private static blacklist configureCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .registers 1
    .param p0, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    .line 75
    return-object p0
.end method

.method private static blacklist configureCurveGLV(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .registers 4
    .param p0, "c"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .param p1, "p"    # Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;

    .line 80
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->configure()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Config;

    move-result-object v0

    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBEndomorphism;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBEndomorphism;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Config;->setEndomorphism(Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Config;->create()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    return-object v0
.end method

.method static blacklist defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "holder"    # Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 812
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->names:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 813
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 814
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->nameToCurve:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    return-void
.end method

.method static blacklist defineCurveAlias(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 829
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->oidToCurve:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 830
    .local v0, "curve":Ljava/lang/Object;
    if-eqz v0, :cond_17

    .line 835
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 836
    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->nameToOID:Ljava/util/Hashtable;

    invoke-virtual {v1, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->nameToCurve:Ljava/util/Hashtable;

    invoke-virtual {v1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    return-void

    .line 832
    :cond_17
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method static blacklist defineCurveWithOID(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "holder"    # Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 819
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->names:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 820
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->oidToName:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->oidToCurve:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 823
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->nameToOID:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->nameToCurve:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    return-void
.end method

.method public static blacklist getByName(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 910
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->getByNameLazy(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    move-result-object v0

    .line 911
    .local v0, "holder":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v1

    :goto_c
    return-object v1
.end method

.method public static blacklist getByNameLazy(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 916
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->nameToCurve:Ljava/util/Hashtable;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    return-object v0
.end method

.method public static blacklist getByOID(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    .registers 3
    .param p0, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 928
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->getByOIDLazy(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    move-result-object v0

    .line 929
    .local v0, "holder":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v1

    :goto_c
    return-object v1
.end method

.method public static blacklist getByOIDLazy(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;
    .registers 2
    .param p0, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 934
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->oidToCurve:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    return-object v0
.end method

.method public static blacklist getName(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;
    .registers 2
    .param p0, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 953
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->oidToName:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist getNames()Ljava/util/Enumeration;
    .registers 1

    .line 961
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->names:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getOID(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 945
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->nameToOID:Ljava/util/Hashtable;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method
