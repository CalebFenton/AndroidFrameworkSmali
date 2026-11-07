.class public Lsun/security/pkcs/SignerInfo;
.super Ljava/lang/Object;
.source "SignerInfo.java"

# interfaces
.implements Lsun/security/util/DerEncoder;


# static fields
.field private static final greylist-max-o DIGEST_PRIMITIVE_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/CryptoPrimitive;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o JAR_DISABLED_CHECK:Lsun/security/util/DisabledAlgorithmConstraints;

.field private static final greylist-max-o SIG_PRIMITIVE_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/CryptoPrimitive;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field greylist-max-o authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

.field greylist-max-o certificateSerialNumber:Ljava/math/BigInteger;

.field greylist-max-o digestAlgorithmId:Lsun/security/x509/AlgorithmId;

.field greylist-max-o digestEncryptionAlgorithmId:Lsun/security/x509/AlgorithmId;

.field greylist-max-o encryptedDigest:[B

.field private greylist-max-o hasTimestamp:Z

.field greylist-max-o issuerName:Lsun/security/x509/X500Name;

.field greylist-max-o timestamp:Ljava/security/Timestamp;

.field greylist-max-o unauthenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

.field greylist-max-o version:Ljava/math/BigInteger;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 75
    sget-object v0, Ljava/security/CryptoPrimitive;->MESSAGE_DIGEST:Ljava/security/CryptoPrimitive;

    .line 76
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lsun/security/pkcs/SignerInfo;->DIGEST_PRIMITIVE_SET:Ljava/util/Set;

    .line 78
    sget-object v0, Ljava/security/CryptoPrimitive;->SIGNATURE:Ljava/security/CryptoPrimitive;

    .line 79
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lsun/security/pkcs/SignerInfo;->SIG_PRIMITIVE_SET:Ljava/util/Set;

    .line 81
    new-instance v0, Lsun/security/util/DisabledAlgorithmConstraints;

    const-string v1, "jdk.jar.disabledAlgorithms"

    invoke-direct {v0, v1}, Lsun/security/util/DisabledAlgorithmConstraints;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsun/security/pkcs/SignerInfo;->JAR_DISABLED_CHECK:Lsun/security/util/DisabledAlgorithmConstraints;

    return-void
.end method

.method public constructor blacklist test-api <init>()V
    .registers 2

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/pkcs/SignerInfo;->hasTimestamp:Z

    .line 100
    return-void
.end method

.method public constructor blacklist <init>(Lsun/security/util/DerInputStream;)V
    .registers 3
    .param p1, "derin"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lsun/security/pkcs/ParsingException;
        }
    .end annotation

    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsun/security/pkcs/SignerInfo;-><init>(Lsun/security/util/DerInputStream;Z)V

    .line 139
    return-void
.end method

.method public constructor blacklist <init>(Lsun/security/util/DerInputStream;Z)V
    .registers 10
    .param p1, "derin"    # Lsun/security/util/DerInputStream;
    .param p2, "oldStyle"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lsun/security/pkcs/ParsingException;
        }
    .end annotation

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/pkcs/SignerInfo;->hasTimestamp:Z

    .line 155
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lsun/security/pkcs/SignerInfo;->version:Ljava/math/BigInteger;

    .line 158
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v1

    .line 159
    .local v1, "issuerAndSerialNumber":[Lsun/security/util/DerValue;
    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v3

    .line 160
    .local v3, "issuerBytes":[B
    new-instance v4, Lsun/security/x509/X500Name;

    new-instance v5, Lsun/security/util/DerValue;

    const/16 v6, 0x30

    invoke-direct {v5, v6, v3}, Lsun/security/util/DerValue;-><init>(B[B)V

    invoke-direct {v4, v5}, Lsun/security/x509/X500Name;-><init>(Lsun/security/util/DerValue;)V

    iput-object v4, p0, Lsun/security/pkcs/SignerInfo;->issuerName:Lsun/security/x509/X500Name;

    .line 162
    aget-object v4, v1, v0

    invoke-virtual {v4}, Lsun/security/util/DerValue;->getBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    iput-object v4, p0, Lsun/security/pkcs/SignerInfo;->certificateSerialNumber:Ljava/math/BigInteger;

    .line 165
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v4

    .line 167
    .local v4, "tmp":Lsun/security/util/DerValue;
    invoke-static {v4}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v5

    iput-object v5, p0, Lsun/security/pkcs/SignerInfo;->digestAlgorithmId:Lsun/security/x509/AlgorithmId;

    .line 170
    if-eqz p2, :cond_3e

    .line 173
    invoke-virtual {p1, v2}, Lsun/security/util/DerInputStream;->getSet(I)[Lsun/security/util/DerValue;

    goto :goto_4e

    .line 177
    :cond_3e
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->peekByte()I

    move-result v5

    int-to-byte v5, v5

    const/16 v6, -0x60

    if-ne v5, v6, :cond_4e

    .line 178
    new-instance v5, Lsun/security/pkcs/PKCS9Attributes;

    invoke-direct {v5, p1}, Lsun/security/pkcs/PKCS9Attributes;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v5, p0, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    .line 184
    :cond_4e
    :goto_4e
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v4

    .line 186
    invoke-static {v4}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v5

    iput-object v5, p0, Lsun/security/pkcs/SignerInfo;->digestEncryptionAlgorithmId:Lsun/security/x509/AlgorithmId;

    .line 189
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getOctetString()[B

    move-result-object v5

    iput-object v5, p0, Lsun/security/pkcs/SignerInfo;->encryptedDigest:[B

    .line 192
    if-eqz p2, :cond_64

    .line 195
    invoke-virtual {p1, v2}, Lsun/security/util/DerInputStream;->getSet(I)[Lsun/security/util/DerValue;

    goto :goto_7a

    .line 199
    :cond_64
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-eqz v2, :cond_7a

    .line 200
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->peekByte()I

    move-result v2

    int-to-byte v2, v2

    const/16 v5, -0x5f

    if-ne v2, v5, :cond_7a

    .line 201
    new-instance v2, Lsun/security/pkcs/PKCS9Attributes;

    invoke-direct {v2, p1, v0}, Lsun/security/pkcs/PKCS9Attributes;-><init>(Lsun/security/util/DerInputStream;Z)V

    iput-object v2, p0, Lsun/security/pkcs/SignerInfo;->unauthenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    .line 207
    :cond_7a
    :goto_7a
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->available()I

    move-result v0

    if-nez v0, :cond_81

    .line 210
    return-void

    .line 208
    :cond_81
    new-instance v0, Lsun/security/pkcs/ParsingException;

    const-string v2, "extra data at the end"

    invoke-direct {v0, v2}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor greylist <init>(Lsun/security/x509/X500Name;Ljava/math/BigInteger;Lsun/security/x509/AlgorithmId;Lsun/security/pkcs/PKCS9Attributes;Lsun/security/x509/AlgorithmId;[BLsun/security/pkcs/PKCS9Attributes;)V
    .registers 9
    .param p1, "issuerName"    # Lsun/security/x509/X500Name;
    .param p2, "serial"    # Ljava/math/BigInteger;
    .param p3, "digestAlgorithmId"    # Lsun/security/x509/AlgorithmId;
    .param p4, "authenticatedAttributes"    # Lsun/security/pkcs/PKCS9Attributes;
    .param p5, "digestEncryptionAlgorithmId"    # Lsun/security/x509/AlgorithmId;
    .param p6, "encryptedDigest"    # [B
    .param p7, "unauthenticatedAttributes"    # Lsun/security/pkcs/PKCS9Attributes;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/pkcs/SignerInfo;->hasTimestamp:Z

    .line 122
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iput-object v0, p0, Lsun/security/pkcs/SignerInfo;->version:Ljava/math/BigInteger;

    .line 123
    iput-object p1, p0, Lsun/security/pkcs/SignerInfo;->issuerName:Lsun/security/x509/X500Name;

    .line 124
    iput-object p2, p0, Lsun/security/pkcs/SignerInfo;->certificateSerialNumber:Ljava/math/BigInteger;

    .line 125
    iput-object p3, p0, Lsun/security/pkcs/SignerInfo;->digestAlgorithmId:Lsun/security/x509/AlgorithmId;

    .line 126
    iput-object p4, p0, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    .line 127
    iput-object p5, p0, Lsun/security/pkcs/SignerInfo;->digestEncryptionAlgorithmId:Lsun/security/x509/AlgorithmId;

    .line 128
    iput-object p6, p0, Lsun/security/pkcs/SignerInfo;->encryptedDigest:[B

    .line 129
    iput-object p7, p0, Lsun/security/pkcs/SignerInfo;->unauthenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    .line 130
    return-void
.end method

.method public constructor greylist <init>(Lsun/security/x509/X500Name;Ljava/math/BigInteger;Lsun/security/x509/AlgorithmId;Lsun/security/x509/AlgorithmId;[B)V
    .registers 7
    .param p1, "issuerName"    # Lsun/security/x509/X500Name;
    .param p2, "serial"    # Ljava/math/BigInteger;
    .param p3, "digestAlgorithmId"    # Lsun/security/x509/AlgorithmId;
    .param p4, "digestEncryptionAlgorithmId"    # Lsun/security/x509/AlgorithmId;
    .param p5, "encryptedDigest"    # [B

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/pkcs/SignerInfo;->hasTimestamp:Z

    .line 107
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iput-object v0, p0, Lsun/security/pkcs/SignerInfo;->version:Ljava/math/BigInteger;

    .line 108
    iput-object p1, p0, Lsun/security/pkcs/SignerInfo;->issuerName:Lsun/security/x509/X500Name;

    .line 109
    iput-object p2, p0, Lsun/security/pkcs/SignerInfo;->certificateSerialNumber:Ljava/math/BigInteger;

    .line 110
    iput-object p3, p0, Lsun/security/pkcs/SignerInfo;->digestAlgorithmId:Lsun/security/x509/AlgorithmId;

    .line 111
    iput-object p4, p0, Lsun/security/pkcs/SignerInfo;->digestEncryptionAlgorithmId:Lsun/security/x509/AlgorithmId;

    .line 112
    iput-object p5, p0, Lsun/security/pkcs/SignerInfo;->encryptedDigest:[B

    .line 113
    return-void
.end method

.method private greylist-max-o verifyTimestamp(Lsun/security/timestamp/TimestampToken;)V
    .registers 7
    .param p1, "token"    # Lsun/security/timestamp/TimestampToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 629
    invoke-virtual {p1}, Lsun/security/timestamp/TimestampToken;->getHashAlgorithm()Lsun/security/x509/AlgorithmId;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v0

    .line 631
    .local v0, "digestAlgname":Ljava/lang/String;
    sget-object v1, Lsun/security/pkcs/SignerInfo;->JAR_DISABLED_CHECK:Lsun/security/util/DisabledAlgorithmConstraints;

    sget-object v2, Lsun/security/pkcs/SignerInfo;->DIGEST_PRIMITIVE_SET:Ljava/util/Set;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lsun/security/util/DisabledAlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 637
    nop

    .line 638
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 640
    .local v1, "md":Ljava/security/MessageDigest;
    invoke-virtual {p1}, Lsun/security/timestamp/TimestampToken;->getHashedMessage()[B

    move-result-object v2

    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->encryptedDigest:[B

    .line 641
    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 640
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 658
    return-void

    .line 643
    :cond_29
    new-instance v2, Ljava/security/SignatureException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Signature timestamp (#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 644
    invoke-virtual {p1}, Lsun/security/timestamp/TimestampToken;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") generated on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lsun/security/timestamp/TimestampToken;->getDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is inapplicable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 633
    .end local v1    # "md":Ljava/security/MessageDigest;
    :cond_5a
    new-instance v1, Ljava/security/SignatureException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timestamp token digest check failed. Disabled algorithm used: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public blacklist derEncode(Ljava/io/OutputStream;)V
    .registers 7
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 228
    .local v0, "seq":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/pkcs/SignerInfo;->version:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putInteger(Ljava/math/BigInteger;)V

    .line 229
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 230
    .local v1, "issuerAndSerialNumber":Lsun/security/util/DerOutputStream;
    iget-object v2, p0, Lsun/security/pkcs/SignerInfo;->issuerName:Lsun/security/x509/X500Name;

    invoke-virtual {v2, v1}, Lsun/security/x509/X500Name;->encode(Lsun/security/util/DerOutputStream;)V

    .line 231
    iget-object v2, p0, Lsun/security/pkcs/SignerInfo;->certificateSerialNumber:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Lsun/security/util/DerOutputStream;->putInteger(Ljava/math/BigInteger;)V

    .line 232
    const/16 v2, 0x30

    invoke-virtual {v0, v2, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 234
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->digestAlgorithmId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v3, v0}, Lsun/security/x509/AlgorithmId;->encode(Lsun/security/util/DerOutputStream;)V

    .line 237
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    if-eqz v3, :cond_2e

    .line 238
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    const/16 v4, -0x60

    invoke-virtual {v3, v4, v0}, Lsun/security/pkcs/PKCS9Attributes;->encode(BLjava/io/OutputStream;)V

    .line 240
    :cond_2e
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->digestEncryptionAlgorithmId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v3, v0}, Lsun/security/x509/AlgorithmId;->encode(Lsun/security/util/DerOutputStream;)V

    .line 242
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->encryptedDigest:[B

    invoke-virtual {v0, v3}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    .line 245
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->unauthenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    if-eqz v3, :cond_43

    .line 246
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->unauthenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    const/16 v4, -0x5f

    invoke-virtual {v3, v4, v0}, Lsun/security/pkcs/PKCS9Attributes;->encode(BLjava/io/OutputStream;)V

    .line 248
    :cond_43
    new-instance v3, Lsun/security/util/DerOutputStream;

    invoke-direct {v3}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 249
    .local v3, "tmp":Lsun/security/util/DerOutputStream;
    invoke-virtual {v3, v2, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 251
    invoke-virtual {v3}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 252
    return-void
.end method

.method public blacklist encode(Lsun/security/util/DerOutputStream;)V
    .registers 2
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    invoke-virtual {p0, p1}, Lsun/security/pkcs/SignerInfo;->derEncode(Ljava/io/OutputStream;)V

    .line 215
    return-void
.end method

.method public blacklist getAuthenticatedAttributes()Lsun/security/pkcs/PKCS9Attributes;
    .registers 2

    .line 539
    iget-object v0, p0, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    return-object v0
.end method

.method public greylist getCertificate(Lsun/security/pkcs/PKCS7;)Ljava/security/cert/X509Certificate;
    .registers 4
    .param p1, "block"    # Lsun/security/pkcs/PKCS7;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lsun/security/pkcs/SignerInfo;->certificateSerialNumber:Ljava/math/BigInteger;

    iget-object v1, p0, Lsun/security/pkcs/SignerInfo;->issuerName:Lsun/security/x509/X500Name;

    invoke-virtual {p1, v0, v1}, Lsun/security/pkcs/PKCS7;->getCertificate(Ljava/math/BigInteger;Lsun/security/x509/X500Name;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public greylist test-api getCertificateChain(Lsun/security/pkcs/PKCS7;)Ljava/util/ArrayList;
    .registers 11
    .param p1, "block"    # Lsun/security/pkcs/PKCS7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/pkcs/PKCS7;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lsun/security/pkcs/SignerInfo;->certificateSerialNumber:Ljava/math/BigInteger;

    iget-object v1, p0, Lsun/security/pkcs/SignerInfo;->issuerName:Lsun/security/x509/X500Name;

    invoke-virtual {p1, v0, v1}, Lsun/security/pkcs/PKCS7;->getCertificate(Ljava/math/BigInteger;Lsun/security/x509/X500Name;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 279
    .local v0, "userCert":Ljava/security/cert/X509Certificate;
    if-nez v0, :cond_c

    .line 280
    const/4 v1, 0x0

    return-object v1

    .line 282
    :cond_c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .local v1, "certList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/X509Certificate;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    invoke-virtual {p1}, Lsun/security/pkcs/PKCS7;->getCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 286
    .local v2, "pkcsCerts":[Ljava/security/cert/X509Certificate;
    if-eqz v2, :cond_72

    .line 287
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    goto :goto_72

    .line 291
    :cond_29
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v3

    .line 292
    .local v3, "issuer":Ljava/security/Principal;
    const/4 v4, 0x0

    .line 294
    .local v4, "start":I
    :goto_2e
    const/4 v5, 0x0

    .line 295
    .local v5, "match":Z
    move v6, v4

    .line 296
    .local v6, "i":I
    :goto_30
    array-length v7, v2

    if-ge v6, v7, :cond_6d

    .line 297
    aget-object v7, v2, v6

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6a

    .line 299
    aget-object v7, v2, v6

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    aget-object v7, v2, v6

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v7

    aget-object v8, v2, v6

    .line 303
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v8

    .line 302
    invoke-interface {v7, v8}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_58

    .line 304
    array-length v4, v2

    goto :goto_68

    .line 306
    :cond_58
    aget-object v7, v2, v6

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v3

    .line 307
    aget-object v7, v2, v4

    .line 308
    .local v7, "tmpCert":Ljava/security/cert/X509Certificate;
    aget-object v8, v2, v6

    aput-object v8, v2, v4

    .line 309
    aput-object v7, v2, v6

    .line 310
    add-int/lit8 v4, v4, 0x1

    .line 312
    .end local v7    # "tmpCert":Ljava/security/cert/X509Certificate;
    :goto_68
    const/4 v5, 0x1

    .line 313
    goto :goto_6d

    .line 315
    :cond_6a
    add-int/lit8 v6, v6, 0x1

    goto :goto_30

    .line 318
    :cond_6d
    :goto_6d
    if-nez v5, :cond_71

    .line 319
    nop

    .line 322
    .end local v5    # "match":Z
    .end local v6    # "i":I
    return-object v1

    .line 320
    :cond_71
    goto :goto_2e

    .line 288
    .end local v3    # "issuer":Ljava/security/Principal;
    .end local v4    # "start":I
    :cond_72
    :goto_72
    return-object v1
.end method

.method public blacklist getCertificateSerialNumber()Ljava/math/BigInteger;
    .registers 2

    .line 531
    iget-object v0, p0, Lsun/security/pkcs/SignerInfo;->certificateSerialNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method public greylist getDigestAlgorithmId()Lsun/security/x509/AlgorithmId;
    .registers 2

    .line 535
    iget-object v0, p0, Lsun/security/pkcs/SignerInfo;->digestAlgorithmId:Lsun/security/x509/AlgorithmId;

    return-object v0
.end method

.method public greylist getDigestEncryptionAlgorithmId()Lsun/security/x509/AlgorithmId;
    .registers 2

    .line 543
    iget-object v0, p0, Lsun/security/pkcs/SignerInfo;->digestEncryptionAlgorithmId:Lsun/security/x509/AlgorithmId;

    return-object v0
.end method

.method public greylist-max-r getEncryptedDigest()[B
    .registers 2

    .line 547
    iget-object v0, p0, Lsun/security/pkcs/SignerInfo;->encryptedDigest:[B

    return-object v0
.end method

.method public blacklist getIssuerName()Lsun/security/x509/X500Name;
    .registers 2

    .line 527
    iget-object v0, p0, Lsun/security/pkcs/SignerInfo;->issuerName:Lsun/security/x509/X500Name;

    return-object v0
.end method

.method public blacklist getTimestamp()Ljava/security/Timestamp;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 595
    iget-object v0, p0, Lsun/security/pkcs/SignerInfo;->timestamp:Ljava/security/Timestamp;

    if-nez v0, :cond_46

    iget-boolean v0, p0, Lsun/security/pkcs/SignerInfo;->hasTimestamp:Z

    if-nez v0, :cond_9

    goto :goto_46

    .line 598
    :cond_9
    invoke-virtual {p0}, Lsun/security/pkcs/SignerInfo;->getTsToken()Lsun/security/pkcs/PKCS7;

    move-result-object v0

    .line 599
    .local v0, "tsToken":Lsun/security/pkcs/PKCS7;
    const/4 v1, 0x0

    if-nez v0, :cond_14

    .line 600
    iput-boolean v1, p0, Lsun/security/pkcs/SignerInfo;->hasTimestamp:Z

    .line 601
    const/4 v1, 0x0

    return-object v1

    .line 605
    :cond_14
    invoke-virtual {v0}, Lsun/security/pkcs/PKCS7;->getContentInfo()Lsun/security/pkcs/ContentInfo;

    move-result-object v2

    invoke-virtual {v2}, Lsun/security/pkcs/ContentInfo;->getData()[B

    move-result-object v2

    .line 608
    .local v2, "encTsTokenInfo":[B
    invoke-virtual {v0, v2}, Lsun/security/pkcs/PKCS7;->verify([B)[Lsun/security/pkcs/SignerInfo;

    move-result-object v3

    .line 610
    .local v3, "tsa":[Lsun/security/pkcs/SignerInfo;
    aget-object v1, v3, v1

    invoke-virtual {v1, v0}, Lsun/security/pkcs/SignerInfo;->getCertificateChain(Lsun/security/pkcs/PKCS7;)Ljava/util/ArrayList;

    move-result-object v1

    .line 611
    .local v1, "chain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/X509Certificate;>;"
    const-string v4, "X.509"

    invoke-static {v4}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v4

    .line 612
    .local v4, "cf":Ljava/security/cert/CertificateFactory;
    invoke-virtual {v4, v1}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v5

    .line 614
    .local v5, "tsaChain":Ljava/security/cert/CertPath;
    new-instance v6, Lsun/security/timestamp/TimestampToken;

    invoke-direct {v6, v2}, Lsun/security/timestamp/TimestampToken;-><init>([B)V

    .line 616
    .local v6, "tsTokenInfo":Lsun/security/timestamp/TimestampToken;
    invoke-direct {p0, v6}, Lsun/security/pkcs/SignerInfo;->verifyTimestamp(Lsun/security/timestamp/TimestampToken;)V

    .line 618
    new-instance v7, Ljava/security/Timestamp;

    invoke-virtual {v6}, Lsun/security/timestamp/TimestampToken;->getDate()Ljava/util/Date;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Ljava/security/Timestamp;-><init>(Ljava/util/Date;Ljava/security/cert/CertPath;)V

    iput-object v7, p0, Lsun/security/pkcs/SignerInfo;->timestamp:Ljava/security/Timestamp;

    .line 619
    iget-object v7, p0, Lsun/security/pkcs/SignerInfo;->timestamp:Ljava/security/Timestamp;

    return-object v7

    .line 596
    .end local v0    # "tsToken":Lsun/security/pkcs/PKCS7;
    .end local v1    # "chain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/X509Certificate;>;"
    .end local v2    # "encTsTokenInfo":[B
    .end local v3    # "tsa":[Lsun/security/pkcs/SignerInfo;
    .end local v4    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v5    # "tsaChain":Ljava/security/cert/CertPath;
    .end local v6    # "tsTokenInfo":Lsun/security/timestamp/TimestampToken;
    :cond_46
    :goto_46
    iget-object v0, p0, Lsun/security/pkcs/SignerInfo;->timestamp:Ljava/security/Timestamp;

    return-object v0
.end method

.method public blacklist getTsToken()Lsun/security/pkcs/PKCS7;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 559
    iget-object v0, p0, Lsun/security/pkcs/SignerInfo;->unauthenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 560
    return-object v1

    .line 562
    :cond_6
    iget-object v0, p0, Lsun/security/pkcs/SignerInfo;->unauthenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    sget-object v2, Lsun/security/pkcs/PKCS9Attribute;->SIGNATURE_TIMESTAMP_TOKEN_OID:Lsun/security/util/ObjectIdentifier;

    .line 563
    invoke-virtual {v0, v2}, Lsun/security/pkcs/PKCS9Attributes;->getAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/pkcs/PKCS9Attribute;

    move-result-object v0

    .line 565
    .local v0, "tsTokenAttr":Lsun/security/pkcs/PKCS9Attribute;
    if-nez v0, :cond_11

    .line 566
    return-object v1

    .line 568
    :cond_11
    new-instance v1, Lsun/security/pkcs/PKCS7;

    invoke-virtual {v0}, Lsun/security/pkcs/PKCS9Attribute;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-direct {v1, v2}, Lsun/security/pkcs/PKCS7;-><init>([B)V

    return-object v1
.end method

.method public blacklist getUnauthenticatedAttributes()Lsun/security/pkcs/PKCS9Attributes;
    .registers 2

    .line 551
    iget-object v0, p0, Lsun/security/pkcs/SignerInfo;->unauthenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    return-object v0
.end method

.method public blacklist getVersion()Ljava/math/BigInteger;
    .registers 2

    .line 523
    iget-object v0, p0, Lsun/security/pkcs/SignerInfo;->version:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 661
    new-instance v0, Lsun/misc/HexDumpEncoder;

    invoke-direct {v0}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 663
    .local v0, "hexDump":Lsun/misc/HexDumpEncoder;
    const-string v1, ""

    .line 665
    .local v1, "out":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Signer Info for (issuer): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->issuerName:Lsun/security/x509/X500Name;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 666
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\tversion: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lsun/security/pkcs/SignerInfo;->version:Ljava/math/BigInteger;

    invoke-static {v4}, Lsun/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 667
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\tcertificateSerialNumber: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lsun/security/pkcs/SignerInfo;->certificateSerialNumber:Ljava/math/BigInteger;

    .line 668
    invoke-static {v4}, Lsun/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 669
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\tdigestAlgorithmId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lsun/security/pkcs/SignerInfo;->digestAlgorithmId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 670
    iget-object v2, p0, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    if-eqz v2, :cond_a6

    .line 671
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\tauthenticatedAttributes: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 674
    :cond_a6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\tdigestEncryptionAlgorithmId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lsun/security/pkcs/SignerInfo;->digestEncryptionAlgorithmId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 677
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\tencryptedDigest: \n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lsun/security/pkcs/SignerInfo;->encryptedDigest:[B

    .line 678
    invoke-virtual {v0, v4}, Lsun/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 679
    iget-object v2, p0, Lsun/security/pkcs/SignerInfo;->unauthenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    if-eqz v2, :cond_105

    .line 680
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\tunauthenticatedAttributes: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lsun/security/pkcs/SignerInfo;->unauthenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 683
    :cond_105
    return-object v1
.end method

.method greylist-max-o verify(Lsun/security/pkcs/PKCS7;)Lsun/security/pkcs/SignerInfo;
    .registers 4
    .param p1, "block"    # Lsun/security/pkcs/PKCS7;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 518
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [B

    invoke-virtual {p0, p1, v0}, Lsun/security/pkcs/SignerInfo;->verify(Lsun/security/pkcs/PKCS7;[B)Lsun/security/pkcs/SignerInfo;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o verify(Lsun/security/pkcs/PKCS7;Ljava/io/InputStream;)Lsun/security/pkcs/SignerInfo;
    .registers 20
    .param p1, "block"    # Lsun/security/pkcs/PKCS7;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 344
    move-object/from16 v1, p0

    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lsun/security/pkcs/PKCS7;->getContentInfo()Lsun/security/pkcs/ContentInfo;

    move-result-object v0

    move-object v2, v0

    .line 346
    .local v2, "content":Lsun/security/pkcs/ContentInfo;
    if-nez p2, :cond_14

    .line 347
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v2}, Lsun/security/pkcs/ContentInfo;->getContentBytes()[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_12} :catch_1b4
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_12} :catch_194

    move-object v3, v0

    .end local p2    # "inputStream":Ljava/io/InputStream;
    .local v0, "inputStream":Ljava/io/InputStream;
    goto :goto_16

    .line 346
    .end local v0    # "inputStream":Ljava/io/InputStream;
    .restart local p2    # "inputStream":Ljava/io/InputStream;
    :cond_14
    move-object/from16 v3, p2

    .line 351
    .end local p2    # "inputStream":Ljava/io/InputStream;
    .local v3, "inputStream":Ljava/io/InputStream;
    :goto_16
    :try_start_16
    invoke-virtual {v1}, Lsun/security/pkcs/SignerInfo;->getDigestAlgorithmId()Lsun/security/x509/AlgorithmId;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 359
    .local v4, "digestAlgname":Ljava/lang/String;
    iget-object v0, v1, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/16 v7, 0x1000

    const/4 v8, 0x0

    if-nez v0, :cond_2b

    .line 362
    move-object v0, v3

    move-object v5, v0

    .local v0, "dataSigned":Ljava/io/InputStream;
    goto :goto_8f

    .line 366
    .end local v0    # "dataSigned":Ljava/io/InputStream;
    :cond_2b
    iget-object v0, v1, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    sget-object v9, Lsun/security/pkcs/PKCS9Attribute;->CONTENT_TYPE_OID:Lsun/security/util/ObjectIdentifier;

    .line 367
    invoke-virtual {v0, v9}, Lsun/security/pkcs/PKCS9Attributes;->getAttributeValue(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/util/ObjectIdentifier;

    .line 369
    .local v0, "contentType":Lsun/security/util/ObjectIdentifier;
    if-eqz v0, :cond_18d

    iget-object v9, v2, Lsun/security/pkcs/ContentInfo;->contentType:Lsun/security/util/ObjectIdentifier;

    .line 370
    invoke-virtual {v0, v9}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_43

    move-object/from16 v16, v8

    goto/16 :goto_18f

    .line 374
    :cond_43
    iget-object v9, v1, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    sget-object v10, Lsun/security/pkcs/PKCS9Attribute;->MESSAGE_DIGEST_OID:Lsun/security/util/ObjectIdentifier;

    .line 375
    invoke-virtual {v9, v10}, Lsun/security/pkcs/PKCS9Attributes;->getAttributeValue(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    .line 378
    .local v9, "messageDigest":[B
    if-nez v9, :cond_50

    .line 379
    return-object v8

    .line 382
    :cond_50
    sget-object v10, Lsun/security/pkcs/SignerInfo;->JAR_DISABLED_CHECK:Lsun/security/util/DisabledAlgorithmConstraints;

    sget-object v11, Lsun/security/pkcs/SignerInfo;->DIGEST_PRIMITIVE_SET:Ljava/util/Set;

    invoke-virtual {v10, v11, v4, v8}, Lsun/security/util/DisabledAlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v10

    if-eqz v10, :cond_174

    .line 388
    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v10

    .line 391
    .local v10, "md":Ljava/security/MessageDigest;
    new-array v11, v7, [B

    .line 392
    .local v11, "buffer":[B
    const/4 v12, 0x0

    .line 393
    .local v12, "read":I
    :goto_61
    invoke-virtual {v3, v11}, Ljava/io/InputStream;->read([B)I

    move-result v13

    move v12, v13

    if-eq v13, v6, :cond_6c

    .line 394
    invoke-virtual {v10, v11, v5, v12}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_61

    .line 396
    :cond_6c
    invoke-virtual {v10}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v13

    .line 399
    .local v13, "computedMessageDigest":[B
    array-length v14, v9

    array-length v15, v13

    if-eq v14, v15, :cond_75

    .line 400
    return-object v8

    .line 401
    :cond_75
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_76
    array-length v15, v9

    if-ge v14, v15, :cond_84

    .line 402
    aget-byte v15, v9, v14

    aget-byte v5, v13, v14

    if-eq v15, v5, :cond_80

    .line 403
    return-object v8

    .line 401
    :cond_80
    add-int/lit8 v14, v14, 0x1

    const/4 v5, 0x0

    goto :goto_76

    .line 414
    .end local v14    # "i":I
    :cond_84
    new-instance v5, Ljava/io/ByteArrayInputStream;

    iget-object v14, v1, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    invoke-virtual {v14}, Lsun/security/pkcs/PKCS9Attributes;->getDerEncoding()[B

    move-result-object v14

    invoke-direct {v5, v14}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 419
    .end local v0    # "contentType":Lsun/security/util/ObjectIdentifier;
    .end local v9    # "messageDigest":[B
    .end local v10    # "md":Ljava/security/MessageDigest;
    .end local v11    # "buffer":[B
    .end local v12    # "read":I
    .end local v13    # "computedMessageDigest":[B
    .local v5, "dataSigned":Ljava/io/InputStream;
    :goto_8f
    nop

    .line 420
    invoke-virtual {v1}, Lsun/security/pkcs/SignerInfo;->getDigestEncryptionAlgorithmId()Lsun/security/x509/AlgorithmId;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, "encryptionAlgname":Ljava/lang/String;
    invoke-static {v0}, Lsun/security/x509/AlgorithmId;->getEncAlgFromSigAlg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 425
    .local v9, "tmp":Ljava/lang/String;
    if-eqz v9, :cond_9f

    move-object v0, v9

    :cond_9f
    move-object v10, v0

    .line 426
    .end local v0    # "encryptionAlgname":Ljava/lang/String;
    .local v10, "encryptionAlgname":Ljava/lang/String;
    invoke-static {v4, v10}, Lsun/security/x509/AlgorithmId;->makeSigAlg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    .line 430
    .local v11, "algname":Ljava/lang/String;
    sget-object v0, Lsun/security/pkcs/SignerInfo;->JAR_DISABLED_CHECK:Lsun/security/util/DisabledAlgorithmConstraints;

    sget-object v12, Lsun/security/pkcs/SignerInfo;->SIG_PRIMITIVE_SET:Ljava/util/Set;

    invoke-virtual {v0, v12, v11, v8}, Lsun/security/util/DisabledAlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v0

    if-eqz v0, :cond_15b

    .line 435
    invoke-virtual/range {p0 .. p1}, Lsun/security/pkcs/SignerInfo;->getCertificate(Lsun/security/pkcs/PKCS7;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    move-object v12, v0

    .line 438
    .local v12, "cert":Ljava/security/cert/X509Certificate;
    if-nez v12, :cond_b7

    .line 439
    return-object v8

    .line 442
    :cond_b7
    invoke-virtual {v12}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    move-object v13, v0

    .line 445
    .local v13, "key":Ljava/security/PublicKey;
    sget-object v0, Lsun/security/pkcs/SignerInfo;->JAR_DISABLED_CHECK:Lsun/security/util/DisabledAlgorithmConstraints;

    sget-object v14, Lsun/security/pkcs/SignerInfo;->SIG_PRIMITIVE_SET:Ljava/util/Set;

    invoke-virtual {v0, v14, v13}, Lsun/security/util/DisabledAlgorithmConstraints;->permits(Ljava/util/Set;Ljava/security/Key;)Z

    move-result v0

    if-eqz v0, :cond_130

    .line 452
    invoke-virtual {v12}, Ljava/security/cert/X509Certificate;->hasUnsupportedCriticalExtension()Z

    move-result v0

    if-nez v0, :cond_128

    .line 461
    invoke-virtual {v12}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_d0} :catch_192
    .catch Ljava/security/InvalidKeyException; {:try_start_16 .. :try_end_d0} :catch_190

    move-object v14, v0

    .line 462
    .local v14, "keyUsageBits":[Z
    if-eqz v14, :cond_105

    .line 469
    :try_start_d3
    new-instance v0, Lsun/security/x509/KeyUsageExtension;

    invoke-direct {v0, v14}, Lsun/security/x509/KeyUsageExtension;-><init>([Z)V
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_d8} :catch_fc
    .catch Ljava/security/InvalidKeyException; {:try_start_d3 .. :try_end_d8} :catch_190

    .line 473
    .local v0, "keyUsage":Lsun/security/x509/KeyUsageExtension;
    nop

    .line 475
    :try_start_d9
    const-string v15, "digital_signature"

    invoke-virtual {v0, v15}, Lsun/security/x509/KeyUsageExtension;->get(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v15

    .line 476
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    .line 478
    .local v15, "digSigAllowed":Z
    move-object/from16 v16, v8

    const-string v8, "non_repudiation"

    invoke-virtual {v0, v8}, Lsun/security/x509/KeyUsageExtension;->get(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    .line 479
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 481
    .local v8, "nonRepuAllowed":Z
    if-nez v15, :cond_107

    if-eqz v8, :cond_f4

    goto :goto_107

    .line 482
    :cond_f4
    new-instance v6, Ljava/security/SignatureException;

    const-string v7, "Key usage restricted: cannot be used for digital signatures"

    invoke-direct {v6, v7}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local p0    # "this":Lsun/security/pkcs/SignerInfo;
    .end local p1    # "block":Lsun/security/pkcs/PKCS7;
    throw v6

    .line 470
    .end local v0    # "keyUsage":Lsun/security/x509/KeyUsageExtension;
    .end local v8    # "nonRepuAllowed":Z
    .end local v15    # "digSigAllowed":Z
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .restart local p0    # "this":Lsun/security/pkcs/SignerInfo;
    .restart local p1    # "block":Lsun/security/pkcs/PKCS7;
    :catch_fc
    move-exception v0

    .line 471
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v6, Ljava/security/SignatureException;

    const-string v7, "Failed to parse keyUsage extension"

    invoke-direct {v6, v7}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local p0    # "this":Lsun/security/pkcs/SignerInfo;
    .end local p1    # "block":Lsun/security/pkcs/PKCS7;
    throw v6

    .line 462
    .end local v0    # "ioe":Ljava/io/IOException;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .restart local p0    # "this":Lsun/security/pkcs/SignerInfo;
    .restart local p1    # "block":Lsun/security/pkcs/PKCS7;
    :cond_105
    move-object/from16 v16, v8

    .line 488
    :cond_107
    :goto_107
    invoke-static {v11}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 489
    .local v0, "sig":Ljava/security/Signature;
    invoke-virtual {v0, v13}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 492
    new-array v7, v7, [B

    .line 493
    .local v7, "buffer":[B
    const/4 v8, 0x0

    .line 494
    .local v8, "read":I
    :goto_111
    invoke-virtual {v5, v7}, Ljava/io/InputStream;->read([B)I

    move-result v15

    move v8, v15

    if-eq v15, v6, :cond_11d

    .line 495
    const/4 v15, 0x0

    invoke-virtual {v0, v7, v15, v8}, Ljava/security/Signature;->update([BII)V

    goto :goto_111

    .line 498
    :cond_11d
    iget-object v6, v1, Lsun/security/pkcs/SignerInfo;->encryptedDigest:[B

    invoke-virtual {v0, v6}, Ljava/security/Signature;->verify([B)Z

    move-result v6

    if-eqz v6, :cond_126

    .line 499
    return-object v1

    .line 509
    .end local v0    # "sig":Ljava/security/Signature;
    .end local v2    # "content":Lsun/security/pkcs/ContentInfo;
    .end local v4    # "digestAlgname":Ljava/lang/String;
    .end local v5    # "dataSigned":Ljava/io/InputStream;
    .end local v7    # "buffer":[B
    .end local v8    # "read":I
    .end local v9    # "tmp":Ljava/lang/String;
    .end local v10    # "encryptionAlgname":Ljava/lang/String;
    .end local v11    # "algname":Ljava/lang/String;
    .end local v12    # "cert":Ljava/security/cert/X509Certificate;
    .end local v13    # "key":Ljava/security/PublicKey;
    .end local v14    # "keyUsageBits":[Z
    :cond_126
    nop

    .line 510
    return-object v16

    .line 453
    .restart local v2    # "content":Lsun/security/pkcs/ContentInfo;
    .restart local v4    # "digestAlgname":Ljava/lang/String;
    .restart local v5    # "dataSigned":Ljava/io/InputStream;
    .restart local v9    # "tmp":Ljava/lang/String;
    .restart local v10    # "encryptionAlgname":Ljava/lang/String;
    .restart local v11    # "algname":Ljava/lang/String;
    .restart local v12    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v13    # "key":Ljava/security/PublicKey;
    :cond_128
    new-instance v0, Ljava/security/SignatureException;

    const-string v6, "Certificate has unsupported critical extension(s)"

    invoke-direct {v0, v6}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local p0    # "this":Lsun/security/pkcs/SignerInfo;
    .end local p1    # "block":Lsun/security/pkcs/PKCS7;
    throw v0

    .line 446
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .restart local p0    # "this":Lsun/security/pkcs/SignerInfo;
    .restart local p1    # "block":Lsun/security/pkcs/PKCS7;
    :cond_130
    new-instance v0, Ljava/security/SignatureException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Public key check failed. Disabled key used: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 448
    invoke-static {v13}, Lsun/security/util/KeyUtil;->getKeySize(Ljava/security/Key;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bit "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 449
    invoke-interface {v13}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local p0    # "this":Lsun/security/pkcs/SignerInfo;
    .end local p1    # "block":Lsun/security/pkcs/PKCS7;
    throw v0

    .line 431
    .end local v12    # "cert":Ljava/security/cert/X509Certificate;
    .end local v13    # "key":Ljava/security/PublicKey;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .restart local p0    # "this":Lsun/security/pkcs/SignerInfo;
    .restart local p1    # "block":Lsun/security/pkcs/PKCS7;
    :cond_15b
    new-instance v0, Ljava/security/SignatureException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Signature check failed. Disabled algorithm used: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local p0    # "this":Lsun/security/pkcs/SignerInfo;
    .end local p1    # "block":Lsun/security/pkcs/PKCS7;
    throw v0

    .line 384
    .end local v5    # "dataSigned":Ljava/io/InputStream;
    .end local v10    # "encryptionAlgname":Ljava/lang/String;
    .end local v11    # "algname":Ljava/lang/String;
    .local v0, "contentType":Lsun/security/util/ObjectIdentifier;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .local v9, "messageDigest":[B
    .restart local p0    # "this":Lsun/security/pkcs/SignerInfo;
    .restart local p1    # "block":Lsun/security/pkcs/PKCS7;
    :cond_174
    new-instance v5, Ljava/security/SignatureException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Digest check failed. Disabled algorithm used: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local p0    # "this":Lsun/security/pkcs/SignerInfo;
    .end local p1    # "block":Lsun/security/pkcs/PKCS7;
    throw v5
    :try_end_18d
    .catch Ljava/io/IOException; {:try_start_d9 .. :try_end_18d} :catch_192
    .catch Ljava/security/InvalidKeyException; {:try_start_d9 .. :try_end_18d} :catch_190

    .line 369
    .end local v9    # "messageDigest":[B
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .restart local p0    # "this":Lsun/security/pkcs/SignerInfo;
    .restart local p1    # "block":Lsun/security/pkcs/PKCS7;
    :cond_18d
    move-object/from16 v16, v8

    .line 371
    :goto_18f
    return-object v16

    .line 506
    .end local v0    # "contentType":Lsun/security/util/ObjectIdentifier;
    .end local v2    # "content":Lsun/security/pkcs/ContentInfo;
    .end local v4    # "digestAlgname":Ljava/lang/String;
    :catch_190
    move-exception v0

    goto :goto_197

    .line 502
    :catch_192
    move-exception v0

    goto :goto_1b7

    .line 506
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local p2    # "inputStream":Ljava/io/InputStream;
    :catch_194
    move-exception v0

    move-object/from16 v3, p2

    .line 507
    .end local p2    # "inputStream":Ljava/io/InputStream;
    .local v0, "e":Ljava/security/InvalidKeyException;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :goto_197
    new-instance v2, Ljava/security/SignatureException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InvalidKey: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 502
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local p2    # "inputStream":Ljava/io/InputStream;
    :catch_1b4
    move-exception v0

    move-object/from16 v3, p2

    .line 503
    .end local p2    # "inputStream":Ljava/io/InputStream;
    .local v0, "e":Ljava/io/IOException;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :goto_1b7
    new-instance v2, Ljava/security/SignatureException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IO error verifying signature:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 504
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method greylist-max-o verify(Lsun/security/pkcs/PKCS7;[B)Lsun/security/pkcs/SignerInfo;
    .registers 5
    .param p1, "block"    # Lsun/security/pkcs/PKCS7;
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 329
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, p1, v0}, Lsun/security/pkcs/SignerInfo;->verify(Lsun/security/pkcs/PKCS7;Ljava/io/InputStream;)Lsun/security/pkcs/SignerInfo;

    move-result-object v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v0

    .line 330
    :catch_a
    move-exception v0

    .line 332
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return-object v1
.end method
