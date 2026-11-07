.class public final Landroid/telephony/data/DataCallResponse$Builder;
.super Ljava/lang/Object;
.source "DataCallResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/DataCallResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCause:I

.field private blacklist mDefaultQos:Landroid/telephony/data/Qos;

.field private blacklist mDnsAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mGatewayAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHandoverFailureMode:I

.field private blacklist mId:I

.field private blacklist mInterfaceName:Ljava/lang/String;

.field private blacklist mLinkStatus:I

.field private blacklist mMtu:I

.field private blacklist mMtuV4:I

.field private blacklist mMtuV6:I

.field private blacklist mNetworkValidationStatus:I

.field private blacklist mPcscfAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPduSessionId:I

.field private blacklist mProtocolType:I

.field private blacklist mQosBearerSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/data/QosBearerSession;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

.field private blacklist mSuggestedRetryTime:J

.field private blacklist mTrafficDescriptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/data/TrafficDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 657
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 615
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/telephony/data/DataCallResponse$Builder;->mSuggestedRetryTime:J

    .line 623
    const-string v0, ""

    iput-object v0, p0, Landroid/telephony/data/DataCallResponse$Builder;->mInterfaceName:Ljava/lang/String;

    .line 625
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/DataCallResponse$Builder;->mAddresses:Ljava/util/List;

    .line 627
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/DataCallResponse$Builder;->mDnsAddresses:Ljava/util/List;

    .line 629
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/DataCallResponse$Builder;->mGatewayAddresses:Ljava/util/List;

    .line 631
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/DataCallResponse$Builder;->mPcscfAddresses:Ljava/util/List;

    .line 639
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/data/DataCallResponse$Builder;->mHandoverFailureMode:I

    .line 641
    iput v0, p0, Landroid/telephony/data/DataCallResponse$Builder;->mPduSessionId:I

    .line 645
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mQosBearerSessions:Ljava/util/List;

    .line 649
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mTrafficDescriptors:Ljava/util/List;

    .line 651
    iput v0, p0, Landroid/telephony/data/DataCallResponse$Builder;->mNetworkValidationStatus:I

    .line 658
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/telephony/data/DataCallResponse;
    .registers 26

    .line 948
    move-object/from16 v0, p0

    new-instance v1, Landroid/telephony/data/DataCallResponse;

    iget v2, v0, Landroid/telephony/data/DataCallResponse$Builder;->mCause:I

    iget-wide v3, v0, Landroid/telephony/data/DataCallResponse$Builder;->mSuggestedRetryTime:J

    iget v5, v0, Landroid/telephony/data/DataCallResponse$Builder;->mId:I

    iget v6, v0, Landroid/telephony/data/DataCallResponse$Builder;->mLinkStatus:I

    iget v7, v0, Landroid/telephony/data/DataCallResponse$Builder;->mProtocolType:I

    iget-object v8, v0, Landroid/telephony/data/DataCallResponse$Builder;->mInterfaceName:Ljava/lang/String;

    iget-object v9, v0, Landroid/telephony/data/DataCallResponse$Builder;->mAddresses:Ljava/util/List;

    iget-object v10, v0, Landroid/telephony/data/DataCallResponse$Builder;->mDnsAddresses:Ljava/util/List;

    iget-object v11, v0, Landroid/telephony/data/DataCallResponse$Builder;->mGatewayAddresses:Ljava/util/List;

    iget-object v12, v0, Landroid/telephony/data/DataCallResponse$Builder;->mPcscfAddresses:Ljava/util/List;

    iget v13, v0, Landroid/telephony/data/DataCallResponse$Builder;->mMtu:I

    iget v14, v0, Landroid/telephony/data/DataCallResponse$Builder;->mMtuV4:I

    iget v15, v0, Landroid/telephony/data/DataCallResponse$Builder;->mMtuV6:I

    move-object/from16 v16, v1

    iget v1, v0, Landroid/telephony/data/DataCallResponse$Builder;->mHandoverFailureMode:I

    move/from16 v17, v1

    iget v1, v0, Landroid/telephony/data/DataCallResponse$Builder;->mPduSessionId:I

    move/from16 v18, v1

    iget-object v1, v0, Landroid/telephony/data/DataCallResponse$Builder;->mDefaultQos:Landroid/telephony/data/Qos;

    move-object/from16 v19, v1

    iget-object v1, v0, Landroid/telephony/data/DataCallResponse$Builder;->mQosBearerSessions:Ljava/util/List;

    move-object/from16 v20, v1

    iget-object v1, v0, Landroid/telephony/data/DataCallResponse$Builder;->mSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

    move-object/from16 v21, v1

    iget-object v1, v0, Landroid/telephony/data/DataCallResponse$Builder;->mTrafficDescriptors:Ljava/util/List;

    move-object/from16 v22, v1

    iget v1, v0, Landroid/telephony/data/DataCallResponse$Builder;->mNetworkValidationStatus:I

    const/16 v23, 0x0

    move-object/from16 v24, v22

    move/from16 v22, v1

    move-object/from16 v1, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v24

    invoke-direct/range {v1 .. v23}, Landroid/telephony/data/DataCallResponse;-><init>(IJIIILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;IIIIILandroid/telephony/data/Qos;Ljava/util/List;Landroid/telephony/data/NetworkSliceInfo;Ljava/util/List;ILandroid/telephony/data/DataCallResponse-IA;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public whitelist setAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;)",
            "Landroid/telephony/data/DataCallResponse$Builder;"
        }
    .end annotation

    .line 752
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkAddress;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    iput-object p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mAddresses:Ljava/util/List;

    .line 754
    return-object p0
.end method

.method public whitelist setCause(I)Landroid/telephony/data/DataCallResponse$Builder;
    .registers 2
    .param p1, "cause"    # I

    .line 669
    iput p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mCause:I

    .line 670
    return-object p0
.end method

.method public blacklist setDefaultQos(Landroid/telephony/data/Qos;)Landroid/telephony/data/DataCallResponse$Builder;
    .registers 2
    .param p1, "defaultQos"    # Landroid/telephony/data/Qos;

    .line 874
    iput-object p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mDefaultQos:Landroid/telephony/data/Qos;

    .line 875
    return-object p0
.end method

.method public whitelist setDnsAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)",
            "Landroid/telephony/data/DataCallResponse$Builder;"
        }
    .end annotation

    .line 764
    .local p1, "dnsAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    iput-object p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mDnsAddresses:Ljava/util/List;

    .line 766
    return-object p0
.end method

.method public whitelist setGatewayAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)",
            "Landroid/telephony/data/DataCallResponse$Builder;"
        }
    .end annotation

    .line 776
    .local p1, "gatewayAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    iput-object p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mGatewayAddresses:Ljava/util/List;

    .line 778
    return-object p0
.end method

.method public whitelist setHandoverFailureMode(I)Landroid/telephony/data/DataCallResponse$Builder;
    .registers 2
    .param p1, "failureMode"    # I

    .line 841
    iput p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mHandoverFailureMode:I

    .line 842
    return-object p0
.end method

.method public whitelist setId(I)Landroid/telephony/data/DataCallResponse$Builder;
    .registers 2
    .param p1, "id"    # I

    .line 705
    iput p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mId:I

    .line 706
    return-object p0
.end method

.method public whitelist setInterfaceName(Ljava/lang/String;)Landroid/telephony/data/DataCallResponse$Builder;
    .registers 2
    .param p1, "interfaceName"    # Ljava/lang/String;

    .line 740
    if-nez p1, :cond_4

    const-string p1, ""

    .line 741
    :cond_4
    iput-object p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mInterfaceName:Ljava/lang/String;

    .line 742
    return-object p0
.end method

.method public whitelist setLinkStatus(I)Landroid/telephony/data/DataCallResponse$Builder;
    .registers 2
    .param p1, "linkStatus"    # I

    .line 716
    iput p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mLinkStatus:I

    .line 717
    return-object p0
.end method

.method public whitelist setMtu(I)Landroid/telephony/data/DataCallResponse$Builder;
    .registers 2
    .param p1, "mtu"    # I

    .line 804
    iput p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mMtu:I

    .line 805
    return-object p0
.end method

.method public whitelist setMtuV4(I)Landroid/telephony/data/DataCallResponse$Builder;
    .registers 2
    .param p1, "mtu"    # I

    .line 817
    iput p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mMtuV4:I

    .line 818
    return-object p0
.end method

.method public whitelist setMtuV6(I)Landroid/telephony/data/DataCallResponse$Builder;
    .registers 2
    .param p1, "mtu"    # I

    .line 830
    iput p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mMtuV6:I

    .line 831
    return-object p0
.end method

.method public whitelist setNetworkValidationStatus(I)Landroid/telephony/data/DataCallResponse$Builder;
    .registers 2
    .param p1, "status"    # I

    .line 938
    iput p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mNetworkValidationStatus:I

    .line 939
    return-object p0
.end method

.method public whitelist setPcscfAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)",
            "Landroid/telephony/data/DataCallResponse$Builder;"
        }
    .end annotation

    .line 789
    .local p1, "pcscfAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    iput-object p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mPcscfAddresses:Ljava/util/List;

    .line 791
    return-object p0
.end method

.method public whitelist setPduSessionId(I)Landroid/telephony/data/DataCallResponse$Builder;
    .registers 6
    .param p1, "pduSessionId"    # I

    .line 856
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    :goto_7
    const-string/jumbo v3, "pduSessionId must be greater than or equal to0"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 858
    const/16 v2, 0xf

    if-gt p1, v2, :cond_12

    goto :goto_13

    :cond_12
    move v0, v1

    :goto_13
    const-string/jumbo v1, "pduSessionId must be less than or equal to 15."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 860
    iput p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mPduSessionId:I

    .line 861
    return-object p0
.end method

.method public whitelist setProtocolType(I)Landroid/telephony/data/DataCallResponse$Builder;
    .registers 2
    .param p1, "protocolType"    # I

    .line 727
    iput p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mProtocolType:I

    .line 728
    return-object p0
.end method

.method public blacklist setQosBearerSessions(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/data/QosBearerSession;",
            ">;)",
            "Landroid/telephony/data/DataCallResponse$Builder;"
        }
    .end annotation

    .line 890
    .local p1, "qosBearerSessions":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/QosBearerSession;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    iput-object p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mQosBearerSessions:Ljava/util/List;

    .line 892
    return-object p0
.end method

.method public whitelist setRetryDurationMillis(J)Landroid/telephony/data/DataCallResponse$Builder;
    .registers 3
    .param p1, "retryDurationMillis"    # J

    .line 694
    iput-wide p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mSuggestedRetryTime:J

    .line 695
    return-object p0
.end method

.method public whitelist setSliceInfo(Landroid/telephony/data/NetworkSliceInfo;)Landroid/telephony/data/DataCallResponse$Builder;
    .registers 2
    .param p1, "sliceInfo"    # Landroid/telephony/data/NetworkSliceInfo;

    .line 906
    iput-object p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

    .line 907
    return-object p0
.end method

.method public whitelist setSuggestedRetryTime(I)Landroid/telephony/data/DataCallResponse$Builder;
    .registers 4
    .param p1, "suggestedRetryTime"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 683
    int-to-long v0, p1

    iput-wide v0, p0, Landroid/telephony/data/DataCallResponse$Builder;->mSuggestedRetryTime:J

    .line 684
    return-object p0
.end method

.method public whitelist setTrafficDescriptors(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/data/TrafficDescriptor;",
            ">;)",
            "Landroid/telephony/data/DataCallResponse$Builder;"
        }
    .end annotation

    .line 924
    .local p1, "trafficDescriptors":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/TrafficDescriptor;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    iput-object p1, p0, Landroid/telephony/data/DataCallResponse$Builder;->mTrafficDescriptors:Ljava/util/List;

    .line 926
    return-object p0
.end method
