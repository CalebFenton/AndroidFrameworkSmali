.class public abstract Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;
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

    .line 0
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->iv:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgettLen()Ljava/lang/reflect/Method;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->tLen:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 31
    const-class v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;

    const-string v1, "javax.crypto.spec.GCMParameterSpec"

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/ClassUtil;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->gcmSpecClass:Ljava/lang/Class;

    if-eqz v0, :cond_23

    .line 35
    invoke-static {}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->extractConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->constructor:Ljava/lang/reflect/Constructor;

    .line 36
    const-string v0, "getTLen"

    invoke-static {v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->extractMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->tLen:Ljava/lang/reflect/Method;

    .line 37
    const-string v0, "getIV"

    invoke-static {v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->extractMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->iv:Ljava/lang/reflect/Method;

    return-void

    :cond_23
    const/4 v0, 0x0

    .line 41
    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->constructor:Ljava/lang/reflect/Constructor;

    .line 42
    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->tLen:Ljava/lang/reflect/Method;

    .line 43
    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->iv:Ljava/lang/reflect/Method;

    return-void
.end method

.method static blacklist extractAeadParameters(Lcom/android/org/bouncycastle/crypto/params/KeyParameter;Ljava/security/spec/AlgorithmParameterSpec;)Lcom/android/org/bouncycastle/crypto/params/AEADParameters;
    .registers 3

    .line 125
    :try_start_0
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil$3;

    invoke-direct {v0, p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil$3;-><init>(Lcom/android/org/bouncycastle/crypto/params/KeyParameter;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    return-object p0

    .line 136
    :catch_c
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "Cannot process GCMParameterSpec."

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist extractConstructor()Ljava/lang/reflect/Constructor;
    .registers 1

    .line 51
    :try_start_0
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil$1;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;
    :try_end_b
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist extractMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 2

    .line 70
    :try_start_0
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil$2;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil$2;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Method;
    :try_end_b
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_b} :catch_c

    return-object p0

    :catch_c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist isGcmSpec(Ljava/security/spec/AlgorithmParameterSpec;)Z
    .registers 2

    .line 97
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->gcmSpecClass:Ljava/lang/Class;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method
