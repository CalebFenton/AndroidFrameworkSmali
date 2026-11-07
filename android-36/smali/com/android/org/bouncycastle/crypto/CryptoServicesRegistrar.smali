.class public abstract Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;
.super Ljava/lang/Object;
.source "CryptoServicesRegistrar.java"


# static fields
.field private static final blacklist CanSetConstraints:Ljava/security/Permission;

.field private static final blacklist CanSetDefaultProperty:Ljava/security/Permission;

.field private static final blacklist CanSetDefaultRandom:Ljava/security/Permission;

.field private static final blacklist CanSetThreadProperty:Ljava/security/Permission;

.field private static final blacklist LOG:Ljava/util/logging/Logger;

.field private static final blacklist defaultRandomProviderImpl:Lcom/android/org/bouncycastle/crypto/SecureRandomProvider;

.field private static final blacklist defaultSecureRandomProvider:Ljava/util/concurrent/atomic/AtomicReference;

.field private static final blacklist globalProperties:Ljava/util/Map;

.field private static final blacklist noConstraintsImpl:Lcom/android/org/bouncycastle/crypto/CryptoServicesConstraints;

.field private static final blacklist preconfiguredConstraints:Z

.field private static final blacklist servicesConstraints:Ljava/util/concurrent/atomic/AtomicReference;

.field private static final blacklist threadProperties:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 12

    .line 30
    const-class v0, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->LOG:Ljava/util/logging/Logger;

    .line 32
    new-instance v0, Lcom/android/org/bouncycastle/crypto/CryptoServicesPermission;

    const-string v1, "globalConfig"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/CryptoServicesPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->CanSetDefaultProperty:Ljava/security/Permission;

    .line 33
    new-instance v0, Lcom/android/org/bouncycastle/crypto/CryptoServicesPermission;

    const-string v1, "threadLocalConfig"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/CryptoServicesPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->CanSetThreadProperty:Ljava/security/Permission;

    .line 34
    new-instance v0, Lcom/android/org/bouncycastle/crypto/CryptoServicesPermission;

    const-string v1, "defaultRandomConfig"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/CryptoServicesPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->CanSetDefaultRandom:Ljava/security/Permission;

    .line 35
    new-instance v0, Lcom/android/org/bouncycastle/crypto/CryptoServicesPermission;

    const-string v1, "constraints"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/CryptoServicesPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->CanSetConstraints:Ljava/security/Permission;

    .line 37
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->threadProperties:Ljava/lang/ThreadLocal;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->globalProperties:Ljava/util/Map;

    .line 39
    new-instance v0, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$ThreadLocalSecureRandomProvider;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$ThreadLocalSecureRandomProvider;-><init>(Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar-IA;)V

    sput-object v0, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->defaultRandomProviderImpl:Lcom/android/org/bouncycastle/crypto/SecureRandomProvider;

    .line 41
    new-instance v0, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$1;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$1;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->noConstraintsImpl:Lcom/android/org/bouncycastle/crypto/CryptoServicesConstraints;

    .line 49
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v1, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->defaultSecureRandomProvider:Ljava/util/concurrent/atomic/AtomicReference;

    .line 51
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v1, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->servicesConstraints:Ljava/util/concurrent/atomic/AtomicReference;

    .line 57
    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "fca682ce8e12caba26efccf7110e526db078b05edecbcd1eb4a208f3ae1617ae01f35b91a47e6df63413c5e12ed0899bcd132acd50d99151bdc43ee737592e17"

    const/16 v5, 0x10

    invoke-direct {v3, v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v4, Ljava/math/BigInteger;

    const-string v6, "962eddcc369cba8ebb260ee6b6a126d9346e38c5"

    invoke-direct {v4, v6, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v6, Ljava/math/BigInteger;

    const-string v7, "678471b27a9cf44ee91a49c5147db1a9aaf244f05a434d6486931d2d14271b9e35030b71fd73da179069b32e2935630e1c2062354d0da20a6c416e50be794ca4"

    invoke-direct {v6, v7, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v7, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;

    const-string v8, "b869c82b35d70e1b1ff91b28e37a62ecdc34409b"

    .line 61
    invoke-static {v8}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v9, 0x7b

    invoke-direct {v7, v8, v9}, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;-><init>([BI)V

    invoke-direct {v2, v3, v4, v6, v7}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;)V

    .line 63
    new-instance v3, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    new-instance v4, Ljava/math/BigInteger;

    const-string v6, "e9e642599d355f37c97ffd3567120b8e25c9cd43e927b3a9670fbec5d890141922d2c3b3ad2480093799869d1e846aab49fab0ad26d2ce6a22219d470bce7d777d4a21fbe9c270b57f607002f3cef8393694cf45ee3688c11a8c56ab127a3daf"

    invoke-direct {v4, v6, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v6, Ljava/math/BigInteger;

    const-string v7, "9cdbd84c9f1ac2f38d0f80f42ab952e7338bf511"

    invoke-direct {v6, v7, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v7, Ljava/math/BigInteger;

    const-string v8, "30470ad5a005fb14ce2d9dcd87e38bc7d1b1c5facbaecbe95f190aa7a31d23c4dbbcbe06174544401a5b2c020965d8c2bd2171d3668445771f74ba084d2029d83c1c158547f3a9f1a2715be23d51ae4d3e5a1f6a7064f316933a346d3f529252"

    invoke-direct {v7, v8, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v8, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;

    const-string v9, "77d0f8c4dad15eb8c4f2f8d6726cefd96d5bb399"

    .line 73
    invoke-static {v9}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v9

    const/16 v10, 0x107

    invoke-direct {v8, v9, v10}, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;-><init>([BI)V

    invoke-direct {v3, v4, v6, v7, v8}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;)V

    .line 75
    new-instance v4, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    new-instance v6, Ljava/math/BigInteger;

    const-string v7, "fd7f53811d75122952df4a9c2eece4e7f611b7523cef4400c31e3f80b6512669455d402251fb593d8d58fabfc5f5ba30f6cb9b556cd7813b801d346ff26660b76b9950a5a49f9fe8047b1022c24fbba9d7feb7c61bf83b57e7c6a8a6150f04fb83f6d3c51ec3023554135a169132f675f3ae2b61d72aeff22203199dd14801c7"

    invoke-direct {v6, v7, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v7, Ljava/math/BigInteger;

    const-string v8, "9760508f15230bccb292b982a2eb840bf0581cf5"

    invoke-direct {v7, v8, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v8, Ljava/math/BigInteger;

    const-string v9, "f7e1a085d69b3ddecbbcab5c36b857b97994afbbfa3aea82f9574c0b3d0782675159578ebad4594fe67107108180b449167123e84c281613b7cf09328cc8a6e13c167a8b547c8d28e0a3ae1e2bb3a675916ea37f0bfa213562f1fb627a01243bcca4f1bea8519089a883dfe15ae59f06928b665e807b552564014c3bfecf492a"

    invoke-direct {v8, v9, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v9, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;

    const-string v10, "8d5155894229d5e689ee01e6018a237e2cae64cd"

    .line 87
    invoke-static {v10}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v10

    const/16 v11, 0x5c

    invoke-direct {v9, v10, v11}, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;-><init>([BI)V

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;)V

    .line 89
    new-instance v6, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    new-instance v7, Ljava/math/BigInteger;

    const-string v8, "95475cf5d93e596c3fcd1d902add02f427f5f3c7210313bb45fb4d5bb2e5fe1cbd678cd4bbdd84c9836be1f31c0777725aeb6c2fc38b85f48076fa76bcd8146cc89a6fb2f706dd719898c2083dc8d896f84062e2c9c94d137b054a8d8096adb8d51952398eeca852a0af12df83e475aa65d4ec0c38a9560d5661186ff98b9fc9eb60eee8b030376b236bc73be3acdbd74fd61c1d2475fa3077b8f080467881ff7e1ca56fee066d79506ade51edbb5443a563927dbc4ba520086746175c8885925ebc64c6147906773496990cb714ec667304e261faee33b3cbdf008e0c3fa90650d97d3909c9275bf4ac86ffcb3d03e6dfc8ada5934242dd6d3bcca2a406cb0b"

    invoke-direct {v7, v8, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v8, Ljava/math/BigInteger;

    const-string v9, "f8183668ba5fc5bb06b5981e6d8b795d30b8978d43ca0ec572e37e09939a9773"

    invoke-direct {v8, v9, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v9, Ljava/math/BigInteger;

    const-string v10, "42debb9da5b3d88cc956e08787ec3f3a09bba5f48b889a74aaf53174aa0fbe7e3c5b8fcd7a53bef563b0e98560328960a9517f4014d3325fc7962bf1e049370d76d1314a76137e792f3f0db859d095e4a5b932024f079ecf2ef09c797452b0770e1350782ed57ddf794979dcef23cb96f183061965c4ebc93c9c71c56b925955a75f94cccf1449ac43d586d0beee43251b0b2287349d68de0d144403f13e802f4146d882e057af19b6f6275c6676c8fa0e3ca2713a3257fd1b27d0639f695e347d8d1cf9ac819a26ca9b04cb0eb9b7b035988d15bbac65212a55239cfc7e58fae38d7250ab9991ffbc97134025fe8ce04c4399ad96569be91a546f4978693c7a"

    invoke-direct {v9, v10, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;

    const-string v10, "b0b4417601b59cbc9d8ac8f935cadaec4f5fbb2f23785609ae466748d9b5a536"

    .line 111
    invoke-static {v10}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v10

    const/16 v11, 0x1f1

    invoke-direct {v5, v10, v11}, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;-><init>([BI)V

    invoke-direct {v6, v7, v8, v9, v5}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;)V

    .line 113
    sget-object v5, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->DSA_DEFAULT_PARAMS:Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;

    filled-new-array {v2, v3, v4, v6}, [Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->localSetGlobalProperty(Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;[Ljava/lang/Object;)V

    .line 114
    sget-object v5, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->DH_DEFAULT_PARAMS:Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;

    invoke-static {v2}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->toDH(Lcom/android/org/bouncycastle/crypto/params/DSAParameters;)Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    move-result-object v2

    invoke-static {v3}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->toDH(Lcom/android/org/bouncycastle/crypto/params/DSAParameters;)Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    move-result-object v3

    invoke-static {v4}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->toDH(Lcom/android/org/bouncycastle/crypto/params/DSAParameters;)Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    move-result-object v4

    invoke-static {v6}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->toDH(Lcom/android/org/bouncycastle/crypto/params/DSAParameters;)Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    move-result-object v6

    filled-new-array {v2, v3, v4, v6}, [Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->localSetGlobalProperty(Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;[Ljava/lang/Object;)V

    .line 116
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->getDefaultConstraints()Lcom/android/org/bouncycastle/crypto/CryptoServicesConstraints;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 117
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v0, :cond_12e

    const/4 v0, 0x1

    goto :goto_12f

    :cond_12e
    const/4 v0, 0x0

    :goto_12f
    sput-boolean v0, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->preconfiguredConstraints:Z

    return-void
.end method

.method public static blacklist checkConstraints(Lcom/android/org/bouncycastle/crypto/CryptoServiceProperties;)V
    .registers 2

    .line 203
    sget-object v0, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->servicesConstraints:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/crypto/CryptoServicesConstraints;

    invoke-interface {v0, p0}, Lcom/android/org/bouncycastle/crypto/CryptoServicesConstraints;->check(Lcom/android/org/bouncycastle/crypto/CryptoServiceProperties;)V

    return-void
.end method

.method private static blacklist chooseLowerBound(I)I
    .registers 2

    .line 0
    const/16 v0, 0x400

    if-le p0, v0, :cond_1c

    const/16 v0, 0x800

    if-gt p0, v0, :cond_b

    const/16 p0, 0xe0

    return p0

    :cond_b
    const/16 v0, 0xc00

    if-gt p0, v0, :cond_12

    const/16 p0, 0x100

    return p0

    :cond_12
    const/16 v0, 0x1e00

    if-gt p0, v0, :cond_19

    const/16 p0, 0x180

    return p0

    :cond_19
    const/16 p0, 0x200

    return p0

    :cond_1c
    const/16 p0, 0xa0

    return p0
.end method

.method private static blacklist getDefaultConstraints()Lcom/android/org/bouncycastle/crypto/CryptoServicesConstraints;
    .registers 1

    .line 498
    sget-object v0, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->noConstraintsImpl:Lcom/android/org/bouncycastle/crypto/CryptoServicesConstraints;

    return-object v0
.end method

.method public static blacklist getSecureRandom()Ljava/security/SecureRandom;
    .registers 3

    .line 132
    sget-object v0, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->defaultSecureRandomProvider:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->defaultRandomProviderImpl:Lcom/android/org/bouncycastle/crypto/SecureRandomProvider;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 134
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/crypto/SecureRandomProvider;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/SecureRandomProvider;->get()Ljava/security/SecureRandom;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSecureRandom(Ljava/security/SecureRandom;)Ljava/security/SecureRandom;
    .registers 1

    if-nez p0, :cond_6

    .line 145
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object p0

    :cond_6
    return-object p0
.end method

.method public static blacklist getSizedProperty(Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;I)Ljava/lang/Object;
    .registers 6

    .line 300
    invoke-static {p0}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->lookupProperty(Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 307
    :cond_8
    invoke-static {p0}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->-$$Nest$fgettype(Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2a

    .line 309
    :goto_15
    array-length p0, v0

    if-eq v3, p0, :cond_4b

    .line 311
    aget-object p0, v0, v3

    check-cast p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    .line 313
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    if-ne v2, p1, :cond_27

    return-object p0

    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 319
    :cond_2a
    invoke-static {p0}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->-$$Nest$fgettype(Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;)Ljava/lang/Class;

    move-result-object p0

    const-class v2, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    invoke-virtual {p0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_4b

    .line 321
    :goto_36
    array-length p0, v0

    if-eq v3, p0, :cond_4b

    .line 323
    aget-object p0, v0, v3

    check-cast p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    .line 325
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    if-ne v2, p1, :cond_48

    return-object p0

    :cond_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    :cond_4b
    return-object v1
.end method

.method private static varargs blacklist localSetGlobalProperty(Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;[Ljava/lang/Object;)V
    .registers 4

    .line 387
    invoke-static {p0}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->-$$Nest$fgettype(Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 393
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->localSetThread(Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;[Ljava/lang/Object;)V

    .line 395
    sget-object v0, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->globalProperties:Ljava/util/Map;

    invoke-static {p0}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->-$$Nest$fgetname(Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 389
    :cond_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Bad property value passed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist localSetThread(Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;[Ljava/lang/Object;)V
    .registers 4

    .line 374
    sget-object v0, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->threadProperties:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_12

    .line 378
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 379
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 382
    :cond_12
    invoke-static {p0}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->-$$Nest$fgetname(Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static blacklist lookupProperty(Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;)[Ljava/lang/Object;
    .registers 3

    .line 255
    sget-object v0, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->threadProperties:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_20

    .line 258
    invoke-static {p0}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->-$$Nest$fgetname(Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_20

    .line 264
    :cond_15
    invoke-static {p0}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->-$$Nest$fgetname(Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    return-object p0

    .line 260
    :cond_20
    :goto_20
    sget-object v0, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->globalProperties:Ljava/util/Map;

    invoke-static {p0}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->-$$Nest$fgetname(Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method private static blacklist toDH(Lcom/android/org/bouncycastle/crypto/params/DSAParameters;)Lcom/android/org/bouncycastle/crypto/params/DHParameters;
    .registers 10

    .line 462
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 463
    invoke-static {v0}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->chooseLowerBound(I)I

    move-result v5

    .line 464
    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v4

    new-instance v8, Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;

    .line 465
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getValidationParameters()Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;->getSeed()[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getValidationParameters()Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;->getCounter()I

    move-result p0

    invoke-direct {v8, v0, p0}, Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;-><init>([BI)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;IILjava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;)V

    return-object v1
.end method
