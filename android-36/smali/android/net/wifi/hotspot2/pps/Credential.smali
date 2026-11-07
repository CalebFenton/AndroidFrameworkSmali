.class public final Landroid/net/wifi/hotspot2/pps/Credential;
.super Ljava/lang/Object;
.source "Credential.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;,
        Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;,
        Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/hotspot2/pps/Credential;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o MAX_REALM_BYTES:I = 0xfd

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Credential"


# instance fields
.field private blacklist mCaCertificates:[Ljava/security/cert/X509Certificate;

.field private greylist-max-o mCertCredential:Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

.field private greylist-max-o mCheckAaaServerCertStatus:Z

.field private greylist-max-o mClientCertificateChain:[Ljava/security/cert/X509Certificate;

.field private greylist-max-o mClientPrivateKey:Ljava/security/PrivateKey;

.field private greylist-max-o mCreationTimeInMillis:J

.field private greylist-max-o mExpirationTimeInMillis:J

.field private blacklist mMinimumTlsVersion:I

.field private greylist-max-o mRealm:Ljava/lang/String;

.field private greylist-max-o mSimCredential:Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

.field private greylist-max-o mUserCredential:Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1170
    new-instance v0, Landroid/net/wifi/hotspot2/pps/Credential$1;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Credential$1;-><init>()V

    sput-object v0, Landroid/net/wifi/hotspot2/pps/Credential;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 1002
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCreationTimeInMillis:J

    .line 83
    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mExpirationTimeInMillis:J

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    .line 125
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCheckAaaServerCertStatus:Z

    .line 472
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mUserCredential:Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    .line 638
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCertCredential:Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    .line 855
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mSimCredential:Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    .line 876
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCaCertificates:[Ljava/security/cert/X509Certificate;

    .line 923
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    .line 944
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mClientPrivateKey:Ljava/security/PrivateKey;

    .line 965
    iput v1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mMinimumTlsVersion:I

    .line 1002
    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/wifi/hotspot2/pps/Credential;)V
    .registers 4
    .param p1, "source"    # Landroid/net/wifi/hotspot2/pps/Credential;

    .line 1009
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCreationTimeInMillis:J

    .line 83
    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mExpirationTimeInMillis:J

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    .line 125
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCheckAaaServerCertStatus:Z

    .line 472
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mUserCredential:Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    .line 638
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCertCredential:Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    .line 855
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mSimCredential:Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    .line 876
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCaCertificates:[Ljava/security/cert/X509Certificate;

    .line 923
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    .line 944
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mClientPrivateKey:Ljava/security/PrivateKey;

    .line 965
    iput v1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mMinimumTlsVersion:I

    .line 1010
    if-eqz p1, :cond_80

    .line 1011
    iget-wide v0, p1, Landroid/net/wifi/hotspot2/pps/Credential;->mCreationTimeInMillis:J

    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCreationTimeInMillis:J

    .line 1012
    iget-wide v0, p1, Landroid/net/wifi/hotspot2/pps/Credential;->mExpirationTimeInMillis:J

    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mExpirationTimeInMillis:J

    .line 1013
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    .line 1014
    iget-boolean v0, p1, Landroid/net/wifi/hotspot2/pps/Credential;->mCheckAaaServerCertStatus:Z

    iput-boolean v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCheckAaaServerCertStatus:Z

    .line 1015
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Credential;->mUserCredential:Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    if-eqz v0, :cond_3c

    .line 1016
    new-instance v0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    iget-object v1, p1, Landroid/net/wifi/hotspot2/pps/Credential;->mUserCredential:Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;-><init>(Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;)V

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mUserCredential:Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    .line 1018
    :cond_3c
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Credential;->mCertCredential:Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    if-eqz v0, :cond_49

    .line 1019
    new-instance v0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    iget-object v1, p1, Landroid/net/wifi/hotspot2/pps/Credential;->mCertCredential:Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;-><init>(Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;)V

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCertCredential:Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    .line 1021
    :cond_49
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Credential;->mSimCredential:Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    if-eqz v0, :cond_56

    .line 1022
    new-instance v0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    iget-object v1, p1, Landroid/net/wifi/hotspot2/pps/Credential;->mSimCredential:Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;-><init>(Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;)V

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mSimCredential:Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    .line 1024
    :cond_56
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Credential;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_67

    .line 1025
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Credential;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    iget-object v1, p1, Landroid/net/wifi/hotspot2/pps/Credential;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    .line 1028
    :cond_67
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Credential;->mCaCertificates:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_78

    .line 1029
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Credential;->mCaCertificates:[Ljava/security/cert/X509Certificate;

    iget-object v1, p1, Landroid/net/wifi/hotspot2/pps/Credential;->mCaCertificates:[Ljava/security/cert/X509Certificate;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCaCertificates:[Ljava/security/cert/X509Certificate;

    .line 1033
    :cond_78
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Credential;->mClientPrivateKey:Ljava/security/PrivateKey;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mClientPrivateKey:Ljava/security/PrivateKey;

    .line 1034
    iget v0, p1, Landroid/net/wifi/hotspot2/pps/Credential;->mMinimumTlsVersion:I

    iput v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mMinimumTlsVersion:I

    .line 1036
    :cond_80
    return-void
.end method

.method private static greylist-max-o isPrivateKeyEquals(Ljava/security/PrivateKey;Ljava/security/PrivateKey;)Z
    .registers 6
    .param p0, "key1"    # Ljava/security/PrivateKey;
    .param p1, "key2"    # Ljava/security/PrivateKey;

    .line 1275
    const/4 v0, 0x1

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    .line 1276
    return v0

    .line 1280
    :cond_6
    const/4 v1, 0x0

    if-eqz p0, :cond_2b

    if-nez p1, :cond_c

    goto :goto_2b

    .line 1284
    :cond_c
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1285
    invoke-interface {p0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v2

    invoke-interface {p1}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_29

    goto :goto_2a

    :cond_29
    move v0, v1

    .line 1284
    :goto_2a
    return v0

    .line 1281
    :cond_2b
    :goto_2b
    return v1
.end method

.method public static greylist-max-o isX509CertificateEquals(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z
    .registers 5
    .param p0, "cert1"    # Ljava/security/cert/X509Certificate;
    .param p1, "cert2"    # Ljava/security/cert/X509Certificate;

    .line 1297
    if-nez p0, :cond_6

    if-nez p1, :cond_6

    .line 1298
    const/4 v0, 0x1

    return v0

    .line 1302
    :cond_6
    if-eqz p0, :cond_1c

    if-nez p1, :cond_b

    goto :goto_1c

    .line 1306
    :cond_b
    const/4 v0, 0x0

    .line 1308
    .local v0, "result":Z
    :try_start_c
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1
    :try_end_18
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_c .. :try_end_18} :catch_1a

    move v0, v1

    .line 1311
    goto :goto_1b

    .line 1309
    :catch_1a
    move-exception v1

    .line 1312
    :goto_1b
    return v0

    .line 1303
    .end local v0    # "result":Z
    :cond_1c
    :goto_1c
    const/4 v0, 0x0

    return v0
.end method

.method private static greylist-max-o isX509CertificatesEquals([Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;)Z
    .registers 7
    .param p0, "certs1"    # [Ljava/security/cert/X509Certificate;
    .param p1, "certs2"    # [Ljava/security/cert/X509Certificate;

    .line 1317
    const/4 v0, 0x1

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    .line 1318
    return v0

    .line 1322
    :cond_6
    const/4 v1, 0x0

    if-eqz p0, :cond_24

    if-nez p1, :cond_c

    goto :goto_24

    .line 1326
    :cond_c
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_11

    .line 1327
    return v1

    .line 1330
    :cond_11
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    array-length v3, p0

    if-ge v2, v3, :cond_23

    .line 1331
    aget-object v3, p0, v2

    aget-object v4, p1, v2

    invoke-static {v3, v4}, Landroid/net/wifi/hotspot2/pps/Credential;->isX509CertificateEquals(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 1332
    return v1

    .line 1330
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 1336
    .end local v2    # "i":I
    :cond_23
    return v0

    .line 1323
    :cond_24
    :goto_24
    return v1
.end method

.method private greylist-max-o verifyCertCredential()Z
    .registers 6

    .line 1225
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCertCredential:Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    const-string v1, "Credential"

    const/4 v2, 0x0

    if-nez v0, :cond_d

    .line 1226
    const-string v0, "Missing certificate credential"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    return v2

    .line 1229
    :cond_d
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mUserCredential:Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    if-nez v0, :cond_5c

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mSimCredential:Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    if-eqz v0, :cond_16

    goto :goto_5c

    .line 1234
    :cond_16
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCertCredential:Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->validate()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1235
    return v2

    .line 1238
    :cond_1f
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mClientPrivateKey:Ljava/security/PrivateKey;

    if-nez v0, :cond_29

    .line 1239
    const-string v0, "Missing client private key for certificate credential"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    return v2

    .line 1244
    :cond_29
    :try_start_29
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCertCredential:Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    .line 1245
    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->getCertSha256Fingerprint()[B

    move-result-object v3

    .line 1244
    invoke-static {v0, v3}, Landroid/net/wifi/hotspot2/pps/Credential;->verifySha256Fingerprint([Ljava/security/cert/X509Certificate;[B)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 1246
    const-string v0, "SHA-256 fingerprint mismatch"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_29 .. :try_end_3c} :catch_40
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_29 .. :try_end_3c} :catch_40

    .line 1247
    return v2

    .line 1252
    :cond_3d
    nop

    .line 1254
    const/4 v0, 0x1

    return v0

    .line 1249
    :catch_40
    move-exception v0

    .line 1250
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to verify SHA-256 fingerprint: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    return v2

    .line 1230
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :cond_5c
    :goto_5c
    const-string v0, "Contained more than one type of credential"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    return v2
.end method

.method private static greylist-max-o verifySha256Fingerprint([Ljava/security/cert/X509Certificate;[B)Z
    .registers 9
    .param p0, "certChain"    # [Ljava/security/cert/X509Certificate;
    .param p1, "expectedFingerprint"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 1352
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 1353
    return v0

    .line 1355
    :cond_4
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 1356
    .local v1, "digester":Ljava/security/MessageDigest;
    array-length v2, p0

    move v3, v0

    :goto_c
    if-ge v3, v2, :cond_26

    aget-object v4, p0, v3

    .line 1357
    .local v4, "certificate":Ljava/security/cert/X509Certificate;
    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 1358
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    .line 1359
    .local v5, "fingerprint":[B
    invoke-static {p1, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 1360
    const/4 v0, 0x1

    return v0

    .line 1356
    .end local v4    # "certificate":Ljava/security/cert/X509Certificate;
    .end local v5    # "fingerprint":[B
    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 1363
    :cond_26
    return v0
.end method

.method private greylist-max-o verifySimCredential()Z
    .registers 4

    .line 1263
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mSimCredential:Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    const/4 v1, 0x0

    const-string v2, "Credential"

    if-nez v0, :cond_d

    .line 1264
    const-string v0, "Missing SIM credential"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    return v1

    .line 1267
    :cond_d
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mUserCredential:Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    if-nez v0, :cond_1d

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCertCredential:Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    if-eqz v0, :cond_16

    goto :goto_1d

    .line 1271
    :cond_16
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mSimCredential:Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->validate()Z

    move-result v0

    return v0

    .line 1268
    :cond_1d
    :goto_1d
    const-string v0, "Contained more than one type of credential"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    return v1
.end method

.method private greylist-max-o verifyUserCredential()Z
    .registers 4

    .line 1202
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mUserCredential:Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    const-string v1, "Credential"

    const/4 v2, 0x0

    if-nez v0, :cond_d

    .line 1203
    const-string v0, "Missing user credential"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    return v2

    .line 1206
    :cond_d
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCertCredential:Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    if-nez v0, :cond_21

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mSimCredential:Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    if-eqz v0, :cond_16

    goto :goto_21

    .line 1210
    :cond_16
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mUserCredential:Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->validate()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1211
    return v2

    .line 1214
    :cond_1f
    const/4 v0, 0x1

    return v0

    .line 1207
    :cond_21
    :goto_21
    const-string v0, "Contained more than one type of credential"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    return v2
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 1040
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "thatObject"    # Ljava/lang/Object;

    .line 1060
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1061
    return v0

    .line 1063
    :cond_4
    instance-of v1, p1, Landroid/net/wifi/hotspot2/pps/Credential;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 1064
    return v2

    .line 1067
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/hotspot2/pps/Credential;

    .line 1068
    .local v1, "that":Landroid/net/wifi/hotspot2/pps/Credential;
    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8b

    iget-wide v3, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCreationTimeInMillis:J

    iget-wide v5, v1, Landroid/net/wifi/hotspot2/pps/Credential;->mCreationTimeInMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_8b

    iget-wide v3, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mExpirationTimeInMillis:J

    iget-wide v5, v1, Landroid/net/wifi/hotspot2/pps/Credential;->mExpirationTimeInMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_8b

    iget-boolean v3, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCheckAaaServerCertStatus:Z

    iget-boolean v4, v1, Landroid/net/wifi/hotspot2/pps/Credential;->mCheckAaaServerCertStatus:Z

    if-ne v3, v4, :cond_8b

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mUserCredential:Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    if-nez v3, :cond_36

    iget-object v3, v1, Landroid/net/wifi/hotspot2/pps/Credential;->mUserCredential:Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    if-nez v3, :cond_8b

    goto :goto_40

    :cond_36
    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mUserCredential:Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/Credential;->mUserCredential:Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    .line 1073
    invoke-virtual {v3, v4}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8b

    :goto_40
    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCertCredential:Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    if-nez v3, :cond_49

    iget-object v3, v1, Landroid/net/wifi/hotspot2/pps/Credential;->mCertCredential:Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    if-nez v3, :cond_8b

    goto :goto_53

    :cond_49
    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCertCredential:Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/Credential;->mCertCredential:Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    .line 1075
    invoke-virtual {v3, v4}, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8b

    :goto_53
    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mSimCredential:Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    if-nez v3, :cond_5c

    iget-object v3, v1, Landroid/net/wifi/hotspot2/pps/Credential;->mSimCredential:Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    if-nez v3, :cond_8b

    goto :goto_66

    :cond_5c
    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mSimCredential:Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/Credential;->mSimCredential:Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    .line 1077
    invoke-virtual {v3, v4}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8b

    :goto_66
    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCaCertificates:[Ljava/security/cert/X509Certificate;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/Credential;->mCaCertificates:[Ljava/security/cert/X509Certificate;

    .line 1078
    invoke-static {v3, v4}, Landroid/net/wifi/hotspot2/pps/Credential;->isX509CertificatesEquals([Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-eqz v3, :cond_8b

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/Credential;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    .line 1079
    invoke-static {v3, v4}, Landroid/net/wifi/hotspot2/pps/Credential;->isX509CertificatesEquals([Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-eqz v3, :cond_8b

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mClientPrivateKey:Ljava/security/PrivateKey;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/Credential;->mClientPrivateKey:Ljava/security/PrivateKey;

    .line 1080
    invoke-static {v3, v4}, Landroid/net/wifi/hotspot2/pps/Credential;->isPrivateKeyEquals(Ljava/security/PrivateKey;Ljava/security/PrivateKey;)Z

    move-result v3

    if-eqz v3, :cond_8b

    iget v3, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mMinimumTlsVersion:I

    iget v4, v1, Landroid/net/wifi/hotspot2/pps/Credential;->mMinimumTlsVersion:I

    if-ne v3, v4, :cond_8b

    goto :goto_8c

    :cond_8b
    move v0, v2

    .line 1068
    :goto_8c
    return v0
.end method

.method public whitelist getCaCertificate()Ljava/security/cert/X509Certificate;
    .registers 3

    .line 907
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCaCertificates:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCaCertificates:[Ljava/security/cert/X509Certificate;

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_b

    goto :goto_11

    :cond_b
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCaCertificates:[Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x0

    :goto_12
    return-object v0
.end method

.method public blacklist getCaCertificates()[Ljava/security/cert/X509Certificate;
    .registers 2

    .line 917
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCaCertificates:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public whitelist getCertCredential()Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;
    .registers 2

    .line 653
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCertCredential:Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    return-object v0
.end method

.method public greylist-max-o getCheckAaaServerCertStatus()Z
    .registers 2

    .line 136
    iget-boolean v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCheckAaaServerCertStatus:Z

    return v0
.end method

.method public whitelist getClientCertificateChain()[Ljava/security/cert/X509Certificate;
    .registers 2

    .line 938
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public whitelist getClientPrivateKey()Ljava/security/PrivateKey;
    .registers 2

    .line 959
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mClientPrivateKey:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public greylist-max-o getCreationTimeInMillis()J
    .registers 3

    .line 75
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCreationTimeInMillis:J

    return-wide v0
.end method

.method public greylist-max-o getExpirationTimeInMillis()J
    .registers 3

    .line 94
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mExpirationTimeInMillis:J

    return-wide v0
.end method

.method public whitelist getMinimumTlsVersion()I
    .registers 2

    .line 996
    iget v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mMinimumTlsVersion:I

    return v0
.end method

.method public whitelist getRealm()Ljava/lang/String;
    .registers 2

    .line 117
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSimCredential()Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;
    .registers 2

    .line 870
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mSimCredential:Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    return-object v0
.end method

.method public blacklist getUniqueId()I
    .registers 5

    .line 1100
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mUserCredential:Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mUserCredential:Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->getUniqueId()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCertCredential:Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    iget-object v2, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mSimCredential:Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist getUserCredential()Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;
    .registers 2

    .line 487
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mUserCredential:Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 14

    .line 1086
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCreationTimeInMillis:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mExpirationTimeInMillis:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    iget-boolean v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCheckAaaServerCertStatus:Z

    .line 1087
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-object v6, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mUserCredential:Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    iget-object v7, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCertCredential:Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    iget-object v8, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mSimCredential:Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    iget-object v9, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mClientPrivateKey:Ljava/security/PrivateKey;

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCaCertificates:[Ljava/security/cert/X509Certificate;

    .line 1088
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    .line 1089
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mMinimumTlsVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array/range {v2 .. v12}, [Ljava/lang/Object;

    move-result-object v0

    .line 1086
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist setCaCertificate(Ljava/security/cert/X509Certificate;)V
    .registers 4
    .param p1, "caCertificate"    # Ljava/security/cert/X509Certificate;

    .line 884
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCaCertificates:[Ljava/security/cert/X509Certificate;

    .line 885
    if-eqz p1, :cond_d

    .line 886
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCaCertificates:[Ljava/security/cert/X509Certificate;

    .line 888
    :cond_d
    return-void
.end method

.method public blacklist setCaCertificates([Ljava/security/cert/X509Certificate;)V
    .registers 2
    .param p1, "caCertificates"    # [Ljava/security/cert/X509Certificate;

    .line 897
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCaCertificates:[Ljava/security/cert/X509Certificate;

    .line 898
    return-void
.end method

.method public whitelist setCertCredential(Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;)V
    .registers 2
    .param p1, "certCredential"    # Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    .line 645
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCertCredential:Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    .line 646
    return-void
.end method

.method public greylist-max-o setCheckAaaServerCertStatus(Z)V
    .registers 2
    .param p1, "checkAaaServerCertStatus"    # Z

    .line 130
    iput-boolean p1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCheckAaaServerCertStatus:Z

    .line 131
    return-void
.end method

.method public whitelist setClientCertificateChain([Ljava/security/cert/X509Certificate;)V
    .registers 2
    .param p1, "certificateChain"    # [Ljava/security/cert/X509Certificate;

    .line 930
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    .line 931
    return-void
.end method

.method public whitelist setClientPrivateKey(Ljava/security/PrivateKey;)V
    .registers 2
    .param p1, "clientPrivateKey"    # Ljava/security/PrivateKey;

    .line 951
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mClientPrivateKey:Ljava/security/PrivateKey;

    .line 952
    return-void
.end method

.method public greylist-max-o setCreationTimeInMillis(J)V
    .registers 3
    .param p1, "creationTimeInMillis"    # J

    .line 69
    iput-wide p1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCreationTimeInMillis:J

    .line 70
    return-void
.end method

.method public greylist-max-o setExpirationTimeInMillis(J)V
    .registers 3
    .param p1, "expirationTimeInMillis"    # J

    .line 88
    iput-wide p1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mExpirationTimeInMillis:J

    .line 89
    return-void
.end method

.method public whitelist setMinimumTlsVersion(I)V
    .registers 5
    .param p1, "tlsVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 982
    if-ltz p1, :cond_8

    const/4 v0, 0x3

    if-gt p1, v0, :cond_8

    .line 987
    iput p1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mMinimumTlsVersion:I

    .line 988
    return-void

    .line 984
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid TLS version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setRealm(Ljava/lang/String;)V
    .registers 2
    .param p1, "realm"    # Ljava/lang/String;

    .line 109
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public whitelist setSimCredential(Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;)V
    .registers 2
    .param p1, "simCredential"    # Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    .line 862
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mSimCredential:Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    .line 863
    return-void
.end method

.method public whitelist setUserCredential(Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;)V
    .registers 2
    .param p1, "userCredential"    # Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    .line 479
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mUserCredential:Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    .line 480
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 10

    .line 1106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1107
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "Realm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1108
    const-string v1, "CreationTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCreationTimeInMillis:J

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v3, v5

    const-string v4, "Not specified"

    if-eqz v3, :cond_2e

    .line 1109
    new-instance v3, Ljava/util/Date;

    iget-wide v7, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCreationTimeInMillis:J

    invoke-direct {v3, v7, v8}, Ljava/util/Date;-><init>(J)V

    goto :goto_2f

    :cond_2e
    move-object v3, v4

    .line 1108
    :goto_2f
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1110
    const-string v1, "ExpirationTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v7, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mExpirationTimeInMillis:J

    cmp-long v3, v7, v5

    if-eqz v3, :cond_4a

    .line 1111
    new-instance v4, Ljava/util/Date;

    iget-wide v5, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mExpirationTimeInMillis:J

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    goto :goto_4b

    :cond_4a
    nop

    .line 1110
    :goto_4b
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1112
    const-string v1, "CheckAAAServerStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCheckAaaServerCertStatus:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1113
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mUserCredential:Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    if-eqz v1, :cond_74

    .line 1114
    const-string v1, "UserCredential Begin ---\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1115
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mUserCredential:Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1116
    const-string v1, "UserCredential End ---\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1118
    :cond_74
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCertCredential:Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    if-eqz v1, :cond_87

    .line 1119
    const-string v1, "CertificateCredential Begin ---\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1120
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCertCredential:Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1121
    const-string v1, "CertificateCredential End ---\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1123
    :cond_87
    const-string v1, "MinimumTlsVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mMinimumTlsVersion:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1124
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mSimCredential:Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    if-eqz v1, :cond_a9

    .line 1125
    const-string v1, "SIMCredential Begin ---\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1126
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mSimCredential:Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1127
    const-string v1, "SIMCredential End ---\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1129
    :cond_a9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o validate()Z
    .registers 6

    .line 1139
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Credential"

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    .line 1140
    const-string v0, "Missing realm"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    return v2

    .line 1143
    :cond_11
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    const/16 v3, 0xfd

    if-le v0, v3, :cond_3e

    .line 1144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "realm exceeding maximum length: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 1145
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1144
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    return v2

    .line 1150
    :cond_3e
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mUserCredential:Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    if-eqz v0, :cond_49

    .line 1151
    invoke-direct {p0}, Landroid/net/wifi/hotspot2/pps/Credential;->verifyUserCredential()Z

    move-result v0

    if-nez v0, :cond_5f

    .line 1152
    return v2

    .line 1154
    :cond_49
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCertCredential:Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    if-eqz v0, :cond_54

    .line 1155
    invoke-direct {p0}, Landroid/net/wifi/hotspot2/pps/Credential;->verifyCertCredential()Z

    move-result v0

    if-nez v0, :cond_5f

    .line 1156
    return v2

    .line 1158
    :cond_54
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mSimCredential:Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    if-eqz v0, :cond_61

    .line 1159
    invoke-direct {p0}, Landroid/net/wifi/hotspot2/pps/Credential;->verifySimCredential()Z

    move-result v0

    if-nez v0, :cond_5f

    .line 1160
    return v2

    .line 1167
    :cond_5f
    const/4 v0, 0x1

    return v0

    .line 1163
    :cond_61
    const-string v0, "Missing required credential"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    return v2
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1045
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCreationTimeInMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1046
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mExpirationTimeInMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1047
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1048
    iget-boolean v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCheckAaaServerCertStatus:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1049
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mUserCredential:Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1050
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCertCredential:Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1051
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mSimCredential:Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1052
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCaCertificates:[Ljava/security/cert/X509Certificate;

    invoke-static {p1, v0}, Landroid/net/wifi/ParcelUtil;->writeCertificates(Landroid/os/Parcel;[Ljava/security/cert/X509Certificate;)V

    .line 1053
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    invoke-static {p1, v0}, Landroid/net/wifi/ParcelUtil;->writeCertificates(Landroid/os/Parcel;[Ljava/security/cert/X509Certificate;)V

    .line 1054
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mClientPrivateKey:Ljava/security/PrivateKey;

    invoke-static {p1, v0}, Landroid/net/wifi/ParcelUtil;->writePrivateKey(Landroid/os/Parcel;Ljava/security/PrivateKey;)V

    .line 1055
    iget v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mMinimumTlsVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1056
    return-void
.end method
