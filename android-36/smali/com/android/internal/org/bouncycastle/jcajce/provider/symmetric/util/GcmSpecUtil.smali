.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;
.super Ljava/lang/Object;
.source "GcmSpecUtil.java"


# static fields
.field private static final blacklist constructor:Ljava/lang/reflect/Constructor;

.field static final blacklist gcmSpecClass:Ljava/lang/Class;

.field private static final blacklist iv:Ljava/lang/reflect/Method;

.field private static final blacklist tLen:Ljava/lang/reflect/Method;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetiv()Ljava/lang/reflect/Method;
    .registers 1

    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->iv:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgettLen()Ljava/lang/reflect/Method;
    .registers 1

    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->tLen:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 31
    const-class v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;

    const-string v1, "javax.crypto.spec.GCMParameterSpec"

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/ClassUtil;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->gcmSpecClass:Ljava/lang/Class;

    .line 33
    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->gcmSpecClass:Ljava/lang/Class;

    if-eqz v0, :cond_25

    .line 35
    invoke-static {}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->extractConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->constructor:Ljava/lang/reflect/Constructor;

    .line 36
    const-string v0, "getTLen"

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->extractMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->tLen:Ljava/lang/reflect/Method;

    .line 37
    const-string v0, "getIV"

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->extractMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->iv:Ljava/lang/reflect/Method;

    goto :goto_2c

    .line 41
    :cond_25
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->constructor:Ljava/lang/reflect/Constructor;

    .line 42
    sput-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->tLen:Ljava/lang/reflect/Method;

    .line 43
    sput-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->iv:Ljava/lang/reflect/Method;

    .line 45
    :goto_2c
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist extractAeadParameters(Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;Ljava/security/spec/AlgorithmParameterSpec;)Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;
    .registers 5
    .param p0, "keyParam"    # Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 125
    :try_start_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil$3;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil$3;-><init>(Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    .line 134
    :catch_c
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "Cannot process GCMParameterSpec."

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist extractConstructor()Ljava/lang/reflect/Constructor;
    .registers 2

    .line 51
    :try_start_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil$1;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;
    :try_end_b
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    .line 60
    :catch_c
    move-exception v0

    .line 62
    .local v0, "e":Ljava/security/PrivilegedActionException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist extractGcmParameters(Ljava/security/spec/AlgorithmParameterSpec;)Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;
    .registers 4
    .param p0, "paramSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .line 145
    :try_start_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil$4;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil$4;-><init>(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    .line 154
    :catch_c
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/spec/InvalidParameterSpecException;

    const-string v2, "Cannot process GCMParameterSpec"

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist extractGcmSpec(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 5
    .param p0, "spec"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .line 110
    :try_start_0
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;

    move-result-object v0

    .line 112
    .local v0, "gcmParams":Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;
    sget-object v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;->getIcvLen()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;->getNonce()[B

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/spec/AlgorithmParameterSpec;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    return-object v1

    .line 114
    .end local v0    # "gcmParams":Lcom/android/internal/org/bouncycastle/internal/asn1/cms/GCMParameters;
    :catch_1f
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/spec/InvalidParameterSpecException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Construction failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist extractMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 70
    :try_start_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil$2;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil$2;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;
    :try_end_b
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    .line 79
    :catch_c
    move-exception v0

    .line 81
    .local v0, "e":Ljava/security/PrivilegedActionException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist gcmSpecExists()Z
    .registers 1

    .line 87
    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->gcmSpecClass:Ljava/lang/Class;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static blacklist gcmSpecExtractable()Z
    .registers 1

    .line 92
    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->constructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static blacklist isGcmSpec(Ljava/lang/Class;)Z
    .registers 2
    .param p0, "paramSpecClass"    # Ljava/lang/Class;

    .line 102
    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->gcmSpecClass:Ljava/lang/Class;

    if-ne v0, p0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static blacklist isGcmSpec(Ljava/security/spec/AlgorithmParameterSpec;)Z
    .registers 2
    .param p0, "paramSpec"    # Ljava/security/spec/AlgorithmParameterSpec;

    .line 97
    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->gcmSpecClass:Ljava/lang/Class;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->gcmSpecClass:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method
