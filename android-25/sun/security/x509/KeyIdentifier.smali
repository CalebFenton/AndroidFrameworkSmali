.class public Lsun/security/x509/KeyIdentifier;
.super Ljava/lang/Object;
.source "KeyIdentifier.java"


# instance fields
.field private octetString:[B


# direct methods
.method public constructor <init>(Ljava/security/PublicKey;)V
    .locals 7
    .param p1, "pubKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 85
    new-instance v0, Lsun/security/util/DerValue;

    #@5
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    #@8
    move-result-object v5

    #@9
    invoke-direct {v0, v5}, Lsun/security/util/DerValue;-><init>([B)V

    #@c
    .line 86
    .local v0, "algAndKey":Lsun/security/util/DerValue;
    iget-byte v5, v0, Lsun/security/util/DerValue;->tag:B

    #@e
    const/16 v6, 0x30

    #@10
    if-eq v5, v6, :cond_0

    #@12
    .line 87
    new-instance v5, Ljava/io/IOException;

    #@14
    const-string/jumbo v6, "PublicKey value is not a valid X.509 public key"

    #@17
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v5

    #@1b
    .line 90
    :cond_0
    iget-object v5, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@1d
    invoke-virtual {v5}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@20
    move-result-object v5

    #@21
    invoke-static {v5}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    #@24
    move-result-object v1

    #@25
    .line 91
    .local v1, "algid":Lsun/security/x509/AlgorithmId;
    iget-object v5, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@27
    invoke-virtual {v5}, Lsun/security/util/DerInputStream;->getUnalignedBitString()Lsun/security/util/BitArray;

    #@2a
    move-result-object v5

    #@2b
    invoke-virtual {v5}, Lsun/security/util/BitArray;->toByteArray()[B

    #@2e
    move-result-object v3

    #@2f
    .line 93
    .local v3, "key":[B
    const/4 v4, 0x0

    #@30
    .line 95
    .local v4, "md":Ljava/security/MessageDigest;
    :try_start_0
    const-string/jumbo v5, "SHA1"

    #@33
    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@36
    move-result-object v4

    #@37
    .line 99
    .local v4, "md":Ljava/security/MessageDigest;
    invoke-virtual {v4, v3}, Ljava/security/MessageDigest;->update([B)V

    #@3a
    .line 100
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    #@3d
    move-result-object v5

    #@3e
    iput-object v5, p0, Lsun/security/x509/KeyIdentifier;->octetString:[B

    #@40
    .line 83
    return-void

    #@41
    .line 96
    .local v4, "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v2

    #@42
    .line 97
    .local v2, "e3":Ljava/security/NoSuchAlgorithmException;
    new-instance v5, Ljava/io/IOException;

    #@44
    const-string/jumbo v6, "SHA1 not supported"

    #@47
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v5
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 1
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 60
    invoke-virtual {p1}, Lsun/security/util/DerValue;->getOctetString()[B

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lsun/security/x509/KeyIdentifier;->octetString:[B

    #@9
    .line 59
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "octetString"    # [B

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 51
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, [B

    #@9
    iput-object v0, p0, Lsun/security/x509/KeyIdentifier;->octetString:[B

    #@b
    .line 50
    return-void
.end method


# virtual methods
.method encode(Lsun/security/util/DerOutputStream;)V
    .locals 1
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 129
    iget-object v0, p0, Lsun/security/x509/KeyIdentifier;->octetString:[B

    #@2
    invoke-virtual {p1, v0}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    #@5
    .line 128
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 147
    if-ne p0, p1, :cond_0

    #@2
    .line 148
    const/4 v0, 0x1

    #@3
    return v0

    #@4
    .line 149
    :cond_0
    instance-of v0, p1, Lsun/security/x509/KeyIdentifier;

    #@6
    if-nez v0, :cond_1

    #@8
    .line 150
    const/4 v0, 0x0

    #@9
    return v0

    #@a
    .line 151
    :cond_1
    iget-object v0, p0, Lsun/security/x509/KeyIdentifier;->octetString:[B

    #@c
    .line 152
    check-cast p1, Lsun/security/x509/KeyIdentifier;

    #@e
    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p1}, Lsun/security/x509/KeyIdentifier;->getIdentifier()[B

    #@11
    move-result-object v1

    #@12
    .line 151
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    #@15
    move-result v0

    #@16
    return v0
.end method

.method public getIdentifier()[B
    .locals 1

    #@0
    .prologue
    .line 107
    iget-object v0, p0, Lsun/security/x509/KeyIdentifier;->octetString:[B

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [B

    #@8
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 137
    const/4 v1, 0x0

    #@1
    .line 138
    .local v1, "retval":I
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lsun/security/x509/KeyIdentifier;->octetString:[B

    #@4
    array-length v2, v2

    #@5
    if-ge v0, v2, :cond_0

    #@7
    .line 139
    iget-object v2, p0, Lsun/security/x509/KeyIdentifier;->octetString:[B

    #@9
    aget-byte v2, v2, v0

    #@b
    mul-int/2addr v2, v0

    #@c
    add-int/2addr v1, v2

    #@d
    .line 138
    add-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_0

    #@10
    .line 140
    :cond_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 114
    const-string/jumbo v1, "KeyIdentifier [\n"

    #@3
    .line 116
    .local v1, "s":Ljava/lang/String;
    new-instance v0, Lsun/misc/HexDumpEncoder;

    #@5
    invoke-direct {v0}, Lsun/misc/HexDumpEncoder;-><init>()V

    #@8
    .line 117
    .local v0, "encoder":Lsun/misc/HexDumpEncoder;
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    iget-object v3, p0, Lsun/security/x509/KeyIdentifier;->octetString:[B

    #@13
    invoke-virtual {v0, v3}, Lsun/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    const-string/jumbo v3, "]\n"

    #@2b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    .line 119
    return-object v1
.end method
