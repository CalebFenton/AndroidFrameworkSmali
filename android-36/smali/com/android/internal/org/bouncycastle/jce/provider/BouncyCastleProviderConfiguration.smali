.class Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;
.super Ljava/lang/Object;
.source "BouncyCastleProviderConfiguration.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;


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

.field private volatile blacklist ecImplicitCaParams:Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

.field private blacklist ecThreadSpec:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 27
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const-string/jumbo v1, "threadLocalEcImplicitlyCa"

    const-string v2, "BC"

    invoke-direct {v0, v2, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_EC_LOCAL_PERMISSION:Ljava/security/Permission;

    .line 29
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const-string v1, "ecImplicitlyCa"

    invoke-direct {v0, v2, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_EC_PERMISSION:Ljava/security/Permission;

    .line 31
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const-string/jumbo v1, "threadLocalDhDefaultParams"

    invoke-direct {v0, v2, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_DH_LOCAL_PERMISSION:Ljava/security/Permission;

    .line 33
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const-string v1, "DhDefaultParams"

    invoke-direct {v0, v2, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_DH_PERMISSION:Ljava/security/Permission;

    .line 35
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const-string v1, "acceptableEcCurves"

    invoke-direct {v0, v2, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_EC_CURVE_PERMISSION:Ljava/security/Permission;

    .line 37
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const-string v1, "additionalEcParameters"

    invoke-direct {v0, v2, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_ADDITIONAL_EC_CURVE_PERMISSION:Ljava/security/Permission;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->ecThreadSpec:Ljava/lang/ThreadLocal;

    .line 41
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->dhThreadSpec:Ljava/lang/ThreadLocal;

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->acceptableNamedCurves:Ljava/util/Set;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->additionalECParameters:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public blacklist getAcceptableNamedCurves()Ljava/util/Set;
    .registers 2

    .line 222
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->acceptableNamedCurves:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAdditionalECParameters()Ljava/util/Map;
    .registers 2

    .line 227
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->additionalECParameters:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDHDefaultParameters(I)Ljavax/crypto/spec/DHParameterSpec;
    .registers 6
    .param p1, "keySize"    # I

    .line 172
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->dhThreadSpec:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    .line 173
    .local v0, "params":Ljava/lang/Object;
    if-nez v0, :cond_a

    .line 175
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->dhDefaultParams:Ljava/lang/Object;

    .line 178
    :cond_a
    instance-of v1, v0, Ljavax/crypto/spec/DHParameterSpec;

    if-eqz v1, :cond_1d

    .line 180
    move-object v1, v0

    check-cast v1, Ljavax/crypto/spec/DHParameterSpec;

    .line 182
    .local v1, "spec":Ljavax/crypto/spec/DHParameterSpec;
    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    if-ne v2, p1, :cond_1c

    .line 184
    return-object v1

    .line 186
    .end local v1    # "spec":Ljavax/crypto/spec/DHParameterSpec;
    :cond_1c
    goto :goto_3a

    .line 187
    :cond_1d
    instance-of v1, v0, [Ljavax/crypto/spec/DHParameterSpec;

    if-eqz v1, :cond_3a

    .line 189
    move-object v1, v0

    check-cast v1, [Ljavax/crypto/spec/DHParameterSpec;

    .line 191
    .local v1, "specs":[Ljavax/crypto/spec/DHParameterSpec;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_25
    array-length v3, v1

    if-eq v2, v3, :cond_3a

    .line 193
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    if-ne v3, p1, :cond_37

    .line 195
    aget-object v3, v1, v2

    return-object v3

    .line 191
    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 200
    .end local v1    # "specs":[Ljavax/crypto/spec/DHParameterSpec;
    .end local v2    # "i":I
    :cond_3a
    :goto_3a
    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->DH_DEFAULT_PARAMS:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;

    invoke-static {v1, p1}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSizedProperty(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    .line 201
    .local v1, "dhParams":Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;
    if-eqz v1, :cond_4a

    .line 203
    new-instance v2, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;

    invoke-direct {v2, v1}, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;-><init>(Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;)V

    return-object v2

    .line 206
    :cond_4a
    const/4 v2, 0x0

    return-object v2
.end method

.method public blacklist getDSADefaultParameters(I)Ljava/security/spec/DSAParameterSpec;
    .registers 7
    .param p1, "keySize"    # I

    .line 211
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->DSA_DEFAULT_PARAMS:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;

    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSizedProperty(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    .line 212
    .local v0, "dsaParams":Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;
    if-eqz v0, :cond_1c

    .line 214
    new-instance v1, Ljava/security/spec/DSAParameterSpec;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Ljava/security/spec/DSAParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v1

    .line 217
    :cond_1c
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getEcImplicitlyCa()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;
    .registers 3

    .line 160
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->ecThreadSpec:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    .line 162
    .local v0, "spec":Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;
    if-eqz v0, :cond_b

    .line 164
    return-object v0

    .line 167
    :cond_b
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->ecImplicitCaParams:Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    return-object v1
.end method

.method blacklist setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "parameter"    # Ljava/lang/Object;

    .line 50
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 52
    .local v0, "securityManager":Ljava/lang/SecurityManager;
    const-string/jumbo v1, "threadLocalEcImplicitlyCa"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 56
    if-eqz v0, :cond_14

    .line 58
    sget-object v1, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_EC_LOCAL_PERMISSION:Ljava/security/Permission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 61
    :cond_14
    instance-of v1, p2, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    if-nez v1, :cond_23

    if-nez p2, :cond_1b

    goto :goto_23

    .line 67
    :cond_1b
    move-object v1, p2

    check-cast v1, Ljava/security/spec/ECParameterSpec;

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;)Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v1

    .local v1, "curveSpec":Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;
    goto :goto_26

    .line 63
    .end local v1    # "curveSpec":Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;
    :cond_23
    :goto_23
    move-object v1, p2

    check-cast v1, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    .line 70
    .restart local v1    # "curveSpec":Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;
    :goto_26
    if-nez v1, :cond_2e

    .line 72
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->ecThreadSpec:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_33

    .line 76
    :cond_2e
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->ecThreadSpec:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 78
    .end local v1    # "curveSpec":Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;
    :goto_33
    goto/16 :goto_dd

    .line 79
    :cond_35
    const-string v1, "ecImplicitlyCa"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 81
    if-eqz v0, :cond_44

    .line 83
    sget-object v1, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_EC_PERMISSION:Ljava/security/Permission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 86
    :cond_44
    instance-of v1, p2, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    if-nez v1, :cond_56

    if-nez p2, :cond_4b

    goto :goto_56

    .line 92
    :cond_4b
    move-object v1, p2

    check-cast v1, Ljava/security/spec/ECParameterSpec;

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;)Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->ecImplicitCaParams:Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    goto/16 :goto_dd

    .line 88
    :cond_56
    :goto_56
    move-object v1, p2

    check-cast v1, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->ecImplicitCaParams:Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    goto/16 :goto_dd

    .line 95
    :cond_5d
    const-string/jumbo v1, "threadLocalDhDefaultParams"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 99
    if-eqz v0, :cond_6d

    .line 101
    sget-object v1, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_DH_LOCAL_PERMISSION:Ljava/security/Permission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 104
    :cond_6d
    instance-of v1, p2, Ljavax/crypto/spec/DHParameterSpec;

    if-nez v1, :cond_80

    instance-of v1, p2, [Ljavax/crypto/spec/DHParameterSpec;

    if-nez v1, :cond_80

    if-nez p2, :cond_78

    goto :goto_80

    .line 110
    :cond_78
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "not a valid DHParameterSpec"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 106
    :cond_80
    :goto_80
    move-object v1, p2

    .line 113
    .local v1, "dhSpec":Ljava/lang/Object;
    if-nez v1, :cond_89

    .line 115
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->dhThreadSpec:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_8e

    .line 119
    :cond_89
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->dhThreadSpec:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 121
    .end local v1    # "dhSpec":Ljava/lang/Object;
    :goto_8e
    goto :goto_dd

    .line 122
    :cond_8f
    const-string v1, "DhDefaultParams"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b4

    .line 124
    if-eqz v0, :cond_9e

    .line 126
    sget-object v1, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_DH_PERMISSION:Ljava/security/Permission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 129
    :cond_9e
    instance-of v1, p2, Ljavax/crypto/spec/DHParameterSpec;

    if-nez v1, :cond_b1

    instance-of v1, p2, [Ljavax/crypto/spec/DHParameterSpec;

    if-nez v1, :cond_b1

    if-nez p2, :cond_a9

    goto :goto_b1

    .line 135
    :cond_a9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "not a valid DHParameterSpec or DHParameterSpec[]"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 131
    :cond_b1
    :goto_b1
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->dhDefaultParams:Ljava/lang/Object;

    goto :goto_dd

    .line 138
    :cond_b4
    const-string v1, "acceptableEcCurves"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c9

    .line 140
    if-eqz v0, :cond_c3

    .line 142
    sget-object v1, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_EC_CURVE_PERMISSION:Ljava/security/Permission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 145
    :cond_c3
    move-object v1, p2

    check-cast v1, Ljava/util/Set;

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->acceptableNamedCurves:Ljava/util/Set;

    goto :goto_dd

    .line 147
    :cond_c9
    const-string v1, "additionalEcParameters"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_dd

    .line 149
    if-eqz v0, :cond_d8

    .line 151
    sget-object v1, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_ADDITIONAL_EC_CURVE_PERMISSION:Ljava/security/Permission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 154
    :cond_d8
    move-object v1, p2

    check-cast v1, Ljava/util/Map;

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->additionalECParameters:Ljava/util/Map;

    .line 156
    :cond_dd
    :goto_dd
    return-void
.end method
