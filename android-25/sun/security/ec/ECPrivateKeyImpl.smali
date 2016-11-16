.class public final Lsun/security/ec/ECPrivateKeyImpl;
.super Lsun/security/pkcs/PKCS8Key;
.source "ECPrivateKeyImpl.java"

# interfaces
.implements Ljava/security/interfaces/ECPrivateKey;


# static fields
.field private static final serialVersionUID:J = 0x13b1bfbb8cd8739L


# instance fields
.field private params:Ljava/security/spec/ECParameterSpec;

.field private s:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V
    .locals 7
    .param p1, "s"    # Ljava/math/BigInteger;
    .param p2, "params"    # Ljava/security/spec/ECParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 81
    invoke-direct {p0}, Lsun/security/pkcs/PKCS8Key;-><init>()V

    #@3
    .line 83
    iput-object p1, p0, Lsun/security/ec/ECPrivateKeyImpl;->s:Ljava/math/BigInteger;

    #@5
    .line 84
    iput-object p2, p0, Lsun/security/ec/ECPrivateKeyImpl;->params:Ljava/security/spec/ECParameterSpec;

    #@7
    .line 86
    new-instance v4, Lsun/security/x509/AlgorithmId;

    #@9
    .line 87
    sget-object v5, Lsun/security/x509/AlgorithmId;->EC_oid:Lsun/security/util/ObjectIdentifier;

    #@b
    invoke-static {p2}, Lsun/security/ec/ECParameters;->getAlgorithmParameters(Ljava/security/spec/ECParameterSpec;)Ljava/security/AlgorithmParameters;

    #@e
    move-result-object v6

    #@f
    .line 86
    invoke-direct {v4, v5, v6}, Lsun/security/x509/AlgorithmId;-><init>(Lsun/security/util/ObjectIdentifier;Ljava/security/AlgorithmParameters;)V

    #@12
    iput-object v4, p0, Lsun/security/pkcs/PKCS8Key;->algid:Lsun/security/x509/AlgorithmId;

    #@14
    .line 89
    :try_start_0
    new-instance v1, Lsun/security/util/DerOutputStream;

    #@16
    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    #@19
    .line 90
    .local v1, "out":Lsun/security/util/DerOutputStream;
    const/4 v4, 0x1

    #@1a
    invoke-virtual {v1, v4}, Lsun/security/util/DerOutputStream;->putInteger(I)V

    #@1d
    .line 91
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    #@20
    move-result-object v4

    #@21
    invoke-static {v4}, Lsun/security/ec/ECParameters;->trimZeroes([B)[B

    #@24
    move-result-object v2

    #@25
    .line 92
    .local v2, "privBytes":[B
    invoke-virtual {v1, v2}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    #@28
    .line 94
    new-instance v3, Lsun/security/util/DerValue;

    #@2a
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@2d
    move-result-object v4

    #@2e
    const/16 v5, 0x30

    #@30
    invoke-direct {v3, v5, v4}, Lsun/security/util/DerValue;-><init>(B[B)V

    #@33
    .line 95
    .local v3, "val":Lsun/security/util/DerValue;
    invoke-virtual {v3}, Lsun/security/util/DerValue;->toByteArray()[B

    #@36
    move-result-object v4

    #@37
    iput-object v4, p0, Lsun/security/pkcs/PKCS8Key;->key:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@39
    .line 82
    return-void

    #@3a
    .line 96
    .end local v1    # "out":Lsun/security/util/DerOutputStream;
    .end local v2    # "privBytes":[B
    .end local v3    # "val":Lsun/security/util/DerValue;
    :catch_0
    move-exception v0

    #@3b
    .line 98
    .local v0, "exc":Ljava/io/IOException;
    new-instance v4, Ljava/security/InvalidKeyException;

    #@3d
    invoke-direct {v4, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    #@40
    throw v4
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
    .line 73
    invoke-direct {p0}, Lsun/security/pkcs/PKCS8Key;-><init>()V

    #@3
    .line 74
    invoke-virtual {p0, p1}, Lsun/security/pkcs/PKCS8Key;->decode([B)V

    #@6
    .line 73
    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 104
    const-string/jumbo v0, "EC"

    #@3
    return-object v0
.end method

.method public getParams()Ljava/security/spec/ECParameterSpec;
    .locals 1

    #@0
    .prologue
    .line 114
    iget-object v0, p0, Lsun/security/ec/ECPrivateKeyImpl;->params:Ljava/security/spec/ECParameterSpec;

    #@2
    return-object v0
.end method

.method public getS()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 109
    iget-object v0, p0, Lsun/security/ec/ECPrivateKeyImpl;->s:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method protected parseKeyBits()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    .line 122
    :try_start_0
    new-instance v5, Lsun/security/util/DerInputStream;

    #@3
    iget-object v9, p0, Lsun/security/pkcs/PKCS8Key;->key:[B

    #@5
    invoke-direct {v5, v9}, Lsun/security/util/DerInputStream;-><init>([B)V

    #@8
    .line 123
    .local v5, "in":Lsun/security/util/DerInputStream;
    invoke-virtual {v5}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@b
    move-result-object v2

    #@c
    .line 124
    .local v2, "derValue":Lsun/security/util/DerValue;
    iget-byte v9, v2, Lsun/security/util/DerValue;->tag:B

    #@e
    const/16 v10, 0x30

    #@10
    if-eq v9, v10, :cond_0

    #@12
    .line 125
    new-instance v9, Ljava/io/IOException;

    #@14
    const-string/jumbo v10, "Not a SEQUENCE"

    #@17
    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_1

    #@1b
    .line 150
    .end local v2    # "derValue":Lsun/security/util/DerValue;
    .end local v5    # "in":Lsun/security/util/DerInputStream;
    :catch_0
    move-exception v3

    #@1c
    .line 151
    .local v3, "e":Ljava/io/IOException;
    new-instance v9, Ljava/security/InvalidKeyException;

    #@1e
    const-string/jumbo v10, "Invalid EC private key"

    #@21
    invoke-direct {v9, v10, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@24
    throw v9

    #@25
    .line 127
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "derValue":Lsun/security/util/DerValue;
    .restart local v5    # "in":Lsun/security/util/DerInputStream;
    :cond_0
    :try_start_1
    iget-object v1, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@27
    .line 128
    .local v1, "data":Lsun/security/util/DerInputStream;
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->getInteger()I

    #@2a
    move-result v8

    #@2b
    .line 129
    .local v8, "version":I
    if-eq v8, v11, :cond_1

    #@2d
    .line 130
    new-instance v9, Ljava/io/IOException;

    #@2f
    const-string/jumbo v10, "Version must be 1"

    #@32
    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@35
    throw v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_1 .. :try_end_1} :catch_1

    #@36
    .line 152
    .end local v1    # "data":Lsun/security/util/DerInputStream;
    .end local v2    # "derValue":Lsun/security/util/DerValue;
    .end local v5    # "in":Lsun/security/util/DerInputStream;
    .end local v8    # "version":I
    :catch_1
    move-exception v4

    #@37
    .line 153
    .local v4, "e":Ljava/security/spec/InvalidParameterSpecException;
    new-instance v9, Ljava/security/InvalidKeyException;

    #@39
    const-string/jumbo v10, "Invalid EC private key"

    #@3c
    invoke-direct {v9, v10, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3f
    throw v9

    #@40
    .line 132
    .end local v4    # "e":Ljava/security/spec/InvalidParameterSpecException;
    .restart local v1    # "data":Lsun/security/util/DerInputStream;
    .restart local v2    # "derValue":Lsun/security/util/DerValue;
    .restart local v5    # "in":Lsun/security/util/DerInputStream;
    .restart local v8    # "version":I
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->getOctetString()[B

    #@43
    move-result-object v6

    #@44
    .line 133
    .local v6, "privData":[B
    new-instance v9, Ljava/math/BigInteger;

    #@46
    const/4 v10, 0x1

    #@47
    invoke-direct {v9, v10, v6}, Ljava/math/BigInteger;-><init>(I[B)V

    #@4a
    iput-object v9, p0, Lsun/security/ec/ECPrivateKeyImpl;->s:Ljava/math/BigInteger;

    #@4c
    .line 134
    :cond_2
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    #@4f
    move-result v9

    #@50
    if-eqz v9, :cond_3

    #@52
    .line 135
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@55
    move-result-object v7

    #@56
    .line 136
    .local v7, "value":Lsun/security/util/DerValue;
    const/4 v9, 0x0

    #@57
    invoke-virtual {v7, v9}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    #@5a
    move-result v9

    #@5b
    if-nez v9, :cond_2

    #@5d
    .line 138
    const/4 v9, 0x1

    #@5e
    invoke-virtual {v7, v9}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    #@61
    move-result v9

    #@62
    if-nez v9, :cond_2

    #@64
    .line 141
    new-instance v9, Ljava/security/InvalidKeyException;

    #@66
    new-instance v10, Ljava/lang/StringBuilder;

    #@68
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@6b
    const-string/jumbo v11, "Unexpected value: "

    #@6e
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v10

    #@72
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v10

    #@76
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v10

    #@7a
    invoke-direct {v9, v10}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@7d
    throw v9

    #@7e
    .line 144
    .end local v7    # "value":Lsun/security/util/DerValue;
    :cond_3
    iget-object v9, p0, Lsun/security/pkcs/PKCS8Key;->algid:Lsun/security/x509/AlgorithmId;

    #@80
    invoke-virtual {v9}, Lsun/security/x509/AlgorithmId;->getParameters()Ljava/security/AlgorithmParameters;

    #@83
    move-result-object v0

    #@84
    .line 145
    .local v0, "algParams":Ljava/security/AlgorithmParameters;
    if-nez v0, :cond_4

    #@86
    .line 146
    new-instance v9, Ljava/security/InvalidKeyException;

    #@88
    const-string/jumbo v10, "EC domain parameters must be encoded in the algorithm identifier"

    #@8b
    invoke-direct {v9, v10}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@8e
    throw v9

    #@8f
    .line 149
    :cond_4
    const-class v9, Ljava/security/spec/ECParameterSpec;

    #@91
    invoke-virtual {v0, v9}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    #@94
    move-result-object v9

    #@95
    check-cast v9, Ljava/security/spec/ECParameterSpec;

    #@97
    iput-object v9, p0, Lsun/security/ec/ECPrivateKeyImpl;->params:Ljava/security/spec/ECParameterSpec;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_2 .. :try_end_2} :catch_1

    #@99
    .line 120
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Sun EC private key, "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lsun/security/ec/ECPrivateKeyImpl;->params:Ljava/security/spec/ECParameterSpec;

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
    .line 160
    const-string/jumbo v1, " bits\n  private value:  "

    #@21
    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    .line 161
    iget-object v1, p0, Lsun/security/ec/ECPrivateKeyImpl;->s:Ljava/math/BigInteger;

    #@27
    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    .line 161
    const-string/jumbo v1, "\n  parameters: "

    #@2e
    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    .line 161
    iget-object v1, p0, Lsun/security/ec/ECPrivateKeyImpl;->params:Ljava/security/spec/ECParameterSpec;

    #@34
    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v0

    #@38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v0

    #@3c
    return-object v0
.end method
