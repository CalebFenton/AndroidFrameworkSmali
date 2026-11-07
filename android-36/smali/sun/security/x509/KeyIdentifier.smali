.class public Lsun/security/x509/KeyIdentifier;
.super Ljava/lang/Object;
.source "KeyIdentifier.java"


# instance fields
.field private greylist octetString:[B


# direct methods
.method public constructor greylist <init>(Ljava/security/PublicKey;)V
    .registers 9
    .param p1, "pubKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Lsun/security/util/DerValue;

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lsun/security/util/DerValue;-><init>([B)V

    .line 86
    .local v0, "algAndKey":Lsun/security/util/DerValue;
    iget-byte v1, v0, Lsun/security/util/DerValue;->tag:B

    const/16 v2, 0x30

    if-ne v1, v2, :cond_41

    .line 90
    iget-object v1, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v1

    invoke-static {v1}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v1

    .line 91
    .local v1, "algid":Lsun/security/x509/AlgorithmId;
    iget-object v2, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getUnalignedBitString()Lsun/security/util/BitArray;

    move-result-object v2

    invoke-virtual {v2}, Lsun/security/util/BitArray;->toByteArray()[B

    move-result-object v2

    .line 93
    .local v2, "key":[B
    const/4 v3, 0x0

    .line 95
    .local v3, "md":Ljava/security/MessageDigest;
    :try_start_27
    const-string v4, "SHA1"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4
    :try_end_2d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_27 .. :try_end_2d} :catch_38

    .line 98
    .end local v3    # "md":Ljava/security/MessageDigest;
    .local v4, "md":Ljava/security/MessageDigest;
    nop

    .line 99
    invoke-virtual {v4, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 100
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    iput-object v3, p0, Lsun/security/x509/KeyIdentifier;->octetString:[B

    .line 101
    return-void

    .line 96
    .end local v4    # "md":Ljava/security/MessageDigest;
    .restart local v3    # "md":Ljava/security/MessageDigest;
    :catch_38
    move-exception v4

    .line 97
    .local v4, "e3":Ljava/security/NoSuchAlgorithmException;
    new-instance v5, Ljava/io/IOException;

    const-string v6, "SHA1 not supported"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 87
    .end local v1    # "algid":Lsun/security/x509/AlgorithmId;
    .end local v2    # "key":[B
    .end local v3    # "md":Ljava/security/MessageDigest;
    .end local v4    # "e3":Ljava/security/NoSuchAlgorithmException;
    :cond_41
    new-instance v1, Ljava/io/IOException;

    const-string v2, "PublicKey value is not a valid X.509 public key"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor blacklist <init>(Lsun/security/util/DerValue;)V
    .registers 3
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p1}, Lsun/security/util/DerValue;->getOctetString()[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/KeyIdentifier;->octetString:[B

    .line 61
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 3
    .param p1, "octetString"    # [B

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lsun/security/x509/KeyIdentifier;->octetString:[B

    .line 52
    return-void
.end method


# virtual methods
.method blacklist encode(Lsun/security/util/DerOutputStream;)V
    .registers 3
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lsun/security/x509/KeyIdentifier;->octetString:[B

    invoke-virtual {p1, v0}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    .line 130
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 147
    if-ne p0, p1, :cond_4

    .line 148
    const/4 v0, 0x1

    return v0

    .line 149
    :cond_4
    instance-of v0, p1, Lsun/security/x509/KeyIdentifier;

    if-nez v0, :cond_a

    .line 150
    const/4 v0, 0x0

    return v0

    .line 151
    :cond_a
    move-object v0, p1

    check-cast v0, Lsun/security/x509/KeyIdentifier;

    iget-object v0, v0, Lsun/security/x509/KeyIdentifier;->octetString:[B

    .line 152
    .local v0, "otherString":[B
    iget-object v1, p0, Lsun/security/x509/KeyIdentifier;->octetString:[B

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method public greylist getIdentifier()[B
    .registers 2

    .line 107
    iget-object v0, p0, Lsun/security/x509/KeyIdentifier;->octetString:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "retval":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lsun/security/x509/KeyIdentifier;->octetString:[B

    array-length v2, v2

    if-ge v1, v2, :cond_10

    .line 139
    iget-object v2, p0, Lsun/security/x509/KeyIdentifier;->octetString:[B

    aget-byte v2, v2, v1

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 140
    .end local v1    # "i":I
    :cond_10
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 114
    const-string v0, "KeyIdentifier [\n"

    .line 116
    .local v0, "s":Ljava/lang/String;
    new-instance v1, Lsun/misc/HexDumpEncoder;

    invoke-direct {v1}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 117
    .local v1, "encoder":Lsun/misc/HexDumpEncoder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/x509/KeyIdentifier;->octetString:[B

    invoke-virtual {v1, v3}, Lsun/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    return-object v0
.end method
