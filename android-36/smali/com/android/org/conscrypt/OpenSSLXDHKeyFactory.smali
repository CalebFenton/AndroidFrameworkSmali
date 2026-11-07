.class public final Lcom/android/org/conscrypt/OpenSSLXDHKeyFactory;
.super Ljava/security/KeyFactorySpi;
.source "OpenSSLXDHKeyFactory.java"


# static fields
.field private static final blacklist javaX25519AlgorithmSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private static final blacklist javaXecPrivateKeySpec:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final blacklist javaXecPublicKeySpec:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 42
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLXDHKeyFactory;->getJavaXECPublicKeySpec()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLXDHKeyFactory;->javaXecPublicKeySpec:Ljava/lang/Class;

    .line 43
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLXDHKeyFactory;->getJavaXECPrivateKeySpec()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLXDHKeyFactory;->javaXecPrivateKeySpec:Ljava/lang/Class;

    .line 45
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLXDHKeyFactory;->getJavaX25519ParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLXDHKeyFactory;->javaX25519AlgorithmSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 44
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/security/KeyFactorySpi;-><init>()V

    return-void
.end method

.method private blacklist constructJavaPrivateKeySpec(Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;)Ljava/security/spec/KeySpec;
    .registers 7
    .param p1, "privateKey"    # Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 215
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLXDHKeyFactory;->javaXecPrivateKeySpec:Ljava/lang/Class;

    const-string v1, "Could not find java.security.spec.XECPrivateKeySpec"

    if-eqz v0, :cond_31

    .line 220
    :try_start_6
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLXDHKeyFactory;->javaXecPrivateKeySpec:Ljava/lang/Class;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/security/spec/AlgorithmParameterSpec;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, [B

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 223
    .local v0, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    sget-object v2, Lcom/android/org/conscrypt/OpenSSLXDHKeyFactory;->javaX25519AlgorithmSpec:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;->getU()[B

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/spec/KeySpec;
    :try_end_29
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_29} :catch_2a
    .catch Ljava/lang/InstantiationException; {:try_start_6 .. :try_end_29} :catch_2a
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_29} :catch_2a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_29} :catch_2a

    .line 224
    .local v2, "result":Ljava/security/spec/KeySpec;
    return-object v2

    .line 225
    .end local v0    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v2    # "result":Ljava/security/spec/KeySpec;
    :catch_2a
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v2, v1, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 216
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_31
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist constructJavaXecPublicKeySpec(Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;)Ljava/security/spec/KeySpec;
    .registers 8
    .param p1, "publicKey"    # Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 234
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLXDHKeyFactory;->javaXecPublicKeySpec:Ljava/lang/Class;

    const-string v1, "Could not find java.security.spec.XECPublicKeySpec"

    if-eqz v0, :cond_3a

    .line 238
    :try_start_6
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLXDHKeyFactory;->javaXecPublicKeySpec:Ljava/lang/Class;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/security/spec/AlgorithmParameterSpec;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 241
    .local v0, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    sget-object v2, Lcom/android/org/conscrypt/OpenSSLXDHKeyFactory;->javaX25519AlgorithmSpec:Ljava/security/spec/AlgorithmParameterSpec;

    new-instance v3, Ljava/math/BigInteger;

    .line 242
    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;->getU()[B

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/conscrypt/ArrayUtils;->reverse([B)[B

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 241
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/spec/KeySpec;
    :try_end_32
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_32} :catch_33
    .catch Ljava/lang/InstantiationException; {:try_start_6 .. :try_end_32} :catch_33
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_32} :catch_33
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_32} :catch_33

    .line 243
    .local v2, "result":Ljava/security/spec/KeySpec;
    return-object v2

    .line 244
    .end local v0    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v2    # "result":Ljava/security/spec/KeySpec;
    :catch_33
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v2, v1, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 235
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_3a
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist getJavaX25519ParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;
    .registers 5

    .line 204
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "java.security.spec.NamedParameterSpec"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 205
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "X25519"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 206
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 207
    .local v3, "result":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Ljava/security/spec/AlgorithmParameterSpec;
    :try_end_14
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_14} :catch_15
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_14} :catch_15
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_14} :catch_15

    return-object v4

    .line 208
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "result":Ljava/lang/Object;
    :catch_15
    move-exception v1

    .line 209
    .local v1, "ignored":Ljava/lang/ReflectiveOperationException;
    return-object v0
.end method

.method private static blacklist getJavaXECPrivateKeySpec()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 188
    :try_start_0
    const-string v0, "java.security.spec.XECPrivateKeySpec"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 189
    :catch_7
    move-exception v0

    .line 190
    .local v0, "ignored":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist getJavaXECPublicKeySpec()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 196
    :try_start_0
    const-string v0, "java.security.spec.XECPublicKeySpec"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 197
    :catch_7
    move-exception v0

    .line 198
    .local v0, "ignored":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist makeRawKeySpec([BLjava/lang/Class;)Ljava/security/spec/KeySpec;
    .registers 8
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/security/spec/KeySpec;",
            ">([B",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 139
    .local p2, "keySpecClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, [B

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p2, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 140
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/spec/KeySpec;

    .line 141
    .local v1, "instance":Ljava/security/spec/KeySpec;, "TT;"
    move-object v2, v1

    check-cast v2, Ljava/security/spec/EncodedKeySpec;

    .line 142
    .local v2, "spec":Ljava/security/spec/EncodedKeySpec;
    invoke-virtual {v2}, Ljava/security/spec/EncodedKeySpec;->getFormat()Ljava/lang/String;

    move-result-object v3

    const-string v4, "raw"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 145
    return-object v1

    .line 143
    :cond_26
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    const-string v4, "EncodedKeySpec class must be raw format"

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/OpenSSLXDHKeyFactory;
    .end local p1    # "bytes":[B
    .end local p2    # "keySpecClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    throw v3
    :try_end_2e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_2e} :catch_2e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_2e} :catch_2e
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_2e} :catch_2e
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_2e} :catch_2e

    .line 146
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    .end local v1    # "instance":Ljava/security/spec/KeySpec;, "TT;"
    .end local v2    # "spec":Ljava/security/spec/EncodedKeySpec;
    .restart local p0    # "this":Lcom/android/org/conscrypt/OpenSSLXDHKeyFactory;
    .restart local p1    # "bytes":[B
    .restart local p2    # "keySpecClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :catch_2e
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t process KeySpec class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 149
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected whitelist test-api engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .registers 5
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 64
    if-eqz p1, :cond_30

    .line 67
    instance-of v0, p1, Ljava/security/spec/EncodedKeySpec;

    if-eqz v0, :cond_f

    .line 68
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;

    move-object v1, p1

    check-cast v1, Ljava/security/spec/EncodedKeySpec;

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;-><init>(Ljava/security/spec/EncodedKeySpec;)V

    return-object v0

    .line 70
    :cond_f
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must use XECPrivateKeySpec, PKCS8EncodedKeySpec or Raw EncodedKeySpec; was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 72
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_30
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "keySpec == null"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .registers 5
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 51
    if-eqz p1, :cond_30

    .line 54
    instance-of v0, p1, Ljava/security/spec/EncodedKeySpec;

    if-eqz v0, :cond_f

    .line 55
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;

    move-object v1, p1

    check-cast v1, Ljava/security/spec/EncodedKeySpec;

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;-><init>(Ljava/security/spec/EncodedKeySpec;)V

    return-object v0

    .line 57
    :cond_f
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must use XECPublicKeySpec, X509EncodedKeySpec or Raw EncodedKeySpec; was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_30
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "keySpec == null"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .registers 7
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/security/spec/KeySpec;",
            ">(",
            "Ljava/security/Key;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 78
    .local p2, "keySpec":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p1, :cond_121

    .line 81
    if-eqz p2, :cond_119

    .line 85
    const-string v0, "XDH"

    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "X25519"

    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_25

    .line 86
    :cond_1d
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "Key must be an XDH or X25519 key"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_25
    :goto_25
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    if-eqz v0, :cond_111

    .line 94
    :try_start_2b
    invoke-virtual {p0, p1}, Lcom/android/org/conscrypt/OpenSSLXDHKeyFactory;->engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;

    move-result-object v0
    :try_end_2f
    .catch Ljava/security/InvalidKeyException; {:try_start_2b .. :try_end_2f} :catch_f3

    .line 97
    .end local p1    # "key":Ljava/security/Key;
    .local v0, "key":Ljava/security/Key;
    nop

    .line 99
    instance-of p1, v0, Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;

    if-eqz p1, :cond_7a

    .line 100
    move-object p1, v0

    check-cast p1, Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;

    .line 101
    .local p1, "conscryptKey":Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLXDHKeyFactory;->javaXecPublicKeySpec:Ljava/lang/Class;

    if-eqz v1, :cond_48

    sget-object v1, Lcom/android/org/conscrypt/OpenSSLXDHKeyFactory;->javaXecPublicKeySpec:Ljava/lang/Class;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 103
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/OpenSSLXDHKeyFactory;->constructJavaXecPublicKeySpec(Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;)Ljava/security/spec/KeySpec;

    move-result-object v1

    .line 104
    .local v1, "result":Ljava/security/spec/KeySpec;, "TT;"
    return-object v1

    .line 105
    .end local v1    # "result":Ljava/security/spec/KeySpec;, "TT;"
    :cond_48
    const-class v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 107
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 108
    .restart local v1    # "result":Ljava/security/spec/KeySpec;, "TT;"
    return-object v1

    .line 109
    .end local v1    # "result":Ljava/security/spec/KeySpec;, "TT;"
    :cond_5a
    const-class v1, Lcom/android/org/conscrypt/XdhKeySpec;

    if-ne p2, v1, :cond_68

    .line 110
    new-instance v1, Lcom/android/org/conscrypt/XdhKeySpec;

    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;->getU()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/conscrypt/XdhKeySpec;-><init>([B)V

    .line 111
    .restart local v1    # "result":Ljava/security/spec/KeySpec;, "TT;"
    return-object v1

    .line 112
    .end local v1    # "result":Ljava/security/spec/KeySpec;, "TT;"
    :cond_68
    const-class v1, Ljava/security/spec/EncodedKeySpec;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_79

    .line 113
    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;->getU()[B

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/org/conscrypt/OpenSSLXDHKeyFactory;->makeRawKeySpec([BLjava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v1

    return-object v1

    .line 112
    .end local p1    # "conscryptKey":Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;
    :cond_79
    goto :goto_c3

    .line 115
    :cond_7a
    instance-of p1, v0, Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;

    if-eqz p1, :cond_c3

    .line 116
    move-object p1, v0

    check-cast p1, Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;

    .line 117
    .local p1, "conscryptKey":Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLXDHKeyFactory;->javaXecPrivateKeySpec:Ljava/lang/Class;

    if-eqz v1, :cond_92

    sget-object v1, Lcom/android/org/conscrypt/OpenSSLXDHKeyFactory;->javaXecPrivateKeySpec:Ljava/lang/Class;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_92

    .line 119
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/OpenSSLXDHKeyFactory;->constructJavaPrivateKeySpec(Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;)Ljava/security/spec/KeySpec;

    move-result-object v1

    .line 120
    .restart local v1    # "result":Ljava/security/spec/KeySpec;, "TT;"
    return-object v1

    .line 121
    .end local v1    # "result":Ljava/security/spec/KeySpec;, "TT;"
    :cond_92
    const-class v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 123
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 124
    .restart local v1    # "result":Ljava/security/spec/KeySpec;, "TT;"
    return-object v1

    .line 125
    .end local v1    # "result":Ljava/security/spec/KeySpec;, "TT;"
    :cond_a4
    const-class v1, Lcom/android/org/conscrypt/XdhKeySpec;

    if-ne p2, v1, :cond_b2

    .line 126
    new-instance v1, Lcom/android/org/conscrypt/XdhKeySpec;

    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;->getU()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/conscrypt/XdhKeySpec;-><init>([B)V

    .line 127
    .restart local v1    # "result":Ljava/security/spec/KeySpec;, "TT;"
    return-object v1

    .line 128
    .end local v1    # "result":Ljava/security/spec/KeySpec;, "TT;"
    :cond_b2
    const-class v1, Ljava/security/spec/EncodedKeySpec;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_c4

    .line 129
    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;->getU()[B

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/org/conscrypt/OpenSSLXDHKeyFactory;->makeRawKeySpec([BLjava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v1

    return-object v1

    .line 115
    .end local p1    # "conscryptKey":Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;
    :cond_c3
    :goto_c3
    nop

    .line 132
    :cond_c4
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key type and key spec combination; key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 133
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", keySpec="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 95
    .end local v0    # "key":Ljava/security/Key;
    .local p1, "key":Ljava/security/Key;
    :catch_f3
    move-exception v0

    .line 96
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported key class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 89
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :cond_111
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "Key is destroyed"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_119
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "keySpec == null"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_121
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .registers 5
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 155
    if-eqz p1, :cond_8a

    .line 158
    instance-of v0, p1, Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;

    if-nez v0, :cond_89

    instance-of v0, p1, Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;

    if-eqz v0, :cond_c

    goto/16 :goto_89

    .line 160
    :cond_c
    instance-of v0, p1, Ljava/security/PrivateKey;

    const-string v1, "Key does not support encoding"

    if-eqz v0, :cond_3b

    const-string v0, "PKCS#8"

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 161
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    .line 162
    .local v0, "encoded":[B
    if-eqz v0, :cond_35

    .line 166
    :try_start_24
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {p0, v1}, Lcom/android/org/conscrypt/OpenSSLXDHKeyFactory;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1
    :try_end_2d
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_24 .. :try_end_2d} :catch_2e

    return-object v1

    .line 167
    :catch_2e
    move-exception v1

    .line 168
    .local v1, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v2, Ljava/security/InvalidKeyException;

    invoke-direct {v2, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 163
    .end local v1    # "e":Ljava/security/spec/InvalidKeySpecException;
    :cond_35
    new-instance v2, Ljava/security/InvalidKeyException;

    invoke-direct {v2, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 170
    .end local v0    # "encoded":[B
    :cond_3b
    instance-of v0, p1, Ljava/security/PublicKey;

    if-eqz v0, :cond_68

    const-string v0, "X.509"

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 171
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    .line 172
    .restart local v0    # "encoded":[B
    if-eqz v0, :cond_62

    .line 176
    :try_start_51
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {p0, v1}, Lcom/android/org/conscrypt/OpenSSLXDHKeyFactory;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v1
    :try_end_5a
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_51 .. :try_end_5a} :catch_5b

    return-object v1

    .line 177
    :catch_5b
    move-exception v1

    .line 178
    .restart local v1    # "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v2, Ljava/security/InvalidKeyException;

    invoke-direct {v2, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 173
    .end local v1    # "e":Ljava/security/spec/InvalidKeySpecException;
    :cond_62
    new-instance v2, Ljava/security/InvalidKeyException;

    invoke-direct {v2, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 181
    .end local v0    # "encoded":[B
    :cond_68
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key must be XEC public or private key; was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 182
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_89
    :goto_89
    return-object p1

    .line 156
    :cond_8a
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
