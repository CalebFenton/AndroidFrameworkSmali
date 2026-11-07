.class public final Landroid/net/Ikev2VpnProfile$Builder;
.super Ljava/lang/Object;
.source "Ikev2VpnProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Ikev2VpnProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAllowedAlgorithms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAutomaticIpVersionSelectionEnabled:Z

.field private blacklist mAutomaticNattKeepaliveTimerEnabled:Z

.field private blacklist mExcludeLocalRoutes:Z

.field private final blacklist mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

.field private blacklist mIsBypassable:Z

.field private blacklist mIsMetered:Z

.field private blacklist mIsRestrictedToTestNetworks:Z

.field private blacklist mMaxMtu:I

.field private blacklist mPassword:Ljava/lang/String;

.field private blacklist mPresharedKey:[B

.field private blacklist mProxyInfo:Landroid/net/ProxyInfo;

.field private blacklist mRequiresInternetValidation:Z

.field private blacklist mRsaPrivateKey:Ljava/security/PrivateKey;

.field private final blacklist mServerAddr:Ljava/lang/String;

.field private blacklist mServerRootCaCert:Ljava/security/cert/X509Certificate;

.field private blacklist mType:I

.field private blacklist mUserCert:Ljava/security/cert/X509Certificate;

.field private final blacklist mUserIdentity:Ljava/lang/String;

.field private blacklist mUsername:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Landroid/net/ipsec/ike/IkeTunnelConnectionParams;)V
    .registers 4
    .param p1, "ikeTunConnParams"    # Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    .line 841
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 787
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mType:I

    .line 806
    sget-object v0, Landroid/net/Ikev2VpnProfile;->DEFAULT_ALGORITHMS:Ljava/util/List;

    iput-object v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mAllowedAlgorithms:Ljava/util/List;

    .line 807
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mRequiresInternetValidation:Z

    .line 808
    iput-boolean v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mIsBypassable:Z

    .line 809
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mIsMetered:Z

    .line 810
    const/16 v1, 0x550

    iput v1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mMaxMtu:I

    .line 811
    iput-boolean v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mIsRestrictedToTestNetworks:Z

    .line 812
    iput-boolean v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mExcludeLocalRoutes:Z

    .line 813
    iput-boolean v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mAutomaticNattKeepaliveTimerEnabled:Z

    .line 814
    iput-boolean v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mAutomaticIpVersionSelectionEnabled:Z

    .line 842
    const-string/jumbo v0, "ikeTunConnParams"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Required parameter was not provided: %s"

    invoke-static {p1, v1, v0}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smcheckNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    iput-object p1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    .line 845
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mServerAddr:Ljava/lang/String;

    .line 846
    iput-object v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mUserIdentity:Ljava/lang/String;

    .line 847
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "serverAddr"    # Ljava/lang/String;
    .param p2, "identity"    # Ljava/lang/String;

    .line 824
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 787
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mType:I

    .line 806
    sget-object v0, Landroid/net/Ikev2VpnProfile;->DEFAULT_ALGORITHMS:Ljava/util/List;

    iput-object v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mAllowedAlgorithms:Ljava/util/List;

    .line 807
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mRequiresInternetValidation:Z

    .line 808
    iput-boolean v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mIsBypassable:Z

    .line 809
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mIsMetered:Z

    .line 810
    const/16 v1, 0x550

    iput v1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mMaxMtu:I

    .line 811
    iput-boolean v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mIsRestrictedToTestNetworks:Z

    .line 812
    iput-boolean v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mExcludeLocalRoutes:Z

    .line 813
    iput-boolean v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mAutomaticNattKeepaliveTimerEnabled:Z

    .line 814
    iput-boolean v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mAutomaticIpVersionSelectionEnabled:Z

    .line 825
    const-string/jumbo v0, "serverAddr"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Required parameter was not provided: %s"

    invoke-static {p1, v1, v0}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smcheckNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    const-string/jumbo v0, "identity"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v1, v0}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smcheckNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    iput-object p1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mServerAddr:Ljava/lang/String;

    .line 829
    iput-object p2, p0, Landroid/net/Ikev2VpnProfile$Builder;->mUserIdentity:Ljava/lang/String;

    .line 831
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    .line 832
    return-void
.end method

.method private blacklist resetAuthParams()V
    .registers 2

    .line 850
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mPresharedKey:[B

    .line 851
    iput-object v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mServerRootCaCert:Ljava/security/cert/X509Certificate;

    .line 852
    iput-object v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mUsername:Ljava/lang/String;

    .line 853
    iput-object v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mPassword:Ljava/lang/String;

    .line 854
    iput-object v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mRsaPrivateKey:Ljava/security/PrivateKey;

    .line 855
    iput-object v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mUserCert:Ljava/security/cert/X509Certificate;

    .line 856
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/Ikev2VpnProfile;
    .registers 25

    .line 1186
    move-object/from16 v0, p0

    new-instance v1, Landroid/net/Ikev2VpnProfile;

    iget v2, v0, Landroid/net/Ikev2VpnProfile$Builder;->mType:I

    iget-object v3, v0, Landroid/net/Ikev2VpnProfile$Builder;->mServerAddr:Ljava/lang/String;

    iget-object v4, v0, Landroid/net/Ikev2VpnProfile$Builder;->mUserIdentity:Ljava/lang/String;

    iget-object v5, v0, Landroid/net/Ikev2VpnProfile$Builder;->mPresharedKey:[B

    iget-object v6, v0, Landroid/net/Ikev2VpnProfile$Builder;->mServerRootCaCert:Ljava/security/cert/X509Certificate;

    iget-object v7, v0, Landroid/net/Ikev2VpnProfile$Builder;->mUsername:Ljava/lang/String;

    iget-object v8, v0, Landroid/net/Ikev2VpnProfile$Builder;->mPassword:Ljava/lang/String;

    iget-object v9, v0, Landroid/net/Ikev2VpnProfile$Builder;->mRsaPrivateKey:Ljava/security/PrivateKey;

    iget-object v10, v0, Landroid/net/Ikev2VpnProfile$Builder;->mUserCert:Ljava/security/cert/X509Certificate;

    iget-object v11, v0, Landroid/net/Ikev2VpnProfile$Builder;->mProxyInfo:Landroid/net/ProxyInfo;

    iget-object v12, v0, Landroid/net/Ikev2VpnProfile$Builder;->mAllowedAlgorithms:Ljava/util/List;

    iget-boolean v13, v0, Landroid/net/Ikev2VpnProfile$Builder;->mIsBypassable:Z

    iget-boolean v14, v0, Landroid/net/Ikev2VpnProfile$Builder;->mIsMetered:Z

    iget v15, v0, Landroid/net/Ikev2VpnProfile$Builder;->mMaxMtu:I

    move-object/from16 v16, v1

    iget-boolean v1, v0, Landroid/net/Ikev2VpnProfile$Builder;->mIsRestrictedToTestNetworks:Z

    move/from16 v17, v1

    iget-boolean v1, v0, Landroid/net/Ikev2VpnProfile$Builder;->mExcludeLocalRoutes:Z

    move/from16 v18, v1

    iget-boolean v1, v0, Landroid/net/Ikev2VpnProfile$Builder;->mRequiresInternetValidation:Z

    move/from16 v19, v1

    iget-object v1, v0, Landroid/net/Ikev2VpnProfile$Builder;->mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    move-object/from16 v20, v1

    iget-boolean v1, v0, Landroid/net/Ikev2VpnProfile$Builder;->mAutomaticNattKeepaliveTimerEnabled:Z

    move/from16 v21, v1

    iget-boolean v1, v0, Landroid/net/Ikev2VpnProfile$Builder;->mAutomaticIpVersionSelectionEnabled:Z

    const/16 v22, 0x0

    move/from16 v23, v21

    move/from16 v21, v1

    move-object/from16 v1, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move-object/from16 v19, v20

    move/from16 v20, v23

    invoke-direct/range {v1 .. v22}, Landroid/net/Ikev2VpnProfile;-><init>(ILjava/lang/String;Ljava/lang/String;[BLjava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Landroid/net/ProxyInfo;Ljava/util/List;ZZIZZZLandroid/net/ipsec/ike/IkeTunnelConnectionParams;ZZLandroid/net/Ikev2VpnProfile-IA;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public blacklist restrictToTestNetworks()Landroid/net/Ikev2VpnProfile$Builder;
    .registers 2

    .line 1117
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mIsRestrictedToTestNetworks:Z

    .line 1118
    return-object p0
.end method

.method public whitelist setAllowedAlgorithms(Ljava/util/List;)Landroid/net/Ikev2VpnProfile$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/Ikev2VpnProfile$Builder;"
        }
    .end annotation

    .line 1097
    .local p1, "algorithmNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "algorithmNames"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Required parameter was not provided: %s"

    invoke-static {p1, v2, v1}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smcheckNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1098
    iget-object v1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    invoke-static {v1, v0}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smcheckBuilderSetter(ZLjava/lang/String;)V

    .line 1099
    invoke-static {p1}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smvalidateAllowedAlgorithms(Ljava/util/List;)V

    .line 1101
    iput-object p1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mAllowedAlgorithms:Ljava/util/List;

    .line 1102
    return-object p0
.end method

.method public whitelist setAuthDigitalSignature(Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;)Landroid/net/Ikev2VpnProfile$Builder;
    .registers 6
    .param p1, "userCert"    # Ljava/security/cert/X509Certificate;
    .param p2, "key"    # Ljava/security/PrivateKey;
    .param p3, "serverRootCa"    # Ljava/security/cert/X509Certificate;

    .line 924
    const-string/jumbo v0, "userCert"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Required parameter was not provided: %s"

    invoke-static {p1, v1, v0}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smcheckNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    const-string/jumbo v0, "key"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v1, v0}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smcheckNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    iget-object v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    const-string v1, "authDigitalSignature"

    invoke-static {v0, v1}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smcheckBuilderSetter(ZLjava/lang/String;)V

    .line 929
    invoke-static {p1}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smcheckCert(Ljava/security/cert/X509Certificate;)V

    .line 930
    if-eqz p3, :cond_2a

    invoke-static {p3}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smcheckCert(Ljava/security/cert/X509Certificate;)V

    .line 932
    :cond_2a
    invoke-direct {p0}, Landroid/net/Ikev2VpnProfile$Builder;->resetAuthParams()V

    .line 933
    iput-object p1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mUserCert:Ljava/security/cert/X509Certificate;

    .line 934
    iput-object p2, p0, Landroid/net/Ikev2VpnProfile$Builder;->mRsaPrivateKey:Ljava/security/PrivateKey;

    .line 935
    iput-object p3, p0, Landroid/net/Ikev2VpnProfile$Builder;->mServerRootCaCert:Ljava/security/cert/X509Certificate;

    .line 936
    const/16 v0, 0x8

    iput v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mType:I

    .line 937
    return-object p0
.end method

.method public whitelist setAuthPsk([B)Landroid/net/Ikev2VpnProfile$Builder;
    .registers 4
    .param p1, "psk"    # [B

    .line 957
    const-string/jumbo v0, "psk"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Required parameter was not provided: %s"

    invoke-static {p1, v1, v0}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smcheckNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    iget-object v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    const-string v1, "authPsk"

    invoke-static {v0, v1}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smcheckBuilderSetter(ZLjava/lang/String;)V

    .line 960
    invoke-direct {p0}, Landroid/net/Ikev2VpnProfile$Builder;->resetAuthParams()V

    .line 961
    iput-object p1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mPresharedKey:[B

    .line 962
    const/4 v0, 0x7

    iput v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mType:I

    .line 963
    return-object p0
.end method

.method public whitelist setAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/security/cert/X509Certificate;)Landroid/net/Ikev2VpnProfile$Builder;
    .registers 6
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "pass"    # Ljava/lang/String;
    .param p3, "serverRootCa"    # Ljava/security/cert/X509Certificate;

    .line 883
    const-string/jumbo v0, "user"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Required parameter was not provided: %s"

    invoke-static {p1, v1, v0}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smcheckNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    const-string/jumbo v0, "pass"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v1, v0}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smcheckNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    iget-object v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    const-string v1, "authUsernamePassword"

    invoke-static {v0, v1}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smcheckBuilderSetter(ZLjava/lang/String;)V

    .line 888
    if-eqz p3, :cond_27

    invoke-static {p3}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smcheckCert(Ljava/security/cert/X509Certificate;)V

    .line 890
    :cond_27
    invoke-direct {p0}, Landroid/net/Ikev2VpnProfile$Builder;->resetAuthParams()V

    .line 891
    iput-object p1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mUsername:Ljava/lang/String;

    .line 892
    iput-object p2, p0, Landroid/net/Ikev2VpnProfile$Builder;->mPassword:Ljava/lang/String;

    .line 893
    iput-object p3, p0, Landroid/net/Ikev2VpnProfile$Builder;->mServerRootCaCert:Ljava/security/cert/X509Certificate;

    .line 894
    const/4 v0, 0x6

    iput v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mType:I

    .line 895
    return-object p0
.end method

.method public whitelist setAutomaticIpVersionSelectionEnabled(Z)Landroid/net/Ikev2VpnProfile$Builder;
    .registers 2
    .param p1, "isEnabled"    # Z

    .line 1150
    iput-boolean p1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mAutomaticIpVersionSelectionEnabled:Z

    .line 1151
    return-object p0
.end method

.method public whitelist setAutomaticNattKeepaliveTimerEnabled(Z)Landroid/net/Ikev2VpnProfile$Builder;
    .registers 2
    .param p1, "isEnabled"    # Z

    .line 1136
    iput-boolean p1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mAutomaticNattKeepaliveTimerEnabled:Z

    .line 1137
    return-object p0
.end method

.method public whitelist setBypassable(Z)Landroid/net/Ikev2VpnProfile$Builder;
    .registers 2
    .param p1, "isBypassable"    # Z

    .line 982
    iput-boolean p1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mIsBypassable:Z

    .line 983
    return-object p0
.end method

.method public whitelist setLocalRoutesExcluded(Z)Landroid/net/Ikev2VpnProfile$Builder;
    .registers 2
    .param p1, "excludeLocalRoutes"    # Z

    .line 1174
    iput-boolean p1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mExcludeLocalRoutes:Z

    .line 1175
    return-object p0
.end method

.method public whitelist setMaxMtu(I)Landroid/net/Ikev2VpnProfile$Builder;
    .registers 4
    .param p1, "mtu"    # I

    .line 1017
    const/16 v0, 0x500

    if-lt p1, v0, :cond_7

    .line 1020
    iput p1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mMaxMtu:I

    .line 1021
    return-object p0

    .line 1018
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Max MTU must be at least 1280"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setMetered(Z)Landroid/net/Ikev2VpnProfile$Builder;
    .registers 2
    .param p1, "isMetered"    # Z

    .line 1065
    iput-boolean p1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mIsMetered:Z

    .line 1066
    return-object p0
.end method

.method public whitelist setProxy(Landroid/net/ProxyInfo;)Landroid/net/Ikev2VpnProfile$Builder;
    .registers 2
    .param p1, "proxy"    # Landroid/net/ProxyInfo;

    .line 997
    iput-object p1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mProxyInfo:Landroid/net/ProxyInfo;

    .line 998
    return-object p0
.end method

.method public whitelist setRequiresInternetValidation(Z)Landroid/net/Ikev2VpnProfile$Builder;
    .registers 2
    .param p1, "requiresInternetValidation"    # Z

    .line 1044
    iput-boolean p1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mRequiresInternetValidation:Z

    .line 1045
    return-object p0
.end method
