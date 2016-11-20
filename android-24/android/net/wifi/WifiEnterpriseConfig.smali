.class public Landroid/net/wifi/WifiEnterpriseConfig;
.super Ljava/lang/Object;
.source "WifiEnterpriseConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiEnterpriseConfig$1;,
        Landroid/net/wifi/WifiEnterpriseConfig$Eap;,
        Landroid/net/wifi/WifiEnterpriseConfig$Phase2;,
        Landroid/net/wifi/WifiEnterpriseConfig$SupplicantLoader;,
        Landroid/net/wifi/WifiEnterpriseConfig$SupplicantSaver;
    }
.end annotation


# static fields
.field public static final ALTSUBJECT_MATCH_KEY:Ljava/lang/String; = "altsubject_match"

.field public static final ANON_IDENTITY_KEY:Ljava/lang/String; = "anonymous_identity"

.field public static final CA_CERT_ALIAS_DELIMITER:Ljava/lang/String; = " "

.field public static final CA_CERT_KEY:Ljava/lang/String; = "ca_cert"

.field public static final CA_CERT_PREFIX:Ljava/lang/String; = "keystore://CACERT_"

.field public static final CA_PATH_KEY:Ljava/lang/String; = "ca_path"

.field public static final CLIENT_CERT_KEY:Ljava/lang/String; = "client_cert"

.field public static final CLIENT_CERT_PREFIX:Ljava/lang/String; = "keystore://USRCERT_"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiEnterpriseConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final DOM_SUFFIX_MATCH_KEY:Ljava/lang/String; = "domain_suffix_match"

.field public static final EAP_KEY:Ljava/lang/String; = "eap"

.field public static final EMPTY_VALUE:Ljava/lang/String; = "NULL"

.field public static final ENGINE_DISABLE:Ljava/lang/String; = "0"

.field public static final ENGINE_ENABLE:Ljava/lang/String; = "1"

.field public static final ENGINE_ID_KEY:Ljava/lang/String; = "engine_id"

.field public static final ENGINE_ID_KEYSTORE:Ljava/lang/String; = "keystore"

.field public static final ENGINE_KEY:Ljava/lang/String; = "engine"

.field public static final IDENTITY_KEY:Ljava/lang/String; = "identity"

.field public static final KEYSTORES_URI:Ljava/lang/String; = "keystores://"

.field public static final KEYSTORE_URI:Ljava/lang/String; = "keystore://"

.field public static final OPP_KEY_CACHING:Ljava/lang/String; = "proactive_key_caching"

.field public static final PASSWORD_KEY:Ljava/lang/String; = "password"

.field public static final PHASE2_KEY:Ljava/lang/String; = "phase2"

.field public static final PLMN_KEY:Ljava/lang/String; = "plmn"

.field public static final PRIVATE_KEY_ID_KEY:Ljava/lang/String; = "key_id"

.field public static final REALM_KEY:Ljava/lang/String; = "realm"

.field public static final SUBJECT_MATCH_KEY:Ljava/lang/String; = "subject_match"

.field private static final SUPPLICANT_CONFIG_KEYS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "WifiEnterpriseConfig"


# instance fields
.field private mCaCerts:[Ljava/security/cert/X509Certificate;

.field private mClientCertificate:Ljava/security/cert/X509Certificate;

.field private mClientPrivateKey:Ljava/security/PrivateKey;

.field private mEapMethod:I

.field private mFields:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhase2Method:I


# direct methods
.method static synthetic -get0(Landroid/net/wifi/WifiEnterpriseConfig;)Ljava/util/HashMap;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/net/wifi/WifiEnterpriseConfig;[Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificate:Ljava/security/cert/X509Certificate;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/security/PrivateKey;)Ljava/security/PrivateKey;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;

    #@2
    return-object p1
.end method

.method static synthetic -set3(Landroid/net/wifi/WifiEnterpriseConfig;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    #@2
    return p1
.end method

.method static synthetic -set4(Landroid/net/wifi/WifiEnterpriseConfig;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    #@2
    return p1
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 121
    const/16 v0, 0xc

    #@2
    new-array v0, v0, [Ljava/lang/String;

    #@4
    .line 122
    const-string/jumbo v1, "identity"

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    .line 123
    const-string/jumbo v1, "anonymous_identity"

    #@d
    const/4 v2, 0x1

    #@e
    aput-object v1, v0, v2

    #@10
    .line 124
    const-string/jumbo v1, "password"

    #@13
    const/4 v2, 0x2

    #@14
    aput-object v1, v0, v2

    #@16
    .line 125
    const-string/jumbo v1, "client_cert"

    #@19
    const/4 v2, 0x3

    #@1a
    aput-object v1, v0, v2

    #@1c
    .line 126
    const-string/jumbo v1, "ca_cert"

    #@1f
    const/4 v2, 0x4

    #@20
    aput-object v1, v0, v2

    #@22
    .line 127
    const-string/jumbo v1, "subject_match"

    #@25
    const/4 v2, 0x5

    #@26
    aput-object v1, v0, v2

    #@28
    .line 128
    const-string/jumbo v1, "engine"

    #@2b
    const/4 v2, 0x6

    #@2c
    aput-object v1, v0, v2

    #@2e
    .line 129
    const-string/jumbo v1, "engine_id"

    #@31
    const/4 v2, 0x7

    #@32
    aput-object v1, v0, v2

    #@34
    .line 130
    const-string/jumbo v1, "key_id"

    #@37
    const/16 v2, 0x8

    #@39
    aput-object v1, v0, v2

    #@3b
    .line 131
    const-string/jumbo v1, "altsubject_match"

    #@3e
    const/16 v2, 0x9

    #@40
    aput-object v1, v0, v2

    #@42
    .line 132
    const-string/jumbo v1, "domain_suffix_match"

    #@45
    const/16 v2, 0xa

    #@47
    aput-object v1, v0, v2

    #@49
    .line 133
    const-string/jumbo v1, "ca_path"

    #@4c
    const/16 v2, 0xb

    #@4e
    aput-object v1, v0, v2

    #@50
    .line 121
    sput-object v0, Landroid/net/wifi/WifiEnterpriseConfig;->SUPPLICANT_CONFIG_KEYS:[Ljava/lang/String;

    #@52
    .line 218
    new-instance v0, Landroid/net/wifi/WifiEnterpriseConfig$1;

    #@54
    invoke-direct {v0}, Landroid/net/wifi/WifiEnterpriseConfig$1;-><init>()V

    #@57
    .line 217
    sput-object v0, Landroid/net/wifi/WifiEnterpriseConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    #@59
    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 136
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    #@a
    .line 140
    const/4 v0, -0x1

    #@b
    iput v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    #@d
    .line 141
    const/4 v0, 0x0

    #@e
    iput v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    #@10
    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiEnterpriseConfig;)V
    .locals 4
    .param p1, "source"    # Landroid/net/wifi/WifiEnterpriseConfig;

    #@0
    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 136
    new-instance v2, Ljava/util/HashMap;

    #@5
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    #@a
    .line 140
    const/4 v2, -0x1

    #@b
    iput v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    #@d
    .line 141
    const/4 v2, 0x0

    #@e
    iput v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    #@10
    .line 155
    iget-object v2, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    #@12
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@15
    move-result-object v2

    #@16
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@19
    move-result-object v1

    #@1a
    .local v1, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_0

    #@20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Ljava/lang/String;

    #@26
    .line 156
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    #@28
    iget-object v2, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    #@2a
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    move-result-object v2

    #@2e
    check-cast v2, Ljava/lang/String;

    #@30
    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@33
    goto :goto_0

    #@34
    .line 158
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    iget v2, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    #@36
    iput v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    #@38
    .line 159
    iget v2, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    #@3a
    iput v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    #@3c
    .line 154
    return-void
.end method

.method private convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    #@0
    .prologue
    .line 971
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "\""

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    const-string/jumbo v1, "\""

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    return-object v0
.end method

.method public static decodeCaCertificateAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    .line 565
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v4

    #@4
    shr-int/lit8 v4, v4, 0x1

    #@6
    new-array v0, v4, [B

    #@8
    .line 566
    .local v0, "data":[B
    const/4 v2, 0x0

    #@9
    .local v2, "n":I
    const/4 v3, 0x0

    #@a
    .local v3, "position":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@d
    move-result v4

    #@e
    if-ge v2, v4, :cond_0

    #@10
    .line 567
    add-int/lit8 v4, v2, 0x2

    #@12
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@15
    move-result-object v4

    #@16
    const/16 v5, 0x10

    #@18
    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@1b
    move-result v4

    #@1c
    int-to-byte v4, v4

    #@1d
    aput-byte v4, v0, v3

    #@1f
    .line 566
    add-int/lit8 v2, v2, 0x2

    #@21
    add-int/lit8 v3, v3, 0x1

    #@23
    goto :goto_0

    #@24
    .line 570
    :cond_0
    :try_start_0
    new-instance v4, Ljava/lang/String;

    #@26
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@28
    invoke-direct {v4, v0, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    return-object v4

    #@2c
    .line 571
    :catch_0
    move-exception v1

    #@2d
    .line 572
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    #@30
    .line 573
    return-object p0
.end method

.method public static encodeCaCertificateAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 552
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@3
    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@6
    move-result-object v0

    #@7
    .line 553
    .local v0, "bytes":[B
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    array-length v3, v0

    #@a
    mul-int/lit8 v3, v3, 0x2

    #@c
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    #@f
    .line 554
    .local v2, "sb":Ljava/lang/StringBuilder;
    array-length v5, v0

    #@10
    move v3, v4

    #@11
    :goto_0
    if-ge v3, v5, :cond_0

    #@13
    aget-byte v1, v0, v3

    #@15
    .line 555
    .local v1, "o":B
    const-string/jumbo v6, "%02x"

    #@18
    const/4 v7, 0x1

    #@19
    new-array v7, v7, [Ljava/lang/Object;

    #@1b
    and-int/lit16 v8, v1, 0xff

    #@1d
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@20
    move-result-object v8

    #@21
    aput-object v8, v7, v4

    #@23
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@26
    move-result-object v6

    #@27
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    .line 554
    add-int/lit8 v3, v3, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 557
    .end local v1    # "o":B
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    return-object v3
.end method

.method private getStringIndex([Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p1, "arr"    # [Ljava/lang/String;
    .param p2, "toBeFound"    # Ljava/lang/String;
    .param p3, "defaultIndex"    # I

    #@0
    .prologue
    .line 982
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    return p3

    #@7
    .line 983
    :cond_0
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    array-length v1, p1

    #@9
    if-ge v0, v1, :cond_2

    #@b
    .line 984
    aget-object v1, p1, v0

    #@d
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_1

    #@13
    return v0

    #@14
    .line 983
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 986
    :cond_2
    return p3
.end method

.method private isEapMethodValid()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1062
    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    #@3
    const/4 v1, -0x1

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 1063
    const-string/jumbo v0, "WifiEnterpriseConfig"

    #@9
    const-string/jumbo v1, "WiFi enterprise configuration is invalid as it supplies no EAP method."

    #@c
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 1064
    return v3

    #@10
    .line 1066
    :cond_0
    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    #@12
    if-ltz v0, :cond_1

    #@14
    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    #@16
    sget-object v1, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    #@18
    array-length v1, v1

    #@19
    if-lt v0, v1, :cond_2

    #@1b
    .line 1067
    :cond_1
    const-string/jumbo v0, "WifiEnterpriseConfig"

    #@1e
    new-instance v1, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v2, "mEapMethod is invald for WiFi enterprise configuration: "

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    iget v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@37
    .line 1068
    return v3

    #@38
    .line 1070
    :cond_2
    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    #@3a
    if-ltz v0, :cond_3

    #@3c
    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    #@3e
    sget-object v1, Landroid/net/wifi/WifiEnterpriseConfig$Phase2;->strings:[Ljava/lang/String;

    #@40
    array-length v1, v1

    #@41
    if-lt v0, v1, :cond_4

    #@43
    .line 1071
    :cond_3
    const-string/jumbo v0, "WifiEnterpriseConfig"

    #@46
    new-instance v1, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v2, "mPhase2Method is invald for WiFi enterprise configuration: "

    #@4e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v1

    #@52
    .line 1072
    iget v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    #@54
    .line 1071
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@57
    move-result-object v1

    #@58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v1

    #@5c
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5f
    .line 1073
    return v3

    #@60
    .line 1075
    :cond_4
    const/4 v0, 0x1

    #@61
    return v0
.end method

.method private removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "string"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v3, 0x22

    #@2
    const/4 v2, 0x1

    #@3
    .line 961
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    const-string/jumbo v1, ""

    #@c
    return-object v1

    #@d
    .line 962
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@10
    move-result v0

    #@11
    .line 963
    .local v0, "length":I
    if-le v0, v2, :cond_1

    #@13
    const/4 v1, 0x0

    #@14
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    #@17
    move-result v1

    #@18
    if-ne v1, v3, :cond_1

    #@1a
    .line 964
    add-int/lit8 v1, v0, -0x1

    #@1c
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    #@1f
    move-result v1

    #@20
    if-ne v1, v3, :cond_1

    #@22
    .line 965
    add-int/lit8 v1, v0, -0x1

    #@24
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    return-object v1

    #@29
    .line 967
    :cond_1
    return-object p1
.end method

.method private writeCertificate(Landroid/os/Parcel;Ljava/security/cert/X509Certificate;)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "cert"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 204
    if-eqz p2, :cond_0

    #@3
    .line 206
    :try_start_0
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    #@6
    move-result-object v0

    #@7
    .line 207
    .local v0, "certBytes":[B
    array-length v2, v0

    #@8
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@b
    .line 208
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 203
    .end local v0    # "certBytes":[B
    :goto_0
    return-void

    #@f
    .line 209
    :catch_0
    move-exception v1

    #@10
    .line 210
    .local v1, "e":Ljava/security/cert/CertificateEncodingException;
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    goto :goto_0

    #@14
    .line 213
    .end local v1    # "e":Ljava/security/cert/CertificateEncodingException;
    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    goto :goto_0
.end method

.method private writeCertificates(Landroid/os/Parcel;[Ljava/security/cert/X509Certificate;)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "cert"    # [Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 193
    if-eqz p2, :cond_0

    #@3
    array-length v1, p2

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 194
    array-length v1, p2

    #@7
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 195
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_0
    array-length v1, p2

    #@c
    if-ge v0, v1, :cond_1

    #@e
    .line 196
    aget-object v1, p2, v0

    #@10
    invoke-direct {p0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->writeCertificate(Landroid/os/Parcel;Ljava/security/cert/X509Certificate;)V

    #@13
    .line 195
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 199
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 192
    :cond_1
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 164
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getAltSubjectMatch()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 881
    const-string/jumbo v0, "altsubject_match"

    #@3
    const-string/jumbo v1, ""

    #@6
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getAnonymousIdentity()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 526
    const-string/jumbo v0, "anonymous_identity"

    #@3
    const-string/jumbo v1, ""

    #@6
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getCaCertificate()Ljava/security/cert/X509Certificate;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 683
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    #@8
    array-length v0, v0

    #@9
    if-lez v0, :cond_0

    #@b
    .line 684
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    #@d
    aget-object v0, v0, v1

    #@f
    return-object v0

    #@10
    .line 686
    :cond_0
    return-object v2
.end method

.method public getCaCertificateAlias()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 625
    const-string/jumbo v0, "ca_cert"

    #@3
    const-string/jumbo v1, "keystore://CACERT_"

    #@6
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getCaCertificateAliases()[Ljava/lang/String;
    .locals 9

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v8, 0x1

    #@2
    const/4 v7, 0x0

    #@3
    .line 634
    const-string/jumbo v5, "ca_cert"

    #@6
    const-string/jumbo v6, ""

    #@9
    invoke-virtual {p0, v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    .line 635
    .local v2, "value":Ljava/lang/String;
    const-string/jumbo v5, "keystore://CACERT_"

    #@10
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@13
    move-result v5

    #@14
    if-eqz v5, :cond_0

    #@16
    .line 637
    new-array v4, v8, [Ljava/lang/String;

    #@18
    const-string/jumbo v5, "ca_cert"

    #@1b
    const-string/jumbo v6, "keystore://CACERT_"

    #@1e
    invoke-virtual {p0, v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@21
    move-result-object v5

    #@22
    aput-object v5, v4, v7

    #@24
    return-object v4

    #@25
    .line 638
    :cond_0
    const-string/jumbo v5, "keystores://"

    #@28
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@2b
    move-result v5

    #@2c
    if-eqz v5, :cond_4

    #@2e
    .line 639
    const-string/jumbo v5, "keystores://"

    #@31
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@34
    move-result v5

    #@35
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@38
    move-result-object v3

    #@39
    .line 641
    .local v3, "values":Ljava/lang/String;
    const-string/jumbo v5, " "

    #@3c
    invoke-static {v3, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    #@3f
    move-result-object v0

    #@40
    .line 642
    .local v0, "aliases":[Ljava/lang/String;
    const/4 v1, 0x0

    #@41
    .local v1, "i":I
    :goto_0
    array-length v5, v0

    #@42
    if-ge v1, v5, :cond_2

    #@44
    .line 643
    aget-object v5, v0, v1

    #@46
    invoke-static {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->decodeCaCertificateAlias(Ljava/lang/String;)Ljava/lang/String;

    #@49
    move-result-object v5

    #@4a
    aput-object v5, v0, v1

    #@4c
    .line 644
    aget-object v5, v0, v1

    #@4e
    const-string/jumbo v6, "CACERT_"

    #@51
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@54
    move-result v5

    #@55
    if-eqz v5, :cond_1

    #@57
    .line 645
    aget-object v5, v0, v1

    #@59
    const-string/jumbo v6, "CACERT_"

    #@5c
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@5f
    move-result v6

    #@60
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@63
    move-result-object v5

    #@64
    aput-object v5, v0, v1

    #@66
    .line 642
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@68
    goto :goto_0

    #@69
    .line 648
    :cond_2
    array-length v5, v0

    #@6a
    if-eqz v5, :cond_3

    #@6c
    .end local v0    # "aliases":[Ljava/lang/String;
    :goto_1
    return-object v0

    #@6d
    .restart local v0    # "aliases":[Ljava/lang/String;
    :cond_3
    move-object v0, v4

    #@6e
    goto :goto_1

    #@6f
    .line 650
    .end local v0    # "aliases":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v3    # "values":Ljava/lang/String;
    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@72
    move-result v5

    #@73
    if-eqz v5, :cond_5

    #@75
    :goto_2
    return-object v4

    #@76
    :cond_5
    new-array v4, v8, [Ljava/lang/String;

    #@78
    aput-object v2, v4, v7

    #@7a
    goto :goto_2
.end method

.method public getCaCertificates()[Ljava/security/cert/X509Certificate;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 723
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    #@7
    array-length v0, v0

    #@8
    if-lez v0, :cond_0

    #@a
    .line 724
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    #@c
    return-object v0

    #@d
    .line 726
    :cond_0
    return-object v1
.end method

.method public getCaPath()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 761
    const-string/jumbo v0, "ca_path"

    #@3
    const-string/jumbo v1, ""

    #@6
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getClientCertificate()Ljava/security/cert/X509Certificate;
    .locals 1

    #@0
    .prologue
    .line 829
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificate:Ljava/security/cert/X509Certificate;

    #@2
    return-object v0
.end method

.method public getClientCertificateAlias()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 791
    const-string/jumbo v0, "client_cert"

    #@3
    const-string/jumbo v1, "keystore://USRCERT_"

    #@6
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getClientPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    #@0
    .prologue
    .line 844
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;

    #@2
    return-object v0
.end method

.method public getDomainSuffixMatch()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 911
    const-string/jumbo v0, "domain_suffix_match"

    #@3
    const-string/jumbo v1, ""

    #@6
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getEapMethod()I
    .locals 1

    #@0
    .prologue
    .line 462
    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    #@2
    return v0
.end method

.method public getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 999
    iget-object v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    .line 1001
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_0

    #@e
    const-string/jumbo v1, "NULL"

    #@11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_1

    #@17
    :cond_0
    const-string/jumbo v1, ""

    #@1a
    return-object v1

    #@1b
    .line 1003
    :cond_1
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    .line 1004
    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@22
    move-result v1

    #@23
    if-eqz v1, :cond_2

    #@25
    .line 1005
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@28
    move-result v1

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    return-object v1

    #@2e
    .line 1007
    :cond_2
    return-object v0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 509
    const-string/jumbo v0, "identity"

    #@3
    const-string/jumbo v1, ""

    #@6
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getKeyId(Landroid/net/wifi/WifiEnterpriseConfig;)Ljava/lang/String;
    .locals 3
    .param p1, "current"    # Landroid/net/wifi/WifiEnterpriseConfig;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 951
    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    #@3
    const/4 v1, -0x1

    #@4
    if-ne v0, v1, :cond_1

    #@6
    .line 952
    if-eqz p1, :cond_0

    #@8
    invoke-virtual {p1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getKeyId(Landroid/net/wifi/WifiEnterpriseConfig;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    :goto_0
    return-object v0

    #@d
    :cond_0
    const-string/jumbo v0, "NULL"

    #@10
    goto :goto_0

    #@11
    .line 954
    :cond_1
    invoke-direct {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->isEapMethodValid()Z

    #@14
    move-result v0

    #@15
    if-nez v0, :cond_2

    #@17
    .line 955
    const-string/jumbo v0, "NULL"

    #@1a
    return-object v0

    #@1b
    .line 957
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    sget-object v1, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    #@22
    iget v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    #@24
    aget-object v1, v1, v2

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    const-string/jumbo v1, "_"

    #@2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    sget-object v1, Landroid/net/wifi/WifiEnterpriseConfig$Phase2;->strings:[Ljava/lang/String;

    #@33
    iget v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    #@35
    aget-object v1, v1, v2

    #@37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v0

    #@3b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v0

    #@3f
    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 544
    const-string/jumbo v0, "password"

    #@3
    const-string/jumbo v1, ""

    #@6
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getPhase2Method()I
    .locals 1

    #@0
    .prologue
    .line 493
    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    #@2
    return v0
.end method

.method public getPlmn()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 945
    const-string/jumbo v0, "plmn"

    #@3
    const-string/jumbo v1, ""

    #@6
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 928
    const-string/jumbo v0, "realm"

    #@3
    const-string/jumbo v1, ""

    #@6
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getSubjectMatch()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 863
    const-string/jumbo v0, "subject_match"

    #@3
    const-string/jumbo v1, ""

    #@6
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public loadFromSupplicant(Landroid/net/wifi/WifiEnterpriseConfig$SupplicantLoader;)V
    .locals 10
    .param p1, "loader"    # Landroid/net/wifi/WifiEnterpriseConfig$SupplicantLoader;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 409
    sget-object v6, Landroid/net/wifi/WifiEnterpriseConfig;->SUPPLICANT_CONFIG_KEYS:[Ljava/lang/String;

    #@3
    array-length v7, v6

    #@4
    move v4, v5

    #@5
    :goto_0
    if-ge v4, v7, :cond_1

    #@7
    aget-object v1, v6, v4

    #@9
    .line 410
    .local v1, "key":Ljava/lang/String;
    invoke-interface {p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig$SupplicantLoader;->loadValue(Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v3

    #@d
    .line 411
    .local v3, "value":Ljava/lang/String;
    if-nez v3, :cond_0

    #@f
    .line 412
    iget-object v8, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    #@11
    const-string/jumbo v9, "NULL"

    #@14
    invoke-virtual {v8, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    .line 409
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 414
    :cond_0
    iget-object v8, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    #@1c
    invoke-virtual {v8, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    goto :goto_1

    #@20
    .line 417
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "eap"

    #@23
    invoke-interface {p1, v4}, Landroid/net/wifi/WifiEnterpriseConfig$SupplicantLoader;->loadValue(Ljava/lang/String;)Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    .line 418
    .local v0, "eapMethod":Ljava/lang/String;
    sget-object v4, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    #@29
    const/4 v6, -0x1

    #@2a
    invoke-direct {p0, v4, v0, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getStringIndex([Ljava/lang/String;Ljava/lang/String;I)I

    #@2d
    move-result v4

    #@2e
    iput v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    #@30
    .line 420
    const-string/jumbo v4, "phase2"

    #@33
    invoke-interface {p1, v4}, Landroid/net/wifi/WifiEnterpriseConfig$SupplicantLoader;->loadValue(Ljava/lang/String;)Ljava/lang/String;

    #@36
    move-result-object v4

    #@37
    invoke-direct {p0, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    .line 422
    .local v2, "phase2Method":Ljava/lang/String;
    const-string/jumbo v4, "auth="

    #@3e
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@41
    move-result v4

    #@42
    if-eqz v4, :cond_3

    #@44
    .line 423
    const-string/jumbo v4, "auth="

    #@47
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@4a
    move-result v4

    #@4b
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@4e
    move-result-object v2

    #@4f
    .line 427
    :cond_2
    :goto_2
    sget-object v4, Landroid/net/wifi/WifiEnterpriseConfig$Phase2;->strings:[Ljava/lang/String;

    #@51
    invoke-direct {p0, v4, v2, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getStringIndex([Ljava/lang/String;Ljava/lang/String;I)I

    #@54
    move-result v4

    #@55
    iput v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    #@57
    .line 408
    return-void

    #@58
    .line 424
    :cond_3
    const-string/jumbo v4, "autheap="

    #@5b
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@5e
    move-result v4

    #@5f
    if-eqz v4, :cond_2

    #@61
    .line 425
    const-string/jumbo v4, "autheap="

    #@64
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@67
    move-result v4

    #@68
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@6b
    move-result-object v2

    #@6c
    goto :goto_2
.end method

.method public resetCaCertificate()V
    .locals 1

    #@0
    .prologue
    .line 734
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    #@3
    .line 733
    return-void
.end method

.method public resetClientKeyEntry()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 836
    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;

    #@3
    .line 837
    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificate:Ljava/security/cert/X509Certificate;

    #@5
    .line 835
    return-void
.end method

.method public saveToSupplicant(Landroid/net/wifi/WifiEnterpriseConfig$SupplicantSaver;)Z
    .locals 9
    .param p1, "saver"    # Landroid/net/wifi/WifiEnterpriseConfig$SupplicantSaver;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 374
    invoke-direct {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->isEapMethodValid()Z

    #@5
    move-result v5

    #@6
    if-nez v5, :cond_0

    #@8
    .line 375
    return v6

    #@9
    .line 378
    :cond_0
    iget-object v5, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    #@b
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@e
    move-result-object v5

    #@f
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v2

    #@13
    .local v2, "key$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v5

    #@17
    if-eqz v5, :cond_2

    #@19
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, Ljava/lang/String;

    #@1f
    .line 379
    .local v1, "key":Ljava/lang/String;
    iget-object v5, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    #@21
    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    move-result-object v5

    #@25
    check-cast v5, Ljava/lang/String;

    #@27
    invoke-interface {p1, v1, v5}, Landroid/net/wifi/WifiEnterpriseConfig$SupplicantSaver;->saveValue(Ljava/lang/String;Ljava/lang/String;)Z

    #@2a
    move-result v5

    #@2b
    if-nez v5, :cond_1

    #@2d
    .line 380
    return v6

    #@2e
    .line 384
    .end local v1    # "key":Ljava/lang/String;
    :cond_2
    const-string/jumbo v5, "eap"

    #@31
    sget-object v7, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    #@33
    iget v8, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    #@35
    aget-object v7, v7, v8

    #@37
    invoke-interface {p1, v5, v7}, Landroid/net/wifi/WifiEnterpriseConfig$SupplicantSaver;->saveValue(Ljava/lang/String;Ljava/lang/String;)Z

    #@3a
    move-result v5

    #@3b
    if-nez v5, :cond_3

    #@3d
    .line 385
    return v6

    #@3e
    .line 388
    :cond_3
    iget v5, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    #@40
    if-eq v5, v0, :cond_6

    #@42
    iget v5, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    #@44
    if-eqz v5, :cond_6

    #@46
    .line 389
    iget v5, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    #@48
    const/4 v7, 0x2

    #@49
    if-ne v5, v7, :cond_4

    #@4b
    iget v5, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    #@4d
    const/4 v7, 0x4

    #@4e
    if-ne v5, v7, :cond_4

    #@50
    .line 390
    .local v0, "is_autheap":Z
    :goto_0
    if-eqz v0, :cond_5

    #@52
    const-string/jumbo v3, "autheap="

    #@55
    .line 391
    .local v3, "prefix":Ljava/lang/String;
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v5

    #@5e
    sget-object v6, Landroid/net/wifi/WifiEnterpriseConfig$Phase2;->strings:[Ljava/lang/String;

    #@60
    iget v7, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    #@62
    aget-object v6, v6, v7

    #@64
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v5

    #@68
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v5

    #@6c
    invoke-direct {p0, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    #@6f
    move-result-object v4

    #@70
    .line 392
    .local v4, "value":Ljava/lang/String;
    const-string/jumbo v5, "phase2"

    #@73
    invoke-interface {p1, v5, v4}, Landroid/net/wifi/WifiEnterpriseConfig$SupplicantSaver;->saveValue(Ljava/lang/String;Ljava/lang/String;)Z

    #@76
    move-result v5

    #@77
    return v5

    #@78
    .end local v0    # "is_autheap":Z
    .end local v3    # "prefix":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_4
    move v0, v6

    #@79
    .line 389
    goto :goto_0

    #@7a
    .line 390
    .restart local v0    # "is_autheap":Z
    :cond_5
    const-string/jumbo v3, "auth="

    #@7d
    .restart local v3    # "prefix":Ljava/lang/String;
    goto :goto_1

    #@7e
    .line 393
    .end local v0    # "is_autheap":Z
    .end local v3    # "prefix":Ljava/lang/String;
    :cond_6
    iget v5, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    #@80
    if-nez v5, :cond_7

    #@82
    .line 395
    const-string/jumbo v5, "phase2"

    #@85
    const/4 v6, 0x0

    #@86
    invoke-interface {p1, v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig$SupplicantSaver;->saveValue(Ljava/lang/String;Ljava/lang/String;)Z

    #@89
    move-result v5

    #@8a
    return v5

    #@8b
    .line 397
    :cond_7
    const-string/jumbo v5, "WifiEnterpriseConfig"

    #@8e
    const-string/jumbo v7, "WiFi enterprise configuration is invalid as it supplies a phase 2 method but the phase1 method does not support it."

    #@91
    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@94
    .line 399
    return v6
.end method

.method public setAltSubjectMatch(Ljava/lang/String;)V
    .locals 2
    .param p1, "altSubjectMatch"    # Ljava/lang/String;

    #@0
    .prologue
    .line 873
    const-string/jumbo v0, "altsubject_match"

    #@3
    const-string/jumbo v1, ""

    #@6
    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 872
    return-void
.end method

.method public setAnonymousIdentity(Ljava/lang/String;)V
    .locals 2
    .param p1, "anonymousIdentity"    # Ljava/lang/String;

    #@0
    .prologue
    .line 518
    const-string/jumbo v0, "anonymous_identity"

    #@3
    const-string/jumbo v1, ""

    #@6
    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 517
    return-void
.end method

.method public setCaCertificate(Ljava/security/cert/X509Certificate;)V
    .locals 2
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 666
    if-eqz p1, :cond_1

    #@4
    .line 667
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    #@7
    move-result v0

    #@8
    if-ltz v0, :cond_0

    #@a
    .line 668
    const/4 v0, 0x1

    #@b
    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    #@d
    aput-object p1, v0, v1

    #@f
    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    #@11
    .line 665
    :goto_0
    return-void

    #@12
    .line 670
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@14
    const-string/jumbo v1, "Not a CA certificate"

    #@17
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    .line 673
    :cond_1
    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    #@1d
    goto :goto_0
.end method

.method public setCaCertificateAlias(Ljava/lang/String;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    .line 587
    const-string/jumbo v0, "ca_cert"

    #@3
    const-string/jumbo v1, "keystore://CACERT_"

    #@6
    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 586
    return-void
.end method

.method public setCaCertificateAliases([Ljava/lang/String;)V
    .locals 6
    .param p1, "aliases"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 601
    if-nez p1, :cond_0

    #@4
    .line 602
    const-string/jumbo v2, "ca_cert"

    #@7
    const-string/jumbo v3, "keystore://CACERT_"

    #@a
    invoke-virtual {p0, v2, v5, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@d
    .line 600
    :goto_0
    return-void

    #@e
    .line 603
    :cond_0
    array-length v2, p1

    #@f
    const/4 v3, 0x1

    #@10
    if-ne v2, v3, :cond_1

    #@12
    .line 605
    aget-object v2, p1, v4

    #@14
    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    #@17
    goto :goto_0

    #@18
    .line 608
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    .line 609
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    #@1e
    .local v0, "i":I
    :goto_1
    array-length v2, p1

    #@1f
    if-ge v0, v2, :cond_3

    #@21
    .line 610
    if-lez v0, :cond_2

    #@23
    .line 611
    const-string/jumbo v2, " "

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    .line 613
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v3, "CACERT_"

    #@31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    aget-object v3, p1, v0

    #@37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v2

    #@3b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v2

    #@3f
    invoke-static {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->encodeCaCertificateAlias(Ljava/lang/String;)Ljava/lang/String;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    .line 609
    add-int/lit8 v0, v0, 0x1

    #@48
    goto :goto_1

    #@49
    .line 615
    :cond_3
    const-string/jumbo v2, "ca_cert"

    #@4c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v3

    #@50
    const-string/jumbo v4, "keystores://"

    #@53
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@56
    goto :goto_0
.end method

.method public setCaCertificates([Ljava/security/cert/X509Certificate;)V
    .locals 4
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 704
    if-eqz p1, :cond_2

    #@3
    .line 705
    array-length v2, p1

    #@4
    new-array v1, v2, [Ljava/security/cert/X509Certificate;

    #@6
    .line 706
    .local v1, "newCerts":[Ljava/security/cert/X509Certificate;
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    array-length v2, p1

    #@8
    if-ge v0, v2, :cond_1

    #@a
    .line 707
    aget-object v2, p1, v0

    #@c
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    #@f
    move-result v2

    #@10
    if-ltz v2, :cond_0

    #@12
    .line 708
    aget-object v2, p1, v0

    #@14
    aput-object v2, v1, v0

    #@16
    .line 706
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_0

    #@19
    .line 710
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@1b
    const-string/jumbo v3, "Not a CA certificate"

    #@1e
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v2

    #@22
    .line 713
    :cond_1
    iput-object v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    #@24
    .line 703
    .end local v0    # "i":I
    .end local v1    # "newCerts":[Ljava/security/cert/X509Certificate;
    :goto_1
    return-void

    #@25
    .line 715
    :cond_2
    iput-object v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    #@27
    goto :goto_1
.end method

.method public setCaPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 752
    const-string/jumbo v0, "ca_path"

    #@3
    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    #@6
    .line 751
    return-void
.end method

.method public setClientCertificateAlias(Ljava/lang/String;)V
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    .line 773
    const-string/jumbo v0, "client_cert"

    #@3
    const-string/jumbo v1, "keystore://USRCERT_"

    #@6
    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 774
    const-string/jumbo v0, "key_id"

    #@c
    const-string/jumbo v1, "USRPKEY_"

    #@f
    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@12
    .line 776
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_0

    #@18
    .line 777
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    #@1a
    const-string/jumbo v1, "engine"

    #@1d
    const-string/jumbo v2, "0"

    #@20
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    .line 778
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    #@25
    const-string/jumbo v1, "engine_id"

    #@28
    const-string/jumbo v2, "NULL"

    #@2b
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    .line 772
    :goto_0
    return-void

    #@2f
    .line 780
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    #@31
    const-string/jumbo v1, "engine"

    #@34
    const-string/jumbo v2, "1"

    #@37
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    .line 781
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    #@3c
    const-string/jumbo v1, "engine_id"

    #@3f
    const-string/jumbo v2, "keystore"

    #@42
    invoke-direct {p0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    #@45
    move-result-object v2

    #@46
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@49
    goto :goto_0
.end method

.method public setClientKeyEntry(Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;)V
    .locals 2
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "clientCertificate"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    .line 807
    if-eqz p2, :cond_2

    #@2
    .line 808
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    #@5
    move-result v0

    #@6
    const/4 v1, -0x1

    #@7
    if-eq v0, v1, :cond_0

    #@9
    .line 809
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v1, "Cannot be a CA certificate"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 811
    :cond_0
    if-nez p1, :cond_1

    #@14
    .line 812
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@16
    const-string/jumbo v1, "Client cert without a private key"

    #@19
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 814
    :cond_1
    invoke-interface {p1}, Ljava/security/PrivateKey;->getEncoded()[B

    #@20
    move-result-object v0

    #@21
    if-nez v0, :cond_2

    #@23
    .line 815
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@25
    const-string/jumbo v1, "Private key cannot be encoded"

    #@28
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v0

    #@2c
    .line 819
    :cond_2
    iput-object p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;

    #@2e
    .line 820
    iput-object p2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificate:Ljava/security/cert/X509Certificate;

    #@30
    .line 806
    return-void
.end method

.method public setDomainSuffixMatch(Ljava/lang/String;)V
    .locals 1
    .param p1, "domain"    # Ljava/lang/String;

    #@0
    .prologue
    .line 903
    const-string/jumbo v0, "domain_suffix_match"

    #@3
    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    #@6
    .line 902
    return-void
.end method

.method public setEapMethod(I)V
    .locals 3
    .param p1, "eapMethod"    # I

    #@0
    .prologue
    .line 437
    packed-switch p1, :pswitch_data_0

    #@3
    .line 453
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "Unknown EAP method"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 441
    :pswitch_0
    const/4 v0, 0x0

    #@d
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    #@10
    .line 449
    :pswitch_1
    iput p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    #@12
    .line 450
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    #@14
    const-string/jumbo v1, "proactive_key_caching"

    #@17
    const-string/jumbo v2, "1"

    #@1a
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    .line 436
    return-void

    #@1e
    .line 437
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setFieldValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1039
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1040
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    #@8
    const-string/jumbo v1, "NULL"

    #@b
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    .line 1036
    :goto_0
    return-void

    #@f
    .line 1042
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    #@11
    invoke-direct {p0, p2}, Landroid/net/wifi/WifiEnterpriseConfig;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    goto :goto_0
.end method

.method public setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1021
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1022
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    #@8
    const-string/jumbo v1, "NULL"

    #@b
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    .line 1018
    :goto_0
    return-void

    #@f
    .line 1024
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    #@11
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    goto :goto_0
.end method

.method public setIdentity(Ljava/lang/String;)V
    .locals 2
    .param p1, "identity"    # Ljava/lang/String;

    #@0
    .prologue
    .line 501
    const-string/jumbo v0, "identity"

    #@3
    const-string/jumbo v1, ""

    #@6
    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 500
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;

    #@0
    .prologue
    .line 534
    const-string/jumbo v0, "password"

    #@3
    const-string/jumbo v1, ""

    #@6
    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 533
    return-void
.end method

.method public setPhase2Method(I)V
    .locals 2
    .param p1, "phase2Method"    # I

    #@0
    .prologue
    .line 475
    packed-switch p1, :pswitch_data_0

    #@3
    .line 484
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "Unknown Phase 2 method"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 481
    :pswitch_0
    iput p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    #@e
    .line 474
    return-void

    #@f
    .line 475
    nop

    #@10
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setPlmn(Ljava/lang/String;)V
    .locals 2
    .param p1, "plmn"    # Ljava/lang/String;

    #@0
    .prologue
    .line 936
    const-string/jumbo v0, "plmn"

    #@3
    const-string/jumbo v1, ""

    #@6
    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 935
    return-void
.end method

.method public setRealm(Ljava/lang/String;)V
    .locals 2
    .param p1, "realm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 920
    const-string/jumbo v0, "realm"

    #@3
    const-string/jumbo v1, ""

    #@6
    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 919
    return-void
.end method

.method public setSubjectMatch(Ljava/lang/String;)V
    .locals 2
    .param p1, "subjectMatch"    # Ljava/lang/String;

    #@0
    .prologue
    .line 854
    const-string/jumbo v0, "subject_match"

    #@3
    const-string/jumbo v1, ""

    #@6
    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 853
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 1048
    new-instance v2, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 1049
    .local v2, "sb":Ljava/lang/StringBuffer;
    iget-object v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    #@7
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@a
    move-result-object v4

    #@b
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .local v1, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v4

    #@13
    if-eqz v4, :cond_1

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Ljava/lang/String;

    #@1b
    .line 1051
    .local v0, "key":Ljava/lang/String;
    const-string/jumbo v4, "password"

    #@1e
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v4

    #@22
    if-eqz v4, :cond_0

    #@24
    const-string/jumbo v3, "<removed>"

    #@27
    .line 1052
    .local v3, "value":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2a
    move-result-object v4

    #@2b
    const-string/jumbo v5, " "

    #@2e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@31
    move-result-object v4

    #@32
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@35
    move-result-object v4

    #@36
    const-string/jumbo v5, "\n"

    #@39
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3c
    goto :goto_0

    #@3d
    .line 1051
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    #@3f
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@42
    move-result-object v3

    #@43
    check-cast v3, Ljava/lang/String;

    #@45
    .restart local v3    # "value":Ljava/lang/String;
    goto :goto_1

    #@46
    .line 1054
    .end local v0    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@49
    move-result-object v4

    #@4a
    return-object v4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 169
    iget-object v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    #@2
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    #@5
    move-result v4

    #@6
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@9
    .line 170
    iget-object v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    #@b
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@e
    move-result-object v4

    #@f
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v2

    #@13
    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v4

    #@17
    if-eqz v4, :cond_0

    #@19
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, Ljava/util/Map$Entry;

    #@1f
    .line 171
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@22
    move-result-object v4

    #@23
    check-cast v4, Ljava/lang/String;

    #@25
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@28
    .line 172
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@2b
    move-result-object v4

    #@2c
    check-cast v4, Ljava/lang/String;

    #@2e
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@31
    goto :goto_0

    #@32
    .line 175
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    #@34
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@37
    .line 176
    iget v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    #@39
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@3c
    .line 177
    iget-object v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    #@3e
    invoke-direct {p0, p1, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->writeCertificates(Landroid/os/Parcel;[Ljava/security/cert/X509Certificate;)V

    #@41
    .line 179
    iget-object v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;

    #@43
    if-eqz v4, :cond_1

    #@45
    .line 180
    iget-object v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;

    #@47
    invoke-interface {v4}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    #@4a
    move-result-object v0

    #@4b
    .line 181
    .local v0, "algorithm":Ljava/lang/String;
    iget-object v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;

    #@4d
    invoke-interface {v4}, Ljava/security/PrivateKey;->getEncoded()[B

    #@50
    move-result-object v3

    #@51
    .line 182
    .local v3, "userKeyBytes":[B
    array-length v4, v3

    #@52
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@55
    .line 183
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    #@58
    .line 184
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5b
    .line 189
    .end local v0    # "algorithm":Ljava/lang/String;
    .end local v3    # "userKeyBytes":[B
    :goto_1
    iget-object v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificate:Ljava/security/cert/X509Certificate;

    #@5d
    invoke-direct {p0, p1, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->writeCertificate(Landroid/os/Parcel;Ljava/security/cert/X509Certificate;)V

    #@60
    .line 168
    return-void

    #@61
    .line 186
    :cond_1
    const/4 v4, 0x0

    #@62
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@65
    goto :goto_1
.end method
