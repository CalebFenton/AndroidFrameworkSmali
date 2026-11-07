.class final Lcom/android/org/conscrypt/EvpMdRef;
.super Ljava/lang/Object;
.source "EvpMdRef.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/EvpMdRef$SHA256;,
        Lcom/android/org/conscrypt/EvpMdRef$SHA512;,
        Lcom/android/org/conscrypt/EvpMdRef$SHA1;,
        Lcom/android/org/conscrypt/EvpMdRef$SHA384;,
        Lcom/android/org/conscrypt/EvpMdRef$SHA224;,
        Lcom/android/org/conscrypt/EvpMdRef$MD5;
    }
.end annotation


# static fields
.field static final blacklist MGF1_ALGORITHM_NAME:Ljava/lang/String; = "MGF1"

.field static final blacklist MGF1_OID:Ljava/lang/String; = "1.2.840.113549.1.1.8"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist getDigestSizeBytesByJcaDigestAlgorithmStandardName(Ljava/lang/String;)I
    .registers 5
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 71
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "algorithmUpper":Ljava/lang/String;
    const-string v1, "SHA-256"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 73
    sget v1, Lcom/android/org/conscrypt/EvpMdRef$SHA256;->SIZE_BYTES:I

    return v1

    .line 74
    :cond_11
    const-string v1, "SHA-512"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 75
    sget v1, Lcom/android/org/conscrypt/EvpMdRef$SHA512;->SIZE_BYTES:I

    return v1

    .line 76
    :cond_1c
    const-string v1, "SHA-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 77
    sget v1, Lcom/android/org/conscrypt/EvpMdRef$SHA1;->SIZE_BYTES:I

    return v1

    .line 78
    :cond_27
    const-string v1, "SHA-384"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 79
    sget v1, Lcom/android/org/conscrypt/EvpMdRef$SHA384;->SIZE_BYTES:I

    return v1

    .line 80
    :cond_32
    const-string v1, "SHA-224"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 81
    sget v1, Lcom/android/org/conscrypt/EvpMdRef$SHA224;->SIZE_BYTES:I

    return v1

    .line 83
    :cond_3d
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported algorithm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static blacklist getEVP_MDByJcaDigestAlgorithmStandardName(Ljava/lang/String;)J
    .registers 5
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 53
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "algorithmUpper":Ljava/lang/String;
    const-string v1, "SHA-256"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 55
    sget-wide v1, Lcom/android/org/conscrypt/EvpMdRef$SHA256;->EVP_MD:J

    return-wide v1

    .line 56
    :cond_11
    const-string v1, "SHA-512"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 57
    sget-wide v1, Lcom/android/org/conscrypt/EvpMdRef$SHA512;->EVP_MD:J

    return-wide v1

    .line 58
    :cond_1c
    const-string v1, "SHA-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 59
    sget-wide v1, Lcom/android/org/conscrypt/EvpMdRef$SHA1;->EVP_MD:J

    return-wide v1

    .line 60
    :cond_27
    const-string v1, "SHA-384"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 61
    sget-wide v1, Lcom/android/org/conscrypt/EvpMdRef$SHA384;->EVP_MD:J

    return-wide v1

    .line 62
    :cond_32
    const-string v1, "SHA-224"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 63
    sget-wide v1, Lcom/android/org/conscrypt/EvpMdRef$SHA224;->EVP_MD:J

    return-wide v1

    .line 65
    :cond_3d
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported algorithm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static blacklist getJcaDigestAlgorithmStandardName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "algorithm"    # Ljava/lang/String;

    .line 35
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "algorithmUpper":Ljava/lang/String;
    const-string v1, "SHA-256"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_61

    const-string v2, "2.16.840.1.101.3.4.2.1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_61

    .line 38
    :cond_17
    const-string v1, "SHA-512"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_60

    const-string v2, "2.16.840.1.101.3.4.2.3"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    goto :goto_60

    .line 40
    :cond_28
    const-string v1, "SHA-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5f

    const-string v2, "1.3.14.3.2.26"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    goto :goto_5f

    .line 42
    :cond_39
    const-string v1, "SHA-384"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5e

    const-string v2, "2.16.840.1.101.3.4.2.2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    goto :goto_5e

    .line 44
    :cond_4a
    const-string v1, "SHA-224"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5d

    const-string v2, "2.16.840.1.101.3.4.2.4"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    goto :goto_5d

    .line 47
    :cond_5b
    const/4 v1, 0x0

    return-object v1

    .line 45
    :cond_5d
    :goto_5d
    return-object v1

    .line 43
    :cond_5e
    :goto_5e
    return-object v1

    .line 41
    :cond_5f
    :goto_5f
    return-object v1

    .line 39
    :cond_60
    :goto_60
    return-object v1

    .line 37
    :cond_61
    :goto_61
    return-object v1
.end method

.method static blacklist getJcaDigestAlgorithmStandardNameFromEVP_MD(J)Ljava/lang/String;
    .registers 4
    .param p0, "evpMdRef"    # J

    .line 88
    sget-wide v0, Lcom/android/org/conscrypt/EvpMdRef$MD5;->EVP_MD:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_9

    .line 89
    const-string v0, "MD5"

    return-object v0

    .line 90
    :cond_9
    sget-wide v0, Lcom/android/org/conscrypt/EvpMdRef$SHA1;->EVP_MD:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_12

    .line 91
    const-string v0, "SHA-1"

    return-object v0

    .line 92
    :cond_12
    sget-wide v0, Lcom/android/org/conscrypt/EvpMdRef$SHA224;->EVP_MD:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_1b

    .line 93
    const-string v0, "SHA-224"

    return-object v0

    .line 94
    :cond_1b
    sget-wide v0, Lcom/android/org/conscrypt/EvpMdRef$SHA256;->EVP_MD:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_24

    .line 95
    const-string v0, "SHA-256"

    return-object v0

    .line 96
    :cond_24
    sget-wide v0, Lcom/android/org/conscrypt/EvpMdRef$SHA384;->EVP_MD:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_2d

    .line 97
    const-string v0, "SHA-384"

    return-object v0

    .line 98
    :cond_2d
    sget-wide v0, Lcom/android/org/conscrypt/EvpMdRef$SHA512;->EVP_MD:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_36

    .line 99
    const-string v0, "SHA-512"

    return-object v0

    .line 101
    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown EVP_MD reference"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
