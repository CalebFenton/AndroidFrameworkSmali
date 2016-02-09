.class public Landroid/net/wifi/passpoint/WifiPasspointCredential;
.super Ljava/lang/Object;
.source "WifiPasspointCredential.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/passpoint/WifiPasspointCredential$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointCredential;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "PasspointCredential"


# instance fields
.field private mAaaCertUrl:Ljava/lang/String;

.field private mAaaSha256Fingerprint:Ljava/lang/String;

.field private mCaRootCert:Ljava/lang/String;

.field private mCertSha256Fingerprint:Ljava/lang/String;

.field private mCertType:Ljava/lang/String;

.field private mCheckAaaServerCertStatus:Z

.field private mClientCert:Ljava/lang/String;

.field private mCreationDate:Ljava/lang/String;

.field private mCredentialName:Ljava/lang/String;

.field private mCrednetialPriority:I

.field private mEnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

.field private mExpirationDate:Ljava/lang/String;

.field private mFriendlyName:Ljava/lang/String;

.field private mHomeOIList:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeOIList;",
            ">;"
        }
    .end annotation
.end field

.field private mHomeSpFqdn:Ljava/lang/String;

.field private mImsi:Ljava/lang/String;

.field private mInnerMethod:Ljava/lang/String;

.field private mIsMachineRemediation:Z

.field private mMaxBssLoad:Ljava/lang/String;

.field private mMcc:Ljava/lang/String;

.field private mMinBackhaulThresholdNetwork:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$MinBackhaulThresholdNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private mMnc:Ljava/lang/String;

.field private mOtherHomePartnerList:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$OtherHomePartners;",
            ">;"
        }
    .end annotation
.end field

.field private mPasswd:Ljava/lang/String;

.field private mPolicyUpdateInterval:Ljava/lang/String;

.field private mPolicyUpdateMethod:Ljava/lang/String;

.field private mPolicyUpdatePassword:Ljava/lang/String;

.field private mPolicyUpdateRestriction:Ljava/lang/String;

.field private mPolicyUpdateUri:Ljava/lang/String;

.field private mPolicyUpdateUsername:Ljava/lang/String;

.field private mPreferredRoamingPartnerList:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$PreferredRoamingPartnerList;",
            ">;"
        }
    .end annotation
.end field

.field private mRealm:Ljava/lang/String;

.field private mRequiredProtoPortTuple:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple;",
            ">;"
        }
    .end annotation
.end field

.field private mSpExclusionList:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$SPExclusionList;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionUpdateInterval:Ljava/lang/String;

.field private mSubscriptionUpdateMethod:Ljava/lang/String;

.field private mSubscriptionUpdatePassword:Ljava/lang/String;

.field private mSubscriptionUpdateRestriction:Ljava/lang/String;

.field private mSubscriptionUpdateURI:Ljava/lang/String;

.field private mSubscriptionUpdateUsername:Ljava/lang/String;

.field private mType:Ljava/lang/String;

.field private mUpdateIdentifier:Ljava/lang/String;

.field private mUserPreferred:Z

.field private mUsername:Ljava/lang/String;

.field private mWifiSpFqdn:Ljava/lang/String;

.field private mWifiTreePath:Ljava/lang/String;


# direct methods
.method static synthetic -set0(Landroid/net/wifi/passpoint/WifiPasspointCredential;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCredentialName:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Landroid/net/wifi/passpoint/WifiPasspointCredential;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCrednetialPriority:I

    #@2
    return p1
.end method

.method static synthetic -set2(Landroid/net/wifi/passpoint/WifiPasspointCredential;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mHomeSpFqdn:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set3(Landroid/net/wifi/passpoint/WifiPasspointCredential;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mRealm:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set4(Landroid/net/wifi/passpoint/WifiPasspointCredential;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mType:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set5(Landroid/net/wifi/passpoint/WifiPasspointCredential;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mWifiSpFqdn:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 613
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointCredential$1;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointCredential$1;-><init>()V

    #@5
    .line 612
    sput-object v0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 100
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mUserPreferred:Z

    #@6
    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/wifi/WifiEnterpriseConfig;)V
    .locals 1
    .param p1, "realm"    # Ljava/lang/String;
    .param p2, "fqdn"    # Ljava/lang/String;
    .param p3, "config"    # Landroid/net/wifi/WifiEnterpriseConfig;

    #@0
    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 100
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mUserPreferred:Z

    #@6
    .line 115
    iput-object p1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mRealm:Ljava/lang/String;

    #@8
    .line 116
    invoke-virtual {p3}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    #@b
    move-result v0

    #@c
    packed-switch v0, :pswitch_data_0

    #@f
    .line 114
    :goto_0
    return-void

    #@10
    .line 119
    :pswitch_0
    new-instance v0, Landroid/net/wifi/WifiEnterpriseConfig;

    #@12
    invoke-direct {v0, p3}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>(Landroid/net/wifi/WifiEnterpriseConfig;)V

    #@15
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mEnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@17
    goto :goto_0

    #@18
    .line 116
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/wifi/passpoint/WifiPasspointDmTree$SpFqdn;Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;)V
    .locals 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "caroot"    # Ljava/lang/String;
    .param p3, "clientcert"    # Ljava/lang/String;
    .param p4, "mcc"    # Ljava/lang/String;
    .param p5, "mnc"    # Ljava/lang/String;
    .param p6, "sp"    # Landroid/net/wifi/passpoint/WifiPasspointDmTree$SpFqdn;
    .param p7, "credinfo"    # Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;

    #@0
    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 100
    const/4 v4, 0x0

    #@4
    iput-boolean v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mUserPreferred:Z

    #@6
    .line 135
    if-nez p7, :cond_0

    #@8
    .line 136
    return-void

    #@9
    .line 139
    :cond_0
    iput-object p1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mType:Ljava/lang/String;

    #@b
    .line 140
    iput-object p2, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCaRootCert:Ljava/lang/String;

    #@d
    .line 141
    iput-object p3, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mClientCert:Ljava/lang/String;

    #@f
    .line 143
    iget-object v4, p6, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SpFqdn;->nodeName:Ljava/lang/String;

    #@11
    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mWifiSpFqdn:Ljava/lang/String;

    #@13
    .line 144
    iget-object v4, p6, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SpFqdn;->perProviderSubscription:Landroid/net/wifi/passpoint/WifiPasspointDmTree$PerProviderSubscription;

    #@15
    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PerProviderSubscription;->UpdateIdentifier:Ljava/lang/String;

    #@17
    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mUpdateIdentifier:Ljava/lang/String;

    #@19
    .line 146
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->nodeName:Ljava/lang/String;

    #@1b
    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCredentialName:Ljava/lang/String;

    #@1d
    .line 147
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->homeSP:Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;

    #@1f
    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;->otherHomePartners:Ljava/util/HashMap;

    #@21
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@24
    move-result-object v4

    #@25
    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mOtherHomePartnerList:Ljava/util/Collection;

    #@27
    .line 149
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->aAAServerTrustRoot:Ljava/util/HashMap;

    #@29
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@2c
    move-result-object v3

    #@2d
    .line 150
    .local v3, "set":Ljava/util/Set;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@30
    move-result-object v2

    #@31
    .line 151
    .local v2, "i":Ljava/util/Iterator;
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@34
    move-result v4

    #@35
    if-eqz v4, :cond_1

    #@37
    .line 152
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3a
    move-result-object v1

    #@3b
    check-cast v1, Ljava/util/Map$Entry;

    #@3d
    .line 153
    .local v1, "entry3":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@40
    move-result-object v0

    #@41
    check-cast v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$AAAServerTrustRoot;

    #@43
    .line 154
    .local v0, "aaa":Landroid/net/wifi/passpoint/WifiPasspointDmTree$AAAServerTrustRoot;
    iget-object v4, v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$AAAServerTrustRoot;->CertURL:Ljava/lang/String;

    #@45
    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mAaaCertUrl:Ljava/lang/String;

    #@47
    .line 155
    iget-object v4, v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$AAAServerTrustRoot;->CertSHA256Fingerprint:Ljava/lang/String;

    #@49
    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mAaaSha256Fingerprint:Ljava/lang/String;

    #@4b
    .line 158
    .end local v0    # "aaa":Landroid/net/wifi/passpoint/WifiPasspointDmTree$AAAServerTrustRoot;
    .end local v1    # "entry3":Ljava/util/Map$Entry;
    :cond_1
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->credential:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;

    #@4d
    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->digitalCertificate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$DigitalCertificate;

    #@4f
    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$DigitalCertificate;->CertificateType:Ljava/lang/String;

    #@51
    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCertType:Ljava/lang/String;

    #@53
    .line 159
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->credential:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;

    #@55
    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->digitalCertificate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$DigitalCertificate;

    #@57
    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$DigitalCertificate;->CertSHA256Fingerprint:Ljava/lang/String;

    #@59
    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCertSha256Fingerprint:Ljava/lang/String;

    #@5b
    .line 160
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->credential:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;

    #@5d
    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->usernamePassword:Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;

    #@5f
    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;->Username:Ljava/lang/String;

    #@61
    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mUsername:Ljava/lang/String;

    #@63
    .line 161
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->credential:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;

    #@65
    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->usernamePassword:Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;

    #@67
    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;->Password:Ljava/lang/String;

    #@69
    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPasswd:Ljava/lang/String;

    #@6b
    .line 162
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->credential:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;

    #@6d
    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->usernamePassword:Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;

    #@6f
    iget-boolean v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;->MachineManaged:Z

    #@71
    iput-boolean v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mIsMachineRemediation:Z

    #@73
    .line 163
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->credential:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;

    #@75
    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->usernamePassword:Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;

    #@77
    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;->eAPMethod:Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;

    #@79
    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;->InnerMethod:Ljava/lang/String;

    #@7b
    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mInnerMethod:Ljava/lang/String;

    #@7d
    .line 164
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->credential:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;

    #@7f
    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->sim:Landroid/net/wifi/passpoint/WifiPasspointDmTree$SIM;

    #@81
    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SIM;->IMSI:Ljava/lang/String;

    #@83
    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mImsi:Ljava/lang/String;

    #@85
    .line 165
    iput-object p4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mMcc:Ljava/lang/String;

    #@87
    .line 166
    iput-object p5, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mMnc:Ljava/lang/String;

    #@89
    .line 167
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->credential:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;

    #@8b
    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->CreationDate:Ljava/lang/String;

    #@8d
    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCreationDate:Ljava/lang/String;

    #@8f
    .line 168
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->credential:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;

    #@91
    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->ExpirationDate:Ljava/lang/String;

    #@93
    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mExpirationDate:Ljava/lang/String;

    #@95
    .line 169
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->credential:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;

    #@97
    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->Realm:Ljava/lang/String;

    #@99
    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mRealm:Ljava/lang/String;

    #@9b
    .line 171
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->credentialPriority:Ljava/lang/String;

    #@9d
    if-nez v4, :cond_2

    #@9f
    .line 172
    const/16 v4, 0x80

    #@a1
    iput v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCrednetialPriority:I

    #@a3
    .line 177
    :goto_0
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->homeSP:Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;

    #@a5
    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;->FQDN:Ljava/lang/String;

    #@a7
    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mHomeSpFqdn:Ljava/lang/String;

    #@a9
    .line 179
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->subscriptionUpdate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;

    #@ab
    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;->UpdateInterval:Ljava/lang/String;

    #@ad
    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSubscriptionUpdateInterval:Ljava/lang/String;

    #@af
    .line 180
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->subscriptionUpdate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;

    #@b1
    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;->UpdateMethod:Ljava/lang/String;

    #@b3
    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSubscriptionUpdateMethod:Ljava/lang/String;

    #@b5
    .line 181
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->subscriptionUpdate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;

    #@b7
    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;->Restriction:Ljava/lang/String;

    #@b9
    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSubscriptionUpdateRestriction:Ljava/lang/String;

    #@bb
    .line 182
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->subscriptionUpdate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;

    #@bd
    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;->URI:Ljava/lang/String;

    #@bf
    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSubscriptionUpdateURI:Ljava/lang/String;

    #@c1
    .line 183
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->subscriptionUpdate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;

    #@c3
    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;->usernamePassword:Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;

    #@c5
    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;->Username:Ljava/lang/String;

    #@c7
    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSubscriptionUpdateUsername:Ljava/lang/String;

    #@c9
    .line 184
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->subscriptionUpdate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;

    #@cb
    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;->usernamePassword:Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;

    #@cd
    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;->Password:Ljava/lang/String;

    #@cf
    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSubscriptionUpdatePassword:Ljava/lang/String;

    #@d1
    .line 186
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->policy:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;

    #@d3
    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->policyUpdate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;

    #@d5
    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;->URI:Ljava/lang/String;

    #@d7
    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPolicyUpdateUri:Ljava/lang/String;

    #@d9
    .line 187
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->policy:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;

    #@db
    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->policyUpdate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;

    #@dd
    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;->UpdateInterval:Ljava/lang/String;

    #@df
    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPolicyUpdateInterval:Ljava/lang/String;

    #@e1
    .line 188
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->policy:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;

    #@e3
    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->policyUpdate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;

    #@e5
    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;->usernamePassword:Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;

    #@e7
    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;->Username:Ljava/lang/String;

    #@e9
    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPolicyUpdateUsername:Ljava/lang/String;

    #@eb
    .line 189
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->policy:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;

    #@ed
    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->policyUpdate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;

    #@ef
    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;->usernamePassword:Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;

    #@f1
    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;->Password:Ljava/lang/String;

    #@f3
    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPolicyUpdatePassword:Ljava/lang/String;

    #@f5
    .line 190
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->policy:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;

    #@f7
    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->policyUpdate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;

    #@f9
    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;->Restriction:Ljava/lang/String;

    #@fb
    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPolicyUpdateRestriction:Ljava/lang/String;

    #@fd
    .line 191
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->policy:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;

    #@ff
    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->policyUpdate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;

    #@101
    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;->UpdateMethod:Ljava/lang/String;

    #@103
    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPolicyUpdateMethod:Ljava/lang/String;

    #@105
    .line 192
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->policy:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;

    #@107
    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->preferredRoamingPartnerList:Ljava/util/HashMap;

    #@109
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@10c
    move-result-object v4

    #@10d
    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPreferredRoamingPartnerList:Ljava/util/Collection;

    #@10f
    .line 193
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->policy:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;

    #@111
    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->minBackhaulThreshold:Ljava/util/HashMap;

    #@113
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@116
    move-result-object v4

    #@117
    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mMinBackhaulThresholdNetwork:Ljava/util/Collection;

    #@119
    .line 194
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->policy:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;

    #@11b
    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->requiredProtoPortTuple:Ljava/util/HashMap;

    #@11d
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@120
    move-result-object v4

    #@121
    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mRequiredProtoPortTuple:Ljava/util/Collection;

    #@123
    .line 195
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->policy:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;

    #@125
    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->maximumBSSLoadValue:Ljava/lang/String;

    #@127
    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mMaxBssLoad:Ljava/lang/String;

    #@129
    .line 196
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->policy:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;

    #@12b
    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->sPExclusionList:Ljava/util/HashMap;

    #@12d
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@130
    move-result-object v4

    #@131
    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSpExclusionList:Ljava/util/Collection;

    #@133
    .line 198
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->homeSP:Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;

    #@135
    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;->homeOIList:Ljava/util/HashMap;

    #@137
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@13a
    move-result-object v4

    #@13b
    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mHomeOIList:Ljava/util/Collection;

    #@13d
    .line 199
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->homeSP:Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;

    #@13f
    iget-object v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;->FriendlyName:Ljava/lang/String;

    #@141
    iput-object v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mFriendlyName:Ljava/lang/String;

    #@143
    .line 200
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->credential:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;

    #@145
    iget-boolean v4, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;->CheckAAAServerCertStatus:Z

    #@147
    iput-boolean v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCheckAaaServerCertStatus:Z

    #@149
    .line 133
    return-void

    #@14a
    .line 174
    :cond_2
    iget-object v4, p7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->credentialPriority:Ljava/lang/String;

    #@14c
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@14f
    move-result v4

    #@150
    iput v4, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCrednetialPriority:I

    #@152
    goto/16 :goto_0
.end method


# virtual methods
.method public compareTo(Landroid/net/wifi/passpoint/WifiPasspointCredential;)I
    .locals 2
    .param p1, "another"    # Landroid/net/wifi/passpoint/WifiPasspointCredential;

    #@0
    .prologue
    .line 634
    iget v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCrednetialPriority:I

    #@2
    iget v1, p1, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCrednetialPriority:I

    #@4
    if-ge v0, v1, :cond_0

    #@6
    .line 635
    const/4 v0, -0x1

    #@7
    return v0

    #@8
    .line 636
    :cond_0
    iget v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCrednetialPriority:I

    #@a
    iget v1, p1, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCrednetialPriority:I

    #@c
    if-ne v0, v1, :cond_1

    #@e
    .line 637
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mType:Ljava/lang/String;

    #@10
    iget-object v1, p1, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mType:Ljava/lang/String;

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@15
    move-result v0

    #@16
    return v0

    #@17
    .line 639
    :cond_1
    const/4 v0, 0x1

    #@18
    return v0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 588
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 482
    const/4 v1, 0x0

    #@1
    .line 483
    .local v1, "result":Z
    instance-of v2, p1, Landroid/net/wifi/passpoint/WifiPasspointCredential;

    #@3
    if-eqz v2, :cond_2

    #@5
    move-object v0, p1

    #@6
    .line 484
    check-cast v0, Landroid/net/wifi/passpoint/WifiPasspointCredential;

    #@8
    .line 485
    .local v0, "other":Landroid/net/wifi/passpoint/WifiPasspointCredential;
    iget-object v2, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mType:Ljava/lang/String;

    #@a
    iget-object v3, v0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mType:Ljava/lang/String;

    #@c
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_2

    #@12
    .line 486
    iget-object v2, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mType:Ljava/lang/String;

    #@14
    const-string/jumbo v3, "TTLS"

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_0

    #@1d
    .line 487
    iget-object v2, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mUsername:Ljava/lang/String;

    #@1f
    iget-object v3, v0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mUsername:Ljava/lang/String;

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_3

    #@27
    .line 488
    iget-object v2, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPasswd:Ljava/lang/String;

    #@29
    iget-object v3, v0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPasswd:Ljava/lang/String;

    #@2b
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v2

    #@2f
    .line 487
    if-eqz v2, :cond_3

    #@31
    .line 489
    iget-object v2, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mRealm:Ljava/lang/String;

    #@33
    iget-object v3, v0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mRealm:Ljava/lang/String;

    #@35
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@38
    move-result v2

    #@39
    .line 487
    if-eqz v2, :cond_3

    #@3b
    .line 490
    iget-object v2, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mHomeSpFqdn:Ljava/lang/String;

    #@3d
    iget-object v3, v0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mHomeSpFqdn:Ljava/lang/String;

    #@3f
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@42
    move-result v1

    #@43
    .line 492
    .end local v1    # "result":Z
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mType:Ljava/lang/String;

    #@45
    const-string/jumbo v3, "TLS"

    #@48
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4b
    move-result v2

    #@4c
    if-eqz v2, :cond_1

    #@4e
    .line 493
    iget-object v2, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mRealm:Ljava/lang/String;

    #@50
    iget-object v3, v0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mRealm:Ljava/lang/String;

    #@52
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@55
    move-result v2

    #@56
    if-eqz v2, :cond_4

    #@58
    .line 494
    iget-object v2, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mHomeSpFqdn:Ljava/lang/String;

    #@5a
    iget-object v3, v0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mHomeSpFqdn:Ljava/lang/String;

    #@5c
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5f
    move-result v2

    #@60
    .line 493
    if-eqz v2, :cond_4

    #@62
    .line 495
    iget-object v2, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mClientCert:Ljava/lang/String;

    #@64
    iget-object v3, v0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mClientCert:Ljava/lang/String;

    #@66
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@69
    move-result v1

    #@6a
    .line 497
    :cond_1
    :goto_1
    iget-object v2, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mType:Ljava/lang/String;

    #@6c
    const-string/jumbo v3, "SIM"

    #@6f
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@72
    move-result v2

    #@73
    if-eqz v2, :cond_2

    #@75
    .line 498
    iget-object v2, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mMcc:Ljava/lang/String;

    #@77
    iget-object v3, v0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mMcc:Ljava/lang/String;

    #@79
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7c
    move-result v2

    #@7d
    if-eqz v2, :cond_5

    #@7f
    .line 499
    iget-object v2, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mMnc:Ljava/lang/String;

    #@81
    iget-object v3, v0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mMnc:Ljava/lang/String;

    #@83
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@86
    move-result v2

    #@87
    .line 498
    if-eqz v2, :cond_5

    #@89
    .line 500
    iget-object v2, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mImsi:Ljava/lang/String;

    #@8b
    iget-object v3, v0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mImsi:Ljava/lang/String;

    #@8d
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@90
    move-result v2

    #@91
    .line 498
    if-eqz v2, :cond_5

    #@93
    .line 501
    iget-object v2, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mHomeSpFqdn:Ljava/lang/String;

    #@95
    iget-object v3, v0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mHomeSpFqdn:Ljava/lang/String;

    #@97
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9a
    move-result v1

    #@9b
    .line 505
    .end local v0    # "other":Landroid/net/wifi/passpoint/WifiPasspointCredential;
    :cond_2
    :goto_2
    return v1

    #@9c
    .line 487
    .restart local v0    # "other":Landroid/net/wifi/passpoint/WifiPasspointCredential;
    .restart local v1    # "result":Z
    :cond_3
    const/4 v1, 0x0

    #@9d
    goto :goto_0

    #@9e
    .line 493
    .end local v1    # "result":Z
    :cond_4
    const/4 v1, 0x0

    #@9f
    .restart local v1    # "result":Z
    goto :goto_1

    #@a0
    .line 498
    .end local v1    # "result":Z
    :cond_5
    const/4 v1, 0x0

    #@a1
    .restart local v1    # "result":Z
    goto :goto_2
.end method

.method public getAaaCertUrl()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 431
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mAaaCertUrl:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getAaaSha256Fingerprint()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 436
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mAaaSha256Fingerprint:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getBackhaulThresholdList()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$MinBackhaulThresholdNetwork;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 411
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mMinBackhaulThresholdNetwork:Ljava/util/Collection;

    #@2
    return-object v0
.end method

.method public getCaRootCertPath()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 289
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCaRootCert:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getCertSha256Fingerprint()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 258
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCertSha256Fingerprint:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getCertType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 253
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCertType:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getCheckAaaServerCertStatus()Z
    .locals 1

    #@0
    .prologue
    .line 471
    iget-boolean v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCheckAaaServerCertStatus:Z

    #@2
    return v0
.end method

.method public getClientCertPath()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 294
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mClientCert:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getCreationDate()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 386
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCreationDate:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getCredName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 225
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCredentialName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getEnterpriseConfig()Landroid/net/wifi/WifiEnterpriseConfig;
    .locals 2

    #@0
    .prologue
    .line 239
    new-instance v0, Landroid/net/wifi/WifiEnterpriseConfig;

    #@2
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mEnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@4
    invoke-direct {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>(Landroid/net/wifi/WifiEnterpriseConfig;)V

    #@7
    return-object v0
.end method

.method public getExpirationDate()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 391
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mExpirationDate:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getFriendlyName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 456
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mFriendlyName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getHomeOiList()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeOIList;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 406
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mHomeOIList:Ljava/util/Collection;

    #@2
    return-object v0
.end method

.method public getHomeSpFqdn()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 327
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mHomeSpFqdn:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 274
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mImsi:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getIsMachineRemediation()Z
    .locals 1

    #@0
    .prologue
    .line 426
    iget-boolean v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mIsMachineRemediation:Z

    #@2
    return v0
.end method

.method public getMaxBssLoad()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 461
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mMaxBssLoad:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMcc()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 279
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mMcc:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMnc()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 284
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mMnc:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getOtherHomePartnerList()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$OtherHomePartners;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 341
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mOtherHomePartnerList:Ljava/util/Collection;

    #@2
    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 269
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPasswd:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPolicyUpdateInterval()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 361
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPolicyUpdateInterval:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPolicyUpdateMethod()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 381
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPolicyUpdateMethod:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPolicyUpdatePassword()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 371
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPolicyUpdatePassword:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPolicyUpdateRestriction()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 376
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPolicyUpdateRestriction:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPolicyUpdateUri()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 356
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPolicyUpdateUri:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPolicyUpdateUsername()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 366
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPolicyUpdateUsername:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPreferredRoamingPartnerList()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$PreferredRoamingPartnerList;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 401
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPreferredRoamingPartnerList:Ljava/util/Collection;

    #@2
    return-object v0
.end method

.method public getPriority()I
    .locals 1

    #@0
    .prologue
    .line 315
    iget-boolean v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mUserPreferred:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 316
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 319
    :cond_0
    iget v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCrednetialPriority:I

    #@8
    return v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 302
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mRealm:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getRequiredProtoPortList()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 416
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mRequiredProtoPortTuple:Ljava/util/Collection;

    #@2
    return-object v0
.end method

.method public getSPExclusionList()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$SPExclusionList;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 421
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSpExclusionList:Ljava/util/Collection;

    #@2
    return-object v0
.end method

.method public getSubscriptionUpdateInterval()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 451
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSubscriptionUpdateInterval:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSubscriptionUpdatePassword()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 351
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSubscriptionUpdatePassword:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSubscriptionUpdateRestriction()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 441
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSubscriptionUpdateRestriction:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSubscriptionUpdateURI()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 446
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSubscriptionUpdateURI:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSubscriptionUpdateUsername()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 346
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSubscriptionUpdateUsername:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 230
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mType:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getUpdateIdentifier()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 205
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mUpdateIdentifier:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getUpdateMethod()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 210
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSubscriptionUpdateMethod:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 263
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mUsername:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getUserPreference()Z
    .locals 1

    #@0
    .prologue
    .line 466
    iget-boolean v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mUserPreferred:Z

    #@2
    return v0
.end method

.method public getWifiSpFqdn()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 220
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mWifiSpFqdn:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 646
    const/16 v0, 0xd0

    #@2
    .line 647
    .local v0, "hash":I
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mType:Ljava/lang/String;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 648
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mType:Ljava/lang/String;

    #@8
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@b
    move-result v1

    #@c
    add-int/lit16 v0, v1, 0xd0

    #@e
    .line 650
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mRealm:Ljava/lang/String;

    #@10
    if-eqz v1, :cond_1

    #@12
    .line 651
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mRealm:Ljava/lang/String;

    #@14
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@17
    move-result v1

    #@18
    add-int/2addr v0, v1

    #@19
    .line 653
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mHomeSpFqdn:Ljava/lang/String;

    #@1b
    if-eqz v1, :cond_2

    #@1d
    .line 654
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mHomeSpFqdn:Ljava/lang/String;

    #@1f
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@22
    move-result v1

    #@23
    add-int/2addr v0, v1

    #@24
    .line 656
    :cond_2
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mUsername:Ljava/lang/String;

    #@26
    if-eqz v1, :cond_3

    #@28
    .line 657
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mUsername:Ljava/lang/String;

    #@2a
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@2d
    move-result v1

    #@2e
    add-int/2addr v0, v1

    #@2f
    .line 659
    :cond_3
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPasswd:Ljava/lang/String;

    #@31
    if-eqz v1, :cond_4

    #@33
    .line 660
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPasswd:Ljava/lang/String;

    #@35
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@38
    move-result v1

    #@39
    add-int/2addr v0, v1

    #@3a
    .line 663
    :cond_4
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 603
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mWifiSpFqdn:Ljava/lang/String;

    #@6
    .line 604
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCredentialName:Ljava/lang/String;

    #@c
    .line 605
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mType:Ljava/lang/String;

    #@12
    .line 606
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@15
    move-result v0

    #@16
    iput v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCrednetialPriority:I

    #@18
    .line 607
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mHomeSpFqdn:Ljava/lang/String;

    #@1e
    .line 608
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mRealm:Ljava/lang/String;

    #@24
    .line 602
    return-void
.end method

.method public setEnterpriseConfig(Landroid/net/wifi/WifiEnterpriseConfig;)V
    .locals 0
    .param p1, "config"    # Landroid/net/wifi/WifiEnterpriseConfig;

    #@0
    .prologue
    .line 247
    return-void
.end method

.method public setExpirationDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "expirationdate"    # Ljava/lang/String;

    #@0
    .prologue
    .line 396
    iput-object p1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mExpirationDate:Ljava/lang/String;

    #@2
    .line 395
    return-void
.end method

.method public setHomeFqdn(Ljava/lang/String;)V
    .locals 0
    .param p1, "fqdn"    # Ljava/lang/String;

    #@0
    .prologue
    .line 335
    iput-object p1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mHomeSpFqdn:Ljava/lang/String;

    #@2
    .line 334
    return-void
.end method

.method public setRealm(Ljava/lang/String;)V
    .locals 0
    .param p1, "realm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 310
    iput-object p1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mRealm:Ljava/lang/String;

    #@2
    .line 309
    return-void
.end method

.method public setUpdateMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;

    #@0
    .prologue
    .line 215
    iput-object p1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSubscriptionUpdateMethod:Ljava/lang/String;

    #@2
    .line 214
    return-void
.end method

.method public setUserPreference(Z)V
    .locals 0
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 476
    iput-boolean p1, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mUserPreferred:Z

    #@2
    .line 475
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    #@0
    .prologue
    .line 511
    new-instance v9, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 512
    .local v9, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v6, "<none>"

    #@8
    .line 517
    .local v6, "none":Ljava/lang/String;
    const-string/jumbo v10, ", UpdateIdentifier: "

    #@b
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@e
    move-result-object v11

    #@f
    .line 518
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mUpdateIdentifier:Ljava/lang/String;

    #@11
    if-nez v10, :cond_0

    #@13
    move-object v10, v6

    #@14
    .line 517
    :goto_0
    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@17
    move-result-object v10

    #@18
    .line 519
    const-string/jumbo v11, ", SubscriptionUpdateMethod: "

    #@1b
    .line 517
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1e
    move-result-object v11

    #@1f
    .line 520
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSubscriptionUpdateMethod:Ljava/lang/String;

    #@21
    if-nez v10, :cond_1

    #@23
    move-object v10, v6

    #@24
    .line 517
    :goto_1
    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@27
    move-result-object v10

    #@28
    .line 521
    const-string/jumbo v11, ", Type: "

    #@2b
    .line 517
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2e
    move-result-object v11

    #@2f
    .line 521
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mType:Ljava/lang/String;

    #@31
    if-nez v10, :cond_2

    #@33
    move-object v10, v6

    #@34
    .line 517
    :goto_2
    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@37
    move-result-object v10

    #@38
    .line 522
    const-string/jumbo v11, ", Username: "

    #@3b
    .line 517
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3e
    move-result-object v11

    #@3f
    .line 522
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mUsername:Ljava/lang/String;

    #@41
    if-nez v10, :cond_3

    #@43
    move-object v10, v6

    #@44
    .line 517
    :goto_3
    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@47
    move-result-object v10

    #@48
    .line 523
    const-string/jumbo v11, ", Passwd: "

    #@4b
    .line 517
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4e
    move-result-object v11

    #@4f
    .line 523
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPasswd:Ljava/lang/String;

    #@51
    if-nez v10, :cond_4

    #@53
    move-object v10, v6

    #@54
    .line 517
    :goto_4
    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@57
    move-result-object v10

    #@58
    .line 524
    const-string/jumbo v11, ", SubDMAccUsername: "

    #@5b
    .line 517
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5e
    move-result-object v11

    #@5f
    .line 525
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSubscriptionUpdateUsername:Ljava/lang/String;

    #@61
    if-nez v10, :cond_5

    #@63
    move-object v10, v6

    #@64
    .line 517
    :goto_5
    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@67
    move-result-object v10

    #@68
    .line 526
    const-string/jumbo v11, ", SubDMAccPassword: "

    #@6b
    .line 517
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@6e
    move-result-object v11

    #@6f
    .line 527
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSubscriptionUpdatePassword:Ljava/lang/String;

    #@71
    if-nez v10, :cond_6

    #@73
    move-object v10, v6

    #@74
    .line 517
    :goto_6
    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@77
    move-result-object v10

    #@78
    .line 528
    const-string/jumbo v11, ", PolDMAccUsername: "

    #@7b
    .line 517
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@7e
    move-result-object v11

    #@7f
    .line 529
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPolicyUpdateUsername:Ljava/lang/String;

    #@81
    if-nez v10, :cond_7

    #@83
    move-object v10, v6

    #@84
    .line 517
    :goto_7
    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@87
    move-result-object v10

    #@88
    .line 530
    const-string/jumbo v11, ", PolDMAccPassword: "

    #@8b
    .line 517
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@8e
    move-result-object v11

    #@8f
    .line 531
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPolicyUpdatePassword:Ljava/lang/String;

    #@91
    if-nez v10, :cond_8

    #@93
    move-object v10, v6

    #@94
    .line 517
    :goto_8
    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@97
    move-result-object v10

    #@98
    .line 532
    const-string/jumbo v11, ", Imsi: "

    #@9b
    .line 517
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@9e
    move-result-object v11

    #@9f
    .line 532
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mImsi:Ljava/lang/String;

    #@a1
    if-nez v10, :cond_9

    #@a3
    move-object v10, v6

    #@a4
    .line 517
    :goto_9
    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@a7
    move-result-object v10

    #@a8
    .line 533
    const-string/jumbo v11, ", Mcc: "

    #@ab
    .line 517
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@ae
    move-result-object v11

    #@af
    .line 533
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mMcc:Ljava/lang/String;

    #@b1
    if-nez v10, :cond_a

    #@b3
    move-object v10, v6

    #@b4
    .line 517
    :goto_a
    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b7
    move-result-object v10

    #@b8
    .line 534
    const-string/jumbo v11, ", Mnc: "

    #@bb
    .line 517
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@be
    move-result-object v11

    #@bf
    .line 534
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mMnc:Ljava/lang/String;

    #@c1
    if-nez v10, :cond_b

    #@c3
    move-object v10, v6

    #@c4
    .line 517
    :goto_b
    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@c7
    move-result-object v10

    #@c8
    .line 535
    const-string/jumbo v11, ", CaRootCert: "

    #@cb
    .line 517
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@ce
    move-result-object v11

    #@cf
    .line 535
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCaRootCert:Ljava/lang/String;

    #@d1
    if-nez v10, :cond_c

    #@d3
    move-object v10, v6

    #@d4
    .line 517
    :goto_c
    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@d7
    move-result-object v10

    #@d8
    .line 536
    const-string/jumbo v11, ", Realm: "

    #@db
    .line 517
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@de
    move-result-object v11

    #@df
    .line 536
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mRealm:Ljava/lang/String;

    #@e1
    if-nez v10, :cond_d

    #@e3
    move-object v10, v6

    #@e4
    .line 517
    :goto_d
    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@e7
    move-result-object v10

    #@e8
    .line 537
    const-string/jumbo v11, ", Priority: "

    #@eb
    .line 517
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@ee
    move-result-object v10

    #@ef
    .line 537
    iget v11, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCrednetialPriority:I

    #@f1
    .line 517
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@f4
    move-result-object v10

    #@f5
    .line 538
    const-string/jumbo v11, ", Fqdn: "

    #@f8
    .line 517
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@fb
    move-result-object v11

    #@fc
    .line 538
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mHomeSpFqdn:Ljava/lang/String;

    #@fe
    if-nez v10, :cond_e

    #@100
    move-object v10, v6

    #@101
    .line 517
    :goto_e
    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@104
    move-result-object v10

    #@105
    .line 539
    const-string/jumbo v11, ", Otherhomepartners: "

    #@108
    .line 517
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@10b
    move-result-object v11

    #@10c
    .line 540
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mOtherHomePartnerList:Ljava/util/Collection;

    #@10e
    if-nez v10, :cond_f

    #@110
    move-object v10, v6

    #@111
    .line 517
    :goto_f
    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@114
    move-result-object v10

    #@115
    .line 541
    const-string/jumbo v11, ", ExpirationDate: "

    #@118
    .line 517
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@11b
    move-result-object v11

    #@11c
    .line 542
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mExpirationDate:Ljava/lang/String;

    #@11e
    if-nez v10, :cond_10

    #@120
    move-object v10, v6

    #@121
    .line 517
    :goto_10
    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@124
    move-result-object v10

    #@125
    .line 543
    const-string/jumbo v11, ", MaxBssLoad: "

    #@128
    .line 517
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@12b
    move-result-object v10

    #@12c
    .line 543
    iget-object v11, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mMaxBssLoad:Ljava/lang/String;

    #@12e
    if-nez v11, :cond_11

    #@130
    .line 517
    .end local v6    # "none":Ljava/lang/String;
    :goto_11
    invoke-virtual {v10, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@133
    move-result-object v10

    #@134
    .line 544
    const-string/jumbo v11, ", SPExclusionList: "

    #@137
    .line 517
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@13a
    move-result-object v10

    #@13b
    .line 544
    iget-object v11, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSpExclusionList:Ljava/util/Collection;

    #@13d
    .line 517
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@140
    .line 546
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPreferredRoamingPartnerList:Ljava/util/Collection;

    #@142
    if-eqz v10, :cond_12

    #@144
    .line 547
    const-string/jumbo v10, "PreferredRoamingPartnerList:"

    #@147
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@14a
    .line 548
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPreferredRoamingPartnerList:Ljava/util/Collection;

    #@14c
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14f
    move-result-object v8

    #@150
    .local v8, "prpListItem$iterator":Ljava/util/Iterator;
    :goto_12
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@153
    move-result v10

    #@154
    if-eqz v10, :cond_12

    #@156
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@159
    move-result-object v7

    #@15a
    check-cast v7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PreferredRoamingPartnerList;

    #@15c
    .line 549
    .local v7, "prpListItem":Landroid/net/wifi/passpoint/WifiPasspointDmTree$PreferredRoamingPartnerList;
    const-string/jumbo v10, "[fqdnmatch:"

    #@15f
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@162
    move-result-object v10

    #@163
    iget-object v11, v7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PreferredRoamingPartnerList;->FQDN_Match:Ljava/lang/String;

    #@165
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@168
    move-result-object v10

    #@169
    .line 550
    const-string/jumbo v11, ", priority:"

    #@16c
    .line 549
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@16f
    move-result-object v10

    #@170
    .line 550
    iget-object v11, v7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PreferredRoamingPartnerList;->Priority:Ljava/lang/String;

    #@172
    .line 549
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@175
    move-result-object v10

    #@176
    .line 551
    const-string/jumbo v11, ", country:"

    #@179
    .line 549
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@17c
    move-result-object v10

    #@17d
    .line 551
    iget-object v11, v7, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PreferredRoamingPartnerList;->Country:Ljava/lang/String;

    #@17f
    .line 549
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@182
    move-result-object v10

    #@183
    .line 551
    const-string/jumbo v11, "]"

    #@186
    .line 549
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@189
    goto :goto_12

    #@18a
    .line 518
    .end local v7    # "prpListItem":Landroid/net/wifi/passpoint/WifiPasspointDmTree$PreferredRoamingPartnerList;
    .end local v8    # "prpListItem$iterator":Ljava/util/Iterator;
    .restart local v6    # "none":Ljava/lang/String;
    :cond_0
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mUpdateIdentifier:Ljava/lang/String;

    #@18c
    goto/16 :goto_0

    #@18e
    .line 520
    :cond_1
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSubscriptionUpdateMethod:Ljava/lang/String;

    #@190
    goto/16 :goto_1

    #@192
    .line 521
    :cond_2
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mType:Ljava/lang/String;

    #@194
    goto/16 :goto_2

    #@196
    .line 522
    :cond_3
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mUsername:Ljava/lang/String;

    #@198
    goto/16 :goto_3

    #@19a
    .line 523
    :cond_4
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPasswd:Ljava/lang/String;

    #@19c
    goto/16 :goto_4

    #@19e
    .line 525
    :cond_5
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSubscriptionUpdateUsername:Ljava/lang/String;

    #@1a0
    goto/16 :goto_5

    #@1a2
    .line 527
    :cond_6
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mSubscriptionUpdatePassword:Ljava/lang/String;

    #@1a4
    goto/16 :goto_6

    #@1a6
    .line 529
    :cond_7
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPolicyUpdateUsername:Ljava/lang/String;

    #@1a8
    goto/16 :goto_7

    #@1aa
    .line 531
    :cond_8
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mPolicyUpdatePassword:Ljava/lang/String;

    #@1ac
    goto/16 :goto_8

    #@1ae
    .line 532
    :cond_9
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mImsi:Ljava/lang/String;

    #@1b0
    goto/16 :goto_9

    #@1b2
    .line 533
    :cond_a
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mMcc:Ljava/lang/String;

    #@1b4
    goto/16 :goto_a

    #@1b6
    .line 534
    :cond_b
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mMnc:Ljava/lang/String;

    #@1b8
    goto/16 :goto_b

    #@1ba
    .line 535
    :cond_c
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCaRootCert:Ljava/lang/String;

    #@1bc
    goto/16 :goto_c

    #@1be
    .line 536
    :cond_d
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mRealm:Ljava/lang/String;

    #@1c0
    goto/16 :goto_d

    #@1c2
    .line 538
    :cond_e
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mHomeSpFqdn:Ljava/lang/String;

    #@1c4
    goto/16 :goto_e

    #@1c6
    .line 540
    :cond_f
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mOtherHomePartnerList:Ljava/util/Collection;

    #@1c8
    goto/16 :goto_f

    #@1ca
    .line 542
    :cond_10
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mExpirationDate:Ljava/lang/String;

    #@1cc
    goto/16 :goto_10

    #@1ce
    .line 543
    :cond_11
    iget-object v6, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mMaxBssLoad:Ljava/lang/String;

    #@1d0
    goto/16 :goto_11

    #@1d2
    .line 555
    .end local v6    # "none":Ljava/lang/String;
    :cond_12
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mHomeOIList:Ljava/util/Collection;

    #@1d4
    if-eqz v10, :cond_13

    #@1d6
    .line 556
    const-string/jumbo v10, "HomeOIList:"

    #@1d9
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1dc
    .line 557
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mHomeOIList:Ljava/util/Collection;

    #@1de
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1e1
    move-result-object v3

    #@1e2
    .local v3, "HomeOIListItem$iterator":Ljava/util/Iterator;
    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@1e5
    move-result v10

    #@1e6
    if-eqz v10, :cond_13

    #@1e8
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1eb
    move-result-object v2

    #@1ec
    check-cast v2, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeOIList;

    #@1ee
    .line 558
    .local v2, "HomeOIListItem":Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeOIList;
    const-string/jumbo v10, "[HomeOI:"

    #@1f1
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1f4
    move-result-object v10

    #@1f5
    iget-object v11, v2, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeOIList;->HomeOI:Ljava/lang/String;

    #@1f7
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1fa
    move-result-object v10

    #@1fb
    .line 559
    const-string/jumbo v11, ", HomeOIRequired:"

    #@1fe
    .line 558
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@201
    move-result-object v10

    #@202
    .line 559
    iget-boolean v11, v2, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeOIList;->HomeOIRequired:Z

    #@204
    .line 558
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    #@207
    move-result-object v10

    #@208
    .line 560
    const-string/jumbo v11, "]"

    #@20b
    .line 558
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@20e
    goto :goto_13

    #@20f
    .line 564
    .end local v2    # "HomeOIListItem":Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeOIList;
    .end local v3    # "HomeOIListItem$iterator":Ljava/util/Iterator;
    :cond_13
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mMinBackhaulThresholdNetwork:Ljava/util/Collection;

    #@211
    if-eqz v10, :cond_14

    #@213
    .line 565
    const-string/jumbo v10, "BackHaulThreshold:"

    #@216
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@219
    .line 566
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mMinBackhaulThresholdNetwork:Ljava/util/Collection;

    #@21b
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@21e
    move-result-object v1

    #@21f
    .local v1, "BhtListItem$iterator":Ljava/util/Iterator;
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@222
    move-result v10

    #@223
    if-eqz v10, :cond_14

    #@225
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@228
    move-result-object v0

    #@229
    check-cast v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$MinBackhaulThresholdNetwork;

    #@22b
    .line 567
    .local v0, "BhtListItem":Landroid/net/wifi/passpoint/WifiPasspointDmTree$MinBackhaulThresholdNetwork;
    const-string/jumbo v10, "[networkType:"

    #@22e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@231
    move-result-object v10

    #@232
    iget-object v11, v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$MinBackhaulThresholdNetwork;->NetworkType:Ljava/lang/String;

    #@234
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@237
    move-result-object v10

    #@238
    .line 568
    const-string/jumbo v11, ", dlBandwidth:"

    #@23b
    .line 567
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@23e
    move-result-object v10

    #@23f
    .line 568
    iget-object v11, v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$MinBackhaulThresholdNetwork;->DLBandwidth:Ljava/lang/String;

    #@241
    .line 567
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@244
    move-result-object v10

    #@245
    .line 569
    const-string/jumbo v11, ", ulBandwidth:"

    #@248
    .line 567
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@24b
    move-result-object v10

    #@24c
    .line 569
    iget-object v11, v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$MinBackhaulThresholdNetwork;->ULBandwidth:Ljava/lang/String;

    #@24e
    .line 567
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@251
    move-result-object v10

    #@252
    .line 570
    const-string/jumbo v11, "]"

    #@255
    .line 567
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@258
    goto :goto_14

    #@259
    .line 574
    .end local v0    # "BhtListItem":Landroid/net/wifi/passpoint/WifiPasspointDmTree$MinBackhaulThresholdNetwork;
    .end local v1    # "BhtListItem$iterator":Ljava/util/Iterator;
    :cond_14
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mRequiredProtoPortTuple:Ljava/util/Collection;

    #@25b
    if-eqz v10, :cond_15

    #@25d
    .line 575
    const-string/jumbo v10, "WifiMORequiredProtoPortTupleList:"

    #@260
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@263
    .line 576
    iget-object v10, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mRequiredProtoPortTuple:Ljava/util/Collection;

    #@265
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@268
    move-result-object v5

    #@269
    .local v5, "RpptListItem$iterator":Ljava/util/Iterator;
    :goto_15
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@26c
    move-result v10

    #@26d
    if-eqz v10, :cond_15

    #@26f
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@272
    move-result-object v4

    #@273
    check-cast v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple;

    #@275
    .line 577
    .local v4, "RpptListItem":Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple;
    const-string/jumbo v10, "[IPProtocol:"

    #@278
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@27b
    move-result-object v10

    #@27c
    iget-object v11, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple;->IPProtocol:Ljava/lang/String;

    #@27e
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@281
    move-result-object v10

    #@282
    .line 578
    const-string/jumbo v11, ", PortNumber:"

    #@285
    .line 577
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@288
    move-result-object v10

    #@289
    .line 578
    iget-object v11, v4, Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple;->PortNumber:Ljava/lang/String;

    #@28b
    .line 577
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@28e
    move-result-object v10

    #@28f
    .line 579
    const-string/jumbo v11, "]"

    #@292
    .line 577
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@295
    goto :goto_15

    #@296
    .line 583
    .end local v4    # "RpptListItem":Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple;
    .end local v5    # "RpptListItem$iterator":Ljava/util/Iterator;
    :cond_15
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@299
    move-result-object v10

    #@29a
    return-object v10
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 593
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mWifiSpFqdn:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 594
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCredentialName:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 595
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mType:Ljava/lang/String;

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 596
    iget v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mCrednetialPriority:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 597
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mHomeSpFqdn:Ljava/lang/String;

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    .line 598
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointCredential;->mRealm:Ljava/lang/String;

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1e
    .line 592
    return-void
.end method
