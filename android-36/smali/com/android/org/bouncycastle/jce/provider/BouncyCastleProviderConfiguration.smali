.class Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;
.super Ljava/lang/Object;
.source "BouncyCastleProviderConfiguration.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;


# static fields
.field private static blacklist BC_ADDITIONAL_EC_CURVE_PERMISSION:Ljava/security/Permission;

.field private static blacklist BC_DH_LOCAL_PERMISSION:Ljava/security/Permission;

.field private static blacklist BC_DH_PERMISSION:Ljava/security/Permission;

.field private static blacklist BC_EC_CURVE_PERMISSION:Ljava/security/Permission;

.field private static blacklist BC_EC_LOCAL_PERMISSION:Ljava/security/Permission;

.field private static blacklist BC_EC_PERMISSION:Ljava/security/Permission;


# instance fields
.field private volatile blacklist acceptableNamedCurves:Ljava/util/Set;

.field private volatile blacklist additionalECParameters:Ljava/util/Map;

.field private volatile blacklist dhDefaultParams:Ljava/lang/Object;

.field private blacklist dhThreadSpec:Ljava/lang/ThreadLocal;

.field private volatile blacklist ecImplicitCaParams:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

.field private blacklist ecThreadSpec:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 27
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const-string v1, "threadLocalEcImplicitlyCa"

    const-string v2, "BC"

    invoke-direct {v0, v2, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_EC_LOCAL_PERMISSION:Ljava/security/Permission;

    .line 29
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const-string v1, "ecImplicitlyCa"

    invoke-direct {v0, v2, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_EC_PERMISSION:Ljava/security/Permission;

    .line 31
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const-string v1, "threadLocalDhDefaultParams"

    invoke-direct {v0, v2, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_DH_LOCAL_PERMISSION:Ljava/security/Permission;

    .line 33
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const-string v1, "DhDefaultParams"

    invoke-direct {v0, v2, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_DH_PERMISSION:Ljava/security/Permission;

    .line 35
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const-string v1, "acceptableEcCurves"

    invoke-direct {v0, v2, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_EC_CURVE_PERMISSION:Ljava/security/Permission;

    .line 37
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const-string v1, "additionalEcParameters"

    invoke-direct {v0, v2, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_ADDITIONAL_EC_CURVE_PERMISSION:Ljava/security/Permission;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->ecThreadSpec:Ljava/lang/ThreadLocal;

    .line 41
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->dhThreadSpec:Ljava/lang/ThreadLocal;

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->acceptableNamedCurves:Ljava/util/Set;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->additionalECParameters:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public blacklist getDHDefaultParameters(I)Ljavax/crypto/spec/DHParameterSpec;
    .registers 4

    .line 172
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->dhThreadSpec:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    .line 175
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->dhDefaultParams:Ljava/lang/Object;

    .line 178
    :cond_a
    instance-of p0, v0, Ljavax/crypto/spec/DHParameterSpec;

    if-eqz p0, :cond_1b

    .line 180
    check-cast v0, Ljavax/crypto/spec/DHParameterSpec;

    .line 182
    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    if-ne p0, p1, :cond_37

    return-object v0

    .line 187
    :cond_1b
    instance-of p0, v0, [Ljavax/crypto/spec/DHParameterSpec;

    if-eqz p0, :cond_37

    .line 189
    check-cast v0, [Ljavax/crypto/spec/DHParameterSpec;

    const/4 p0, 0x0

    .line 191
    :goto_22
    array-length v1, v0

    if-eq p0, v1, :cond_37

    .line 193
    aget-object v1, v0, p0

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    if-ne v1, p1, :cond_34

    .line 195
    aget-object p0, v0, p0

    return-object p0

    :cond_34
    add-int/lit8 p0, p0, 0x1

    goto :goto_22

    .line 200
    :cond_37
    sget-object p0, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->DH_DEFAULT_PARAMS:Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;

    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSizedProperty(Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    if-eqz p0, :cond_47

    .line 203
    new-instance p1, Lcom/android/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;

    invoke-direct {p1, p0}, Lcom/android/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;-><init>(Lcom/android/org/bouncycastle/crypto/params/DHParameters;)V

    return-object p1

    :cond_47
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getDSADefaultParameters(I)Ljava/security/spec/DSAParameterSpec;
    .registers 4

    .line 211
    sget-object p0, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->DSA_DEFAULT_PARAMS:Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;

    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSizedProperty(Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    if-eqz p0, :cond_1c

    .line 214
    new-instance p1, Ljava/security/spec/DSAParameterSpec;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {p1, v0, v1, p0}, Ljava/security/spec/DSAParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object p1

    :cond_1c
    const/4 p0, 0x0

    return-object p0
.end method

.method blacklist setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .line 50
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 52
    const-string v1, "threadLocalEcImplicitlyCa"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    if-eqz v0, :cond_13

    .line 58
    sget-object p1, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_EC_LOCAL_PERMISSION:Ljava/security/Permission;

    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 61
    :cond_13
    instance-of p1, p2, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    if-nez p1, :cond_21

    if-nez p2, :cond_1a

    goto :goto_21

    .line 67
    :cond_1a
    check-cast p2, Ljava/security/spec/ECParameterSpec;

    invoke-static {p2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;)Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object p1

    goto :goto_24

    .line 63
    :cond_21
    :goto_21
    move-object p1, p2

    check-cast p1, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    :goto_24
    if-nez p1, :cond_2c

    .line 72
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->ecThreadSpec:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    return-void

    .line 76
    :cond_2c
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->ecThreadSpec:Ljava/lang/ThreadLocal;

    invoke-virtual {p0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void

    .line 79
    :cond_32
    const-string v1, "ecImplicitlyCa"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    if-eqz v0, :cond_41

    .line 83
    sget-object p1, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_EC_PERMISSION:Ljava/security/Permission;

    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 86
    :cond_41
    instance-of p1, p2, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    if-nez p1, :cond_51

    if-nez p2, :cond_48

    goto :goto_51

    .line 92
    :cond_48
    check-cast p2, Ljava/security/spec/ECParameterSpec;

    invoke-static {p2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;)Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->ecImplicitCaParams:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    return-void

    .line 88
    :cond_51
    :goto_51
    check-cast p2, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->ecImplicitCaParams:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    return-void

    .line 95
    :cond_56
    const-string v1, "threadLocalDhDefaultParams"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_86

    if-eqz v0, :cond_65

    .line 101
    sget-object p1, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_DH_LOCAL_PERMISSION:Ljava/security/Permission;

    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 104
    :cond_65
    instance-of p1, p2, Ljavax/crypto/spec/DHParameterSpec;

    if-nez p1, :cond_78

    instance-of p1, p2, [Ljavax/crypto/spec/DHParameterSpec;

    if-nez p1, :cond_78

    if-nez p2, :cond_70

    goto :goto_78

    .line 110
    :cond_70
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "not a valid DHParameterSpec"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_78
    :goto_78
    if-nez p2, :cond_80

    .line 115
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->dhThreadSpec:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    return-void

    .line 119
    :cond_80
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->dhThreadSpec:Ljava/lang/ThreadLocal;

    invoke-virtual {p0, p2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void

    .line 122
    :cond_86
    const-string v1, "DhDefaultParams"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ab

    if-eqz v0, :cond_95

    .line 126
    sget-object p1, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_DH_PERMISSION:Ljava/security/Permission;

    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 129
    :cond_95
    instance-of p1, p2, Ljavax/crypto/spec/DHParameterSpec;

    if-nez p1, :cond_a8

    instance-of p1, p2, [Ljavax/crypto/spec/DHParameterSpec;

    if-nez p1, :cond_a8

    if-nez p2, :cond_a0

    goto :goto_a8

    .line 135
    :cond_a0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "not a valid DHParameterSpec or DHParameterSpec[]"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 131
    :cond_a8
    :goto_a8
    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->dhDefaultParams:Ljava/lang/Object;

    return-void

    .line 138
    :cond_ab
    const-string v1, "acceptableEcCurves"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bf

    if-eqz v0, :cond_ba

    .line 142
    sget-object p1, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_EC_CURVE_PERMISSION:Ljava/security/Permission;

    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 145
    :cond_ba
    check-cast p2, Ljava/util/Set;

    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->acceptableNamedCurves:Ljava/util/Set;

    return-void

    .line 147
    :cond_bf
    const-string v1, "additionalEcParameters"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d2

    if-eqz v0, :cond_ce

    .line 151
    sget-object p1, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_ADDITIONAL_EC_CURVE_PERMISSION:Ljava/security/Permission;

    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 154
    :cond_ce
    check-cast p2, Ljava/util/Map;

    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->additionalECParameters:Ljava/util/Map;

    :cond_d2
    return-void
.end method
