.class public final Lsun/security/ec/ECPublicKeyImpl;
.super Lsun/security/x509/X509Key;
.source "ECPublicKeyImpl.java"

# interfaces
.implements Ljava/security/interfaces/ECPublicKey;


# static fields
.field private static final serialVersionUID:J = -0x222ae9db79b5c3d1L


# instance fields
.field private params:Ljava/security/spec/ECParameterSpec;

.field private w:Ljava/security/spec/ECPoint;


# direct methods
.method public constructor <init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V
    .locals 3
    .param p1, "w"    # Ljava/security/spec/ECPoint;
    .param p2, "params"    # Ljava/security/spec/ECParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Lsun/security/x509/X509Key;-><init>()V

    #@3
    .line 56
    iput-object p1, p0, Lsun/security/ec/ECPublicKeyImpl;->w:Ljava/security/spec/ECPoint;

    #@5
    .line 57
    iput-object p2, p0, Lsun/security/ec/ECPublicKeyImpl;->params:Ljava/security/spec/ECParameterSpec;

    #@7
    .line 59
    new-instance v0, Lsun/security/x509/AlgorithmId;

    #@9
    .line 60
    sget-object v1, Lsun/security/x509/AlgorithmId;->EC_oid:Lsun/security/util/ObjectIdentifier;

    #@b
    invoke-static {p2}, Lsun/security/ec/ECParameters;->getAlgorithmParameters(Ljava/security/spec/ECParameterSpec;)Ljava/security/AlgorithmParameters;

    #@e
    move-result-object v2

    #@f
    .line 59
    invoke-direct {v0, v1, v2}, Lsun/security/x509/AlgorithmId;-><init>(Lsun/security/util/ObjectIdentifier;Ljava/security/AlgorithmParameters;)V

    #@12
    iput-object v0, p0, Lsun/security/x509/X509Key;->algid:Lsun/security/x509/AlgorithmId;

    #@14
    .line 61
    invoke-virtual {p2}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    #@17
    move-result-object v0

    #@18
    invoke-static {p1, v0}, Lsun/security/ec/ECParameters;->encodePoint(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)[B

    #@1b
    move-result-object v0

    #@1c
    iput-object v0, p0, Lsun/security/x509/X509Key;->key:[B

    #@1e
    .line 55
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "encoded"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 67
    invoke-direct {p0}, Lsun/security/x509/X509Key;-><init>()V

    #@3
    .line 68
    invoke-virtual {p0, p1}, Lsun/security/x509/X509Key;->decode([B)V

    #@6
    .line 67
    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 73
    const-string/jumbo v0, "EC"

    #@3
    return-object v0
.end method

.method public getEncodedPublicValue()[B
    .locals 1

    #@0
    .prologue
    .line 89
    iget-object v0, p0, Lsun/security/x509/X509Key;->key:[B

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [B

    #@8
    return-object v0
.end method

.method public getParams()Ljava/security/spec/ECParameterSpec;
    .locals 1

    #@0
    .prologue
    .line 83
    iget-object v0, p0, Lsun/security/ec/ECPublicKeyImpl;->params:Ljava/security/spec/ECParameterSpec;

    #@2
    return-object v0
.end method

.method public getW()Ljava/security/spec/ECPoint;
    .locals 1

    #@0
    .prologue
    .line 78
    iget-object v0, p0, Lsun/security/ec/ECPublicKeyImpl;->w:Ljava/security/spec/ECPoint;

    #@2
    return-object v0
.end method

.method protected parseKeyBits()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 97
    :try_start_0
    iget-object v3, p0, Lsun/security/x509/X509Key;->algid:Lsun/security/x509/AlgorithmId;

    #@2
    invoke-virtual {v3}, Lsun/security/x509/AlgorithmId;->getParameters()Ljava/security/AlgorithmParameters;

    #@5
    move-result-object v0

    #@6
    .line 98
    .local v0, "algParams":Ljava/security/AlgorithmParameters;
    const-class v3, Ljava/security/spec/ECParameterSpec;

    #@8
    invoke-virtual {v0, v3}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    #@b
    move-result-object v3

    #@c
    check-cast v3, Ljava/security/spec/ECParameterSpec;

    #@e
    iput-object v3, p0, Lsun/security/ec/ECPublicKeyImpl;->params:Ljava/security/spec/ECParameterSpec;

    #@10
    .line 99
    iget-object v3, p0, Lsun/security/x509/X509Key;->key:[B

    #@12
    iget-object v4, p0, Lsun/security/ec/ECPublicKeyImpl;->params:Ljava/security/spec/ECParameterSpec;

    #@14
    invoke-virtual {v4}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    #@17
    move-result-object v4

    #@18
    invoke-static {v3, v4}, Lsun/security/ec/ECParameters;->decodePoint([BLjava/security/spec/EllipticCurve;)Ljava/security/spec/ECPoint;

    #@1b
    move-result-object v3

    #@1c
    iput-object v3, p0, Lsun/security/ec/ECPublicKeyImpl;->w:Ljava/security/spec/ECPoint;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    .line 95
    return-void

    #@1f
    .line 102
    .end local v0    # "algParams":Ljava/security/AlgorithmParameters;
    :catch_0
    move-exception v2

    #@20
    .line 103
    .local v2, "e":Ljava/security/spec/InvalidParameterSpecException;
    new-instance v3, Ljava/security/InvalidKeyException;

    #@22
    const-string/jumbo v4, "Invalid EC key"

    #@25
    invoke-direct {v3, v4, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@28
    throw v3

    #@29
    .line 100
    .end local v2    # "e":Ljava/security/spec/InvalidParameterSpecException;
    :catch_1
    move-exception v1

    #@2a
    .line 101
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Ljava/security/InvalidKeyException;

    #@2c
    const-string/jumbo v4, "Invalid EC key"

    #@2f
    invoke-direct {v3, v4, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@32
    throw v3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Sun EC public key, "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lsun/security/ec/ECPublicKeyImpl;->params:Ljava/security/spec/ECParameterSpec;

    #@e
    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    #@15
    move-result-object v1

    #@16
    invoke-interface {v1}, Ljava/security/spec/ECField;->getFieldSize()I

    #@19
    move-result v1

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    .line 110
    const-string/jumbo v1, " bits\n  public x coord: "

    #@21
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    .line 110
    iget-object v1, p0, Lsun/security/ec/ECPublicKeyImpl;->w:Ljava/security/spec/ECPoint;

    #@27
    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    #@2a
    move-result-object v1

    #@2b
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    .line 111
    const-string/jumbo v1, "\n  public y coord: "

    #@32
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    .line 111
    iget-object v1, p0, Lsun/security/ec/ECPublicKeyImpl;->w:Ljava/security/spec/ECPoint;

    #@38
    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    #@3b
    move-result-object v1

    #@3c
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    .line 112
    const-string/jumbo v1, "\n  parameters: "

    #@43
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v0

    #@47
    .line 112
    iget-object v1, p0, Lsun/security/ec/ECPublicKeyImpl;->params:Ljava/security/spec/ECParameterSpec;

    #@49
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v0

    #@51
    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    #@0
    .prologue
    .line 116
    new-instance v0, Ljava/security/KeyRep;

    #@2
    sget-object v1, Ljava/security/KeyRep$Type;->PUBLIC:Ljava/security/KeyRep$Type;

    #@4
    .line 117
    invoke-virtual {p0}, Lsun/security/ec/ECPublicKeyImpl;->getAlgorithm()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    .line 118
    invoke-virtual {p0}, Lsun/security/x509/X509Key;->getFormat()Ljava/lang/String;

    #@b
    move-result-object v3

    #@c
    .line 119
    invoke-virtual {p0}, Lsun/security/x509/X509Key;->getEncoded()[B

    #@f
    move-result-object v4

    #@10
    .line 116
    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/KeyRep;-><init>(Ljava/security/KeyRep$Type;Ljava/lang/String;Ljava/lang/String;[B)V

    #@13
    return-object v0
.end method
