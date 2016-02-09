.class public Ljavax/crypto/EncryptedPrivateKeyInfo;
.super Ljava/lang/Object;
.source "EncryptedPrivateKeyInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/crypto/EncryptedPrivateKeyInfo$1;,
        Ljavax/crypto/EncryptedPrivateKeyInfo$2;
    }
.end annotation


# static fields
.field private static final ASN1Attributes:Lorg/apache/harmony/security/asn1/ASN1SetOf;

.field private static final ASN1PrivateKeyInfo:Lorg/apache/harmony/security/asn1/ASN1Sequence;

.field private static final asn1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

.field private static final nullParam:[B


# instance fields
.field private algName:Ljava/lang/String;

.field private final algParameters:Ljava/security/AlgorithmParameters;

.field private volatile encoded:[B

.field private final encryptedData:[B

.field private oid:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Ljavax/crypto/EncryptedPrivateKeyInfo;)Ljava/security/AlgorithmParameters;
    .locals 1

    #@0
    iget-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algParameters:Ljava/security/AlgorithmParameters;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Ljavax/crypto/EncryptedPrivateKeyInfo;)[B
    .locals 1

    #@0
    iget-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    #@2
    return-object v0
.end method

.method static synthetic -get2()[B
    .locals 1

    #@0
    sget-object v0, Ljavax/crypto/EncryptedPrivateKeyInfo;->nullParam:[B

    #@2
    return-object v0
.end method

.method static synthetic -get3(Ljavax/crypto/EncryptedPrivateKeyInfo;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->oid:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v3, 0x2

    #@2
    const/4 v4, 0x0

    #@3
    .line 492
    new-array v0, v3, [B

    #@5
    fill-array-data v0, :array_0

    #@8
    sput-object v0, Ljavax/crypto/EncryptedPrivateKeyInfo;->nullParam:[B

    #@a
    .line 494
    new-instance v0, Ljavax/crypto/EncryptedPrivateKeyInfo$1;

    #@c
    new-array v1, v3, [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@e
    .line 495
    sget-object v2, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@10
    aput-object v2, v1, v4

    #@12
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    #@15
    move-result-object v2

    #@16
    aput-object v2, v1, v5

    #@18
    .line 494
    invoke-direct {v0, v1}, Ljavax/crypto/EncryptedPrivateKeyInfo$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@1b
    sput-object v0, Ljavax/crypto/EncryptedPrivateKeyInfo;->asn1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@1d
    .line 533
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1SetOf;

    #@1f
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Any;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Any;

    #@22
    move-result-object v1

    #@23
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1SetOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@26
    sput-object v0, Ljavax/crypto/EncryptedPrivateKeyInfo;->ASN1Attributes:Lorg/apache/harmony/security/asn1/ASN1SetOf;

    #@28
    .line 535
    new-instance v0, Ljavax/crypto/EncryptedPrivateKeyInfo$2;

    #@2a
    .line 536
    const/4 v1, 0x4

    #@2b
    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@2d
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    #@30
    move-result-object v2

    #@31
    aput-object v2, v1, v4

    #@33
    sget-object v2, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@35
    aput-object v2, v1, v5

    #@37
    .line 537
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    #@3a
    move-result-object v2

    #@3b
    aput-object v2, v1, v3

    #@3d
    .line 538
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    #@3f
    sget-object v3, Ljavax/crypto/EncryptedPrivateKeyInfo;->ASN1Attributes:Lorg/apache/harmony/security/asn1/ASN1SetOf;

    #@41
    invoke-direct {v2, v4, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    #@44
    const/4 v3, 0x3

    #@45
    aput-object v2, v1, v3

    #@47
    .line 535
    invoke-direct {v0, v1}, Ljavax/crypto/EncryptedPrivateKeyInfo$2;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@4a
    sput-object v0, Ljavax/crypto/EncryptedPrivateKeyInfo;->ASN1PrivateKeyInfo:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@4c
    .line 58
    return-void

    #@4d
    .line 492
    nop

    #@4e
    :array_0
    .array-data 1
        0x5t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 4
    .param p1, "encryptionAlgorithmName"    # Ljava/lang/String;
    .param p2, "encryptedData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 138
    if-nez p1, :cond_0

    #@7
    .line 139
    new-instance v0, Ljava/lang/NullPointerException;

    #@9
    const-string/jumbo v1, "encryptionAlgorithmName == null"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 141
    :cond_0
    iput-object p1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    #@12
    .line 142
    invoke-direct {p0}, Ljavax/crypto/EncryptedPrivateKeyInfo;->mapAlgName()Z

    #@15
    move-result v0

    #@16
    if-nez v0, :cond_1

    #@18
    .line 143
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    #@1a
    new-instance v1, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v2, "Unsupported algorithm: "

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    iget-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0

    #@34
    .line 145
    :cond_1
    if-nez p2, :cond_2

    #@36
    .line 146
    new-instance v0, Ljava/lang/NullPointerException;

    #@38
    const-string/jumbo v1, "encryptedData == null"

    #@3b
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v0

    #@3f
    .line 148
    :cond_2
    array-length v0, p2

    #@40
    if-nez v0, :cond_3

    #@42
    .line 149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@44
    const-string/jumbo v1, "encryptedData.length == 0"

    #@47
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v0

    #@4b
    .line 151
    :cond_3
    array-length v0, p2

    #@4c
    new-array v0, v0, [B

    #@4e
    iput-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    #@50
    .line 153
    iget-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    #@52
    array-length v1, p2

    #@53
    .line 152
    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@56
    .line 154
    iput-object v3, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algParameters:Ljava/security/AlgorithmParameters;

    #@58
    .line 137
    return-void
.end method

.method public constructor <init>(Ljava/security/AlgorithmParameters;[B)V
    .locals 3
    .param p1, "algParams"    # Ljava/security/AlgorithmParameters;
    .param p2, "encryptedData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 174
    if-nez p1, :cond_0

    #@6
    .line 175
    new-instance v0, Ljava/lang/NullPointerException;

    #@8
    const-string/jumbo v1, "algParams == null"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 177
    :cond_0
    iput-object p1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algParameters:Ljava/security/AlgorithmParameters;

    #@11
    .line 178
    if-nez p2, :cond_1

    #@13
    .line 179
    new-instance v0, Ljava/lang/NullPointerException;

    #@15
    const-string/jumbo v1, "encryptedData == null"

    #@18
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 181
    :cond_1
    array-length v0, p2

    #@1d
    if-nez v0, :cond_2

    #@1f
    .line 182
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@21
    const-string/jumbo v1, "encryptedData.length == 0"

    #@24
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0

    #@28
    .line 184
    :cond_2
    array-length v0, p2

    #@29
    new-array v0, v0, [B

    #@2b
    iput-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    #@2d
    .line 186
    iget-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    #@2f
    array-length v1, p2

    #@30
    .line 185
    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@33
    .line 187
    iget-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algParameters:Ljava/security/AlgorithmParameters;

    #@35
    invoke-virtual {v0}, Ljava/security/AlgorithmParameters;->getAlgorithm()Ljava/lang/String;

    #@38
    move-result-object v0

    #@39
    iput-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    #@3b
    .line 188
    invoke-direct {p0}, Ljavax/crypto/EncryptedPrivateKeyInfo;->mapAlgName()Z

    #@3e
    move-result v0

    #@3f
    if-nez v0, :cond_3

    #@41
    .line 189
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    #@43
    new-instance v1, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v2, "Unsupported algorithm: "

    #@4b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v1

    #@4f
    iget-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    #@51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v1

    #@59
    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@5c
    throw v0

    #@5d
    .line 173
    :cond_3
    return-void
.end method

.method public constructor <init>([B)V
    .locals 9
    .param p1, "encoded"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 82
    if-nez p1, :cond_0

    #@6
    .line 83
    new-instance v6, Ljava/lang/NullPointerException;

    #@8
    const-string/jumbo v7, "encoded == null"

    #@b
    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@e
    throw v6

    #@f
    .line 85
    :cond_0
    array-length v6, p1

    #@10
    new-array v6, v6, [B

    #@12
    iput-object v6, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    #@14
    .line 86
    iget-object v6, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    #@16
    array-length v7, p1

    #@17
    invoke-static {p1, v8, v6, v8, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1a
    .line 89
    sget-object v6, Ljavax/crypto/EncryptedPrivateKeyInfo;->asn1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@1c
    invoke-virtual {v6, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    #@1f
    move-result-object v5

    #@20
    check-cast v5, [Ljava/lang/Object;

    #@22
    .line 91
    .local v5, "values":[Ljava/lang/Object;
    aget-object v0, v5, v8

    #@24
    check-cast v0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    #@26
    .line 93
    .local v0, "aId":Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getAlgorithm()Ljava/lang/String;

    #@29
    move-result-object v6

    #@2a
    iput-object v6, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    #@2c
    .line 95
    invoke-direct {p0}, Ljavax/crypto/EncryptedPrivateKeyInfo;->mapAlgName()Z

    #@2f
    move-result v3

    #@30
    .line 99
    .local v3, "mappingExists":Z
    const/4 v1, 0x0

    #@31
    .line 100
    .local v1, "aParams":Ljava/security/AlgorithmParameters;
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getParameters()[B

    #@34
    move-result-object v4

    #@35
    .line 101
    .local v4, "params":[B
    if-eqz v4, :cond_1

    #@37
    invoke-static {v4}, Ljavax/crypto/EncryptedPrivateKeyInfo;->isNullValue([B)Z

    #@3a
    move-result v6

    #@3b
    if-eqz v6, :cond_2

    #@3d
    .line 111
    .end local v1    # "aParams":Ljava/security/AlgorithmParameters;
    :cond_1
    :goto_0
    iput-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algParameters:Ljava/security/AlgorithmParameters;

    #@3f
    .line 113
    const/4 v6, 0x1

    #@40
    aget-object v6, v5, v6

    #@42
    check-cast v6, [B

    #@44
    iput-object v6, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    #@46
    .line 81
    return-void

    #@47
    .line 103
    .restart local v1    # "aParams":Ljava/security/AlgorithmParameters;
    :cond_2
    :try_start_0
    iget-object v6, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    #@49
    invoke-static {v6}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    #@4c
    move-result-object v1

    #@4d
    .line 104
    .local v1, "aParams":Ljava/security/AlgorithmParameters;
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getParameters()[B

    #@50
    move-result-object v6

    #@51
    invoke-virtual {v1, v6}, Ljava/security/AlgorithmParameters;->init([B)V

    #@54
    .line 105
    if-nez v3, :cond_1

    #@56
    .line 106
    invoke-virtual {v1}, Ljava/security/AlgorithmParameters;->getAlgorithm()Ljava/lang/String;

    #@59
    move-result-object v6

    #@5a
    iput-object v6, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@5c
    goto :goto_0

    #@5d
    .line 108
    .end local v1    # "aParams":Ljava/security/AlgorithmParameters;
    :catch_0
    move-exception v2

    #@5e
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    goto :goto_0
.end method

.method private invalidKey()Ljava/security/InvalidKeyException;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 424
    new-instance v0, Ljava/security/InvalidKeyException;

    #@2
    const-string/jumbo v1, "Decrypted data does not represent valid PKCS#8 PrivateKeyInfo"

    #@5
    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method private static isNullValue([B)Z
    .locals 4
    .param p0, "toCheck"    # [B

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 117
    aget-byte v2, p0, v1

    #@4
    const/4 v3, 0x5

    #@5
    if-ne v2, v3, :cond_0

    #@7
    aget-byte v2, p0, v0

    #@9
    if-nez v2, :cond_0

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    move v0, v1

    #@d
    goto :goto_0
.end method

.method private mapAlgName()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 447
    iget-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    #@3
    invoke-static {v1}, Lorg/apache/harmony/security/utils/AlgNameMapper;->isOID(Ljava/lang/String;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_1

    #@9
    .line 450
    iget-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    #@b
    invoke-static {v1}, Lorg/apache/harmony/security/utils/AlgNameMapper;->normalize(Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    iput-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->oid:Ljava/lang/String;

    #@11
    .line 452
    iget-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->oid:Ljava/lang/String;

    #@13
    invoke-static {v1}, Lorg/apache/harmony/security/utils/AlgNameMapper;->map2AlgName(Ljava/lang/String;)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    iput-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    #@19
    .line 455
    iget-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    #@1b
    if-nez v1, :cond_0

    #@1d
    .line 456
    iget-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->oid:Ljava/lang/String;

    #@1f
    iput-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    #@21
    .line 478
    :cond_0
    :goto_0
    const/4 v1, 0x1

    #@22
    return v1

    #@23
    .line 459
    :cond_1
    iget-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    #@25
    invoke-static {v1}, Lorg/apache/harmony/security/utils/AlgNameMapper;->getStandardName(Ljava/lang/String;)Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    .line 463
    .local v0, "stdName":Ljava/lang/String;
    iget-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    #@2b
    invoke-static {v1}, Lorg/apache/harmony/security/utils/AlgNameMapper;->map2OID(Ljava/lang/String;)Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    iput-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->oid:Ljava/lang/String;

    #@31
    .line 464
    iget-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->oid:Ljava/lang/String;

    #@33
    if-nez v1, :cond_4

    #@35
    .line 465
    if-nez v0, :cond_2

    #@37
    .line 467
    return v2

    #@38
    .line 469
    :cond_2
    invoke-static {v0}, Lorg/apache/harmony/security/utils/AlgNameMapper;->map2OID(Ljava/lang/String;)Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    iput-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->oid:Ljava/lang/String;

    #@3e
    .line 470
    iget-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->oid:Ljava/lang/String;

    #@40
    if-nez v1, :cond_3

    #@42
    .line 471
    return v2

    #@43
    .line 473
    :cond_3
    iput-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    #@45
    goto :goto_0

    #@46
    .line 474
    :cond_4
    if-eqz v0, :cond_0

    #@48
    .line 475
    iput-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    #@4a
    goto :goto_0
.end method


# virtual methods
.method public getAlgName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 199
    iget-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getAlgParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    #@0
    .prologue
    .line 208
    iget-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algParameters:Ljava/security/AlgorithmParameters;

    #@2
    return-object v0
.end method

.method public getEncoded()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 435
    iget-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    #@3
    if-nez v1, :cond_0

    #@5
    .line 437
    sget-object v1, Ljavax/crypto/EncryptedPrivateKeyInfo;->asn1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@7
    invoke-virtual {v1, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    #@a
    move-result-object v1

    #@b
    iput-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    #@d
    .line 439
    :cond_0
    iget-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    #@f
    array-length v1, v1

    #@10
    new-array v0, v1, [B

    #@12
    .line 440
    .local v0, "ret":[B
    iget-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    #@14
    iget-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    #@16
    array-length v2, v2

    #@17
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1a
    .line 441
    return-object v0
.end method

.method public getEncryptedData()[B
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 218
    iget-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    #@3
    array-length v1, v1

    #@4
    new-array v0, v1, [B

    #@6
    .line 219
    .local v0, "ret":[B
    iget-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    #@8
    iget-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    #@a
    array-length v2, v2

    #@b
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@e
    .line 220
    return-object v0
.end method

.method public getKeySpec(Ljava/security/Key;)Ljava/security/spec/PKCS8EncodedKeySpec;
    .locals 10
    .param p1, "decryptKey"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 280
    if-nez p1, :cond_0

    #@2
    .line 281
    new-instance v8, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v9, "decryptKey == null"

    #@7
    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v8

    #@b
    .line 284
    :cond_0
    :try_start_0
    iget-object v8, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    #@d
    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    #@10
    move-result-object v0

    #@11
    .line 285
    .local v0, "cipher":Ljavax/crypto/Cipher;
    iget-object v8, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algParameters:Ljava/security/AlgorithmParameters;

    #@13
    if-nez v8, :cond_1

    #@15
    .line 286
    const/4 v8, 0x2

    #@16
    invoke-virtual {v0, v8, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    #@19
    .line 290
    :goto_0
    iget-object v8, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    #@1b
    invoke-virtual {v0, v8}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_3

    #@1e
    move-result-object v1

    #@1f
    .line 292
    .local v1, "decryptedData":[B
    :try_start_1
    sget-object v8, Ljavax/crypto/EncryptedPrivateKeyInfo;->ASN1PrivateKeyInfo:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@21
    invoke-virtual {v8, v1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->verify([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_3

    #@24
    .line 296
    :try_start_2
    new-instance v8, Ljava/security/spec/PKCS8EncodedKeySpec;

    #@26
    invoke-direct {v8, v1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    #@29
    return-object v8

    #@2a
    .line 288
    .end local v1    # "decryptedData":[B
    :cond_1
    iget-object v8, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algParameters:Ljava/security/AlgorithmParameters;

    #@2c
    const/4 v9, 0x2

    #@2d
    invoke-virtual {v0, v9, p1, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V
    :try_end_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_3

    #@30
    goto :goto_0

    #@31
    .line 297
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v6

    #@32
    .line 298
    .local v6, "e":Ljavax/crypto/NoSuchPaddingException;
    new-instance v8, Ljava/security/NoSuchAlgorithmException;

    #@34
    invoke-virtual {v6}, Ljavax/crypto/NoSuchPaddingException;->getMessage()Ljava/lang/String;

    #@37
    move-result-object v9

    #@38
    invoke-direct {v8, v9}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v8

    #@3c
    .line 293
    .end local v6    # "e":Ljavax/crypto/NoSuchPaddingException;
    .restart local v0    # "cipher":Ljavax/crypto/Cipher;
    .restart local v1    # "decryptedData":[B
    :catch_1
    move-exception v7

    #@3d
    .line 294
    .local v7, "e1":Ljava/io/IOException;
    :try_start_3
    invoke-direct {p0}, Ljavax/crypto/EncryptedPrivateKeyInfo;->invalidKey()Ljava/security/InvalidKeyException;

    #@40
    move-result-object v8

    #@41
    throw v8
    :try_end_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_3 .. :try_end_3} :catch_3

    #@42
    .line 299
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "decryptedData":[B
    .end local v7    # "e1":Ljava/io/IOException;
    :catch_2
    move-exception v3

    #@43
    .line 300
    .local v3, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v8, Ljava/security/NoSuchAlgorithmException;

    #@45
    invoke-virtual {v3}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    #@48
    move-result-object v9

    #@49
    invoke-direct {v8, v9}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v8

    #@4d
    .line 305
    .end local v3    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_3
    move-exception v4

    #@4e
    .line 306
    .local v4, "e":Ljavax/crypto/BadPaddingException;
    new-instance v8, Ljava/security/InvalidKeyException;

    #@50
    invoke-virtual {v4}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    #@53
    move-result-object v9

    #@54
    invoke-direct {v8, v9}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@57
    throw v8

    #@58
    .line 303
    .end local v4    # "e":Ljavax/crypto/BadPaddingException;
    :catch_4
    move-exception v5

    #@59
    .line 304
    .local v5, "e":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v8, Ljava/security/InvalidKeyException;

    #@5b
    invoke-virtual {v5}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    #@5e
    move-result-object v9

    #@5f
    invoke-direct {v8, v9}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@62
    throw v8

    #@63
    .line 301
    .end local v5    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_5
    move-exception v2

    #@64
    .line 302
    .local v2, "e":Ljava/lang/IllegalStateException;
    new-instance v8, Ljava/security/InvalidKeyException;

    #@66
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    #@69
    move-result-object v9

    #@6a
    invoke-direct {v8, v9}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@6d
    throw v8
.end method

.method public getKeySpec(Ljava/security/Key;Ljava/lang/String;)Ljava/security/spec/PKCS8EncodedKeySpec;
    .locals 10
    .param p1, "decryptKey"    # Ljava/security/Key;
    .param p2, "providerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 336
    if-nez p1, :cond_0

    #@2
    .line 337
    new-instance v8, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v9, "decryptKey == null"

    #@7
    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v8

    #@b
    .line 339
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 340
    new-instance v8, Ljava/lang/NullPointerException;

    #@f
    const-string/jumbo v9, "providerName == null"

    #@12
    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@15
    throw v8

    #@16
    .line 343
    :cond_1
    :try_start_0
    iget-object v8, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    #@18
    invoke-static {v8, p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    #@1b
    move-result-object v0

    #@1c
    .line 344
    .local v0, "cipher":Ljavax/crypto/Cipher;
    iget-object v8, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algParameters:Ljava/security/AlgorithmParameters;

    #@1e
    if-nez v8, :cond_2

    #@20
    .line 345
    const/4 v8, 0x2

    #@21
    invoke-virtual {v0, v8, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    #@24
    .line 349
    :goto_0
    iget-object v8, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    #@26
    invoke-virtual {v0, v8}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_3

    #@29
    move-result-object v1

    #@2a
    .line 351
    .local v1, "decryptedData":[B
    :try_start_1
    sget-object v8, Ljavax/crypto/EncryptedPrivateKeyInfo;->ASN1PrivateKeyInfo:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@2c
    invoke-virtual {v8, v1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->verify([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_3

    #@2f
    .line 355
    :try_start_2
    new-instance v8, Ljava/security/spec/PKCS8EncodedKeySpec;

    #@31
    invoke-direct {v8, v1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    #@34
    return-object v8

    #@35
    .line 347
    .end local v1    # "decryptedData":[B
    :cond_2
    iget-object v8, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algParameters:Ljava/security/AlgorithmParameters;

    #@37
    const/4 v9, 0x2

    #@38
    invoke-virtual {v0, v9, p1, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V
    :try_end_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_3

    #@3b
    goto :goto_0

    #@3c
    .line 356
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v6

    #@3d
    .line 357
    .local v6, "e":Ljavax/crypto/NoSuchPaddingException;
    new-instance v8, Ljava/security/NoSuchAlgorithmException;

    #@3f
    invoke-virtual {v6}, Ljavax/crypto/NoSuchPaddingException;->getMessage()Ljava/lang/String;

    #@42
    move-result-object v9

    #@43
    invoke-direct {v8, v9}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@46
    throw v8

    #@47
    .line 352
    .end local v6    # "e":Ljavax/crypto/NoSuchPaddingException;
    .restart local v0    # "cipher":Ljavax/crypto/Cipher;
    .restart local v1    # "decryptedData":[B
    :catch_1
    move-exception v7

    #@48
    .line 353
    .local v7, "e1":Ljava/io/IOException;
    :try_start_3
    invoke-direct {p0}, Ljavax/crypto/EncryptedPrivateKeyInfo;->invalidKey()Ljava/security/InvalidKeyException;

    #@4b
    move-result-object v8

    #@4c
    throw v8
    :try_end_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_3 .. :try_end_3} :catch_3

    #@4d
    .line 358
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "decryptedData":[B
    .end local v7    # "e1":Ljava/io/IOException;
    :catch_2
    move-exception v3

    #@4e
    .line 359
    .local v3, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v8, Ljava/security/NoSuchAlgorithmException;

    #@50
    invoke-virtual {v3}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    #@53
    move-result-object v9

    #@54
    invoke-direct {v8, v9}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@57
    throw v8

    #@58
    .line 364
    .end local v3    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_3
    move-exception v4

    #@59
    .line 365
    .local v4, "e":Ljavax/crypto/BadPaddingException;
    new-instance v8, Ljava/security/InvalidKeyException;

    #@5b
    invoke-virtual {v4}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    #@5e
    move-result-object v9

    #@5f
    invoke-direct {v8, v9}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@62
    throw v8

    #@63
    .line 362
    .end local v4    # "e":Ljavax/crypto/BadPaddingException;
    :catch_4
    move-exception v5

    #@64
    .line 363
    .local v5, "e":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v8, Ljava/security/InvalidKeyException;

    #@66
    invoke-virtual {v5}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    #@69
    move-result-object v9

    #@6a
    invoke-direct {v8, v9}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@6d
    throw v8

    #@6e
    .line 360
    .end local v5    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_5
    move-exception v2

    #@6f
    .line 361
    .local v2, "e":Ljava/lang/IllegalStateException;
    new-instance v8, Ljava/security/InvalidKeyException;

    #@71
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    #@74
    move-result-object v9

    #@75
    invoke-direct {v8, v9}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@78
    throw v8
.end method

.method public getKeySpec(Ljava/security/Key;Ljava/security/Provider;)Ljava/security/spec/PKCS8EncodedKeySpec;
    .locals 10
    .param p1, "decryptKey"    # Ljava/security/Key;
    .param p2, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 390
    if-nez p1, :cond_0

    #@2
    .line 391
    new-instance v8, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v9, "decryptKey == null"

    #@7
    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v8

    #@b
    .line 393
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 394
    new-instance v8, Ljava/lang/NullPointerException;

    #@f
    const-string/jumbo v9, "provider == null"

    #@12
    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@15
    throw v8

    #@16
    .line 397
    :cond_1
    :try_start_0
    iget-object v8, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    #@18
    invoke-static {v8, p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    #@1b
    move-result-object v0

    #@1c
    .line 398
    .local v0, "cipher":Ljavax/crypto/Cipher;
    iget-object v8, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algParameters:Ljava/security/AlgorithmParameters;

    #@1e
    if-nez v8, :cond_2

    #@20
    .line 399
    const/4 v8, 0x2

    #@21
    invoke-virtual {v0, v8, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    #@24
    .line 403
    :goto_0
    iget-object v8, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    #@26
    invoke-virtual {v0, v8}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_3

    #@29
    move-result-object v1

    #@2a
    .line 405
    .local v1, "decryptedData":[B
    :try_start_1
    sget-object v8, Ljavax/crypto/EncryptedPrivateKeyInfo;->ASN1PrivateKeyInfo:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@2c
    invoke-virtual {v8, v1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->verify([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_3

    #@2f
    .line 409
    :try_start_2
    new-instance v8, Ljava/security/spec/PKCS8EncodedKeySpec;

    #@31
    invoke-direct {v8, v1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    #@34
    return-object v8

    #@35
    .line 401
    .end local v1    # "decryptedData":[B
    :cond_2
    iget-object v8, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algParameters:Ljava/security/AlgorithmParameters;

    #@37
    const/4 v9, 0x2

    #@38
    invoke-virtual {v0, v9, p1, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V
    :try_end_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_3

    #@3b
    goto :goto_0

    #@3c
    .line 410
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v6

    #@3d
    .line 411
    .local v6, "e":Ljavax/crypto/NoSuchPaddingException;
    new-instance v8, Ljava/security/NoSuchAlgorithmException;

    #@3f
    invoke-virtual {v6}, Ljavax/crypto/NoSuchPaddingException;->getMessage()Ljava/lang/String;

    #@42
    move-result-object v9

    #@43
    invoke-direct {v8, v9}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@46
    throw v8

    #@47
    .line 406
    .end local v6    # "e":Ljavax/crypto/NoSuchPaddingException;
    .restart local v0    # "cipher":Ljavax/crypto/Cipher;
    .restart local v1    # "decryptedData":[B
    :catch_1
    move-exception v7

    #@48
    .line 407
    .local v7, "e1":Ljava/io/IOException;
    :try_start_3
    invoke-direct {p0}, Ljavax/crypto/EncryptedPrivateKeyInfo;->invalidKey()Ljava/security/InvalidKeyException;

    #@4b
    move-result-object v8

    #@4c
    throw v8
    :try_end_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_3 .. :try_end_3} :catch_3

    #@4d
    .line 412
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "decryptedData":[B
    .end local v7    # "e1":Ljava/io/IOException;
    :catch_2
    move-exception v3

    #@4e
    .line 413
    .local v3, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v8, Ljava/security/NoSuchAlgorithmException;

    #@50
    invoke-virtual {v3}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    #@53
    move-result-object v9

    #@54
    invoke-direct {v8, v9}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@57
    throw v8

    #@58
    .line 418
    .end local v3    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_3
    move-exception v4

    #@59
    .line 419
    .local v4, "e":Ljavax/crypto/BadPaddingException;
    new-instance v8, Ljava/security/InvalidKeyException;

    #@5b
    invoke-virtual {v4}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    #@5e
    move-result-object v9

    #@5f
    invoke-direct {v8, v9}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@62
    throw v8

    #@63
    .line 416
    .end local v4    # "e":Ljavax/crypto/BadPaddingException;
    :catch_4
    move-exception v5

    #@64
    .line 417
    .local v5, "e":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v8, Ljava/security/InvalidKeyException;

    #@66
    invoke-virtual {v5}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    #@69
    move-result-object v9

    #@6a
    invoke-direct {v8, v9}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@6d
    throw v8

    #@6e
    .line 414
    .end local v5    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_5
    move-exception v2

    #@6f
    .line 415
    .local v2, "e":Ljava/lang/IllegalStateException;
    new-instance v8, Ljava/security/InvalidKeyException;

    #@71
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    #@74
    move-result-object v9

    #@75
    invoke-direct {v8, v9}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@78
    throw v8
.end method

.method public getKeySpec(Ljavax/crypto/Cipher;)Ljava/security/spec/PKCS8EncodedKeySpec;
    .locals 7
    .param p1, "cipher"    # Ljavax/crypto/Cipher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 242
    if-nez p1, :cond_0

    #@2
    .line 243
    new-instance v5, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v6, "cipher == null"

    #@7
    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v5

    #@b
    .line 246
    :cond_0
    :try_start_0
    iget-object v5, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    #@d
    invoke-virtual {p1, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_2

    #@10
    move-result-object v0

    #@11
    .line 248
    .local v0, "decryptedData":[B
    :try_start_1
    sget-object v5, Ljavax/crypto/EncryptedPrivateKeyInfo;->ASN1PrivateKeyInfo:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@13
    invoke-virtual {v5, v0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->verify([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_2

    #@16
    .line 252
    :try_start_2
    new-instance v5, Ljava/security/spec/PKCS8EncodedKeySpec;

    #@18
    invoke-direct {v5, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    #@1b
    return-object v5

    #@1c
    .line 249
    :catch_0
    move-exception v4

    #@1d
    .line 250
    .local v4, "e1":Ljava/io/IOException;
    new-instance v5, Ljava/security/spec/InvalidKeySpecException;

    #@1f
    const-string/jumbo v6, "Decrypted data does not represent valid PKCS#8 PrivateKeyInfo"

    #@22
    invoke-direct {v5, v6}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@25
    throw v5
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_2

    #@26
    .line 253
    .end local v0    # "decryptedData":[B
    .end local v4    # "e1":Ljava/io/IOException;
    :catch_1
    move-exception v1

    #@27
    .line 254
    .local v1, "e":Ljava/lang/IllegalStateException;
    new-instance v5, Ljava/security/spec/InvalidKeySpecException;

    #@29
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    #@2c
    move-result-object v6

    #@2d
    invoke-direct {v5, v6}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@30
    throw v5

    #@31
    .line 257
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v2

    #@32
    .line 258
    .local v2, "e":Ljavax/crypto/BadPaddingException;
    new-instance v5, Ljava/security/spec/InvalidKeySpecException;

    #@34
    invoke-virtual {v2}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    #@37
    move-result-object v6

    #@38
    invoke-direct {v5, v6}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v5

    #@3c
    .line 255
    .end local v2    # "e":Ljavax/crypto/BadPaddingException;
    :catch_3
    move-exception v3

    #@3d
    .line 256
    .local v3, "e":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v5, Ljava/security/spec/InvalidKeySpecException;

    #@3f
    invoke-virtual {v3}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    #@42
    move-result-object v6

    #@43
    invoke-direct {v5, v6}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@46
    throw v5
.end method
