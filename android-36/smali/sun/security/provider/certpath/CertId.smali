.class public Lsun/security/provider/certpath/CertId;
.super Ljava/lang/Object;
.source "CertId.java"


# static fields
.field private static final blacklist SHA1_ALGID:Lsun/security/x509/AlgorithmId;

.field private static final blacklist debug:Z = false


# instance fields
.field private final blacklist certSerialNumber:Lsun/security/x509/SerialNumber;

.field private final blacklist hashAlgId:Lsun/security/x509/AlgorithmId;

.field private final blacklist issuerKeyHash:[B

.field private final blacklist issuerNameHash:[B

.field private blacklist myhash:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 61
    new-instance v0, Lsun/security/x509/AlgorithmId;

    sget-object v1, Lsun/security/x509/AlgorithmId;->SHA_oid:Lsun/security/util/ObjectIdentifier;

    invoke-direct {v0, v1}, Lsun/security/x509/AlgorithmId;-><init>(Lsun/security/util/ObjectIdentifier;)V

    sput-object v0, Lsun/security/provider/certpath/CertId;->SHA1_ALGID:Lsun/security/x509/AlgorithmId;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/security/cert/X509Certificate;Lsun/security/x509/SerialNumber;)V
    .registers 5
    .param p1, "issuerCert"    # Ljava/security/cert/X509Certificate;
    .param p2, "serialNumber"    # Lsun/security/x509/SerialNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 76
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    .line 75
    invoke-direct {p0, v0, v1, p2}, Lsun/security/provider/certpath/CertId;-><init>(Ljavax/security/auth/x500/X500Principal;Ljava/security/PublicKey;Lsun/security/x509/SerialNumber;)V

    .line 77
    return-void
.end method

.method public constructor blacklist <init>(Ljavax/security/auth/x500/X500Principal;Ljava/security/PublicKey;Lsun/security/x509/SerialNumber;)V
    .registers 10
    .param p1, "issuerName"    # Ljavax/security/auth/x500/X500Principal;
    .param p2, "issuerKey"    # Ljava/security/PublicKey;
    .param p3, "serialNumber"    # Lsun/security/x509/SerialNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lsun/security/provider/certpath/CertId;->myhash:I

    .line 83
    const/4 v0, 0x0

    .line 85
    .local v0, "md":Ljava/security/MessageDigest;
    :try_start_7
    const-string v1, "SHA1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1
    :try_end_d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_d} :catch_4f

    .line 88
    .end local v0    # "md":Ljava/security/MessageDigest;
    .local v1, "md":Ljava/security/MessageDigest;
    nop

    .line 89
    sget-object v0, Lsun/security/provider/certpath/CertId;->SHA1_ALGID:Lsun/security/x509/AlgorithmId;

    iput-object v0, p0, Lsun/security/provider/certpath/CertId;->hashAlgId:Lsun/security/x509/AlgorithmId;

    .line 90
    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 91
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/CertId;->issuerNameHash:[B

    .line 94
    invoke-interface {p2}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    .line 95
    .local v0, "pubKey":[B
    new-instance v2, Lsun/security/util/DerValue;

    invoke-direct {v2, v0}, Lsun/security/util/DerValue;-><init>([B)V

    .line 96
    .local v2, "val":Lsun/security/util/DerValue;
    const/4 v3, 0x2

    new-array v3, v3, [Lsun/security/util/DerValue;

    .line 97
    .local v3, "seq":[Lsun/security/util/DerValue;
    iget-object v4, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 98
    iget-object v4, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 99
    aget-object v4, v3, v5

    invoke-virtual {v4}, Lsun/security/util/DerValue;->getBitString()[B

    move-result-object v4

    .line 100
    .local v4, "keyBytes":[B
    invoke-virtual {v1, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 101
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    iput-object v5, p0, Lsun/security/provider/certpath/CertId;->issuerKeyHash:[B

    .line 102
    iput-object p3, p0, Lsun/security/provider/certpath/CertId;->certSerialNumber:Lsun/security/x509/SerialNumber;

    .line 113
    return-void

    .line 86
    .end local v1    # "md":Ljava/security/MessageDigest;
    .end local v2    # "val":Lsun/security/util/DerValue;
    .end local v3    # "seq":[Lsun/security/util/DerValue;
    .end local v4    # "keyBytes":[B
    .local v0, "md":Ljava/security/MessageDigest;
    :catch_4f
    move-exception v1

    .line 87
    .local v1, "nsae":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unable to create CertId"

    invoke-direct {v2, v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public constructor blacklist <init>(Lsun/security/util/DerInputStream;)V
    .registers 3
    .param p1, "derIn"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lsun/security/provider/certpath/CertId;->myhash:I

    .line 119
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    invoke-static {v0}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/CertId;->hashAlgId:Lsun/security/x509/AlgorithmId;

    .line 120
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getOctetString()[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/CertId;->issuerNameHash:[B

    .line 121
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getOctetString()[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/CertId;->issuerKeyHash:[B

    .line 122
    new-instance v0, Lsun/security/x509/SerialNumber;

    invoke-direct {v0, p1}, Lsun/security/x509/SerialNumber;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v0, p0, Lsun/security/provider/certpath/CertId;->certSerialNumber:Lsun/security/x509/SerialNumber;

    .line 123
    return-void
.end method


# virtual methods
.method public blacklist encode(Lsun/security/util/DerOutputStream;)V
    .registers 4
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 160
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/provider/certpath/CertId;->hashAlgId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v1, v0}, Lsun/security/x509/AlgorithmId;->encode(Lsun/security/util/DerOutputStream;)V

    .line 161
    iget-object v1, p0, Lsun/security/provider/certpath/CertId;->issuerNameHash:[B

    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    .line 162
    iget-object v1, p0, Lsun/security/provider/certpath/CertId;->issuerKeyHash:[B

    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    .line 163
    iget-object v1, p0, Lsun/security/provider/certpath/CertId;->certSerialNumber:Lsun/security/x509/SerialNumber;

    invoke-virtual {v1, v0}, Lsun/security/x509/SerialNumber;->encode(Lsun/security/util/DerOutputStream;)V

    .line 164
    const/16 v1, 0x30

    invoke-virtual {p1, v1, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 171
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 202
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 203
    return v0

    .line 205
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_45

    instance-of v2, p1, Lsun/security/provider/certpath/CertId;

    if-nez v2, :cond_c

    goto :goto_45

    .line 209
    :cond_c
    move-object v2, p1

    check-cast v2, Lsun/security/provider/certpath/CertId;

    .line 210
    .local v2, "that":Lsun/security/provider/certpath/CertId;
    iget-object v3, p0, Lsun/security/provider/certpath/CertId;->hashAlgId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v2}, Lsun/security/provider/certpath/CertId;->getHashAlgorithm()Lsun/security/x509/AlgorithmId;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/security/x509/AlgorithmId;->equals(Lsun/security/x509/AlgorithmId;)Z

    move-result v3

    if-eqz v3, :cond_44

    iget-object v3, p0, Lsun/security/provider/certpath/CertId;->issuerNameHash:[B

    .line 211
    invoke-virtual {v2}, Lsun/security/provider/certpath/CertId;->getIssuerNameHash()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_44

    iget-object v3, p0, Lsun/security/provider/certpath/CertId;->issuerKeyHash:[B

    .line 212
    invoke-virtual {v2}, Lsun/security/provider/certpath/CertId;->getIssuerKeyHash()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_44

    iget-object v3, p0, Lsun/security/provider/certpath/CertId;->certSerialNumber:Lsun/security/x509/SerialNumber;

    .line 213
    invoke-virtual {v3}, Lsun/security/x509/SerialNumber;->getNumber()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2}, Lsun/security/provider/certpath/CertId;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 214
    return v0

    .line 216
    :cond_44
    return v1

    .line 206
    .end local v2    # "that":Lsun/security/provider/certpath/CertId;
    :cond_45
    :goto_45
    return v1
.end method

.method public blacklist getHashAlgorithm()Lsun/security/x509/AlgorithmId;
    .registers 2

    .line 129
    iget-object v0, p0, Lsun/security/provider/certpath/CertId;->hashAlgId:Lsun/security/x509/AlgorithmId;

    return-object v0
.end method

.method public blacklist getIssuerKeyHash()[B
    .registers 2

    .line 143
    iget-object v0, p0, Lsun/security/provider/certpath/CertId;->issuerKeyHash:[B

    return-object v0
.end method

.method public blacklist getIssuerNameHash()[B
    .registers 2

    .line 136
    iget-object v0, p0, Lsun/security/provider/certpath/CertId;->issuerNameHash:[B

    return-object v0
.end method

.method public blacklist getSerialNumber()Ljava/math/BigInteger;
    .registers 2

    .line 150
    iget-object v0, p0, Lsun/security/provider/certpath/CertId;->certSerialNumber:Lsun/security/x509/SerialNumber;

    invoke-virtual {v0}, Lsun/security/x509/SerialNumber;->getNumber()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 179
    iget v0, p0, Lsun/security/provider/certpath/CertId;->myhash:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_42

    .line 180
    iget-object v0, p0, Lsun/security/provider/certpath/CertId;->hashAlgId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v0}, Lsun/security/x509/AlgorithmId;->hashCode()I

    move-result v0

    iput v0, p0, Lsun/security/provider/certpath/CertId;->myhash:I

    .line 181
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    iget-object v1, p0, Lsun/security/provider/certpath/CertId;->issuerNameHash:[B

    array-length v1, v1

    if-ge v0, v1, :cond_20

    .line 182
    iget v1, p0, Lsun/security/provider/certpath/CertId;->myhash:I

    iget-object v2, p0, Lsun/security/provider/certpath/CertId;->issuerNameHash:[B

    aget-byte v2, v2, v0

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Lsun/security/provider/certpath/CertId;->myhash:I

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 184
    .end local v0    # "i":I
    :cond_20
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_21
    iget-object v1, p0, Lsun/security/provider/certpath/CertId;->issuerKeyHash:[B

    array-length v1, v1

    if-ge v0, v1, :cond_33

    .line 185
    iget v1, p0, Lsun/security/provider/certpath/CertId;->myhash:I

    iget-object v2, p0, Lsun/security/provider/certpath/CertId;->issuerKeyHash:[B

    aget-byte v2, v2, v0

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Lsun/security/provider/certpath/CertId;->myhash:I

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 187
    .end local v0    # "i":I
    :cond_33
    iget v0, p0, Lsun/security/provider/certpath/CertId;->myhash:I

    iget-object v1, p0, Lsun/security/provider/certpath/CertId;->certSerialNumber:Lsun/security/x509/SerialNumber;

    invoke-virtual {v1}, Lsun/security/x509/SerialNumber;->getNumber()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lsun/security/provider/certpath/CertId;->myhash:I

    .line 189
    :cond_42
    iget v0, p0, Lsun/security/provider/certpath/CertId;->myhash:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "CertId \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/provider/certpath/CertId;->hashAlgId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v2}, Lsun/security/x509/AlgorithmId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    const-string v1, "issuerNameHash \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    new-instance v1, Lsun/misc/HexDumpEncoder;

    invoke-direct {v1}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 229
    .local v1, "encoder":Lsun/misc/HexDumpEncoder;
    iget-object v3, p0, Lsun/security/provider/certpath/CertId;->issuerNameHash:[B

    invoke-virtual {v1, v3}, Lsun/misc/HexDumpEncoder;->encode([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    const-string v3, "\nissuerKeyHash: \n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    iget-object v3, p0, Lsun/security/provider/certpath/CertId;->issuerKeyHash:[B

    invoke-virtual {v1, v3}, Lsun/misc/HexDumpEncoder;->encode([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/provider/certpath/CertId;->certSerialNumber:Lsun/security/x509/SerialNumber;

    invoke-virtual {v3}, Lsun/security/x509/SerialNumber;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
