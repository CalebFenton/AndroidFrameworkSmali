.class public Landroid/net/wifi/ParcelUtil;
.super Ljava/lang/Object;
.source "ParcelUtil.java"


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o readCertificate(Landroid/os/Parcel;)Ljava/security/cert/X509Certificate;
    .registers 5
    .param p0, "in"    # Landroid/os/Parcel;

    .line 117
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 118
    .local v0, "certBytes":[B
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 119
    return-object v1

    .line 123
    :cond_8
    :try_start_8
    const-string v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 124
    .local v2, "cFactory":Ljava/security/cert/CertificateFactory;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 125
    invoke-virtual {v2, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;
    :try_end_19
    .catch Ljava/security/cert/CertificateException; {:try_start_8 .. :try_end_19} :catch_1a

    .line 124
    return-object v3

    .line 126
    .end local v2    # "cFactory":Ljava/security/cert/CertificateFactory;
    :catch_1a
    move-exception v2

    .line 127
    .local v2, "e":Ljava/security/cert/CertificateException;
    return-object v1
.end method

.method public static greylist-max-o readCertificates(Landroid/os/Parcel;)[Ljava/security/cert/X509Certificate;
    .registers 5
    .param p0, "in"    # Landroid/os/Parcel;

    .line 159
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 160
    .local v0, "length":I
    if-nez v0, :cond_8

    .line 161
    const/4 v1, 0x0

    return-object v1

    .line 164
    :cond_8
    new-array v1, v0, [Ljava/security/cert/X509Certificate;

    .line 165
    .local v1, "certs":[Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v0, :cond_16

    .line 166
    invoke-static {p0}, Landroid/net/wifi/ParcelUtil;->readCertificate(Landroid/os/Parcel;)Ljava/security/cert/X509Certificate;

    move-result-object v3

    aput-object v3, v1, v2

    .line 165
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 168
    .end local v2    # "i":I
    :cond_16
    return-object v1
.end method

.method public static blacklist readOuiKeyedDataList(Landroid/os/Parcel;)Ljava/util/List;
    .registers 4
    .param p0, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/wifi/OuiKeyedData;",
            ">;"
        }
    .end annotation

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v0, "dataList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/OuiKeyedData;>;"
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 176
    const-class v1, Landroid/net/wifi/OuiKeyedData;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/net/wifi/OuiKeyedData;

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    goto :goto_20

    .line 178
    :cond_17
    const-class v1, Landroid/net/wifi/OuiKeyedData;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 180
    :goto_20
    return-object v0
.end method

.method public static greylist-max-o readPrivateKey(Landroid/os/Parcel;)Ljava/security/PrivateKey;
    .registers 6
    .param p0, "in"    # Landroid/os/Parcel;

    .line 77
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "algorithm":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 79
    return-object v1

    .line 82
    :cond_8
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 84
    .local v2, "userKeyBytes":[B
    :try_start_c
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 85
    .local v3, "keyFactory":Ljava/security/KeyFactory;
    new-instance v4, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v4, v2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1
    :try_end_19
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c .. :try_end_19} :catch_1a
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_c .. :try_end_19} :catch_1a

    return-object v1

    .line 86
    .end local v3    # "keyFactory":Ljava/security/KeyFactory;
    :catch_1a
    move-exception v3

    .line 87
    .local v3, "e":Ljava/security/GeneralSecurityException;
    return-object v1
.end method

.method public static greylist-max-o writeCertificate(Landroid/os/Parcel;Ljava/security/cert/X509Certificate;)V
    .registers 4
    .param p0, "dest"    # Landroid/os/Parcel;
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "certBytes":[B
    if-eqz p1, :cond_a

    .line 102
    :try_start_3
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v1
    :try_end_7
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_3 .. :try_end_7} :catch_9

    move-object v0, v1

    .line 105
    goto :goto_a

    .line 103
    :catch_9
    move-exception v1

    .line 107
    :cond_a
    :goto_a
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 108
    return-void
.end method

.method public static greylist-max-o writeCertificates(Landroid/os/Parcel;[Ljava/security/cert/X509Certificate;)V
    .registers 4
    .param p0, "dest"    # Landroid/os/Parcel;
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;

    .line 141
    if-eqz p1, :cond_17

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_17

    .line 146
    :cond_6
    array-length v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    array-length v1, p1

    if-ge v0, v1, :cond_16

    .line 148
    aget-object v1, p1, v0

    invoke-static {p0, v1}, Landroid/net/wifi/ParcelUtil;->writeCertificate(Landroid/os/Parcel;Ljava/security/cert/X509Certificate;)V

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 150
    .end local v0    # "i":I
    :cond_16
    return-void

    .line 142
    :cond_17
    :goto_17
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    return-void
.end method

.method public static greylist-max-o writePrivateKey(Landroid/os/Parcel;Ljava/security/PrivateKey;)V
    .registers 3
    .param p0, "dest"    # Landroid/os/Parcel;
    .param p1, "key"    # Ljava/security/PrivateKey;

    .line 59
    if-nez p1, :cond_7

    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    return-void

    .line 64
    :cond_7
    invoke-interface {p1}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    invoke-interface {p1}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 66
    return-void
.end method
