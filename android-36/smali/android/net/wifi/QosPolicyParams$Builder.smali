.class public final Landroid/net/wifi/QosPolicyParams$Builder;
.super Ljava/lang/Object;
.source "QosPolicyParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/QosPolicyParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mDirection:I

.field private blacklist mDscp:I

.field private blacklist mDstIp:Ljava/net/InetAddress;

.field private blacklist mDstPort:I

.field private blacklist mDstPortRange:[I

.field private blacklist mFlowLabel:[B

.field private blacklist mIpVersion:I

.field private final blacklist mPolicyId:I

.field private blacklist mProtocol:I

.field private blacklist mQosCharacteristics:Landroid/net/wifi/QosCharacteristics;

.field private blacklist mSrcIp:Ljava/net/InetAddress;

.field private blacklist mSrcPort:I

.field private blacklist mUserPriority:I


# direct methods
.method public constructor whitelist <init>(II)V
    .registers 4
    .param p1, "policyId"    # I
    .param p2, "direction"    # I

    .line 688
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 666
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/QosPolicyParams$Builder;->mDscp:I

    .line 667
    iput v0, p0, Landroid/net/wifi/QosPolicyParams$Builder;->mUserPriority:I

    .line 668
    iput v0, p0, Landroid/net/wifi/QosPolicyParams$Builder;->mSrcPort:I

    .line 669
    iput v0, p0, Landroid/net/wifi/QosPolicyParams$Builder;->mProtocol:I

    .line 670
    iput v0, p0, Landroid/net/wifi/QosPolicyParams$Builder;->mDstPort:I

    .line 672
    iput v0, p0, Landroid/net/wifi/QosPolicyParams$Builder;->mIpVersion:I

    .line 689
    iput p1, p0, Landroid/net/wifi/QosPolicyParams$Builder;->mPolicyId:I

    .line 690
    iput p2, p0, Landroid/net/wifi/QosPolicyParams$Builder;->mDirection:I

    .line 691
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/wifi/QosPolicyParams;
    .registers 16

    .line 802
    new-instance v0, Landroid/net/wifi/QosPolicyParams;

    iget v1, p0, Landroid/net/wifi/QosPolicyParams$Builder;->mPolicyId:I

    iget v2, p0, Landroid/net/wifi/QosPolicyParams$Builder;->mDscp:I

    iget v3, p0, Landroid/net/wifi/QosPolicyParams$Builder;->mUserPriority:I

    iget-object v4, p0, Landroid/net/wifi/QosPolicyParams$Builder;->mSrcIp:Ljava/net/InetAddress;

    iget-object v5, p0, Landroid/net/wifi/QosPolicyParams$Builder;->mDstIp:Ljava/net/InetAddress;

    iget v6, p0, Landroid/net/wifi/QosPolicyParams$Builder;->mSrcPort:I

    iget v7, p0, Landroid/net/wifi/QosPolicyParams$Builder;->mProtocol:I

    iget-object v8, p0, Landroid/net/wifi/QosPolicyParams$Builder;->mDstPortRange:[I

    iget v9, p0, Landroid/net/wifi/QosPolicyParams$Builder;->mDirection:I

    iget v10, p0, Landroid/net/wifi/QosPolicyParams$Builder;->mIpVersion:I

    iget v11, p0, Landroid/net/wifi/QosPolicyParams$Builder;->mDstPort:I

    iget-object v12, p0, Landroid/net/wifi/QosPolicyParams$Builder;->mFlowLabel:[B

    iget-object v13, p0, Landroid/net/wifi/QosPolicyParams$Builder;->mQosCharacteristics:Landroid/net/wifi/QosCharacteristics;

    const/4 v14, 0x0

    invoke-direct/range {v0 .. v14}, Landroid/net/wifi/QosPolicyParams;-><init>(IIILjava/net/InetAddress;Ljava/net/InetAddress;II[IIII[BLandroid/net/wifi/QosCharacteristics;Landroid/net/wifi/QosPolicyParams-IA;)V

    .line 805
    .local v0, "params":Landroid/net/wifi/QosPolicyParams;
    invoke-virtual {v0}, Landroid/net/wifi/QosPolicyParams;->validate()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 808
    return-object v0

    .line 806
    :cond_27
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Provided parameters are invalid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist setDestinationAddress(Ljava/net/InetAddress;)Landroid/net/wifi/QosPolicyParams$Builder;
    .registers 2
    .param p1, "value"    # Ljava/net/InetAddress;

    .line 705
    iput-object p1, p0, Landroid/net/wifi/QosPolicyParams$Builder;->mDstIp:Ljava/net/InetAddress;

    .line 706
    return-object p0
.end method

.method public whitelist setDestinationPort(I)Landroid/net/wifi/QosPolicyParams$Builder;
    .registers 2
    .param p1, "value"    # I

    .line 750
    iput p1, p0, Landroid/net/wifi/QosPolicyParams$Builder;->mDstPort:I

    .line 751
    return-object p0
.end method

.method public whitelist setDestinationPortRange(II)Landroid/net/wifi/QosPolicyParams$Builder;
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 761
    filled-new-array {p1, p2}, [I

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/QosPolicyParams$Builder;->mDstPortRange:[I

    .line 762
    return-object p0
.end method

.method public whitelist setDscp(I)Landroid/net/wifi/QosPolicyParams$Builder;
    .registers 2
    .param p1, "value"    # I

    .line 714
    iput p1, p0, Landroid/net/wifi/QosPolicyParams$Builder;->mDscp:I

    .line 715
    return-object p0
.end method

.method public whitelist setFlowLabel([B)Landroid/net/wifi/QosPolicyParams$Builder;
    .registers 2
    .param p1, "value"    # [B

    .line 779
    iput-object p1, p0, Landroid/net/wifi/QosPolicyParams$Builder;->mFlowLabel:[B

    .line 780
    return-object p0
.end method

.method public whitelist setIpVersion(I)Landroid/net/wifi/QosPolicyParams$Builder;
    .registers 2
    .param p1, "value"    # I

    .line 770
    iput p1, p0, Landroid/net/wifi/QosPolicyParams$Builder;->mIpVersion:I

    .line 771
    return-object p0
.end method

.method public whitelist setProtocol(I)Landroid/net/wifi/QosPolicyParams$Builder;
    .registers 2
    .param p1, "value"    # I

    .line 740
    iput p1, p0, Landroid/net/wifi/QosPolicyParams$Builder;->mProtocol:I

    .line 741
    return-object p0
.end method

.method public whitelist setQosCharacteristics(Landroid/net/wifi/QosCharacteristics;)Landroid/net/wifi/QosPolicyParams$Builder;
    .registers 3
    .param p1, "qosCharacteristics"    # Landroid/net/wifi/QosCharacteristics;

    .line 791
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 794
    iput-object p1, p0, Landroid/net/wifi/QosPolicyParams$Builder;->mQosCharacteristics:Landroid/net/wifi/QosCharacteristics;

    .line 795
    return-object p0

    .line 792
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist setSourceAddress(Ljava/net/InetAddress;)Landroid/net/wifi/QosPolicyParams$Builder;
    .registers 2
    .param p1, "value"    # Ljava/net/InetAddress;

    .line 697
    iput-object p1, p0, Landroid/net/wifi/QosPolicyParams$Builder;->mSrcIp:Ljava/net/InetAddress;

    .line 698
    return-object p0
.end method

.method public whitelist setSourcePort(I)Landroid/net/wifi/QosPolicyParams$Builder;
    .registers 2
    .param p1, "value"    # I

    .line 732
    iput p1, p0, Landroid/net/wifi/QosPolicyParams$Builder;->mSrcPort:I

    .line 733
    return-object p0
.end method

.method public whitelist setUserPriority(I)Landroid/net/wifi/QosPolicyParams$Builder;
    .registers 2
    .param p1, "value"    # I

    .line 723
    iput p1, p0, Landroid/net/wifi/QosPolicyParams$Builder;->mUserPriority:I

    .line 724
    return-object p0
.end method
