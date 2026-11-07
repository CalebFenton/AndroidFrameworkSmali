.class public final Landroid/net/ipsec/ike/IkeSessionParams$Builder;
.super Ljava/lang/Object;
.source "IkeSessionParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ipsec/ike/IkeSessionParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCallerConfiguredNetwork:Landroid/net/Network;

.field private final blacklist mConfigRequestList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$IkeConfigAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mConnectivityManager:Landroid/net/ConnectivityManager;

.field private blacklist mDpdDelaySec:I

.field private blacklist mDscp:I

.field private blacklist mEncapType:I

.field private blacklist mHardLifetimeSec:I

.field private blacklist mIke3gppExtension:Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;

.field private blacklist mIkeOptions:J

.field private blacklist mIpVersion:I

.field private final blacklist mIsIkeFragmentationSupported:Z

.field private blacklist mLivenessRetransTimeoutMsList:[I

.field private blacklist mLocalAuthConfig:Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;

.field private blacklist mLocalIdentification:Landroid/net/ipsec/ike/IkeIdentification;

.field private blacklist mNattKeepaliveDelaySec:I

.field private blacklist mRemoteAuthConfig:Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;

.field private blacklist mRemoteIdentification:Landroid/net/ipsec/ike/IkeIdentification;

.field private blacklist mRetransTimeoutMsList:[I

.field private final blacklist mSaProposalList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/ipsec/ike/IkeSaProposal;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mServerHostname:Ljava/lang/String;

.field private blacklist mSoftLifetimeSec:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$maddConfigRequest(Landroid/net/ipsec/ike/IkeSessionParams$Builder;Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$IkeConfigAttribute;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->addConfigRequest(Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$IkeConfigAttribute;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetAuth(Landroid/net/ipsec/ike/IkeSessionParams$Builder;Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setAuth(Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    move-result-object p0

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 1598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1532
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mSaProposalList:Ljava/util/List;

    .line 1533
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mConfigRequestList:Ljava/util/List;

    .line 1535
    sget-object v0, Landroid/net/ipsec/ike/IkeSessionParams;->IKE_RETRANS_TIMEOUT_MS_LIST_DEFAULT:[I

    sget-object v1, Landroid/net/ipsec/ike/IkeSessionParams;->IKE_RETRANS_TIMEOUT_MS_LIST_DEFAULT:[I

    array-length v1, v1

    .line 1537
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mRetransTimeoutMsList:[I

    .line 1541
    sget-object v0, Landroid/net/ipsec/ike/IkeSessionParams;->LIVENESS_RETRANS_TIMEOUT_MS_LIST_DEFAULT:[I

    sget-object v1, Landroid/net/ipsec/ike/IkeSessionParams;->LIVENESS_RETRANS_TIMEOUT_MS_LIST_DEFAULT:[I

    array-length v1, v1

    .line 1543
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mLivenessRetransTimeoutMsList:[I

    .line 1558
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mIkeOptions:J

    .line 1560
    const/16 v0, 0x3840

    iput v0, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mHardLifetimeSec:I

    .line 1561
    const/16 v0, 0x1c20

    iput v0, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mSoftLifetimeSec:I

    .line 1563
    const/16 v0, 0x78

    iput v0, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mDpdDelaySec:I

    .line 1564
    const/16 v0, 0xa

    iput v0, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mNattKeepaliveDelaySec:I

    .line 1565
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mDscp:I

    .line 1566
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mIsIkeFragmentationSupported:Z

    .line 1568
    iput v0, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mIpVersion:I

    .line 1569
    iput v0, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mEncapType:I

    .line 1598
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1592
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-direct {p0, v0}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;-><init>(Landroid/net/ConnectivityManager;)V

    .line 1593
    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/ConnectivityManager;)V
    .registers 4
    .param p1, "connectManager"    # Landroid/net/ConnectivityManager;

    .line 1604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1532
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mSaProposalList:Ljava/util/List;

    .line 1533
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mConfigRequestList:Ljava/util/List;

    .line 1535
    sget-object v0, Landroid/net/ipsec/ike/IkeSessionParams;->IKE_RETRANS_TIMEOUT_MS_LIST_DEFAULT:[I

    sget-object v1, Landroid/net/ipsec/ike/IkeSessionParams;->IKE_RETRANS_TIMEOUT_MS_LIST_DEFAULT:[I

    array-length v1, v1

    .line 1537
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mRetransTimeoutMsList:[I

    .line 1541
    sget-object v0, Landroid/net/ipsec/ike/IkeSessionParams;->LIVENESS_RETRANS_TIMEOUT_MS_LIST_DEFAULT:[I

    sget-object v1, Landroid/net/ipsec/ike/IkeSessionParams;->LIVENESS_RETRANS_TIMEOUT_MS_LIST_DEFAULT:[I

    array-length v1, v1

    .line 1543
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mLivenessRetransTimeoutMsList:[I

    .line 1558
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mIkeOptions:J

    .line 1560
    const/16 v0, 0x3840

    iput v0, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mHardLifetimeSec:I

    .line 1561
    const/16 v0, 0x1c20

    iput v0, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mSoftLifetimeSec:I

    .line 1563
    const/16 v0, 0x78

    iput v0, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mDpdDelaySec:I

    .line 1564
    const/16 v0, 0xa

    iput v0, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mNattKeepaliveDelaySec:I

    .line 1565
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mDscp:I

    .line 1566
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mIsIkeFragmentationSupported:Z

    .line 1568
    iput v0, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mIpVersion:I

    .line 1569
    iput v0, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mEncapType:I

    .line 1605
    iput-object p1, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 1606
    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/ipsec/ike/IkeSessionParams;)V
    .registers 6
    .param p1, "ikeSessionParams"    # Landroid/net/ipsec/ike/IkeSessionParams;

    .line 1613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1532
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mSaProposalList:Ljava/util/List;

    .line 1533
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mConfigRequestList:Ljava/util/List;

    .line 1535
    sget-object v0, Landroid/net/ipsec/ike/IkeSessionParams;->IKE_RETRANS_TIMEOUT_MS_LIST_DEFAULT:[I

    sget-object v1, Landroid/net/ipsec/ike/IkeSessionParams;->IKE_RETRANS_TIMEOUT_MS_LIST_DEFAULT:[I

    array-length v1, v1

    .line 1537
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mRetransTimeoutMsList:[I

    .line 1541
    sget-object v0, Landroid/net/ipsec/ike/IkeSessionParams;->LIVENESS_RETRANS_TIMEOUT_MS_LIST_DEFAULT:[I

    sget-object v1, Landroid/net/ipsec/ike/IkeSessionParams;->LIVENESS_RETRANS_TIMEOUT_MS_LIST_DEFAULT:[I

    array-length v1, v1

    .line 1543
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mLivenessRetransTimeoutMsList:[I

    .line 1558
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mIkeOptions:J

    .line 1560
    const/16 v0, 0x3840

    iput v0, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mHardLifetimeSec:I

    .line 1561
    const/16 v0, 0x1c20

    iput v0, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mSoftLifetimeSec:I

    .line 1563
    const/16 v0, 0x78

    iput v0, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mDpdDelaySec:I

    .line 1564
    const/16 v0, 0xa

    iput v0, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mNattKeepaliveDelaySec:I

    .line 1565
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mDscp:I

    .line 1566
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mIsIkeFragmentationSupported:Z

    .line 1568
    iput v0, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mIpVersion:I

    .line 1569
    iput v0, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mEncapType:I

    .line 1614
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mSaProposalList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/net/ipsec/ike/IkeSessionParams;->getSaProposals()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1615
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mConfigRequestList:Ljava/util/List;

    invoke-static {p1}, Landroid/net/ipsec/ike/IkeSessionParams;->-$$Nest$fgetmConfigRequests(Landroid/net/ipsec/ike/IkeSessionParams;)[Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$IkeConfigAttribute;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1617
    invoke-virtual {p1}, Landroid/net/ipsec/ike/IkeSessionParams;->getRetransmissionTimeoutsMillis()[I

    move-result-object v0

    .line 1618
    .local v0, "retransmissionTimeouts":[I
    array-length v1, v0

    .line 1619
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mRetransTimeoutMsList:[I

    .line 1621
    invoke-static {p1}, Landroid/net/ipsec/ike/IkeSessionParams;->-$$Nest$fgetmLivenessRetransTimeoutMsList(Landroid/net/ipsec/ike/IkeSessionParams;)[I

    move-result-object v1

    .line 1622
    .local v1, "livenessretransmissionTimeouts":[I
    if-eqz v1, :cond_73

    .line 1623
    array-length v2, v1

    .line 1624
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mLivenessRetransTimeoutMsList:[I

    .line 1629
    :cond_73
    invoke-virtual {p1}, Landroid/net/ipsec/ike/IkeSessionParams;->getServerHostname()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mServerHostname:Ljava/lang/String;

    .line 1630
    invoke-virtual {p1}, Landroid/net/ipsec/ike/IkeSessionParams;->getConfiguredNetwork()Landroid/net/Network;

    move-result-object v2

    iput-object v2, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mCallerConfiguredNetwork:Landroid/net/Network;

    .line 1631
    invoke-virtual {p1}, Landroid/net/ipsec/ike/IkeSessionParams;->getLocalIdentification()Landroid/net/ipsec/ike/IkeIdentification;

    move-result-object v2

    iput-object v2, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mLocalIdentification:Landroid/net/ipsec/ike/IkeIdentification;

    .line 1632
    invoke-virtual {p1}, Landroid/net/ipsec/ike/IkeSessionParams;->getRemoteIdentification()Landroid/net/ipsec/ike/IkeIdentification;

    move-result-object v2

    iput-object v2, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mRemoteIdentification:Landroid/net/ipsec/ike/IkeIdentification;

    .line 1633
    invoke-virtual {p1}, Landroid/net/ipsec/ike/IkeSessionParams;->getLocalAuthConfig()Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;

    move-result-object v2

    iput-object v2, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mLocalAuthConfig:Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;

    .line 1634
    invoke-virtual {p1}, Landroid/net/ipsec/ike/IkeSessionParams;->getRemoteAuthConfig()Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;

    move-result-object v2

    iput-object v2, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mRemoteAuthConfig:Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;

    .line 1636
    invoke-virtual {p1}, Landroid/net/ipsec/ike/IkeSessionParams;->getIke3gppExtension()Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;

    move-result-object v2

    iput-object v2, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mIke3gppExtension:Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;

    .line 1638
    invoke-virtual {p1}, Landroid/net/ipsec/ike/IkeSessionParams;->getHardLifetimeSeconds()I

    move-result v2

    iput v2, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mHardLifetimeSec:I

    .line 1639
    invoke-virtual {p1}, Landroid/net/ipsec/ike/IkeSessionParams;->getSoftLifetimeSeconds()I

    move-result v2

    iput v2, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mSoftLifetimeSec:I

    .line 1640
    invoke-virtual {p1}, Landroid/net/ipsec/ike/IkeSessionParams;->getDpdDelaySeconds()I

    move-result v2

    iput v2, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mDpdDelaySec:I

    .line 1641
    invoke-virtual {p1}, Landroid/net/ipsec/ike/IkeSessionParams;->getNattKeepAliveDelaySeconds()I

    move-result v2

    iput v2, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mNattKeepaliveDelaySec:I

    .line 1642
    invoke-virtual {p1}, Landroid/net/ipsec/ike/IkeSessionParams;->getDscp()I

    move-result v2

    iput v2, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mDscp:I

    .line 1643
    invoke-virtual {p1}, Landroid/net/ipsec/ike/IkeSessionParams;->getIpVersion()I

    move-result v2

    iput v2, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mIpVersion:I

    .line 1644
    invoke-virtual {p1}, Landroid/net/ipsec/ike/IkeSessionParams;->getEncapType()I

    move-result v2

    iput v2, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mEncapType:I

    .line 1646
    invoke-static {p1}, Landroid/net/ipsec/ike/IkeSessionParams;->-$$Nest$fgetmIkeOptions(Landroid/net/ipsec/ike/IkeSessionParams;)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mIkeOptions:J

    .line 1648
    invoke-static {p1}, Landroid/net/ipsec/ike/IkeSessionParams;->-$$Nest$fgetmIsIkeFragmentationSupported(Landroid/net/ipsec/ike/IkeSessionParams;)Z

    move-result v2

    if-eqz v2, :cond_d4

    .line 1652
    return-void

    .line 1649
    :cond_d4
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "mIsIkeFragmentationSupported should never be false"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private blacklist addConfigRequest(Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$IkeConfigAttribute;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;
    .registers 3
    .param p1, "configReq"    # Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$IkeConfigAttribute;

    .line 1935
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mConfigRequestList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1936
    return-object p0
.end method

.method private blacklist setAuth(Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;
    .registers 3
    .param p1, "local"    # Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;
    .param p2, "remote"    # Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;

    .line 1763
    iput-object p1, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mLocalAuthConfig:Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;

    .line 1764
    iput-object p2, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mRemoteAuthConfig:Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;

    .line 1765
    return-object p0
.end method


# virtual methods
.method public whitelist addIkeOption(I)Landroid/net/ipsec/ike/IkeSessionParams$Builder;
    .registers 3
    .param p1, "ikeOption"    # I

    .line 2243
    invoke-virtual {p0, p1}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->addIkeOptionInternal(I)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist addIkeOptionInternal(I)Landroid/net/ipsec/ike/IkeSessionParams$Builder;
    .registers 7
    .param p1, "ikeOption"    # I

    .line 2249
    invoke-static {p1}, Landroid/net/ipsec/ike/IkeSessionParams;->-$$Nest$smvalidateIkeOptionOrThrow(I)V

    .line 2250
    const/4 v0, 0x5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_9

    if-ne p1, v0, :cond_21

    .line 2251
    :cond_9
    invoke-static {}, Lcom/android/internal/net/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 2253
    invoke-static {}, Lcom/android/internal/net/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v2

    if-nez v2, :cond_21

    if-ne p1, v1, :cond_21

    .line 2256
    iget-wide v1, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mIkeOptions:J

    invoke-static {v0}, Landroid/net/ipsec/ike/IkeSessionParams;->-$$Nest$smgetOptionBitValue(I)J

    move-result-wide v3

    or-long v0, v1, v3

    iput-wide v0, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mIkeOptions:J

    .line 2260
    :cond_21
    iget-wide v0, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mIkeOptions:J

    invoke-static {p1}, Landroid/net/ipsec/ike/IkeSessionParams;->-$$Nest$smgetOptionBitValue(I)J

    move-result-wide v2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mIkeOptions:J

    .line 2261
    return-object p0

    .line 2252
    :cond_2b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Mobility only supported for S/S+"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addIkeSaProposal(Landroid/net/ipsec/ike/IkeSaProposal;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;
    .registers 4
    .param p1, "proposal"    # Landroid/net/ipsec/ike/IkeSaProposal;

    .line 1744
    if-eqz p1, :cond_17

    .line 1748
    invoke-virtual {p1}, Landroid/net/ipsec/ike/IkeSaProposal;->getProtocolId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 1752
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mSaProposalList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1753
    return-object p0

    .line 1749
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected IKE SA Proposal but received Child SA proposal"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1745
    :cond_17
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Required argument not provided"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addPcscfServerRequest(I)Landroid/net/ipsec/ike/IkeSessionParams$Builder;
    .registers 5
    .param p1, "addressFamily"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1978
    sget v0, Landroid/system/OsConstants;->AF_INET:I

    if-ne p1, v0, :cond_e

    .line 1979
    new-instance v0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Pcscf;

    invoke-direct {v0}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Pcscf;-><init>()V

    invoke-direct {p0, v0}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->addConfigRequest(Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$IkeConfigAttribute;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    move-result-object v0

    return-object v0

    .line 1980
    :cond_e
    sget v0, Landroid/system/OsConstants;->AF_INET6:I

    if-ne p1, v0, :cond_1c

    .line 1981
    new-instance v0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv6Pcscf;

    invoke-direct {v0}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv6Pcscf;-><init>()V

    invoke-direct {p0, v0}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->addConfigRequest(Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$IkeConfigAttribute;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    move-result-object v0

    return-object v0

    .line 1983
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid address family: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addPcscfServerRequest(Ljava/net/InetAddress;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;
    .registers 4
    .param p1, "address"    # Ljava/net/InetAddress;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1952
    if-eqz p1, :cond_2c

    .line 1956
    instance-of v0, p1, Ljava/net/Inet4Address;

    if-eqz v0, :cond_13

    .line 1957
    new-instance v0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Pcscf;

    move-object v1, p1

    check-cast v1, Ljava/net/Inet4Address;

    invoke-direct {v0, v1}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Pcscf;-><init>(Ljava/net/Inet4Address;)V

    invoke-direct {p0, v0}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->addConfigRequest(Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$IkeConfigAttribute;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    move-result-object v0

    return-object v0

    .line 1958
    :cond_13
    instance-of v0, p1, Ljava/net/Inet6Address;

    if-eqz v0, :cond_24

    .line 1959
    new-instance v0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv6Pcscf;

    move-object v1, p1

    check-cast v1, Ljava/net/Inet6Address;

    invoke-direct {v0, v1}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv6Pcscf;-><init>(Ljava/net/Inet6Address;)V

    invoke-direct {p0, v0}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->addConfigRequest(Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$IkeConfigAttribute;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    move-result-object v0

    return-object v0

    .line 1961
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid address family"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1953
    :cond_2c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Required argument not provided"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addSaProposal(Landroid/net/ipsec/ike/IkeSaProposal;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;
    .registers 3
    .param p1, "proposal"    # Landroid/net/ipsec/ike/IkeSaProposal;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1733
    invoke-virtual {p0, p1}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->addIkeSaProposal(Landroid/net/ipsec/ike/IkeSaProposal;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist build()Landroid/net/ipsec/ike/IkeSessionParams;
    .registers 29

    .line 2288
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mSaProposalList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12c

    .line 2297
    iget-object v1, v0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mCallerConfiguredNetwork:Landroid/net/Network;

    .line 2298
    .local v1, "defaultOrConfiguredNetwork":Landroid/net/Network;
    iget-object v2, v0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v2, :cond_24

    if-nez v1, :cond_24

    .line 2299
    iget-object v2, v0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    .line 2300
    if-eqz v1, :cond_1c

    move-object v6, v1

    goto :goto_25

    .line 2301
    :cond_1c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Network not found"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2305
    :cond_24
    move-object v6, v1

    .end local v1    # "defaultOrConfiguredNetwork":Landroid/net/Network;
    .local v6, "defaultOrConfiguredNetwork":Landroid/net/Network;
    :goto_25
    iget-object v1, v0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mServerHostname:Ljava/lang/String;

    if-eqz v1, :cond_124

    iget-object v1, v0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mLocalIdentification:Landroid/net/ipsec/ike/IkeIdentification;

    if-eqz v1, :cond_124

    iget-object v1, v0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mRemoteIdentification:Landroid/net/ipsec/ike/IkeIdentification;

    if-eqz v1, :cond_124

    iget-object v1, v0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mLocalAuthConfig:Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;

    if-eqz v1, :cond_124

    iget-object v1, v0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mRemoteAuthConfig:Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;

    if-eqz v1, :cond_124

    .line 2313
    iget-wide v1, v0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mIkeOptions:J

    const/4 v3, 0x1

    invoke-static {v3}, Landroid/net/ipsec/ike/IkeSessionParams;->-$$Nest$smgetOptionBitValue(I)J

    move-result-wide v3

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_6c

    .line 2314
    iget-object v1, v0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mLocalAuthConfig:Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;

    instance-of v1, v1, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthEapConfig;

    if-eqz v1, :cond_64

    .line 2320
    iget-object v1, v0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mLocalAuthConfig:Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;

    check-cast v1, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthEapConfig;

    .line 2321
    .local v1, "ikeAuthEapConfig":Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthEapConfig;
    invoke-virtual {v1}, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthEapConfig;->getEapConfig()Landroid/net/eap/EapSessionConfig;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/eap/EapSessionConfig;->areAllMethodsEapOnlySafe()Z

    move-result v2

    if-eqz v2, :cond_5c

    goto :goto_6c

    .line 2322
    :cond_5c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Only EAP-only safe method allowed when using EAP-only option."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2315
    .end local v1    # "ikeAuthEapConfig":Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthEapConfig;
    :cond_64
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "If IKE_OPTION_EAP_ONLY_AUTH is set, eap authentication needs to be configured."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2328
    :cond_6c
    :goto_6c
    iget-object v1, v0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mIke3gppExtension:Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;

    if-eqz v1, :cond_99

    iget-object v1, v0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mIke3gppExtension:Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;

    .line 2329
    invoke-virtual {v1}, Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;->getIke3gppParams()Landroid/net/ipsec/ike/ike3gpp/Ike3gppParams;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/ipsec/ike/ike3gpp/Ike3gppParams;->getMobileDeviceIdentity()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_99

    .line 2330
    iget-object v1, v0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mLocalAuthConfig:Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;

    instance-of v1, v1, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthEapConfig;

    if-eqz v1, :cond_91

    iget-object v1, v0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mLocalAuthConfig:Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;

    check-cast v1, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthEapConfig;

    .line 2331
    invoke-virtual {v1}, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthEapConfig;->getEapConfig()Landroid/net/eap/EapSessionConfig;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/eap/EapSessionConfig;->getEapAkaConfig()Landroid/net/eap/EapSessionConfig$EapAkaConfig;

    move-result-object v1

    if-eqz v1, :cond_91

    goto :goto_99

    .line 2333
    :cond_91
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "If device identity is set in Ike3gppParams, then EAP-KA MUST be configured as an acceptable authentication method"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2339
    :cond_99
    :goto_99
    iget-object v1, v0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mLocalAuthConfig:Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;

    iget v1, v1, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;->mAuthMethod:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b1

    iget-object v1, v0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mLocalIdentification:Landroid/net/ipsec/ike/IkeIdentification;

    iget v1, v1, Landroid/net/ipsec/ike/IkeIdentification;->idType:I

    const/16 v2, 0xb

    if-eq v1, v2, :cond_a9

    goto :goto_b1

    .line 2341
    :cond_a9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "It is not allowed to use KEY_ID as local ID when local authentication method is digital-signature-based"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2346
    :cond_b1
    :goto_b1
    iget v1, v0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mIpVersion:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_bb

    iget v1, v0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mEncapType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_c7

    :cond_bb
    iget v1, v0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mIpVersion:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_cf

    iget v1, v0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mEncapType:I

    const/16 v2, 0x11

    if-eq v1, v2, :cond_c7

    goto :goto_cf

    .line 2348
    :cond_c7
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Sending packets with IPv4 ESP or IPv6 UDP are not supported"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2352
    :cond_cf
    :goto_cf
    new-instance v4, Landroid/net/ipsec/ike/IkeSessionParams;

    iget-object v5, v0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mServerHostname:Ljava/lang/String;

    iget-object v7, v0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mCallerConfiguredNetwork:Landroid/net/Network;

    iget-object v1, v0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mSaProposalList:Ljava/util/List;

    const/4 v2, 0x0

    new-array v3, v2, [Landroid/net/ipsec/ike/IkeSaProposal;

    .line 2356
    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, [Landroid/net/ipsec/ike/IkeSaProposal;

    iget-object v9, v0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mLocalIdentification:Landroid/net/ipsec/ike/IkeIdentification;

    iget-object v10, v0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mRemoteIdentification:Landroid/net/ipsec/ike/IkeIdentification;

    iget-object v11, v0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mLocalAuthConfig:Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;

    iget-object v12, v0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mRemoteAuthConfig:Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;

    iget-object v1, v0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mConfigRequestList:Ljava/util/List;

    new-array v2, v2, [Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$IkeConfigAttribute;

    .line 2361
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, [Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$IkeConfigAttribute;

    iget-object v14, v0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mRetransTimeoutMsList:[I

    iget-object v15, v0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mLivenessRetransTimeoutMsList:[I

    iget-object v1, v0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mIke3gppExtension:Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;

    iget-wide v2, v0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mIkeOptions:J

    move-object/from16 v16, v1

    iget v1, v0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mHardLifetimeSec:I

    move/from16 v19, v1

    iget v1, v0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mSoftLifetimeSec:I

    move/from16 v20, v1

    iget v1, v0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mDpdDelaySec:I

    move/from16 v21, v1

    iget v1, v0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mNattKeepaliveDelaySec:I

    move/from16 v22, v1

    iget v1, v0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mDscp:I

    move/from16 v23, v1

    iget v1, v0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mIpVersion:I

    move/from16 v24, v1

    iget v1, v0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mEncapType:I

    const/16 v26, 0x1

    const/16 v27, 0x0

    move/from16 v25, v1

    move-wide/from16 v17, v2

    invoke-direct/range {v4 .. v27}, Landroid/net/ipsec/ike/IkeSessionParams;-><init>(Ljava/lang/String;Landroid/net/Network;Landroid/net/Network;[Landroid/net/ipsec/ike/IkeSaProposal;Landroid/net/ipsec/ike/IkeIdentification;Landroid/net/ipsec/ike/IkeIdentification;Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;[Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$IkeConfigAttribute;[I[ILandroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;JIIIIIIIZLandroid/net/ipsec/ike/IkeSessionParams-IA;)V

    .line 2352
    return-object v4

    .line 2310
    :cond_124
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Necessary parameter missing."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2289
    .end local v6    # "defaultOrConfiguredNetwork":Landroid/net/Network;
    :cond_12c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "IKE SA proposal not found"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist removeIkeOption(I)Landroid/net/ipsec/ike/IkeSessionParams$Builder;
    .registers 6
    .param p1, "ikeOption"    # I

    .line 2276
    invoke-static {p1}, Landroid/net/ipsec/ike/IkeSessionParams;->-$$Nest$smvalidateIkeOptionOrThrow(I)V

    .line 2277
    iget-wide v0, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mIkeOptions:J

    invoke-static {p1}, Landroid/net/ipsec/ike/IkeSessionParams;->-$$Nest$smgetOptionBitValue(I)J

    move-result-wide v2

    not-long v2, v2

    and-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mIkeOptions:J

    .line 2278
    return-object p0
.end method

.method public whitelist setAuthDigitalSignature(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;
    .registers 5
    .param p1, "serverCaCert"    # Ljava/security/cert/X509Certificate;
    .param p2, "clientEndCert"    # Ljava/security/cert/X509Certificate;
    .param p3, "clientPrivateKey"    # Ljava/security/PrivateKey;

    .line 1872
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setAuthDigitalSignature(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/List;Ljava/security/PrivateKey;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setAuthDigitalSignature(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/List;Ljava/security/PrivateKey;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;
    .registers 8
    .param p1, "serverCaCert"    # Ljava/security/cert/X509Certificate;
    .param p2, "clientEndCert"    # Ljava/security/cert/X509Certificate;
    .param p4, "clientPrivateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/security/PrivateKey;",
            ")",
            "Landroid/net/ipsec/ike/IkeSessionParams$Builder;"
        }
    .end annotation

    .line 1910
    .local p3, "clientIntermediateCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    if-eqz p2, :cond_21

    if-eqz p3, :cond_21

    if-eqz p4, :cond_21

    .line 1916
    instance-of v0, p4, Ljava/security/interfaces/RSAKey;

    if-eqz v0, :cond_19

    .line 1920
    new-instance v0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig;

    invoke-direct {v0, p2, p3, p4}, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig;-><init>(Ljava/security/cert/X509Certificate;Ljava/util/List;Ljava/security/PrivateKey;)V

    .line 1923
    .local v0, "localConfig":Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;
    new-instance v1, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignRemoteConfig;

    invoke-direct {v1, p1}, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignRemoteConfig;-><init>(Ljava/security/cert/X509Certificate;)V

    .line 1925
    .local v1, "remoteConfig":Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;
    invoke-direct {p0, v0, v1}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setAuth(Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    move-result-object v2

    return-object v2

    .line 1917
    .end local v0    # "localConfig":Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;
    .end local v1    # "remoteConfig":Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported private key type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1913
    :cond_21
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Required argument not provided"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAuthEap(Ljava/security/cert/X509Certificate;Landroid/net/eap/EapSessionConfig;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;
    .registers 5
    .param p1, "serverCaCert"    # Ljava/security/cert/X509Certificate;
    .param p2, "eapConfig"    # Landroid/net/eap/EapSessionConfig;

    .line 1835
    if-eqz p2, :cond_11

    .line 1839
    new-instance v0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthEapConfig;

    invoke-direct {v0, p2}, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthEapConfig;-><init>(Landroid/net/eap/EapSessionConfig;)V

    new-instance v1, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignRemoteConfig;

    invoke-direct {v1, p1}, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignRemoteConfig;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-direct {p0, v0, v1}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setAuth(Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    move-result-object v0

    return-object v0

    .line 1836
    :cond_11
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Required argument not provided"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAuthPsk([B)Landroid/net/ipsec/ike/IkeSessionParams$Builder;
    .registers 4
    .param p1, "sharedKey"    # [B

    .line 1788
    if-eqz p1, :cond_11

    .line 1792
    new-instance v0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthPskConfig;

    invoke-direct {v0, p1}, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthPskConfig;-><init>([B)V

    new-instance v1, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthPskConfig;

    invoke-direct {v1, p1}, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthPskConfig;-><init>([B)V

    invoke-direct {p0, v0, v1}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setAuth(Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    move-result-object v0

    return-object v0

    .line 1789
    :cond_11
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Required argument not provided"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setDpdDelaySeconds(I)Landroid/net/ipsec/ike/IkeSessionParams$Builder;
    .registers 4
    .param p1, "dpdDelaySeconds"    # I

    .line 2034
    const/16 v0, 0x14

    if-lt p1, v0, :cond_7

    .line 2037
    iput p1, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mDpdDelaySec:I

    .line 2038
    return-object p0

    .line 2035
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid DPD delay value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setDscp(I)Landroid/net/ipsec/ike/IkeSessionParams$Builder;
    .registers 4
    .param p1, "dscp"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2085
    if-ltz p1, :cond_9

    const/16 v0, 0x3f

    if-gt p1, v0, :cond_9

    .line 2088
    iput p1, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mDscp:I

    .line 2089
    return-object p0

    .line 2086
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid DSCP value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setEncapType(I)Landroid/net/ipsec/ike/IkeSessionParams$Builder;
    .registers 5
    .param p1, "encapType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 2121
    if-eqz p1, :cond_23

    const/4 v0, -0x1

    if-eq v0, p1, :cond_23

    const/16 v0, 0x11

    if-ne v0, p1, :cond_a

    goto :goto_23

    .line 2124
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid encap type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2126
    :cond_23
    :goto_23
    iput p1, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mEncapType:I

    .line 2127
    return-object p0
.end method

.method public whitelist setIke3gppExtension(Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;
    .registers 3
    .param p1, "ike3gppExtension"    # Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2228
    const-string v0, "ike3gppExtension must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2230
    iput-object p1, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mIke3gppExtension:Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;

    .line 2231
    return-object p0
.end method

.method public blacklist setIpVersion(I)Landroid/net/ipsec/ike/IkeSessionParams$Builder;
    .registers 5
    .param p1, "ipVersion"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 2102
    if-eqz p1, :cond_22

    const/4 v0, 0x4

    if-eq v0, p1, :cond_22

    const/4 v0, 0x6

    if-ne v0, p1, :cond_9

    goto :goto_22

    .line 2105
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid IP version : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2107
    :cond_22
    :goto_22
    iput p1, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mIpVersion:I

    .line 2108
    return-object p0
.end method

.method public whitelist setLifetimeSeconds(II)Landroid/net/ipsec/ike/IkeSessionParams$Builder;
    .registers 5
    .param p1, "hardLifetimeSeconds"    # I
    .param p2, "softLifetimeSeconds"    # I

    .line 2009
    const/16 v0, 0x12c

    if-lt p1, v0, :cond_18

    const v0, 0x15180

    if-gt p1, v0, :cond_18

    const/16 v0, 0x78

    if-lt p2, v0, :cond_18

    sub-int v0, p1, p2

    sget v1, Landroid/net/ipsec/ike/IkeSessionParams;->IKE_LIFETIME_MARGIN_SEC_MINIMUM:I

    if-lt v0, v1, :cond_18

    .line 2017
    iput p1, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mHardLifetimeSec:I

    .line 2018
    iput p2, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mSoftLifetimeSec:I

    .line 2019
    return-object p0

    .line 2014
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid lifetime value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setLivenessRetransmissionTimeoutsMillis([I)Landroid/net/ipsec/ike/IkeSessionParams$Builder;
    .registers 9
    .param p1, "retransTimeoutMillisList"    # [I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2189
    const/4 v0, 0x1

    .line 2190
    .local v0, "isValid":Z
    const/4 v1, 0x0

    .line 2191
    .local v1, "totalTimeoutMs":I
    if-eqz p1, :cond_c

    array-length v2, p1

    if-eqz v2, :cond_c

    array-length v2, p1

    const/16 v3, 0xa

    if-le v2, v3, :cond_d

    .line 2194
    :cond_c
    const/4 v0, 0x0

    .line 2196
    :cond_d
    array-length v2, p1

    const/4 v3, 0x0

    :goto_f
    const/16 v4, 0x7530

    if-ge v3, v2, :cond_20

    aget v5, p1, v3

    .line 2197
    .local v5, "t":I
    add-int/2addr v1, v5

    .line 2198
    const/16 v6, 0x1f4

    if-lt v5, v6, :cond_1c

    if-le v5, v4, :cond_1d

    .line 2199
    :cond_1c
    const/4 v0, 0x0

    .line 2196
    .end local v5    # "t":I
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 2202
    :cond_20
    if-le v1, v4, :cond_23

    .line 2203
    const/4 v0, 0x0

    .line 2206
    :cond_23
    if-eqz v0, :cond_28

    .line 2209
    iput-object p1, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mLivenessRetransTimeoutMsList:[I

    .line 2210
    return-object p0

    .line 2207
    :cond_28
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid liveness retransmission timeout list."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist setLocalIdentification(Landroid/net/ipsec/ike/IkeIdentification;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;
    .registers 4
    .param p1, "identification"    # Landroid/net/ipsec/ike/IkeIdentification;

    .line 1696
    if-eqz p1, :cond_5

    .line 1700
    iput-object p1, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mLocalIdentification:Landroid/net/ipsec/ike/IkeIdentification;

    .line 1701
    return-object p0

    .line 1697
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Required argument not provided"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setNattKeepAliveDelaySeconds(I)Landroid/net/ipsec/ike/IkeSessionParams$Builder;
    .registers 4
    .param p1, "nattKeepaliveDelaySeconds"    # I

    .line 2055
    const/16 v0, 0xa

    if-lt p1, v0, :cond_b

    const/16 v0, 0xe10

    if-gt p1, v0, :cond_b

    .line 2059
    iput p1, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mNattKeepaliveDelaySec:I

    .line 2060
    return-object p0

    .line 2057
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid NATT keepalive delay value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setNetwork(Landroid/net/Network;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;
    .registers 2
    .param p1, "network"    # Landroid/net/Network;

    .line 1681
    iput-object p1, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mCallerConfiguredNetwork:Landroid/net/Network;

    .line 1682
    return-object p0
.end method

.method public whitelist setRemoteIdentification(Landroid/net/ipsec/ike/IkeIdentification;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;
    .registers 4
    .param p1, "identification"    # Landroid/net/ipsec/ike/IkeIdentification;

    .line 1712
    if-eqz p1, :cond_5

    .line 1716
    iput-object p1, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mRemoteIdentification:Landroid/net/ipsec/ike/IkeIdentification;

    .line 1717
    return-object p0

    .line 1713
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Required argument not provided"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setRetransmissionTimeoutsMillis([I)Landroid/net/ipsec/ike/IkeSessionParams$Builder;
    .registers 7
    .param p1, "retransTimeoutMillisList"    # [I

    .line 2148
    const/4 v0, 0x1

    .line 2149
    .local v0, "isValid":Z
    if-eqz p1, :cond_b

    array-length v1, p1

    if-eqz v1, :cond_b

    array-length v1, p1

    const/16 v2, 0xa

    if-le v1, v2, :cond_c

    .line 2152
    :cond_b
    const/4 v0, 0x0

    .line 2154
    :cond_c
    array-length v1, p1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_1e

    aget v3, p1, v2

    .line 2155
    .local v3, "t":I
    const/16 v4, 0x1f4

    if-lt v3, v4, :cond_1a

    sget v4, Landroid/net/ipsec/ike/IkeSessionParams;->IKE_RETRANS_TIMEOUT_MS_MAX:I

    if-le v3, v4, :cond_1b

    .line 2156
    :cond_1a
    const/4 v0, 0x0

    .line 2154
    .end local v3    # "t":I
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 2159
    :cond_1e
    if-eqz v0, :cond_23

    .line 2161
    iput-object p1, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mRetransTimeoutMsList:[I

    .line 2162
    return-object p0

    .line 2159
    :cond_23
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid retransmission timeout list"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist setServerHostname(Ljava/lang/String;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;
    .registers 3
    .param p1, "serverHostname"    # Ljava/lang/String;

    .line 1662
    const-string v0, "Required argument not provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1664
    iput-object p1, p0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->mServerHostname:Ljava/lang/String;

    .line 1665
    return-object p0
.end method
