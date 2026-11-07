.class public Landroid/net/wifi/WifiEnterpriseConfig;
.super Ljava/lang/Object;
.source "WifiEnterpriseConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiEnterpriseConfig$Eap;,
        Landroid/net/wifi/WifiEnterpriseConfig$Phase2;,
        Landroid/net/wifi/WifiEnterpriseConfig$SupplicantSaver;,
        Landroid/net/wifi/WifiEnterpriseConfig$SupplicantLoader;,
        Landroid/net/wifi/WifiEnterpriseConfig$TofuDialogState;,
        Landroid/net/wifi/WifiEnterpriseConfig$TofuConnectionState;,
        Landroid/net/wifi/WifiEnterpriseConfig$TlsVersion;,
        Landroid/net/wifi/WifiEnterpriseConfig$Ocsp;
    }
.end annotation


# static fields
.field public static final greylist-max-o ALTSUBJECT_MATCH_KEY:Ljava/lang/String; = "altsubject_match"

.field public static final greylist-max-o ANON_IDENTITY_KEY:Ljava/lang/String; = "anonymous_identity"

.field private static final blacklist CA_CERTIFICATE:Ljava/lang/String; = "CACERT_"

.field private static final blacklist CA_CERTIFICATES_MAX_ELEMENTS:I = 0x64

.field public static final greylist-max-o CA_CERT_ALIAS_DELIMITER:Ljava/lang/String; = " "

.field public static final greylist-max-o CA_CERT_KEY:Ljava/lang/String; = "ca_cert"

.field public static final greylist-max-o CA_CERT_PREFIX:Ljava/lang/String; = "keystore://CACERT_"

.field public static final greylist-max-o CA_PATH_KEY:Ljava/lang/String; = "ca_path"

.field private static final blacklist CERTIFICATE_MAX_LENGTH:I = 0x2000

.field private static final blacklist CERT_HASH_PREFIX:Ljava/lang/String; = "hash://server/sha256/"

.field private static final blacklist CLIENT_CERTIFICATE_CHAIN_MAX_ELEMENTS:I = 0x5

.field public static final greylist-max-o CLIENT_CERT_KEY:Ljava/lang/String; = "client_cert"

.field public static final greylist-max-o CLIENT_CERT_PREFIX:Ljava/lang/String; = "keystore://USRCERT_"

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/WifiEnterpriseConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DECORATED_IDENTITY_PREFIX_KEY:Ljava/lang/String; = "decorated_username_prefix"

.field public static final greylist-max-o DOM_SUFFIX_MATCH_KEY:Ljava/lang/String; = "domain_suffix_match"

.field public static final blacklist EAP_ERP:Ljava/lang/String; = "eap_erp"

.field public static final greylist-max-o EAP_KEY:Ljava/lang/String; = "eap"

.field public static final greylist-max-o EMPTY_VALUE:Ljava/lang/String; = "NULL"

.field public static final greylist-max-o ENGINE_DISABLE:Ljava/lang/String; = "0"

.field public static final greylist-max-o ENGINE_ENABLE:Ljava/lang/String; = "1"

.field public static final greylist-max-o ENGINE_ID_KEY:Ljava/lang/String; = "engine_id"

.field public static final greylist-max-o ENGINE_ID_KEYSTORE:Ljava/lang/String; = "keystore"

.field public static final greylist-max-o ENGINE_KEY:Ljava/lang/String; = "engine"

.field public static final whitelist EXTRA_WAPI_AS_CERTIFICATE_DATA:Ljava/lang/String; = "android.net.wifi.extra.WAPI_AS_CERTIFICATE_DATA"

.field public static final whitelist EXTRA_WAPI_AS_CERTIFICATE_NAME:Ljava/lang/String; = "android.net.wifi.extra.WAPI_AS_CERTIFICATE_NAME"

.field public static final whitelist EXTRA_WAPI_USER_CERTIFICATE_DATA:Ljava/lang/String; = "android.net.wifi.extra.WAPI_USER_CERTIFICATE_DATA"

.field public static final whitelist EXTRA_WAPI_USER_CERTIFICATE_NAME:Ljava/lang/String; = "android.net.wifi.extra.WAPI_USER_CERTIFICATE_NAME"

.field public static final greylist-max-o IDENTITY_KEY:Ljava/lang/String; = "identity"

.field private static final blacklist KEYCHAIN_ALIAS_MAX_LENGTH:I = 0x100

.field public static final greylist-max-o KEYSTORES_URI:Ljava/lang/String; = "keystores://"

.field public static final greylist-max-o KEYSTORE_URI:Ljava/lang/String; = "keystore://"

.field public static final blacklist OCSP:Ljava/lang/String; = "ocsp"

.field public static final whitelist OCSP_NONE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OCSP_REQUEST_CERT_STATUS:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OCSP_REQUIRE_ALL_NON_TRUSTED_CERTS_STATUS:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OCSP_REQUIRE_CERT_STATUS:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o OPP_KEY_CACHING:Ljava/lang/String; = "proactive_key_caching"

.field public static final greylist-max-o PASSWORD_KEY:Ljava/lang/String; = "password"

.field public static final greylist-max-o PHASE2_KEY:Ljava/lang/String; = "phase2"

.field public static final greylist-max-o PLMN_KEY:Ljava/lang/String; = "plmn"

.field public static final greylist-max-o PRIVATE_KEY_ID_KEY:Ljava/lang/String; = "key_id"

.field public static final greylist-max-o REALM_KEY:Ljava/lang/String; = "realm"

.field public static final greylist-max-o SUBJECT_MATCH_KEY:Ljava/lang/String; = "subject_match"

.field private static final greylist-max-o SUPPLICANT_CONFIG_KEYS:[Ljava/lang/String;

.field private static final blacklist SUPPORTED_FIELDS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "WifiEnterpriseConfig"

.field public static final whitelist TLS_V1_0:I = 0x0

.field public static final whitelist TLS_V1_1:I = 0x1

.field public static final whitelist TLS_V1_2:I = 0x2

.field public static final whitelist TLS_V1_3:I = 0x3

.field public static final blacklist TLS_VERSION_MAX:I = 0x3

.field public static final blacklist TLS_VERSION_MIN:I = 0x0

.field public static final blacklist TOFU_DIALOG_STATE_ACCEPTED:I = 0x2

.field public static final blacklist TOFU_DIALOG_STATE_REJECTED:I = 0x1

.field public static final blacklist TOFU_DIALOG_STATE_UNSPECIFIED:I = 0x0

.field public static final blacklist TOFU_STATE_CERT_PINNING:I = 0x3

.field public static final blacklist TOFU_STATE_CONFIGURE_ROOT_CA:I = 0x2

.field public static final blacklist TOFU_STATE_ENABLED_PRE_CONNECTION:I = 0x1

.field public static final blacklist TOFU_STATE_NOT_ENABLED:I = 0x0

.field private static final greylist-max-o UNQUOTED_KEYS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist USER_CERTIFICATE:Ljava/lang/String; = "USRCERT_"

.field private static final blacklist USER_PRIVATE_KEY:Ljava/lang/String; = "USRPKEY_"

.field public static final whitelist WAPI_AS_CERTIFICATE:Ljava/lang/String; = "WAPIAS_"

.field public static final blacklist WAPI_CERT_SUITE_KEY:Ljava/lang/String; = "wapi_cert_suite"

.field public static final whitelist WAPI_USER_CERTIFICATE:Ljava/lang/String; = "WAPIUSR_"


# instance fields
.field private greylist-max-o mCaCerts:[Ljava/security/cert/X509Certificate;

.field private greylist-max-o mClientCertificateChain:[Ljava/security/cert/X509Certificate;

.field private greylist-max-o mClientPrivateKey:Ljava/security/PrivateKey;

.field private greylist-max-o mEapMethod:I

.field private greylist mFields:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIsAppInstalledCaCert:Z

.field private blacklist mIsAppInstalledDeviceKeyAndCert:Z

.field private blacklist mIsStrictConservativePeerMode:Z

.field private blacklist mIsTrustOnFirstUseEnabled:Z

.field private blacklist mKeyChainAlias:Ljava/lang/String;

.field private blacklist mMinimumTlsVersion:I

.field private blacklist mOcsp:I

.field private greylist-max-o mPhase2Method:I

.field private blacklist mSelectedRcoi:J

.field private blacklist mTofuConnectionState:I

.field private blacklist mTofuDialogState:I

.field private blacklist mUserApproveNoCaCert:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmCaCerts(Landroid/net/wifi/WifiEnterpriseConfig;[Ljava/security/cert/X509Certificate;)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmClientCertificateChain(Landroid/net/wifi/WifiEnterpriseConfig;[Ljava/security/cert/X509Certificate;)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmClientPrivateKey(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/security/PrivateKey;)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmEapMethod(Landroid/net/wifi/WifiEnterpriseConfig;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFields(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/util/HashMap;)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsAppInstalledCaCert(Landroid/net/wifi/WifiEnterpriseConfig;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mIsAppInstalledCaCert:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsAppInstalledDeviceKeyAndCert(Landroid/net/wifi/WifiEnterpriseConfig;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mIsAppInstalledDeviceKeyAndCert:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsTrustOnFirstUseEnabled(Landroid/net/wifi/WifiEnterpriseConfig;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mIsTrustOnFirstUseEnabled:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmKeyChainAlias(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mKeyChainAlias:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMinimumTlsVersion(Landroid/net/wifi/WifiEnterpriseConfig;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mMinimumTlsVersion:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOcsp(Landroid/net/wifi/WifiEnterpriseConfig;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mOcsp:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPhase2Method(Landroid/net/wifi/WifiEnterpriseConfig;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTofuConnectionState(Landroid/net/wifi/WifiEnterpriseConfig;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mTofuConnectionState:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTofuDialogState(Landroid/net/wifi/WifiEnterpriseConfig;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mTofuDialogState:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUserApproveNoCaCert(Landroid/net/wifi/WifiEnterpriseConfig;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mUserApproveNoCaCert:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smbundleToFieldMap(Landroid/os/Bundle;)Ljava/util/HashMap;
    .registers 1

    invoke-static {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->bundleToFieldMap(Landroid/os/Bundle;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smisFieldLengthValid(Ljava/lang/String;I)Z
    .registers 2

    invoke-static {p0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->isFieldLengthValid(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 12

    .line 235
    const-string v10, "domain_suffix_match"

    const-string v11, "ca_path"

    const-string v0, "identity"

    const-string v1, "anonymous_identity"

    const-string v2, "password"

    const-string v3, "client_cert"

    const-string v4, "ca_cert"

    const-string v5, "subject_match"

    const-string v6, "engine"

    const-string v7, "engine_id"

    const-string v8, "key_id"

    const-string v9, "altsubject_match"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiEnterpriseConfig;->SUPPLICANT_CONFIG_KEYS:[Ljava/lang/String;

    .line 274
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/util/Map$Entry;

    .line 275
    const/16 v1, 0x400

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "altsubject_match"

    invoke-static {v2, v1}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 276
    const-string v2, "anonymous_identity"

    invoke-static {v2, v1}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x1

    .line 282
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 276
    aput-object v1, v0, v2

    .line 277
    const/16 v1, 0x2000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ca_cert"

    invoke-static {v2, v1}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v0, v4

    .line 278
    const/16 v2, 0x1000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "ca_path"

    invoke-static {v4, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v0, v4

    .line 279
    const-string v2, "client_cert"

    invoke-static {v2, v1}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v0, v4

    .line 280
    const/16 v2, 0x100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "decorated_username_prefix"

    invoke-static {v4, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v0, v5

    .line 281
    const-string v4, "domain_suffix_match"

    invoke-static {v4, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v4

    const/4 v5, 0x6

    aput-object v4, v0, v5

    .line 282
    const-string v4, "eap_erp"

    invoke-static {v4, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v5

    const/4 v6, 0x7

    aput-object v5, v0, v6

    .line 283
    const-string v5, "engine"

    invoke-static {v5, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v6

    const/16 v7, 0x8

    aput-object v6, v0, v7

    .line 284
    const/16 v6, 0x40

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "engine_id"

    invoke-static {v7, v6}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v6

    const/16 v7, 0x9

    aput-object v6, v0, v7

    .line 285
    const-string v6, "identity"

    invoke-static {v6, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v6

    const/16 v7, 0xa

    aput-object v6, v0, v7

    .line 286
    const-string v6, "proactive_key_caching"

    invoke-static {v6, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    const/16 v7, 0xb

    aput-object v3, v0, v7

    .line 287
    const-string v3, "password"

    invoke-static {v3, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    const/16 v7, 0xc

    aput-object v3, v0, v7

    .line 288
    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "plmn"

    invoke-static {v8, v7}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v7

    const/16 v8, 0xd

    aput-object v7, v0, v8

    .line 289
    const-string v7, "key_id"

    invoke-static {v7, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v7

    const/16 v8, 0xe

    aput-object v7, v0, v8

    .line 290
    const-string v7, "realm"

    invoke-static {v7, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v7

    const/16 v8, 0xf

    aput-object v7, v0, v8

    .line 291
    const-string v7, "subject_match"

    invoke-static {v7, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    aput-object v2, v0, v3

    .line 292
    const-string v2, "wapi_cert_suite"

    invoke-static {v2, v1}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 274
    invoke-static {v0}, Ljava/util/Map;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiEnterpriseConfig;->SUPPORTED_FIELDS:Ljava/util/Map;

    .line 298
    filled-new-array {v5, v6, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiEnterpriseConfig;->UNQUOTED_KEYS:Ljava/util/List;

    .line 584
    new-instance v0, Landroid/net/wifi/WifiEnterpriseConfig$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiEnterpriseConfig$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiEnterpriseConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 4

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mOcsp:I

    .line 396
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    .line 401
    const/4 v1, -0x1

    iput v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    .line 402
    iput v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    .line 403
    iput-boolean v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mIsAppInstalledDeviceKeyAndCert:Z

    .line 404
    iput-boolean v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mIsAppInstalledCaCert:Z

    .line 406
    iput-boolean v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mIsTrustOnFirstUseEnabled:Z

    .line 407
    iput-boolean v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mUserApproveNoCaCert:Z

    .line 409
    iput v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mMinimumTlsVersion:I

    .line 410
    iput v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mTofuDialogState:I

    .line 411
    iput v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mTofuConnectionState:I

    .line 416
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mSelectedRcoi:J

    .line 418
    iput-boolean v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mIsStrictConservativePeerMode:Z

    .line 428
    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/wifi/WifiEnterpriseConfig;)V
    .registers 5
    .param p1, "source"    # Landroid/net/wifi/WifiEnterpriseConfig;

    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mOcsp:I

    .line 396
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    .line 401
    const/4 v1, -0x1

    iput v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    .line 402
    iput v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    .line 403
    iput-boolean v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mIsAppInstalledDeviceKeyAndCert:Z

    .line 404
    iput-boolean v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mIsAppInstalledCaCert:Z

    .line 406
    iput-boolean v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mIsTrustOnFirstUseEnabled:Z

    .line 407
    iput-boolean v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mUserApproveNoCaCert:Z

    .line 409
    iput v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mMinimumTlsVersion:I

    .line 410
    iput v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mTofuDialogState:I

    .line 411
    iput v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mTofuConnectionState:I

    .line 416
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mSelectedRcoi:J

    .line 418
    iput-boolean v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mIsStrictConservativePeerMode:Z

    .line 544
    const-string v1, ""

    invoke-direct {p0, p1, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->copyFrom(Landroid/net/wifi/WifiEnterpriseConfig;ZLjava/lang/String;)V

    .line 545
    return-void
.end method

.method private static blacklist bundleToFieldMap(Landroid/os/Bundle;)Ljava/util/HashMap;
    .registers 6
    .param p0, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 479
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 480
    .local v0, "fieldMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_8

    return-object v0

    .line 481
    :cond_8
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 482
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 483
    .local v3, "value":Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->isFieldValid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 484
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_29
    goto :goto_10

    .line 487
    :cond_2a
    return-object v0
.end method

.method private greylist-max-o convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "string"    # Ljava/lang/String;

    .line 1608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o copyFrom(Landroid/net/wifi/WifiEnterpriseConfig;ZLjava/lang/String;)V
    .registers 9
    .param p1, "source"    # Landroid/net/wifi/WifiEnterpriseConfig;
    .param p2, "ignoreMaskedPassword"    # Z
    .param p3, "mask"    # Ljava/lang/String;

    .line 499
    iget-object v0, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 500
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 501
    .local v2, "value":Ljava/lang/String;
    if-eqz p2, :cond_2f

    const-string v3, "password"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 502
    invoke-static {v2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 503
    goto :goto_a

    .line 505
    :cond_2f
    invoke-static {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->isFieldValid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 506
    iget-object v3, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    iget-object v4, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_42
    goto :goto_a

    .line 509
    :cond_43
    iget-object v0, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    if-eqz v0, :cond_56

    .line 510
    iget-object v0, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    iget-object v2, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    array-length v2, v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    goto :goto_58

    .line 512
    :cond_56
    iput-object v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    .line 514
    :goto_58
    iget-object v0, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;

    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;

    .line 515
    iget-object v0, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_6e

    .line 516
    iget-object v0, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    iget-object v1, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    goto :goto_70

    .line 520
    :cond_6e
    iput-object v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    .line 522
    :goto_70
    iget-object v0, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mKeyChainAlias:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mKeyChainAlias:Ljava/lang/String;

    .line 523
    iget v0, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    iput v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    .line 524
    iget v0, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    iput v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    .line 525
    iget-boolean v0, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mIsAppInstalledDeviceKeyAndCert:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mIsAppInstalledDeviceKeyAndCert:Z

    .line 526
    iget-boolean v0, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mIsAppInstalledCaCert:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mIsAppInstalledCaCert:Z

    .line 527
    iget v0, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mOcsp:I

    iput v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mOcsp:I

    .line 528
    iget-boolean v0, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mIsTrustOnFirstUseEnabled:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mIsTrustOnFirstUseEnabled:Z

    .line 529
    iget-boolean v0, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mUserApproveNoCaCert:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mUserApproveNoCaCert:Z

    .line 530
    iget-wide v0, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mSelectedRcoi:J

    iput-wide v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mSelectedRcoi:J

    .line 531
    iget v0, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mMinimumTlsVersion:I

    iput v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mMinimumTlsVersion:I

    .line 532
    iget-boolean v0, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mIsStrictConservativePeerMode:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mIsStrictConservativePeerMode:Z

    .line 533
    iget v0, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mTofuDialogState:I

    iput v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mTofuDialogState:I

    .line 534
    iget v0, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mTofuConnectionState:I

    iput v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mTofuConnectionState:I

    .line 535
    return-void
.end method

.method public static greylist-max-o decodeCaCertificateAlias(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "alias"    # Ljava/lang/String;

    .line 948
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    .line 949
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "position":I
    :goto_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_24

    .line 950
    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 949
    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 953
    .end local v1    # "n":I
    .end local v2    # "position":I
    :cond_24
    :try_start_24
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_2b} :catch_2c

    return-object v1

    .line 954
    :catch_2c
    move-exception v1

    .line 955
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 956
    return-object p0
.end method

.method public static greylist-max-o encodeCaCertificateAlias(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "alias"    # Ljava/lang/String;

    .line 935
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 936
    .local v0, "bytes":[B
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 937
    .local v1, "sb":Ljava/lang/StringBuilder;
    array-length v2, v0

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_2a

    aget-byte v4, v0, v3

    .line 938
    .local v4, "o":B
    and-int/lit16 v5, v4, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "%02x"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    .end local v4    # "o":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 940
    :cond_2a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private blacklist fieldMapToBundle()Landroid/os/Bundle;
    .registers 6

    .line 465
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 466
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 467
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->isFieldValid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 468
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3c
    goto :goto_f

    .line 471
    :cond_3d
    return-object v0
.end method

.method private greylist-max-o getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 1634
    invoke-static {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->isKeySupported(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_9

    .line 1635
    return-object v1

    .line 1638
    :cond_9
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1640
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_34

    const-string v2, "NULL"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_34

    .line 1642
    :cond_20
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1643
    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 1644
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1646
    :cond_33
    return-object v0

    .line 1640
    :cond_34
    :goto_34
    return-object v1
.end method

.method private greylist-max-o getStringIndex([Ljava/lang/String;Ljava/lang/String;I)I
    .registers 6
    .param p1, "arr"    # [Ljava/lang/String;
    .param p2, "toBeFound"    # Ljava/lang/String;
    .param p3, "defaultIndex"    # I

    .line 1619
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return p3

    .line 1620
    :cond_7
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    array-length v1, p1

    if-ge v0, v1, :cond_17

    .line 1621
    aget-object v1, p1, v0

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    return v0

    .line 1620
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1623
    .end local v0    # "i":I
    :cond_17
    return p3
.end method

.method private greylist-max-o isEapMethodValid()Z
    .registers 5

    .line 1725
    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const-string v3, "WifiEnterpriseConfig"

    if-ne v0, v1, :cond_e

    .line 1726
    const-string v0, "WiFi enterprise configuration is invalid as it supplies no EAP method."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    return v2

    .line 1729
    :cond_e
    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    if-ltz v0, :cond_41

    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    sget-object v1, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_1a

    goto :goto_41

    .line 1733
    :cond_1a
    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    if-ltz v0, :cond_28

    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    sget-object v1, Landroid/net/wifi/WifiEnterpriseConfig$Phase2;->strings:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_26

    goto :goto_28

    .line 1738
    :cond_26
    const/4 v0, 0x1

    return v0

    .line 1734
    :cond_28
    :goto_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPhase2Method is invald for WiFi enterprise configuration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    return v2

    .line 1730
    :cond_41
    :goto_41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mEapMethod is invald for WiFi enterprise configuration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    return v2
.end method

.method private static blacklist isFieldLengthValid(Ljava/lang/String;I)Z
    .registers 4
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "maxLength"    # I

    .line 448
    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    .line 449
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, p1, :cond_b

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method private static blacklist isFieldLengthValid(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 443
    sget-object v0, Landroid/net/wifi/WifiEnterpriseConfig;->SUPPORTED_FIELDS:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 444
    .local v0, "maxLength":I
    invoke-static {p1, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->isFieldLengthValid(Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method

.method private static blacklist isFieldValid(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 457
    invoke-static {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->isKeySupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->isFieldLengthValid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private static blacklist isKeySupported(Ljava/lang/String;)Z
    .registers 2
    .param p0, "key"    # Ljava/lang/String;

    .line 435
    sget-object v0, Landroid/net/wifi/WifiEnterpriseConfig;->SUPPORTED_FIELDS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isSuiteBCipherCert(Ljava/security/cert/X509Certificate;)Z
    .registers 8
    .param p0, "x509Certificate"    # Ljava/security/cert/X509Certificate;

    .line 1918
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 1919
    return v0

    .line 1921
    :cond_4
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSigAlgOID()Ljava/lang/String;

    move-result-object v1

    .line 1931
    .local v1, "sigAlgOid":Ljava/lang/String;
    const-string v2, "1.2.840.113549.1.1.12"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_33

    .line 1933
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    instance-of v2, v2, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v2, :cond_62

    .line 1934
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    check-cast v2, Ljava/security/interfaces/RSAPublicKey;

    .line 1935
    .local v2, "rsaPublicKey":Ljava/security/interfaces/RSAPublicKey;
    invoke-interface {v2}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    if-eqz v4, :cond_32

    .line 1936
    invoke-interface {v2}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    const/16 v5, 0xc00

    if-lt v4, v5, :cond_32

    .line 1937
    return v3

    .line 1939
    .end local v2    # "rsaPublicKey":Ljava/security/interfaces/RSAPublicKey;
    :cond_32
    goto :goto_62

    .line 1940
    :cond_33
    const-string v2, "1.2.840.10045.4.3.3"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 1942
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    instance-of v2, v2, Ljava/security/interfaces/ECPublicKey;

    if-eqz v2, :cond_62

    .line 1943
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    check-cast v2, Ljava/security/interfaces/ECPublicKey;

    .line 1944
    .local v2, "ecPublicKey":Ljava/security/interfaces/ECPublicKey;
    invoke-interface {v2}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v4

    .line 1946
    .local v4, "ecParameterSpec":Ljava/security/spec/ECParameterSpec;
    if-eqz v4, :cond_62

    invoke-virtual {v4}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v5

    if-eqz v5, :cond_62

    .line 1947
    invoke-virtual {v4}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    const/16 v6, 0x180

    if-lt v5, v6, :cond_62

    .line 1948
    return v3

    .line 1952
    .end local v2    # "ecPublicKey":Ljava/security/interfaces/ECPublicKey;
    .end local v4    # "ecParameterSpec":Ljava/security/spec/ECParameterSpec;
    :cond_62
    :goto_62
    return v0
.end method

.method private greylist-max-o removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "string"    # Ljava/lang/String;

    .line 1598
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, ""

    return-object v0

    .line 1599
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1600
    .local v0, "length":I
    const/4 v1, 0x1

    if-le v0, v1, :cond_28

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_28

    add-int/lit8 v2, v0, -0x1

    .line 1601
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_28

    .line 1602
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1604
    :cond_28
    return-object p1
.end method

.method private greylist-max-o setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;

    .line 1668
    invoke-static {p1, p2}, Landroid/net/wifi/WifiEnterpriseConfig;->isFieldValid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1669
    return-void

    .line 1671
    :cond_7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1672
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string v1, "NULL"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_49

    .line 1675
    :cond_15
    sget-object v0, Landroid/net/wifi/WifiEnterpriseConfig;->UNQUOTED_KEYS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 1676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "valueToSet":Ljava/lang/String;
    goto :goto_44

    .line 1678
    .end local v0    # "valueToSet":Ljava/lang/String;
    :cond_33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1680
    .restart local v0    # "valueToSet":Ljava/lang/String;
    :goto_44
    iget-object v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1682
    .end local v0    # "valueToSet":Ljava/lang/String;
    :goto_49
    return-void
.end method


# virtual methods
.method public greylist-max-o copyFromExternal(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/lang/String;)V
    .registers 5
    .param p1, "externalConfig"    # Landroid/net/wifi/WifiEnterpriseConfig;
    .param p2, "mask"    # Ljava/lang/String;

    .line 557
    const/4 v0, 0x1

    invoke-direct {p0, p2}, Landroid/net/wifi/WifiEnterpriseConfig;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->copyFrom(Landroid/net/wifi/WifiEnterpriseConfig;ZLjava/lang/String;)V

    .line 558
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 562
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist enableTrustOnFirstUse(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .line 2009
    iput-boolean p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mIsTrustOnFirstUseEnabled:Z

    .line 2010
    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mTofuConnectionState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_13

    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mTofuConnectionState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_13

    .line 2013
    if-eqz p1, :cond_10

    .line 2014
    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    iput v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mTofuConnectionState:I

    .line 2016
    :cond_13
    return-void
.end method

.method public whitelist getAltSubjectMatch()Ljava/lang/String;
    .registers 2

    .line 1472
    const-string v0, "altsubject_match"

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAnonymousIdentity()Ljava/lang/String;
    .registers 2

    .line 909
    const-string v0, "anonymous_identity"

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCaCertificate()Ljava/security/cert/X509Certificate;
    .registers 3

    .line 1121
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    array-length v0, v0

    if-lez v0, :cond_f

    .line 1122
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    .line 1124
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist getCaCertificateAlias()Ljava/lang/String;
    .registers 3

    .line 1032
    const-string v0, "ca_cert"

    const-string v1, "keystore://CACERT_"

    invoke-direct {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCaCertificateAliases()[Ljava/lang/String;
    .registers 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1043
    const-string v0, "ca_cert"

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1044
    .local v1, "value":Ljava/lang/String;
    const-string v2, "keystore://CACERT_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1046
    invoke-direct {p0, v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1047
    :cond_17
    const-string v0, "keystores://"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_58

    .line 1048
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1050
    .local v0, "values":Ljava/lang/String;
    const-string v2, " "

    invoke-static {v0, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1051
    .local v2, "aliases":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2f
    array-length v5, v2

    if-ge v4, v5, :cond_53

    .line 1052
    aget-object v5, v2, v4

    invoke-static {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->decodeCaCertificateAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 1053
    aget-object v5, v2, v4

    const-string v6, "CACERT_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 1054
    aget-object v5, v2, v4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 1051
    :cond_50
    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    .line 1057
    .end local v4    # "i":I
    :cond_53
    array-length v4, v2

    if-eqz v4, :cond_57

    move-object v3, v2

    :cond_57
    return-object v3

    .line 1059
    .end local v0    # "values":Ljava/lang/String;
    .end local v2    # "aliases":[Ljava/lang/String;
    :cond_58
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5f

    goto :goto_65

    :cond_5f
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v1, v3, v0

    :goto_65
    return-object v3
.end method

.method public whitelist getCaCertificates()[Ljava/security/cert/X509Certificate;
    .registers 2

    .line 1173
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    array-length v0, v0

    if-lez v0, :cond_c

    .line 1174
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    return-object v0

    .line 1176
    :cond_c
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getCaPath()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1221
    const-string v0, "ca_path"

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getClientCertificate()Ljava/security/cert/X509Certificate;
    .registers 3

    .line 1387
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    array-length v0, v0

    if-lez v0, :cond_f

    .line 1388
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    .line 1390
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getClientCertificateAlias()Ljava/lang/String;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1255
    const-string v0, "client_cert"

    const-string v1, "keystore://USRCERT_"

    invoke-direct {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getClientCertificateChain()[Ljava/security/cert/X509Certificate;
    .registers 2

    .line 1408
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    array-length v0, v0

    if-lez v0, :cond_c

    .line 1409
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    return-object v0

    .line 1411
    :cond_c
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getClientKeyPairAlias()Ljava/lang/String;
    .registers 2

    .line 1367
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1370
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mKeyChainAlias:Ljava/lang/String;

    return-object v0

    .line 1368
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist getClientKeyPairAliasInternal()Ljava/lang/String;
    .registers 2

    .line 1378
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mKeyChainAlias:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getClientPrivateKey()Ljava/security/PrivateKey;
    .registers 2

    .line 1429
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public whitelist getDecoratedIdentityPrefix()Ljava/lang/String;
    .registers 3

    .line 1986
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1989
    const-string v0, "decorated_username_prefix"

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1990
    .local v0, "decoratedId":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x0

    goto :goto_15

    :cond_14
    move-object v1, v0

    :goto_15
    return-object v1

    .line 1987
    .end local v0    # "decoratedId":Ljava/lang/String;
    :cond_16
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist getDomainSuffixMatch()Ljava/lang/String;
    .registers 2

    .line 1511
    const-string v0, "domain_suffix_match"

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getEapMethod()I
    .registers 2

    .line 845
    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    return v0
.end method

.method public greylist-max-o getFieldValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 1657
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getIdentity()Ljava/lang/String;
    .registers 2

    .line 892
    const-string v0, "identity"

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getKeyId(Landroid/net/wifi/WifiEnterpriseConfig;)Ljava/lang/String;
    .registers 5
    .param p1, "current"    # Landroid/net/wifi/WifiEnterpriseConfig;

    .line 1588
    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    const/4 v1, -0x1

    const-string v2, "NULL"

    if-ne v0, v1, :cond_f

    .line 1589
    if-eqz p1, :cond_e

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getKeyId(Landroid/net/wifi/WifiEnterpriseConfig;)Ljava/lang/String;

    move-result-object v2

    :cond_e
    return-object v2

    .line 1591
    :cond_f
    invoke-direct {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->isEapMethodValid()Z

    move-result v0

    if-nez v0, :cond_16

    .line 1592
    return-object v2

    .line 1594
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    iget v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/WifiEnterpriseConfig$Phase2;->strings:[Ljava/lang/String;

    iget v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMinimumTlsVersion()I
    .registers 2

    .line 2124
    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mMinimumTlsVersion:I

    return v0
.end method

.method public whitelist getOcsp()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1810
    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mOcsp:I

    return v0
.end method

.method public whitelist getPassword()Ljava/lang/String;
    .registers 2

    .line 927
    const-string v0, "password"

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPhase2Method()I
    .registers 2

    .line 876
    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    return v0
.end method

.method public whitelist getPlmn()Ljava/lang/String;
    .registers 2

    .line 1582
    const-string v0, "plmn"

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getRealm()Ljava/lang/String;
    .registers 2

    .line 1528
    const-string v0, "realm"

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSelectedRcoi()J
    .registers 3

    .line 1546
    iget-wide v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mSelectedRcoi:J

    return-wide v0
.end method

.method public blacklist getStrictConservativePeerMode()Z
    .registers 2

    .line 1565
    iget-boolean v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mIsStrictConservativePeerMode:Z

    return v0
.end method

.method public whitelist getSubjectMatch()Ljava/lang/String;
    .registers 2

    .line 1448
    const-string v0, "subject_match"

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTofuConnectionState()I
    .registers 2

    .line 2044
    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mTofuConnectionState:I

    return v0
.end method

.method public blacklist getTofuDialogState()I
    .registers 2

    .line 2072
    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mTofuDialogState:I

    return v0
.end method

.method public whitelist getWapiCertSuite()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1852
    const-string v0, "wapi_cert_suite"

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist hasCaCertificate()Z
    .registers 3

    .line 1019
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 1020
    :cond_8
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_f

    return v1

    .line 1021
    :cond_f
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    return v1

    .line 1022
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist initIsAppInstalledCaCert(Z)V
    .registers 2
    .param p1, "isAppInstalledCaCert"    # Z

    .line 1784
    iput-boolean p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mIsAppInstalledCaCert:Z

    .line 1785
    return-void
.end method

.method public blacklist initIsAppInstalledDeviceKeyAndCert(Z)V
    .registers 2
    .param p1, "isAppInstalledDeviceKeyAndCert"    # Z

    .line 1761
    iput-boolean p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mIsAppInstalledDeviceKeyAndCert:Z

    .line 1762
    return-void
.end method

.method public blacklist isAppInstalledCaCert()Z
    .registers 2

    .line 1774
    iget-boolean v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mIsAppInstalledCaCert:Z

    return v0
.end method

.method public blacklist isAppInstalledDeviceKeyAndCert()Z
    .registers 2

    .line 1751
    iget-boolean v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mIsAppInstalledDeviceKeyAndCert:Z

    return v0
.end method

.method public whitelist isAuthenticationSimBased()Z
    .registers 6

    .line 1820
    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v1, :cond_27

    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_27

    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    const/4 v3, 0x6

    if-ne v0, v3, :cond_11

    goto :goto_27

    .line 1823
    :cond_11
    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    const/4 v4, 0x0

    if-nez v0, :cond_26

    .line 1824
    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    if-eq v0, v1, :cond_25

    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    if-eq v0, v3, :cond_25

    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_24

    goto :goto_25

    :cond_24
    move v2, v4

    :cond_25
    :goto_25
    return v2

    .line 1827
    :cond_26
    return v4

    .line 1821
    :cond_27
    :goto_27
    return v2
.end method

.method public whitelist isEapMethodServerCertUsed()Z
    .registers 4

    .line 1861
    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    if-eq v0, v1, :cond_15

    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_15

    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :cond_15
    :goto_15
    return v1
.end method

.method public blacklist isMandatoryParameterSetForServerCertValidation()Z
    .registers 3

    .line 1893
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getAltSubjectMatch()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1894
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getDomainSuffixMatch()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1896
    const/4 v0, 0x0

    return v0

    .line 1898
    :cond_16
    iget-boolean v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mIsAppInstalledCaCert:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1c

    .line 1900
    return v1

    .line 1902
    :cond_1c
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 1904
    return v1

    .line 1906
    :cond_23
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method public whitelist isServerCertValidationEnabled()Z
    .registers 3

    .line 1881
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->isEapMethodServerCertUsed()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1885
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->isMandatoryParameterSetForServerCertValidation()Z

    move-result v0

    return v0

    .line 1882
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Configuration doesn\'t use server certificates for authentication"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isTrustOnFirstUseEnabled()Z
    .registers 2

    .line 2024
    iget-boolean v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mIsTrustOnFirstUseEnabled:Z

    return v0
.end method

.method public blacklist isUserApproveNoCaCert()Z
    .registers 2

    .line 2095
    iget-boolean v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mUserApproveNoCaCert:Z

    return v0
.end method

.method public greylist-max-o loadFromSupplicant(Landroid/net/wifi/WifiEnterpriseConfig$SupplicantLoader;)V
    .registers 10
    .param p1, "loader"    # Landroid/net/wifi/WifiEnterpriseConfig$SupplicantLoader;

    .line 787
    sget-object v0, Landroid/net/wifi/WifiEnterpriseConfig;->SUPPLICANT_CONFIG_KEYS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_26

    aget-object v4, v0, v3

    .line 788
    .local v4, "key":Ljava/lang/String;
    invoke-interface {p1, v4}, Landroid/net/wifi/WifiEnterpriseConfig$SupplicantLoader;->loadValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 789
    .local v5, "value":Ljava/lang/String;
    invoke-static {v4, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->isFieldValid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_14

    .line 790
    goto :goto_23

    .line 791
    :cond_14
    if-nez v5, :cond_1e

    .line 792
    iget-object v6, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string v7, "NULL"

    invoke-virtual {v6, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_23

    .line 794
    :cond_1e
    iget-object v6, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :goto_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 797
    :cond_26
    const-string v0, "eap"

    invoke-interface {p1, v0}, Landroid/net/wifi/WifiEnterpriseConfig$SupplicantLoader;->loadValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 798
    .local v0, "eapMethod":Ljava/lang/String;
    sget-object v1, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    const/4 v3, -0x1

    invoke-direct {p0, v1, v0, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getStringIndex([Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    .line 800
    const-string v1, "phase2"

    invoke-interface {p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig$SupplicantLoader;->loadValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 802
    .local v1, "phase2Method":Ljava/lang/String;
    const-string v3, "auth="

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 803
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_60

    .line 804
    :cond_50
    const-string v3, "autheap="

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_60

    .line 805
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 807
    :cond_60
    :goto_60
    sget-object v3, Landroid/net/wifi/WifiEnterpriseConfig$Phase2;->strings:[Ljava/lang/String;

    invoke-direct {p0, v3, v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getStringIndex([Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    .line 808
    return-void
.end method

.method public greylist-max-o resetCaCertificate()V
    .registers 2

    .line 1184
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    .line 1185
    return-void
.end method

.method public greylist-max-o resetClientKeyEntry()V
    .registers 2

    .line 1419
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;

    .line 1420
    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    .line 1421
    return-void
.end method

.method public greylist-max-o saveToSupplicant(Landroid/net/wifi/WifiEnterpriseConfig$SupplicantSaver;)Z
    .registers 10
    .param p1, "saver"    # Landroid/net/wifi/WifiEnterpriseConfig$SupplicantSaver;

    .line 740
    invoke-direct {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->isEapMethodValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 741
    return v1

    .line 746
    :cond_8
    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eq v0, v2, :cond_1b

    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    const/4 v4, 0x5

    if-eq v0, v4, :cond_1b

    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    const/4 v4, 0x6

    if-ne v0, v4, :cond_19

    goto :goto_1b

    :cond_19
    move v0, v1

    goto :goto_1c

    :cond_1b
    :goto_1b
    move v0, v3

    .line 749
    .local v0, "shouldNotWriteAnonIdentity":Z
    :goto_1c
    iget-object v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_26
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_54

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 750
    .local v5, "key":Ljava/lang/String;
    iget-object v6, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 751
    .local v6, "value":Ljava/lang/String;
    invoke-static {v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->isFieldValid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_41

    .line 752
    goto :goto_26

    .line 754
    :cond_41
    if-eqz v0, :cond_4c

    const-string v7, "anonymous_identity"

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4c

    .line 755
    goto :goto_26

    .line 757
    :cond_4c
    invoke-interface {p1, v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig$SupplicantSaver;->saveValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_53

    .line 758
    return v1

    .line 760
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_53
    goto :goto_26

    .line 762
    :cond_54
    sget-object v4, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    iget v5, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    aget-object v4, v4, v5

    const-string v5, "eap"

    invoke-interface {p1, v5, v4}, Landroid/net/wifi/WifiEnterpriseConfig$SupplicantSaver;->saveValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_63

    .line 763
    return v1

    .line 766
    :cond_63
    iget v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    const-string v5, "phase2"

    if-eq v4, v3, :cond_a3

    iget v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    const/4 v6, 0x7

    if-eq v4, v6, :cond_a3

    iget v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    if-eqz v4, :cond_a3

    .line 767
    iget v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_7c

    iget v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    if-ne v4, v2, :cond_7c

    move v1, v3

    .line 768
    .local v1, "is_autheap":Z
    :cond_7c
    if-eqz v1, :cond_81

    const-string v2, "autheap="

    goto :goto_83

    :cond_81
    const-string v2, "auth="

    .line 769
    .local v2, "prefix":Ljava/lang/String;
    :goto_83
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/net/wifi/WifiEnterpriseConfig$Phase2;->strings:[Ljava/lang/String;

    iget v6, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 770
    .local v3, "value":Ljava/lang/String;
    invoke-interface {p1, v5, v3}, Landroid/net/wifi/WifiEnterpriseConfig$SupplicantSaver;->saveValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    return v4

    .line 771
    .end local v1    # "is_autheap":Z
    .end local v2    # "prefix":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_a3
    iget v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    if-nez v2, :cond_ad

    .line 773
    const/4 v1, 0x0

    invoke-interface {p1, v5, v1}, Landroid/net/wifi/WifiEnterpriseConfig$SupplicantSaver;->saveValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 775
    :cond_ad
    const-string v2, "WifiEnterpriseConfig"

    const-string v3, "WiFi enterprise configuration is invalid as it supplies a phase 2 method but the phase1 method does not support it."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    return v1
.end method

.method public whitelist setAltSubjectMatch(Ljava/lang/String;)V
    .registers 3
    .param p1, "altSubjectMatch"    # Ljava/lang/String;

    .line 1464
    const-string v0, "altsubject_match"

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1465
    return-void
.end method

.method public whitelist setAnonymousIdentity(Ljava/lang/String;)V
    .registers 3
    .param p1, "anonymousIdentity"    # Ljava/lang/String;

    .line 901
    const-string v0, "anonymous_identity"

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    return-void
.end method

.method public whitelist setCaCertificate(Ljava/security/cert/X509Certificate;)V
    .registers 4
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .line 1079
    const/4 v0, 0x0

    if-eqz p1, :cond_1e

    .line 1080
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v1

    if-ltz v1, :cond_14

    .line 1081
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mIsAppInstalledCaCert:Z

    .line 1082
    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    goto :goto_20

    .line 1084
    :cond_14
    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    .line 1085
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a CA certificate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1088
    :cond_1e
    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    .line 1090
    :goto_20
    return-void
.end method

.method public greylist setCaCertificateAlias(Ljava/lang/String;)V
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;

    .line 981
    const-string v0, "ca_cert"

    const-string v1, "keystore://CACERT_"

    invoke-direct {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    return-void
.end method

.method public whitelist setCaCertificateAliases([Ljava/lang/String;)V
    .registers 7
    .param p1, "aliases"    # [Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 997
    const-string v0, "ca_cert"

    if-nez p1, :cond_b

    .line 998
    const/4 v1, 0x0

    const-string v2, "keystore://CACERT_"

    invoke-direct {p0, v0, v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4e

    .line 999
    :cond_b
    array-length v1, p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    .line 1001
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    goto :goto_4e

    .line 1004
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1005
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1c
    array-length v3, p1

    if-ge v2, v3, :cond_45

    .line 1006
    if-lez v2, :cond_26

    .line 1007
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1009
    :cond_26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CACERT_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->encodeCaCertificateAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 1011
    .end local v2    # "i":I
    :cond_45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "keystores://"

    invoke-direct {p0, v0, v2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :goto_4e
    return-void
.end method

.method public blacklist setCaCertificateForTrustOnFirstUse(Ljava/security/cert/X509Certificate;)V
    .registers 4
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .line 1102
    const/4 v0, 0x0

    if-eqz p1, :cond_1e

    .line 1103
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->isTrustOnFirstUseEnabled()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1104
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mIsAppInstalledCaCert:Z

    .line 1105
    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    goto :goto_20

    .line 1107
    :cond_14
    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    .line 1108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trust on First Use is not enabled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1111
    :cond_1e
    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    .line 1113
    :goto_20
    return-void
.end method

.method public whitelist setCaCertificates([Ljava/security/cert/X509Certificate;)V
    .registers 6
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;

    .line 1147
    const/4 v0, 0x0

    if-eqz p1, :cond_38

    .line 1148
    array-length v1, p1

    const/16 v2, 0x64

    if-gt v1, v2, :cond_2e

    .line 1153
    array-length v1, p1

    new-array v1, v1, [Ljava/security/cert/X509Certificate;

    .line 1154
    .local v1, "newCerts":[Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    array-length v3, p1

    if-ge v2, v3, :cond_28

    .line 1155
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v3

    if-ltz v3, :cond_1e

    .line 1156
    aget-object v3, p1, v2

    aput-object v3, v1, v2

    .line 1154
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1158
    :cond_1e
    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    .line 1159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Not a CA certificate"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1162
    .end local v2    # "i":I
    :cond_28
    iput-object v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    .line 1163
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mIsAppInstalledCaCert:Z

    .line 1164
    .end local v1    # "newCerts":[Ljava/security/cert/X509Certificate;
    goto :goto_3a

    .line 1149
    :cond_2e
    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    .line 1150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "List of CA certificates contains more than the allowed number of elements"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1165
    :cond_38
    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    .line 1167
    :goto_3a
    return-void
.end method

.method public whitelist setCaPath(Ljava/lang/String;)V
    .registers 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1210
    const-string v0, "ca_path"

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    return-void
.end method

.method public whitelist setClientCertificateAlias(Ljava/lang/String;)V
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1235
    const-string v0, "client_cert"

    const-string v1, "keystore://USRCERT_"

    invoke-direct {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    const-string v0, "key_id"

    const-string v1, "USRPKEY_"

    invoke-direct {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "engine_id"

    const-string v2, "engine"

    if-eqz v0, :cond_23

    .line 1239
    const-string v0, "0"

    invoke-virtual {p0, v2, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    const-string v0, ""

    invoke-virtual {p0, v1, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d

    .line 1242
    :cond_23
    const-string v0, "1"

    invoke-virtual {p0, v2, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    const-string v0, "keystore"

    invoke-virtual {p0, v1, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    :goto_2d
    return-void
.end method

.method public whitelist setClientKeyEntry(Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;)V
    .registers 6
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "clientCertificate"    # Ljava/security/cert/X509Certificate;

    .line 1271
    const/4 v0, 0x0

    .line 1272
    .local v0, "clientCertificates":[Ljava/security/cert/X509Certificate;
    if-eqz p2, :cond_a

    .line 1273
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/security/cert/X509Certificate;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    move-object v0, v1

    .line 1275
    :cond_a
    invoke-virtual {p0, p1, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientKeyEntryWithCertificateChain(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V

    .line 1276
    return-void
.end method

.method public whitelist setClientKeyEntryWithCertificateChain(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V
    .registers 7
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "clientCertificateChain"    # [Ljava/security/cert/X509Certificate;

    .line 1294
    const/4 v0, 0x0

    .line 1295
    .local v0, "newCerts":[Ljava/security/cert/X509Certificate;
    if-eqz p2, :cond_69

    array-length v1, p2

    if-lez v1, :cond_69

    .line 1307
    array-length v1, p2

    const/4 v2, 0x5

    if-gt v1, v2, :cond_61

    .line 1311
    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_59

    .line 1316
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_15
    array-length v3, p2

    if-ge v1, v3, :cond_2b

    .line 1317
    aget-object v3, p2, v1

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v3

    if-eq v3, v2, :cond_23

    .line 1316
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 1318
    :cond_23
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "All certificates following the first must be CA certificates"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1322
    .end local v1    # "i":I
    :cond_2b
    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [Ljava/security/cert/X509Certificate;

    .line 1325
    if-eqz p1, :cond_51

    .line 1328
    invoke-interface {p1}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v1

    .line 1329
    .local v1, "encodedKey":[B
    if-eqz v1, :cond_49

    .line 1332
    array-length v2, v1

    const/16 v3, 0x2000

    if-gt v2, v3, :cond_41

    goto :goto_69

    .line 1333
    :cond_41
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Private key exceeds the maximum allowed length"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1330
    :cond_49
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Private key cannot be encoded"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1326
    .end local v1    # "encodedKey":[B
    :cond_51
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Client cert without a private key"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1312
    :cond_59
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "First certificate in the chain must be a client end certificate"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1308
    :cond_61
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Certificate chain contains more than the allowed number of elements"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1338
    :cond_69
    :goto_69
    iput-object p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;

    .line 1339
    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    .line 1340
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mIsAppInstalledDeviceKeyAndCert:Z

    .line 1341
    return-void
.end method

.method public whitelist setClientKeyPairAlias(Ljava/lang/String;)V
    .registers 3
    .param p1, "alias"    # Ljava/lang/String;

    .line 1353
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1356
    const/16 v0, 0x100

    invoke-static {p1, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->isFieldLengthValid(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1359
    iput-object p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mKeyChainAlias:Ljava/lang/String;

    .line 1360
    return-void

    .line 1357
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1354
    :cond_17
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist setDecoratedIdentityPrefix(Ljava/lang/String;)V
    .registers 4
    .param p1, "decoratedIdentityPrefix"    # Ljava/lang/String;

    .line 1969
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1972
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "!"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_1d

    .line 1973
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Decorated identity prefix must be delimited by \'!\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1976
    :cond_1d
    :goto_1d
    const-string v0, "decorated_username_prefix"

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1977
    return-void

    .line 1970
    :cond_23
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist setDomainSuffixMatch(Ljava/lang/String;)V
    .registers 3
    .param p1, "domain"    # Ljava/lang/String;

    .line 1503
    const-string v0, "domain_suffix_match"

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1504
    return-void
.end method

.method public whitelist setEapMethod(I)V
    .registers 4
    .param p1, "eapMethod"    # I

    .line 816
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_20

    .line 836
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown EAP method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 819
    :pswitch_c
    iput p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    .line 820
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 821
    goto :goto_1f

    .line 824
    :pswitch_12
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 832
    :pswitch_15
    iput p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    .line 833
    const-string v0, "proactive_key_caching"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    nop

    .line 838
    :goto_1f
    return-void

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_15
        :pswitch_12
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_12
        :pswitch_c
    .end packed-switch
.end method

.method public greylist-max-o setFieldValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1691
    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1692
    return-void
.end method

.method public whitelist setIdentity(Ljava/lang/String;)V
    .registers 4
    .param p1, "identity"    # Ljava/lang/String;

    .line 884
    const-string v0, "identity"

    const-string v1, ""

    invoke-direct {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 885
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

    .line 2111
    if-ltz p1, :cond_8

    const/4 v0, 0x3

    if-gt p1, v0, :cond_8

    .line 2115
    iput p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mMinimumTlsVersion:I

    .line 2116
    return-void

    .line 2112
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

.method public whitelist setOcsp(I)V
    .registers 4
    .param p1, "ocsp"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1797
    if-ltz p1, :cond_8

    const/4 v0, 0x3

    if-gt p1, v0, :cond_8

    .line 1798
    iput p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mOcsp:I

    .line 1802
    return-void

    .line 1800
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid OCSP type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPassword(Ljava/lang/String;)V
    .registers 3
    .param p1, "password"    # Ljava/lang/String;

    .line 917
    const-string v0, "password"

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    return-void
.end method

.method public whitelist setPhase2Method(I)V
    .registers 4
    .param p1, "phase2Method"    # I

    .line 855
    packed-switch p1, :pswitch_data_10

    .line 867
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown Phase 2 method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 864
    :pswitch_b
    iput p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    .line 865
    nop

    .line 869
    return-void

    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public whitelist setPlmn(Ljava/lang/String;)V
    .registers 3
    .param p1, "plmn"    # Ljava/lang/String;

    .line 1573
    const-string v0, "plmn"

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1574
    return-void
.end method

.method public whitelist setRealm(Ljava/lang/String;)V
    .registers 3
    .param p1, "realm"    # Ljava/lang/String;

    .line 1520
    const-string v0, "realm"

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1521
    return-void
.end method

.method public blacklist setSelectedRcoi(J)V
    .registers 3
    .param p1, "selectedRcoi"    # J

    .line 1537
    iput-wide p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mSelectedRcoi:J

    .line 1538
    return-void
.end method

.method public blacklist setServerCertificateHash(Ljava/lang/String;)V
    .registers 4
    .param p1, "certHash"    # Ljava/lang/String;

    .line 967
    const-string v0, "ca_cert"

    const-string v1, "hash://server/sha256/"

    invoke-direct {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    return-void
.end method

.method public blacklist setStrictConservativePeerMode(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 1556
    iput-boolean p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mIsStrictConservativePeerMode:Z

    .line 1557
    return-void
.end method

.method public whitelist setSubjectMatch(Ljava/lang/String;)V
    .registers 3
    .param p1, "subjectMatch"    # Ljava/lang/String;

    .line 1439
    const-string v0, "subject_match"

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1440
    return-void
.end method

.method public blacklist setTofuConnectionState(I)V
    .registers 4
    .param p1, "state"    # I

    .line 2032
    if-ltz p1, :cond_9

    const/4 v0, 0x3

    if-le p1, v0, :cond_6

    goto :goto_9

    .line 2036
    :cond_6
    iput p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mTofuConnectionState:I

    .line 2037
    return-void

    .line 2033
    :cond_9
    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid TOFU connection state received. state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiEnterpriseConfig"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    return-void
.end method

.method public blacklist setTofuDialogApproved(Z)V
    .registers 3
    .param p1, "approved"    # Z

    .line 2052
    if-eqz p1, :cond_4

    const/4 v0, 0x2

    goto :goto_5

    :cond_4
    const/4 v0, 0x1

    :goto_5
    iput v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mTofuDialogState:I

    .line 2053
    return-void
.end method

.method public blacklist setTofuDialogState(I)V
    .registers 4
    .param p1, "state"    # I

    .line 2060
    if-ltz p1, :cond_9

    const/4 v0, 0x2

    if-le p1, v0, :cond_6

    goto :goto_9

    .line 2064
    :cond_6
    iput p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mTofuDialogState:I

    .line 2065
    return-void

    .line 2061
    :cond_9
    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid TOFU dialog state received. state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiEnterpriseConfig"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    return-void
.end method

.method public blacklist setUserApproveNoCaCert(Z)V
    .registers 2
    .param p1, "approved"    # Z

    .line 2083
    iput-boolean p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mUserApproveNoCaCert:Z

    .line 2084
    return-void
.end method

.method public whitelist setWapiCertSuite(Ljava/lang/String;)V
    .registers 3
    .param p1, "wapiCertSuite"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1841
    const-string v0, "wapi_cert_suite"

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1842
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 8

    .line 1696
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1697
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "\n"

    if-eqz v2, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1699
    .local v2, "key":Ljava/lang/String;
    const-string v4, "password"

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    const-string v4, "<removed>"

    goto :goto_30

    :cond_28
    iget-object v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1700
    .local v4, "value":Ljava/lang/String;
    :goto_30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1701
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    goto :goto_f

    .line 1702
    :cond_42
    iget v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    if-ltz v1, :cond_60

    iget v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    sget-object v2, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_60

    .line 1703
    const-string v1, "eap_method: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    iget v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1705
    :cond_60
    iget v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    if-lez v1, :cond_7e

    iget v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    sget-object v2, Landroid/net/wifi/WifiEnterpriseConfig$Phase2;->strings:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_7e

    .line 1706
    const-string v1, "phase2_method: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiEnterpriseConfig$Phase2;->strings:[Ljava/lang/String;

    iget v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1708
    :cond_7e
    const-string v1, " ocsp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mOcsp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1709
    const-string v1, " trust_on_first_use: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mIsTrustOnFirstUseEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1710
    const-string v1, " user_approve_no_ca_cert: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mUserApproveNoCaCert:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1711
    const-string v1, " selected_rcoi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mSelectedRcoi:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1712
    const-string v1, " minimum_tls_version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mMinimumTlsVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1713
    const-string v1, " enable_conservative_peer_mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mIsStrictConservativePeerMode:Z

    .line 1714
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1715
    const-string v1, " tofu_dialog_state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mTofuDialogState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1716
    const-string v1, " tofu_connection_state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mTofuConnectionState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1717
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 567
    invoke-direct {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->fieldMapToBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 568
    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 569
    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 570
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    invoke-static {p1, v0}, Landroid/net/wifi/ParcelUtil;->writeCertificates(Landroid/os/Parcel;[Ljava/security/cert/X509Certificate;)V

    .line 571
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;

    invoke-static {p1, v0}, Landroid/net/wifi/ParcelUtil;->writePrivateKey(Landroid/os/Parcel;Ljava/security/PrivateKey;)V

    .line 572
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    invoke-static {p1, v0}, Landroid/net/wifi/ParcelUtil;->writeCertificates(Landroid/os/Parcel;[Ljava/security/cert/X509Certificate;)V

    .line 573
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mKeyChainAlias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 574
    iget-boolean v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mIsAppInstalledDeviceKeyAndCert:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 575
    iget-boolean v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mIsAppInstalledCaCert:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 576
    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mOcsp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 577
    iget-boolean v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mIsTrustOnFirstUseEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 578
    iget-boolean v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mUserApproveNoCaCert:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 579
    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mMinimumTlsVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 580
    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mTofuDialogState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 581
    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mTofuConnectionState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 582
    return-void
.end method
