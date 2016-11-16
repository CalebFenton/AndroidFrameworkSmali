.class public Landroid/security/keystore/AndroidKeyStoreECPublicKey;
.super Landroid/security/keystore/AndroidKeyStorePublicKey;
.source "AndroidKeyStoreECPublicKey.java"

# interfaces
.implements Ljava/security/interfaces/ECPublicKey;


# instance fields
.field private final mParams:Ljava/security/spec/ECParameterSpec;

.field private final mW:Ljava/security/spec/ECPoint;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/security/interfaces/ECPublicKey;)V
    .locals 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "info"    # Ljava/security/interfaces/ECPublicKey;

    #@0
    .prologue
    .line 41
    invoke-interface {p3}, Ljava/security/interfaces/ECPublicKey;->getEncoded()[B

    #@3
    move-result-object v3

    #@4
    invoke-interface {p3}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    #@7
    move-result-object v4

    #@8
    invoke-interface {p3}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    #@b
    move-result-object v5

    #@c
    move-object v0, p0

    #@d
    move-object v1, p1

    #@e
    move v2, p2

    #@f
    invoke-direct/range {v0 .. v5}, Landroid/security/keystore/AndroidKeyStoreECPublicKey;-><init>(Ljava/lang/String;I[BLjava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;)V

    #@12
    .line 42
    const-string/jumbo v0, "X.509"

    #@15
    invoke-interface {p3}, Ljava/security/interfaces/ECPublicKey;->getFormat()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1c
    move-result v0

    #@1d
    if-nez v0, :cond_0

    #@1f
    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@21
    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v2, "Unsupported key export format: "

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-interface {p3}, Ljava/security/interfaces/ECPublicKey;->getFormat()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    .line 43
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v0

    #@3d
    .line 40
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[BLjava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "x509EncodedForm"    # [B
    .param p4, "params"    # Ljava/security/spec/ECParameterSpec;
    .param p5, "w"    # Ljava/security/spec/ECPoint;

    #@0
    .prologue
    .line 35
    const-string/jumbo v0, "EC"

    #@3
    invoke-direct {p0, p1, p2, v0, p3}, Landroid/security/keystore/AndroidKeyStorePublicKey;-><init>(Ljava/lang/String;ILjava/lang/String;[B)V

    #@6
    .line 36
    iput-object p4, p0, Landroid/security/keystore/AndroidKeyStoreECPublicKey;->mParams:Ljava/security/spec/ECParameterSpec;

    #@8
    .line 37
    iput-object p5, p0, Landroid/security/keystore/AndroidKeyStoreECPublicKey;->mW:Ljava/security/spec/ECPoint;

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
