.class public final Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;
.super Ljava/lang/Object;
.source "CryptoServicesRegistrar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;,
        Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$ThreadLocalSecureRandomProvider;
    }
.end annotation


# static fields
.field private static final blacklist CanSetConstraints:Ljava/security/Permission;

.field private static final blacklist CanSetDefaultProperty:Ljava/security/Permission;

.field private static final blacklist CanSetDefaultRandom:Ljava/security/Permission;

.field private static final blacklist CanSetThreadProperty:Ljava/security/Permission;

.field private static final blacklist LOG:Ljava/util/logging/Logger;

.field private static final blacklist defaultRandomProviderImpl:Lcom/android/internal/org/bouncycastle/crypto/SecureRandomProvider;

.field private static final blacklist defaultSecureRandomProvider:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/internal/org/bouncycastle/crypto/SecureRandomProvider;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist globalProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist noConstraintsImpl:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesConstraints;

.field private static final blacklist preconfiguredConstraints:Z

.field private static final blacklist servicesConstraints:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesConstraints;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist threadProperties:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 11

    .line 30
    const-class v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->LOG:Ljava/util/logging/Logger;

    .line 32
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesPermission;

    const-string v1, "globalConfig"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->CanSetDefaultProperty:Ljava/security/Permission;

    .line 33
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesPermission;

    const-string/jumbo v1, "threadLocalConfig"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->CanSetThreadProperty:Ljava/security/Permission;

    .line 34
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesPermission;

    const-string v1, "defaultRandomConfig"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->CanSetDefaultRandom:Ljava/security/Permission;

    .line 35
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesPermission;

    const-string v1, "constraints"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->CanSetConstraints:Ljava/security/Permission;

    .line 37
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->threadProperties:Ljava/lang/ThreadLocal;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->globalProperties:Ljava/util/Map;

    .line 39
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$ThreadLocalSecureRandomProvider;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$ThreadLocalSecureRandomProvider;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar-IA;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->defaultRandomProviderImpl:Lcom/android/internal/org/bouncycastle/crypto/SecureRandomProvider;

    .line 41
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$1;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$1;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->noConstraintsImpl:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesConstraints;

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->defaultSecureRandomProvider:Ljava/util/concurrent/atomic/AtomicReference;

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->servicesConstraints:Ljava/util/concurrent/atomic/AtomicReference;

    .line 57
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "fca682ce8e12caba26efccf7110e526db078b05edecbcd1eb4a208f3ae1617ae01f35b91a47e6df63413c5e12ed0899bcd132acd50d99151bdc43ee737592e17"

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v2, Ljava/math/BigInteger;

    const-string v4, "962eddcc369cba8ebb260ee6b6a126d9346e38c5"

    invoke-direct {v2, v4, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "678471b27a9cf44ee91a49c5147db1a9aaf244f05a434d6486931d2d14271b9e35030b71fd73da179069b32e2935630e1c2062354d0da20a6c416e50be794ca4"

    invoke-direct {v4, v5, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;

    .line 61
    const-string v6, "b869c82b35d70e1b1ff91b28e37a62ecdc34409b"

    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v6

    const/16 v7, 0x7b

    invoke-direct {v5, v6, v7}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;-><init>([BI)V

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;)V

    .line 63
    .local v0, "def512Params":Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    new-instance v2, Ljava/math/BigInteger;

    const-string v4, "e9e642599d355f37c97ffd3567120b8e25c9cd43e927b3a9670fbec5d890141922d2c3b3ad2480093799869d1e846aab49fab0ad26d2ce6a22219d470bce7d777d4a21fbe9c270b57f607002f3cef8393694cf45ee3688c11a8c56ab127a3daf"

    invoke-direct {v2, v4, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "9cdbd84c9f1ac2f38d0f80f42ab952e7338bf511"

    invoke-direct {v4, v5, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v5, Ljava/math/BigInteger;

    const-string v6, "30470ad5a005fb14ce2d9dcd87e38bc7d1b1c5facbaecbe95f190aa7a31d23c4dbbcbe06174544401a5b2c020965d8c2bd2171d3668445771f74ba084d2029d83c1c158547f3a9f1a2715be23d51ae4d3e5a1f6a7064f316933a346d3f529252"

    invoke-direct {v5, v6, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v6, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;

    .line 73
    const-string v7, "77d0f8c4dad15eb8c4f2f8d6726cefd96d5bb399"

    invoke-static {v7}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v7

    const/16 v8, 0x107

    invoke-direct {v6, v7, v8}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;-><init>([BI)V

    invoke-direct {v1, v2, v4, v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;)V

    .line 75
    .local v1, "def768Params":Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;
    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "fd7f53811d75122952df4a9c2eece4e7f611b7523cef4400c31e3f80b6512669455d402251fb593d8d58fabfc5f5ba30f6cb9b556cd7813b801d346ff26660b76b9950a5a49f9fe8047b1022c24fbba9d7feb7c61bf83b57e7c6a8a6150f04fb83f6d3c51ec3023554135a169132f675f3ae2b61d72aeff22203199dd14801c7"

    invoke-direct {v4, v5, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v5, Ljava/math/BigInteger;

    const-string v6, "9760508f15230bccb292b982a2eb840bf0581cf5"

    invoke-direct {v5, v6, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v6, Ljava/math/BigInteger;

    const-string v7, "f7e1a085d69b3ddecbbcab5c36b857b97994afbbfa3aea82f9574c0b3d0782675159578ebad4594fe67107108180b449167123e84c281613b7cf09328cc8a6e13c167a8b547c8d28e0a3ae1e2bb3a675916ea37f0bfa213562f1fb627a01243bcca4f1bea8519089a883dfe15ae59f06928b665e807b552564014c3bfecf492a"

    invoke-direct {v6, v7, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v7, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;

    .line 87
    const-string v8, "8d5155894229d5e689ee01e6018a237e2cae64cd"

    invoke-static {v8}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v9, 0x5c

    invoke-direct {v7, v8, v9}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;-><init>([BI)V

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;)V

    .line 89
    .local v2, "def1024Params":Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;
    new-instance v4, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    new-instance v5, Ljava/math/BigInteger;

    const-string v6, "95475cf5d93e596c3fcd1d902add02f427f5f3c7210313bb45fb4d5bb2e5fe1cbd678cd4bbdd84c9836be1f31c0777725aeb6c2fc38b85f48076fa76bcd8146cc89a6fb2f706dd719898c2083dc8d896f84062e2c9c94d137b054a8d8096adb8d51952398eeca852a0af12df83e475aa65d4ec0c38a9560d5661186ff98b9fc9eb60eee8b030376b236bc73be3acdbd74fd61c1d2475fa3077b8f080467881ff7e1ca56fee066d79506ade51edbb5443a563927dbc4ba520086746175c8885925ebc64c6147906773496990cb714ec667304e261faee33b3cbdf008e0c3fa90650d97d3909c9275bf4ac86ffcb3d03e6dfc8ada5934242dd6d3bcca2a406cb0b"

    invoke-direct {v5, v6, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v6, Ljava/math/BigInteger;

    const-string v7, "f8183668ba5fc5bb06b5981e6d8b795d30b8978d43ca0ec572e37e09939a9773"

    invoke-direct {v6, v7, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v7, Ljava/math/BigInteger;

    const-string v8, "42debb9da5b3d88cc956e08787ec3f3a09bba5f48b889a74aaf53174aa0fbe7e3c5b8fcd7a53bef563b0e98560328960a9517f4014d3325fc7962bf1e049370d76d1314a76137e792f3f0db859d095e4a5b932024f079ecf2ef09c797452b0770e1350782ed57ddf794979dcef23cb96f183061965c4ebc93c9c71c56b925955a75f94cccf1449ac43d586d0beee43251b0b2287349d68de0d144403f13e802f4146d882e057af19b6f6275c6676c8fa0e3ca2713a3257fd1b27d0639f695e347d8d1cf9ac819a26ca9b04cb0eb9b7b035988d15bbac65212a55239cfc7e58fae38d7250ab9991ffbc97134025fe8ce04c4399ad96569be91a546f4978693c7a"

    invoke-direct {v7, v8, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;

    .line 111
    const-string v8, "b0b4417601b59cbc9d8ac8f935cadaec4f5fbb2f23785609ae466748d9b5a536"

    invoke-static {v8}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v9, 0x1f1

    invoke-direct {v3, v8, v9}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;-><init>([BI)V

    invoke-direct {v4, v5, v6, v7, v3}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;)V

    .line 113
    .local v4, "def2048Params":Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;
    sget-object v3, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->DSA_DEFAULT_PARAMS:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;

    const/4 v5, 0x4

    new-array v6, v5, [Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v8, 0x1

    aput-object v1, v6, v8

    const/4 v9, 0x2

    aput-object v2, v6, v9

    const/4 v10, 0x3

    aput-object v4, v6, v10

    invoke-static {v3, v6}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->localSetGlobalProperty(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;[Ljava/lang/Object;)V

    .line 114
    sget-object v3, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->DH_DEFAULT_PARAMS:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;

    new-array v5, v5, [Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->toDH(Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;)Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->toDH(Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;)Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->toDH(Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;)Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->toDH(Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;)Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v3, v5}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->localSetGlobalProperty(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;[Ljava/lang/Object;)V

    .line 116
    sget-object v3, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->servicesConstraints:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->getDefaultConstraints()Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesConstraints;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 117
    sget-object v3, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->servicesConstraints:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    sget-object v5, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->noConstraintsImpl:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesConstraints;

    if-eq v3, v5, :cond_145

    move v7, v8

    :cond_145
    sput-boolean v7, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->preconfiguredConstraints:Z

    .line 118
    .end local v0    # "def512Params":Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;
    .end local v1    # "def768Params":Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;
    .end local v2    # "def1024Params":Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;
    .end local v4    # "def2048Params":Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    return-void
.end method

.method public static blacklist checkConstraints(Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;)V
    .registers 2
    .param p0, "cryptoService"    # Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;

    .line 203
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->servicesConstraints:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesConstraints;

    invoke-interface {v0, p0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesConstraints;->check(Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 204
    return-void
.end method

.method private static blacklist checkPermission(Ljava/security/Permission;)V
    .registers 3
    .param p0, "permission"    # Ljava/security/Permission;

    .line 444
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 446
    .local v0, "securityManager":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_e

    .line 448
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$3;

    invoke-direct {v1, v0, p0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$3;-><init>(Ljava/lang/SecurityManager;Ljava/security/Permission;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 458
    :cond_e
    return-void
.end method

.method private static blacklist chooseLowerBound(I)I
    .registers 3
    .param p0, "pSize"    # I

    .line 471
    const/16 v0, 0xa0

    .line 472
    .local v0, "m":I
    const/16 v1, 0x400

    if-le p0, v1, :cond_1d

    .line 474
    const/16 v1, 0x800

    if-gt p0, v1, :cond_d

    .line 476
    const/16 v0, 0xe0

    goto :goto_1d

    .line 478
    :cond_d
    const/16 v1, 0xc00

    if-gt p0, v1, :cond_14

    .line 480
    const/16 v0, 0x100

    goto :goto_1d

    .line 482
    :cond_14
    const/16 v1, 0x1e00

    if-gt p0, v1, :cond_1b

    .line 484
    const/16 v0, 0x180

    goto :goto_1d

    .line 488
    :cond_1b
    const/16 v0, 0x200

    .line 491
    :cond_1d
    :goto_1d
    return v0
.end method

.method public static blacklist clearGlobalProperty(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;)[Ljava/lang/Object;
    .registers 3
    .param p0, "property"    # Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;",
            ")[TT;"
        }
    .end annotation

    .line 407
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->CanSetDefaultProperty:Ljava/security/Permission;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkPermission(Ljava/security/Permission;)V

    .line 410
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->localClearThreadProperty(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;)[Ljava/lang/Object;

    .line 412
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->globalProperties:Ljava/util/Map;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->-$$Nest$fgetname(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static blacklist clearThreadProperty(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;)[Ljava/lang/Object;
    .registers 2
    .param p0, "property"    # Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;",
            ")[TT;"
        }
    .end annotation

    .line 424
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->CanSetThreadProperty:Ljava/security/Permission;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkPermission(Ljava/security/Permission;)V

    .line 426
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->localClearThreadProperty(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getDefaultConstraints()Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesConstraints;
    .registers 1

    .line 498
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->noConstraintsImpl:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesConstraints;

    return-object v0
.end method

.method public static blacklist getProperty(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;)Ljava/lang/Object;
    .registers 3
    .param p0, "property"    # Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;",
            ")TT;"
        }
    .end annotation

    .line 243
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->lookupProperty(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;)[Ljava/lang/Object;

    move-result-object v0

    .line 245
    .local v0, "values":[Ljava/lang/Object;
    if-eqz v0, :cond_a

    .line 247
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1

    .line 250
    :cond_a
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist getSecureRandom()Ljava/security/SecureRandom;
    .registers 3

    .line 132
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->defaultSecureRandomProvider:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->defaultRandomProviderImpl:Lcom/android/internal/org/bouncycastle/crypto/SecureRandomProvider;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 134
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->defaultSecureRandomProvider:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/SecureRandomProvider;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/SecureRandomProvider;->get()Ljava/security/SecureRandom;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSecureRandom(Ljava/security/SecureRandom;)Ljava/security/SecureRandom;
    .registers 2
    .param p0, "secureRandom"    # Ljava/security/SecureRandom;

    .line 145
    if-nez p0, :cond_7

    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    goto :goto_8

    :cond_7
    move-object v0, p0

    :goto_8
    return-object v0
.end method

.method public static blacklist getServicesConstraints()Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesConstraints;
    .registers 1

    .line 192
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->servicesConstraints:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesConstraints;

    return-object v0
.end method

.method public static blacklist getSizedProperty(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;I)Ljava/lang/Object;
    .registers 7
    .param p0, "property"    # Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;",
            "I)TT;"
        }
    .end annotation

    .line 300
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->lookupProperty(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;)[Ljava/lang/Object;

    move-result-object v0

    .line 302
    .local v0, "values":[Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 304
    return-object v1

    .line 307
    :cond_8
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->-$$Nest$fgettype(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 309
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    array-length v3, v0

    if-eq v2, v3, :cond_2a

    .line 311
    aget-object v3, v0, v2

    check-cast v3, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    .line 313
    .local v3, "params":Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    if-ne v4, p1, :cond_27

    .line 315
    return-object v3

    .line 309
    .end local v3    # "params":Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .end local v2    # "i":I
    :cond_2a
    goto :goto_4d

    .line 319
    :cond_2b
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->-$$Nest$fgettype(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 321
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_38
    array-length v3, v0

    if-eq v2, v3, :cond_4d

    .line 323
    aget-object v3, v0, v2

    check-cast v3, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    .line 325
    .local v3, "params":Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    if-ne v4, p1, :cond_4a

    .line 327
    return-object v3

    .line 321
    .end local v3    # "params":Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;
    :cond_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 332
    .end local v2    # "i":I
    :cond_4d
    :goto_4d
    return-object v1
.end method

.method public static blacklist getSizedProperty(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;)[Ljava/lang/Object;
    .registers 3
    .param p0, "property"    # Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;",
            ")[TT;"
        }
    .end annotation

    .line 279
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->lookupProperty(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;)[Ljava/lang/Object;

    move-result-object v0

    .line 281
    .local v0, "values":[Ljava/lang/Object;
    if-nez v0, :cond_8

    .line 283
    const/4 v1, 0x0

    return-object v1

    .line 286
    :cond_8
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    return-object v1
.end method

.method private static blacklist localClearThreadProperty(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;)[Ljava/lang/Object;
    .registers 3
    .param p0, "property"    # Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;

    .line 431
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->threadProperties:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 433
    .local v0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/Object;>;"
    if-nez v0, :cond_15

    .line 435
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v0, v1

    .line 436
    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->threadProperties:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 439
    :cond_15
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->-$$Nest$fgetname(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    return-object v1
.end method

.method private static varargs blacklist localSetGlobalProperty(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;[Ljava/lang/Object;)V
    .registers 4
    .param p0, "property"    # Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;",
            "[TT;)V"
        }
    .end annotation

    .line 387
    .local p1, "propertyValue":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->-$$Nest$fgettype(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 393
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->localSetThread(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;[Ljava/lang/Object;)V

    .line 395
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->globalProperties:Ljava/util/Map;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->-$$Nest$fgetname(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    return-void

    .line 389
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad property value passed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist localSetThread(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;[Ljava/lang/Object;)V
    .registers 4
    .param p0, "property"    # Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;",
            "[TT;)V"
        }
    .end annotation

    .line 374
    .local p1, "propertyValue":[Ljava/lang/Object;, "[TT;"
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->threadProperties:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 376
    .local v0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/Object;>;"
    if-nez v0, :cond_15

    .line 378
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v0, v1

    .line 379
    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->threadProperties:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 382
    :cond_15
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->-$$Nest$fgetname(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    return-void
.end method

.method private static blacklist lookupProperty(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;)[Ljava/lang/Object;
    .registers 4
    .param p0, "property"    # Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;

    .line 255
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->threadProperties:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 258
    .local v0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/Object;>;"
    if-eqz v0, :cond_20

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->-$$Nest$fgetname(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_20

    .line 264
    :cond_15
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->-$$Nest$fgetname(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .local v1, "values":[Ljava/lang/Object;
    goto :goto_2c

    .line 260
    .end local v1    # "values":[Ljava/lang/Object;
    :cond_20
    :goto_20
    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->globalProperties:Ljava/util/Map;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->-$$Nest$fgetname(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 266
    .restart local v1    # "values":[Ljava/lang/Object;
    :goto_2c
    return-object v1
.end method

.method public static varargs blacklist setGlobalProperty(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;[Ljava/lang/Object;)V
    .registers 3
    .param p0, "property"    # Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;",
            "[TT;)V"
        }
    .end annotation

    .line 367
    .local p1, "propertyValue":[Ljava/lang/Object;, "[TT;"
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->CanSetDefaultProperty:Ljava/security/Permission;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkPermission(Ljava/security/Permission;)V

    .line 369
    invoke-virtual {p1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->localSetGlobalProperty(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;[Ljava/lang/Object;)V

    .line 370
    return-void
.end method

.method public static blacklist setSecureRandom(Ljava/security/SecureRandom;)V
    .registers 3
    .param p0, "secureRandom"    # Ljava/security/SecureRandom;

    .line 155
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->CanSetDefaultRandom:Ljava/security/Permission;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkPermission(Ljava/security/Permission;)V

    .line 157
    if-nez p0, :cond_f

    .line 159
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->defaultSecureRandomProvider:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->defaultRandomProviderImpl:Lcom/android/internal/org/bouncycastle/crypto/SecureRandomProvider;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_19

    .line 163
    :cond_f
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->defaultSecureRandomProvider:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$2;

    invoke-direct {v1, p0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$2;-><init>(Ljava/security/SecureRandom;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 171
    :goto_19
    return-void
.end method

.method public static blacklist setSecureRandomProvider(Lcom/android/internal/org/bouncycastle/crypto/SecureRandomProvider;)V
    .registers 2
    .param p0, "secureRandomProvider"    # Lcom/android/internal/org/bouncycastle/crypto/SecureRandomProvider;

    .line 180
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->CanSetDefaultRandom:Ljava/security/Permission;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkPermission(Ljava/security/Permission;)V

    .line 182
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->defaultSecureRandomProvider:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 183
    return-void
.end method

.method public static blacklist setServicesConstraints(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesConstraints;)V
    .registers 4
    .param p0, "constraints"    # Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesConstraints;

    .line 211
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->CanSetConstraints:Ljava/security/Permission;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkPermission(Ljava/security/Permission;)V

    .line 213
    if-nez p0, :cond_a

    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->noConstraintsImpl:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesConstraints;

    goto :goto_b

    :cond_a
    move-object v0, p0

    .line 215
    .local v0, "newConstraints":Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesConstraints;
    :goto_b
    sget-boolean v1, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->preconfiguredConstraints:Z

    if-eqz v1, :cond_25

    .line 217
    const-string v1, "com.android.internal.org.bouncycastle.constraints.allow_override"

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/Properties;->isOverrideSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 219
    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->servicesConstraints:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_2a

    .line 223
    :cond_1d
    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->LOG:Ljava/util/logging/Logger;

    const-string v2, "attempt to override pre-configured constraints ignored"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_2a

    .line 229
    :cond_25
    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->servicesConstraints:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 231
    :goto_2a
    return-void
.end method

.method public static varargs blacklist setThreadProperty(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;[Ljava/lang/Object;)V
    .registers 4
    .param p0, "property"    # Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;",
            "[TT;)V"
        }
    .end annotation

    .line 346
    .local p1, "propertyValue":[Ljava/lang/Object;, "[TT;"
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->CanSetThreadProperty:Ljava/security/Permission;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkPermission(Ljava/security/Permission;)V

    .line 348
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->-$$Nest$fgettype(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 353
    invoke-virtual {p1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->localSetThread(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;[Ljava/lang/Object;)V

    .line 354
    return-void

    .line 350
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad property value passed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist toDH(Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;)Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;
    .registers 10
    .param p0, "dsaParams"    # Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    .line 462
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 463
    .local v0, "pSize":I
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->chooseLowerBound(I)I

    move-result v5

    .line 464
    .local v5, "m":I
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v4

    new-instance v8, Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;

    .line 465
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->getValidationParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;->getSeed()[B

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->getValidationParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;->getCounter()I

    move-result v7

    invoke-direct {v8, v6, v7}, Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;-><init>([BI)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;IILjava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;)V

    .line 464
    return-object v1
.end method
