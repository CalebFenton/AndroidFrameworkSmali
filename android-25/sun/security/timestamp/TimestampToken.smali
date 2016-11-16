.class public Lsun/security/timestamp/TimestampToken;
.super Ljava/lang/Object;
.source "TimestampToken.java"


# instance fields
.field private genTime:Ljava/util/Date;

.field private hashAlgorithm:Lsun/security/x509/AlgorithmId;

.field private hashedMessage:[B

.field private nonce:Ljava/math/BigInteger;

.field private policy:Lsun/security/util/ObjectIdentifier;

.field private serialNumber:Ljava/math/BigInteger;

.field private version:I


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .param p1, "timestampTokenInfo"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 90
    if-nez p1, :cond_0

    #@5
    .line 91
    new-instance v0, Ljava/io/IOException;

    #@7
    const-string/jumbo v1, "No timestamp token info"

    #@a
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 93
    :cond_0
    invoke-direct {p0, p1}, Lsun/security/timestamp/TimestampToken;->parse([B)V

    #@11
    .line 89
    return-void
.end method

.method private parse([B)V
    .locals 5
    .param p1, "timestampTokenInfo"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 132
    new-instance v2, Lsun/security/util/DerValue;

    #@2
    invoke-direct {v2, p1}, Lsun/security/util/DerValue;-><init>([B)V

    #@5
    .line 133
    .local v2, "tstInfo":Lsun/security/util/DerValue;
    iget-byte v3, v2, Lsun/security/util/DerValue;->tag:B

    #@7
    const/16 v4, 0x30

    #@9
    if-eq v3, v4, :cond_0

    #@b
    .line 134
    new-instance v3, Ljava/io/IOException;

    #@d
    const-string/jumbo v4, "Bad encoding for timestamp token info"

    #@10
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@13
    throw v3

    #@14
    .line 137
    :cond_0
    iget-object v3, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@16
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getInteger()I

    #@19
    move-result v3

    #@1a
    iput v3, p0, Lsun/security/timestamp/TimestampToken;->version:I

    #@1c
    .line 140
    iget-object v3, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@1e
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getOID()Lsun/security/util/ObjectIdentifier;

    #@21
    move-result-object v3

    #@22
    iput-object v3, p0, Lsun/security/timestamp/TimestampToken;->policy:Lsun/security/util/ObjectIdentifier;

    #@24
    .line 143
    iget-object v3, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@26
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@29
    move-result-object v1

    #@2a
    .line 144
    .local v1, "messageImprint":Lsun/security/util/DerValue;
    iget-object v3, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@2c
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@2f
    move-result-object v3

    #@30
    invoke-static {v3}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    #@33
    move-result-object v3

    #@34
    iput-object v3, p0, Lsun/security/timestamp/TimestampToken;->hashAlgorithm:Lsun/security/x509/AlgorithmId;

    #@36
    .line 145
    iget-object v3, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@38
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getOctetString()[B

    #@3b
    move-result-object v3

    #@3c
    iput-object v3, p0, Lsun/security/timestamp/TimestampToken;->hashedMessage:[B

    #@3e
    .line 148
    iget-object v3, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@40
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getBigInteger()Ljava/math/BigInteger;

    #@43
    move-result-object v3

    #@44
    iput-object v3, p0, Lsun/security/timestamp/TimestampToken;->serialNumber:Ljava/math/BigInteger;

    #@46
    .line 151
    iget-object v3, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@48
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getGeneralizedTime()Ljava/util/Date;

    #@4b
    move-result-object v3

    #@4c
    iput-object v3, p0, Lsun/security/timestamp/TimestampToken;->genTime:Ljava/util/Date;

    #@4e
    .line 154
    :cond_1
    iget-object v3, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@50
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->available()I

    #@53
    move-result v3

    #@54
    if-lez v3, :cond_2

    #@56
    .line 155
    iget-object v3, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@58
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@5b
    move-result-object v0

    #@5c
    .line 156
    .local v0, "d":Lsun/security/util/DerValue;
    iget-byte v3, v0, Lsun/security/util/DerValue;->tag:B

    #@5e
    const/4 v4, 0x2

    #@5f
    if-ne v3, v4, :cond_1

    #@61
    .line 157
    invoke-virtual {v0}, Lsun/security/util/DerValue;->getBigInteger()Ljava/math/BigInteger;

    #@64
    move-result-object v3

    #@65
    iput-object v3, p0, Lsun/security/timestamp/TimestampToken;->nonce:Ljava/math/BigInteger;

    #@67
    .line 130
    .end local v0    # "d":Lsun/security/util/DerValue;
    :cond_2
    return-void
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 1

    #@0
    .prologue
    .line 102
    iget-object v0, p0, Lsun/security/timestamp/TimestampToken;->genTime:Ljava/util/Date;

    #@2
    return-object v0
.end method

.method public getHashAlgorithm()Lsun/security/x509/AlgorithmId;
    .locals 1

    #@0
    .prologue
    .line 106
    iget-object v0, p0, Lsun/security/timestamp/TimestampToken;->hashAlgorithm:Lsun/security/x509/AlgorithmId;

    #@2
    return-object v0
.end method

.method public getHashedMessage()[B
    .locals 1

    #@0
    .prologue
    .line 111
    iget-object v0, p0, Lsun/security/timestamp/TimestampToken;->hashedMessage:[B

    #@2
    return-object v0
.end method

.method public getNonce()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 115
    iget-object v0, p0, Lsun/security/timestamp/TimestampToken;->nonce:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 119
    iget-object v0, p0, Lsun/security/timestamp/TimestampToken;->serialNumber:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method
