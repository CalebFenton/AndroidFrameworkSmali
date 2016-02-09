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
        Landroid/net/wifi/WifiEnterpriseConfig$1;
    }
.end annotation


# static fields
.field public static final ALTSUBJECT_MATCH_KEY:Ljava/lang/String; = "altsubject_match"

.field public static final ANON_IDENTITY_KEY:Ljava/lang/String; = "anonymous_identity"

.field public static final CA_CERT_KEY:Ljava/lang/String; = "ca_cert"

.field public static final CA_CERT_PREFIX:Ljava/lang/String; = "keystore://CACERT_"

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

.field public static final KEYSTORE_URI:Ljava/lang/String; = "keystore://"

.field public static final OPP_KEY_CACHING:Ljava/lang/String; = "proactive_key_caching"

.field public static final PASSWORD_KEY:Ljava/lang/String; = "password"

.field public static final PHASE2_KEY:Ljava/lang/String; = "phase2"

.field public static final PLMN_KEY:Ljava/lang/String; = "plmn"

.field public static final PRIVATE_KEY_ID_KEY:Ljava/lang/String; = "key_id"

.field public static final REALM_KEY:Ljava/lang/String; = "realm"

.field public static final SUBJECT_MATCH_KEY:Ljava/lang/String; = "subject_match"


# instance fields
.field private mCaCert:Ljava/security/cert/X509Certificate;

.field private mClientCertificate:Ljava/security/cert/X509Certificate;

.field private mClientPrivateKey:Ljava/security/PrivateKey;

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


# direct methods
.method static synthetic -get0(Landroid/net/wifi/WifiEnterpriseConfig;)Ljava/util/HashMap;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCert:Ljava/security/cert/X509Certificate;

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

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 169
    new-instance v0, Landroid/net/wifi/WifiEnterpriseConfig$1;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/WifiEnterpriseConfig$1;-><init>()V

    #@5
    .line 168
    sput-object v0, Landroid/net/wifi/WifiEnterpriseConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 106
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    #@a
    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiEnterpriseConfig;)V
    .locals 4
    .param p1, "source"    # Landroid/net/wifi/WifiEnterpriseConfig;

    #@0
    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 106
    new-instance v2, Ljava/util/HashMap;

    #@5
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    #@a
    .line 121
    iget-object v2, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    #@c
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@f
    move-result-object v2

    #@10
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v1

    #@14
    .local v1, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_0

    #@1a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Ljava/lang/String;

    #@20
    .line 122
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    #@22
    iget-object v2, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    #@24
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    move-result-object v2

    #@28
    check-cast v2, Ljava/lang/String;

    #@2a
    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    goto :goto_0

    #@2e
    .line 120
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    #@0
    .prologue
    .line 671
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

.method private getStringIndex([Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p1, "arr"    # [Ljava/lang/String;
    .param p2, "toBeFound"    # Ljava/lang/String;
    .param p3, "defaultIndex"    # I

    #@0
    .prologue
    .line 681
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    return p3

    #@7
    .line 682
    :cond_0
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    array-length v1, p1

    #@9
    if-ge v0, v1, :cond_2

    #@b
    .line 683
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
    .line 682
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 685
    :cond_2
    return p3
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
    .line 661
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
    .line 662
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@10
    move-result v0

    #@11
    .line 663
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
    .line 664
    add-int/lit8 v1, v0, -0x1

    #@1c
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    #@1f
    move-result v1

    #@20
    if-ne v1, v3, :cond_1

    #@22
    .line 665
    add-int/lit8 v1, v0, -0x1

    #@24
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    return-object v1

    #@29
    .line 667
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
    .line 155
    if-eqz p2, :cond_0

    #@3
    .line 157
    :try_start_0
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    #@6
    move-result-object v0

    #@7
    .line 158
    .local v0, "certBytes":[B
    array-length v2, v0

    #@8
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@b
    .line 159
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 154
    .end local v0    # "certBytes":[B
    :goto_0
    return-void

    #@f
    .line 160
    :catch_0
    move-exception v1

    #@10
    .line 161
    .local v1, "e":Ljava/security/cert/CertificateEncodingException;
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    goto :goto_0

    #@14
    .line 164
    .end local v1    # "e":Ljava/security/cert/CertificateEncodingException;
    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 128
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getAltSubjectMatch()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 578
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
    .line 380
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
    .locals 1

    #@0
    .prologue
    .line 451
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCert:Ljava/security/cert/X509Certificate;

    #@2
    return-object v0
.end method

.method public getCaCertificateAlias()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 420
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

.method public getClientCertificate()Ljava/security/cert/X509Certificate;
    .locals 1

    #@0
    .prologue
    .line 526
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificate:Ljava/security/cert/X509Certificate;

    #@2
    return-object v0
.end method

.method public getClientCertificateAlias()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 488
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
    .line 541
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;

    #@2
    return-object v0
.end method

.method public getDomainSuffixMatch()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 608
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
    .locals 3

    #@0
    .prologue
    .line 307
    iget-object v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    #@2
    const-string/jumbo v2, "eap"

    #@5
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/String;

    #@b
    .line 308
    .local v0, "eapMethod":Ljava/lang/String;
    sget-object v1, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    #@d
    const/4 v2, -0x1

    #@e
    invoke-direct {p0, v1, v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getStringIndex([Ljava/lang/String;Ljava/lang/String;I)I

    #@11
    move-result v1

    #@12
    return v1
.end method

.method public getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 695
    iget-object v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    .line 697
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
    .line 699
    :cond_1
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    .line 700
    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@22
    move-result v1

    #@23
    if-eqz v1, :cond_2

    #@25
    .line 701
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
    .line 703
    :cond_2
    return-object v0
.end method

.method public getFields()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 273
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 364
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

.method getKeyId(Landroid/net/wifi/WifiEnterpriseConfig;)Ljava/lang/String;
    .locals 4
    .param p1, "current"    # Landroid/net/wifi/WifiEnterpriseConfig;

    #@0
    .prologue
    .line 647
    iget-object v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    #@2
    const-string/jumbo v3, "eap"

    #@5
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/String;

    #@b
    .line 648
    .local v0, "eap":Ljava/lang/String;
    iget-object v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    #@d
    const-string/jumbo v3, "phase2"

    #@10
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Ljava/lang/String;

    #@16
    .line 651
    .local v1, "phase2":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_0

    #@1c
    .line 652
    iget-object v2, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    #@1e
    const-string/jumbo v3, "eap"

    #@21
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    .end local v0    # "eap":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    #@27
    .line 654
    .restart local v0    # "eap":Ljava/lang/String;
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@2a
    move-result v2

    #@2b
    if-eqz v2, :cond_1

    #@2d
    .line 655
    iget-object v2, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    #@2f
    const-string/jumbo v3, "phase2"

    #@32
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@35
    move-result-object v1

    #@36
    .end local v1    # "phase2":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    #@38
    .line 657
    .restart local v1    # "phase2":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v2

    #@41
    const-string/jumbo v3, "_"

    #@44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v2

    #@48
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v2

    #@4c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v2

    #@50
    return-object v2
.end method

.method public getPassword()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 398
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
    .locals 3

    #@0
    .prologue
    .line 343
    iget-object v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    #@2
    const-string/jumbo v2, "phase2"

    #@5
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v1

    #@9
    check-cast v1, Ljava/lang/String;

    #@b
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    .line 345
    .local v0, "phase2Method":Ljava/lang/String;
    const-string/jumbo v1, "auth="

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_0

    #@18
    .line 346
    const-string/jumbo v1, "auth="

    #@1b
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@1e
    move-result v1

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    .line 348
    :cond_0
    sget-object v1, Landroid/net/wifi/WifiEnterpriseConfig$Phase2;->strings:[Ljava/lang/String;

    #@25
    const/4 v2, 0x0

    #@26
    invoke-direct {p0, v1, v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getStringIndex([Ljava/lang/String;Ljava/lang/String;I)I

    #@29
    move-result v1

    #@2a
    return v1
.end method

.method public getPlmn()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 642
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
    .line 625
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
    .line 560
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

.method public resetCaCertificate()V
    .locals 1

    #@0
    .prologue
    .line 458
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCert:Ljava/security/cert/X509Certificate;

    #@3
    .line 457
    return-void
.end method

.method public resetClientKeyEntry()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 533
    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;

    #@3
    .line 534
    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificate:Ljava/security/cert/X509Certificate;

    #@5
    .line 532
    return-void
.end method

.method public setAltSubjectMatch(Ljava/lang/String;)V
    .locals 2
    .param p1, "altSubjectMatch"    # Ljava/lang/String;

    #@0
    .prologue
    .line 570
    const-string/jumbo v0, "altsubject_match"

    #@3
    const-string/jumbo v1, ""

    #@6
    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 569
    return-void
.end method

.method public setAnonymousIdentity(Ljava/lang/String;)V
    .locals 2
    .param p1, "anonymousIdentity"    # Ljava/lang/String;

    #@0
    .prologue
    .line 373
    const-string/jumbo v0, "anonymous_identity"

    #@3
    const-string/jumbo v1, ""

    #@6
    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 372
    return-void
.end method

.method public setCaCertificate(Ljava/security/cert/X509Certificate;)V
    .locals 2
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 435
    if-eqz p1, :cond_1

    #@3
    .line 436
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    #@6
    move-result v0

    #@7
    if-ltz v0, :cond_0

    #@9
    .line 437
    iput-object p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCert:Ljava/security/cert/X509Certificate;

    #@b
    .line 434
    :goto_0
    return-void

    #@c
    .line 439
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@e
    const-string/jumbo v1, "Not a CA certificate"

    #@11
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 442
    :cond_1
    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCert:Ljava/security/cert/X509Certificate;

    #@17
    goto :goto_0
.end method

.method public setCaCertificateAlias(Ljava/lang/String;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    .line 411
    const-string/jumbo v0, "ca_cert"

    #@3
    const-string/jumbo v1, "keystore://CACERT_"

    #@6
    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 410
    return-void
.end method

.method public setClientCertificateAlias(Ljava/lang/String;)V
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    .line 470
    const-string/jumbo v0, "client_cert"

    #@3
    const-string/jumbo v1, "keystore://USRCERT_"

    #@6
    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 471
    const-string/jumbo v0, "key_id"

    #@c
    const-string/jumbo v1, "USRPKEY_"

    #@f
    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@12
    .line 473
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_0

    #@18
    .line 474
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    #@1a
    const-string/jumbo v1, "engine"

    #@1d
    const-string/jumbo v2, "0"

    #@20
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    .line 475
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    #@25
    const-string/jumbo v1, "engine_id"

    #@28
    const-string/jumbo v2, "NULL"

    #@2b
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    .line 469
    :goto_0
    return-void

    #@2f
    .line 477
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    #@31
    const-string/jumbo v1, "engine"

    #@34
    const-string/jumbo v2, "1"

    #@37
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    .line 478
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
    .line 504
    if-eqz p2, :cond_2

    #@2
    .line 505
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    #@5
    move-result v0

    #@6
    const/4 v1, -0x1

    #@7
    if-eq v0, v1, :cond_0

    #@9
    .line 506
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v1, "Cannot be a CA certificate"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 508
    :cond_0
    if-nez p1, :cond_1

    #@14
    .line 509
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@16
    const-string/jumbo v1, "Client cert without a private key"

    #@19
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 511
    :cond_1
    invoke-interface {p1}, Ljava/security/PrivateKey;->getEncoded()[B

    #@20
    move-result-object v0

    #@21
    if-nez v0, :cond_2

    #@23
    .line 512
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@25
    const-string/jumbo v1, "Private key cannot be encoded"

    #@28
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v0

    #@2c
    .line 516
    :cond_2
    iput-object p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;

    #@2e
    .line 517
    iput-object p2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificate:Ljava/security/cert/X509Certificate;

    #@30
    .line 503
    return-void
.end method

.method public setDomainSuffixMatch(Ljava/lang/String;)V
    .locals 1
    .param p1, "domain"    # Ljava/lang/String;

    #@0
    .prologue
    .line 600
    const-string/jumbo v0, "domain_suffix_match"

    #@3
    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    #@6
    .line 599
    return-void
.end method

.method public setEapMethod(I)V
    .locals 3
    .param p1, "eapMethod"    # I

    #@0
    .prologue
    .line 283
    packed-switch p1, :pswitch_data_0

    #@3
    .line 298
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "Unknown EAP method"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 286
    :pswitch_0
    const/4 v0, 0x0

    #@d
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    #@10
    .line 294
    :pswitch_1
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    #@12
    const-string/jumbo v1, "eap"

    #@15
    sget-object v2, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    #@17
    aget-object v2, v2, p1

    #@19
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    .line 295
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    #@1e
    const-string/jumbo v1, "proactive_key_caching"

    #@21
    const-string/jumbo v2, "1"

    #@24
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    .line 282
    return-void

    #@28
    .line 283
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setFieldValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 729
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 730
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    #@8
    const-string/jumbo v1, "NULL"

    #@b
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    .line 728
    :goto_0
    return-void

    #@f
    .line 732
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
    .line 714
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 715
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    #@8
    const-string/jumbo v1, "NULL"

    #@b
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    .line 713
    :goto_0
    return-void

    #@f
    .line 717
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
    .line 356
    const-string/jumbo v0, "identity"

    #@3
    const-string/jumbo v1, ""

    #@6
    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 355
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;

    #@0
    .prologue
    .line 388
    const-string/jumbo v0, "password"

    #@3
    const-string/jumbo v1, ""

    #@6
    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 387
    return-void
.end method

.method public setPhase2Method(I)V
    .locals 4
    .param p1, "phase2Method"    # I

    #@0
    .prologue
    .line 321
    packed-switch p1, :pswitch_data_0

    #@3
    .line 334
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "Unknown Phase 2 method"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 323
    :pswitch_0
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    #@e
    const-string/jumbo v1, "phase2"

    #@11
    const-string/jumbo v2, "NULL"

    #@14
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    .line 320
    :goto_0
    return-void

    #@18
    .line 330
    :pswitch_1
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    #@1a
    const-string/jumbo v1, "phase2"

    #@1d
    .line 331
    new-instance v2, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v3, "auth="

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    sget-object v3, Landroid/net/wifi/WifiEnterpriseConfig$Phase2;->strings:[Ljava/lang/String;

    #@2b
    aget-object v3, v3, p1

    #@2d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    .line 330
    invoke-direct {p0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3c
    goto :goto_0

    #@3d
    .line 321
    nop

    #@3e
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setPlmn(Ljava/lang/String;)V
    .locals 2
    .param p1, "plmn"    # Ljava/lang/String;

    #@0
    .prologue
    .line 633
    const-string/jumbo v0, "plmn"

    #@3
    const-string/jumbo v1, ""

    #@6
    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 632
    return-void
.end method

.method public setRealm(Ljava/lang/String;)V
    .locals 2
    .param p1, "realm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 617
    const-string/jumbo v0, "realm"

    #@3
    const-string/jumbo v1, ""

    #@6
    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 616
    return-void
.end method

.method public setSubjectMatch(Ljava/lang/String;)V
    .locals 2
    .param p1, "subjectMatch"    # Ljava/lang/String;

    #@0
    .prologue
    .line 551
    const-string/jumbo v0, "subject_match"

    #@3
    const-string/jumbo v1, ""

    #@6
    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 550
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 738
    new-instance v2, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 739
    .local v2, "sb":Ljava/lang/StringBuffer;
    iget-object v3, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    #@7
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@a
    move-result-object v3

    #@b
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .local v1, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_0

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Ljava/lang/String;

    #@1b
    .line 740
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1e
    move-result-object v3

    #@1f
    const-string/jumbo v4, " "

    #@22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@25
    move-result-object v4

    #@26
    iget-object v3, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    #@28
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    move-result-object v3

    #@2c
    check-cast v3, Ljava/lang/String;

    #@2e
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@31
    move-result-object v3

    #@32
    const-string/jumbo v4, "\n"

    #@35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@38
    goto :goto_0

    #@39
    .line 742
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@3c
    move-result-object v3

    #@3d
    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 133
    iget-object v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    #@2
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    #@5
    move-result v4

    #@6
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@9
    .line 134
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
    .line 135
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@22
    move-result-object v4

    #@23
    check-cast v4, Ljava/lang/String;

    #@25
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@28
    .line 136
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
    .line 139
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCert:Ljava/security/cert/X509Certificate;

    #@34
    invoke-direct {p0, p1, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->writeCertificate(Landroid/os/Parcel;Ljava/security/cert/X509Certificate;)V

    #@37
    .line 141
    iget-object v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;

    #@39
    if-eqz v4, :cond_1

    #@3b
    .line 142
    iget-object v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;

    #@3d
    invoke-interface {v4}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    .line 143
    .local v0, "algorithm":Ljava/lang/String;
    iget-object v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;

    #@43
    invoke-interface {v4}, Ljava/security/PrivateKey;->getEncoded()[B

    #@46
    move-result-object v3

    #@47
    .line 144
    .local v3, "userKeyBytes":[B
    array-length v4, v3

    #@48
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@4b
    .line 145
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    #@4e
    .line 146
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@51
    .line 151
    .end local v0    # "algorithm":Ljava/lang/String;
    .end local v3    # "userKeyBytes":[B
    :goto_1
    iget-object v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificate:Ljava/security/cert/X509Certificate;

    #@53
    invoke-direct {p0, p1, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->writeCertificate(Landroid/os/Parcel;Ljava/security/cert/X509Certificate;)V

    #@56
    .line 132
    return-void

    #@57
    .line 148
    :cond_1
    const/4 v4, 0x0

    #@58
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@5b
    goto :goto_1
.end method
