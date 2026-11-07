.class public final Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;
.super Ljava/lang/Object;
.source "CryptoServicesRegistrar.java"


# static fields
.field public static final blacklist DH_DEFAULT_PARAMS:Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;

.field public static final blacklist DSA_DEFAULT_PARAMS:Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;

.field public static final blacklist EC_IMPLICITLY_CA:Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;


# instance fields
.field private final blacklist name:Ljava/lang/String;

.field private final blacklist type:Ljava/lang/Class;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetname(Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->name:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgettype(Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;)Ljava/lang/Class;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->type:Ljava/lang/Class;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 510
    new-instance v0, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;

    const-string v1, "ecImplicitlyCA"

    const-class v2, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->EC_IMPLICITLY_CA:Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;

    .line 514
    new-instance v0, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;

    const-string v1, "dhDefaultParams"

    const-class v2, Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->DH_DEFAULT_PARAMS:Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;

    .line 518
    new-instance v0, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;

    const-string v1, "dsaDefaultParams"

    const-class v2, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->DSA_DEFAULT_PARAMS:Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 3

    .line 523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 524
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->name:Ljava/lang/String;

    .line 525
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->type:Ljava/lang/Class;

    return-void
.end method
