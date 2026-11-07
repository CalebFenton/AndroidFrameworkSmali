.class public final Landroid/net/wifi/QosPolicyParams;
.super Ljava/lang/Object;
.source "QosPolicyParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/QosPolicyParams$Builder;,
        Landroid/net/wifi/QosPolicyParams$IpVersion;,
        Landroid/net/wifi/QosPolicyParams$UserPriority;,
        Landroid/net/wifi/QosPolicyParams$Direction;,
        Landroid/net/wifi/QosPolicyParams$Protocol;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/QosPolicyParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DESTINATION_PORT_ANY:I = -0x1

.field public static final whitelist DIRECTION_DOWNLINK:I = 0x1

.field public static final whitelist DIRECTION_UPLINK:I = 0x0

.field public static final whitelist DSCP_ANY:I = -0x1

.field public static final whitelist IP_VERSION_4:I = 0x4

.field public static final whitelist IP_VERSION_6:I = 0x6

.field public static final whitelist IP_VERSION_ANY:I = -0x1

.field public static final whitelist PROTOCOL_ANY:I = -0x1

.field public static final whitelist PROTOCOL_ESP:I = 0x32

.field public static final whitelist PROTOCOL_TCP:I = 0x6

.field public static final whitelist PROTOCOL_UDP:I = 0x11

.field private static final blacklist TAG:Ljava/lang/String; = "QosPolicyParams"

.field public static final whitelist USER_PRIORITY_ANY:I = -0x1

.field public static final whitelist USER_PRIORITY_BACKGROUND_HIGH:I = 0x2

.field public static final whitelist USER_PRIORITY_BACKGROUND_LOW:I = 0x1

.field public static final whitelist USER_PRIORITY_BEST_EFFORT_HIGH:I = 0x3

.field public static final whitelist USER_PRIORITY_BEST_EFFORT_LOW:I = 0x0

.field public static final whitelist USER_PRIORITY_VIDEO_HIGH:I = 0x5

.field public static final whitelist USER_PRIORITY_VIDEO_LOW:I = 0x4

.field public static final whitelist USER_PRIORITY_VOICE_HIGH:I = 0x7

.field public static final whitelist USER_PRIORITY_VOICE_LOW:I = 0x6


# instance fields
.field private final blacklist mDirection:I

.field private final blacklist mDscp:I

.field private final blacklist mDstIp:Ljava/net/InetAddress;

.field private final blacklist mDstPort:I

.field private final blacklist mDstPortRange:[I

.field private final blacklist mFlowLabel:[B

.field private final blacklist mIpVersion:I

.field private final blacklist mPolicyId:I

.field private final blacklist mProtocol:I

.field private final blacklist mQosCharacteristics:Landroid/net/wifi/QosCharacteristics;

.field private final blacklist mSrcIp:Ljava/net/InetAddress;

.field private final blacklist mSrcPort:I

.field private blacklist mTranslatedPolicyId:I

.field private final blacklist mUserPriority:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 645
    new-instance v0, Landroid/net/wifi/QosPolicyParams$1;

    invoke-direct {v0}, Landroid/net/wifi/QosPolicyParams$1;-><init>()V

    sput-object v0, Landroid/net/wifi/QosPolicyParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IIILjava/net/InetAddress;Ljava/net/InetAddress;II[IIII[BLandroid/net/wifi/QosCharacteristics;)V
    .registers 14
    .param p1, "policyId"    # I
    .param p2, "dscp"    # I
    .param p3, "userPriority"    # I
    .param p4, "srcIp"    # Ljava/net/InetAddress;
    .param p5, "dstIp"    # Ljava/net/InetAddress;
    .param p6, "srcPort"    # I
    .param p7, "protocol"    # I
    .param p8, "dstPortRange"    # [I
    .param p9, "direction"    # I
    .param p10, "ipVersion"    # I
    .param p11, "dstPort"    # I
    .param p12, "flowLabel"    # [B
    .param p13, "qosCharacteristics"    # Landroid/net/wifi/QosCharacteristics;

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    iput p1, p0, Landroid/net/wifi/QosPolicyParams;->mPolicyId:I

    .line 248
    iput p2, p0, Landroid/net/wifi/QosPolicyParams;->mDscp:I

    .line 249
    iput p3, p0, Landroid/net/wifi/QosPolicyParams;->mUserPriority:I

    .line 250
    iput-object p4, p0, Landroid/net/wifi/QosPolicyParams;->mSrcIp:Ljava/net/InetAddress;

    .line 251
    iput-object p5, p0, Landroid/net/wifi/QosPolicyParams;->mDstIp:Ljava/net/InetAddress;

    .line 252
    iput p6, p0, Landroid/net/wifi/QosPolicyParams;->mSrcPort:I

    .line 253
    iput p7, p0, Landroid/net/wifi/QosPolicyParams;->mProtocol:I

    .line 254
    iput p11, p0, Landroid/net/wifi/QosPolicyParams;->mDstPort:I

    .line 255
    iput-object p8, p0, Landroid/net/wifi/QosPolicyParams;->mDstPortRange:[I

    .line 256
    iput p9, p0, Landroid/net/wifi/QosPolicyParams;->mDirection:I

    .line 257
    iput p10, p0, Landroid/net/wifi/QosPolicyParams;->mIpVersion:I

    .line 258
    iput-object p12, p0, Landroid/net/wifi/QosPolicyParams;->mFlowLabel:[B

    .line 259
    iput-object p13, p0, Landroid/net/wifi/QosPolicyParams;->mQosCharacteristics:Landroid/net/wifi/QosCharacteristics;

    .line 260
    return-void
.end method

.method synthetic constructor blacklist <init>(IIILjava/net/InetAddress;Ljava/net/InetAddress;II[IIII[BLandroid/net/wifi/QosCharacteristics;Landroid/net/wifi/QosPolicyParams-IA;)V
    .registers 15

    invoke-direct/range {p0 .. p13}, Landroid/net/wifi/QosPolicyParams;-><init>(IIILjava/net/InetAddress;Ljava/net/InetAddress;II[IIII[BLandroid/net/wifi/QosCharacteristics;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 624
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 625
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/QosPolicyParams;->mPolicyId:I

    .line 626
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/QosPolicyParams;->mDscp:I

    .line 627
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/QosPolicyParams;->mUserPriority:I

    .line 628
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/QosPolicyParams;->getInetAddrOrNull([B)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/QosPolicyParams;->mSrcIp:Ljava/net/InetAddress;

    .line 629
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/QosPolicyParams;->getInetAddrOrNull([B)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/QosPolicyParams;->mDstIp:Ljava/net/InetAddress;

    .line 630
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/QosPolicyParams;->mSrcPort:I

    .line 631
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/QosPolicyParams;->mProtocol:I

    .line 632
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/QosPolicyParams;->mDstPort:I

    .line 633
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/QosPolicyParams;->mDstPortRange:[I

    .line 634
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/QosPolicyParams;->mDirection:I

    .line 635
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/QosPolicyParams;->mIpVersion:I

    .line 636
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/QosPolicyParams;->mFlowLabel:[B

    .line 637
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 638
    const-class v0, Landroid/net/wifi/QosCharacteristics;

    .line 639
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/net/wifi/QosCharacteristics;

    .line 638
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/QosCharacteristics;

    iput-object v0, p0, Landroid/net/wifi/QosPolicyParams;->mQosCharacteristics:Landroid/net/wifi/QosCharacteristics;

    goto :goto_6d

    .line 641
    :cond_6a
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/QosPolicyParams;->mQosCharacteristics:Landroid/net/wifi/QosCharacteristics;

    .line 643
    :goto_6d
    return-void
.end method

.method private blacklist getInetAddrOrNull([B)Ljava/net/InetAddress;
    .registers 4
    .param p1, "byteAddr"    # [B

    .line 595
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 597
    :cond_4
    :try_start_4
    invoke-static {p1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8} :catch_9

    return-object v0

    .line 598
    :catch_9
    move-exception v1

    .line 599
    .local v1, "e":Ljava/lang/Exception;
    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 591
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 546
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 547
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_76

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_76

    .line 548
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/net/wifi/QosPolicyParams;

    .line 549
    .local v2, "that":Landroid/net/wifi/QosPolicyParams;
    iget v3, p0, Landroid/net/wifi/QosPolicyParams;->mPolicyId:I

    iget v4, v2, Landroid/net/wifi/QosPolicyParams;->mPolicyId:I

    if-ne v3, v4, :cond_74

    iget v3, p0, Landroid/net/wifi/QosPolicyParams;->mDscp:I

    iget v4, v2, Landroid/net/wifi/QosPolicyParams;->mDscp:I

    if-ne v3, v4, :cond_74

    iget v3, p0, Landroid/net/wifi/QosPolicyParams;->mUserPriority:I

    iget v4, v2, Landroid/net/wifi/QosPolicyParams;->mUserPriority:I

    if-ne v3, v4, :cond_74

    iget-object v3, p0, Landroid/net/wifi/QosPolicyParams;->mSrcIp:Ljava/net/InetAddress;

    iget-object v4, v2, Landroid/net/wifi/QosPolicyParams;->mSrcIp:Ljava/net/InetAddress;

    .line 552
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_74

    iget-object v3, p0, Landroid/net/wifi/QosPolicyParams;->mDstIp:Ljava/net/InetAddress;

    iget-object v4, v2, Landroid/net/wifi/QosPolicyParams;->mDstIp:Ljava/net/InetAddress;

    .line 553
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_74

    iget v3, p0, Landroid/net/wifi/QosPolicyParams;->mSrcPort:I

    iget v4, v2, Landroid/net/wifi/QosPolicyParams;->mSrcPort:I

    if-ne v3, v4, :cond_74

    iget v3, p0, Landroid/net/wifi/QosPolicyParams;->mProtocol:I

    iget v4, v2, Landroid/net/wifi/QosPolicyParams;->mProtocol:I

    if-ne v3, v4, :cond_74

    iget v3, p0, Landroid/net/wifi/QosPolicyParams;->mDstPort:I

    iget v4, v2, Landroid/net/wifi/QosPolicyParams;->mDstPort:I

    if-ne v3, v4, :cond_74

    iget-object v3, p0, Landroid/net/wifi/QosPolicyParams;->mDstPortRange:[I

    iget-object v4, v2, Landroid/net/wifi/QosPolicyParams;->mDstPortRange:[I

    .line 557
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_74

    iget v3, p0, Landroid/net/wifi/QosPolicyParams;->mDirection:I

    iget v4, v2, Landroid/net/wifi/QosPolicyParams;->mDirection:I

    if-ne v3, v4, :cond_74

    iget v3, p0, Landroid/net/wifi/QosPolicyParams;->mIpVersion:I

    iget v4, v2, Landroid/net/wifi/QosPolicyParams;->mIpVersion:I

    if-ne v3, v4, :cond_74

    iget-object v3, p0, Landroid/net/wifi/QosPolicyParams;->mFlowLabel:[B

    iget-object v4, v2, Landroid/net/wifi/QosPolicyParams;->mFlowLabel:[B

    if-ne v3, v4, :cond_74

    iget-object v3, p0, Landroid/net/wifi/QosPolicyParams;->mQosCharacteristics:Landroid/net/wifi/QosCharacteristics;

    iget-object v4, v2, Landroid/net/wifi/QosPolicyParams;->mQosCharacteristics:Landroid/net/wifi/QosCharacteristics;

    .line 561
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_74

    goto :goto_75

    :cond_74
    move v0, v1

    .line 549
    :goto_75
    return v0

    .line 547
    .end local v2    # "that":Landroid/net/wifi/QosPolicyParams;
    :cond_76
    :goto_76
    return v1
.end method

.method public whitelist getDestinationAddress()Ljava/net/InetAddress;
    .registers 2

    .line 448
    iget-object v0, p0, Landroid/net/wifi/QosPolicyParams;->mDstIp:Ljava/net/InetAddress;

    return-object v0
.end method

.method public whitelist getDestinationPort()I
    .registers 2

    .line 483
    iget v0, p0, Landroid/net/wifi/QosPolicyParams;->mDstPort:I

    return v0
.end method

.method public whitelist getDestinationPortRange()[I
    .registers 2

    .line 494
    iget-object v0, p0, Landroid/net/wifi/QosPolicyParams;->mDstPortRange:[I

    return-object v0
.end method

.method public whitelist getDirection()I
    .registers 2

    .line 503
    iget v0, p0, Landroid/net/wifi/QosPolicyParams;->mDirection:I

    return v0
.end method

.method public whitelist getDscp()I
    .registers 2

    .line 415
    iget v0, p0, Landroid/net/wifi/QosPolicyParams;->mDscp:I

    return v0
.end method

.method public whitelist getFlowLabel()[B
    .registers 2

    .line 525
    iget-object v0, p0, Landroid/net/wifi/QosPolicyParams;->mFlowLabel:[B

    return-object v0
.end method

.method public whitelist getIpVersion()I
    .registers 2

    .line 514
    iget v0, p0, Landroid/net/wifi/QosPolicyParams;->mIpVersion:I

    return v0
.end method

.method public whitelist getPolicyId()I
    .registers 2

    .line 392
    iget v0, p0, Landroid/net/wifi/QosPolicyParams;->mPolicyId:I

    return v0
.end method

.method public whitelist getProtocol()I
    .registers 2

    .line 471
    iget v0, p0, Landroid/net/wifi/QosPolicyParams;->mProtocol:I

    return v0
.end method

.method public whitelist getQosCharacteristics()Landroid/net/wifi/QosCharacteristics;
    .registers 2

    .line 538
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 541
    iget-object v0, p0, Landroid/net/wifi/QosPolicyParams;->mQosCharacteristics:Landroid/net/wifi/QosCharacteristics;

    return-object v0

    .line 539
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist getSourceAddress()Ljava/net/InetAddress;
    .registers 2

    .line 437
    iget-object v0, p0, Landroid/net/wifi/QosPolicyParams;->mSrcIp:Ljava/net/InetAddress;

    return-object v0
.end method

.method public whitelist getSourcePort()I
    .registers 2

    .line 460
    iget v0, p0, Landroid/net/wifi/QosPolicyParams;->mSrcPort:I

    return v0
.end method

.method public blacklist getTranslatedPolicyId()I
    .registers 2

    .line 402
    iget v0, p0, Landroid/net/wifi/QosPolicyParams;->mTranslatedPolicyId:I

    return v0
.end method

.method public whitelist getUserPriority()I
    .registers 2

    .line 426
    iget v0, p0, Landroid/net/wifi/QosPolicyParams;->mUserPriority:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 15

    .line 566
    iget v0, p0, Landroid/net/wifi/QosPolicyParams;->mPolicyId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/net/wifi/QosPolicyParams;->mDscp:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/net/wifi/QosPolicyParams;->mUserPriority:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/QosPolicyParams;->mSrcIp:Ljava/net/InetAddress;

    iget-object v5, p0, Landroid/net/wifi/QosPolicyParams;->mDstIp:Ljava/net/InetAddress;

    iget v0, p0, Landroid/net/wifi/QosPolicyParams;->mSrcPort:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v0, p0, Landroid/net/wifi/QosPolicyParams;->mProtocol:I

    .line 567
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v0, p0, Landroid/net/wifi/QosPolicyParams;->mDstPortRange:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v0, p0, Landroid/net/wifi/QosPolicyParams;->mDirection:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v0, p0, Landroid/net/wifi/QosPolicyParams;->mIpVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget v0, p0, Landroid/net/wifi/QosPolicyParams;->mDstPort:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-object v0, p0, Landroid/net/wifi/QosPolicyParams;->mFlowLabel:[B

    .line 568
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget-object v13, p0, Landroid/net/wifi/QosPolicyParams;->mQosCharacteristics:Landroid/net/wifi/QosCharacteristics;

    filled-new-array/range {v1 .. v13}, [Ljava/lang/Object;

    move-result-object v0

    .line 566
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist setTranslatedPolicyId(I)V
    .registers 2
    .param p1, "translatedPolicyId"    # I

    .line 382
    iput p1, p0, Landroid/net/wifi/QosPolicyParams;->mTranslatedPolicyId:I

    .line 383
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{policyId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/QosPolicyParams;->mPolicyId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dscp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/QosPolicyParams;->mDscp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userPriority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/QosPolicyParams;->mUserPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", srcIp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/QosPolicyParams;->mSrcIp:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dstIp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/QosPolicyParams;->mDstIp:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", srcPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/QosPolicyParams;->mSrcPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/QosPolicyParams;->mProtocol:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dstPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/QosPolicyParams;->mDstPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dstPortRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/QosPolicyParams;->mDstPortRange:[I

    .line 581
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", direction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/QosPolicyParams;->mDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ipVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/QosPolicyParams;->mIpVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flowLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/QosPolicyParams;->mFlowLabel:[B

    .line 584
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", qosCharacteristics="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/QosPolicyParams;->mQosCharacteristics:Landroid/net/wifi/QosCharacteristics;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 573
    return-object v0
.end method

.method public blacklist validate()Z
    .registers 10

    .line 269
    iget v0, p0, Landroid/net/wifi/QosPolicyParams;->mPolicyId:I

    const-string v1, "QosPolicyParams"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v3, :cond_24b

    iget v0, p0, Landroid/net/wifi/QosPolicyParams;->mPolicyId:I

    const/16 v4, 0xff

    if-le v0, v4, :cond_10

    goto/16 :goto_24b

    .line 273
    :cond_10
    iget v0, p0, Landroid/net/wifi/QosPolicyParams;->mDscp:I

    const/4 v4, -0x1

    if-lt v0, v4, :cond_232

    iget v0, p0, Landroid/net/wifi/QosPolicyParams;->mDscp:I

    const/16 v5, 0x3f

    if-le v0, v5, :cond_1d

    goto/16 :goto_232

    .line 277
    :cond_1d
    iget v0, p0, Landroid/net/wifi/QosPolicyParams;->mUserPriority:I

    if-lt v0, v4, :cond_219

    iget v0, p0, Landroid/net/wifi/QosPolicyParams;->mUserPriority:I

    const/4 v5, 0x7

    if-le v0, v5, :cond_28

    goto/16 :goto_219

    .line 281
    :cond_28
    iget v0, p0, Landroid/net/wifi/QosPolicyParams;->mSrcPort:I

    if-lt v0, v4, :cond_200

    iget v0, p0, Landroid/net/wifi/QosPolicyParams;->mSrcPort:I

    const v5, 0xffff

    if-le v0, v5, :cond_35

    goto/16 :goto_200

    .line 285
    :cond_35
    iget v0, p0, Landroid/net/wifi/QosPolicyParams;->mDstPort:I

    if-lt v0, v4, :cond_1e7

    iget v0, p0, Landroid/net/wifi/QosPolicyParams;->mDstPort:I

    if-le v0, v5, :cond_3f

    goto/16 :goto_1e7

    .line 289
    :cond_3f
    iget-object v0, p0, Landroid/net/wifi/QosPolicyParams;->mDstPortRange:[I

    if-eqz v0, :cond_84

    iget-object v0, p0, Landroid/net/wifi/QosPolicyParams;->mDstPortRange:[I

    aget v0, v0, v2

    if-ltz v0, :cond_5b

    iget-object v0, p0, Landroid/net/wifi/QosPolicyParams;->mDstPortRange:[I

    aget v0, v0, v2

    if-gt v0, v5, :cond_5b

    iget-object v0, p0, Landroid/net/wifi/QosPolicyParams;->mDstPortRange:[I

    aget v0, v0, v3

    if-ltz v0, :cond_5b

    iget-object v0, p0, Landroid/net/wifi/QosPolicyParams;->mDstPortRange:[I

    aget v0, v0, v3

    if-le v0, v5, :cond_84

    .line 291
    :cond_5b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dst port range value not valid. start="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Landroid/net/wifi/QosPolicyParams;->mDstPortRange:[I

    aget v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", end="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Landroid/net/wifi/QosPolicyParams;->mDstPortRange:[I

    aget v3, v4, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    return v2

    .line 295
    :cond_84
    iget v0, p0, Landroid/net/wifi/QosPolicyParams;->mDirection:I

    if-eqz v0, :cond_a5

    iget v0, p0, Landroid/net/wifi/QosPolicyParams;->mDirection:I

    if-eq v0, v3, :cond_a5

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid direction enum: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Landroid/net/wifi/QosPolicyParams;->mDirection:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    return v2

    .line 299
    :cond_a5
    iget v0, p0, Landroid/net/wifi/QosPolicyParams;->mIpVersion:I

    const/4 v5, 0x4

    const/4 v6, 0x6

    if-eq v0, v4, :cond_cc

    iget v0, p0, Landroid/net/wifi/QosPolicyParams;->mIpVersion:I

    if-eq v0, v5, :cond_cc

    iget v0, p0, Landroid/net/wifi/QosPolicyParams;->mIpVersion:I

    if-eq v0, v6, :cond_cc

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid ipVersion enum: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Landroid/net/wifi/QosPolicyParams;->mIpVersion:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    return v2

    .line 304
    :cond_cc
    iget v0, p0, Landroid/net/wifi/QosPolicyParams;->mIpVersion:I

    const-string v7, "Dst address does not match IP version "

    const-string v8, "Src address does not match IP version "

    if-ne v0, v5, :cond_116

    .line 305
    iget-object v0, p0, Landroid/net/wifi/QosPolicyParams;->mSrcIp:Ljava/net/InetAddress;

    if-eqz v0, :cond_f5

    iget-object v0, p0, Landroid/net/wifi/QosPolicyParams;->mSrcIp:Ljava/net/InetAddress;

    instance-of v0, v0, Ljava/net/Inet4Address;

    if-nez v0, :cond_f5

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Landroid/net/wifi/QosPolicyParams;->mIpVersion:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    return v2

    .line 309
    :cond_f5
    iget-object v0, p0, Landroid/net/wifi/QosPolicyParams;->mDstIp:Ljava/net/InetAddress;

    if-eqz v0, :cond_116

    iget-object v0, p0, Landroid/net/wifi/QosPolicyParams;->mDstIp:Ljava/net/InetAddress;

    instance-of v0, v0, Ljava/net/Inet4Address;

    if-nez v0, :cond_116

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Landroid/net/wifi/QosPolicyParams;->mIpVersion:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    return v2

    .line 314
    :cond_116
    iget v0, p0, Landroid/net/wifi/QosPolicyParams;->mIpVersion:I

    if-ne v0, v6, :cond_15c

    .line 315
    iget-object v0, p0, Landroid/net/wifi/QosPolicyParams;->mSrcIp:Ljava/net/InetAddress;

    if-eqz v0, :cond_13b

    iget-object v0, p0, Landroid/net/wifi/QosPolicyParams;->mSrcIp:Ljava/net/InetAddress;

    instance-of v0, v0, Ljava/net/Inet6Address;

    if-nez v0, :cond_13b

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Landroid/net/wifi/QosPolicyParams;->mIpVersion:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    return v2

    .line 319
    :cond_13b
    iget-object v0, p0, Landroid/net/wifi/QosPolicyParams;->mDstIp:Ljava/net/InetAddress;

    if-eqz v0, :cond_15c

    iget-object v0, p0, Landroid/net/wifi/QosPolicyParams;->mDstIp:Ljava/net/InetAddress;

    instance-of v0, v0, Ljava/net/Inet6Address;

    if-nez v0, :cond_15c

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Landroid/net/wifi/QosPolicyParams;->mIpVersion:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    return v2

    .line 324
    :cond_15c
    iget-object v0, p0, Landroid/net/wifi/QosPolicyParams;->mQosCharacteristics:Landroid/net/wifi/QosCharacteristics;

    if-eqz v0, :cond_16e

    iget-object v0, p0, Landroid/net/wifi/QosPolicyParams;->mQosCharacteristics:Landroid/net/wifi/QosCharacteristics;

    invoke-virtual {v0}, Landroid/net/wifi/QosCharacteristics;->validate()Z

    move-result v0

    if-nez v0, :cond_16e

    .line 325
    const-string v0, "Invalid QoS characteristics provided"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    return v2

    .line 330
    :cond_16e
    iget v0, p0, Landroid/net/wifi/QosPolicyParams;->mDirection:I

    if-nez v0, :cond_19a

    .line 331
    iget-object v0, p0, Landroid/net/wifi/QosPolicyParams;->mQosCharacteristics:Landroid/net/wifi/QosCharacteristics;

    if-nez v0, :cond_17c

    .line 332
    const-string v0, "QoS characteristics must be provided for uplink requests"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    return v2

    .line 335
    :cond_17c
    iget v0, p0, Landroid/net/wifi/QosPolicyParams;->mIpVersion:I

    if-eq v0, v4, :cond_186

    .line 336
    const-string v0, "IP Version should not be set for uplink requests"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    return v2

    .line 339
    :cond_186
    iget v0, p0, Landroid/net/wifi/QosPolicyParams;->mDstPort:I

    if-eq v0, v4, :cond_190

    .line 340
    const-string v0, "Single destination port should not be set for uplink requests"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    return v2

    .line 343
    :cond_190
    iget-object v0, p0, Landroid/net/wifi/QosPolicyParams;->mFlowLabel:[B

    if-eqz v0, :cond_1e6

    .line 344
    const-string v0, "Flow label should not be set for uplink requests"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    return v2

    .line 348
    :cond_19a
    iget v0, p0, Landroid/net/wifi/QosPolicyParams;->mUserPriority:I

    if-ne v0, v4, :cond_1a4

    .line 349
    const-string v0, "User priority must be provided for downlink requests"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    return v2

    .line 352
    :cond_1a4
    iget v0, p0, Landroid/net/wifi/QosPolicyParams;->mIpVersion:I

    if-ne v0, v4, :cond_1ae

    .line 353
    const-string v0, "IP version must be provided for downlink requests"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    return v2

    .line 356
    :cond_1ae
    iget-object v0, p0, Landroid/net/wifi/QosPolicyParams;->mDstPortRange:[I

    if-eqz v0, :cond_1b8

    .line 357
    const-string v0, "Destination port range should not be set for downlink requests"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    return v2

    .line 360
    :cond_1b8
    iget-object v0, p0, Landroid/net/wifi/QosPolicyParams;->mFlowLabel:[B

    if-eqz v0, :cond_1e6

    .line 361
    iget v0, p0, Landroid/net/wifi/QosPolicyParams;->mIpVersion:I

    if-eq v0, v6, :cond_1c6

    .line 362
    const-string v0, "Flow label can only be used with IP version 6"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    return v2

    .line 365
    :cond_1c6
    iget-object v0, p0, Landroid/net/wifi/QosPolicyParams;->mFlowLabel:[B

    array-length v0, v0

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1e6

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Flow label must be of size 3, provided size is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/net/wifi/QosPolicyParams;->mFlowLabel:[B

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    return v2

    .line 372
    :cond_1e6
    return v3

    .line 286
    :cond_1e7
    :goto_1e7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Destination port not in valid range: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Landroid/net/wifi/QosPolicyParams;->mDstPort:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    return v2

    .line 282
    :cond_200
    :goto_200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Source port not in valid range: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Landroid/net/wifi/QosPolicyParams;->mSrcPort:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return v2

    .line 278
    :cond_219
    :goto_219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User priority not in valid range: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Landroid/net/wifi/QosPolicyParams;->mUserPriority:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    return v2

    .line 274
    :cond_232
    :goto_232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DSCP value not in valid range: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Landroid/net/wifi/QosPolicyParams;->mDscp:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return v2

    .line 270
    :cond_24b
    :goto_24b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Policy ID not in valid range: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Landroid/net/wifi/QosPolicyParams;->mPolicyId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    return v2
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 606
    iget v0, p0, Landroid/net/wifi/QosPolicyParams;->mPolicyId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 607
    iget v0, p0, Landroid/net/wifi/QosPolicyParams;->mDscp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 608
    iget v0, p0, Landroid/net/wifi/QosPolicyParams;->mUserPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 609
    iget-object v0, p0, Landroid/net/wifi/QosPolicyParams;->mSrcIp:Ljava/net/InetAddress;

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/net/wifi/QosPolicyParams;->mSrcIp:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    goto :goto_1c

    :cond_1b
    move-object v0, v1

    :goto_1c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 610
    iget-object v0, p0, Landroid/net/wifi/QosPolicyParams;->mDstIp:Ljava/net/InetAddress;

    if-eqz v0, :cond_29

    iget-object v0, p0, Landroid/net/wifi/QosPolicyParams;->mDstIp:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    :cond_29
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 611
    iget v0, p0, Landroid/net/wifi/QosPolicyParams;->mSrcPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 612
    iget v0, p0, Landroid/net/wifi/QosPolicyParams;->mProtocol:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 613
    iget v0, p0, Landroid/net/wifi/QosPolicyParams;->mDstPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 614
    iget-object v0, p0, Landroid/net/wifi/QosPolicyParams;->mDstPortRange:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 615
    iget v0, p0, Landroid/net/wifi/QosPolicyParams;->mDirection:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 616
    iget v0, p0, Landroid/net/wifi/QosPolicyParams;->mIpVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 617
    iget-object v0, p0, Landroid/net/wifi/QosPolicyParams;->mFlowLabel:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 618
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 619
    iget-object v0, p0, Landroid/net/wifi/QosPolicyParams;->mQosCharacteristics:Landroid/net/wifi/QosCharacteristics;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 621
    :cond_5b
    return-void
.end method
