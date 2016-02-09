.class Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;
.super Ljava/lang/Object;
.source "BouncyCastleProviderConfiguration.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;


# static fields
.field private static BC_DH_LOCAL_PERMISSION:Ljava/security/Permission;

.field private static BC_DH_PERMISSION:Ljava/security/Permission;

.field private static BC_EC_LOCAL_PERMISSION:Ljava/security/Permission;

.field private static BC_EC_PERMISSION:Ljava/security/Permission;


# instance fields
.field private volatile dhDefaultParams:Ljava/lang/Object;

.field private dhThreadSpec:Ljava/lang/ThreadLocal;

.field private volatile ecImplicitCaParams:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

.field private ecThreadSpec:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 16
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    #@2
    .line 17
    const-string/jumbo v1, "BC"

    #@5
    const-string/jumbo v2, "threadLocalEcImplicitlyCa"

    #@8
    .line 16
    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_EC_LOCAL_PERMISSION:Ljava/security/Permission;

    #@d
    .line 18
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    #@f
    .line 19
    const-string/jumbo v1, "BC"

    #@12
    const-string/jumbo v2, "ecImplicitlyCa"

    #@15
    .line 18
    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@18
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_EC_PERMISSION:Ljava/security/Permission;

    #@1a
    .line 20
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    #@1c
    .line 21
    const-string/jumbo v1, "BC"

    #@1f
    const-string/jumbo v2, "threadLocalDhDefaultParams"

    #@22
    .line 20
    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@25
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_DH_LOCAL_PERMISSION:Ljava/security/Permission;

    #@27
    .line 22
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    #@29
    .line 23
    const-string/jumbo v1, "BC"

    #@2c
    const-string/jumbo v2, "DhDefaultParams"

    #@2f
    .line 22
    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@32
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_DH_PERMISSION:Ljava/security/Permission;

    #@34
    .line 13
    return-void
.end method

.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 25
    new-instance v0, Ljava/lang/ThreadLocal;

    #@5
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->ecThreadSpec:Ljava/lang/ThreadLocal;

    #@a
    .line 26
    new-instance v0, Ljava/lang/ThreadLocal;

    #@c
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->dhThreadSpec:Ljava/lang/ThreadLocal;

    #@11
    .line 13
    return-void
.end method


# virtual methods
.method public getDHDefaultParameters(I)Ljavax/crypto/spec/DHParameterSpec;
    .locals 6
    .param p1, "keySize"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 137
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->dhThreadSpec:Ljava/lang/ThreadLocal;

    #@3
    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    .line 138
    .local v1, "params":Ljava/lang/Object;
    if-nez v1, :cond_0

    #@9
    .line 140
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->dhDefaultParams:Ljava/lang/Object;

    #@b
    .line 143
    :cond_0
    instance-of v4, v1, Ljavax/crypto/spec/DHParameterSpec;

    #@d
    if-eqz v4, :cond_1

    #@f
    move-object v2, v1

    #@10
    .line 145
    check-cast v2, Ljavax/crypto/spec/DHParameterSpec;

    #@12
    .line 147
    .local v2, "spec":Ljavax/crypto/spec/DHParameterSpec;
    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    #@15
    move-result-object v4

    #@16
    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    #@19
    move-result v4

    #@1a
    if-ne v4, p1, :cond_3

    #@1c
    .line 149
    return-object v2

    #@1d
    .line 152
    .end local v2    # "spec":Ljavax/crypto/spec/DHParameterSpec;
    :cond_1
    instance-of v4, v1, [Ljavax/crypto/spec/DHParameterSpec;

    #@1f
    if-eqz v4, :cond_3

    #@21
    move-object v3, v1

    #@22
    .line 154
    check-cast v3, [Ljavax/crypto/spec/DHParameterSpec;

    #@24
    .line 156
    .local v3, "specs":[Ljavax/crypto/spec/DHParameterSpec;
    const/4 v0, 0x0

    #@25
    .local v0, "i":I
    :goto_0
    array-length v4, v3

    #@26
    if-eq v0, v4, :cond_3

    #@28
    .line 158
    aget-object v4, v3, v0

    #@2a
    invoke-virtual {v4}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    #@2d
    move-result-object v4

    #@2e
    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    #@31
    move-result v4

    #@32
    if-ne v4, p1, :cond_2

    #@34
    .line 160
    aget-object v4, v3, v0

    #@36
    return-object v4

    #@37
    .line 156
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 165
    .end local v0    # "i":I
    .end local v3    # "specs":[Ljavax/crypto/spec/DHParameterSpec;
    :cond_3
    return-object v5
.end method

.method public getEcImplicitlyCa()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    .locals 2

    #@0
    .prologue
    .line 125
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->ecThreadSpec:Ljava/lang/ThreadLocal;

    #@2
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@8
    .line 127
    .local v0, "spec":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    if-eqz v0, :cond_0

    #@a
    .line 129
    return-object v0

    #@b
    .line 132
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->ecImplicitCaParams:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@d
    return-object v1
.end method

.method setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "parameter"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 33
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@4
    move-result-object v2

    #@5
    .line 35
    .local v2, "securityManager":Ljava/lang/SecurityManager;
    const-string/jumbo v3, "threadLocalEcImplicitlyCa"

    #@8
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_5

    #@e
    .line 39
    if-eqz v2, :cond_0

    #@10
    .line 41
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_EC_LOCAL_PERMISSION:Ljava/security/Permission;

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    #@15
    .line 44
    :cond_0
    instance-of v3, p2, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@17
    if-nez v3, :cond_1

    #@19
    if-nez p2, :cond_3

    #@1b
    :cond_1
    move-object v0, p2

    #@1c
    .line 46
    check-cast v0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@1e
    .line 53
    .end local p2    # "parameter":Ljava/lang/Object;
    .local v0, "curveSpec":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    :goto_0
    if-nez v0, :cond_4

    #@20
    .line 55
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->ecThreadSpec:Ljava/lang/ThreadLocal;

    #@22
    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->remove()V

    #@25
    .line 31
    .end local v0    # "curveSpec":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    :cond_2
    :goto_1
    return-void

    #@26
    .line 50
    .restart local p2    # "parameter":Ljava/lang/Object;
    :cond_3
    check-cast p2, Ljava/security/spec/ECParameterSpec;

    #@28
    .end local p2    # "parameter":Ljava/lang/Object;
    invoke-static {p2, v4}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;Z)Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@2b
    move-result-object v0

    #@2c
    .restart local v0    # "curveSpec":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    goto :goto_0

    #@2d
    .line 59
    :cond_4
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->ecThreadSpec:Ljava/lang/ThreadLocal;

    #@2f
    invoke-virtual {v3, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    #@32
    goto :goto_1

    #@33
    .line 62
    .end local v0    # "curveSpec":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    .restart local p2    # "parameter":Ljava/lang/Object;
    :cond_5
    const-string/jumbo v3, "ecImplicitlyCa"

    #@36
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v3

    #@3a
    if-eqz v3, :cond_9

    #@3c
    .line 64
    if-eqz v2, :cond_6

    #@3e
    .line 66
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_EC_PERMISSION:Ljava/security/Permission;

    #@40
    invoke-virtual {v2, v3}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    #@43
    .line 69
    :cond_6
    instance-of v3, p2, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@45
    if-nez v3, :cond_7

    #@47
    if-nez p2, :cond_8

    #@49
    .line 71
    :cond_7
    check-cast p2, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@4b
    .end local p2    # "parameter":Ljava/lang/Object;
    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->ecImplicitCaParams:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@4d
    goto :goto_1

    #@4e
    .line 75
    .restart local p2    # "parameter":Ljava/lang/Object;
    :cond_8
    check-cast p2, Ljava/security/spec/ECParameterSpec;

    #@50
    .end local p2    # "parameter":Ljava/lang/Object;
    invoke-static {p2, v4}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;Z)Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@53
    move-result-object v3

    #@54
    iput-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->ecImplicitCaParams:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@56
    goto :goto_1

    #@57
    .line 78
    .restart local p2    # "parameter":Ljava/lang/Object;
    :cond_9
    const-string/jumbo v3, "threadLocalDhDefaultParams"

    #@5a
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5d
    move-result v3

    #@5e
    if-eqz v3, :cond_e

    #@60
    .line 82
    if-eqz v2, :cond_a

    #@62
    .line 84
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_DH_LOCAL_PERMISSION:Ljava/security/Permission;

    #@64
    invoke-virtual {v2, v3}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    #@67
    .line 87
    :cond_a
    instance-of v3, p2, Ljavax/crypto/spec/DHParameterSpec;

    #@69
    if-nez v3, :cond_b

    #@6b
    instance-of v3, p2, [Ljavax/crypto/spec/DHParameterSpec;

    #@6d
    if-nez v3, :cond_b

    #@6f
    if-nez p2, :cond_c

    #@71
    .line 89
    :cond_b
    move-object v1, p2

    #@72
    .line 96
    .local v1, "dhSpec":Ljava/lang/Object;
    if-nez v1, :cond_d

    #@74
    .line 98
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->dhThreadSpec:Ljava/lang/ThreadLocal;

    #@76
    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->remove()V

    #@79
    goto :goto_1

    #@7a
    .line 93
    .end local v1    # "dhSpec":Ljava/lang/Object;
    :cond_c
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@7c
    const-string/jumbo v4, "not a valid DHParameterSpec"

    #@7f
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@82
    throw v3

    #@83
    .line 102
    .restart local v1    # "dhSpec":Ljava/lang/Object;
    :cond_d
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->dhThreadSpec:Ljava/lang/ThreadLocal;

    #@85
    invoke-virtual {v3, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    #@88
    goto :goto_1

    #@89
    .line 105
    .end local v1    # "dhSpec":Ljava/lang/Object;
    :cond_e
    const-string/jumbo v3, "DhDefaultParams"

    #@8c
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8f
    move-result v3

    #@90
    if-eqz v3, :cond_2

    #@92
    .line 107
    if-eqz v2, :cond_f

    #@94
    .line 109
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_DH_PERMISSION:Ljava/security/Permission;

    #@96
    invoke-virtual {v2, v3}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    #@99
    .line 112
    :cond_f
    instance-of v3, p2, Ljavax/crypto/spec/DHParameterSpec;

    #@9b
    if-nez v3, :cond_10

    #@9d
    instance-of v3, p2, [Ljavax/crypto/spec/DHParameterSpec;

    #@9f
    if-nez v3, :cond_10

    #@a1
    if-nez p2, :cond_11

    #@a3
    .line 114
    :cond_10
    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->dhDefaultParams:Ljava/lang/Object;

    #@a5
    goto :goto_1

    #@a6
    .line 118
    :cond_11
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@a8
    const-string/jumbo v4, "not a valid DHParameterSpec or DHParameterSpec[]"

    #@ab
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@ae
    throw v3
.end method
