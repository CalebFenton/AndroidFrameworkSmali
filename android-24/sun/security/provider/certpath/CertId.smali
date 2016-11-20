.class public Lsun/security/provider/certpath/CertId;
.super Ljava/lang/Object;
.source "CertId.java"


# static fields
.field private static final SHA1_ALGID:Lsun/security/x509/AlgorithmId;

.field private static final debug:Z


# instance fields
.field private final certSerialNumber:Lsun/security/x509/SerialNumber;

.field private final hashAlgId:Lsun/security/x509/AlgorithmId;

.field private final issuerKeyHash:[B

.field private final issuerNameHash:[B

.field private myhash:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 62
    new-instance v0, Lsun/security/x509/AlgorithmId;

    #@2
    sget-object v1, Lsun/security/x509/AlgorithmId;->SHA_oid:Lsun/security/util/ObjectIdentifier;

    #@4
    invoke-direct {v0, v1}, Lsun/security/x509/AlgorithmId;-><init>(Lsun/security/util/ObjectIdentifier;)V

    #@7
    .line 61
    sput-object v0, Lsun/security/provider/certpath/CertId;->SHA1_ALGID:Lsun/security/x509/AlgorithmId;

    #@9
    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/security/cert/X509Certificate;Lsun/security/x509/SerialNumber;)V
    .locals 2
    .param p1, "issuerCert"    # Ljava/security/cert/X509Certificate;
    .param p2, "serialNumber"    # Lsun/security/x509/SerialNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 75
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@3
    move-result-object v0

    #@4
    .line 76
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@7
    move-result-object v1

    #@8
    .line 75
    invoke-direct {p0, v0, v1, p2}, Lsun/security/provider/certpath/CertId;-><init>(Ljavax/security/auth/x500/X500Principal;Ljava/security/PublicKey;Lsun/security/x509/SerialNumber;)V

    #@b
    .line 73
    return-void
.end method

.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;Ljava/security/PublicKey;Lsun/security/x509/SerialNumber;)V
    .locals 9
    .param p1, "issuerName"    # Ljavax/security/auth/x500/X500Principal;
    .param p2, "issuerKey"    # Ljava/security/PublicKey;
    .param p3, "serialNumber"    # Lsun/security/x509/SerialNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 67
    const/4 v6, -0x1

    #@5
    iput v6, p0, Lsun/security/provider/certpath/CertId;->myhash:I

    #@7
    .line 83
    const/4 v1, 0x0

    #@8
    .line 85
    .local v1, "md":Ljava/security/MessageDigest;
    :try_start_0
    const-string/jumbo v6, "SHA1"

    #@b
    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result-object v1

    #@f
    .line 89
    .local v1, "md":Ljava/security/MessageDigest;
    sget-object v6, Lsun/security/provider/certpath/CertId;->SHA1_ALGID:Lsun/security/x509/AlgorithmId;

    #@11
    iput-object v6, p0, Lsun/security/provider/certpath/CertId;->hashAlgId:Lsun/security/x509/AlgorithmId;

    #@13
    .line 90
    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    #@16
    move-result-object v6

    #@17
    invoke-virtual {v1, v6}, Ljava/security/MessageDigest;->update([B)V

    #@1a
    .line 91
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    #@1d
    move-result-object v6

    #@1e
    iput-object v6, p0, Lsun/security/provider/certpath/CertId;->issuerNameHash:[B

    #@20
    .line 94
    invoke-interface {p2}, Ljava/security/PublicKey;->getEncoded()[B

    #@23
    move-result-object v3

    #@24
    .line 95
    .local v3, "pubKey":[B
    new-instance v5, Lsun/security/util/DerValue;

    #@26
    invoke-direct {v5, v3}, Lsun/security/util/DerValue;-><init>([B)V

    #@29
    .line 96
    .local v5, "val":Lsun/security/util/DerValue;
    const/4 v6, 0x2

    #@2a
    new-array v4, v6, [Lsun/security/util/DerValue;

    #@2c
    .line 97
    .local v4, "seq":[Lsun/security/util/DerValue;
    iget-object v6, v5, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@2e
    invoke-virtual {v6}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@31
    move-result-object v6

    #@32
    const/4 v7, 0x0

    #@33
    aput-object v6, v4, v7

    #@35
    .line 98
    iget-object v6, v5, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@37
    invoke-virtual {v6}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@3a
    move-result-object v6

    #@3b
    aput-object v6, v4, v8

    #@3d
    .line 99
    aget-object v6, v4, v8

    #@3f
    invoke-virtual {v6}, Lsun/security/util/DerValue;->getBitString()[B

    #@42
    move-result-object v0

    #@43
    .line 100
    .local v0, "keyBytes":[B
    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    #@46
    .line 101
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    #@49
    move-result-object v6

    #@4a
    iput-object v6, p0, Lsun/security/provider/certpath/CertId;->issuerKeyHash:[B

    #@4c
    .line 102
    iput-object p3, p0, Lsun/security/provider/certpath/CertId;->certSerialNumber:Lsun/security/x509/SerialNumber;

    #@4e
    .line 80
    return-void

    #@4f
    .line 86
    .end local v0    # "keyBytes":[B
    .end local v3    # "pubKey":[B
    .end local v4    # "seq":[Lsun/security/util/DerValue;
    .end local v5    # "val":Lsun/security/util/DerValue;
    .local v1, "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v2

    #@50
    .line 87
    .local v2, "nsae":Ljava/security/NoSuchAlgorithmException;
    new-instance v6, Ljava/io/IOException;

    #@52
    const-string/jumbo v7, "Unable to create CertId"

    #@55
    invoke-direct {v6, v7, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@58
    throw v6
.end method

.method public constructor <init>(Lsun/security/util/DerInputStream;)V
    .locals 1
    .param p1, "derIn"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 67
    const/4 v0, -0x1

    #@4
    iput v0, p0, Lsun/security/provider/certpath/CertId;->myhash:I

    #@6
    .line 119
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@9
    move-result-object v0

    #@a
    invoke-static {v0}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lsun/security/provider/certpath/CertId;->hashAlgId:Lsun/security/x509/AlgorithmId;

    #@10
    .line 120
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getOctetString()[B

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Lsun/security/provider/certpath/CertId;->issuerNameHash:[B

    #@16
    .line 121
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getOctetString()[B

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Lsun/security/provider/certpath/CertId;->issuerKeyHash:[B

    #@1c
    .line 122
    new-instance v0, Lsun/security/x509/SerialNumber;

    #@1e
    invoke-direct {v0, p1}, Lsun/security/x509/SerialNumber;-><init>(Lsun/security/util/DerInputStream;)V

    #@21
    iput-object v0, p0, Lsun/security/provider/certpath/CertId;->certSerialNumber:Lsun/security/x509/SerialNumber;

    #@23
    .line 118
    return-void
.end method


# virtual methods
.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 2
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 159
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@2
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@5
    .line 160
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/provider/certpath/CertId;->hashAlgId:Lsun/security/x509/AlgorithmId;

    #@7
    invoke-virtual {v1, v0}, Lsun/security/x509/AlgorithmId;->encode(Lsun/security/util/DerOutputStream;)V

    #@a
    .line 161
    iget-object v1, p0, Lsun/security/provider/certpath/CertId;->issuerNameHash:[B

    #@c
    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    #@f
    .line 162
    iget-object v1, p0, Lsun/security/provider/certpath/CertId;->issuerKeyHash:[B

    #@11
    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    #@14
    .line 163
    iget-object v1, p0, Lsun/security/provider/certpath/CertId;->certSerialNumber:Lsun/security/x509/SerialNumber;

    #@16
    invoke-virtual {v1, v0}, Lsun/security/x509/SerialNumber;->encode(Lsun/security/util/DerOutputStream;)V

    #@19
    .line 164
    const/16 v1, 0x30

    #@1b
    invoke-virtual {p1, v1, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    #@1e
    .line 157
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 202
    if-ne p0, p1, :cond_0

    #@4
    .line 203
    return v4

    #@5
    .line 205
    :cond_0
    if-eqz p1, :cond_1

    #@7
    instance-of v1, p1, Lsun/security/provider/certpath/CertId;

    #@9
    if-eqz v1, :cond_1

    #@b
    move-object v0, p1

    #@c
    .line 209
    nop

    #@d
    nop

    #@e
    .line 210
    .local v0, "that":Lsun/security/provider/certpath/CertId;
    iget-object v1, p0, Lsun/security/provider/certpath/CertId;->hashAlgId:Lsun/security/x509/AlgorithmId;

    #@10
    invoke-virtual {v0}, Lsun/security/provider/certpath/CertId;->getHashAlgorithm()Lsun/security/x509/AlgorithmId;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v1, v2}, Lsun/security/x509/AlgorithmId;->equals(Lsun/security/x509/AlgorithmId;)Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_2

    #@1a
    .line 211
    iget-object v1, p0, Lsun/security/provider/certpath/CertId;->issuerNameHash:[B

    #@1c
    invoke-virtual {v0}, Lsun/security/provider/certpath/CertId;->getIssuerNameHash()[B

    #@1f
    move-result-object v2

    #@20
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    #@23
    move-result v1

    #@24
    .line 210
    if-eqz v1, :cond_2

    #@26
    .line 212
    iget-object v1, p0, Lsun/security/provider/certpath/CertId;->issuerKeyHash:[B

    #@28
    invoke-virtual {v0}, Lsun/security/provider/certpath/CertId;->getIssuerKeyHash()[B

    #@2b
    move-result-object v2

    #@2c
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    #@2f
    move-result v1

    #@30
    .line 210
    if-eqz v1, :cond_2

    #@32
    .line 213
    iget-object v1, p0, Lsun/security/provider/certpath/CertId;->certSerialNumber:Lsun/security/x509/SerialNumber;

    #@34
    invoke-virtual {v1}, Lsun/security/x509/SerialNumber;->getNumber()Ljava/math/BigInteger;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v0}, Lsun/security/provider/certpath/CertId;->getSerialNumber()Ljava/math/BigInteger;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@3f
    move-result v1

    #@40
    .line 210
    if-eqz v1, :cond_2

    #@42
    .line 214
    return v4

    #@43
    .line 206
    .end local v0    # "that":Lsun/security/provider/certpath/CertId;
    :cond_1
    return v3

    #@44
    .line 216
    .restart local v0    # "that":Lsun/security/provider/certpath/CertId;
    :cond_2
    return v3
.end method

.method public getHashAlgorithm()Lsun/security/x509/AlgorithmId;
    .locals 1

    #@0
    .prologue
    .line 129
    iget-object v0, p0, Lsun/security/provider/certpath/CertId;->hashAlgId:Lsun/security/x509/AlgorithmId;

    #@2
    return-object v0
.end method

.method public getIssuerKeyHash()[B
    .locals 1

    #@0
    .prologue
    .line 143
    iget-object v0, p0, Lsun/security/provider/certpath/CertId;->issuerKeyHash:[B

    #@2
    return-object v0
.end method

.method public getIssuerNameHash()[B
    .locals 1

    #@0
    .prologue
    .line 136
    iget-object v0, p0, Lsun/security/provider/certpath/CertId;->issuerNameHash:[B

    #@2
    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 150
    iget-object v0, p0, Lsun/security/provider/certpath/CertId;->certSerialNumber:Lsun/security/x509/SerialNumber;

    #@2
    invoke-virtual {v0}, Lsun/security/x509/SerialNumber;->getNumber()Ljava/math/BigInteger;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 179
    iget v1, p0, Lsun/security/provider/certpath/CertId;->myhash:I

    #@2
    const/4 v2, -0x1

    #@3
    if-ne v1, v2, :cond_2

    #@5
    .line 180
    iget-object v1, p0, Lsun/security/provider/certpath/CertId;->hashAlgId:Lsun/security/x509/AlgorithmId;

    #@7
    invoke-virtual {v1}, Lsun/security/x509/AlgorithmId;->hashCode()I

    #@a
    move-result v1

    #@b
    iput v1, p0, Lsun/security/provider/certpath/CertId;->myhash:I

    #@d
    .line 181
    const/4 v0, 0x0

    #@e
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lsun/security/provider/certpath/CertId;->issuerNameHash:[B

    #@10
    array-length v1, v1

    #@11
    if-ge v0, v1, :cond_0

    #@13
    .line 182
    iget v1, p0, Lsun/security/provider/certpath/CertId;->myhash:I

    #@15
    iget-object v2, p0, Lsun/security/provider/certpath/CertId;->issuerNameHash:[B

    #@17
    aget-byte v2, v2, v0

    #@19
    mul-int/2addr v2, v0

    #@1a
    add-int/2addr v1, v2

    #@1b
    iput v1, p0, Lsun/security/provider/certpath/CertId;->myhash:I

    #@1d
    .line 181
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 184
    :cond_0
    const/4 v0, 0x0

    #@21
    :goto_1
    iget-object v1, p0, Lsun/security/provider/certpath/CertId;->issuerKeyHash:[B

    #@23
    array-length v1, v1

    #@24
    if-ge v0, v1, :cond_1

    #@26
    .line 185
    iget v1, p0, Lsun/security/provider/certpath/CertId;->myhash:I

    #@28
    iget-object v2, p0, Lsun/security/provider/certpath/CertId;->issuerKeyHash:[B

    #@2a
    aget-byte v2, v2, v0

    #@2c
    mul-int/2addr v2, v0

    #@2d
    add-int/2addr v1, v2

    #@2e
    iput v1, p0, Lsun/security/provider/certpath/CertId;->myhash:I

    #@30
    .line 184
    add-int/lit8 v0, v0, 0x1

    #@32
    goto :goto_1

    #@33
    .line 187
    :cond_1
    iget v1, p0, Lsun/security/provider/certpath/CertId;->myhash:I

    #@35
    iget-object v2, p0, Lsun/security/provider/certpath/CertId;->certSerialNumber:Lsun/security/x509/SerialNumber;

    #@37
    invoke-virtual {v2}, Lsun/security/x509/SerialNumber;->getNumber()Ljava/math/BigInteger;

    #@3a
    move-result-object v2

    #@3b
    invoke-virtual {v2}, Ljava/math/BigInteger;->hashCode()I

    #@3e
    move-result v2

    #@3f
    add-int/2addr v1, v2

    #@40
    iput v1, p0, Lsun/security/provider/certpath/CertId;->myhash:I

    #@42
    .line 189
    .end local v0    # "i":I
    :cond_2
    iget v1, p0, Lsun/security/provider/certpath/CertId;->myhash:I

    #@44
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 225
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "CertId \n"

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 226
    const-string/jumbo v2, "Algorithm: "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    iget-object v3, p0, Lsun/security/provider/certpath/CertId;->hashAlgId:Lsun/security/x509/AlgorithmId;

    #@14
    invoke-virtual {v3}, Lsun/security/x509/AlgorithmId;->toString()Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    const-string/jumbo v3, "\n"

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    .line 227
    const-string/jumbo v2, "issuerNameHash \n"

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    .line 228
    new-instance v0, Lsun/misc/HexDumpEncoder;

    #@2a
    invoke-direct {v0}, Lsun/misc/HexDumpEncoder;-><init>()V

    #@2d
    .line 229
    .local v0, "encoder":Lsun/misc/HexDumpEncoder;
    iget-object v2, p0, Lsun/security/provider/certpath/CertId;->issuerNameHash:[B

    #@2f
    invoke-virtual {v0, v2}, Lsun/misc/CharacterEncoder;->encode([B)Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    .line 230
    const-string/jumbo v2, "\nissuerKeyHash: \n"

    #@39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    .line 231
    iget-object v2, p0, Lsun/security/provider/certpath/CertId;->issuerKeyHash:[B

    #@3e
    invoke-virtual {v0, v2}, Lsun/misc/CharacterEncoder;->encode([B)Ljava/lang/String;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    .line 232
    const-string/jumbo v2, "\n"

    #@48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v2

    #@4c
    iget-object v3, p0, Lsun/security/provider/certpath/CertId;->certSerialNumber:Lsun/security/x509/SerialNumber;

    #@4e
    invoke-virtual {v3}, Lsun/security/x509/SerialNumber;->toString()Ljava/lang/String;

    #@51
    move-result-object v3

    #@52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    .line 233
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v2

    #@59
    return-object v2
.end method
