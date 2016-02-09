.class final Landroid/net/wifi/WifiEnterpriseConfig$1;
.super Ljava/lang/Object;
.source "WifiEnterpriseConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiEnterpriseConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/wifi/WifiEnterpriseConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private readCertificate(Landroid/os/Parcel;)Ljava/security/cert/X509Certificate;
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 203
    const/4 v2, 0x0

    #@1
    .line 204
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4
    move-result v4

    #@5
    .line 205
    .local v4, "len":I
    if-lez v4, :cond_0

    #@7
    .line 207
    :try_start_0
    new-array v0, v4, [B

    #@9
    .line 208
    .local v0, "bytes":[B
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    #@c
    .line 209
    const-string/jumbo v5, "X.509"

    #@f
    invoke-static {v5}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    #@12
    move-result-object v1

    #@13
    .line 211
    .local v1, "cFactory":Ljava/security/cert/CertificateFactory;
    new-instance v5, Ljava/io/ByteArrayInputStream;

    #@15
    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@18
    .line 210
    invoke-virtual {v1, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    #@1b
    move-result-object v2

    #@1c
    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    check-cast v2, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    .line 216
    .end local v0    # "bytes":[B
    .end local v1    # "cFactory":Ljava/security/cert/CertificateFactory;
    :cond_0
    :goto_0
    return-object v2

    #@1f
    .line 212
    :catch_0
    move-exception v3

    #@20
    .line 213
    .local v3, "e":Ljava/security/cert/CertificateException;
    const/4 v2, 0x0

    #@21
    .restart local v2    # "cert":Ljava/security/cert/X509Certificate;
    goto :goto_0
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiEnterpriseConfig;
    .locals 13
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 171
    new-instance v5, Landroid/net/wifi/WifiEnterpriseConfig;

    #@2
    invoke-direct {v5}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    #@5
    .line 172
    .local v5, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v2

    #@9
    .line 173
    .local v2, "count":I
    const/4 v6, 0x0

    #@a
    .local v6, "i":I
    :goto_0
    if-ge v6, v2, :cond_0

    #@c
    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f
    move-result-object v7

    #@10
    .line 175
    .local v7, "key":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@13
    move-result-object v11

    #@14
    .line 176
    .local v11, "value":Ljava/lang/String;
    invoke-static {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->-get0(Landroid/net/wifi/WifiEnterpriseConfig;)Ljava/util/HashMap;

    #@17
    move-result-object v12

    #@18
    invoke-virtual {v12, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    .line 173
    add-int/lit8 v6, v6, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 179
    .end local v7    # "key":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiEnterpriseConfig$1;->readCertificate(Landroid/os/Parcel;)Ljava/security/cert/X509Certificate;

    #@21
    move-result-object v12

    #@22
    invoke-static {v5, v12}, Landroid/net/wifi/WifiEnterpriseConfig;->-set0(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    #@25
    .line 181
    const/4 v10, 0x0

    #@26
    .line 182
    .local v10, "userKey":Ljava/security/PrivateKey;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@29
    move-result v9

    #@2a
    .line 183
    .local v9, "len":I
    if-lez v9, :cond_1

    #@2c
    .line 185
    :try_start_0
    new-array v1, v9, [B

    #@2e
    .line 186
    .local v1, "bytes":[B
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    #@31
    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    .line 188
    .local v0, "algorithm":Ljava/lang/String;
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    #@38
    move-result-object v8

    #@39
    .line 189
    .local v8, "keyFactory":Ljava/security/KeyFactory;
    new-instance v12, Ljava/security/spec/PKCS8EncodedKeySpec;

    #@3b
    invoke-direct {v12, v1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    #@3e
    invoke-virtual {v8, v12}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    #@41
    move-result-object v10

    #@42
    .line 197
    .end local v0    # "algorithm":Ljava/lang/String;
    .end local v1    # "bytes":[B
    .end local v8    # "keyFactory":Ljava/security/KeyFactory;
    .end local v10    # "userKey":Ljava/security/PrivateKey;
    :cond_1
    :goto_1
    invoke-static {v5, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->-set2(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/security/PrivateKey;)Ljava/security/PrivateKey;

    #@45
    .line 198
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiEnterpriseConfig$1;->readCertificate(Landroid/os/Parcel;)Ljava/security/cert/X509Certificate;

    #@48
    move-result-object v12

    #@49
    invoke-static {v5, v12}, Landroid/net/wifi/WifiEnterpriseConfig;->-set1(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    #@4c
    .line 199
    return-object v5

    #@4d
    .line 192
    .restart local v10    # "userKey":Ljava/security/PrivateKey;
    :catch_0
    move-exception v4

    #@4e
    .line 193
    .local v4, "e":Ljava/security/spec/InvalidKeySpecException;
    const/4 v10, 0x0

    #@4f
    goto :goto_1

    #@50
    .line 190
    .end local v4    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_1
    move-exception v3

    #@51
    .line 191
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    const/4 v10, 0x0

    #@52
    goto :goto_1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 170
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiEnterpriseConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiEnterpriseConfig;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiEnterpriseConfig;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 220
    new-array v0, p1, [Landroid/net/wifi/WifiEnterpriseConfig;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 219
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiEnterpriseConfig$1;->newArray(I)[Landroid/net/wifi/WifiEnterpriseConfig;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
