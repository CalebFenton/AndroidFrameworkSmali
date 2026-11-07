.class public Lsun/security/timestamp/TimestampToken;
.super Ljava/lang/Object;
.source "TimestampToken.java"


# instance fields
.field private blacklist genTime:Ljava/util/Date;

.field private blacklist hashAlgorithm:Lsun/security/x509/AlgorithmId;

.field private blacklist hashedMessage:[B

.field private blacklist nonce:Ljava/math/BigInteger;

.field private blacklist policy:Lsun/security/util/ObjectIdentifier;

.field private blacklist serialNumber:Ljava/math/BigInteger;

.field private blacklist version:I


# direct methods
.method public constructor greylist <init>([B)V
    .registers 4
    .param p1, "timestampTokenInfo"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    if-eqz p1, :cond_9

    .line 93
    invoke-direct {p0, p1}, Lsun/security/timestamp/TimestampToken;->parse([B)V

    .line 94
    return-void

    .line 91
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No timestamp token info"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist parse([B)V
    .registers 7
    .param p1, "timestampTokenInfo"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    new-instance v0, Lsun/security/util/DerValue;

    invoke-direct {v0, p1}, Lsun/security/util/DerValue;-><init>([B)V

    .line 137
    .local v0, "tstInfo":Lsun/security/util/DerValue;
    iget-byte v1, v0, Lsun/security/util/DerValue;->tag:B

    const/16 v2, 0x30

    if-ne v1, v2, :cond_61

    .line 141
    iget-object v1, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->getInteger()I

    move-result v1

    iput v1, p0, Lsun/security/timestamp/TimestampToken;->version:I

    .line 144
    iget-object v1, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    iput-object v1, p0, Lsun/security/timestamp/TimestampToken;->policy:Lsun/security/util/ObjectIdentifier;

    .line 147
    iget-object v1, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v1

    .line 148
    .local v1, "messageImprint":Lsun/security/util/DerValue;
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v2

    invoke-static {v2}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v2

    iput-object v2, p0, Lsun/security/timestamp/TimestampToken;->hashAlgorithm:Lsun/security/x509/AlgorithmId;

    .line 149
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getOctetString()[B

    move-result-object v2

    iput-object v2, p0, Lsun/security/timestamp/TimestampToken;->hashedMessage:[B

    .line 152
    iget-object v2, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lsun/security/timestamp/TimestampToken;->serialNumber:Ljava/math/BigInteger;

    .line 155
    iget-object v2, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getGeneralizedTime()Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lsun/security/timestamp/TimestampToken;->genTime:Ljava/util/Date;

    .line 158
    :goto_45
    iget-object v2, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-lez v2, :cond_60

    .line 159
    iget-object v2, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v2

    .line 160
    .local v2, "d":Lsun/security/util/DerValue;
    iget-byte v3, v2, Lsun/security/util/DerValue;->tag:B

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5f

    .line 161
    invoke-virtual {v2}, Lsun/security/util/DerValue;->getBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lsun/security/timestamp/TimestampToken;->nonce:Ljava/math/BigInteger;

    .line 162
    goto :goto_60

    .line 170
    .end local v2    # "d":Lsun/security/util/DerValue;
    :cond_5f
    goto :goto_45

    .line 171
    :cond_60
    :goto_60
    return-void

    .line 138
    .end local v1    # "messageImprint":Lsun/security/util/DerValue;
    :cond_61
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Bad encoding for timestamp token info"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public greylist-max-r getDate()Ljava/util/Date;
    .registers 2

    .line 102
    iget-object v0, p0, Lsun/security/timestamp/TimestampToken;->genTime:Ljava/util/Date;

    return-object v0
.end method

.method public greylist getHashAlgorithm()Lsun/security/x509/AlgorithmId;
    .registers 2

    .line 106
    iget-object v0, p0, Lsun/security/timestamp/TimestampToken;->hashAlgorithm:Lsun/security/x509/AlgorithmId;

    return-object v0
.end method

.method public greylist getHashedMessage()[B
    .registers 2

    .line 111
    iget-object v0, p0, Lsun/security/timestamp/TimestampToken;->hashedMessage:[B

    return-object v0
.end method

.method public greylist getNonce()Ljava/math/BigInteger;
    .registers 2

    .line 115
    iget-object v0, p0, Lsun/security/timestamp/TimestampToken;->nonce:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getPolicyID()Ljava/lang/String;
    .registers 2

    .line 119
    iget-object v0, p0, Lsun/security/timestamp/TimestampToken;->policy:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSerialNumber()Ljava/math/BigInteger;
    .registers 2

    .line 123
    iget-object v0, p0, Lsun/security/timestamp/TimestampToken;->serialNumber:Ljava/math/BigInteger;

    return-object v0
.end method
