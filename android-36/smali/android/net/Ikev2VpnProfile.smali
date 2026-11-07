.class public final Landroid/net/Ikev2VpnProfile;
.super Landroid/net/PlatformVpnProfile;
.source "Ikev2VpnProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/Ikev2VpnProfile$Builder;
    }
.end annotation


# static fields
.field private static final blacklist ANDROID_KEYSTORE_PROVIDER:Ljava/lang/String; = "AndroidKeyStore"

.field public static final blacklist DEFAULT_ALGORITHMS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist EMPTY_CERT:Ljava/lang/String; = ""

.field private static final blacklist MISSING_PARAM_MSG_TMPL:Ljava/lang/String; = "Required parameter was not provided: %s"

.field public static final blacklist PREFIX_INLINE:Ljava/lang/String; = "INLINE:"

.field public static final blacklist PREFIX_KEYSTORE_ALIAS:Ljava/lang/String; = "KEYSTORE_ALIAS:"

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mAllowedAlgorithms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAutomaticIpVersionSelectionEnabled:Z

.field private final blacklist mAutomaticNattKeepaliveTimerEnabled:Z

.field private final blacklist mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

.field private final blacklist mIsBypassable:Z

.field private final blacklist mIsMetered:Z

.field private final blacklist mIsRestrictedToTestNetworks:Z

.field private final blacklist mMaxMtu:I

.field private final blacklist mPassword:Ljava/lang/String;

.field private final blacklist mPresharedKey:[B

.field private final blacklist mProxyInfo:Landroid/net/ProxyInfo;

.field private final blacklist mRsaPrivateKey:Ljava/security/PrivateKey;

.field private final blacklist mServerAddr:Ljava/lang/String;

.field private final blacklist mServerRootCaCert:Ljava/security/cert/X509Certificate;

.field private final blacklist mUserCert:Ljava/security/cert/X509Certificate;

.field private final blacklist mUserIdentity:Ljava/lang/String;

.field private final blacklist mUsername:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcheckBuilderSetter(ZLjava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/net/Ikev2VpnProfile;->checkBuilderSetter(ZLjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smcheckCert(Ljava/security/cert/X509Certificate;)V
    .registers 1

    invoke-static {p0}, Landroid/net/Ikev2VpnProfile;->checkCert(Ljava/security/cert/X509Certificate;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smcheckNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/net/Ikev2VpnProfile;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smvalidateAllowedAlgorithms(Ljava/util/List;)V
    .registers 1

    invoke-static {p0}, Landroid/net/Ikev2VpnProfile;->validateAllowedAlgorithms(Ljava/util/List;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 83
    const-class v0, Landroid/net/Ikev2VpnProfile;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/Ikev2VpnProfile;->TAG:Ljava/lang/String;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v0, "algorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "cbc(aes)"

    invoke-static {v0, v1}, Landroid/net/Ikev2VpnProfile;->addAlgorithmIfSupported(Ljava/util/List;Ljava/lang/String;)V

    .line 105
    const-string/jumbo v1, "rfc3686(ctr(aes))"

    invoke-static {v0, v1}, Landroid/net/Ikev2VpnProfile;->addAlgorithmIfSupported(Ljava/util/List;Ljava/lang/String;)V

    .line 106
    const-string/jumbo v1, "hmac(sha256)"

    invoke-static {v0, v1}, Landroid/net/Ikev2VpnProfile;->addAlgorithmIfSupported(Ljava/util/List;Ljava/lang/String;)V

    .line 107
    const-string/jumbo v1, "hmac(sha384)"

    invoke-static {v0, v1}, Landroid/net/Ikev2VpnProfile;->addAlgorithmIfSupported(Ljava/util/List;Ljava/lang/String;)V

    .line 108
    const-string/jumbo v1, "hmac(sha512)"

    invoke-static {v0, v1}, Landroid/net/Ikev2VpnProfile;->addAlgorithmIfSupported(Ljava/util/List;Ljava/lang/String;)V

    .line 109
    const-string/jumbo v1, "xcbc(aes)"

    invoke-static {v0, v1}, Landroid/net/Ikev2VpnProfile;->addAlgorithmIfSupported(Ljava/util/List;Ljava/lang/String;)V

    .line 110
    const-string v1, "cmac(aes)"

    invoke-static {v0, v1}, Landroid/net/Ikev2VpnProfile;->addAlgorithmIfSupported(Ljava/util/List;Ljava/lang/String;)V

    .line 111
    const-string/jumbo v1, "rfc4106(gcm(aes))"

    invoke-static {v0, v1}, Landroid/net/Ikev2VpnProfile;->addAlgorithmIfSupported(Ljava/util/List;Ljava/lang/String;)V

    .line 112
    const-string/jumbo v1, "rfc7539esp(chacha20,poly1305)"

    invoke-static {v0, v1}, Landroid/net/Ikev2VpnProfile;->addAlgorithmIfSupported(Ljava/util/List;Ljava/lang/String;)V

    .line 114
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Landroid/net/Ikev2VpnProfile;->DEFAULT_ALGORITHMS:Ljava/util/List;

    .line 115
    .end local v0    # "algorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;[BLjava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Landroid/net/ProxyInfo;Ljava/util/List;ZZIZZZLandroid/net/ipsec/ike/IkeTunnelConnectionParams;ZZ)V
    .registers 37
    .param p1, "type"    # I
    .param p2, "serverAddr"    # Ljava/lang/String;
    .param p3, "userIdentity"    # Ljava/lang/String;
    .param p4, "presharedKey"    # [B
    .param p5, "serverRootCaCert"    # Ljava/security/cert/X509Certificate;
    .param p6, "username"    # Ljava/lang/String;
    .param p7, "password"    # Ljava/lang/String;
    .param p8, "rsaPrivateKey"    # Ljava/security/PrivateKey;
    .param p9, "userCert"    # Ljava/security/cert/X509Certificate;
    .param p10, "proxyInfo"    # Landroid/net/ProxyInfo;
    .param p12, "isBypassable"    # Z
    .param p13, "isMetered"    # Z
    .param p14, "maxMtu"    # I
    .param p15, "restrictToTestNetworks"    # Z
    .param p16, "excludeLocalRoutes"    # Z
    .param p17, "requiresInternetValidation"    # Z
    .param p18, "ikeTunConnParams"    # Landroid/net/ipsec/ike/IkeTunnelConnectionParams;
    .param p19, "automaticNattKeepaliveTimerEnabled"    # Z
    .param p20, "automaticIpVersionSelectionEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/security/PrivateKey;",
            "Ljava/security/cert/X509Certificate;",
            "Landroid/net/ProxyInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZIZZZ",
            "Landroid/net/ipsec/ike/IkeTunnelConnectionParams;",
            "ZZ)V"
        }
    .end annotation

    .line 165
    .local p11, "allowedAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p10

    move-object/from16 v3, p11

    move/from16 v4, p12

    move/from16 v5, p16

    move/from16 v6, p1

    move/from16 v7, p17

    invoke-direct {v0, v6, v5, v7}, Landroid/net/PlatformVpnProfile;-><init>(IZZ)V

    .line 167
    const-string v8, "Allowed Algorithms"

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, "Required parameter was not provided: %s"

    invoke-static {v3, v9, v8}, Landroid/net/Ikev2VpnProfile;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    move-object/from16 v8, p2

    iput-object v8, v0, Landroid/net/Ikev2VpnProfile;->mServerAddr:Ljava/lang/String;

    .line 170
    move-object/from16 v9, p3

    iput-object v9, v0, Landroid/net/Ikev2VpnProfile;->mUserIdentity:Ljava/lang/String;

    .line 171
    nop

    .line 172
    const/4 v10, 0x0

    if-nez v1, :cond_2c

    move-object v11, v10

    goto :goto_31

    :cond_2c
    array-length v11, v1

    invoke-static {v1, v11}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v11

    :goto_31
    iput-object v11, v0, Landroid/net/Ikev2VpnProfile;->mPresharedKey:[B

    .line 173
    move-object/from16 v11, p5

    iput-object v11, v0, Landroid/net/Ikev2VpnProfile;->mServerRootCaCert:Ljava/security/cert/X509Certificate;

    .line 174
    move-object/from16 v12, p6

    iput-object v12, v0, Landroid/net/Ikev2VpnProfile;->mUsername:Ljava/lang/String;

    .line 175
    move-object/from16 v13, p7

    iput-object v13, v0, Landroid/net/Ikev2VpnProfile;->mPassword:Ljava/lang/String;

    .line 176
    move-object/from16 v14, p8

    iput-object v14, v0, Landroid/net/Ikev2VpnProfile;->mRsaPrivateKey:Ljava/security/PrivateKey;

    .line 177
    move-object/from16 v15, p9

    iput-object v15, v0, Landroid/net/Ikev2VpnProfile;->mUserCert:Ljava/security/cert/X509Certificate;

    .line 178
    if-nez v2, :cond_4a

    goto :goto_4f

    :cond_4a
    new-instance v10, Landroid/net/ProxyInfo;

    invoke-direct {v10, v2}, Landroid/net/ProxyInfo;-><init>(Landroid/net/ProxyInfo;)V

    :goto_4f
    iput-object v10, v0, Landroid/net/Ikev2VpnProfile;->mProxyInfo:Landroid/net/ProxyInfo;

    .line 181
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v10}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    iput-object v10, v0, Landroid/net/Ikev2VpnProfile;->mAllowedAlgorithms:Ljava/util/List;

    .line 182
    if-eqz v5, :cond_69

    if-eqz v4, :cond_61

    goto :goto_69

    .line 183
    :cond_61
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v1, "Vpn must be bypassable if excludeLocalRoutes is set"

    invoke-direct {v10, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 187
    :cond_69
    :goto_69
    iput-boolean v4, v0, Landroid/net/Ikev2VpnProfile;->mIsBypassable:Z

    .line 188
    move/from16 v1, p13

    iput-boolean v1, v0, Landroid/net/Ikev2VpnProfile;->mIsMetered:Z

    .line 189
    move/from16 v10, p14

    iput v10, v0, Landroid/net/Ikev2VpnProfile;->mMaxMtu:I

    .line 190
    move/from16 v1, p15

    iput-boolean v1, v0, Landroid/net/Ikev2VpnProfile;->mIsRestrictedToTestNetworks:Z

    .line 191
    move-object/from16 v1, p18

    iput-object v1, v0, Landroid/net/Ikev2VpnProfile;->mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    .line 192
    move/from16 v1, p19

    iput-boolean v1, v0, Landroid/net/Ikev2VpnProfile;->mAutomaticNattKeepaliveTimerEnabled:Z

    .line 193
    move/from16 v1, p20

    iput-boolean v1, v0, Landroid/net/Ikev2VpnProfile;->mAutomaticIpVersionSelectionEnabled:Z

    .line 195
    invoke-direct {v0}, Landroid/net/Ikev2VpnProfile;->validate()V

    .line 196
    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;[BLjava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Landroid/net/ProxyInfo;Ljava/util/List;ZZIZZZLandroid/net/ipsec/ike/IkeTunnelConnectionParams;ZZLandroid/net/Ikev2VpnProfile-IA;)V
    .registers 22

    invoke-direct/range {p0 .. p20}, Landroid/net/Ikev2VpnProfile;-><init>(ILjava/lang/String;Ljava/lang/String;[BLjava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Landroid/net/ProxyInfo;Ljava/util/List;ZZIZZZLandroid/net/ipsec/ike/IkeTunnelConnectionParams;ZZ)V

    return-void
.end method

.method private static blacklist addAlgorithmIfSupported(Ljava/util/List;Ljava/lang/String;)V
    .registers 3
    .param p1, "ipSecAlgoName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 97
    .local p0, "algorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/net/IpSecAlgorithm;->getSupportedAlgorithms()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 98
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_d
    return-void
.end method

.method private static blacklist certificateFromPemString(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .registers 4
    .param p0, "certStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 693
    const/4 v0, 0x0

    if-eqz p0, :cond_2d

    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_2d

    .line 698
    :cond_c
    :try_start_c
    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 699
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v1}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;

    move-result-object v1

    .line 700
    .local v1, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1d

    :goto_1c
    goto :goto_25

    :cond_1d
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_24} :catch_26

    goto :goto_1c

    :goto_25
    return-object v0

    .line 701
    .end local v1    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :catch_26
    move-exception v0

    .line 702
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 694
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2d
    :goto_2d
    return-object v0
.end method

.method public static blacklist certificateToPemString(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .registers 4
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 677
    if-nez p0, :cond_5

    .line 678
    const-string v0, ""

    return-object v0

    .line 682
    :cond_5
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/security/cert/Certificate;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method private static blacklist checkBuilderSetter(ZLjava/lang/String;)V
    .registers 5
    .param p0, "constructedFromIkeTunConParams"    # Z
    .param p1, "field"    # Ljava/lang/String;

    .line 745
    if-nez p0, :cond_3

    .line 749
    return-void

    .line 746
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can\'t be set with IkeTunnelConnectionParams builder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist checkCert(Ljava/security/cert/X509Certificate;)V
    .registers 4
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    .line 732
    :try_start_0
    invoke-static {p0}, Landroid/net/Ikev2VpnProfile;->certificateToPemString(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    .line 735
    nop

    .line 736
    return-void

    .line 733
    :catch_5
    move-exception v0

    .line 734
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Certificate could not be encoded"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static varargs blacklist checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "messageTemplate"    # Ljava/lang/String;
    .param p2, "messageArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 740
    .local p0, "reference":Ljava/lang/Object;, "TT;"
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist decodeFromIpsecSecret(Ljava/lang/String;)[B
    .registers 3
    .param p0, "encoded"    # Ljava/lang/String;

    .line 716
    const-string v0, "encoded"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Required parameter was not provided: %s"

    invoke-static {p0, v1, v0}, Landroid/net/Ikev2VpnProfile;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static blacklist encodeForIpsecSecret([B)Ljava/lang/String;
    .registers 3
    .param p0, "secret"    # [B

    .line 709
    const-string/jumbo v0, "secret"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Required parameter was not provided: %s"

    invoke-static {p0, v1, v0}, Landroid/net/Ikev2VpnProfile;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist fromVpnProfile(Lcom/android/internal/net/VpnProfile;)Landroid/net/Ikev2VpnProfile;
    .registers 5
    .param p0, "profile"    # Lcom/android/internal/net/VpnProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 573
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ikeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    if-nez v0, :cond_82

    .line 574
    new-instance v0, Landroid/net/Ikev2VpnProfile$Builder;

    iget-object v1, p0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/net/Ikev2VpnProfile$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    .local v0, "builder":Landroid/net/Ikev2VpnProfile$Builder;
    invoke-virtual {p0}, Lcom/android/internal/net/VpnProfile;->getAllowedAlgorithms()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Ikev2VpnProfile$Builder;->setAllowedAlgorithms(Ljava/util/List;)Landroid/net/Ikev2VpnProfile$Builder;

    .line 577
    iget v1, p0, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v1, :pswitch_data_d6

    .line 606
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid auth method set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 589
    :pswitch_21
    iget-object v1, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    const-string v2, "KEYSTORE_ALIAS:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 590
    iget-object v1, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 591
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 592
    .local v1, "alias":Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Ikev2VpnProfile;->getPrivateKeyFromAndroidKeystore(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v1

    .line 593
    .local v1, "key":Ljava/security/PrivateKey;
    goto :goto_52

    .end local v1    # "key":Ljava/security/PrivateKey;
    :cond_3a
    iget-object v1, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    const-string v2, "INLINE:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 594
    iget-object v1, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Ikev2VpnProfile;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v1

    .line 599
    .restart local v1    # "key":Ljava/security/PrivateKey;
    :goto_52
    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 600
    invoke-static {v2}, Landroid/net/Ikev2VpnProfile;->certificateFromPemString(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 601
    .local v2, "userCert":Ljava/security/cert/X509Certificate;
    iget-object v3, p0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 602
    invoke-static {v3}, Landroid/net/Ikev2VpnProfile;->certificateFromPemString(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v3

    .line 603
    .local v3, "serverRootCa":Ljava/security/cert/X509Certificate;
    invoke-virtual {v0, v2, v1, v3}, Landroid/net/Ikev2VpnProfile$Builder;->setAuthDigitalSignature(Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;)Landroid/net/Ikev2VpnProfile$Builder;

    .line 604
    goto :goto_89

    .line 596
    .end local v1    # "key":Ljava/security/PrivateKey;
    .end local v2    # "userCert":Ljava/security/cert/X509Certificate;
    .end local v3    # "serverRootCa":Ljava/security/cert/X509Certificate;
    :cond_62
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid RSA private key prefix"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 585
    :pswitch_6a
    iget-object v1, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Ikev2VpnProfile;->decodeFromIpsecSecret(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Ikev2VpnProfile$Builder;->setAuthPsk([B)Landroid/net/Ikev2VpnProfile$Builder;

    .line 586
    goto :goto_89

    .line 579
    :pswitch_74
    iget-object v1, p0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 582
    invoke-static {v3}, Landroid/net/Ikev2VpnProfile;->certificateFromPemString(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v3

    .line 579
    invoke-virtual {v0, v1, v2, v3}, Landroid/net/Ikev2VpnProfile$Builder;->setAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/security/cert/X509Certificate;)Landroid/net/Ikev2VpnProfile$Builder;

    .line 583
    goto :goto_89

    .line 609
    .end local v0    # "builder":Landroid/net/Ikev2VpnProfile$Builder;
    :cond_82
    new-instance v0, Landroid/net/Ikev2VpnProfile$Builder;

    iget-object v1, p0, Lcom/android/internal/net/VpnProfile;->ikeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    invoke-direct {v0, v1}, Landroid/net/Ikev2VpnProfile$Builder;-><init>(Landroid/net/ipsec/ike/IkeTunnelConnectionParams;)V

    .line 612
    .restart local v0    # "builder":Landroid/net/Ikev2VpnProfile$Builder;
    :goto_89
    iget-object v1, p0, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    invoke-virtual {v0, v1}, Landroid/net/Ikev2VpnProfile$Builder;->setProxy(Landroid/net/ProxyInfo;)Landroid/net/Ikev2VpnProfile$Builder;

    .line 613
    iget-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->isBypassable:Z

    invoke-virtual {v0, v1}, Landroid/net/Ikev2VpnProfile$Builder;->setBypassable(Z)Landroid/net/Ikev2VpnProfile$Builder;

    .line 614
    iget-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->isMetered:Z

    invoke-virtual {v0, v1}, Landroid/net/Ikev2VpnProfile$Builder;->setMetered(Z)Landroid/net/Ikev2VpnProfile$Builder;

    .line 615
    iget v1, p0, Lcom/android/internal/net/VpnProfile;->maxMtu:I

    invoke-virtual {v0, v1}, Landroid/net/Ikev2VpnProfile$Builder;->setMaxMtu(I)Landroid/net/Ikev2VpnProfile$Builder;

    .line 616
    iget-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->isRestrictedToTestNetworks:Z

    if-eqz v1, :cond_a4

    .line 617
    invoke-virtual {v0}, Landroid/net/Ikev2VpnProfile$Builder;->restrictToTestNetworks()Landroid/net/Ikev2VpnProfile$Builder;

    .line 620
    :cond_a4
    iget-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->excludeLocalRoutes:Z

    if-eqz v1, :cond_b3

    iget-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->isBypassable:Z

    if-nez v1, :cond_b3

    .line 621
    sget-object v1, Landroid/net/Ikev2VpnProfile;->TAG:Ljava/lang/String;

    const-string v2, "ExcludeLocalRoutes should only be set in the bypassable VPN"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    :cond_b3
    iget-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->excludeLocalRoutes:Z

    if-eqz v1, :cond_bd

    iget-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->isBypassable:Z

    if-eqz v1, :cond_bd

    const/4 v1, 0x1

    goto :goto_be

    :cond_bd
    const/4 v1, 0x0

    :goto_be
    invoke-virtual {v0, v1}, Landroid/net/Ikev2VpnProfile$Builder;->setLocalRoutesExcluded(Z)Landroid/net/Ikev2VpnProfile$Builder;

    .line 625
    iget-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->requiresInternetValidation:Z

    invoke-virtual {v0, v1}, Landroid/net/Ikev2VpnProfile$Builder;->setRequiresInternetValidation(Z)Landroid/net/Ikev2VpnProfile$Builder;

    .line 627
    iget-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->automaticNattKeepaliveTimerEnabled:Z

    invoke-virtual {v0, v1}, Landroid/net/Ikev2VpnProfile$Builder;->setAutomaticNattKeepaliveTimerEnabled(Z)Landroid/net/Ikev2VpnProfile$Builder;

    .line 628
    iget-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->automaticIpVersionSelectionEnabled:Z

    invoke-virtual {v0, v1}, Landroid/net/Ikev2VpnProfile$Builder;->setAutomaticIpVersionSelectionEnabled(Z)Landroid/net/Ikev2VpnProfile$Builder;

    .line 630
    invoke-virtual {v0}, Landroid/net/Ikev2VpnProfile$Builder;->build()Landroid/net/Ikev2VpnProfile;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_d6
    .packed-switch 0x6
        :pswitch_74
        :pswitch_6a
        :pswitch_21
    .end packed-switch
.end method

.method private static blacklist getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .registers 4
    .param p0, "keyStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 724
    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 725
    invoke-static {p0}, Landroid/net/Ikev2VpnProfile;->decodeFromIpsecSecret(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 726
    .local v0, "privateKeySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    const-string v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 727
    .local v1, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v1, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist getPrivateKeyFromAndroidKeystore(Ljava/lang/String;)Ljava/security/PrivateKey;
    .registers 5
    .param p0, "alias"    # Ljava/lang/String;

    .line 549
    :try_start_0
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 550
    .local v0, "keystore":Ljava/security/KeyStore;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 551
    invoke-virtual {v0, p0, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v1

    .line 552
    .local v1, "key":Ljava/security/Key;
    instance-of v2, v1, Ljava/security/PrivateKey;

    if-eqz v2, :cond_16

    .line 556
    move-object v2, v1

    check-cast v2, Ljava/security/PrivateKey;

    return-object v2

    .line 553
    :cond_16
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unexpected key type returned from android keystore."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "alias":Ljava/lang/String;
    throw v2
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1e

    .line 557
    .end local v0    # "keystore":Ljava/security/KeyStore;
    .end local v1    # "key":Ljava/security/Key;
    .restart local p0    # "alias":Ljava/lang/String;
    :catch_1e
    move-exception v0

    .line 558
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to load key from android keystore."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist getUserIdentityFromIkeSession(Landroid/net/ipsec/ike/IkeSessionParams;)Ljava/lang/String;
    .registers 5
    .param p0, "params"    # Landroid/net/ipsec/ike/IkeSessionParams;

    .line 753
    invoke-virtual {p0}, Landroid/net/ipsec/ike/IkeSessionParams;->getLocalIdentification()Landroid/net/ipsec/ike/IkeIdentification;

    move-result-object v0

    .line 755
    .local v0, "ident":Landroid/net/ipsec/ike/IkeIdentification;
    instance-of v1, v0, Landroid/net/ipsec/ike/IkeKeyIdIdentification;

    if-eqz v1, :cond_26

    .line 756
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    move-object v3, v0

    check-cast v3, Landroid/net/ipsec/ike/IkeKeyIdIdentification;

    iget-object v3, v3, Landroid/net/ipsec/ike/IkeKeyIdIdentification;->keyId:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 757
    :cond_26
    instance-of v1, v0, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;

    if-eqz v1, :cond_43

    .line 758
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;

    iget-object v2, v2, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;->rfc822Name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 759
    :cond_43
    instance-of v1, v0, Landroid/net/ipsec/ike/IkeFqdnIdentification;

    if-eqz v1, :cond_60

    .line 760
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Landroid/net/ipsec/ike/IkeFqdnIdentification;

    iget-object v2, v2, Landroid/net/ipsec/ike/IkeFqdnIdentification;->fqdn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 761
    :cond_60
    instance-of v1, v0, Landroid/net/ipsec/ike/IkeIpv4AddrIdentification;

    if-eqz v1, :cond_6e

    .line 762
    move-object v1, v0

    check-cast v1, Landroid/net/ipsec/ike/IkeIpv4AddrIdentification;

    iget-object v1, v1, Landroid/net/ipsec/ike/IkeIpv4AddrIdentification;->ipv4Address:Ljava/net/Inet4Address;

    invoke-virtual {v1}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 763
    :cond_6e
    instance-of v1, v0, Landroid/net/ipsec/ike/IkeIpv6AddrIdentification;

    if-eqz v1, :cond_7c

    .line 764
    move-object v1, v0

    check-cast v1, Landroid/net/ipsec/ike/IkeIpv6AddrIdentification;

    iget-object v1, v1, Landroid/net/ipsec/ike/IkeIpv6AddrIdentification;->ipv6Address:Ljava/net/Inet6Address;

    invoke-virtual {v1}, Ljava/net/Inet6Address;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 765
    :cond_7c
    instance-of v1, v0, Landroid/net/ipsec/ike/IkeDerAsn1DnIdentification;

    if-eqz v1, :cond_88

    .line 766
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unspported ASN.1 encoded identities"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 768
    :cond_88
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown IkeIdentification to get user identity"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist hasAeadAlgorithms(Ljava/util/List;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 271
    .local p0, "algorithmNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "rfc4106(gcm(aes))"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist hasNormalModeAlgorithms(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 280
    .local p0, "algorithmNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "cbc(aes)"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 281
    .local v0, "hasCrypt":Z
    const-string/jumbo v1, "hmac(sha256)"

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_26

    .line 282
    const-string/jumbo v1, "hmac(sha384)"

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 283
    const-string/jumbo v1, "hmac(sha512)"

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_26

    :cond_24
    move v1, v2

    goto :goto_27

    :cond_26
    :goto_26
    move v1, v3

    .line 285
    .local v1, "hasAuth":Z
    :goto_27
    if-eqz v0, :cond_2c

    if-eqz v1, :cond_2c

    move v2, v3

    :cond_2c
    return v2
.end method

.method public static blacklist isValidVpnProfile(Lcom/android/internal/net/VpnProfile;)Z
    .registers 3
    .param p0, "profile"    # Lcom/android/internal/net/VpnProfile;

    .line 639
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_46

    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_46

    .line 643
    :cond_12
    iget v0, p0, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v0, :pswitch_data_48

    .line 660
    return v1

    .line 655
    :pswitch_18
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 656
    :cond_28
    return v1

    .line 650
    :pswitch_29
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 651
    return v1

    .line 645
    :pswitch_32
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_43

    goto :goto_45

    .line 663
    :cond_43
    const/4 v0, 0x1

    return v0

    .line 646
    :cond_45
    :goto_45
    return v1

    .line 640
    :cond_46
    :goto_46
    return v1

    nop

    :pswitch_data_48
    .packed-switch 0x6
        :pswitch_32
        :pswitch_29
        :pswitch_18
    .end packed-switch
.end method

.method private blacklist validate()V
    .registers 4

    .line 202
    iget v0, p0, Landroid/net/Ikev2VpnProfile;->mMaxMtu:I

    const/16 v1, 0x500

    if-lt v0, v1, :cond_86

    .line 208
    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    if-eqz v0, :cond_b

    return-void

    .line 212
    :cond_b
    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mServerAddr:Ljava/lang/String;

    const-string v1, "Server Address"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Required parameter was not provided: %s"

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 213
    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mUserIdentity:Ljava/lang/String;

    const-string v1, "User Identity"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 215
    iget v0, p0, Landroid/net/Ikev2VpnProfile;->mType:I

    packed-switch v0, :pswitch_data_8e

    .line 235
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid auth method set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :pswitch_30
    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mUserCert:Ljava/security/cert/X509Certificate;

    const-string v1, "User cert"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/net/Ikev2VpnProfile;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mRsaPrivateKey:Ljava/security/PrivateKey;

    const-string v1, "RSA Private key"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/net/Ikev2VpnProfile;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mUserCert:Ljava/security/cert/X509Certificate;

    invoke-static {v0}, Landroid/net/Ikev2VpnProfile;->checkCert(Ljava/security/cert/X509Certificate;)V

    .line 231
    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mServerRootCaCert:Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_80

    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mServerRootCaCert:Ljava/security/cert/X509Certificate;

    invoke-static {v0}, Landroid/net/Ikev2VpnProfile;->checkCert(Ljava/security/cert/X509Certificate;)V

    goto :goto_80

    .line 224
    :pswitch_55
    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mPresharedKey:[B

    const-string v1, "Preshared Key"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/net/Ikev2VpnProfile;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    goto :goto_80

    .line 217
    :pswitch_61
    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mUsername:Ljava/lang/String;

    const-string v1, "Username"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/net/Ikev2VpnProfile;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mPassword:Ljava/lang/String;

    const-string v1, "Password"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/net/Ikev2VpnProfile;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mServerRootCaCert:Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_80

    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mServerRootCaCert:Ljava/security/cert/X509Certificate;

    invoke-static {v0}, Landroid/net/Ikev2VpnProfile;->checkCert(Ljava/security/cert/X509Certificate;)V

    .line 238
    :cond_80
    :goto_80
    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mAllowedAlgorithms:Ljava/util/List;

    invoke-static {v0}, Landroid/net/Ikev2VpnProfile;->validateAllowedAlgorithms(Ljava/util/List;)V

    .line 239
    return-void

    .line 203
    :cond_86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Max MTU must be at least1280"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_8e
    .packed-switch 0x6
        :pswitch_61
        :pswitch_55
        :pswitch_30
    .end packed-switch
.end method

.method private static blacklist validateAllowedAlgorithms(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 252
    .local p0, "algorithmNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "hmac(md5)"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 253
    const-string/jumbo v0, "hmac(sha1)"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 258
    invoke-static {p0}, Landroid/net/Ikev2VpnProfile;->hasAeadAlgorithms(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-static {p0}, Landroid/net/Ikev2VpnProfile;->hasNormalModeAlgorithms(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_27

    .line 262
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Algorithm set missing support for Auth, Crypt or both"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_27
    :goto_27
    return-void

    .line 254
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Algorithm not supported for IKEv2 VPN profiles"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 466
    instance-of v0, p1, Landroid/net/Ikev2VpnProfile;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 467
    return v1

    .line 470
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/net/Ikev2VpnProfile;

    .line 471
    .local v0, "other":Landroid/net/Ikev2VpnProfile;
    iget v2, p0, Landroid/net/Ikev2VpnProfile;->mType:I

    iget v3, v0, Landroid/net/Ikev2VpnProfile;->mType:I

    if-ne v2, v3, :cond_af

    iget-object v2, p0, Landroid/net/Ikev2VpnProfile;->mServerAddr:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/Ikev2VpnProfile;->mServerAddr:Ljava/lang/String;

    .line 472
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_af

    iget-object v2, p0, Landroid/net/Ikev2VpnProfile;->mUserIdentity:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/Ikev2VpnProfile;->mUserIdentity:Ljava/lang/String;

    .line 473
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_af

    iget-object v2, p0, Landroid/net/Ikev2VpnProfile;->mPresharedKey:[B

    iget-object v3, v0, Landroid/net/Ikev2VpnProfile;->mPresharedKey:[B

    .line 474
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_af

    iget-object v2, p0, Landroid/net/Ikev2VpnProfile;->mServerRootCaCert:Ljava/security/cert/X509Certificate;

    iget-object v3, v0, Landroid/net/Ikev2VpnProfile;->mServerRootCaCert:Ljava/security/cert/X509Certificate;

    .line 475
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_af

    iget-object v2, p0, Landroid/net/Ikev2VpnProfile;->mUsername:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/Ikev2VpnProfile;->mUsername:Ljava/lang/String;

    .line 476
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_af

    iget-object v2, p0, Landroid/net/Ikev2VpnProfile;->mPassword:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/Ikev2VpnProfile;->mPassword:Ljava/lang/String;

    .line 477
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_af

    iget-object v2, p0, Landroid/net/Ikev2VpnProfile;->mRsaPrivateKey:Ljava/security/PrivateKey;

    iget-object v3, v0, Landroid/net/Ikev2VpnProfile;->mRsaPrivateKey:Ljava/security/PrivateKey;

    .line 478
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_af

    iget-object v2, p0, Landroid/net/Ikev2VpnProfile;->mUserCert:Ljava/security/cert/X509Certificate;

    iget-object v3, v0, Landroid/net/Ikev2VpnProfile;->mUserCert:Ljava/security/cert/X509Certificate;

    .line 479
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_af

    iget-object v2, p0, Landroid/net/Ikev2VpnProfile;->mProxyInfo:Landroid/net/ProxyInfo;

    iget-object v3, v0, Landroid/net/Ikev2VpnProfile;->mProxyInfo:Landroid/net/ProxyInfo;

    .line 480
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_af

    iget-object v2, p0, Landroid/net/Ikev2VpnProfile;->mAllowedAlgorithms:Ljava/util/List;

    iget-object v3, v0, Landroid/net/Ikev2VpnProfile;->mAllowedAlgorithms:Ljava/util/List;

    .line 481
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_af

    iget-boolean v2, p0, Landroid/net/Ikev2VpnProfile;->mIsBypassable:Z

    iget-boolean v3, v0, Landroid/net/Ikev2VpnProfile;->mIsBypassable:Z

    if-ne v2, v3, :cond_af

    iget-boolean v2, p0, Landroid/net/Ikev2VpnProfile;->mIsMetered:Z

    iget-boolean v3, v0, Landroid/net/Ikev2VpnProfile;->mIsMetered:Z

    if-ne v2, v3, :cond_af

    iget v2, p0, Landroid/net/Ikev2VpnProfile;->mMaxMtu:I

    iget v3, v0, Landroid/net/Ikev2VpnProfile;->mMaxMtu:I

    if-ne v2, v3, :cond_af

    iget-boolean v2, p0, Landroid/net/Ikev2VpnProfile;->mIsRestrictedToTestNetworks:Z

    iget-boolean v3, v0, Landroid/net/Ikev2VpnProfile;->mIsRestrictedToTestNetworks:Z

    if-ne v2, v3, :cond_af

    iget-boolean v2, p0, Landroid/net/Ikev2VpnProfile;->mExcludeLocalRoutes:Z

    iget-boolean v3, v0, Landroid/net/Ikev2VpnProfile;->mExcludeLocalRoutes:Z

    if-ne v2, v3, :cond_af

    iget-boolean v2, p0, Landroid/net/Ikev2VpnProfile;->mRequiresInternetValidation:Z

    iget-boolean v3, v0, Landroid/net/Ikev2VpnProfile;->mRequiresInternetValidation:Z

    if-ne v2, v3, :cond_af

    iget-object v2, p0, Landroid/net/Ikev2VpnProfile;->mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    iget-object v3, v0, Landroid/net/Ikev2VpnProfile;->mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    .line 488
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_af

    iget-boolean v2, p0, Landroid/net/Ikev2VpnProfile;->mAutomaticNattKeepaliveTimerEnabled:Z

    iget-boolean v3, v0, Landroid/net/Ikev2VpnProfile;->mAutomaticNattKeepaliveTimerEnabled:Z

    if-ne v2, v3, :cond_af

    iget-boolean v2, p0, Landroid/net/Ikev2VpnProfile;->mAutomaticIpVersionSelectionEnabled:Z

    iget-boolean v3, v0, Landroid/net/Ikev2VpnProfile;->mAutomaticIpVersionSelectionEnabled:Z

    if-ne v2, v3, :cond_af

    const/4 v1, 0x1

    goto :goto_b0

    :cond_af
    nop

    .line 471
    :goto_b0
    return v1
.end method

.method public whitelist getAllowedAlgorithms()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 394
    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    if-eqz v0, :cond_a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 396
    :cond_a
    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mAllowedAlgorithms:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getIkeTunnelConnectionParams()Landroid/net/ipsec/ike/IkeTunnelConnectionParams;
    .registers 2

    .line 417
    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    return-object v0
.end method

.method public whitelist getMaxMtu()I
    .registers 2

    .line 411
    iget v0, p0, Landroid/net/Ikev2VpnProfile;->mMaxMtu:I

    return v0
.end method

.method public whitelist getPassword()Ljava/lang/String;
    .registers 2

    .line 353
    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 355
    :cond_6
    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPresharedKey()[B
    .registers 3

    .line 314
    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return-object v1

    .line 316
    :cond_6
    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mPresharedKey:[B

    if-nez v0, :cond_b

    goto :goto_14

    :cond_b
    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mPresharedKey:[B

    iget-object v1, p0, Landroid/net/Ikev2VpnProfile;->mPresharedKey:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    :goto_14
    return-object v1
.end method

.method public whitelist getProxyInfo()Landroid/net/ProxyInfo;
    .registers 2

    .line 385
    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mProxyInfo:Landroid/net/ProxyInfo;

    return-object v0
.end method

.method public whitelist getRsaPrivateKey()Ljava/security/PrivateKey;
    .registers 2

    .line 366
    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 368
    :cond_6
    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mRsaPrivateKey:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public whitelist getServerAddr()Ljava/lang/String;
    .registers 3

    .line 291
    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mServerAddr:Ljava/lang/String;

    return-object v0

    .line 293
    :cond_7
    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    invoke-virtual {v0}, Landroid/net/ipsec/ike/IkeTunnelConnectionParams;->getIkeSessionParams()Landroid/net/ipsec/ike/IkeSessionParams;

    move-result-object v0

    .line 294
    .local v0, "ikeSessionParams":Landroid/net/ipsec/ike/IkeSessionParams;
    invoke-virtual {v0}, Landroid/net/ipsec/ike/IkeSessionParams;->getServerHostname()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getServerRootCaCert()Ljava/security/cert/X509Certificate;
    .registers 2

    .line 328
    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 330
    :cond_6
    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mServerRootCaCert:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public whitelist getUserCert()Ljava/security/cert/X509Certificate;
    .registers 2

    .line 377
    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 379
    :cond_6
    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mUserCert:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public whitelist getUserIdentity()Ljava/lang/String;
    .registers 3

    .line 300
    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mUserIdentity:Ljava/lang/String;

    return-object v0

    .line 302
    :cond_7
    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    invoke-virtual {v0}, Landroid/net/ipsec/ike/IkeTunnelConnectionParams;->getIkeSessionParams()Landroid/net/ipsec/ike/IkeSessionParams;

    move-result-object v0

    .line 303
    .local v0, "ikeSessionParams":Landroid/net/ipsec/ike/IkeSessionParams;
    invoke-static {v0}, Landroid/net/Ikev2VpnProfile;->getUserIdentityFromIkeSession(Landroid/net/ipsec/ike/IkeSessionParams;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getUsername()Ljava/lang/String;
    .registers 2

    .line 340
    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 342
    :cond_6
    iget-object v0, p0, Landroid/net/Ikev2VpnProfile;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 23

    .line 441
    move-object/from16 v0, p0

    iget v1, v0, Landroid/net/Ikev2VpnProfile;->mType:I

    .line 442
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v0, Landroid/net/Ikev2VpnProfile;->mServerAddr:Ljava/lang/String;

    iget-object v4, v0, Landroid/net/Ikev2VpnProfile;->mUserIdentity:Ljava/lang/String;

    iget-object v1, v0, Landroid/net/Ikev2VpnProfile;->mPresharedKey:[B

    .line 445
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v0, Landroid/net/Ikev2VpnProfile;->mServerRootCaCert:Ljava/security/cert/X509Certificate;

    iget-object v7, v0, Landroid/net/Ikev2VpnProfile;->mUsername:Ljava/lang/String;

    iget-object v8, v0, Landroid/net/Ikev2VpnProfile;->mPassword:Ljava/lang/String;

    iget-object v9, v0, Landroid/net/Ikev2VpnProfile;->mRsaPrivateKey:Ljava/security/PrivateKey;

    iget-object v10, v0, Landroid/net/Ikev2VpnProfile;->mUserCert:Ljava/security/cert/X509Certificate;

    iget-object v11, v0, Landroid/net/Ikev2VpnProfile;->mProxyInfo:Landroid/net/ProxyInfo;

    iget-object v12, v0, Landroid/net/Ikev2VpnProfile;->mAllowedAlgorithms:Ljava/util/List;

    iget-boolean v1, v0, Landroid/net/Ikev2VpnProfile;->mIsBypassable:Z

    .line 453
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    iget-boolean v1, v0, Landroid/net/Ikev2VpnProfile;->mIsMetered:Z

    .line 454
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    iget v1, v0, Landroid/net/Ikev2VpnProfile;->mMaxMtu:I

    .line 455
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iget-boolean v1, v0, Landroid/net/Ikev2VpnProfile;->mIsRestrictedToTestNetworks:Z

    .line 456
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    iget-boolean v1, v0, Landroid/net/Ikev2VpnProfile;->mExcludeLocalRoutes:Z

    .line 457
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    iget-boolean v1, v0, Landroid/net/Ikev2VpnProfile;->mRequiresInternetValidation:Z

    .line 458
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    iget-object v1, v0, Landroid/net/Ikev2VpnProfile;->mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    move-object/from16 v19, v1

    iget-boolean v1, v0, Landroid/net/Ikev2VpnProfile;->mAutomaticNattKeepaliveTimerEnabled:Z

    .line 460
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    iget-boolean v1, v0, Landroid/net/Ikev2VpnProfile;->mAutomaticIpVersionSelectionEnabled:Z

    .line 461
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    filled-new-array/range {v2 .. v21}, [Ljava/lang/Object;

    move-result-object v1

    .line 441
    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public whitelist isAutomaticIpVersionSelectionEnabled()Z
    .registers 2

    .line 436
    iget-boolean v0, p0, Landroid/net/Ikev2VpnProfile;->mAutomaticIpVersionSelectionEnabled:Z

    return v0
.end method

.method public whitelist isAutomaticNattKeepaliveTimerEnabled()Z
    .registers 2

    .line 431
    iget-boolean v0, p0, Landroid/net/Ikev2VpnProfile;->mAutomaticNattKeepaliveTimerEnabled:Z

    return v0
.end method

.method public whitelist isBypassable()Z
    .registers 2

    .line 401
    iget-boolean v0, p0, Landroid/net/Ikev2VpnProfile;->mIsBypassable:Z

    return v0
.end method

.method public whitelist isMetered()Z
    .registers 2

    .line 406
    iget-boolean v0, p0, Landroid/net/Ikev2VpnProfile;->mIsMetered:Z

    return v0
.end method

.method public blacklist isRestrictedToTestNetworks()Z
    .registers 2

    .line 426
    iget-boolean v0, p0, Landroid/net/Ikev2VpnProfile;->mIsRestrictedToTestNetworks:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 774
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IkeV2VpnProfile ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 775
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " MaxMtu="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/Ikev2VpnProfile;->mMaxMtu:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    iget-boolean v1, p0, Landroid/net/Ikev2VpnProfile;->mIsBypassable:Z

    if-eqz v1, :cond_28

    const-string v1, " Bypassable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    :cond_28
    iget-boolean v1, p0, Landroid/net/Ikev2VpnProfile;->mRequiresInternetValidation:Z

    if-eqz v1, :cond_31

    const-string v1, " RequiresInternetValidation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    :cond_31
    iget-boolean v1, p0, Landroid/net/Ikev2VpnProfile;->mIsRestrictedToTestNetworks:Z

    if-eqz v1, :cond_3a

    const-string v1, " RestrictedToTestNetworks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    :cond_3a
    iget-boolean v1, p0, Landroid/net/Ikev2VpnProfile;->mAutomaticNattKeepaliveTimerEnabled:Z

    if-eqz v1, :cond_43

    const-string v1, " AutomaticNattKeepaliveTimerEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    :cond_43
    iget-boolean v1, p0, Landroid/net/Ikev2VpnProfile;->mAutomaticIpVersionSelectionEnabled:Z

    if-eqz v1, :cond_4c

    const-string v1, " AutomaticIpVersionSelectionEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    :cond_4c
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist toVpnProfile()Lcom/android/internal/net/VpnProfile;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 503
    new-instance v0, Lcom/android/internal/net/VpnProfile;

    iget-boolean v2, p0, Landroid/net/Ikev2VpnProfile;->mIsRestrictedToTestNetworks:Z

    iget-boolean v3, p0, Landroid/net/Ikev2VpnProfile;->mExcludeLocalRoutes:Z

    iget-boolean v4, p0, Landroid/net/Ikev2VpnProfile;->mRequiresInternetValidation:Z

    iget-object v5, p0, Landroid/net/Ikev2VpnProfile;->mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    iget-boolean v6, p0, Landroid/net/Ikev2VpnProfile;->mAutomaticNattKeepaliveTimerEnabled:Z

    iget-boolean v7, p0, Landroid/net/Ikev2VpnProfile;->mAutomaticIpVersionSelectionEnabled:Z

    const-string v1, ""

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;ZZZLandroid/net/ipsec/ike/IkeTunnelConnectionParams;ZZ)V

    .line 507
    .local v0, "profile":Lcom/android/internal/net/VpnProfile;
    iget-object v1, p0, Landroid/net/Ikev2VpnProfile;->mProxyInfo:Landroid/net/ProxyInfo;

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    .line 508
    iget-boolean v1, p0, Landroid/net/Ikev2VpnProfile;->mIsBypassable:Z

    iput-boolean v1, v0, Lcom/android/internal/net/VpnProfile;->isBypassable:Z

    .line 509
    iget-boolean v1, p0, Landroid/net/Ikev2VpnProfile;->mIsMetered:Z

    iput-boolean v1, v0, Lcom/android/internal/net/VpnProfile;->isMetered:Z

    .line 510
    iget v1, p0, Landroid/net/Ikev2VpnProfile;->mMaxMtu:I

    iput v1, v0, Lcom/android/internal/net/VpnProfile;->maxMtu:I

    .line 511
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/net/VpnProfile;->areAuthParamsInline:Z

    .line 512
    iput-boolean v1, v0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    .line 514
    iget-object v1, p0, Landroid/net/Ikev2VpnProfile;->mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    if-eqz v1, :cond_31

    .line 515
    const/16 v1, 0x9

    iput v1, v0, Lcom/android/internal/net/VpnProfile;->type:I

    .line 516
    return-object v0

    .line 519
    :cond_31
    iget v1, p0, Landroid/net/Ikev2VpnProfile;->mType:I

    iput v1, v0, Lcom/android/internal/net/VpnProfile;->type:I

    .line 520
    invoke-virtual {p0}, Landroid/net/Ikev2VpnProfile;->getServerAddr()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    .line 521
    invoke-virtual {p0}, Landroid/net/Ikev2VpnProfile;->getUserIdentity()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 522
    iget-object v1, p0, Landroid/net/Ikev2VpnProfile;->mAllowedAlgorithms:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/internal/net/VpnProfile;->setAllowedAlgorithms(Ljava/util/List;)V

    .line 523
    iget v1, p0, Landroid/net/Ikev2VpnProfile;->mType:I

    const-string v2, ""

    packed-switch v1, :pswitch_data_ac

    .line 541
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid auth method set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 534
    :pswitch_55
    iget-object v1, p0, Landroid/net/Ikev2VpnProfile;->mUserCert:Ljava/security/cert/X509Certificate;

    invoke-static {v1}, Landroid/net/Ikev2VpnProfile;->certificateToPemString(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 535
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INLINE:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/net/Ikev2VpnProfile;->mRsaPrivateKey:Ljava/security/PrivateKey;

    .line 536
    invoke-interface {v3}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v3

    invoke-static {v3}, Landroid/net/Ikev2VpnProfile;->encodeForIpsecSecret([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 537
    nop

    .line 538
    iget-object v1, p0, Landroid/net/Ikev2VpnProfile;->mServerRootCaCert:Ljava/security/cert/X509Certificate;

    if-nez v1, :cond_82

    goto :goto_88

    :cond_82
    iget-object v1, p0, Landroid/net/Ikev2VpnProfile;->mServerRootCaCert:Ljava/security/cert/X509Certificate;

    invoke-static {v1}, Landroid/net/Ikev2VpnProfile;->certificateToPemString(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v2

    :goto_88
    iput-object v2, v0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 539
    goto :goto_ab

    .line 531
    :pswitch_8b
    iget-object v1, p0, Landroid/net/Ikev2VpnProfile;->mPresharedKey:[B

    invoke-static {v1}, Landroid/net/Ikev2VpnProfile;->encodeForIpsecSecret([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 532
    goto :goto_ab

    .line 525
    :pswitch_94
    iget-object v1, p0, Landroid/net/Ikev2VpnProfile;->mUsername:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    .line 526
    iget-object v1, p0, Landroid/net/Ikev2VpnProfile;->mPassword:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    .line 527
    nop

    .line 528
    iget-object v1, p0, Landroid/net/Ikev2VpnProfile;->mServerRootCaCert:Ljava/security/cert/X509Certificate;

    if-nez v1, :cond_a2

    goto :goto_a8

    :cond_a2
    iget-object v1, p0, Landroid/net/Ikev2VpnProfile;->mServerRootCaCert:Ljava/security/cert/X509Certificate;

    invoke-static {v1}, Landroid/net/Ikev2VpnProfile;->certificateToPemString(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v2

    :goto_a8
    iput-object v2, v0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 529
    nop

    .line 544
    :goto_ab
    return-object v0

    :pswitch_data_ac
    .packed-switch 0x6
        :pswitch_94
        :pswitch_8b
        :pswitch_55
    .end packed-switch
.end method
