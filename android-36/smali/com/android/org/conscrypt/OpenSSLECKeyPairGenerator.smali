.class public final Lcom/android/org/conscrypt/OpenSSLECKeyPairGenerator;
.super Ljava/security/KeyPairGenerator;
.source "OpenSSLECKeyPairGenerator.java"


# static fields
.field private static final blacklist ALGORITHM:Ljava/lang/String; = "EC"

.field private static final blacklist DEFAULT_KEY_SIZE:I = 0x100

.field private static final blacklist SIZE_TO_CURVE_NAME:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLECKeyPairGenerator;->SIZE_TO_CURVE_NAME:Ljava/util/Map;

    .line 48
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLECKeyPairGenerator;->SIZE_TO_CURVE_NAME:Ljava/util/Map;

    const/16 v1, 0xe0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "secp224r1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLECKeyPairGenerator;->SIZE_TO_CURVE_NAME:Ljava/util/Map;

    const/16 v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "prime256v1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLECKeyPairGenerator;->SIZE_TO_CURVE_NAME:Ljava/util/Map;

    const/16 v1, 0x180

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "secp384r1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLECKeyPairGenerator;->SIZE_TO_CURVE_NAME:Ljava/util/Map;

    const/16 v1, 0x209

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "secp521r1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 57
    const-string v0, "EC"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public static blacklist assertCurvesAreValid()V
    .registers 4

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v0, "invalidCurves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLECKeyPairGenerator;->SIZE_TO_CURVE_NAME:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 127
    .local v2, "curveName":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getCurveByName(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    move-result-object v3

    if-nez v3, :cond_24

    .line 128
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .end local v2    # "curveName":Ljava/lang/String;
    :cond_24
    goto :goto_f

    .line 131
    :cond_25
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_2c

    .line 135
    return-void

    .line 132
    :cond_2c
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid curve names: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 133
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public whitelist test-api generateKeyPair()Ljava/security/KeyPair;
    .registers 6

    .line 62
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECKeyPairGenerator;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    if-nez v0, :cond_36

    .line 63
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLECKeyPairGenerator;->SIZE_TO_CURVE_NAME:Ljava/util/Map;

    const/16 v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 64
    .local v0, "curveName":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getCurveByName(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLECKeyPairGenerator;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    .line 65
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLECKeyPairGenerator;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    if-eqz v1, :cond_1d

    goto :goto_36

    .line 66
    :cond_1d
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Curve not recognized: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 70
    .end local v0    # "curveName":Ljava/lang/String;
    :cond_36
    :goto_36
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLKey;

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLECKeyPairGenerator;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    .line 71
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/conscrypt/NativeCrypto;->EC_KEY_generate_key(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    .line 72
    .local v0, "key":Lcom/android/org/conscrypt/OpenSSLKey;
    new-instance v1, Ljava/security/KeyPair;

    new-instance v2, Lcom/android/org/conscrypt/OpenSSLECPublicKey;

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLECKeyPairGenerator;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    invoke-direct {v2, v3, v0}, Lcom/android/org/conscrypt/OpenSSLECPublicKey;-><init>(Lcom/android/org/conscrypt/OpenSSLECGroupContext;Lcom/android/org/conscrypt/OpenSSLKey;)V

    new-instance v3, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;

    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLECKeyPairGenerator;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    invoke-direct {v3, v4, v0}, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;-><init>(Lcom/android/org/conscrypt/OpenSSLECGroupContext;Lcom/android/org/conscrypt/OpenSSLKey;)V

    invoke-direct {v1, v2, v3}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v1
.end method

.method public whitelist test-api initialize(ILjava/security/SecureRandom;)V
    .registers 8
    .param p1, "keysize"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .line 77
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLECKeyPairGenerator;->SIZE_TO_CURVE_NAME:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 78
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_30

    .line 86
    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getCurveByName(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    move-result-object v1

    .line 87
    .local v1, "possibleGroup":Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    if-eqz v1, :cond_17

    .line 91
    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLECKeyPairGenerator;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    .line 92
    return-void

    .line 88
    :cond_17
    new-instance v2, Ljava/security/InvalidParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown curve "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    .end local v1    # "possibleGroup":Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    :cond_30
    new-instance v1, Ljava/security/InvalidParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown key size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 9
    .param p1, "param"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 97
    instance-of v0, p1, Ljava/security/spec/ECParameterSpec;

    if-eqz v0, :cond_e

    .line 98
    move-object v0, p1

    check-cast v0, Ljava/security/spec/ECParameterSpec;

    .line 100
    .local v0, "ecParam":Ljava/security/spec/ECParameterSpec;
    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getInstance(Ljava/security/spec/ECParameterSpec;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLECKeyPairGenerator;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    .line 101
    .end local v0    # "ecParam":Ljava/security/spec/ECParameterSpec;
    goto :goto_23

    :cond_e
    instance-of v0, p1, Ljava/security/spec/ECGenParameterSpec;

    if-eqz v0, :cond_3d

    .line 102
    move-object v0, p1

    check-cast v0, Ljava/security/spec/ECGenParameterSpec;

    .line 104
    .local v0, "ecParam":Ljava/security/spec/ECGenParameterSpec;
    invoke-virtual {v0}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "curveName":Ljava/lang/String;
    nop

    .line 111
    invoke-static {v1}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getCurveByName(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    move-result-object v2

    .line 112
    .local v2, "possibleGroup":Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    if-eqz v2, :cond_24

    .line 116
    iput-object v2, p0, Lcom/android/org/conscrypt/OpenSSLECKeyPairGenerator;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    .line 117
    .end local v0    # "ecParam":Ljava/security/spec/ECGenParameterSpec;
    .end local v1    # "curveName":Ljava/lang/String;
    .end local v2    # "possibleGroup":Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    nop

    .line 121
    :goto_23
    return-void

    .line 113
    .restart local v0    # "ecParam":Ljava/security/spec/ECGenParameterSpec;
    .restart local v1    # "curveName":Ljava/lang/String;
    .restart local v2    # "possibleGroup":Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    :cond_24
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown curve name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 118
    .end local v0    # "ecParam":Ljava/security/spec/ECGenParameterSpec;
    .end local v1    # "curveName":Ljava/lang/String;
    .end local v2    # "possibleGroup":Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    :cond_3d
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "parameter must be ECParameterSpec or ECGenParameterSpec"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
