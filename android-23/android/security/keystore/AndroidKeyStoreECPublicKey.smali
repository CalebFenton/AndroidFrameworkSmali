.class public Landroid/security/keystore/AndroidKeyStoreECPublicKey;
.super Landroid/security/keystore/AndroidKeyStorePublicKey;
.source "AndroidKeyStoreECPublicKey.java"

# interfaces
.implements Ljava/security/interfaces/ECPublicKey;


# instance fields
.field private final mParams:Ljava/security/spec/ECParameterSpec;

.field private final mW:Ljava/security/spec/ECPoint;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/security/interfaces/ECPublicKey;)V
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/security/interfaces/ECPublicKey;

    #@0
    .prologue
    .line 41
    invoke-interface {p2}, Ljava/security/interfaces/ECPublicKey;->getEncoded()[B

    #@3
    move-result-object v0

    #@4
    invoke-interface {p2}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    #@7
    move-result-object v1

    #@8
    invoke-interface {p2}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    #@b
    move-result-object v2

    #@c
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/security/keystore/AndroidKeyStoreECPublicKey;-><init>(Ljava/lang/String;[BLjava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;)V

    #@f
    .line 42
    const-string/jumbo v0, "X.509"

    #@12
    invoke-interface {p2}, Ljava/security/interfaces/ECPublicKey;->getFormat()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@19
    move-result v0

    #@1a
    if-nez v0, :cond_0

    #@1c
    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1e
    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v2, "Unsupported key export format: "

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-interface {p2}, Ljava/security/interfaces/ECPublicKey;->getFormat()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    .line 43
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@39
    throw v0

    #@3a
    .line 40
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BLjava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "x509EncodedForm"    # [B
    .param p3, "params"    # Ljava/security/spec/ECParameterSpec;
    .param p4, "w"    # Ljava/security/spec/ECPoint;

    #@0
    .prologue
    .line 35
    const-string/jumbo v0, "EC"

    #@3
    invoke-direct {p0, p1, v0, p2}, Landroid/security/keystore/AndroidKeyStorePublicKey;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    #@6
    .line 36
    iput-object p3, p0, Landroid/security/keystore/AndroidKeyStoreECPublicKey;->mParams:Ljava/security/spec/ECParameterSpec;

    #@8
    .line 37
    iput-object p4, p0, Landroid/security/keystore/AndroidKeyStoreECPublicKey;->mW:Ljava/security/spec/ECPoint;

    #@a
    .line 34
    return-void
.end method


# virtual methods
.method public getParams()Ljava/security/spec/ECParameterSpec;
    .locals 1

    #@0
    .prologue
    .line 50
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreECPublicKey;->mParams:Ljava/security/spec/ECParameterSpec;

    #@2
    return-object v0
.end method

.method public getW()Ljava/security/spec/ECPoint;
    .locals 1

    #@0
    .prologue
    .line 55
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreECPublicKey;->mW:Ljava/security/spec/ECPoint;

    #@2
    return-object v0
.end method
