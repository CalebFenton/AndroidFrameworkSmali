.class public Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;
.super Ljava/lang/Object;
.source "SECNamedCurves.java"


# static fields
.field static final blacklist curves:Ljava/util/Hashtable;

.field static final blacklist names:Ljava/util/Hashtable;

.field static final blacklist objIds:Ljava/util/Hashtable;

.field static blacklist secp112r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist secp112r2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist secp128r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist secp128r2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist secp160k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist secp160r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist secp160r2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist secp192k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist secp192r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist secp224k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist secp224r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist secp256k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist secp256r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist secp384r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist secp521r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist sect113r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist sect113r2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist sect131r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist sect131r2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist sect163k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist sect163r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist sect163r2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist sect193r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist sect193r2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist sect233k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist sect233r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist sect239k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist sect283k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist sect283r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist sect409k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist sect409r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist sect571k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist sect571r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smconfigureBasepoint(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->configureBasepoint(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smconfigureCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->configureCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smconfigureCurveGLV(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->configureCurveGLV(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smfromHex(Ljava/lang/String;)Ljava/math/BigInteger;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->fromHex(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 51
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$1;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$1;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp112r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 80
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$2;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$2;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp112r2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 109
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$3;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$3;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp128r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 138
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$4;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$4;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp128r2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 167
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$5;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$5;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp160k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 210
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$6;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$6;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp160r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 239
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$7;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$7;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp160r2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 268
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$8;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$8;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp192k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 311
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$9;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$9;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp192r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 340
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$10;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$10;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp224k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 383
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$11;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$11;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp224r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 412
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$12;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$12;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp256k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 455
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$13;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$13;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp256r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 484
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$14;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$14;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp384r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 514
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$15;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$15;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp521r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 544
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$16;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$16;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect113r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 574
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$17;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$17;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect113r2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 604
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$18;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$18;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect131r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 636
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$19;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$19;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect131r2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 668
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$20;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$20;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect163k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 700
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$21;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$21;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect163r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 732
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$22;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$22;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect163r2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 764
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$23;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$23;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect193r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 794
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$24;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$24;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect193r2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 824
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$25;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$25;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect233k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 854
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$26;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$26;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect233r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 884
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$27;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$27;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect239k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 914
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$28;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$28;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect283k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 947
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$29;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$29;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect283r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 980
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$30;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$30;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect409k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 1011
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$31;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$31;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect409r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 1042
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$32;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$32;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect571k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 1075
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$33;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$33;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect571r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 1106
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->objIds:Ljava/util/Hashtable;

    .line 1107
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->curves:Ljava/util/Hashtable;

    .line 1108
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->names:Ljava/util/Hashtable;

    .line 1119
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp112r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp112r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "secp112r1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1120
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp112r2:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp112r2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "secp112r2"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1121
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp128r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp128r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "secp128r1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1122
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp128r2:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp128r2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "secp128r2"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1123
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp160k1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp160k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "secp160k1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1124
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp160r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp160r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "secp160r1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1125
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp160r2:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp160r2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "secp160r2"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1126
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp192k1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp192k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "secp192k1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1127
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp192r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp192r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "secp192r1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1128
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp224k1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp224k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "secp224k1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1129
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp224r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp224r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "secp224r1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1130
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256k1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp256k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "secp256k1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1131
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp256r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "secp256r1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1132
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp384r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp384r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "secp384r1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1133
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp521r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->secp521r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "secp521r1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1135
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect113r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect113r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "sect113r1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1136
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect113r2:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect113r2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "sect113r2"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1137
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect131r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect131r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "sect131r1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1138
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect131r2:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect131r2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "sect131r2"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1139
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect163k1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect163k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "sect163k1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1140
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect163r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect163r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "sect163r1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1141
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect163r2:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect163r2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "sect163r2"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1142
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect193r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect193r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "sect193r1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1143
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect193r2:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect193r2:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "sect193r2"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1144
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect233k1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect233k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "sect233k1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1145
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect233r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect233r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "sect233r1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1146
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect239k1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect239k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "sect239k1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1147
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect283k1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect283k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "sect283k1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1148
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect283r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect283r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "sect283r1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1149
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect409k1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect409k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "sect409k1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1150
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect409r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect409r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "sect409r1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1151
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect571k1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect571k1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "sect571k1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1152
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect571r1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->sect571r1:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string/jumbo v2, "sect571r1"

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1153
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist configureBasepoint(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;
    .registers 4
    .param p0, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .param p1, "encoding"    # Ljava/lang/String;

    .line 28
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;[B)V

    .line 29
    .local v0, "G":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;->getPoint()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->configureBasepoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V

    .line 30
    return-object v0
.end method

.method private static blacklist configureCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .registers 1
    .param p0, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    .line 35
    return-object p0
.end method

.method private static blacklist configureCurveGLV(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .registers 4
    .param p0, "c"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .param p1, "p"    # Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;

    .line 40
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

.method static blacklist defineCurve(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "holder"    # Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 1112
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1113
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->names:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->curves:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1115
    return-void
.end method

.method private static blacklist fromHex(Ljava/lang/String;)Ljava/math/BigInteger;
    .registers 4
    .param p0, "hex"    # Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static blacklist getByName(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 1157
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->getOID(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    .line 1158
    .local v0, "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_c

    :cond_8
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->getByOID(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v1

    :goto_c
    return-object v1
.end method

.method public static blacklist getByNameLazy(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 1163
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->getOID(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    .line 1164
    .local v0, "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_c

    :cond_8
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->getByOIDLazy(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    move-result-object v1

    :goto_c
    return-object v1
.end method

.method public static blacklist getByOID(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    .registers 3
    .param p0, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1175
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->getByOIDLazy(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    move-result-object v0

    .line 1176
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

    .line 1181
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->curves:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    return-object v0
.end method

.method public static blacklist getName(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;
    .registers 2
    .param p0, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1202
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->names:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist getNames()Ljava/util/Enumeration;
    .registers 1

    .line 1211
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->names:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getOID(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 1193
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method
