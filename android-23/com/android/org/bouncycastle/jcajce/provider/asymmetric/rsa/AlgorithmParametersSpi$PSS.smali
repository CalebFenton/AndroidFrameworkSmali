.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$PSS;
.super Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi;
.source "AlgorithmParametersSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PSS"
.end annotation


# instance fields
.field currentSpec:Ljava/security/spec/PSSParameterSpec;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 159
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected engineGetEncoded()[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 170
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$PSS;->currentSpec:Ljava/security/spec/PSSParameterSpec;

    #@2
    .line 171
    .local v4, "pssSpec":Ljava/security/spec/PSSParameterSpec;
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@4
    .line 172
    invoke-virtual {v4}, Ljava/security/spec/PSSParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    #@7
    move-result-object v5

    #@8
    invoke-static {v5}, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->getOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@b
    move-result-object v5

    #@c
    .line 173
    sget-object v6, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    #@e
    .line 171
    invoke-direct {v0, v5, v6}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@11
    .line 174
    .local v0, "hashAlgorithm":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual {v4}, Ljava/security/spec/PSSParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Ljava/security/spec/MGF1ParameterSpec;

    #@17
    .line 175
    .local v2, "mgfSpec":Ljava/security/spec/MGF1ParameterSpec;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@19
    .line 176
    sget-object v5, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_mgf1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1b
    .line 177
    new-instance v6, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@1d
    invoke-virtual {v2}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    #@20
    move-result-object v7

    #@21
    invoke-static {v7}, Lcom/android/org/bouncycastle/jcajce/provider/util/DigestFactory;->getOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@24
    move-result-object v7

    #@25
    sget-object v8, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    #@27
    invoke-direct {v6, v7, v8}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@2a
    .line 175
    invoke-direct {v1, v5, v6}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@2d
    .line 178
    .local v1, "maskGenAlgorithm":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v3, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    #@2f
    new-instance v5, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@31
    invoke-virtual {v4}, Ljava/security/spec/PSSParameterSpec;->getSaltLength()I

    #@34
    move-result v6

    #@35
    int-to-long v6, v6

    #@36
    invoke-direct {v5, v6, v7}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    #@39
    new-instance v6, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@3b
    invoke-virtual {v4}, Ljava/security/spec/PSSParameterSpec;->getTrailerField()I

    #@3e
    move-result v7

    #@3f
    int-to-long v8, v7

    #@40
    invoke-direct {v6, v8, v9}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    #@43
    invoke-direct {v3, v0, v1, v5, v6}, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Integer;Lcom/android/org/bouncycastle/asn1/ASN1Integer;)V

    #@46
    .line 180
    .local v3, "pssP":Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;
    const-string/jumbo v5, "DER"

    #@49
    invoke-virtual {v3, v5}, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->getEncoded(Ljava/lang/String;)[B

    #@4c
    move-result-object v5

    #@4d
    return-object v5
.end method

.method protected engineGetEncoded(Ljava/lang/String;)[B
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 187
    const-string/jumbo v0, "X.509"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 188
    const-string/jumbo v0, "ASN.1"

    #@c
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@f
    move-result v0

    #@10
    .line 187
    if-eqz v0, :cond_1

    #@12
    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$PSS;->engineGetEncoded()[B

    #@15
    move-result-object v0

    #@16
    return-object v0

    #@17
    .line 193
    :cond_1
    const/4 v0, 0x0

    #@18
    return-object v0
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2
    .param p1, "paramSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 212
    instance-of v0, p1, Ljava/security/spec/PSSParameterSpec;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 214
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    #@6
    const-string/jumbo v1, "PSSParameterSpec required to initialise an PSS algorithm parameters object"

    #@9
    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 217
    :cond_0
    check-cast p1, Ljava/security/spec/PSSParameterSpec;

    #@f
    .end local p1    # "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$PSS;->currentSpec:Ljava/security/spec/PSSParameterSpec;

    #@11
    .line 210
    return-void
.end method

.method protected engineInit([B)V
    .locals 9
    .param p1, "params"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 226
    :try_start_0
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    #@3
    move-result-object v8

    #@4
    .line 228
    .local v8, "pssP":Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;
    new-instance v0, Ljava/security/spec/PSSParameterSpec;

    #@6
    .line 229
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->getHashAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    .line 230
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->getMaskGenAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    .line 231
    new-instance v3, Ljava/security/spec/MGF1ParameterSpec;

    #@20
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->getMaskGenAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@27
    move-result-object v4

    #@28
    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2f
    move-result-object v4

    #@30
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@33
    move-result-object v4

    #@34
    invoke-direct {v3, v4}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    #@37
    .line 232
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->getSaltLength()Ljava/math/BigInteger;

    #@3a
    move-result-object v4

    #@3b
    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    #@3e
    move-result v4

    #@3f
    .line 233
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;->getTrailerField()Ljava/math/BigInteger;

    #@42
    move-result-object v5

    #@43
    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    #@46
    move-result v5

    #@47
    .line 228
    invoke-direct/range {v0 .. v5}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    #@4a
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$PSS;->currentSpec:Ljava/security/spec/PSSParameterSpec;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@4c
    .line 222
    return-void

    #@4d
    .line 240
    .end local v8    # "pssP":Lcom/android/org/bouncycastle/asn1/pkcs/RSASSAPSSparams;
    :catch_0
    move-exception v6

    #@4e
    .line 241
    .local v6, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v0, Ljava/io/IOException;

    #@50
    const-string/jumbo v1, "Not a valid PSS Parameter encoding."

    #@53
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@56
    throw v0

    #@57
    .line 236
    .end local v6    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_1
    move-exception v7

    #@58
    .line 237
    .local v7, "e":Ljava/lang/ClassCastException;
    new-instance v0, Ljava/io/IOException;

    #@5a
    const-string/jumbo v1, "Not a valid PSS Parameter encoding."

    #@5d
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@60
    throw v0
.end method

.method protected engineInit([BLjava/lang/String;)V
    .locals 3
    .param p1, "params"    # [B
    .param p2, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 250
    invoke-virtual {p0, p2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$PSS;->isASN1FormatString(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    const-string/jumbo v0, "X.509"

    #@9
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 252
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$PSS;->engineInit([B)V

    #@12
    .line 248
    return-void

    #@13
    .line 256
    :cond_1
    new-instance v0, Ljava/io/IOException;

    #@15
    new-instance v1, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v2, "Unknown parameter format "

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v0
.end method

.method protected engineToString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 262
    const-string/jumbo v0, "PSS Parameters"

    #@3
    return-object v0
.end method

.method protected localEngineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 2
    .param p1, "paramSpec"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 200
    const-class v0, Ljava/security/spec/PSSParameterSpec;

    #@2
    if-ne p1, v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$PSS;->currentSpec:Ljava/security/spec/PSSParameterSpec;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 202
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$PSS;->currentSpec:Ljava/security/spec/PSSParameterSpec;

    #@a
    return-object v0

    #@b
    .line 205
    :cond_0
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    #@d
    const-string/jumbo v1, "unknown parameter spec passed to PSS parameters object."

    #@10
    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0
.end method
