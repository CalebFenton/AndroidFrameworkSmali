.class public final Lcom/android/org/conscrypt/OpenSSLECKeyPairGenerator;
.super Ljava/security/KeyPairGenerator;
.source "OpenSSLECKeyPairGenerator.java"


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "EC"

.field private static final DEFAULT_KEY_SIZE:I = 0x100

.field private static final SIZE_TO_CURVE_NAME:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 37
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    sput-object v0, Lcom/android/org/conscrypt/OpenSSLECKeyPairGenerator;->SIZE_TO_CURVE_NAME:Ljava/util/Map;

    #@7
    .line 41
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLECKeyPairGenerator;->SIZE_TO_CURVE_NAME:Ljava/util/Map;

    #@9
    const/16 v1, 0xe0

    #@b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object v1

    #@f
    const-string/jumbo v2, "secp224r1"

    #@12
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    .line 42
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLECKeyPairGenerator;->SIZE_TO_CURVE_NAME:Ljava/util/Map;

    #@17
    const/16 v1, 0x100

    #@19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1c
    move-result-object v1

    #@1d
    const-string/jumbo v2, "prime256v1"

    #@20
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    .line 43
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLECKeyPairGenerator;->SIZE_TO_CURVE_NAME:Ljava/util/Map;

    #@25
    const/16 v1, 0x180

    #@27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2a
    move-result-object v1

    #@2b
    const-string/jumbo v2, "secp384r1"

    #@2e
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@31
    .line 44
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLECKeyPairGenerator;->SIZE_TO_CURVE_NAME:Ljava/util/Map;

    #@33
    const/16 v1, 0x209

    #@35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@38
    move-result-object v1

    #@39
    const-string/jumbo v2, "secp521r1"

    #@3c
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3f
    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 50
    const-string/jumbo v0, "EC"

    #@3
    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    #@6
    .line 49
    return-void
.end method

.method public static assertCurvesAreValid()V
    .locals 6

    #@0
    .prologue
    .line 118
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 119
    .local v2, "invalidCurves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v3, Lcom/android/org/conscrypt/OpenSSLECKeyPairGenerator;->SIZE_TO_CURVE_NAME:Ljava/util/Map;

    #@7
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@a
    move-result-object v3

    #@b
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .local v1, "curveName$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_1

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Ljava/lang/String;

    #@1b
    .line 120
    .local v0, "curveName":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getCurveByName(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    #@1e
    move-result-object v3

    #@1f
    if-nez v3, :cond_0

    #@21
    .line 121
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@24
    goto :goto_0

    #@25
    .line 124
    .end local v0    # "curveName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@28
    move-result v3

    #@29
    if-lez v3, :cond_2

    #@2b
    .line 125
    new-instance v3, Ljava/lang/AssertionError;

    #@2d
    new-instance v4, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v5, "Invalid curve names: "

    #@35
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v4

    #@39
    .line 126
    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    #@3c
    move-result-object v5

    #@3d
    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@40
    move-result-object v5

    #@41
    .line 125
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v4

    #@45
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v4

    #@49
    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@4c
    throw v3

    #@4d
    .line 117
    :cond_2
    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 6

    #@0
    .prologue
    .line 55
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLECKeyPairGenerator;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 56
    sget-object v2, Lcom/android/org/conscrypt/OpenSSLECKeyPairGenerator;->SIZE_TO_CURVE_NAME:Ljava/util/Map;

    #@6
    const/16 v3, 0x100

    #@8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object v3

    #@c
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Ljava/lang/String;

    #@12
    .line 57
    .local v0, "curveName":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getCurveByName(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    #@15
    move-result-object v2

    #@16
    iput-object v2, p0, Lcom/android/org/conscrypt/OpenSSLECKeyPairGenerator;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    #@18
    .line 58
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLECKeyPairGenerator;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    #@1a
    if-nez v2, :cond_0

    #@1c
    .line 59
    new-instance v2, Ljava/lang/RuntimeException;

    #@1e
    new-instance v3, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v4, "Curve not recognized: "

    #@26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@35
    throw v2

    #@36
    .line 63
    .end local v0    # "curveName":Ljava/lang/String;
    :cond_0
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLKey;

    #@38
    .line 64
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLECKeyPairGenerator;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    #@3a
    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    #@3d
    move-result-object v2

    #@3e
    invoke-static {v2}, Lcom/android/org/conscrypt/NativeCrypto;->EC_KEY_generate_key(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)J

    #@41
    move-result-wide v2

    #@42
    .line 63
    invoke-direct {v1, v2, v3}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    #@45
    .line 65
    .local v1, "key":Lcom/android/org/conscrypt/OpenSSLKey;
    new-instance v2, Ljava/security/KeyPair;

    #@47
    new-instance v3, Lcom/android/org/conscrypt/OpenSSLECPublicKey;

    #@49
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLECKeyPairGenerator;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    #@4b
    invoke-direct {v3, v4, v1}, Lcom/android/org/conscrypt/OpenSSLECPublicKey;-><init>(Lcom/android/org/conscrypt/OpenSSLECGroupContext;Lcom/android/org/conscrypt/OpenSSLKey;)V

    #@4e
    new-instance v4, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;

    #@50
    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLECKeyPairGenerator;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    #@52
    invoke-direct {v4, v5, v1}, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;-><init>(Lcom/android/org/conscrypt/OpenSSLECGroupContext;Lcom/android/org/conscrypt/OpenSSLKey;)V

    #@55
    invoke-direct {v2, v3, v4}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    #@58
    return-object v2
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 5
    .param p1, "keysize"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    #@0
    .prologue
    .line 70
    sget-object v2, Lcom/android/org/conscrypt/OpenSSLECKeyPairGenerator;->SIZE_TO_CURVE_NAME:Ljava/util/Map;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v3

    #@6
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/String;

    #@c
    .line 71
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    #@e
    .line 72
    new-instance v2, Ljava/security/InvalidParameterException;

    #@10
    new-instance v3, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v4, "unknown key size "

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    #@27
    throw v2

    #@28
    .line 79
    :cond_0
    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getCurveByName(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    #@2b
    move-result-object v1

    #@2c
    .line 80
    .local v1, "possibleGroup":Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    if-nez v1, :cond_1

    #@2e
    .line 81
    new-instance v2, Ljava/security/InvalidParameterException;

    #@30
    new-instance v3, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v4, "unknown curve "

    #@38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v3

    #@40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v3

    #@44
    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    #@47
    throw v2

    #@48
    .line 84
    :cond_1
    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLECKeyPairGenerator;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    #@4a
    .line 69
    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 7
    .param p1, "param"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 90
    instance-of v4, p1, Ljava/security/spec/ECParameterSpec;

    #@2
    if-eqz v4, :cond_0

    #@4
    move-object v2, p1

    #@5
    .line 91
    check-cast v2, Ljava/security/spec/ECParameterSpec;

    #@7
    .line 93
    .local v2, "ecParam":Ljava/security/spec/ECParameterSpec;
    invoke-static {v2}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getInstance(Ljava/security/spec/ECParameterSpec;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    #@a
    move-result-object v4

    #@b
    iput-object v4, p0, Lcom/android/org/conscrypt/OpenSSLECKeyPairGenerator;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    #@d
    .line 89
    .end local v2    # "ecParam":Ljava/security/spec/ECParameterSpec;
    :goto_0
    return-void

    #@e
    .line 94
    :cond_0
    instance-of v4, p1, Ljava/security/spec/ECGenParameterSpec;

    #@10
    if-eqz v4, :cond_2

    #@12
    move-object v1, p1

    #@13
    .line 95
    check-cast v1, Ljava/security/spec/ECGenParameterSpec;

    #@15
    .line 97
    .local v1, "ecParam":Ljava/security/spec/ECGenParameterSpec;
    invoke-virtual {v1}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    .line 103
    .local v0, "curveName":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getCurveByName(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    #@1c
    move-result-object v3

    #@1d
    .line 105
    .local v3, "possibleGroup":Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    if-nez v3, :cond_1

    #@1f
    .line 106
    new-instance v4, Ljava/security/InvalidAlgorithmParameterException;

    #@21
    new-instance v5, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v6, "unknown curve name: "

    #@29
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v5

    #@2d
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v5

    #@31
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v5

    #@35
    invoke-direct {v4, v5}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@38
    throw v4

    #@39
    .line 109
    :cond_1
    iput-object v3, p0, Lcom/android/org/conscrypt/OpenSSLECKeyPairGenerator;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    #@3b
    goto :goto_0

    #@3c
    .line 111
    .end local v0    # "curveName":Ljava/lang/String;
    .end local v1    # "ecParam":Ljava/security/spec/ECGenParameterSpec;
    .end local v3    # "possibleGroup":Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    :cond_2
    new-instance v4, Ljava/security/InvalidAlgorithmParameterException;

    #@3e
    .line 112
    const-string/jumbo v5, "parameter must be ECParameterSpec or ECGenParameterSpec"

    #@41
    .line 111
    invoke-direct {v4, v5}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@44
    throw v4
.end method
