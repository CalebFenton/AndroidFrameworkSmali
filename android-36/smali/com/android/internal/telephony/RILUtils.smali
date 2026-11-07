.class public Lcom/android/internal/telephony/RILUtils;
.super Ljava/lang/Object;
.source "RILUtils.java"


# static fields
.field public static final blacklist CDMA_BROADCAST_SMS_NO_OF_SERVICE_CATEGORIES:I = 0x1f

.field public static final blacklist CDMA_BSI_NO_OF_INTS_STRUCT:I = 0x3

.field public static final blacklist RADIO_POWER_FAILURE_BUGREPORT_UUID:Ljava/lang/String; = "316f3801-fa21-4954-a42f-0041eada3b31"

.field public static final blacklist RADIO_POWER_FAILURE_NO_RF_CALIBRATION_UUID:Ljava/lang/String; = "316f3801-fa21-4954-a42f-0041eada3b33"

.field public static final blacklist RADIO_POWER_FAILURE_RF_HARDWARE_ISSUE_UUID:Ljava/lang/String; = "316f3801-fa21-4954-a42f-0041eada3b32"

.field private static final blacklist WRAPPER_CLASSES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$EiZv5dUB6WBuB3zEzhy1t9df3TM(I)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->accessNetworkTypeToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$GUTKvErD4I1WFow2UTwnumSYxNg(Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;)Landroid/telephony/data/RouteSelectionDescriptor;
    .registers 7

    .line 3628
    new-instance v0, Landroid/telephony/data/RouteSelectionDescriptor;

    iget-byte v1, p0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->precedence:B

    iget-object v2, p0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->sessionType:Landroid/hardware/radio/V1_6/OptionalPdpProtocolType;

    .line 3629
    invoke-virtual {v2}, Landroid/hardware/radio/V1_6/OptionalPdpProtocolType;->value()I

    move-result v2

    iget-object v3, p0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->sscMode:Landroid/hardware/radio/V1_6/OptionalSscMode;

    invoke-virtual {v3}, Landroid/hardware/radio/V1_6/OptionalSscMode;->value()B

    move-result v3

    iget-object v4, p0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->sliceInfo:Ljava/util/ArrayList;

    .line 3630
    invoke-virtual {v4}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda6;

    invoke-direct {v5}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    .line 3631
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    iget-object v5, p0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->dnn:Ljava/util/ArrayList;

    invoke-direct/range {v0 .. v5}, Landroid/telephony/data/RouteSelectionDescriptor;-><init>(IIILjava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public static synthetic blacklist $r8$lambda$MT-2XX3MvGTYa2Jdb1l8oNH5h0k(Landroid/hardware/radio/V1_6/UrspRule;)Landroid/telephony/data/UrspRule;
    .registers 5

    .line 3614
    new-instance v0, Landroid/telephony/data/UrspRule;

    iget-byte v1, p0, Landroid/hardware/radio/V1_6/UrspRule;->precedence:B

    iget-object v2, p0, Landroid/hardware/radio/V1_6/UrspRule;->trafficDescriptors:Ljava/util/ArrayList;

    .line 3615
    invoke-virtual {v2}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda7;

    invoke-direct {v3}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda7;-><init>()V

    .line 3616
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda8;

    invoke-direct {v3}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda8;-><init>()V

    .line 3625
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 3626
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iget-object p0, p0, Landroid/hardware/radio/V1_6/UrspRule;->routeSelectionDescriptor:Ljava/util/ArrayList;

    .line 3627
    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v3, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda9;

    invoke-direct {v3}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda9;-><init>()V

    invoke-interface {p0, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 3632
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-direct {v0, v1, v2, p0}, Landroid/telephony/data/UrspRule;-><init>(ILjava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public static synthetic blacklist $r8$lambda$P096LQC0s39VamjJFG9j66WXKWc(Landroid/hardware/radio/V1_6/TrafficDescriptor;)Landroid/telephony/data/TrafficDescriptor;
    .registers 3

    .line 3618
    :try_start_0
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalTrafficDescriptor(Landroid/hardware/radio/V1_6/TrafficDescriptor;)Landroid/telephony/data/TrafficDescriptor;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 3620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "convertHalSlicingConfig: Failed to convert traffic descriptor. e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$kvVOXGcw27TVyHyV3iGor3sDPls(Landroid/hardware/radio/V1_5/LinkAddress;)Landroid/net/LinkAddress;
    .registers 7

    .line 3340
    iget-object v0, p0, Landroid/hardware/radio/V1_5/LinkAddress;->address:Ljava/lang/String;

    iget v1, p0, Landroid/hardware/radio/V1_5/LinkAddress;->properties:I

    iget-wide v2, p0, Landroid/hardware/radio/V1_5/LinkAddress;->deprecationTime:J

    iget-wide v4, p0, Landroid/hardware/radio/V1_5/LinkAddress;->expirationTime:J

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/RILUtils;->convertToLinkAddress(Ljava/lang/String;IJJ)Landroid/net/LinkAddress;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$oPd9vSCr2k4yfqTS0cvlBeeKtZ8(Landroid/hardware/radio/V1_6/QosSession;)Landroid/telephony/data/QosBearerSession;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalQosBearerSession(Landroid/hardware/radio/V1_6/QosSession;)Landroid/telephony/data/QosBearerSession;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$qxlg4AB1nuab5AHG8WOkH-kPL8Y(Landroid/hardware/radio/V1_5/LinkAddress;)Landroid/net/LinkAddress;
    .registers 7

    .line 3322
    iget-object v0, p0, Landroid/hardware/radio/V1_5/LinkAddress;->address:Ljava/lang/String;

    iget v1, p0, Landroid/hardware/radio/V1_5/LinkAddress;->properties:I

    iget-wide v2, p0, Landroid/hardware/radio/V1_5/LinkAddress;->deprecationTime:J

    iget-wide v4, p0, Landroid/hardware/radio/V1_5/LinkAddress;->expirationTime:J

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/RILUtils;->convertToLinkAddress(Ljava/lang/String;IJJ)Landroid/net/LinkAddress;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$rAoIMhzEu9pXh4S_BumdDRhSnaE(Landroid/hardware/radio/V1_6/SliceInfo;)Landroid/telephony/data/NetworkSliceInfo;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalSliceInfo(Landroid/hardware/radio/V1_6/SliceInfo;)Landroid/telephony/data/NetworkSliceInfo;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 443
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Boolean;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/lang/Character;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Ljava/lang/Byte;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Ljava/lang/Short;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Ljava/lang/Integer;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, Ljava/lang/Long;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-class v3, Ljava/lang/Float;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-class v3, Ljava/lang/Double;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/internal/telephony/RILUtils;->WRAPPER_CLASSES:Ljava/util/Set;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist accessNetworkTypeToString(I)Ljava/lang/String;
    .registers 1

    packed-switch p0, :pswitch_data_1e

    .line 4711
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4710
    :pswitch_8
    const-string p0, "NGRAN"

    return-object p0

    .line 4709
    :pswitch_b
    const-string p0, "IWLAN"

    return-object p0

    .line 4708
    :pswitch_e
    const-string p0, "CDMA2000"

    return-object p0

    .line 4707
    :pswitch_11
    const-string p0, "EUTRAN"

    return-object p0

    .line 4706
    :pswitch_14
    const-string p0, "UTRAN"

    return-object p0

    .line 4705
    :pswitch_17
    const-string p0, "GERAN"

    return-object p0

    .line 4704
    :pswitch_1a
    const-string p0, "UNKNOWN"

    return-object p0

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public static blacklist accessNetworkTypesToString([I)Ljava/lang/String;
    .registers 4

    .line 4690
    array-length v0, p0

    .line 4691
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-lez v0, :cond_26

    .line 4693
    invoke-static {p0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda4;-><init>()V

    .line 4694
    invoke-interface {p0, v0}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object p0

    const-string v0, ","

    .line 4695
    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 4693
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4697
    :cond_26
    const-string p0, "}"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4698
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist appendPrimitiveArrayToArrayList([BLjava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 4822
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_10

    aget-byte v2, p0, v1

    .line 4823
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_10
    return-void
.end method

.method public static blacklist arrayListToPrimitiveArray(Ljava/util/ArrayList;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    .line 4852
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_18

    .line 4854
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_18
    return-object v1
.end method

.method public static blacklist convertAidlCarrierInfoList([Landroid/hardware/radio/sim/CarrierInfo;)Ljava/util/List;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/hardware/radio/sim/CarrierInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/CarrierInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 4127
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_f

    .line 4129
    const-string v0, "convertAidlCarrierInfoList received NULL carrierInfos"

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->loge(Ljava/lang/String;)V

    return-object v1

    :cond_f
    const/4 v3, 0x0

    .line 4132
    :goto_10
    array-length v4, v0

    if-ge v3, v4, :cond_75

    .line 4133
    aget-object v4, v0, v3

    iget-object v6, v4, Landroid/hardware/radio/sim/CarrierInfo;->mcc:Ljava/lang/String;

    .line 4134
    iget-object v7, v4, Landroid/hardware/radio/sim/CarrierInfo;->mnc:Ljava/lang/String;

    .line 4135
    iget-object v8, v4, Landroid/hardware/radio/sim/CarrierInfo;->spn:Ljava/lang/String;

    .line 4136
    iget-object v9, v4, Landroid/hardware/radio/sim/CarrierInfo;->gid1:Ljava/lang/String;

    .line 4137
    iget-object v10, v4, Landroid/hardware/radio/sim/CarrierInfo;->gid2:Ljava/lang/String;

    .line 4138
    iget-object v11, v4, Landroid/hardware/radio/sim/CarrierInfo;->imsiPrefix:Ljava/lang/String;

    .line 4139
    iget-object v12, v4, Landroid/hardware/radio/sim/CarrierInfo;->iccid:Ljava/lang/String;

    .line 4140
    iget-object v13, v4, Landroid/hardware/radio/sim/CarrierInfo;->impi:Ljava/lang/String;

    .line 4141
    iget-object v4, v4, Landroid/hardware/radio/sim/CarrierInfo;->ehplmn:Ljava/util/List;

    .line 4142
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    if-eqz v4, :cond_63

    const/4 v5, 0x0

    .line 4144
    :goto_2f
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v15

    if-ge v5, v15, :cond_68

    .line 4145
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/hardware/radio/sim/Plmn;

    iget-object v15, v15, Landroid/hardware/radio/sim/Plmn;->mcc:Ljava/lang/String;

    .line 4146
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Landroid/hardware/radio/sim/Plmn;

    iget-object v2, v2, Landroid/hardware/radio/sim/Plmn;->mnc:Ljava/lang/String;

    .line 4147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ","

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    goto :goto_2f

    .line 4150
    :cond_63
    const-string v0, "convertAidlCarrierInfoList ehplmList is NULL"

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->loge(Ljava/lang/String;)V

    .line 4152
    :cond_68
    new-instance v5, Landroid/telephony/CarrierInfo;

    invoke-direct/range {v5 .. v14}, Landroid/telephony/CarrierInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 4154
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    goto :goto_10

    :cond_75
    return-object v1
.end method

.method public static blacklist convertAidlCarrierInfoListToHalCarrierList([Landroid/hardware/radio/sim/CarrierInfo;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/hardware/radio/sim/CarrierInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;"
        }
    .end annotation

    .line 4171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_8

    goto :goto_25

    .line 4175
    :cond_8
    array-length v1, p0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_25

    aget-object v3, p0, v2

    .line 4176
    iget-object v5, v3, Landroid/hardware/radio/sim/CarrierInfo;->mcc:Ljava/lang/String;

    .line 4177
    iget-object v6, v3, Landroid/hardware/radio/sim/CarrierInfo;->mnc:Ljava/lang/String;

    .line 4178
    iget-object v7, v3, Landroid/hardware/radio/sim/CarrierInfo;->spn:Ljava/lang/String;

    .line 4179
    iget-object v8, v3, Landroid/hardware/radio/sim/CarrierInfo;->imsiPrefix:Ljava/lang/String;

    .line 4180
    iget-object v9, v3, Landroid/hardware/radio/sim/CarrierInfo;->gid1:Ljava/lang/String;

    .line 4181
    iget-object v10, v3, Landroid/hardware/radio/sim/CarrierInfo;->gid2:Ljava/lang/String;

    .line 4182
    new-instance v4, Landroid/service/carrier/CarrierIdentifier;

    invoke-direct/range {v4 .. v10}, Landroid/service/carrier/CarrierIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_25
    :goto_25
    return-object v0
.end method

.method public static blacklist convertAidlSimLockMultiSimPolicy(I)I
    .registers 1

    .line 0
    packed-switch p0, :pswitch_data_16

    const/4 p0, 0x0

    return p0

    :pswitch_5
    const/16 p0, 0x8

    return p0

    :pswitch_8
    const/4 p0, 0x7

    return p0

    :pswitch_a
    const/4 p0, 0x6

    return p0

    :pswitch_c
    const/4 p0, 0x5

    return p0

    :pswitch_e
    const/4 p0, 0x4

    return p0

    :pswitch_10
    const/4 p0, 0x3

    return p0

    :pswitch_12
    const/4 p0, 0x2

    return p0

    :pswitch_14
    const/4 p0, 0x1

    return p0

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_14
        :pswitch_12
        :pswitch_10
        :pswitch_e
        :pswitch_c
        :pswitch_a
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static blacklist convertAidlSimTypeInfo([Landroid/hardware/radio/config/SimTypeInfo;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/hardware/radio/config/SimTypeInfo;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/uicc/SimTypeInfo;",
            ">;"
        }
    .end annotation

    .line 5909
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_d

    .line 5911
    const-string p0, "convertAidlSimTypeInfo received NULL simTypeInfos"

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->loge(Ljava/lang/String;)V

    return-object v0

    .line 5914
    :cond_d
    array-length v1, p0

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_27

    aget-object v3, p0, v2

    .line 5915
    new-instance v4, Lcom/android/internal/telephony/uicc/SimTypeInfo;

    invoke-direct {v4}, Lcom/android/internal/telephony/uicc/SimTypeInfo;-><init>()V

    .line 5916
    iget v5, v3, Landroid/hardware/radio/config/SimTypeInfo;->supportedSimTypes:I

    iput v5, v4, Lcom/android/internal/telephony/uicc/SimTypeInfo;->mSupportedSimTypes:I

    .line 5917
    iget v3, v3, Landroid/hardware/radio/config/SimTypeInfo;->currentSimType:I

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/uicc/SimTypeInfo;->setCurrentSimType(I)V

    .line 5918
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_27
    return-object v0
.end method

.method public static blacklist convertCallState(Lcom/android/internal/telephony/Call$State;)I
    .registers 4

    .line 5685
    sget-object v0, Lcom/android/internal/telephony/RILUtils$1;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2e

    .line 5693
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_22
    const/4 p0, 0x5

    return p0

    :pswitch_24
    const/4 p0, 0x4

    return p0

    :pswitch_26
    const/4 p0, 0x3

    return p0

    :pswitch_28
    const/4 p0, 0x2

    return p0

    :pswitch_2a
    const/4 p0, 0x1

    return p0

    :pswitch_2c
    const/4 p0, 0x0

    return p0

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_2a
        :pswitch_28
        :pswitch_26
        :pswitch_24
        :pswitch_22
    .end packed-switch
.end method

.method public static blacklist convertCellularIdentifierDisclosure(Landroid/hardware/radio/network/CellularIdentifierDisclosure;)Landroid/telephony/CellularIdentifierDisclosure;
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 5885
    :cond_4
    new-instance v0, Landroid/telephony/CellularIdentifierDisclosure;

    iget v1, p0, Landroid/hardware/radio/network/CellularIdentifierDisclosure;->protocolMessage:I

    iget v2, p0, Landroid/hardware/radio/network/CellularIdentifierDisclosure;->identifier:I

    iget-object v3, p0, Landroid/hardware/radio/network/CellularIdentifierDisclosure;->plmn:Ljava/lang/String;

    iget-boolean p0, p0, Landroid/hardware/radio/network/CellularIdentifierDisclosure;->isEmergency:Z

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/telephony/CellularIdentifierDisclosure;-><init>(IILjava/lang/String;Z)V

    return-object v0
.end method

.method public static blacklist convertEmergencyNetworkScanTrigger([II)Landroid/hardware/radio/network/EmergencyNetworkScanTrigger;
    .registers 5

    .line 4615
    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 4616
    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_12

    .line 4617
    aget v2, p0, v1

    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->convertToHalAccessNetworkAidl(I)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 4620
    :cond_12
    new-instance p0, Landroid/hardware/radio/network/EmergencyNetworkScanTrigger;

    invoke-direct {p0}, Landroid/hardware/radio/network/EmergencyNetworkScanTrigger;-><init>()V

    .line 4623
    iput-object v0, p0, Landroid/hardware/radio/network/EmergencyNetworkScanTrigger;->accessNetwork:[I

    .line 4624
    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->convertEmergencyScanType(I)I

    move-result p1

    iput p1, p0, Landroid/hardware/radio/network/EmergencyNetworkScanTrigger;->scanType:I

    return-object p0
.end method

.method public static blacklist convertEmergencyScanType(I)I
    .registers 2

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_8

    const/4 v0, 0x2

    if-eq p0, v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    return v0
.end method

.method public static blacklist convertHalBarringInfoList(Ljava/util/List;)Landroid/util/SparseArray;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/radio/V1_5/BarringInfo;",
            ">;)",
            "Landroid/util/SparseArray<",
            "Landroid/telephony/BarringInfo$BarringServiceInfo;",
            ">;"
        }
    .end annotation

    .line 3173
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 3174
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/V1_5/BarringInfo;

    .line 3175
    iget v2, v1, Landroid/hardware/radio/V1_5/BarringInfo;->barringType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3c

    .line 3177
    iget-object v2, v1, Landroid/hardware/radio/V1_5/BarringInfo;->barringTypeSpecificInfo:Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;

    invoke-virtual {v2}, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;->getDiscriminator()B

    move-result v2

    if-eq v2, v3, :cond_23

    goto :goto_9

    .line 3185
    :cond_23
    iget-object v2, v1, Landroid/hardware/radio/V1_5/BarringInfo;->barringTypeSpecificInfo:Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;

    .line 3186
    invoke-virtual {v2}, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;->conditional()Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;

    move-result-object v2

    .line 3187
    iget v3, v1, Landroid/hardware/radio/V1_5/BarringInfo;->serviceType:I

    new-instance v4, Landroid/telephony/BarringInfo$BarringServiceInfo;

    iget v1, v1, Landroid/hardware/radio/V1_5/BarringInfo;->barringType:I

    iget-boolean v5, v2, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;->isBarred:Z

    iget v6, v2, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;->factor:I

    iget v2, v2, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;->timeSeconds:I

    invoke-direct {v4, v1, v5, v6, v2}, Landroid/telephony/BarringInfo$BarringServiceInfo;-><init>(IZII)V

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_9

    .line 3195
    :cond_3c
    iget v2, v1, Landroid/hardware/radio/V1_5/BarringInfo;->serviceType:I

    new-instance v3, Landroid/telephony/BarringInfo$BarringServiceInfo;

    iget v1, v1, Landroid/hardware/radio/V1_5/BarringInfo;->barringType:I

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4, v4, v4}, Landroid/telephony/BarringInfo$BarringServiceInfo;-><init>(IZII)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_9

    :cond_4a
    return-object v0
.end method

.method public static blacklist convertHalBarringInfoList([Landroid/hardware/radio/network/BarringInfo;)Landroid/util/SparseArray;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/hardware/radio/network/BarringInfo;",
            ")",
            "Landroid/util/SparseArray<",
            "Landroid/telephony/BarringInfo$BarringServiceInfo;",
            ">;"
        }
    .end annotation

    .line 3211
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 3212
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v1, :cond_3a

    aget-object v4, p0, v3

    .line 3213
    iget v5, v4, Landroid/hardware/radio/network/BarringInfo;->barringType:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2b

    .line 3215
    iget-object v5, v4, Landroid/hardware/radio/network/BarringInfo;->barringTypeSpecificInfo:Landroid/hardware/radio/network/BarringTypeSpecificInfo;

    if-nez v5, :cond_16

    goto :goto_37

    .line 3220
    :cond_16
    iget v5, v4, Landroid/hardware/radio/network/BarringInfo;->serviceType:I

    new-instance v6, Landroid/telephony/BarringInfo$BarringServiceInfo;

    iget v7, v4, Landroid/hardware/radio/network/BarringInfo;->barringType:I

    iget-object v4, v4, Landroid/hardware/radio/network/BarringInfo;->barringTypeSpecificInfo:Landroid/hardware/radio/network/BarringTypeSpecificInfo;

    iget-boolean v8, v4, Landroid/hardware/radio/network/BarringTypeSpecificInfo;->isBarred:Z

    iget v9, v4, Landroid/hardware/radio/network/BarringTypeSpecificInfo;->factor:I

    iget v4, v4, Landroid/hardware/radio/network/BarringTypeSpecificInfo;->timeSeconds:I

    invoke-direct {v6, v7, v8, v9, v4}, Landroid/telephony/BarringInfo$BarringServiceInfo;-><init>(IZII)V

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_37

    .line 3228
    :cond_2b
    iget v5, v4, Landroid/hardware/radio/network/BarringInfo;->serviceType:I

    new-instance v6, Landroid/telephony/BarringInfo$BarringServiceInfo;

    iget v4, v4, Landroid/hardware/radio/network/BarringInfo;->barringType:I

    invoke-direct {v6, v4, v2, v2, v2}, Landroid/telephony/BarringInfo$BarringServiceInfo;-><init>(IZII)V

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_3a
    return-object v0
.end method

.method public static blacklist convertHalCardStatus(Landroid/hardware/radio/sim/CardStatus;)Lcom/android/internal/telephony/uicc/IccCardStatus;
    .registers 7

    .line 4313
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardStatus;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/IccCardStatus;-><init>()V

    .line 4314
    iget v1, p0, Landroid/hardware/radio/sim/CardStatus;->cardState:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setCardState(I)V

    .line 4315
    iget v1, p0, Landroid/hardware/radio/sim/CardStatus;->supportedMepMode:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setMultipleEnabledProfilesMode(I)V

    .line 4316
    iget v1, p0, Landroid/hardware/radio/sim/CardStatus;->universalPinState:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setUniversalPinState(I)V

    .line 4317
    iget v1, p0, Landroid/hardware/radio/sim/CardStatus;->gsmUmtsSubscriptionAppIndex:I

    iput v1, v0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    const/4 v1, -0x1

    .line 4319
    iput v1, v0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    .line 4320
    iget v1, p0, Landroid/hardware/radio/sim/CardStatus;->imsSubscriptionAppIndex:I

    iput v1, v0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mImsSubscriptionAppIndex:I

    .line 4321
    iget-object v1, p0, Landroid/hardware/radio/sim/CardStatus;->atr:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/telephony/uicc/IccCardStatus;->atr:Ljava/lang/String;

    .line 4322
    iget-object v1, p0, Landroid/hardware/radio/sim/CardStatus;->iccid:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/telephony/uicc/IccCardStatus;->iccid:Ljava/lang/String;

    .line 4323
    iget-object v1, p0, Landroid/hardware/radio/sim/CardStatus;->eid:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/telephony/uicc/IccCardStatus;->eid:Ljava/lang/String;

    .line 4325
    iget-object v1, p0, Landroid/hardware/radio/sim/CardStatus;->applications:[Landroid/hardware/radio/sim/AppStatus;

    array-length v1, v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 4327
    new-array v2, v1, [Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    const/4 v2, 0x0

    :goto_39
    if-ge v2, v1, :cond_7f

    .line 4329
    iget-object v3, p0, Landroid/hardware/radio/sim/CardStatus;->applications:[Landroid/hardware/radio/sim/AppStatus;

    aget-object v3, v3, v2

    .line 4330
    new-instance v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    invoke-direct {v4}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;-><init>()V

    .line 4331
    iget v5, v3, Landroid/hardware/radio/sim/AppStatus;->appType:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppTypeFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 4332
    iget v5, v3, Landroid/hardware/radio/sim/AppStatus;->appState:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 4333
    iget v5, v3, Landroid/hardware/radio/sim/AppStatus;->persoSubstate:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PersoSubstateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 4335
    iget-object v5, v3, Landroid/hardware/radio/sim/AppStatus;->aidPtr:Ljava/lang/String;

    iput-object v5, v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    .line 4336
    iget-object v5, v3, Landroid/hardware/radio/sim/AppStatus;->appLabelPtr:Ljava/lang/String;

    iput-object v5, v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    .line 4337
    iget-boolean v5, v3, Landroid/hardware/radio/sim/AppStatus;->pin1Replaced:Z

    iput-boolean v5, v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:Z

    .line 4338
    iget v5, v3, Landroid/hardware/radio/sim/AppStatus;->pin1:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 4339
    iget v3, v3, Landroid/hardware/radio/sim/AppStatus;->pin2:I

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v3

    iput-object v3, v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 4340
    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    .line 4342
    :cond_7f
    new-instance v1, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    invoke-direct {v1}, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;-><init>()V

    .line 4343
    iget-object p0, p0, Landroid/hardware/radio/sim/CardStatus;->slotMap:Landroid/hardware/radio/config/SlotPortMapping;

    iget v2, p0, Landroid/hardware/radio/config/SlotPortMapping;->physicalSlotId:I

    iput v2, v1, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;->mPhysicalSlotIndex:I

    .line 4344
    iget p0, p0, Landroid/hardware/radio/config/SlotPortMapping;->portId:I

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mSupportedMepMode:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    invoke-static {v2, p0, v3, v4}, Lcom/android/internal/telephony/uicc/PortUtils;->convertFromHalPortIndex(IILcom/android/internal/telephony/uicc/IccCardStatus$CardState;Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;)I

    move-result p0

    iput p0, v1, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;->mPortIndex:I

    .line 4347
    iput-object v1, v0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mSlotPortMapping:Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    return-object v0
.end method

.method public static blacklist convertHalCardStatus(Ljava/lang/Object;)Lcom/android/internal/telephony/uicc/IccCardStatus;
    .registers 11

    .line 4231
    instance-of v0, p0, Landroid/hardware/radio/V1_5/CardStatus;

    if-eqz v0, :cond_d

    .line 4232
    check-cast p0, Landroid/hardware/radio/V1_5/CardStatus;

    .line 4233
    iget-object v0, p0, Landroid/hardware/radio/V1_5/CardStatus;->base:Landroid/hardware/radio/V1_4/CardStatus;

    iget-object v0, v0, Landroid/hardware/radio/V1_4/CardStatus;->base:Landroid/hardware/radio/V1_2/CardStatus;

    iget-object v0, v0, Landroid/hardware/radio/V1_2/CardStatus;->base:Landroid/hardware/radio/V1_0/CardStatus;

    goto :goto_19

    .line 4234
    :cond_d
    instance-of v0, p0, Landroid/hardware/radio/V1_0/CardStatus;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 4236
    move-object v0, p0

    check-cast v0, Landroid/hardware/radio/V1_0/CardStatus;

    move-object p0, v1

    goto :goto_19

    :cond_17
    move-object p0, v1

    move-object v0, p0

    .line 4242
    :goto_19
    new-instance v1, Lcom/android/internal/telephony/uicc/IccCardStatus;

    invoke-direct {v1}, Lcom/android/internal/telephony/uicc/IccCardStatus;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v0, :cond_96

    .line 4244
    iget v5, v0, Landroid/hardware/radio/V1_0/CardStatus;->cardState:I

    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setCardState(I)V

    .line 4245
    iget v5, v0, Landroid/hardware/radio/V1_0/CardStatus;->universalPinState:I

    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setUniversalPinState(I)V

    .line 4246
    iget v5, v0, Landroid/hardware/radio/V1_0/CardStatus;->gsmUmtsSubscriptionAppIndex:I

    iput v5, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    const/4 v5, -0x1

    .line 4248
    iput v5, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    .line 4249
    iget v5, v0, Landroid/hardware/radio/V1_0/CardStatus;->imsSubscriptionAppIndex:I

    iput v5, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mImsSubscriptionAppIndex:I

    .line 4250
    iget-object v5, v0, Landroid/hardware/radio/V1_0/CardStatus;->applications:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v4, :cond_42

    move v5, v4

    .line 4256
    :cond_42
    new-array v6, v5, [Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    iput-object v6, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    move v6, v3

    :goto_47
    if-ge v6, v5, :cond_96

    .line 4258
    iget-object v7, v0, Landroid/hardware/radio/V1_0/CardStatus;->applications:Ljava/util/ArrayList;

    .line 4259
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/radio/V1_0/AppStatus;

    .line 4260
    new-instance v8, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    invoke-direct {v8}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;-><init>()V

    .line 4261
    iget v9, v7, Landroid/hardware/radio/V1_0/AppStatus;->appType:I

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppTypeFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v9

    iput-object v9, v8, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 4262
    iget v9, v7, Landroid/hardware/radio/V1_0/AppStatus;->appState:I

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v9

    iput-object v9, v8, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 4263
    iget v9, v7, Landroid/hardware/radio/V1_0/AppStatus;->persoSubstate:I

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PersoSubstateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v9

    iput-object v9, v8, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 4265
    iget-object v9, v7, Landroid/hardware/radio/V1_0/AppStatus;->aidPtr:Ljava/lang/String;

    iput-object v9, v8, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    .line 4266
    iget-object v9, v7, Landroid/hardware/radio/V1_0/AppStatus;->appLabelPtr:Ljava/lang/String;

    iput-object v9, v8, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    .line 4267
    iget v9, v7, Landroid/hardware/radio/V1_0/AppStatus;->pin1Replaced:I

    if-eqz v9, :cond_7c

    move v9, v2

    goto :goto_7d

    :cond_7c
    move v9, v3

    :goto_7d
    iput-boolean v9, v8, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:Z

    .line 4268
    iget v9, v7, Landroid/hardware/radio/V1_0/AppStatus;->pin1:I

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v9

    iput-object v9, v8, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 4269
    iget v7, v7, Landroid/hardware/radio/V1_0/AppStatus;->pin2:I

    invoke-virtual {v8, v7}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v7

    iput-object v7, v8, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 4270
    iget-object v7, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aput-object v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_47

    :cond_96
    if-eqz p0, :cond_119

    .line 4274
    new-instance v0, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;-><init>()V

    .line 4275
    iget-object v5, p0, Landroid/hardware/radio/V1_5/CardStatus;->base:Landroid/hardware/radio/V1_4/CardStatus;

    iget-object v6, v5, Landroid/hardware/radio/V1_4/CardStatus;->base:Landroid/hardware/radio/V1_2/CardStatus;

    iget v7, v6, Landroid/hardware/radio/V1_2/CardStatus;->physicalSlotId:I

    iput v7, v0, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;->mPhysicalSlotIndex:I

    .line 4276
    iput-object v0, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mSlotPortMapping:Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    .line 4277
    iget-object v0, v6, Landroid/hardware/radio/V1_2/CardStatus;->atr:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->atr:Ljava/lang/String;

    .line 4278
    iget-object v0, v6, Landroid/hardware/radio/V1_2/CardStatus;->iccid:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->iccid:Ljava/lang/String;

    .line 4279
    iget-object v0, v5, Landroid/hardware/radio/V1_4/CardStatus;->eid:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->eid:Ljava/lang/String;

    .line 4280
    iget-object v0, p0, Landroid/hardware/radio/V1_5/CardStatus;->applications:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v4, :cond_bc

    goto :goto_bd

    :cond_bc
    move v4, v0

    .line 4286
    :goto_bd
    new-array v0, v4, [Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    move v0, v3

    :goto_c2
    if-ge v0, v4, :cond_119

    .line 4288
    iget-object v5, p0, Landroid/hardware/radio/V1_5/CardStatus;->applications:Ljava/util/ArrayList;

    .line 4289
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/radio/V1_5/AppStatus;

    .line 4290
    new-instance v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    invoke-direct {v6}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;-><init>()V

    .line 4291
    iget-object v7, v5, Landroid/hardware/radio/V1_5/AppStatus;->base:Landroid/hardware/radio/V1_0/AppStatus;

    iget v7, v7, Landroid/hardware/radio/V1_0/AppStatus;->appType:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppTypeFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 4292
    iget-object v7, v5, Landroid/hardware/radio/V1_5/AppStatus;->base:Landroid/hardware/radio/V1_0/AppStatus;

    iget v7, v7, Landroid/hardware/radio/V1_0/AppStatus;->appState:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 4293
    iget v7, v5, Landroid/hardware/radio/V1_5/AppStatus;->persoSubstate:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PersoSubstateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 4295
    iget-object v7, v5, Landroid/hardware/radio/V1_5/AppStatus;->base:Landroid/hardware/radio/V1_0/AppStatus;

    iget-object v8, v7, Landroid/hardware/radio/V1_0/AppStatus;->aidPtr:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    .line 4296
    iget-object v8, v7, Landroid/hardware/radio/V1_0/AppStatus;->appLabelPtr:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    .line 4297
    iget v8, v7, Landroid/hardware/radio/V1_0/AppStatus;->pin1Replaced:I

    if-eqz v8, :cond_fd

    move v8, v2

    goto :goto_fe

    :cond_fd
    move v8, v3

    :goto_fe
    iput-boolean v8, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:Z

    .line 4298
    iget v7, v7, Landroid/hardware/radio/V1_0/AppStatus;->pin1:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 4299
    iget-object v5, v5, Landroid/hardware/radio/V1_5/AppStatus;->base:Landroid/hardware/radio/V1_0/AppStatus;

    iget v5, v5, Landroid/hardware/radio/V1_0/AppStatus;->pin2:I

    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v5

    iput-object v5, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 4300
    iget-object v5, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aput-object v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c2

    :cond_119
    return-object v1
.end method

.method public static blacklist convertHalCarrierList(Ljava/util/List;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/radio/V1_0/Carrier;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;"
        }
    .end annotation

    .line 4064
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 4065
    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_58

    .line 4066
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/V1_0/Carrier;

    iget-object v4, v2, Landroid/hardware/radio/V1_0/Carrier;->mcc:Ljava/lang/String;

    .line 4067
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/V1_0/Carrier;

    iget-object v5, v2, Landroid/hardware/radio/V1_0/Carrier;->mnc:Ljava/lang/String;

    .line 4069
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/V1_0/Carrier;

    iget v2, v2, Landroid/hardware/radio/V1_0/Carrier;->matchType:I

    .line 4070
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_0/Carrier;

    iget-object v3, v3, Landroid/hardware/radio/V1_0/Carrier;->matchData:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v2, v6, :cond_34

    move-object v6, v3

    move-object v8, v7

    :goto_32
    move-object v9, v8

    goto :goto_4d

    :cond_34
    const/4 v6, 0x2

    if-ne v2, v6, :cond_3c

    move-object v6, v7

    move-object v8, v6

    move-object v9, v8

    move-object v7, v3

    goto :goto_4d

    :cond_3c
    const/4 v6, 0x3

    if-ne v2, v6, :cond_43

    move-object v8, v3

    move-object v6, v7

    move-object v9, v6

    goto :goto_4d

    :cond_43
    const/4 v6, 0x4

    if-ne v2, v6, :cond_4a

    move-object v9, v3

    move-object v6, v7

    move-object v8, v6

    goto :goto_4d

    :cond_4a
    move-object v6, v7

    move-object v8, v6

    goto :goto_32

    .line 4080
    :goto_4d
    new-instance v3, Landroid/service/carrier/CarrierIdentifier;

    invoke-direct/range {v3 .. v9}, Landroid/service/carrier/CarrierIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_58
    return-object v0
.end method

.method public static blacklist convertHalCarrierList([Landroid/hardware/radio/sim/Carrier;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/hardware/radio/sim/Carrier;",
            ")",
            "Ljava/util/List<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;"
        }
    .end annotation

    .line 4092
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_8

    goto :goto_42

    :cond_8
    const/4 v1, 0x0

    .line 4096
    :goto_9
    array-length v2, p0

    if-ge v1, v2, :cond_42

    .line 4097
    aget-object v2, p0, v1

    iget-object v4, v2, Landroid/hardware/radio/sim/Carrier;->mcc:Ljava/lang/String;

    .line 4098
    iget-object v5, v2, Landroid/hardware/radio/sim/Carrier;->mnc:Ljava/lang/String;

    .line 4100
    iget v3, v2, Landroid/hardware/radio/sim/Carrier;->matchType:I

    .line 4101
    iget-object v2, v2, Landroid/hardware/radio/sim/Carrier;->matchData:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v3, v6, :cond_1e

    move-object v6, v2

    move-object v8, v7

    :goto_1c
    move-object v9, v8

    goto :goto_37

    :cond_1e
    const/4 v6, 0x2

    if-ne v3, v6, :cond_26

    move-object v6, v7

    move-object v8, v6

    move-object v9, v8

    move-object v7, v2

    goto :goto_37

    :cond_26
    const/4 v6, 0x3

    if-ne v3, v6, :cond_2d

    move-object v8, v2

    move-object v6, v7

    move-object v9, v6

    goto :goto_37

    :cond_2d
    const/4 v6, 0x4

    if-ne v3, v6, :cond_34

    move-object v9, v2

    move-object v6, v7

    move-object v8, v6

    goto :goto_37

    :cond_34
    move-object v6, v7

    move-object v8, v6

    goto :goto_1c

    .line 4111
    :goto_37
    new-instance v3, Landroid/service/carrier/CarrierIdentifier;

    invoke-direct/range {v3 .. v9}, Landroid/service/carrier/CarrierIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_42
    :goto_42
    return-object v0
.end method

.method public static blacklist convertHalCdmaSignalStrength(Landroid/hardware/radio/V1_0/CdmaSignalStrength;Landroid/hardware/radio/V1_0/EvdoSignalStrength;)Landroid/telephony/CellSignalStrengthCdma;
    .registers 8

    if-eqz p0, :cond_19

    if-nez p1, :cond_5

    goto :goto_19

    .line 2969
    :cond_5
    new-instance v0, Landroid/telephony/CellSignalStrengthCdma;

    iget v1, p0, Landroid/hardware/radio/V1_0/CdmaSignalStrength;->dbm:I

    neg-int v1, v1

    iget p0, p0, Landroid/hardware/radio/V1_0/CdmaSignalStrength;->ecio:I

    neg-int v2, p0

    iget p0, p1, Landroid/hardware/radio/V1_0/EvdoSignalStrength;->dbm:I

    neg-int v3, p0

    iget p0, p1, Landroid/hardware/radio/V1_0/EvdoSignalStrength;->ecio:I

    neg-int v4, p0

    iget v5, p1, Landroid/hardware/radio/V1_0/EvdoSignalStrength;->signalNoiseRatio:I

    invoke-direct/range {v0 .. v5}, Landroid/telephony/CellSignalStrengthCdma;-><init>(IIIII)V

    return-object v0

    .line 2968
    :cond_19
    :goto_19
    new-instance p0, Landroid/telephony/CellSignalStrengthCdma;

    invoke-direct {p0}, Landroid/telephony/CellSignalStrengthCdma;-><init>()V

    return-object p0
.end method

.method public static blacklist convertHalCdmaSignalStrength(Landroid/hardware/radio/network/CdmaSignalStrength;Landroid/hardware/radio/network/EvdoSignalStrength;)Landroid/telephony/CellSignalStrengthCdma;
    .registers 8

    if-eqz p0, :cond_19

    if-nez p1, :cond_5

    goto :goto_19

    .line 2984
    :cond_5
    new-instance v0, Landroid/telephony/CellSignalStrengthCdma;

    iget v1, p0, Landroid/hardware/radio/network/CdmaSignalStrength;->dbm:I

    neg-int v1, v1

    iget p0, p0, Landroid/hardware/radio/network/CdmaSignalStrength;->ecio:I

    neg-int v2, p0

    iget p0, p1, Landroid/hardware/radio/network/EvdoSignalStrength;->dbm:I

    neg-int v3, p0

    iget p0, p1, Landroid/hardware/radio/network/EvdoSignalStrength;->ecio:I

    neg-int v4, p0

    iget v5, p1, Landroid/hardware/radio/network/EvdoSignalStrength;->signalNoiseRatio:I

    invoke-direct/range {v0 .. v5}, Landroid/telephony/CellSignalStrengthCdma;-><init>(IIIII)V

    return-object v0

    .line 2983
    :cond_19
    :goto_19
    new-instance p0, Landroid/telephony/CellSignalStrengthCdma;

    invoke-direct {p0}, Landroid/telephony/CellSignalStrengthCdma;-><init>()V

    return-object p0
.end method

.method public static blacklist convertHalCdmaSmsMessage(Landroid/hardware/radio/V1_0/CdmaSmsMessage;)Lcom/android/internal/telephony/cdma/SmsMessage;
    .registers 10

    .line 743
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 744
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 745
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;-><init>()V

    .line 752
    iget v3, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->teleserviceId:I

    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 754
    iget-boolean v4, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->isServicePresent:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_1c

    const/4 v3, 0x1

    .line 755
    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    goto :goto_24

    :cond_1c
    if-nez v3, :cond_22

    const/4 v3, 0x2

    .line 759
    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    goto :goto_24

    .line 761
    :cond_22
    iput v5, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 764
    :goto_24
    iget v3, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->serviceCategory:I

    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    .line 767
    iget-object v3, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    iget v4, v3, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->digitMode:I

    and-int/lit16 v6, v4, 0xff

    int-to-byte v6, v6

    .line 768
    iput v6, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 769
    iget v6, v3, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->numberMode:I

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    iput v6, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 770
    iget v6, v3, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->numberType:I

    iput v6, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    .line 771
    iget v6, v3, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->numberPlan:I

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    iput v6, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 772
    iget-object v3, v3, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->digits:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-byte v3, v3

    .line 773
    iput v3, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 774
    new-array v6, v3, [B

    move v7, v5

    :goto_4f
    if-ge v7, v3, :cond_6c

    .line 776
    iget-object v8, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->digits:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Byte;

    invoke-virtual {v8}, Ljava/lang/Byte;->byteValue()B

    move-result v8

    aput-byte v8, v6, v7

    if-nez v4, :cond_69

    .line 780
    invoke-static {v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->convertDtmfToAscii(B)B

    move-result v8

    aput-byte v8, v6, v7

    :cond_69
    add-int/lit8 v7, v7, 0x1

    goto :goto_4f

    .line 784
    :cond_6c
    iput-object v6, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 786
    iget-object v3, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;

    iget v4, v3, Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;->subaddressType:I

    iput v4, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->type:I

    .line 787
    iget-boolean v4, v3, Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;->odd:Z

    int-to-byte v4, v4

    iput-byte v4, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->odd:B

    .line 788
    iget-object v3, v3, Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;->digits:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-byte v3, v3

    if-gez v3, :cond_83

    move v3, v5

    .line 796
    :cond_83
    new-array v4, v3, [B

    move v6, v5

    :goto_86
    if-ge v6, v3, :cond_9b

    .line 799
    iget-object v7, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;

    iget-object v7, v7, Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;->digits:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Byte;

    invoke-virtual {v7}, Ljava/lang/Byte;->byteValue()B

    move-result v7

    aput-byte v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_86

    .line 802
    :cond_9b
    iput-object v4, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    .line 812
    iget-object v3, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->bearerData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gez v3, :cond_a6

    move v3, v5

    .line 817
    :cond_a6
    new-array v4, v3, [B

    :goto_a8
    if-ge v5, v3, :cond_bb

    .line 819
    iget-object v6, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->bearerData:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    aput-byte v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_a8

    .line 822
    :cond_bb
    iput-object v4, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 825
    iput-object v1, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 826
    iput-object v2, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    .line 828
    new-instance p0, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsAddress;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;)V

    return-object p0
.end method

.method public static blacklist convertHalCdmaSmsMessage(Landroid/hardware/radio/messaging/CdmaSmsMessage;)Lcom/android/internal/telephony/cdma/SmsMessage;
    .registers 10

    .line 842
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 843
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 844
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;-><init>()V

    .line 847
    iget-object v3, p0, Landroid/hardware/radio/messaging/CdmaSmsMessage;->address:Landroid/hardware/radio/messaging/CdmaSmsAddress;

    iget v4, v3, Landroid/hardware/radio/messaging/CdmaSmsAddress;->digitMode:I

    and-int/lit16 v5, v4, 0xff

    int-to-byte v5, v5

    .line 848
    iput v5, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 849
    iget-boolean v5, v3, Landroid/hardware/radio/messaging/CdmaSmsAddress;->isNumberModeDataNetwork:Z

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    iput v5, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 850
    iget v5, v3, Landroid/hardware/radio/messaging/CdmaSmsAddress;->numberType:I

    iput v5, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    .line 851
    iget v5, v3, Landroid/hardware/radio/messaging/CdmaSmsAddress;->numberPlan:I

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    iput v5, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 852
    iget-object v3, v3, Landroid/hardware/radio/messaging/CdmaSmsAddress;->digits:[B

    array-length v5, v3

    iput v5, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 853
    array-length v3, v3

    new-array v5, v3, [B

    const/4 v6, 0x0

    move v7, v6

    :goto_34
    if-ge v7, v3, :cond_49

    .line 855
    iget-object v8, p0, Landroid/hardware/radio/messaging/CdmaSmsMessage;->address:Landroid/hardware/radio/messaging/CdmaSmsAddress;

    iget-object v8, v8, Landroid/hardware/radio/messaging/CdmaSmsAddress;->digits:[B

    aget-byte v8, v8, v7

    aput-byte v8, v5, v7

    if-nez v4, :cond_46

    .line 858
    invoke-static {v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->convertDtmfToAscii(B)B

    move-result v8

    aput-byte v8, v5, v7

    :cond_46
    add-int/lit8 v7, v7, 0x1

    goto :goto_34

    .line 861
    :cond_49
    iput-object v5, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 864
    iget-object v3, p0, Landroid/hardware/radio/messaging/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/messaging/CdmaSmsSubaddress;

    iget v4, v3, Landroid/hardware/radio/messaging/CdmaSmsSubaddress;->subaddressType:I

    iput v4, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->type:I

    .line 865
    iget-boolean v4, v3, Landroid/hardware/radio/messaging/CdmaSmsSubaddress;->odd:Z

    int-to-byte v4, v4

    iput-byte v4, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->odd:B

    .line 866
    iget-object v3, v3, Landroid/hardware/radio/messaging/CdmaSmsSubaddress;->digits:[B

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    .line 871
    iget v3, p0, Landroid/hardware/radio/messaging/CdmaSmsMessage;->teleserviceId:I

    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 872
    iget-boolean v4, p0, Landroid/hardware/radio/messaging/CdmaSmsMessage;->isServicePresent:Z

    if-eqz v4, :cond_66

    const/4 v3, 0x1

    .line 873
    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    goto :goto_6e

    :cond_66
    if-nez v3, :cond_6c

    const/4 v3, 0x2

    .line 877
    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    goto :goto_6e

    .line 879
    :cond_6c
    iput v6, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 882
    :goto_6e
    iget v3, p0, Landroid/hardware/radio/messaging/CdmaSmsMessage;->serviceCategory:I

    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    .line 885
    iget-object p0, p0, Landroid/hardware/radio/messaging/CdmaSmsMessage;->bearerData:[B

    iput-object p0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 888
    iput-object v1, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 889
    iput-object v2, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    .line 891
    new-instance p0, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsAddress;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;)V

    return-object p0
.end method

.method public static blacklist convertHalCellConnectionStatus(I)I
    .registers 2

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_8

    const/4 v0, 0x2

    if-eq p0, v0, :cond_8

    const/4 p0, -0x1

    return p0

    :cond_8
    return v0
.end method

.method public static blacklist convertHalCellIdentity(Landroid/hardware/radio/network/CellIdentity;)Landroid/telephony/CellIdentity;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 2637
    :cond_4
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_42

    return-object v0

    .line 2649
    :pswitch_c
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getNr()Landroid/hardware/radio/network/CellIdentityNr;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityNr(Landroid/hardware/radio/network/CellIdentityNr;)Landroid/telephony/CellIdentityNr;

    move-result-object p0

    return-object p0

    .line 2643
    :pswitch_15
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getLte()Landroid/hardware/radio/network/CellIdentityLte;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityLte(Landroid/hardware/radio/network/CellIdentityLte;)Landroid/telephony/CellIdentityLte;

    move-result-object p0

    return-object p0

    .line 2641
    :pswitch_1e
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getCdma()Landroid/hardware/radio/network/CellIdentityCdma;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityCdma(Landroid/hardware/radio/network/CellIdentityCdma;)Landroid/telephony/CellIdentityCdma;

    move-result-object p0

    return-object p0

    .line 2647
    :pswitch_27
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getTdscdma()Landroid/hardware/radio/network/CellIdentityTdscdma;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityTdscdma(Landroid/hardware/radio/network/CellIdentityTdscdma;)Landroid/telephony/CellIdentityTdscdma;

    move-result-object p0

    return-object p0

    .line 2645
    :pswitch_30
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getWcdma()Landroid/hardware/radio/network/CellIdentityWcdma;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityWcdma(Landroid/hardware/radio/network/CellIdentityWcdma;)Landroid/telephony/CellIdentityWcdma;

    move-result-object p0

    return-object p0

    .line 2639
    :pswitch_39
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getGsm()Landroid/hardware/radio/network/CellIdentityGsm;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityGsm(Landroid/hardware/radio/network/CellIdentityGsm;)Landroid/telephony/CellIdentityGsm;

    move-result-object p0

    return-object p0

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_39
        :pswitch_30
        :pswitch_27
        :pswitch_1e
        :pswitch_15
        :pswitch_c
    .end packed-switch
.end method

.method public static blacklist convertHalCellIdentity(Ljava/lang/Object;)Landroid/telephony/CellIdentity;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 2578
    :cond_4
    instance-of v1, p0, Landroid/hardware/radio/V1_2/CellIdentity;

    if-eqz v1, :cond_7d

    .line 2579
    check-cast p0, Landroid/hardware/radio/V1_2/CellIdentity;

    .line 2581
    iget v1, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellInfoType:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_6a

    const/4 v4, 0x2

    if-eq v1, v4, :cond_57

    const/4 v4, 0x3

    if-eq v1, v4, :cond_44

    const/4 v4, 0x4

    if-eq v1, v4, :cond_31

    const/4 v4, 0x5

    if-eq v1, v4, :cond_1e

    goto/16 :goto_c1

    .line 2603
    :cond_1e
    iget-object v1, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityTdscdma:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v3, :cond_c1

    .line 2604
    iget-object p0, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityTdscdma:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityTdscdma(Ljava/lang/Object;)Landroid/telephony/CellIdentityTdscdma;

    move-result-object p0

    return-object p0

    .line 2598
    :cond_31
    iget-object v1, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityWcdma:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v3, :cond_c1

    .line 2599
    iget-object p0, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityWcdma:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityWcdma(Ljava/lang/Object;)Landroid/telephony/CellIdentityWcdma;

    move-result-object p0

    return-object p0

    .line 2593
    :cond_44
    iget-object v1, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityLte:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v3, :cond_c1

    .line 2594
    iget-object p0, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityLte:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityLte(Ljava/lang/Object;)Landroid/telephony/CellIdentityLte;

    move-result-object p0

    return-object p0

    .line 2588
    :cond_57
    iget-object v1, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityCdma:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v3, :cond_c1

    .line 2589
    iget-object p0, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityCdma:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityCdma(Ljava/lang/Object;)Landroid/telephony/CellIdentityCdma;

    move-result-object p0

    return-object p0

    .line 2583
    :cond_6a
    iget-object v1, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityGsm:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v3, :cond_c1

    .line 2584
    iget-object p0, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityGsm:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityGsm(Ljava/lang/Object;)Landroid/telephony/CellIdentityGsm;

    move-result-object p0

    return-object p0

    .line 2608
    :cond_7d
    instance-of v1, p0, Landroid/hardware/radio/V1_5/CellIdentity;

    if-eqz v1, :cond_c1

    .line 2609
    check-cast p0, Landroid/hardware/radio/V1_5/CellIdentity;

    .line 2611
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/CellIdentity;->getDiscriminator()B

    move-result v1

    packed-switch v1, :pswitch_data_c2

    goto :goto_c1

    .line 2623
    :pswitch_8b
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/CellIdentity;->nr()Landroid/hardware/radio/V1_5/CellIdentityNr;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityNr(Ljava/lang/Object;)Landroid/telephony/CellIdentityNr;

    move-result-object p0

    return-object p0

    .line 2617
    :pswitch_94
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/CellIdentity;->lte()Landroid/hardware/radio/V1_5/CellIdentityLte;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityLte(Ljava/lang/Object;)Landroid/telephony/CellIdentityLte;

    move-result-object p0

    return-object p0

    .line 2615
    :pswitch_9d
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/CellIdentity;->cdma()Landroid/hardware/radio/V1_2/CellIdentityCdma;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityCdma(Ljava/lang/Object;)Landroid/telephony/CellIdentityCdma;

    move-result-object p0

    return-object p0

    .line 2621
    :pswitch_a6
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/CellIdentity;->tdscdma()Landroid/hardware/radio/V1_5/CellIdentityTdscdma;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityTdscdma(Ljava/lang/Object;)Landroid/telephony/CellIdentityTdscdma;

    move-result-object p0

    return-object p0

    .line 2619
    :pswitch_af
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/CellIdentity;->wcdma()Landroid/hardware/radio/V1_5/CellIdentityWcdma;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityWcdma(Ljava/lang/Object;)Landroid/telephony/CellIdentityWcdma;

    move-result-object p0

    return-object p0

    .line 2613
    :pswitch_b8
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/CellIdentity;->gsm()Landroid/hardware/radio/V1_5/CellIdentityGsm;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityGsm(Ljava/lang/Object;)Landroid/telephony/CellIdentityGsm;

    move-result-object p0

    return-object p0

    :cond_c1
    :goto_c1
    return-object v0

    :pswitch_data_c2
    .packed-switch 0x1
        :pswitch_b8
        :pswitch_af
        :pswitch_a6
        :pswitch_9d
        :pswitch_94
        :pswitch_8b
    .end packed-switch
.end method

.method public static blacklist convertHalCellIdentityCdma(Landroid/hardware/radio/network/CellIdentityCdma;)Landroid/telephony/CellIdentityCdma;
    .registers 9

    .line 2718
    new-instance v0, Landroid/telephony/CellIdentityCdma;

    iget v1, p0, Landroid/hardware/radio/network/CellIdentityCdma;->networkId:I

    iget v2, p0, Landroid/hardware/radio/network/CellIdentityCdma;->systemId:I

    iget v3, p0, Landroid/hardware/radio/network/CellIdentityCdma;->baseStationId:I

    iget v4, p0, Landroid/hardware/radio/network/CellIdentityCdma;->longitude:I

    iget v5, p0, Landroid/hardware/radio/network/CellIdentityCdma;->latitude:I

    iget-object p0, p0, Landroid/hardware/radio/network/CellIdentityCdma;->operatorNames:Landroid/hardware/radio/network/OperatorInfo;

    iget-object v6, p0, Landroid/hardware/radio/network/OperatorInfo;->alphaLong:Ljava/lang/String;

    iget-object v7, p0, Landroid/hardware/radio/network/OperatorInfo;->alphaShort:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Landroid/telephony/CellIdentityCdma;-><init>(IIIIILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static blacklist convertHalCellIdentityCdma(Ljava/lang/Object;)Landroid/telephony/CellIdentityCdma;
    .registers 9

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 2700
    :cond_4
    instance-of v1, p0, Landroid/hardware/radio/V1_2/CellIdentityCdma;

    if-eqz v1, :cond_25

    .line 2701
    check-cast p0, Landroid/hardware/radio/V1_2/CellIdentityCdma;

    .line 2703
    new-instance v0, Landroid/telephony/CellIdentityCdma;

    iget-object v1, p0, Landroid/hardware/radio/V1_2/CellIdentityCdma;->base:Landroid/hardware/radio/V1_0/CellIdentityCdma;

    move-object v2, v1

    iget v1, v2, Landroid/hardware/radio/V1_0/CellIdentityCdma;->networkId:I

    move-object v3, v2

    iget v2, v3, Landroid/hardware/radio/V1_0/CellIdentityCdma;->systemId:I

    move-object v4, v3

    iget v3, v4, Landroid/hardware/radio/V1_0/CellIdentityCdma;->baseStationId:I

    move-object v5, v4

    iget v4, v5, Landroid/hardware/radio/V1_0/CellIdentityCdma;->longitude:I

    iget v5, v5, Landroid/hardware/radio/V1_0/CellIdentityCdma;->latitude:I

    iget-object p0, p0, Landroid/hardware/radio/V1_2/CellIdentityCdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v6, p0, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    iget-object v7, p0, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Landroid/telephony/CellIdentityCdma;-><init>(IIIIILjava/lang/String;Ljava/lang/String;)V

    :cond_25
    return-object v0
.end method

.method public static blacklist convertHalCellIdentityGsm(Landroid/hardware/radio/network/CellIdentityGsm;)Landroid/telephony/CellIdentityGsm;
    .registers 11

    .line 2688
    new-instance v0, Landroid/telephony/CellIdentityGsm;

    iget v1, p0, Landroid/hardware/radio/network/CellIdentityGsm;->lac:I

    iget v2, p0, Landroid/hardware/radio/network/CellIdentityGsm;->cid:I

    iget v3, p0, Landroid/hardware/radio/network/CellIdentityGsm;->arfcn:I

    .line 2689
    iget-byte v4, p0, Landroid/hardware/radio/network/CellIdentityGsm;->bsic:B

    const/4 v5, -0x1

    if-ne v4, v5, :cond_10

    const v4, 0x7fffffff

    :cond_10
    iget-object v5, p0, Landroid/hardware/radio/network/CellIdentityGsm;->mcc:Ljava/lang/String;

    iget-object v6, p0, Landroid/hardware/radio/network/CellIdentityGsm;->mnc:Ljava/lang/String;

    iget-object p0, p0, Landroid/hardware/radio/network/CellIdentityGsm;->operatorNames:Landroid/hardware/radio/network/OperatorInfo;

    iget-object v7, p0, Landroid/hardware/radio/network/OperatorInfo;->alphaLong:Ljava/lang/String;

    iget-object v8, p0, Landroid/hardware/radio/network/OperatorInfo;->alphaShort:Ljava/lang/String;

    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    invoke-direct/range {v0 .. v9}, Landroid/telephony/CellIdentityGsm;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    return-object v0
.end method

.method public static blacklist convertHalCellIdentityGsm(Ljava/lang/Object;)Landroid/telephony/CellIdentityGsm;
    .registers 15

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 2661
    :cond_4
    instance-of v1, p0, Landroid/hardware/radio/V1_2/CellIdentityGsm;

    const v2, 0x7fffffff

    const/4 v3, -0x1

    if-eqz v1, :cond_32

    .line 2662
    check-cast p0, Landroid/hardware/radio/V1_2/CellIdentityGsm;

    .line 2664
    new-instance v4, Landroid/telephony/CellIdentityGsm;

    iget-object v0, p0, Landroid/hardware/radio/V1_2/CellIdentityGsm;->base:Landroid/hardware/radio/V1_0/CellIdentityGsm;

    iget v5, v0, Landroid/hardware/radio/V1_0/CellIdentityGsm;->lac:I

    iget v6, v0, Landroid/hardware/radio/V1_0/CellIdentityGsm;->cid:I

    iget v7, v0, Landroid/hardware/radio/V1_0/CellIdentityGsm;->arfcn:I

    .line 2665
    iget-byte v1, v0, Landroid/hardware/radio/V1_0/CellIdentityGsm;->bsic:B

    if-ne v1, v3, :cond_1e

    move v8, v2

    goto :goto_1f

    :cond_1e
    move v8, v1

    :goto_1f
    iget-object v9, v0, Landroid/hardware/radio/V1_0/CellIdentityGsm;->mcc:Ljava/lang/String;

    iget-object v10, v0, Landroid/hardware/radio/V1_0/CellIdentityGsm;->mnc:Ljava/lang/String;

    iget-object p0, p0, Landroid/hardware/radio/V1_2/CellIdentityGsm;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v11, p0, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    iget-object v12, p0, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    new-instance v13, Landroid/util/ArraySet;

    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    invoke-direct/range {v4 .. v13}, Landroid/telephony/CellIdentityGsm;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    return-object v4

    .line 2668
    :cond_32
    instance-of v1, p0, Landroid/hardware/radio/V1_5/CellIdentityGsm;

    if-eqz v1, :cond_59

    .line 2669
    check-cast p0, Landroid/hardware/radio/V1_5/CellIdentityGsm;

    .line 2671
    new-instance v4, Landroid/telephony/CellIdentityGsm;

    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellIdentityGsm;->base:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v1, v0, Landroid/hardware/radio/V1_2/CellIdentityGsm;->base:Landroid/hardware/radio/V1_0/CellIdentityGsm;

    iget v5, v1, Landroid/hardware/radio/V1_0/CellIdentityGsm;->lac:I

    iget v6, v1, Landroid/hardware/radio/V1_0/CellIdentityGsm;->cid:I

    iget v7, v1, Landroid/hardware/radio/V1_0/CellIdentityGsm;->arfcn:I

    .line 2672
    iget-byte v8, v1, Landroid/hardware/radio/V1_0/CellIdentityGsm;->bsic:B

    if-ne v8, v3, :cond_49

    move v8, v2

    .line 2673
    :cond_49
    iget-object v9, v1, Landroid/hardware/radio/V1_0/CellIdentityGsm;->mcc:Ljava/lang/String;

    iget-object v10, v1, Landroid/hardware/radio/V1_0/CellIdentityGsm;->mnc:Ljava/lang/String;

    iget-object v0, v0, Landroid/hardware/radio/V1_2/CellIdentityGsm;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v11, v0, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    iget-object v12, v0, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    iget-object v13, p0, Landroid/hardware/radio/V1_5/CellIdentityGsm;->additionalPlmns:Ljava/util/ArrayList;

    invoke-direct/range {v4 .. v13}, Landroid/telephony/CellIdentityGsm;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    return-object v4

    :cond_59
    return-object v0
.end method

.method public static blacklist convertHalCellIdentityLte(Landroid/hardware/radio/network/CellIdentityLte;)Landroid/telephony/CellIdentityLte;
    .registers 14

    .line 2756
    new-instance v0, Landroid/telephony/CellIdentityLte;

    iget v1, p0, Landroid/hardware/radio/network/CellIdentityLte;->ci:I

    iget v2, p0, Landroid/hardware/radio/network/CellIdentityLte;->pci:I

    iget v3, p0, Landroid/hardware/radio/network/CellIdentityLte;->tac:I

    iget v4, p0, Landroid/hardware/radio/network/CellIdentityLte;->earfcn:I

    iget-object v5, p0, Landroid/hardware/radio/network/CellIdentityLte;->bands:[I

    iget v6, p0, Landroid/hardware/radio/network/CellIdentityLte;->bandwidth:I

    iget-object v7, p0, Landroid/hardware/radio/network/CellIdentityLte;->mcc:Ljava/lang/String;

    iget-object v8, p0, Landroid/hardware/radio/network/CellIdentityLte;->mnc:Ljava/lang/String;

    iget-object v9, p0, Landroid/hardware/radio/network/CellIdentityLte;->operatorNames:Landroid/hardware/radio/network/OperatorInfo;

    move-object v10, v9

    iget-object v9, v10, Landroid/hardware/radio/network/OperatorInfo;->alphaLong:Ljava/lang/String;

    iget-object v10, v10, Landroid/hardware/radio/network/OperatorInfo;->alphaShort:Ljava/lang/String;

    iget-object v11, p0, Landroid/hardware/radio/network/CellIdentityLte;->additionalPlmns:[Ljava/lang/String;

    .line 2758
    invoke-static {v11}, Lcom/android/internal/telephony/RILUtils;->primitiveArrayToArrayList([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    iget-object p0, p0, Landroid/hardware/radio/network/CellIdentityLte;->csgInfo:Landroid/hardware/radio/network/ClosedSubscriberGroupInfo;

    .line 2759
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalClosedSubscriberGroupInfo(Landroid/hardware/radio/network/ClosedSubscriberGroupInfo;)Landroid/telephony/ClosedSubscriberGroupInfo;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Landroid/telephony/CellIdentityLte;-><init>(IIII[IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Landroid/telephony/ClosedSubscriberGroupInfo;)V

    return-object v0
.end method

.method public static blacklist convertHalCellIdentityLte(Ljava/lang/Object;)Landroid/telephony/CellIdentityLte;
    .registers 14

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 2729
    :cond_4
    instance-of v1, p0, Landroid/hardware/radio/V1_2/CellIdentityLte;

    if-eqz v1, :cond_36

    .line 2730
    check-cast p0, Landroid/hardware/radio/V1_2/CellIdentityLte;

    .line 2732
    new-instance v0, Landroid/telephony/CellIdentityLte;

    iget-object v1, p0, Landroid/hardware/radio/V1_2/CellIdentityLte;->base:Landroid/hardware/radio/V1_0/CellIdentityLte;

    move-object v2, v1

    iget v1, v2, Landroid/hardware/radio/V1_0/CellIdentityLte;->ci:I

    move-object v3, v2

    iget v2, v3, Landroid/hardware/radio/V1_0/CellIdentityLte;->pci:I

    move-object v4, v3

    iget v3, v4, Landroid/hardware/radio/V1_0/CellIdentityLte;->tac:I

    move-object v5, v4

    iget v4, v5, Landroid/hardware/radio/V1_0/CellIdentityLte;->earfcn:I

    const/4 v6, 0x0

    new-array v6, v6, [I

    move-object v7, v5

    move-object v5, v6

    iget v6, p0, Landroid/hardware/radio/V1_2/CellIdentityLte;->bandwidth:I

    move-object v8, v7

    iget-object v7, v8, Landroid/hardware/radio/V1_0/CellIdentityLte;->mcc:Ljava/lang/String;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/CellIdentityLte;->mnc:Ljava/lang/String;

    iget-object p0, p0, Landroid/hardware/radio/V1_2/CellIdentityLte;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v9, p0, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    iget-object v10, p0, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v12}, Landroid/telephony/CellIdentityLte;-><init>(IIII[IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Landroid/telephony/ClosedSubscriberGroupInfo;)V

    return-object v0

    .line 2736
    :cond_36
    instance-of v1, p0, Landroid/hardware/radio/V1_5/CellIdentityLte;

    if-eqz v1, :cond_7e

    .line 2737
    check-cast p0, Landroid/hardware/radio/V1_5/CellIdentityLte;

    .line 2739
    new-instance v0, Landroid/telephony/CellIdentityLte;

    iget-object v1, p0, Landroid/hardware/radio/V1_5/CellIdentityLte;->base:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v1, v1, Landroid/hardware/radio/V1_2/CellIdentityLte;->base:Landroid/hardware/radio/V1_0/CellIdentityLte;

    move-object v2, v1

    iget v1, v2, Landroid/hardware/radio/V1_0/CellIdentityLte;->ci:I

    move-object v3, v2

    iget v2, v3, Landroid/hardware/radio/V1_0/CellIdentityLte;->pci:I

    move-object v4, v3

    iget v3, v4, Landroid/hardware/radio/V1_0/CellIdentityLte;->tac:I

    iget v4, v4, Landroid/hardware/radio/V1_0/CellIdentityLte;->earfcn:I

    iget-object v5, p0, Landroid/hardware/radio/V1_5/CellIdentityLte;->bands:Ljava/util/ArrayList;

    .line 2740
    invoke-virtual {v5}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v5

    iget-object v6, p0, Landroid/hardware/radio/V1_5/CellIdentityLte;->base:Landroid/hardware/radio/V1_2/CellIdentityLte;

    move-object v7, v6

    iget v6, v7, Landroid/hardware/radio/V1_2/CellIdentityLte;->bandwidth:I

    iget-object v8, v7, Landroid/hardware/radio/V1_2/CellIdentityLte;->base:Landroid/hardware/radio/V1_0/CellIdentityLte;

    move-object v9, v7

    iget-object v7, v8, Landroid/hardware/radio/V1_0/CellIdentityLte;->mcc:Ljava/lang/String;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/CellIdentityLte;->mnc:Ljava/lang/String;

    iget-object v9, v9, Landroid/hardware/radio/V1_2/CellIdentityLte;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    move-object v10, v9

    iget-object v9, v10, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    iget-object v10, v10, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    iget-object v11, p0, Landroid/hardware/radio/V1_5/CellIdentityLte;->additionalPlmns:Ljava/util/ArrayList;

    iget-object p0, p0, Landroid/hardware/radio/V1_5/CellIdentityLte;->optionalCsgInfo:Landroid/hardware/radio/V1_5/OptionalCsgInfo;

    .line 2743
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalClosedSubscriberGroupInfo(Landroid/hardware/radio/V1_5/OptionalCsgInfo;)Landroid/telephony/ClosedSubscriberGroupInfo;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Landroid/telephony/CellIdentityLte;-><init>(IIII[IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Landroid/telephony/ClosedSubscriberGroupInfo;)V

    :cond_7e
    return-object v0
.end method

.method public static blacklist convertHalCellIdentityNr(Landroid/hardware/radio/network/CellIdentityNr;)Landroid/telephony/CellIdentityNr;
    .registers 13

    .line 2870
    new-instance v0, Landroid/telephony/CellIdentityNr;

    iget v1, p0, Landroid/hardware/radio/network/CellIdentityNr;->pci:I

    iget v2, p0, Landroid/hardware/radio/network/CellIdentityNr;->tac:I

    iget v3, p0, Landroid/hardware/radio/network/CellIdentityNr;->nrarfcn:I

    iget-object v4, p0, Landroid/hardware/radio/network/CellIdentityNr;->bands:[I

    iget-object v5, p0, Landroid/hardware/radio/network/CellIdentityNr;->mcc:Ljava/lang/String;

    iget-object v6, p0, Landroid/hardware/radio/network/CellIdentityNr;->mnc:Ljava/lang/String;

    iget-wide v7, p0, Landroid/hardware/radio/network/CellIdentityNr;->nci:J

    iget-object v9, p0, Landroid/hardware/radio/network/CellIdentityNr;->operatorNames:Landroid/hardware/radio/network/OperatorInfo;

    move-object v10, v9

    iget-object v9, v10, Landroid/hardware/radio/network/OperatorInfo;->alphaLong:Ljava/lang/String;

    iget-object v10, v10, Landroid/hardware/radio/network/OperatorInfo;->alphaShort:Ljava/lang/String;

    iget-object p0, p0, Landroid/hardware/radio/network/CellIdentityNr;->additionalPlmns:[Ljava/lang/String;

    .line 2872
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->primitiveArrayToArrayList([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-direct/range {v0 .. v11}, Landroid/telephony/CellIdentityNr;-><init>(III[ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    return-object v0
.end method

.method public static blacklist convertHalCellIdentityNr(Ljava/lang/Object;)Landroid/telephony/CellIdentityNr;
    .registers 13

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 2845
    :cond_4
    instance-of v1, p0, Landroid/hardware/radio/V1_4/CellIdentityNr;

    if-eqz v1, :cond_2a

    .line 2846
    check-cast p0, Landroid/hardware/radio/V1_4/CellIdentityNr;

    .line 2848
    new-instance v0, Landroid/telephony/CellIdentityNr;

    iget v1, p0, Landroid/hardware/radio/V1_4/CellIdentityNr;->pci:I

    iget v2, p0, Landroid/hardware/radio/V1_4/CellIdentityNr;->tac:I

    iget v3, p0, Landroid/hardware/radio/V1_4/CellIdentityNr;->nrarfcn:I

    const/4 v4, 0x0

    new-array v4, v4, [I

    iget-object v5, p0, Landroid/hardware/radio/V1_4/CellIdentityNr;->mcc:Ljava/lang/String;

    iget-object v6, p0, Landroid/hardware/radio/V1_4/CellIdentityNr;->mnc:Ljava/lang/String;

    iget-wide v7, p0, Landroid/hardware/radio/V1_4/CellIdentityNr;->nci:J

    iget-object p0, p0, Landroid/hardware/radio/V1_4/CellIdentityNr;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v9, p0, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    iget-object v10, p0, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    invoke-direct/range {v0 .. v11}, Landroid/telephony/CellIdentityNr;-><init>(III[ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    return-object v0

    .line 2851
    :cond_2a
    instance-of v1, p0, Landroid/hardware/radio/V1_5/CellIdentityNr;

    if-eqz v1, :cond_66

    .line 2852
    check-cast p0, Landroid/hardware/radio/V1_5/CellIdentityNr;

    .line 2854
    new-instance v0, Landroid/telephony/CellIdentityNr;

    iget-object v1, p0, Landroid/hardware/radio/V1_5/CellIdentityNr;->base:Landroid/hardware/radio/V1_4/CellIdentityNr;

    move-object v2, v1

    iget v1, v2, Landroid/hardware/radio/V1_4/CellIdentityNr;->pci:I

    move-object v3, v2

    iget v2, v3, Landroid/hardware/radio/V1_4/CellIdentityNr;->tac:I

    iget v3, v3, Landroid/hardware/radio/V1_4/CellIdentityNr;->nrarfcn:I

    iget-object v4, p0, Landroid/hardware/radio/V1_5/CellIdentityNr;->bands:Ljava/util/ArrayList;

    .line 2855
    invoke-virtual {v4}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/radio/V1_5/CellIdentityNr;->base:Landroid/hardware/radio/V1_4/CellIdentityNr;

    move-object v6, v5

    iget-object v5, v6, Landroid/hardware/radio/V1_4/CellIdentityNr;->mcc:Ljava/lang/String;

    move-object v7, v6

    iget-object v6, v7, Landroid/hardware/radio/V1_4/CellIdentityNr;->mnc:Ljava/lang/String;

    move-object v9, v7

    iget-wide v7, v9, Landroid/hardware/radio/V1_4/CellIdentityNr;->nci:J

    iget-object v9, v9, Landroid/hardware/radio/V1_4/CellIdentityNr;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    move-object v10, v9

    iget-object v9, v10, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    iget-object v10, v10, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    iget-object v11, p0, Landroid/hardware/radio/V1_5/CellIdentityNr;->additionalPlmns:Ljava/util/ArrayList;

    invoke-direct/range {v0 .. v11}, Landroid/telephony/CellIdentityNr;-><init>(III[ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    :cond_66
    return-object v0
.end method

.method public static blacklist convertHalCellIdentityTdscdma(Landroid/hardware/radio/network/CellIdentityTdscdma;)Landroid/telephony/CellIdentityTdscdma;
    .registers 12

    .line 2832
    new-instance v0, Landroid/telephony/CellIdentityTdscdma;

    iget-object v1, p0, Landroid/hardware/radio/network/CellIdentityTdscdma;->mcc:Ljava/lang/String;

    iget-object v2, p0, Landroid/hardware/radio/network/CellIdentityTdscdma;->mnc:Ljava/lang/String;

    iget v3, p0, Landroid/hardware/radio/network/CellIdentityTdscdma;->lac:I

    iget v4, p0, Landroid/hardware/radio/network/CellIdentityTdscdma;->cid:I

    iget v5, p0, Landroid/hardware/radio/network/CellIdentityTdscdma;->cpid:I

    iget v6, p0, Landroid/hardware/radio/network/CellIdentityTdscdma;->uarfcn:I

    iget-object v7, p0, Landroid/hardware/radio/network/CellIdentityTdscdma;->operatorNames:Landroid/hardware/radio/network/OperatorInfo;

    move-object v8, v7

    iget-object v7, v8, Landroid/hardware/radio/network/OperatorInfo;->alphaLong:Ljava/lang/String;

    iget-object v8, v8, Landroid/hardware/radio/network/OperatorInfo;->alphaShort:Ljava/lang/String;

    iget-object v9, p0, Landroid/hardware/radio/network/CellIdentityTdscdma;->additionalPlmns:[Ljava/lang/String;

    .line 2834
    invoke-static {v9}, Lcom/android/internal/telephony/RILUtils;->primitiveArrayToArrayList([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    iget-object p0, p0, Landroid/hardware/radio/network/CellIdentityTdscdma;->csgInfo:Landroid/hardware/radio/network/ClosedSubscriberGroupInfo;

    .line 2835
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalClosedSubscriberGroupInfo(Landroid/hardware/radio/network/ClosedSubscriberGroupInfo;)Landroid/telephony/ClosedSubscriberGroupInfo;

    move-result-object v10

    invoke-direct/range {v0 .. v10}, Landroid/telephony/CellIdentityTdscdma;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/util/Collection;Landroid/telephony/ClosedSubscriberGroupInfo;)V

    return-object v0
.end method

.method public static blacklist convertHalCellIdentityTdscdma(Ljava/lang/Object;)Landroid/telephony/CellIdentityTdscdma;
    .registers 12

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 2807
    :cond_4
    instance-of v1, p0, Landroid/hardware/radio/V1_2/CellIdentityTdscdma;

    if-eqz v1, :cond_2b

    .line 2808
    check-cast p0, Landroid/hardware/radio/V1_2/CellIdentityTdscdma;

    .line 2810
    new-instance v0, Landroid/telephony/CellIdentityTdscdma;

    iget-object v1, p0, Landroid/hardware/radio/V1_2/CellIdentityTdscdma;->base:Landroid/hardware/radio/V1_0/CellIdentityTdscdma;

    move-object v2, v1

    iget-object v1, v2, Landroid/hardware/radio/V1_0/CellIdentityTdscdma;->mcc:Ljava/lang/String;

    move-object v3, v2

    iget-object v2, v3, Landroid/hardware/radio/V1_0/CellIdentityTdscdma;->mnc:Ljava/lang/String;

    move-object v4, v3

    iget v3, v4, Landroid/hardware/radio/V1_0/CellIdentityTdscdma;->lac:I

    move-object v5, v4

    iget v4, v5, Landroid/hardware/radio/V1_0/CellIdentityTdscdma;->cid:I

    iget v5, v5, Landroid/hardware/radio/V1_0/CellIdentityTdscdma;->cpid:I

    iget v6, p0, Landroid/hardware/radio/V1_2/CellIdentityTdscdma;->uarfcn:I

    iget-object p0, p0, Landroid/hardware/radio/V1_2/CellIdentityTdscdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v7, p0, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    iget-object v8, p0, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    .line 2812
    sget-object v9, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Landroid/telephony/CellIdentityTdscdma;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/util/Collection;Landroid/telephony/ClosedSubscriberGroupInfo;)V

    return-object v0

    .line 2813
    :cond_2b
    instance-of v1, p0, Landroid/hardware/radio/V1_5/CellIdentityTdscdma;

    if-eqz v1, :cond_5b

    .line 2814
    check-cast p0, Landroid/hardware/radio/V1_5/CellIdentityTdscdma;

    .line 2816
    new-instance v0, Landroid/telephony/CellIdentityTdscdma;

    iget-object v1, p0, Landroid/hardware/radio/V1_5/CellIdentityTdscdma;->base:Landroid/hardware/radio/V1_2/CellIdentityTdscdma;

    iget-object v2, v1, Landroid/hardware/radio/V1_2/CellIdentityTdscdma;->base:Landroid/hardware/radio/V1_0/CellIdentityTdscdma;

    move-object v3, v1

    iget-object v1, v2, Landroid/hardware/radio/V1_0/CellIdentityTdscdma;->mcc:Ljava/lang/String;

    move-object v4, v2

    iget-object v2, v4, Landroid/hardware/radio/V1_0/CellIdentityTdscdma;->mnc:Ljava/lang/String;

    move-object v5, v3

    iget v3, v4, Landroid/hardware/radio/V1_0/CellIdentityTdscdma;->lac:I

    move-object v6, v4

    iget v4, v6, Landroid/hardware/radio/V1_0/CellIdentityTdscdma;->cid:I

    iget v6, v6, Landroid/hardware/radio/V1_0/CellIdentityTdscdma;->cpid:I

    move-object v7, v5

    move v5, v6

    iget v6, v7, Landroid/hardware/radio/V1_2/CellIdentityTdscdma;->uarfcn:I

    iget-object v7, v7, Landroid/hardware/radio/V1_2/CellIdentityTdscdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    move-object v8, v7

    iget-object v7, v8, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    iget-object v9, p0, Landroid/hardware/radio/V1_5/CellIdentityTdscdma;->additionalPlmns:Ljava/util/ArrayList;

    iget-object p0, p0, Landroid/hardware/radio/V1_5/CellIdentityTdscdma;->optionalCsgInfo:Landroid/hardware/radio/V1_5/OptionalCsgInfo;

    .line 2819
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalClosedSubscriberGroupInfo(Landroid/hardware/radio/V1_5/OptionalCsgInfo;)Landroid/telephony/ClosedSubscriberGroupInfo;

    move-result-object v10

    invoke-direct/range {v0 .. v10}, Landroid/telephony/CellIdentityTdscdma;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/util/Collection;Landroid/telephony/ClosedSubscriberGroupInfo;)V

    :cond_5b
    return-object v0
.end method

.method public static blacklist convertHalCellIdentityWcdma(Landroid/hardware/radio/network/CellIdentityWcdma;)Landroid/telephony/CellIdentityWcdma;
    .registers 12

    .line 2794
    new-instance v0, Landroid/telephony/CellIdentityWcdma;

    iget v1, p0, Landroid/hardware/radio/network/CellIdentityWcdma;->lac:I

    iget v2, p0, Landroid/hardware/radio/network/CellIdentityWcdma;->cid:I

    iget v3, p0, Landroid/hardware/radio/network/CellIdentityWcdma;->psc:I

    iget v4, p0, Landroid/hardware/radio/network/CellIdentityWcdma;->uarfcn:I

    iget-object v5, p0, Landroid/hardware/radio/network/CellIdentityWcdma;->mcc:Ljava/lang/String;

    iget-object v6, p0, Landroid/hardware/radio/network/CellIdentityWcdma;->mnc:Ljava/lang/String;

    iget-object v7, p0, Landroid/hardware/radio/network/CellIdentityWcdma;->operatorNames:Landroid/hardware/radio/network/OperatorInfo;

    move-object v8, v7

    iget-object v7, v8, Landroid/hardware/radio/network/OperatorInfo;->alphaLong:Ljava/lang/String;

    iget-object v8, v8, Landroid/hardware/radio/network/OperatorInfo;->alphaShort:Ljava/lang/String;

    iget-object v9, p0, Landroid/hardware/radio/network/CellIdentityWcdma;->additionalPlmns:[Ljava/lang/String;

    .line 2796
    invoke-static {v9}, Lcom/android/internal/telephony/RILUtils;->primitiveArrayToArrayList([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    iget-object p0, p0, Landroid/hardware/radio/network/CellIdentityWcdma;->csgInfo:Landroid/hardware/radio/network/ClosedSubscriberGroupInfo;

    .line 2797
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalClosedSubscriberGroupInfo(Landroid/hardware/radio/network/ClosedSubscriberGroupInfo;)Landroid/telephony/ClosedSubscriberGroupInfo;

    move-result-object v10

    invoke-direct/range {v0 .. v10}, Landroid/telephony/CellIdentityWcdma;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Landroid/telephony/ClosedSubscriberGroupInfo;)V

    return-object v0
.end method

.method public static blacklist convertHalCellIdentityWcdma(Ljava/lang/Object;)Landroid/telephony/CellIdentityWcdma;
    .registers 12

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 2769
    :cond_4
    instance-of v1, p0, Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    if-eqz v1, :cond_2f

    .line 2770
    check-cast p0, Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    .line 2772
    new-instance v0, Landroid/telephony/CellIdentityWcdma;

    iget-object v1, p0, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_0/CellIdentityWcdma;

    move-object v2, v1

    iget v1, v2, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->lac:I

    move-object v3, v2

    iget v2, v3, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->cid:I

    move-object v4, v3

    iget v3, v4, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->psc:I

    move-object v5, v4

    iget v4, v5, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->uarfcn:I

    move-object v6, v5

    iget-object v5, v6, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->mcc:Ljava/lang/String;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->mnc:Ljava/lang/String;

    iget-object p0, p0, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    iget-object v7, p0, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    iget-object v8, p0, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Landroid/telephony/CellIdentityWcdma;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Landroid/telephony/ClosedSubscriberGroupInfo;)V

    return-object v0

    .line 2775
    :cond_2f
    instance-of v1, p0, Landroid/hardware/radio/V1_5/CellIdentityWcdma;

    if-eqz v1, :cond_5e

    .line 2776
    check-cast p0, Landroid/hardware/radio/V1_5/CellIdentityWcdma;

    .line 2778
    new-instance v0, Landroid/telephony/CellIdentityWcdma;

    iget-object v1, p0, Landroid/hardware/radio/V1_5/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v2, v1, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->base:Landroid/hardware/radio/V1_0/CellIdentityWcdma;

    move-object v3, v1

    iget v1, v2, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->lac:I

    move-object v4, v2

    iget v2, v4, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->cid:I

    move-object v5, v3

    iget v3, v4, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->psc:I

    move-object v6, v4

    iget v4, v6, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->uarfcn:I

    move-object v7, v5

    iget-object v5, v6, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->mcc:Ljava/lang/String;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/CellIdentityWcdma;->mnc:Ljava/lang/String;

    iget-object v7, v7, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->operatorNames:Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;

    move-object v8, v7

    iget-object v7, v8, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaLong:Ljava/lang/String;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/CellIdentityOperatorNames;->alphaShort:Ljava/lang/String;

    iget-object v9, p0, Landroid/hardware/radio/V1_5/CellIdentityWcdma;->additionalPlmns:Ljava/util/ArrayList;

    iget-object p0, p0, Landroid/hardware/radio/V1_5/CellIdentityWcdma;->optionalCsgInfo:Landroid/hardware/radio/V1_5/OptionalCsgInfo;

    .line 2781
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalClosedSubscriberGroupInfo(Landroid/hardware/radio/V1_5/OptionalCsgInfo;)Landroid/telephony/ClosedSubscriberGroupInfo;

    move-result-object v10

    invoke-direct/range {v0 .. v10}, Landroid/telephony/CellIdentityWcdma;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Landroid/telephony/ClosedSubscriberGroupInfo;)V

    :cond_5e
    return-object v0
.end method

.method private static blacklist convertHalCellInfo(Landroid/hardware/radio/network/CellInfo;J)Landroid/telephony/CellInfo;
    .registers 12

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 2529
    :cond_4
    iget v2, p0, Landroid/hardware/radio/network/CellInfo;->connectionStatus:I

    .line 2530
    iget-boolean v3, p0, Landroid/hardware/radio/network/CellInfo;->registered:Z

    .line 2531
    iget-object v1, p0, Landroid/hardware/radio/network/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/network/CellInfoRatSpecificInfo;

    invoke-virtual {v1}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->getTag()I

    move-result v1

    if-eqz v1, :cond_a4

    const/4 v4, 0x1

    if-eq v1, v4, :cond_8b

    const/4 v4, 0x2

    if-eq v1, v4, :cond_72

    const/4 v4, 0x3

    if-eq v1, v4, :cond_54

    const/4 v4, 0x4

    if-eq v1, v4, :cond_3b

    const/4 v4, 0x5

    if-eq v1, v4, :cond_20

    return-object v0

    .line 2538
    :cond_20
    iget-object p0, p0, Landroid/hardware/radio/network/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/network/CellInfoRatSpecificInfo;

    .line 2539
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->getCdma()Landroid/hardware/radio/network/CellInfoCdma;

    move-result-object p0

    .line 2540
    new-instance v1, Landroid/telephony/CellInfoCdma;

    iget-object v0, p0, Landroid/hardware/radio/network/CellInfoCdma;->cellIdentityCdma:Landroid/hardware/radio/network/CellIdentityCdma;

    .line 2541
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityCdma(Landroid/hardware/radio/network/CellIdentityCdma;)Landroid/telephony/CellIdentityCdma;

    move-result-object v6

    iget-object v0, p0, Landroid/hardware/radio/network/CellInfoCdma;->signalStrengthCdma:Landroid/hardware/radio/network/CdmaSignalStrength;

    iget-object p0, p0, Landroid/hardware/radio/network/CellInfoCdma;->signalStrengthEvdo:Landroid/hardware/radio/network/EvdoSignalStrength;

    .line 2542
    invoke-static {v0, p0}, Lcom/android/internal/telephony/RILUtils;->convertHalCdmaSignalStrength(Landroid/hardware/radio/network/CdmaSignalStrength;Landroid/hardware/radio/network/EvdoSignalStrength;)Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v7

    move-wide v4, p1

    invoke-direct/range {v1 .. v7}, Landroid/telephony/CellInfoCdma;-><init>(IZJLandroid/telephony/CellIdentityCdma;Landroid/telephony/CellSignalStrengthCdma;)V

    return-object v1

    :cond_3b
    move-wide v4, p1

    .line 2562
    iget-object p0, p0, Landroid/hardware/radio/network/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/network/CellInfoRatSpecificInfo;

    invoke-virtual {p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->getNr()Landroid/hardware/radio/network/CellInfoNr;

    move-result-object p0

    .line 2563
    new-instance v1, Landroid/telephony/CellInfoNr;

    iget-object p1, p0, Landroid/hardware/radio/network/CellInfoNr;->cellIdentityNr:Landroid/hardware/radio/network/CellIdentityNr;

    .line 2564
    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityNr(Landroid/hardware/radio/network/CellIdentityNr;)Landroid/telephony/CellIdentityNr;

    move-result-object v6

    iget-object p0, p0, Landroid/hardware/radio/network/CellInfoNr;->signalStrengthNr:Landroid/hardware/radio/network/NrSignalStrength;

    .line 2565
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalNrSignalStrength(Landroid/hardware/radio/network/NrSignalStrength;)Landroid/telephony/CellSignalStrengthNr;

    move-result-object v7

    invoke-direct/range {v1 .. v7}, Landroid/telephony/CellInfoNr;-><init>(IZJLandroid/telephony/CellIdentityNr;Landroid/telephony/CellSignalStrengthNr;)V

    return-object v1

    :cond_54
    move-wide v4, p1

    .line 2545
    iget-object p0, p0, Landroid/hardware/radio/network/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/network/CellInfoRatSpecificInfo;

    invoke-virtual {p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->getLte()Landroid/hardware/radio/network/CellInfoLte;

    move-result-object p0

    .line 2546
    new-instance v1, Landroid/telephony/CellInfoLte;

    iget-object p1, p0, Landroid/hardware/radio/network/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/network/CellIdentityLte;

    .line 2547
    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityLte(Landroid/hardware/radio/network/CellIdentityLte;)Landroid/telephony/CellIdentityLte;

    move-result-object v6

    iget-object p0, p0, Landroid/hardware/radio/network/CellInfoLte;->signalStrengthLte:Landroid/hardware/radio/network/LteSignalStrength;

    .line 2548
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalLteSignalStrength(Landroid/hardware/radio/network/LteSignalStrength;)Landroid/telephony/CellSignalStrengthLte;

    move-result-object v7

    new-instance v8, Landroid/telephony/CellConfigLte;

    invoke-direct {v8}, Landroid/telephony/CellConfigLte;-><init>()V

    invoke-direct/range {v1 .. v8}, Landroid/telephony/CellInfoLte;-><init>(IZJLandroid/telephony/CellIdentityLte;Landroid/telephony/CellSignalStrengthLte;Landroid/telephony/CellConfigLte;)V

    return-object v1

    :cond_72
    move-wide v4, p1

    .line 2556
    iget-object p0, p0, Landroid/hardware/radio/network/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/network/CellInfoRatSpecificInfo;

    .line 2557
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->getTdscdma()Landroid/hardware/radio/network/CellInfoTdscdma;

    move-result-object p0

    .line 2558
    new-instance v1, Landroid/telephony/CellInfoTdscdma;

    iget-object p1, p0, Landroid/hardware/radio/network/CellInfoTdscdma;->cellIdentityTdscdma:Landroid/hardware/radio/network/CellIdentityTdscdma;

    .line 2559
    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityTdscdma(Landroid/hardware/radio/network/CellIdentityTdscdma;)Landroid/telephony/CellIdentityTdscdma;

    move-result-object v6

    iget-object p0, p0, Landroid/hardware/radio/network/CellInfoTdscdma;->signalStrengthTdscdma:Landroid/hardware/radio/network/TdscdmaSignalStrength;

    .line 2560
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalTdscdmaSignalStrength(Landroid/hardware/radio/network/TdscdmaSignalStrength;)Landroid/telephony/CellSignalStrengthTdscdma;

    move-result-object v7

    invoke-direct/range {v1 .. v7}, Landroid/telephony/CellInfoTdscdma;-><init>(IZJLandroid/telephony/CellIdentityTdscdma;Landroid/telephony/CellSignalStrengthTdscdma;)V

    return-object v1

    :cond_8b
    move-wide v4, p1

    .line 2550
    iget-object p0, p0, Landroid/hardware/radio/network/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/network/CellInfoRatSpecificInfo;

    .line 2551
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->getWcdma()Landroid/hardware/radio/network/CellInfoWcdma;

    move-result-object p0

    .line 2552
    new-instance v1, Landroid/telephony/CellInfoWcdma;

    iget-object p1, p0, Landroid/hardware/radio/network/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/network/CellIdentityWcdma;

    .line 2553
    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityWcdma(Landroid/hardware/radio/network/CellIdentityWcdma;)Landroid/telephony/CellIdentityWcdma;

    move-result-object v6

    iget-object p0, p0, Landroid/hardware/radio/network/CellInfoWcdma;->signalStrengthWcdma:Landroid/hardware/radio/network/WcdmaSignalStrength;

    .line 2554
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalWcdmaSignalStrength(Landroid/hardware/radio/network/WcdmaSignalStrength;)Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v7

    invoke-direct/range {v1 .. v7}, Landroid/telephony/CellInfoWcdma;-><init>(IZJLandroid/telephony/CellIdentityWcdma;Landroid/telephony/CellSignalStrengthWcdma;)V

    return-object v1

    :cond_a4
    move-wide v4, p1

    .line 2533
    iget-object p0, p0, Landroid/hardware/radio/network/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/network/CellInfoRatSpecificInfo;

    invoke-virtual {p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->getGsm()Landroid/hardware/radio/network/CellInfoGsm;

    move-result-object p0

    .line 2534
    new-instance v1, Landroid/telephony/CellInfoGsm;

    iget-object p1, p0, Landroid/hardware/radio/network/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/network/CellIdentityGsm;

    .line 2535
    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityGsm(Landroid/hardware/radio/network/CellIdentityGsm;)Landroid/telephony/CellIdentityGsm;

    move-result-object v6

    iget-object p0, p0, Landroid/hardware/radio/network/CellInfoGsm;->signalStrengthGsm:Landroid/hardware/radio/network/GsmSignalStrength;

    .line 2536
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalGsmSignalStrength(Landroid/hardware/radio/network/GsmSignalStrength;)Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v7

    invoke-direct/range {v1 .. v7}, Landroid/telephony/CellInfoGsm;-><init>(IZJLandroid/telephony/CellIdentityGsm;Landroid/telephony/CellSignalStrengthGsm;)V

    return-object v1
.end method

.method private static blacklist convertHalCellInfo(Ljava/lang/Object;J)Landroid/telephony/CellInfo;
    .registers 27

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 2342
    :cond_6
    instance-of v2, v0, Landroid/hardware/radio/V1_4/CellInfo;

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v2, :cond_111

    .line 2343
    check-cast v0, Landroid/hardware/radio/V1_4/CellInfo;

    .line 2345
    iget v2, v0, Landroid/hardware/radio/V1_4/CellInfo;->connectionStatus:I

    .line 2346
    iget-boolean v9, v0, Landroid/hardware/radio/V1_4/CellInfo;->isRegistered:Z

    .line 2347
    iget-object v10, v0, Landroid/hardware/radio/V1_4/CellInfo;->info:Landroid/hardware/radio/V1_4/CellInfo$Info;

    invoke-virtual {v10}, Landroid/hardware/radio/V1_4/CellInfo$Info;->getDiscriminator()B

    move-result v10

    if-eqz v10, :cond_e4

    if-eq v10, v8, :cond_c0

    if-eq v10, v7, :cond_9d

    if-eq v10, v6, :cond_7d

    if-eq v10, v5, :cond_4d

    if-eq v10, v4, :cond_29

    return-object v1

    .line 2382
    :cond_29
    iget-object v0, v0, Landroid/hardware/radio/V1_4/CellInfo;->info:Landroid/hardware/radio/V1_4/CellInfo$Info;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_4/CellInfo$Info;->nr()Landroid/hardware/radio/V1_4/CellInfoNr;

    move-result-object v0

    .line 2383
    iget-object v4, v0, Landroid/hardware/radio/V1_4/CellInfoNr;->cellidentity:Landroid/hardware/radio/V1_4/CellIdentityNr;

    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityNr(Ljava/lang/Object;)Landroid/telephony/CellIdentityNr;

    move-result-object v4

    .line 2384
    iget-object v0, v0, Landroid/hardware/radio/V1_4/CellInfoNr;->signalStrength:Landroid/hardware/radio/V1_4/NrSignalStrength;

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalNrSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthNr;

    move-result-object v0

    move-object v6, v0

    move-object v0, v1

    move-object v5, v0

    move-object v8, v5

    move-object v10, v8

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object/from16 v16, v14

    move v7, v3

    move-object v15, v4

    :goto_48
    move-object/from16 v3, v16

    move-object v4, v3

    goto/16 :goto_105

    .line 2363
    :cond_4d
    iget-object v0, v0, Landroid/hardware/radio/V1_4/CellInfo;->info:Landroid/hardware/radio/V1_4/CellInfo$Info;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_4/CellInfo$Info;->lte()Landroid/hardware/radio/V1_4/CellInfoLte;

    move-result-object v0

    .line 2364
    iget-object v3, v0, Landroid/hardware/radio/V1_4/CellInfoLte;->base:Landroid/hardware/radio/V1_2/CellInfoLte;

    iget-object v3, v3, Landroid/hardware/radio/V1_2/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_2/CellIdentityLte;

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityLte(Ljava/lang/Object;)Landroid/telephony/CellIdentityLte;

    move-result-object v3

    .line 2365
    iget-object v4, v0, Landroid/hardware/radio/V1_4/CellInfoLte;->base:Landroid/hardware/radio/V1_2/CellInfoLte;

    iget-object v4, v4, Landroid/hardware/radio/V1_2/CellInfoLte;->signalStrengthLte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->convertHalLteSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthLte;

    move-result-object v4

    .line 2366
    new-instance v5, Landroid/telephony/CellConfigLte;

    iget-object v0, v0, Landroid/hardware/radio/V1_4/CellInfoLte;->cellConfig:Landroid/hardware/radio/V1_4/CellConfigLte;

    iget-boolean v0, v0, Landroid/hardware/radio/V1_4/CellConfigLte;->isEndcAvailable:Z

    invoke-direct {v5, v0}, Landroid/telephony/CellConfigLte;-><init>(Z)V

    move-object v0, v1

    move-object v8, v0

    move-object v10, v8

    move-object v12, v10

    move-object v13, v12

    move-object v15, v13

    move-object v11, v3

    move-object v14, v4

    move-object/from16 v16, v5

    move v7, v6

    move-object v3, v15

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    goto/16 :goto_105

    .line 2376
    :cond_7d
    iget-object v0, v0, Landroid/hardware/radio/V1_4/CellInfo;->info:Landroid/hardware/radio/V1_4/CellInfo$Info;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_4/CellInfo$Info;->tdscdma()Landroid/hardware/radio/V1_2/CellInfoTdscdma;

    move-result-object v0

    .line 2377
    iget-object v3, v0, Landroid/hardware/radio/V1_2/CellInfoTdscdma;->cellIdentityTdscdma:Landroid/hardware/radio/V1_2/CellIdentityTdscdma;

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityTdscdma(Ljava/lang/Object;)Landroid/telephony/CellIdentityTdscdma;

    move-result-object v3

    .line 2378
    iget-object v0, v0, Landroid/hardware/radio/V1_2/CellInfoTdscdma;->signalStrengthTdscdma:Landroid/hardware/radio/V1_2/TdscdmaSignalStrength;

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalTdscdmaSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthTdscdma;

    move-result-object v0

    move-object v5, v0

    move-object v0, v1

    move-object v6, v0

    move-object v8, v6

    move-object v10, v8

    move-object v11, v10

    move-object v12, v11

    move-object v14, v12

    move-object v15, v14

    move-object/from16 v16, v15

    move-object v13, v3

    move v7, v4

    goto :goto_48

    .line 2370
    :cond_9d
    iget-object v0, v0, Landroid/hardware/radio/V1_4/CellInfo;->info:Landroid/hardware/radio/V1_4/CellInfo$Info;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_4/CellInfo$Info;->wcdma()Landroid/hardware/radio/V1_2/CellInfoWcdma;

    move-result-object v0

    .line 2371
    iget-object v3, v0, Landroid/hardware/radio/V1_2/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityWcdma(Ljava/lang/Object;)Landroid/telephony/CellIdentityWcdma;

    move-result-object v3

    .line 2372
    iget-object v0, v0, Landroid/hardware/radio/V1_2/CellInfoWcdma;->signalStrengthWcdma:Landroid/hardware/radio/V1_2/WcdmaSignalStrength;

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalWcdmaSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v0

    move-object v4, v0

    move-object v0, v1

    move-object v6, v0

    move-object v8, v6

    move-object v10, v8

    move-object v11, v10

    move-object v13, v11

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object v12, v3

    move v7, v5

    move-object/from16 v3, v16

    move-object v5, v3

    goto :goto_105

    .line 2356
    :cond_c0
    iget-object v0, v0, Landroid/hardware/radio/V1_4/CellInfo;->info:Landroid/hardware/radio/V1_4/CellInfo$Info;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_4/CellInfo$Info;->cdma()Landroid/hardware/radio/V1_2/CellInfoCdma;

    move-result-object v0

    .line 2357
    iget-object v3, v0, Landroid/hardware/radio/V1_2/CellInfoCdma;->cellIdentityCdma:Landroid/hardware/radio/V1_2/CellIdentityCdma;

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityCdma(Ljava/lang/Object;)Landroid/telephony/CellIdentityCdma;

    move-result-object v3

    .line 2358
    iget-object v4, v0, Landroid/hardware/radio/V1_2/CellInfoCdma;->signalStrengthCdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    iget-object v0, v0, Landroid/hardware/radio/V1_2/CellInfoCdma;->signalStrengthEvdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    invoke-static {v4, v0}, Lcom/android/internal/telephony/RILUtils;->convertHalCdmaSignalStrength(Landroid/hardware/radio/V1_0/CdmaSignalStrength;Landroid/hardware/radio/V1_0/EvdoSignalStrength;)Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v0

    move-object v4, v1

    move-object v5, v4

    move-object v6, v5

    move-object v8, v6

    move-object v11, v8

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object v10, v3

    move-object v3, v0

    move-object/from16 v0, v16

    goto :goto_105

    .line 2350
    :cond_e4
    iget-object v0, v0, Landroid/hardware/radio/V1_4/CellInfo;->info:Landroid/hardware/radio/V1_4/CellInfo$Info;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_4/CellInfo$Info;->gsm()Landroid/hardware/radio/V1_2/CellInfoGsm;

    move-result-object v0

    .line 2351
    iget-object v3, v0, Landroid/hardware/radio/V1_2/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityGsm(Ljava/lang/Object;)Landroid/telephony/CellIdentityGsm;

    move-result-object v3

    .line 2352
    iget-object v0, v0, Landroid/hardware/radio/V1_2/CellInfoGsm;->signalStrengthGsm:Landroid/hardware/radio/V1_0/GsmSignalStrength;

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalGsmSignalStrength(Landroid/hardware/radio/V1_0/GsmSignalStrength;)Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v0

    move-object v4, v1

    move-object v5, v4

    move-object v6, v5

    move-object v10, v6

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move v7, v8

    move-object v8, v3

    move-object/from16 v3, v16

    :goto_105
    move-object/from16 v23, v0

    move-object/from16 v22, v8

    move/from16 v19, v9

    move-object/from16 v9, v16

    move-object v8, v3

    :goto_10e
    move v3, v2

    goto/16 :goto_2ca

    .line 2388
    :cond_111
    instance-of v2, v0, Landroid/hardware/radio/V1_5/CellInfo;

    if-eqz v2, :cond_213

    .line 2389
    check-cast v0, Landroid/hardware/radio/V1_5/CellInfo;

    .line 2391
    iget v2, v0, Landroid/hardware/radio/V1_5/CellInfo;->connectionStatus:I

    .line 2392
    iget-boolean v9, v0, Landroid/hardware/radio/V1_5/CellInfo;->registered:Z

    .line 2393
    iget-object v10, v0, Landroid/hardware/radio/V1_5/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;

    invoke-virtual {v10}, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->getDiscriminator()B

    move-result v10

    if-eqz v10, :cond_1e3

    if-eq v10, v8, :cond_1c0

    if-eq v10, v7, :cond_19f

    if-eq v10, v6, :cond_177

    if-eq v10, v5, :cond_154

    if-eq v10, v4, :cond_12e

    return-object v1

    .line 2404
    :cond_12e
    iget-object v0, v0, Landroid/hardware/radio/V1_5/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->cdma()Landroid/hardware/radio/V1_2/CellInfoCdma;

    move-result-object v0

    .line 2405
    iget-object v3, v0, Landroid/hardware/radio/V1_2/CellInfoCdma;->cellIdentityCdma:Landroid/hardware/radio/V1_2/CellIdentityCdma;

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityCdma(Ljava/lang/Object;)Landroid/telephony/CellIdentityCdma;

    move-result-object v3

    .line 2406
    iget-object v4, v0, Landroid/hardware/radio/V1_2/CellInfoCdma;->signalStrengthCdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    iget-object v0, v0, Landroid/hardware/radio/V1_2/CellInfoCdma;->signalStrengthEvdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    invoke-static {v4, v0}, Lcom/android/internal/telephony/RILUtils;->convertHalCdmaSignalStrength(Landroid/hardware/radio/V1_0/CdmaSignalStrength;Landroid/hardware/radio/V1_0/EvdoSignalStrength;)Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v0

    :goto_142
    move-object v4, v0

    move-object v0, v1

    move-object v5, v0

    move-object v6, v5

    move-object v8, v6

    move-object v11, v8

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object v10, v3

    move v3, v7

    move-object/from16 v7, v16

    goto/16 :goto_204

    .line 2436
    :cond_154
    iget-object v0, v0, Landroid/hardware/radio/V1_5/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->nr()Landroid/hardware/radio/V1_5/CellInfoNr;

    move-result-object v0

    .line 2437
    iget-object v4, v0, Landroid/hardware/radio/V1_5/CellInfoNr;->cellIdentityNr:Landroid/hardware/radio/V1_5/CellIdentityNr;

    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityNr(Ljava/lang/Object;)Landroid/telephony/CellIdentityNr;

    move-result-object v4

    .line 2438
    iget-object v0, v0, Landroid/hardware/radio/V1_5/CellInfoNr;->signalStrengthNr:Landroid/hardware/radio/V1_4/NrSignalStrength;

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalNrSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthNr;

    move-result-object v0

    move-object v7, v0

    move-object v0, v1

    move-object v5, v0

    move-object v6, v5

    move-object v8, v6

    move-object v10, v8

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object/from16 v16, v14

    move-object v15, v4

    :goto_173
    move-object/from16 v4, v16

    goto/16 :goto_204

    .line 2412
    :cond_177
    iget-object v0, v0, Landroid/hardware/radio/V1_5/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->lte()Landroid/hardware/radio/V1_5/CellInfoLte;

    move-result-object v0

    .line 2413
    iget-object v3, v0, Landroid/hardware/radio/V1_5/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_5/CellIdentityLte;

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityLte(Ljava/lang/Object;)Landroid/telephony/CellIdentityLte;

    move-result-object v3

    .line 2414
    iget-object v0, v0, Landroid/hardware/radio/V1_5/CellInfoLte;->signalStrengthLte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalLteSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthLte;

    move-result-object v0

    .line 2415
    new-instance v4, Landroid/telephony/CellConfigLte;

    invoke-direct {v4}, Landroid/telephony/CellConfigLte;-><init>()V

    :goto_18e
    move-object v14, v0

    move-object v0, v1

    move-object v5, v0

    move-object v7, v5

    move-object v8, v7

    move-object v10, v8

    move-object v12, v10

    move-object v13, v12

    move-object v15, v13

    move-object v11, v3

    move-object/from16 v16, v4

    move v3, v6

    move-object v4, v15

    move-object v6, v4

    goto/16 :goto_204

    .line 2428
    :cond_19f
    iget-object v0, v0, Landroid/hardware/radio/V1_5/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;

    .line 2429
    invoke-virtual {v0}, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->tdscdma()Landroid/hardware/radio/V1_5/CellInfoTdscdma;

    move-result-object v0

    .line 2430
    iget-object v3, v0, Landroid/hardware/radio/V1_5/CellInfoTdscdma;->cellIdentityTdscdma:Landroid/hardware/radio/V1_5/CellIdentityTdscdma;

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityTdscdma(Ljava/lang/Object;)Landroid/telephony/CellIdentityTdscdma;

    move-result-object v3

    .line 2431
    iget-object v0, v0, Landroid/hardware/radio/V1_5/CellInfoTdscdma;->signalStrengthTdscdma:Landroid/hardware/radio/V1_2/TdscdmaSignalStrength;

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalTdscdmaSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthTdscdma;

    move-result-object v0

    move-object v6, v0

    move-object v0, v1

    move-object v5, v0

    move-object v7, v5

    move-object v8, v7

    move-object v10, v8

    move-object v11, v10

    move-object v12, v11

    move-object v14, v12

    move-object v15, v14

    move-object/from16 v16, v15

    move-object v13, v3

    move v3, v4

    goto :goto_173

    .line 2420
    :cond_1c0
    iget-object v0, v0, Landroid/hardware/radio/V1_5/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;

    .line 2421
    invoke-virtual {v0}, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->wcdma()Landroid/hardware/radio/V1_5/CellInfoWcdma;

    move-result-object v0

    .line 2422
    iget-object v3, v0, Landroid/hardware/radio/V1_5/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_5/CellIdentityWcdma;

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityWcdma(Ljava/lang/Object;)Landroid/telephony/CellIdentityWcdma;

    move-result-object v3

    .line 2423
    iget-object v0, v0, Landroid/hardware/radio/V1_5/CellInfoWcdma;->signalStrengthWcdma:Landroid/hardware/radio/V1_2/WcdmaSignalStrength;

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalWcdmaSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v0

    :goto_1d2
    move-object v4, v1

    move-object v6, v4

    move-object v7, v6

    move-object v8, v7

    move-object v10, v8

    move-object v11, v10

    move-object v13, v11

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object v12, v3

    move v3, v5

    move-object v5, v0

    move-object/from16 v0, v16

    goto :goto_204

    .line 2397
    :cond_1e3
    iget-object v0, v0, Landroid/hardware/radio/V1_5/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;->gsm()Landroid/hardware/radio/V1_5/CellInfoGsm;

    move-result-object v0

    .line 2398
    iget-object v3, v0, Landroid/hardware/radio/V1_5/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_5/CellIdentityGsm;

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityGsm(Ljava/lang/Object;)Landroid/telephony/CellIdentityGsm;

    move-result-object v3

    .line 2399
    iget-object v0, v0, Landroid/hardware/radio/V1_5/CellInfoGsm;->signalStrengthGsm:Landroid/hardware/radio/V1_0/GsmSignalStrength;

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalGsmSignalStrength(Landroid/hardware/radio/V1_0/GsmSignalStrength;)Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v0

    :goto_1f5
    move v4, v8

    move-object v8, v3

    move v3, v4

    move-object v4, v1

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v10, v7

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    :goto_204
    move-object/from16 v23, v0

    move-object/from16 v22, v8

    move/from16 v19, v9

    move-object/from16 v9, v16

    move-object v8, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move v7, v3

    goto/16 :goto_10e

    .line 2442
    :cond_213
    instance-of v2, v0, Landroid/hardware/radio/V1_6/CellInfo;

    if-eqz v2, :cond_315

    .line 2443
    check-cast v0, Landroid/hardware/radio/V1_6/CellInfo;

    .line 2445
    iget v2, v0, Landroid/hardware/radio/V1_6/CellInfo;->connectionStatus:I

    .line 2446
    iget-boolean v9, v0, Landroid/hardware/radio/V1_6/CellInfo;->registered:Z

    .line 2447
    iget-object v10, v0, Landroid/hardware/radio/V1_6/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;

    invoke-virtual {v10}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->getDiscriminator()B

    move-result v10

    if-eqz v10, :cond_2b6

    if-eq v10, v8, :cond_2a2

    if-eq v10, v7, :cond_280

    if-eq v10, v6, :cond_267

    if-eq v10, v5, :cond_246

    if-eq v10, v4, :cond_230

    return-object v1

    .line 2458
    :cond_230
    iget-object v0, v0, Landroid/hardware/radio/V1_6/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->cdma()Landroid/hardware/radio/V1_2/CellInfoCdma;

    move-result-object v0

    .line 2459
    iget-object v3, v0, Landroid/hardware/radio/V1_2/CellInfoCdma;->cellIdentityCdma:Landroid/hardware/radio/V1_2/CellIdentityCdma;

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityCdma(Ljava/lang/Object;)Landroid/telephony/CellIdentityCdma;

    move-result-object v3

    .line 2460
    iget-object v4, v0, Landroid/hardware/radio/V1_2/CellInfoCdma;->signalStrengthCdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    iget-object v0, v0, Landroid/hardware/radio/V1_2/CellInfoCdma;->signalStrengthEvdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    invoke-static {v4, v0}, Lcom/android/internal/telephony/RILUtils;->convertHalCdmaSignalStrength(Landroid/hardware/radio/V1_0/CdmaSignalStrength;Landroid/hardware/radio/V1_0/EvdoSignalStrength;)Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v0

    goto/16 :goto_142

    .line 2490
    :cond_246
    iget-object v0, v0, Landroid/hardware/radio/V1_6/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->nr()Landroid/hardware/radio/V1_6/CellInfoNr;

    move-result-object v0

    .line 2491
    iget-object v4, v0, Landroid/hardware/radio/V1_6/CellInfoNr;->cellIdentityNr:Landroid/hardware/radio/V1_5/CellIdentityNr;

    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityNr(Ljava/lang/Object;)Landroid/telephony/CellIdentityNr;

    move-result-object v4

    .line 2492
    iget-object v0, v0, Landroid/hardware/radio/V1_6/CellInfoNr;->signalStrengthNr:Landroid/hardware/radio/V1_6/NrSignalStrength;

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalNrSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthNr;

    move-result-object v0

    move-object v7, v0

    move-object v0, v1

    move-object v5, v0

    move-object v6, v5

    move-object v8, v6

    move-object v10, v8

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object/from16 v16, v14

    move-object v15, v4

    goto/16 :goto_173

    .line 2466
    :cond_267
    iget-object v0, v0, Landroid/hardware/radio/V1_6/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->lte()Landroid/hardware/radio/V1_6/CellInfoLte;

    move-result-object v0

    .line 2467
    iget-object v3, v0, Landroid/hardware/radio/V1_6/CellInfoLte;->cellIdentityLte:Landroid/hardware/radio/V1_5/CellIdentityLte;

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityLte(Ljava/lang/Object;)Landroid/telephony/CellIdentityLte;

    move-result-object v3

    .line 2468
    iget-object v0, v0, Landroid/hardware/radio/V1_6/CellInfoLte;->signalStrengthLte:Landroid/hardware/radio/V1_6/LteSignalStrength;

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalLteSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthLte;

    move-result-object v0

    .line 2469
    new-instance v4, Landroid/telephony/CellConfigLte;

    invoke-direct {v4}, Landroid/telephony/CellConfigLte;-><init>()V

    goto/16 :goto_18e

    .line 2482
    :cond_280
    iget-object v0, v0, Landroid/hardware/radio/V1_6/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;

    .line 2483
    invoke-virtual {v0}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->tdscdma()Landroid/hardware/radio/V1_5/CellInfoTdscdma;

    move-result-object v0

    .line 2484
    iget-object v3, v0, Landroid/hardware/radio/V1_5/CellInfoTdscdma;->cellIdentityTdscdma:Landroid/hardware/radio/V1_5/CellIdentityTdscdma;

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityTdscdma(Ljava/lang/Object;)Landroid/telephony/CellIdentityTdscdma;

    move-result-object v3

    .line 2485
    iget-object v0, v0, Landroid/hardware/radio/V1_5/CellInfoTdscdma;->signalStrengthTdscdma:Landroid/hardware/radio/V1_2/TdscdmaSignalStrength;

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalTdscdmaSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthTdscdma;

    move-result-object v0

    move-object v6, v0

    move-object v0, v1

    move-object v5, v0

    move-object v7, v5

    move-object v8, v7

    move-object v10, v8

    move-object v11, v10

    move-object v12, v11

    move-object v14, v12

    move-object v15, v14

    move-object/from16 v16, v15

    move-object v13, v3

    move v3, v4

    goto/16 :goto_173

    .line 2474
    :cond_2a2
    iget-object v0, v0, Landroid/hardware/radio/V1_6/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;

    .line 2475
    invoke-virtual {v0}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->wcdma()Landroid/hardware/radio/V1_5/CellInfoWcdma;

    move-result-object v0

    .line 2476
    iget-object v3, v0, Landroid/hardware/radio/V1_5/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_5/CellIdentityWcdma;

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityWcdma(Ljava/lang/Object;)Landroid/telephony/CellIdentityWcdma;

    move-result-object v3

    .line 2477
    iget-object v0, v0, Landroid/hardware/radio/V1_5/CellInfoWcdma;->signalStrengthWcdma:Landroid/hardware/radio/V1_2/WcdmaSignalStrength;

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalWcdmaSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v0

    goto/16 :goto_1d2

    .line 2451
    :cond_2b6
    iget-object v0, v0, Landroid/hardware/radio/V1_6/CellInfo;->ratSpecificInfo:Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;->gsm()Landroid/hardware/radio/V1_5/CellInfoGsm;

    move-result-object v0

    .line 2452
    iget-object v3, v0, Landroid/hardware/radio/V1_5/CellInfoGsm;->cellIdentityGsm:Landroid/hardware/radio/V1_5/CellIdentityGsm;

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentityGsm(Ljava/lang/Object;)Landroid/telephony/CellIdentityGsm;

    move-result-object v3

    .line 2453
    iget-object v0, v0, Landroid/hardware/radio/V1_5/CellInfoGsm;->signalStrengthGsm:Landroid/hardware/radio/V1_0/GsmSignalStrength;

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalGsmSignalStrength(Landroid/hardware/radio/V1_0/GsmSignalStrength;)Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v0

    goto/16 :goto_1f5

    :goto_2ca
    packed-switch v7, :pswitch_data_316

    return-object v1

    .line 2513
    :pswitch_2ce
    new-instance v2, Landroid/telephony/CellInfoNr;

    move-object v8, v6

    move-object v7, v15

    move/from16 v4, v19

    move-wide/from16 v5, p1

    invoke-direct/range {v2 .. v8}, Landroid/telephony/CellInfoNr;-><init>(IZJLandroid/telephony/CellIdentityNr;Landroid/telephony/CellSignalStrengthNr;)V

    return-object v2

    :pswitch_2da
    move/from16 v4, v19

    .line 2510
    new-instance v2, Landroid/telephony/CellInfoTdscdma;

    move-object v8, v5

    move-object v7, v13

    move-wide/from16 v5, p1

    invoke-direct/range {v2 .. v8}, Landroid/telephony/CellInfoTdscdma;-><init>(IZJLandroid/telephony/CellIdentityTdscdma;Landroid/telephony/CellSignalStrengthTdscdma;)V

    return-object v2

    .line 2508
    :pswitch_2e6
    new-instance v2, Landroid/telephony/CellInfoWcdma;

    move-wide/from16 v5, p1

    move-object v8, v4

    move-object v7, v12

    move/from16 v4, v19

    invoke-direct/range {v2 .. v8}, Landroid/telephony/CellInfoWcdma;-><init>(IZJLandroid/telephony/CellIdentityWcdma;Landroid/telephony/CellSignalStrengthWcdma;)V

    return-object v2

    :pswitch_2f2
    move/from16 v4, v19

    .line 2506
    new-instance v2, Landroid/telephony/CellInfoLte;

    move-wide/from16 v5, p1

    move-object v7, v11

    move-object v8, v14

    invoke-direct/range {v2 .. v9}, Landroid/telephony/CellInfoLte;-><init>(IZJLandroid/telephony/CellIdentityLte;Landroid/telephony/CellSignalStrengthLte;Landroid/telephony/CellConfigLte;)V

    return-object v2

    :pswitch_2fe
    move/from16 v4, v19

    .line 2504
    new-instance v2, Landroid/telephony/CellInfoCdma;

    move-wide/from16 v5, p1

    move-object v7, v10

    invoke-direct/range {v2 .. v8}, Landroid/telephony/CellInfoCdma;-><init>(IZJLandroid/telephony/CellIdentityCdma;Landroid/telephony/CellSignalStrengthCdma;)V

    return-object v2

    :pswitch_309
    move/from16 v4, v19

    .line 2502
    new-instance v17, Landroid/telephony/CellInfoGsm;

    move-wide/from16 v20, p1

    move/from16 v18, v3

    invoke-direct/range {v17 .. v23}, Landroid/telephony/CellInfoGsm;-><init>(IZJLandroid/telephony/CellIdentityGsm;Landroid/telephony/CellSignalStrengthGsm;)V

    return-object v17

    :cond_315
    return-object v1

    :pswitch_data_316
    .packed-switch 0x1
        :pswitch_309
        :pswitch_2fe
        :pswitch_2f2
        :pswitch_2e6
        :pswitch_2da
        :pswitch_2ce
    .end packed-switch
.end method

.method public static blacklist convertHalCellInfoList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .line 2293
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2294
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_29

    .line 2295
    :cond_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    .line 2296
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_19
    if-ge v4, v3, :cond_29

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    .line 2297
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/RILUtils;->convertHalCellInfo(Ljava/lang/Object;J)Landroid/telephony/CellInfo;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_29
    :goto_29
    return-object v0
.end method

.method public static blacklist convertHalCellInfoList([Landroid/hardware/radio/network/CellInfo;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/hardware/radio/network/CellInfo;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .line 2309
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2310
    array-length v1, p0

    if-nez v1, :cond_a

    goto :goto_1e

    .line 2311
    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    .line 2312
    array-length v3, p0

    const/4 v4, 0x0

    :goto_10
    if-ge v4, v3, :cond_1e

    aget-object v5, p0, v4

    .line 2313
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/RILUtils;->convertHalCellInfo(Landroid/hardware/radio/network/CellInfo;J)Landroid/telephony/CellInfo;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_1e
    :goto_1e
    return-object v0
.end method

.method private static blacklist convertHalClosedSubscriberGroupInfo(Landroid/hardware/radio/V1_5/OptionalCsgInfo;)Landroid/telephony/ClosedSubscriberGroupInfo;
    .registers 4

    .line 3150
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/OptionalCsgInfo;->getDiscriminator()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_d

    .line 3152
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/OptionalCsgInfo;->csgInfo()Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;

    move-result-object p0

    goto :goto_e

    :cond_d
    move-object p0, v2

    :goto_e
    if-nez p0, :cond_11

    return-object v2

    .line 3154
    :cond_11
    new-instance v0, Landroid/telephony/ClosedSubscriberGroupInfo;

    iget-boolean v1, p0, Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;->csgIndication:Z

    iget-object v2, p0, Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;->homeNodebName:Ljava/lang/String;

    iget p0, p0, Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;->csgIdentity:I

    invoke-direct {v0, v1, v2, p0}, Landroid/telephony/ClosedSubscriberGroupInfo;-><init>(ZLjava/lang/String;I)V

    return-object v0
.end method

.method private static blacklist convertHalClosedSubscriberGroupInfo(Landroid/hardware/radio/network/ClosedSubscriberGroupInfo;)Landroid/telephony/ClosedSubscriberGroupInfo;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 3161
    :cond_4
    new-instance v0, Landroid/telephony/ClosedSubscriberGroupInfo;

    iget-boolean v1, p0, Landroid/hardware/radio/network/ClosedSubscriberGroupInfo;->csgIndication:Z

    iget-object v2, p0, Landroid/hardware/radio/network/ClosedSubscriberGroupInfo;->homeNodebName:Ljava/lang/String;

    iget p0, p0, Landroid/hardware/radio/network/ClosedSubscriberGroupInfo;->csgIdentity:I

    invoke-direct {v0, v1, v2, p0}, Landroid/telephony/ClosedSubscriberGroupInfo;-><init>(ZLjava/lang/String;I)V

    return-object v0
.end method

.method public static blacklist convertHalConnectionFailureReason(I)I
    .registers 1

    .line 0
    packed-switch p0, :pswitch_data_1c

    const p0, 0xffff

    return p0

    :pswitch_7
    const/16 p0, 0x9

    return p0

    :pswitch_a
    const/16 p0, 0x8

    return p0

    :pswitch_d
    const/4 p0, 0x7

    return p0

    :pswitch_f
    const/4 p0, 0x6

    return p0

    :pswitch_11
    const/4 p0, 0x5

    return p0

    :pswitch_13
    const/4 p0, 0x4

    return p0

    :pswitch_15
    const/4 p0, 0x3

    return p0

    :pswitch_17
    const/4 p0, 0x2

    return p0

    :pswitch_19
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_19
        :pswitch_17
        :pswitch_15
        :pswitch_13
        :pswitch_11
        :pswitch_f
        :pswitch_d
        :pswitch_a
        :pswitch_7
    .end packed-switch
.end method

.method public static blacklist convertHalDataCallResult(Landroid/hardware/radio/data/SetupDataCallResult;)Landroid/telephony/data/DataCallResponse;
    .registers 15

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    .line 3446
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3447
    iget-object v0, p0, Landroid/hardware/radio/data/SetupDataCallResult;->addresses:[Landroid/hardware/radio/data/LinkAddress;

    const/4 v3, 0x0

    if-eqz v0, :cond_26

    .line 3448
    array-length v4, v0

    move v5, v3

    :goto_10
    if-ge v5, v4, :cond_26

    aget-object v6, v0, v5

    .line 3449
    iget-object v7, v6, Landroid/hardware/radio/data/LinkAddress;->address:Ljava/lang/String;

    iget v8, v6, Landroid/hardware/radio/data/LinkAddress;->addressProperties:I

    iget-wide v9, v6, Landroid/hardware/radio/data/LinkAddress;->deprecationTime:J

    iget-wide v11, v6, Landroid/hardware/radio/data/LinkAddress;->expirationTime:J

    invoke-static/range {v7 .. v12}, Lcom/android/internal/telephony/RILUtils;->convertToLinkAddress(Ljava/lang/String;IJJ)Landroid/net/LinkAddress;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 3453
    :cond_26
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3454
    iget-object v5, p0, Landroid/hardware/radio/data/SetupDataCallResult;->dnses:[Ljava/lang/String;

    const-string v6, "RILUtils"

    if-eqz v5, :cond_5b

    .line 3455
    array-length v7, v5

    move v8, v3

    :goto_33
    if-ge v8, v7, :cond_5b

    aget-object v0, v5, v8

    .line 3456
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 3459
    :try_start_3b
    invoke-static {v9}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 3460
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_42
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3b .. :try_end_42} :catch_43

    goto :goto_58

    :catch_43
    move-exception v0

    .line 3462
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown dns: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_58
    add-int/lit8 v8, v8, 0x1

    goto :goto_33

    .line 3466
    :cond_5b
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3467
    iget-object v7, p0, Landroid/hardware/radio/data/SetupDataCallResult;->gateways:[Ljava/lang/String;

    if-eqz v7, :cond_8e

    .line 3468
    array-length v8, v7

    move v9, v3

    :goto_66
    if-ge v9, v8, :cond_8e

    aget-object v0, v7, v9

    .line 3469
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 3472
    :try_start_6e
    invoke-static {v10}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 3473
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_75
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6e .. :try_end_75} :catch_76

    goto :goto_8b

    :catch_76
    move-exception v0

    .line 3475
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown gateway: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_8b
    add-int/lit8 v9, v9, 0x1

    goto :goto_66

    .line 3479
    :cond_8e
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3480
    iget-object v8, p0, Landroid/hardware/radio/data/SetupDataCallResult;->pcscf:[Ljava/lang/String;

    if-eqz v8, :cond_c1

    .line 3481
    array-length v9, v8

    move v10, v3

    :goto_99
    if-ge v10, v9, :cond_c1

    aget-object v0, v8, v10

    .line 3482
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 3485
    :try_start_a1
    invoke-static {v11}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 3486
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a1 .. :try_end_a8} :catch_a9

    goto :goto_be

    :catch_a9
    move-exception v0

    .line 3488
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown pcscf: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_be
    add-int/lit8 v10, v10, 0x1

    goto :goto_99

    .line 3492
    :cond_c1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3493
    iget-object v0, p0, Landroid/hardware/radio/data/SetupDataCallResult;->qosSessions:[Landroid/hardware/radio/data/QosSession;

    if-eqz v0, :cond_da

    .line 3494
    array-length v8, v0

    move v9, v3

    :goto_cc
    if-ge v9, v8, :cond_da

    aget-object v10, v0, v9

    .line 3495
    invoke-static {v10}, Lcom/android/internal/telephony/RILUtils;->convertHalQosBearerSession(Landroid/hardware/radio/data/QosSession;)Landroid/telephony/data/QosBearerSession;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_cc

    .line 3498
    :cond_da
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3499
    iget-object v9, p0, Landroid/hardware/radio/data/SetupDataCallResult;->trafficDescriptors:[Landroid/hardware/radio/data/TrafficDescriptor;

    if-eqz v9, :cond_108

    .line 3500
    array-length v10, v9

    :goto_e4
    if-ge v3, v10, :cond_108

    aget-object v0, v9, v3

    .line 3502
    :try_start_e8
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalTrafficDescriptor(Landroid/hardware/radio/data/TrafficDescriptor;)Landroid/telephony/data/TrafficDescriptor;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_ef
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e8 .. :try_end_ef} :catch_f0

    goto :goto_105

    :catch_f0
    move-exception v0

    .line 3504
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "convertHalDataCallResult: Failed to convert traffic descriptor. e="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->loge(Ljava/lang/String;)V

    :goto_105
    add-int/lit8 v3, v3, 0x1

    goto :goto_e4

    .line 3509
    :cond_108
    new-instance v0, Landroid/telephony/data/DataCallResponse$Builder;

    invoke-direct {v0}, Landroid/telephony/data/DataCallResponse$Builder;-><init>()V

    iget v3, p0, Landroid/hardware/radio/data/SetupDataCallResult;->cause:I

    .line 3510
    invoke-virtual {v0, v3}, Landroid/telephony/data/DataCallResponse$Builder;->setCause(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    iget-wide v9, p0, Landroid/hardware/radio/data/SetupDataCallResult;->suggestedRetryTime:J

    .line 3511
    invoke-virtual {v0, v9, v10}, Landroid/telephony/data/DataCallResponse$Builder;->setRetryDurationMillis(J)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    iget v3, p0, Landroid/hardware/radio/data/SetupDataCallResult;->cid:I

    .line 3512
    invoke-virtual {v0, v3}, Landroid/telephony/data/DataCallResponse$Builder;->setId(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    iget v3, p0, Landroid/hardware/radio/data/SetupDataCallResult;->active:I

    .line 3513
    invoke-virtual {v0, v3}, Landroid/telephony/data/DataCallResponse$Builder;->setLinkStatus(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    iget v3, p0, Landroid/hardware/radio/data/SetupDataCallResult;->type:I

    .line 3514
    invoke-virtual {v0, v3}, Landroid/telephony/data/DataCallResponse$Builder;->setProtocolType(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    iget-object v3, p0, Landroid/hardware/radio/data/SetupDataCallResult;->ifname:Ljava/lang/String;

    .line 3515
    invoke-virtual {v0, v3}, Landroid/telephony/data/DataCallResponse$Builder;->setInterfaceName(Ljava/lang/String;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 3516
    invoke-virtual {v0, v2}, Landroid/telephony/data/DataCallResponse$Builder;->setAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 3517
    invoke-virtual {v0, v4}, Landroid/telephony/data/DataCallResponse$Builder;->setDnsAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 3518
    invoke-virtual {v0, v5}, Landroid/telephony/data/DataCallResponse$Builder;->setGatewayAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 3519
    invoke-virtual {v0, v7}, Landroid/telephony/data/DataCallResponse$Builder;->setPcscfAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    iget v2, p0, Landroid/hardware/radio/data/SetupDataCallResult;->mtuV4:I

    iget v3, p0, Landroid/hardware/radio/data/SetupDataCallResult;->mtuV6:I

    .line 3520
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/data/DataCallResponse$Builder;->setMtu(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    iget v2, p0, Landroid/hardware/radio/data/SetupDataCallResult;->mtuV4:I

    .line 3521
    invoke-virtual {v0, v2}, Landroid/telephony/data/DataCallResponse$Builder;->setMtuV4(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    iget v2, p0, Landroid/hardware/radio/data/SetupDataCallResult;->mtuV6:I

    .line 3522
    invoke-virtual {v0, v2}, Landroid/telephony/data/DataCallResponse$Builder;->setMtuV6(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    iget-byte v2, p0, Landroid/hardware/radio/data/SetupDataCallResult;->handoverFailureMode:B

    .line 3523
    invoke-virtual {v0, v2}, Landroid/telephony/data/DataCallResponse$Builder;->setHandoverFailureMode(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    iget v2, p0, Landroid/hardware/radio/data/SetupDataCallResult;->pduSessionId:I

    .line 3524
    invoke-virtual {v0, v2}, Landroid/telephony/data/DataCallResponse$Builder;->setPduSessionId(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    iget-object v2, p0, Landroid/hardware/radio/data/SetupDataCallResult;->defaultQos:Landroid/hardware/radio/data/Qos;

    .line 3525
    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->convertHalQos(Landroid/hardware/radio/data/Qos;)Landroid/telephony/data/Qos;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/telephony/data/DataCallResponse$Builder;->setDefaultQos(Landroid/telephony/data/Qos;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 3526
    invoke-virtual {v0, v6}, Landroid/telephony/data/DataCallResponse$Builder;->setQosBearerSessions(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 3527
    iget-object p0, p0, Landroid/hardware/radio/data/SetupDataCallResult;->sliceInfo:Landroid/hardware/radio/data/SliceInfo;

    if-nez p0, :cond_178

    goto :goto_17c

    .line 3528
    :cond_178
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalSliceInfo(Landroid/hardware/radio/data/SliceInfo;)Landroid/telephony/data/NetworkSliceInfo;

    move-result-object v1

    .line 3527
    :goto_17c
    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setSliceInfo(Landroid/telephony/data/NetworkSliceInfo;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object p0

    .line 3529
    invoke-virtual {p0, v8}, Landroid/telephony/data/DataCallResponse$Builder;->setTrafficDescriptors(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object p0

    .line 3530
    invoke-virtual {p0}, Landroid/telephony/data/DataCallResponse$Builder;->build()Landroid/telephony/data/DataCallResponse;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist convertHalDataCallResult(Ljava/lang/Object;)Landroid/telephony/data/DataCallResponse;
    .registers 31

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 3289
    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3290
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3292
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3294
    instance-of v5, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;

    const/4 v6, 0x0

    if-eqz v5, :cond_8c

    .line 3295
    check-cast v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;

    .line 3297
    iget v5, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->cause:I

    .line 3298
    iget v7, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->suggestedRetryTime:I

    int-to-long v7, v7

    .line 3299
    iget v9, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->cid:I

    .line 3300
    iget v10, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->active:I

    .line 3301
    iget v11, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->type:I

    .line 3302
    iget-object v12, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->ifname:Ljava/lang/String;

    .line 3303
    iget-object v13, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->addresses:Ljava/util/ArrayList;

    new-array v14, v6, [Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    .line 3304
    iget-object v14, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    new-array v15, v6, [Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    .line 3305
    iget-object v15, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->gateways:Ljava/util/ArrayList;

    move-object/from16 v16, v1

    new-array v1, v6, [Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 3306
    iget-object v15, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->pcscf:Ljava/util/ArrayList;

    move-object/from16 p0, v1

    new-array v1, v6, [Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 3307
    iget v0, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->mtu:I

    if-eqz v13, :cond_6c

    .line 3309
    array-length v15, v13

    :goto_5a
    if-ge v6, v15, :cond_6c

    aget-object v18, v13, v6

    move/from16 v19, v0

    .line 3310
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/RILUtils;->convertToLinkAddress(Ljava/lang/String;)Landroid/net/LinkAddress;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    move/from16 v0, v19

    goto :goto_5a

    :cond_6c
    move/from16 v19, v0

    move-object/from16 v18, v3

    move/from16 v6, v19

    move v13, v6

    move v15, v13

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v3, v1

    move-object/from16 v19, v16

    move-object/from16 v1, p0

    move-object/from16 p0, v4

    :goto_7f
    move-wide/from16 v28, v7

    move-object v7, v2

    move v8, v11

    move-object v2, v12

    move-object v11, v14

    move v12, v9

    move v14, v10

    move v9, v5

    move-wide/from16 v4, v28

    goto/16 :goto_1e4

    :cond_8c
    move-object/from16 v16, v1

    .line 3313
    instance-of v1, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;

    if-eqz v1, :cond_f4

    .line 3314
    check-cast v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;

    .line 3316
    iget v5, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->cause:I

    .line 3317
    iget v1, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->suggestedRetryTime:I

    int-to-long v7, v1

    .line 3318
    iget v9, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->cid:I

    .line 3319
    iget v10, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->active:I

    .line 3320
    iget v11, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->type:I

    .line 3321
    iget-object v12, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->ifname:Ljava/lang/String;

    .line 3322
    iget-object v1, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->addresses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 3324
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/List;

    .line 3325
    iget-object v1, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    const/4 v6, 0x0

    new-array v13, v6, [Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, [Ljava/lang/String;

    .line 3326
    iget-object v1, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->gateways:Ljava/util/ArrayList;

    new-array v13, v6, [Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 3327
    iget-object v13, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->pcscf:Ljava/util/ArrayList;

    new-array v15, v6, [Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 3328
    iget v13, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->mtuV4:I

    iget v15, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->mtuV6:I

    invoke-static {v13, v15}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 3329
    iget v15, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->mtuV4:I

    .line 3330
    iget v0, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->mtuV6:I

    move-object/from16 v18, v3

    move-object/from16 p0, v4

    move-object v3, v6

    move-object/from16 v19, v16

    const/16 v20, 0x0

    const/16 v21, 0x0

    move v6, v0

    goto :goto_7f

    .line 3331
    :cond_f4
    instance-of v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;

    if-eqz v1, :cond_313

    .line 3332
    check-cast v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;

    .line 3334
    iget v5, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->cause:I

    .line 3335
    iget-wide v7, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->suggestedRetryTime:J

    .line 3336
    iget v9, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->cid:I

    .line 3337
    iget v10, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->active:I

    .line 3338
    iget v11, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->type:I

    .line 3339
    iget-object v12, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->ifname:Ljava/lang/String;

    .line 3340
    iget-object v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->addresses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 3342
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/List;

    .line 3343
    iget-object v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    const/4 v6, 0x0

    new-array v3, v6, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, [Ljava/lang/String;

    .line 3344
    iget-object v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->gateways:Ljava/util/ArrayList;

    new-array v3, v6, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 3345
    iget-object v3, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->pcscf:Ljava/util/ArrayList;

    new-array v13, v6, [Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 3346
    iget v13, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->mtuV4:I

    iget v15, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->mtuV6:I

    invoke-static {v13, v15}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 3347
    iget v15, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->mtuV4:I

    .line 3348
    iget v6, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->mtuV6:I

    move-object/from16 p0, v1

    .line 3349
    iget-byte v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->handoverFailureMode:B

    move/from16 v18, v1

    .line 3350
    iget v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->pduSessionId:I

    move/from16 v19, v1

    .line 3351
    iget-object v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->defaultQos:Landroid/hardware/radio/V1_6/Qos;

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertHalQos(Landroid/hardware/radio/V1_6/Qos;)Landroid/telephony/data/Qos;

    move-result-object v1

    move-object/from16 v20, v1

    .line 3352
    iget-object v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->qosSessions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    move-object/from16 v21, v2

    new-instance v2, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 3353
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 3355
    iget-object v2, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->sliceInfo:Landroid/hardware/radio/V1_6/OptionalSliceInfo;

    .line 3354
    invoke-virtual {v2}, Landroid/hardware/radio/V1_6/OptionalSliceInfo;->getDiscriminator()B

    move-result v2

    if-nez v2, :cond_182

    goto :goto_18e

    .line 3356
    :cond_182
    iget-object v2, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->sliceInfo:Landroid/hardware/radio/V1_6/OptionalSliceInfo;

    invoke-virtual {v2}, Landroid/hardware/radio/V1_6/OptionalSliceInfo;->value()Landroid/hardware/radio/V1_6/SliceInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->convertHalSliceInfo(Landroid/hardware/radio/V1_6/SliceInfo;)Landroid/telephony/data/NetworkSliceInfo;

    move-result-object v2

    move-object/from16 v16, v2

    .line 3357
    :goto_18e
    iget-object v2, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->trafficDescriptors:Ljava/util/ArrayList;

    move-object/from16 v22, v1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_197
    if-ge v0, v1, :cond_1cd

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    add-int/lit8 v24, v0, 0x1

    check-cast v23, Landroid/hardware/radio/V1_6/TrafficDescriptor;

    .line 3359
    :try_start_1a1
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/RILUtils;->convertHalTrafficDescriptor(Landroid/hardware/radio/V1_6/TrafficDescriptor;)Landroid/telephony/data/TrafficDescriptor;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1a8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a1 .. :try_end_1a8} :catch_1ad

    move/from16 v23, v1

    move-object/from16 v25, v2

    goto :goto_1c6

    :catch_1ad
    move-exception v0

    move/from16 v23, v1

    .line 3361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v2

    const-string v2, "convertHalDataCallResult: Failed to convert traffic descriptor. e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->loge(Ljava/lang/String;)V

    :goto_1c6
    move/from16 v1, v23

    move/from16 v0, v24

    move-object/from16 v2, v25

    goto :goto_197

    :cond_1cd
    move-object/from16 v1, v20

    move/from16 v20, v19

    move-object/from16 v19, v1

    move-object/from16 v1, p0

    move-object/from16 p0, v4

    move-object v2, v12

    move v12, v9

    move v9, v5

    move-wide v4, v7

    move v8, v11

    move-object v11, v14

    move-object/from16 v7, v21

    move v14, v10

    move/from16 v21, v18

    move-object/from16 v18, v22

    .line 3370
    :goto_1e4
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move/from16 v22, v6

    .line 3371
    const-string v6, "RILUtils"

    move/from16 v23, v15

    if-eqz v11, :cond_22b

    .line 3372
    array-length v15, v11

    move-object/from16 v24, v11

    const/4 v11, 0x0

    :goto_1f5
    if-ge v11, v15, :cond_22b

    aget-object v0, v24, v11

    move/from16 v25, v11

    .line 3373
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 3376
    :try_start_1ff
    invoke-static {v11}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 3377
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_206
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1ff .. :try_end_206} :catch_20b

    move/from16 v27, v13

    move/from16 v26, v15

    goto :goto_224

    :catch_20b
    move-exception v0

    move/from16 v26, v15

    .line 3379
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v27, v13

    const-string v13, "Unknown dns: "

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_224
    add-int/lit8 v11, v25, 0x1

    move/from16 v15, v26

    move/from16 v13, v27

    goto :goto_1f5

    :cond_22b
    move/from16 v27, v13

    .line 3385
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_26c

    .line 3387
    array-length v13, v1

    const/4 v15, 0x0

    :goto_236
    if-ge v15, v13, :cond_26c

    aget-object v0, v1, v15

    move-object/from16 v24, v1

    .line 3388
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 3391
    :try_start_240
    invoke-static {v1}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 3392
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_247
    .catch Ljava/lang/IllegalArgumentException; {:try_start_240 .. :try_end_247} :catch_24c

    move/from16 v25, v13

    move/from16 v26, v15

    goto :goto_265

    :catch_24c
    move-exception v0

    move/from16 v25, v13

    .line 3394
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v26, v15

    const-string v15, "Unknown gateway: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_265
    add-int/lit8 v15, v26, 0x1

    move-object/from16 v1, v24

    move/from16 v13, v25

    goto :goto_236

    .line 3400
    :cond_26c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v3, :cond_2ab

    .line 3402
    array-length v13, v3

    const/4 v15, 0x0

    :goto_275
    if-ge v15, v13, :cond_2ab

    aget-object v0, v3, v15

    move-object/from16 v17, v3

    .line 3403
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 3406
    :try_start_27f
    invoke-static {v3}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 3407
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_286
    .catch Ljava/lang/IllegalArgumentException; {:try_start_27f .. :try_end_286} :catch_28b

    move/from16 v24, v13

    move/from16 v25, v15

    goto :goto_2a4

    :catch_28b
    move-exception v0

    move/from16 v24, v13

    .line 3409
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v25, v15

    const-string v15, "Unknown pcscf: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2a4
    add-int/lit8 v15, v25, 0x1

    move-object/from16 v3, v17

    move/from16 v13, v24

    goto :goto_275

    .line 3414
    :cond_2ab
    new-instance v0, Landroid/telephony/data/DataCallResponse$Builder;

    invoke-direct {v0}, Landroid/telephony/data/DataCallResponse$Builder;-><init>()V

    .line 3415
    invoke-virtual {v0, v9}, Landroid/telephony/data/DataCallResponse$Builder;->setCause(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 3416
    invoke-virtual {v0, v4, v5}, Landroid/telephony/data/DataCallResponse$Builder;->setRetryDurationMillis(J)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 3417
    invoke-virtual {v0, v12}, Landroid/telephony/data/DataCallResponse$Builder;->setId(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 3418
    invoke-virtual {v0, v14}, Landroid/telephony/data/DataCallResponse$Builder;->setLinkStatus(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 3419
    invoke-virtual {v0, v8}, Landroid/telephony/data/DataCallResponse$Builder;->setProtocolType(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 3420
    invoke-virtual {v0, v2}, Landroid/telephony/data/DataCallResponse$Builder;->setInterfaceName(Ljava/lang/String;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 3421
    invoke-virtual {v0, v7}, Landroid/telephony/data/DataCallResponse$Builder;->setAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 3422
    invoke-virtual {v0, v10}, Landroid/telephony/data/DataCallResponse$Builder;->setDnsAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 3423
    invoke-virtual {v0, v11}, Landroid/telephony/data/DataCallResponse$Builder;->setGatewayAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 3424
    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setPcscfAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    move/from16 v13, v27

    .line 3425
    invoke-virtual {v0, v13}, Landroid/telephony/data/DataCallResponse$Builder;->setMtu(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    move/from16 v15, v23

    .line 3426
    invoke-virtual {v0, v15}, Landroid/telephony/data/DataCallResponse$Builder;->setMtuV4(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    move/from16 v6, v22

    .line 3427
    invoke-virtual {v0, v6}, Landroid/telephony/data/DataCallResponse$Builder;->setMtuV6(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    move/from16 v1, v21

    .line 3428
    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setHandoverFailureMode(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    move/from16 v1, v20

    .line 3429
    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setPduSessionId(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    move-object/from16 v1, v19

    .line 3430
    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setDefaultQos(Landroid/telephony/data/Qos;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    move-object/from16 v3, v18

    .line 3431
    invoke-virtual {v0, v3}, Landroid/telephony/data/DataCallResponse$Builder;->setQosBearerSessions(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    move-object/from16 v1, v16

    .line 3432
    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setSliceInfo(Landroid/telephony/data/NetworkSliceInfo;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    move-object/from16 v1, p0

    .line 3433
    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setTrafficDescriptors(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 3434
    invoke-virtual {v0}, Landroid/telephony/data/DataCallResponse$Builder;->build()Landroid/telephony/data/DataCallResponse;

    move-result-object v0

    return-object v0

    .line 3365
    :cond_313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported SetupDataCallResult "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->loge(Ljava/lang/String;)V

    return-object v16
.end method

.method public static blacklist convertHalDataCallResultList(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/data/DataCallResponse;",
            ">;"
        }
    .end annotation

    .line 3864
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3866
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3867
    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertHalDataCallResult(Ljava/lang/Object;)Landroid/telephony/data/DataCallResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_1f
    return-object v0
.end method

.method public static blacklist convertHalDataCallResultList([Landroid/hardware/radio/data/SetupDataCallResult;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/hardware/radio/data/SetupDataCallResult;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/data/DataCallResponse;",
            ">;"
        }
    .end annotation

    .line 3881
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3883
    array-length v1, p0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_16

    aget-object v3, p0, v2

    .line 3884
    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalDataCallResult(Landroid/hardware/radio/data/SetupDataCallResult;)Landroid/telephony/data/DataCallResponse;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_16
    return-object v0
.end method

.method public static blacklist convertHalDeregistrationReason(I)I
    .registers 2

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_b

    const/4 v0, 0x2

    if-eq p0, v0, :cond_b

    const/4 v0, 0x3

    if-eq p0, v0, :cond_b

    const/4 p0, 0x0

    return p0

    :cond_b
    return v0
.end method

.method public static blacklist convertHalEmergencyRegResult(Landroid/hardware/radio/network/EmergencyRegResult;)Landroid/telephony/EmergencyRegistrationResult;
    .registers 12

    .line 4635
    new-instance v0, Landroid/telephony/EmergencyRegistrationResult;

    iget v1, p0, Landroid/hardware/radio/network/EmergencyRegResult;->accessNetwork:I

    iget v2, p0, Landroid/hardware/radio/network/EmergencyRegResult;->regState:I

    .line 4637
    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->convertHalRegState(I)I

    move-result v2

    iget v3, p0, Landroid/hardware/radio/network/EmergencyRegResult;->emcDomain:I

    iget-boolean v4, p0, Landroid/hardware/radio/network/EmergencyRegResult;->isVopsSupported:Z

    iget-boolean v5, p0, Landroid/hardware/radio/network/EmergencyRegResult;->isEmcBearerSupported:Z

    iget-byte v6, p0, Landroid/hardware/radio/network/EmergencyRegResult;->nwProvidedEmc:B

    iget-byte v7, p0, Landroid/hardware/radio/network/EmergencyRegResult;->nwProvidedEmf:B

    iget-object v8, p0, Landroid/hardware/radio/network/EmergencyRegResult;->mcc:Ljava/lang/String;

    iget-object v9, p0, Landroid/hardware/radio/network/EmergencyRegResult;->mnc:Ljava/lang/String;

    .line 4645
    invoke-static {v8, v9}, Lcom/android/internal/telephony/RILUtils;->getCountryCodeForMccMnc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v0 .. v10}, Landroid/telephony/EmergencyRegistrationResult;-><init>(IIIZZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static blacklist convertHalGsmSignalStrength(Landroid/hardware/radio/V1_0/GsmSignalStrength;)Landroid/telephony/CellSignalStrengthGsm;
    .registers 4

    if-nez p0, :cond_8

    .line 2929
    new-instance p0, Landroid/telephony/CellSignalStrengthGsm;

    invoke-direct {p0}, Landroid/telephony/CellSignalStrengthGsm;-><init>()V

    return-object p0

    .line 2930
    :cond_8
    new-instance v0, Landroid/telephony/CellSignalStrengthGsm;

    iget v1, p0, Landroid/hardware/radio/V1_0/GsmSignalStrength;->signalStrength:I

    .line 2931
    invoke-static {v1}, Landroid/telephony/CellSignalStrength;->getRssiDbmFromAsu(I)I

    move-result v1

    iget v2, p0, Landroid/hardware/radio/V1_0/GsmSignalStrength;->bitErrorRate:I

    iget p0, p0, Landroid/hardware/radio/V1_0/GsmSignalStrength;->timingAdvance:I

    invoke-direct {v0, v1, v2, p0}, Landroid/telephony/CellSignalStrengthGsm;-><init>(III)V

    .line 2933
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthGsm;->getRssi()I

    move-result p0

    const v1, 0x7fffffff

    if-ne p0, v1, :cond_27

    .line 2934
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthGsm;->setDefaultValues()V

    const/4 p0, 0x0

    .line 2935
    invoke-virtual {v0, p0, p0}, Landroid/telephony/CellSignalStrengthGsm;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    :cond_27
    return-object v0
.end method

.method public static blacklist convertHalGsmSignalStrength(Landroid/hardware/radio/network/GsmSignalStrength;)Landroid/telephony/CellSignalStrengthGsm;
    .registers 4

    if-nez p0, :cond_8

    .line 2947
    new-instance p0, Landroid/telephony/CellSignalStrengthGsm;

    invoke-direct {p0}, Landroid/telephony/CellSignalStrengthGsm;-><init>()V

    return-object p0

    .line 2948
    :cond_8
    new-instance v0, Landroid/telephony/CellSignalStrengthGsm;

    iget v1, p0, Landroid/hardware/radio/network/GsmSignalStrength;->signalStrength:I

    .line 2949
    invoke-static {v1}, Landroid/telephony/CellSignalStrength;->getRssiDbmFromAsu(I)I

    move-result v1

    iget v2, p0, Landroid/hardware/radio/network/GsmSignalStrength;->bitErrorRate:I

    iget p0, p0, Landroid/hardware/radio/network/GsmSignalStrength;->timingAdvance:I

    invoke-direct {v0, v1, v2, p0}, Landroid/telephony/CellSignalStrengthGsm;-><init>(III)V

    .line 2951
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthGsm;->getRssi()I

    move-result p0

    const v1, 0x7fffffff

    if-ne p0, v1, :cond_27

    .line 2952
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthGsm;->setDefaultValues()V

    const/4 p0, 0x0

    .line 2953
    invoke-virtual {v0, p0, p0}, Landroid/telephony/CellSignalStrengthGsm;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    :cond_27
    return-object v0
.end method

.method public static blacklist convertHalHardwareConfigList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/HardwareConfig;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/HardwareConfig;",
            ">;"
        }
    .end annotation

    .line 2117
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2118
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2120
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_f
    if-ge v3, v0, :cond_77

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Landroid/hardware/radio/V1_0/HardwareConfig;

    .line 2121
    iget v5, v4, Landroid/hardware/radio/V1_0/HardwareConfig;->type:I

    if-eqz v5, :cond_4e

    const/4 v6, 0x1

    if-ne v5, v6, :cond_37

    .line 2131
    new-instance v6, Lcom/android/internal/telephony/HardwareConfig;

    invoke-direct {v6, v5}, Lcom/android/internal/telephony/HardwareConfig;-><init>(I)V

    .line 2132
    iget-object v5, v4, Landroid/hardware/radio/V1_0/HardwareConfig;->uuid:Ljava/lang/String;

    iget v7, v4, Landroid/hardware/radio/V1_0/HardwareConfig;->state:I

    iget-object v4, v4, Landroid/hardware/radio/V1_0/HardwareConfig;->sim:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/HardwareConfigSim;

    iget-object v4, v4, Landroid/hardware/radio/V1_0/HardwareConfigSim;->modemUuid:Ljava/lang/String;

    invoke-virtual {v6, v5, v7, v4}, Lcom/android/internal/telephony/HardwareConfig;->assignSim(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_73

    .line 2136
    :cond_37
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RIL_REQUEST_GET_HARDWARE_CONFIG invalid hardware type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4e
    move-object v6, v4

    .line 2124
    new-instance v4, Lcom/android/internal/telephony/HardwareConfig;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/HardwareConfig;-><init>(I)V

    .line 2125
    iget-object v5, v6, Landroid/hardware/radio/V1_0/HardwareConfig;->modem:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/radio/V1_0/HardwareConfigModem;

    move-object v7, v5

    .line 2126
    iget-object v5, v6, Landroid/hardware/radio/V1_0/HardwareConfig;->uuid:Ljava/lang/String;

    iget v6, v6, Landroid/hardware/radio/V1_0/HardwareConfig;->state:I

    move-object v8, v7

    iget v7, v8, Landroid/hardware/radio/V1_0/HardwareConfigModem;->rilModel:I

    move-object v9, v8

    iget v8, v9, Landroid/hardware/radio/V1_0/HardwareConfigModem;->rat:I

    move-object v10, v9

    iget v9, v10, Landroid/hardware/radio/V1_0/HardwareConfigModem;->maxVoice:I

    move-object v11, v10

    iget v10, v11, Landroid/hardware/radio/V1_0/HardwareConfigModem;->maxData:I

    iget v11, v11, Landroid/hardware/radio/V1_0/HardwareConfigModem;->maxStandby:I

    invoke-virtual/range {v4 .. v11}, Lcom/android/internal/telephony/HardwareConfig;->assignModem(Ljava/lang/String;IIIIII)V

    move-object v6, v4

    .line 2140
    :goto_73
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_77
    return-object v1
.end method

.method public static blacklist convertHalHardwareConfigList([Landroid/hardware/radio/modem/HardwareConfig;)Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/hardware/radio/modem/HardwareConfig;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/HardwareConfig;",
            ">;"
        }
    .end annotation

    .line 2152
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2155
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_9
    if-ge v3, v1, :cond_65

    aget-object v4, p0, v3

    .line 2156
    iget v5, v4, Landroid/hardware/radio/modem/HardwareConfig;->type:I

    if-eqz v5, :cond_3e

    const/4 v6, 0x1

    if-ne v5, v6, :cond_27

    .line 2166
    new-instance v6, Lcom/android/internal/telephony/HardwareConfig;

    invoke-direct {v6, v5}, Lcom/android/internal/telephony/HardwareConfig;-><init>(I)V

    .line 2167
    iget-object v5, v4, Landroid/hardware/radio/modem/HardwareConfig;->uuid:Ljava/lang/String;

    iget v7, v4, Landroid/hardware/radio/modem/HardwareConfig;->state:I

    iget-object v4, v4, Landroid/hardware/radio/modem/HardwareConfig;->sim:[Landroid/hardware/radio/modem/HardwareConfigSim;

    aget-object v4, v4, v2

    iget-object v4, v4, Landroid/hardware/radio/modem/HardwareConfigSim;->modemUuid:Ljava/lang/String;

    invoke-virtual {v6, v5, v7, v4}, Lcom/android/internal/telephony/HardwareConfig;->assignSim(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_5f

    .line 2171
    :cond_27
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RIL_REQUEST_GET_HARDWARE_CONFIG invalid hardware type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3e
    move-object v6, v4

    .line 2159
    new-instance v4, Lcom/android/internal/telephony/HardwareConfig;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/HardwareConfig;-><init>(I)V

    .line 2160
    iget-object v5, v6, Landroid/hardware/radio/modem/HardwareConfig;->modem:[Landroid/hardware/radio/modem/HardwareConfigModem;

    aget-object v5, v5, v2

    move-object v7, v5

    .line 2161
    iget-object v5, v6, Landroid/hardware/radio/modem/HardwareConfig;->uuid:Ljava/lang/String;

    iget v6, v6, Landroid/hardware/radio/modem/HardwareConfig;->state:I

    move-object v8, v7

    iget v7, v8, Landroid/hardware/radio/modem/HardwareConfigModem;->rilModel:I

    move-object v9, v8

    iget v8, v9, Landroid/hardware/radio/modem/HardwareConfigModem;->rat:I

    move-object v10, v9

    iget v9, v10, Landroid/hardware/radio/modem/HardwareConfigModem;->maxVoiceCalls:I

    move-object v11, v10

    iget v10, v11, Landroid/hardware/radio/modem/HardwareConfigModem;->maxDataCalls:I

    iget v11, v11, Landroid/hardware/radio/modem/HardwareConfigModem;->maxStandby:I

    invoke-virtual/range {v4 .. v11}, Lcom/android/internal/telephony/HardwareConfig;->assignModem(Ljava/lang/String;IIIIII)V

    move-object v6, v4

    .line 2175
    :goto_5f
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_65
    return-object v0
.end method

.method public static blacklist convertHalKeepaliveStatusCode(I)I
    .registers 2

    .line 0
    if-eqz p0, :cond_b

    const/4 v0, 0x1

    if-eq p0, v0, :cond_a

    const/4 v0, 0x2

    if-eq p0, v0, :cond_a

    const/4 p0, -0x1

    return p0

    :cond_a
    return v0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist convertHalLinkCapacityEstimate(Landroid/hardware/radio/network/LinkCapacityEstimate;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/network/LinkCapacityEstimate;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/LinkCapacityEstimate;",
            ">;"
        }
    .end annotation

    .line 2265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2266
    iget v1, p0, Landroid/hardware/radio/network/LinkCapacityEstimate;->downlinkCapacityKbps:I

    .line 2267
    iget v2, p0, Landroid/hardware/radio/network/LinkCapacityEstimate;->uplinkCapacityKbps:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_11

    .line 2268
    iget v4, p0, Landroid/hardware/radio/network/LinkCapacityEstimate;->secondaryDownlinkCapacityKbps:I

    if-eq v4, v3, :cond_11

    sub-int/2addr v1, v4

    :cond_11
    if-eq v2, v3, :cond_18

    .line 2273
    iget v4, p0, Landroid/hardware/radio/network/LinkCapacityEstimate;->secondaryUplinkCapacityKbps:I

    if-eq v4, v3, :cond_18

    sub-int/2addr v2, v4

    .line 2278
    :cond_18
    new-instance v3, Landroid/telephony/LinkCapacityEstimate;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1, v2}, Landroid/telephony/LinkCapacityEstimate;-><init>(III)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2280
    new-instance v1, Landroid/telephony/LinkCapacityEstimate;

    iget v2, p0, Landroid/hardware/radio/network/LinkCapacityEstimate;->secondaryDownlinkCapacityKbps:I

    iget p0, p0, Landroid/hardware/radio/network/LinkCapacityEstimate;->secondaryUplinkCapacityKbps:I

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2, p0}, Landroid/telephony/LinkCapacityEstimate;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static blacklist convertHalLinkCapacityEstimate(Ljava/lang/Object;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/LinkCapacityEstimate;",
            ">;"
        }
    .end annotation

    .line 2227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_8

    goto :goto_4b

    .line 2229
    :cond_8
    instance-of v1, p0, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;

    if-eqz v1, :cond_1c

    .line 2230
    check-cast p0, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;

    .line 2232
    new-instance v1, Landroid/telephony/LinkCapacityEstimate;

    iget v2, p0, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;->downlinkCapacityKbps:I

    iget p0, p0, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;->uplinkCapacityKbps:I

    const/4 v3, 0x2

    invoke-direct {v1, v3, v2, p0}, Landroid/telephony/LinkCapacityEstimate;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 2234
    :cond_1c
    instance-of v1, p0, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;

    if-eqz v1, :cond_4b

    .line 2235
    check-cast p0, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;

    .line 2237
    iget v1, p0, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;->downlinkCapacityKbps:I

    .line 2238
    iget v2, p0, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;->uplinkCapacityKbps:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2e

    .line 2239
    iget v4, p0, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;->secondaryDownlinkCapacityKbps:I

    if-eq v4, v3, :cond_2e

    sub-int/2addr v1, v4

    :cond_2e
    if-eq v2, v3, :cond_35

    .line 2244
    iget v4, p0, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;->secondaryUplinkCapacityKbps:I

    if-eq v4, v3, :cond_35

    sub-int/2addr v2, v4

    .line 2249
    :cond_35
    new-instance v3, Landroid/telephony/LinkCapacityEstimate;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1, v2}, Landroid/telephony/LinkCapacityEstimate;-><init>(III)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2251
    new-instance v1, Landroid/telephony/LinkCapacityEstimate;

    iget v2, p0, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;->secondaryDownlinkCapacityKbps:I

    iget p0, p0, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;->secondaryUplinkCapacityKbps:I

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2, p0}, Landroid/telephony/LinkCapacityEstimate;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4b
    :goto_4b
    return-object v0
.end method

.method public static blacklist convertHalLteSignalStrength(Landroid/hardware/radio/network/LteSignalStrength;)Landroid/telephony/CellSignalStrengthLte;
    .registers 9

    .line 3025
    new-instance v0, Landroid/telephony/CellSignalStrengthLte;

    iget v1, p0, Landroid/hardware/radio/network/LteSignalStrength;->signalStrength:I

    .line 3026
    invoke-static {v1}, Landroid/telephony/CellSignalStrengthLte;->convertRssiAsuToDBm(I)I

    move-result v1

    .line 3027
    iget v2, p0, Landroid/hardware/radio/network/LteSignalStrength;->rsrp:I

    const v3, 0x7fffffff

    if-eq v2, v3, :cond_10

    neg-int v2, v2

    .line 3028
    :cond_10
    iget v4, p0, Landroid/hardware/radio/network/LteSignalStrength;->rsrq:I

    if-eq v4, v3, :cond_15

    neg-int v4, v4

    :cond_15
    move v3, v4

    iget v4, p0, Landroid/hardware/radio/network/LteSignalStrength;->rssnr:I

    .line 3029
    invoke-static {v4}, Landroid/telephony/CellSignalStrengthLte;->convertRssnrUnitFromTenDbToDB(I)I

    move-result v4

    iget v5, p0, Landroid/hardware/radio/network/LteSignalStrength;->cqiTableIndex:I

    iget v6, p0, Landroid/hardware/radio/network/LteSignalStrength;->cqi:I

    iget v7, p0, Landroid/hardware/radio/network/LteSignalStrength;->timingAdvance:I

    invoke-direct/range {v0 .. v7}, Landroid/telephony/CellSignalStrengthLte;-><init>(IIIIIII)V

    return-object v0
.end method

.method public static blacklist convertHalLteSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthLte;
    .registers 12

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 2995
    :cond_4
    instance-of v1, p0, Landroid/hardware/radio/V1_0/LteSignalStrength;

    const v2, 0x7fffffff

    if-eqz v1, :cond_2f

    .line 2996
    check-cast p0, Landroid/hardware/radio/V1_0/LteSignalStrength;

    .line 2998
    new-instance v3, Landroid/telephony/CellSignalStrengthLte;

    iget v0, p0, Landroid/hardware/radio/V1_0/LteSignalStrength;->signalStrength:I

    .line 2999
    invoke-static {v0}, Landroid/telephony/CellSignalStrengthLte;->convertRssiAsuToDBm(I)I

    move-result v4

    .line 3000
    iget v0, p0, Landroid/hardware/radio/V1_0/LteSignalStrength;->rsrp:I

    if-eq v0, v2, :cond_1a

    neg-int v0, v0

    :cond_1a
    move v5, v0

    .line 3001
    iget v0, p0, Landroid/hardware/radio/V1_0/LteSignalStrength;->rsrq:I

    if-eq v0, v2, :cond_20

    neg-int v0, v0

    :cond_20
    move v6, v0

    iget v0, p0, Landroid/hardware/radio/V1_0/LteSignalStrength;->rssnr:I

    .line 3002
    invoke-static {v0}, Landroid/telephony/CellSignalStrengthLte;->convertRssnrUnitFromTenDbToDB(I)I

    move-result v7

    iget v8, p0, Landroid/hardware/radio/V1_0/LteSignalStrength;->cqi:I

    iget v9, p0, Landroid/hardware/radio/V1_0/LteSignalStrength;->timingAdvance:I

    invoke-direct/range {v3 .. v9}, Landroid/telephony/CellSignalStrengthLte;-><init>(IIIIII)V

    return-object v3

    .line 3004
    :cond_2f
    instance-of v1, p0, Landroid/hardware/radio/V1_6/LteSignalStrength;

    if-eqz v1, :cond_5f

    .line 3005
    check-cast p0, Landroid/hardware/radio/V1_6/LteSignalStrength;

    .line 3007
    new-instance v3, Landroid/telephony/CellSignalStrengthLte;

    iget-object v0, p0, Landroid/hardware/radio/V1_6/LteSignalStrength;->base:Landroid/hardware/radio/V1_0/LteSignalStrength;

    iget v0, v0, Landroid/hardware/radio/V1_0/LteSignalStrength;->signalStrength:I

    .line 3008
    invoke-static {v0}, Landroid/telephony/CellSignalStrengthLte;->convertRssiAsuToDBm(I)I

    move-result v4

    .line 3009
    iget-object v0, p0, Landroid/hardware/radio/V1_6/LteSignalStrength;->base:Landroid/hardware/radio/V1_0/LteSignalStrength;

    iget v1, v0, Landroid/hardware/radio/V1_0/LteSignalStrength;->rsrp:I

    if-eq v1, v2, :cond_46

    neg-int v1, v1

    :cond_46
    move v5, v1

    .line 3010
    iget v1, v0, Landroid/hardware/radio/V1_0/LteSignalStrength;->rsrq:I

    if-eq v1, v2, :cond_4c

    neg-int v1, v1

    :cond_4c
    move v6, v1

    iget v0, v0, Landroid/hardware/radio/V1_0/LteSignalStrength;->rssnr:I

    .line 3011
    invoke-static {v0}, Landroid/telephony/CellSignalStrengthLte;->convertRssnrUnitFromTenDbToDB(I)I

    move-result v7

    iget v8, p0, Landroid/hardware/radio/V1_6/LteSignalStrength;->cqiTableIndex:I

    iget-object p0, p0, Landroid/hardware/radio/V1_6/LteSignalStrength;->base:Landroid/hardware/radio/V1_0/LteSignalStrength;

    iget v9, p0, Landroid/hardware/radio/V1_0/LteSignalStrength;->cqi:I

    iget v10, p0, Landroid/hardware/radio/V1_0/LteSignalStrength;->timingAdvance:I

    invoke-direct/range {v3 .. v10}, Landroid/telephony/CellSignalStrengthLte;-><init>(IIIIIII)V

    return-object v3

    :cond_5f
    return-object v0
.end method

.method public static blacklist convertHalNetworkTypeBitMask(I)I
    .registers 8

    .line 0
    const/high16 v0, 0x10000

    and-int/2addr v0, p0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    int-to-long v2, v1

    const-wide/32 v4, 0x8000

    or-long/2addr v2, v4

    long-to-int v0, v2

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    and-int/lit8 v2, p0, 0x2

    if-eqz v2, :cond_17

    int-to-long v2, v0

    const-wide/16 v4, 0x1

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_17
    and-int/lit8 v2, p0, 0x4

    if-eqz v2, :cond_20

    int-to-long v2, v0

    const-wide/16 v4, 0x2

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_20
    and-int/lit8 v2, p0, 0x10

    const-wide/16 v3, 0x8

    if-eqz v2, :cond_29

    int-to-long v5, v0

    or-long/2addr v5, v3

    long-to-int v0, v5

    :cond_29
    and-int/lit8 v2, p0, 0x20

    if-eqz v2, :cond_31

    int-to-long v5, v0

    or-long v2, v5, v3

    long-to-int v0, v2

    :cond_31
    and-int/lit8 v2, p0, 0x40

    if-eqz v2, :cond_3a

    int-to-long v2, v0

    const-wide/16 v4, 0x40

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_3a
    and-int/lit16 v2, p0, 0x80

    if-eqz v2, :cond_43

    int-to-long v2, v0

    const-wide/16 v4, 0x10

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_43
    and-int/lit16 v2, p0, 0x100

    if-eqz v2, :cond_4c

    int-to-long v2, v0

    const-wide/16 v4, 0x20

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_4c
    and-int/lit16 v2, p0, 0x1000

    if-eqz v2, :cond_55

    int-to-long v2, v0

    const-wide/16 v4, 0x800

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_55
    and-int/lit16 v2, p0, 0x2000

    if-eqz v2, :cond_5e

    int-to-long v2, v0

    const-wide/16 v4, 0x2000

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_5e
    and-int/lit16 v2, p0, 0x400

    if-eqz v2, :cond_67

    int-to-long v2, v0

    const-wide/16 v4, 0x100

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_67
    and-int/lit16 v2, p0, 0x200

    if-eqz v2, :cond_70

    int-to-long v2, v0

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_70
    and-int/lit16 v2, p0, 0x800

    if-eqz v2, :cond_79

    int-to-long v2, v0

    const-wide/16 v4, 0x200

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_79
    const v2, 0x8000

    and-int/2addr v2, p0

    if-eqz v2, :cond_84

    int-to-long v2, v0

    const-wide/16 v4, 0x4000

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_84
    and-int/lit8 v2, p0, 0x8

    if-eqz v2, :cond_8d

    int-to-long v2, v0

    const-wide/16 v4, 0x4

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_8d
    const/high16 v2, 0x20000

    and-int/2addr v2, p0

    if-eqz v2, :cond_98

    int-to-long v2, v0

    const-wide/32 v4, 0x10000

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_98
    and-int/lit16 v2, p0, 0x4000

    if-eqz v2, :cond_a1

    int-to-long v2, v0

    const-wide/16 v4, 0x1000

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_a1
    const/high16 v2, 0x80000

    and-int/2addr v2, p0

    if-eqz v2, :cond_ac

    int-to-long v2, v0

    const-wide/32 v4, 0x40000

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_ac
    const/high16 v2, 0x100000

    and-int/2addr v2, p0

    if-eqz v2, :cond_b7

    int-to-long v2, v0

    const-wide/32 v4, 0x80000

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_b7
    const/high16 v2, 0x40000

    and-int/2addr p0, v2

    if-eqz p0, :cond_c2

    int-to-long v2, v0

    const-wide/32 v4, 0x20000

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_c2
    if-nez v0, :cond_c5

    return v1

    :cond_c5
    return v0
.end method

.method public static blacklist convertHalNrSignalStrength(Landroid/hardware/radio/network/NrSignalStrength;)Landroid/telephony/CellSignalStrengthNr;
    .registers 11

    .line 3141
    new-instance v0, Landroid/telephony/CellSignalStrengthNr;

    iget v1, p0, Landroid/hardware/radio/network/NrSignalStrength;->csiRsrp:I

    invoke-static {v1}, Landroid/telephony/CellSignalStrengthNr;->flip(I)I

    move-result v1

    iget v2, p0, Landroid/hardware/radio/network/NrSignalStrength;->csiRsrq:I

    .line 3142
    invoke-static {v2}, Landroid/telephony/CellSignalStrengthNr;->flip(I)I

    move-result v2

    iget v3, p0, Landroid/hardware/radio/network/NrSignalStrength;->csiSinr:I

    iget v4, p0, Landroid/hardware/radio/network/NrSignalStrength;->csiCqiTableIndex:I

    iget-object v5, p0, Landroid/hardware/radio/network/NrSignalStrength;->csiCqiReport:[B

    .line 3143
    invoke-static {v5}, Lcom/android/internal/telephony/RILUtils;->primitiveArrayToArrayList([B)Ljava/util/ArrayList;

    move-result-object v5

    iget v6, p0, Landroid/hardware/radio/network/NrSignalStrength;->ssRsrp:I

    invoke-static {v6}, Landroid/telephony/CellSignalStrengthNr;->flip(I)I

    move-result v6

    iget v7, p0, Landroid/hardware/radio/network/NrSignalStrength;->ssRsrq:I

    .line 3144
    invoke-static {v7}, Landroid/telephony/CellSignalStrengthNr;->flip(I)I

    move-result v7

    iget v8, p0, Landroid/hardware/radio/network/NrSignalStrength;->ssSinr:I

    iget v9, p0, Landroid/hardware/radio/network/NrSignalStrength;->timingAdvance:I

    invoke-direct/range {v0 .. v9}, Landroid/telephony/CellSignalStrengthNr;-><init>(IIIILjava/util/List;IIII)V

    return-object v0
.end method

.method public static blacklist convertHalNrSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthNr;
    .registers 11

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 3115
    :cond_4
    instance-of v1, p0, Landroid/hardware/radio/V1_4/NrSignalStrength;

    if-eqz v1, :cond_2c

    .line 3116
    check-cast p0, Landroid/hardware/radio/V1_4/NrSignalStrength;

    .line 3118
    new-instance v0, Landroid/telephony/CellSignalStrengthNr;

    iget v1, p0, Landroid/hardware/radio/V1_4/NrSignalStrength;->csiRsrp:I

    invoke-static {v1}, Landroid/telephony/CellSignalStrengthNr;->flip(I)I

    move-result v1

    iget v2, p0, Landroid/hardware/radio/V1_4/NrSignalStrength;->csiRsrq:I

    .line 3119
    invoke-static {v2}, Landroid/telephony/CellSignalStrengthNr;->flip(I)I

    move-result v2

    iget v3, p0, Landroid/hardware/radio/V1_4/NrSignalStrength;->csiSinr:I

    iget v4, p0, Landroid/hardware/radio/V1_4/NrSignalStrength;->ssRsrp:I

    .line 3120
    invoke-static {v4}, Landroid/telephony/CellSignalStrengthNr;->flip(I)I

    move-result v4

    iget v5, p0, Landroid/hardware/radio/V1_4/NrSignalStrength;->ssRsrq:I

    invoke-static {v5}, Landroid/telephony/CellSignalStrengthNr;->flip(I)I

    move-result v5

    iget v6, p0, Landroid/hardware/radio/V1_4/NrSignalStrength;->ssSinr:I

    invoke-direct/range {v0 .. v6}, Landroid/telephony/CellSignalStrengthNr;-><init>(IIIIII)V

    return-object v0

    .line 3122
    :cond_2c
    instance-of v1, p0, Landroid/hardware/radio/V1_6/NrSignalStrength;

    if-eqz v1, :cond_67

    .line 3123
    check-cast p0, Landroid/hardware/radio/V1_6/NrSignalStrength;

    .line 3125
    new-instance v0, Landroid/telephony/CellSignalStrengthNr;

    iget-object v1, p0, Landroid/hardware/radio/V1_6/NrSignalStrength;->base:Landroid/hardware/radio/V1_4/NrSignalStrength;

    iget v1, v1, Landroid/hardware/radio/V1_4/NrSignalStrength;->csiRsrp:I

    invoke-static {v1}, Landroid/telephony/CellSignalStrengthNr;->flip(I)I

    move-result v1

    iget-object v2, p0, Landroid/hardware/radio/V1_6/NrSignalStrength;->base:Landroid/hardware/radio/V1_4/NrSignalStrength;

    iget v2, v2, Landroid/hardware/radio/V1_4/NrSignalStrength;->csiRsrq:I

    .line 3126
    invoke-static {v2}, Landroid/telephony/CellSignalStrengthNr;->flip(I)I

    move-result v2

    iget-object v3, p0, Landroid/hardware/radio/V1_6/NrSignalStrength;->base:Landroid/hardware/radio/V1_4/NrSignalStrength;

    move-object v4, v3

    iget v3, v4, Landroid/hardware/radio/V1_4/NrSignalStrength;->csiSinr:I

    move-object v5, v4

    iget v4, p0, Landroid/hardware/radio/V1_6/NrSignalStrength;->csiCqiTableIndex:I

    move-object v6, v5

    iget-object v5, p0, Landroid/hardware/radio/V1_6/NrSignalStrength;->csiCqiReport:Ljava/util/ArrayList;

    iget v6, v6, Landroid/hardware/radio/V1_4/NrSignalStrength;->ssRsrp:I

    .line 3127
    invoke-static {v6}, Landroid/telephony/CellSignalStrengthNr;->flip(I)I

    move-result v6

    iget-object v7, p0, Landroid/hardware/radio/V1_6/NrSignalStrength;->base:Landroid/hardware/radio/V1_4/NrSignalStrength;

    iget v7, v7, Landroid/hardware/radio/V1_4/NrSignalStrength;->ssRsrq:I

    .line 3128
    invoke-static {v7}, Landroid/telephony/CellSignalStrengthNr;->flip(I)I

    move-result v7

    iget-object p0, p0, Landroid/hardware/radio/V1_6/NrSignalStrength;->base:Landroid/hardware/radio/V1_4/NrSignalStrength;

    iget v8, p0, Landroid/hardware/radio/V1_4/NrSignalStrength;->ssSinr:I

    const v9, 0x7fffffff

    invoke-direct/range {v0 .. v9}, Landroid/telephony/CellSignalStrengthNr;-><init>(IIIILjava/util/List;IIII)V

    :cond_67
    return-object v0
.end method

.method public static blacklist convertHalOperatorStatus(I)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_5

    .line 4045
    const-string p0, "unknown"

    return-object p0

    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 4047
    const-string p0, "available"

    return-object p0

    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 4049
    const-string p0, "current"

    return-object p0

    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    .line 4051
    const-string p0, "forbidden"

    return-object p0

    .line 4053
    :cond_17
    const-string p0, ""

    return-object p0
.end method

.method public static blacklist convertHalPhoneCapability([ILjava/lang/Object;)Landroid/telephony/PhoneCapability;
    .registers 10

    .line 4557
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4558
    instance-of v0, p1, Landroid/hardware/radio/config/PhoneCapability;

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    .line 4559
    check-cast p1, Landroid/hardware/radio/config/PhoneCapability;

    .line 4561
    iget-byte v0, p1, Landroid/hardware/radio/config/PhoneCapability;->maxActiveData:B

    .line 4564
    iget-byte v2, p1, Landroid/hardware/radio/config/PhoneCapability;->maxActiveVoice:B

    const/4 v4, -0x1

    if-ne v2, v4, :cond_15

    .line 4566
    iget-byte v2, p1, Landroid/hardware/radio/config/PhoneCapability;->maxActiveInternetData:B

    .line 4570
    :cond_15
    iget-boolean v4, p1, Landroid/hardware/radio/config/PhoneCapability;->isInternetLingeringSupported:Z

    .line 4571
    iget-object p1, p1, Landroid/hardware/radio/config/PhoneCapability;->logicalModemIds:[B

    array-length v5, p1

    :goto_1a
    if-ge v1, v5, :cond_29

    aget-byte v6, p1, v1

    .line 4572
    new-instance v7, Landroid/telephony/ModemInfo;

    invoke-direct {v7, v6}, Landroid/telephony/ModemInfo;-><init>(I)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_29
    move v1, v2

    move v2, v0

    goto :goto_55

    .line 4574
    :cond_2c
    instance-of v0, p1, Landroid/hardware/radio/config/V1_1/PhoneCapability;

    if-eqz v0, :cond_53

    .line 4575
    check-cast p1, Landroid/hardware/radio/config/V1_1/PhoneCapability;

    .line 4577
    iget-byte v0, p1, Landroid/hardware/radio/config/V1_1/PhoneCapability;->maxActiveData:B

    .line 4580
    iget-byte v2, p1, Landroid/hardware/radio/config/V1_1/PhoneCapability;->maxActiveInternetData:B

    .line 4581
    iget-boolean v4, p1, Landroid/hardware/radio/config/V1_1/PhoneCapability;->isInternetLingeringSupported:Z

    .line 4583
    iget-object p1, p1, Landroid/hardware/radio/config/V1_1/PhoneCapability;->logicalModemList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_3e
    if-ge v1, v5, :cond_29

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v1, v1, 0x1

    check-cast v6, Landroid/hardware/radio/config/V1_1/ModemInfo;

    .line 4584
    new-instance v7, Landroid/telephony/ModemInfo;

    iget-byte v6, v6, Landroid/hardware/radio/config/V1_1/ModemInfo;->modemId:B

    invoke-direct {v7, v6}, Landroid/telephony/ModemInfo;-><init>(I)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    :cond_53
    move v2, v1

    move v4, v2

    .line 4587
    :goto_55
    new-instance v0, Landroid/telephony/PhoneCapability;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Landroid/telephony/PhoneCapability;-><init>(IILjava/util/List;Z[I)V

    return-object v0
.end method

.method public static blacklist convertHalPhonebookCapacity(Landroid/hardware/radio/V1_6/PhonebookCapacity;)Lcom/android/internal/telephony/uicc/AdnCapacity;
    .registers 12

    if-eqz p0, :cond_1c

    .line 4359
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnCapacity;

    iget v1, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxAdnRecords:I

    iget v2, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->usedAdnRecords:I

    iget v3, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxEmailRecords:I

    iget v4, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->usedEmailRecords:I

    iget v5, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxAdditionalNumberRecords:I

    iget v6, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->usedAdditionalNumberRecords:I

    iget v7, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxNameLen:I

    iget v8, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxNumberLen:I

    iget v9, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxEmailLen:I

    iget v10, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxAdditionalNumberLen:I

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/telephony/uicc/AdnCapacity;-><init>(IIIIIIIIII)V

    return-object v0

    :cond_1c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist convertHalPhonebookCapacity(Landroid/hardware/radio/sim/PhonebookCapacity;)Lcom/android/internal/telephony/uicc/AdnCapacity;
    .registers 12

    if-eqz p0, :cond_1c

    .line 4375
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnCapacity;

    iget v1, p0, Landroid/hardware/radio/sim/PhonebookCapacity;->maxAdnRecords:I

    iget v2, p0, Landroid/hardware/radio/sim/PhonebookCapacity;->usedAdnRecords:I

    iget v3, p0, Landroid/hardware/radio/sim/PhonebookCapacity;->maxEmailRecords:I

    iget v4, p0, Landroid/hardware/radio/sim/PhonebookCapacity;->usedEmailRecords:I

    iget v5, p0, Landroid/hardware/radio/sim/PhonebookCapacity;->maxAdditionalNumberRecords:I

    iget v6, p0, Landroid/hardware/radio/sim/PhonebookCapacity;->usedAdditionalNumberRecords:I

    iget v7, p0, Landroid/hardware/radio/sim/PhonebookCapacity;->maxNameLen:I

    iget v8, p0, Landroid/hardware/radio/sim/PhonebookCapacity;->maxNumberLen:I

    iget v9, p0, Landroid/hardware/radio/sim/PhonebookCapacity;->maxEmailLen:I

    iget v10, p0, Landroid/hardware/radio/sim/PhonebookCapacity;->maxAdditionalNumberLen:I

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/telephony/uicc/AdnCapacity;-><init>(IIIIIIIIII)V

    return-object v0

    :cond_1c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist convertHalPhonebookRecordInfo(Landroid/hardware/radio/V1_6/PhonebookRecordInfo;)Lcom/android/internal/telephony/uicc/SimPhonebookRecord;
    .registers 9

    .line 4390
    iget-object v0, p0, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->emails:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move-object v6, v1

    goto :goto_14

    .line 4391
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move-object v6, v0

    .line 4392
    :goto_14
    iget-object v0, p0, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->additionalNumbers:Ljava/util/ArrayList;

    if-nez v0, :cond_1a

    :goto_18
    move-object v7, v1

    goto :goto_28

    .line 4393
    :cond_1a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [Ljava/lang/String;

    goto :goto_18

    .line 4394
    :goto_28
    new-instance v2, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;

    iget v3, p0, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->recordId:I

    iget-object v4, p0, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->name:Ljava/lang/String;

    iget-object v5, p0, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->number:Ljava/lang/String;

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v2
.end method

.method public static blacklist convertHalPhonebookRecordInfo(Landroid/hardware/radio/sim/PhonebookRecordInfo;)Lcom/android/internal/telephony/uicc/SimPhonebookRecord;
    .registers 7

    .line 4405
    new-instance v0, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;

    iget v1, p0, Landroid/hardware/radio/sim/PhonebookRecordInfo;->recordId:I

    iget-object v2, p0, Landroid/hardware/radio/sim/PhonebookRecordInfo;->name:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/radio/sim/PhonebookRecordInfo;->number:Ljava/lang/String;

    iget-object v4, p0, Landroid/hardware/radio/sim/PhonebookRecordInfo;->emails:[Ljava/lang/String;

    iget-object v5, p0, Landroid/hardware/radio/sim/PhonebookRecordInfo;->additionalNumbers:[Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method private static blacklist convertHalQos(Landroid/hardware/radio/V1_6/Qos;)Landroid/telephony/data/Qos;
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 3686
    :cond_4
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/Qos;->getDiscriminator()B

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2b

    const/4 v2, 0x2

    if-eq v1, v2, :cond_f

    return-object v0

    .line 3692
    :cond_f
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/Qos;->nr()Landroid/hardware/radio/V1_6/NrQos;

    move-result-object p0

    .line 3693
    new-instance v0, Landroid/telephony/data/NrQos;

    iget-object v1, p0, Landroid/hardware/radio/V1_6/NrQos;->downlink:Landroid/hardware/radio/V1_6/QosBandwidth;

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertHalQosBandwidth(Landroid/hardware/radio/V1_6/QosBandwidth;)Landroid/telephony/data/Qos$QosBandwidth;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/V1_6/NrQos;->uplink:Landroid/hardware/radio/V1_6/QosBandwidth;

    .line 3694
    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->convertHalQosBandwidth(Landroid/hardware/radio/V1_6/QosBandwidth;)Landroid/telephony/data/Qos$QosBandwidth;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/NrQos;->qfi:B

    iget-short v4, p0, Landroid/hardware/radio/V1_6/NrQos;->fiveQi:S

    iget-short v5, p0, Landroid/hardware/radio/V1_6/NrQos;->averagingWindowMs:S

    invoke-direct/range {v0 .. v5}, Landroid/telephony/data/NrQos;-><init>(Landroid/telephony/data/Qos$QosBandwidth;Landroid/telephony/data/Qos$QosBandwidth;III)V

    return-object v0

    .line 3688
    :cond_2b
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/Qos;->eps()Landroid/hardware/radio/V1_6/EpsQos;

    move-result-object p0

    .line 3689
    new-instance v0, Landroid/telephony/data/EpsQos;

    iget-object v1, p0, Landroid/hardware/radio/V1_6/EpsQos;->downlink:Landroid/hardware/radio/V1_6/QosBandwidth;

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertHalQosBandwidth(Landroid/hardware/radio/V1_6/QosBandwidth;)Landroid/telephony/data/Qos$QosBandwidth;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/V1_6/EpsQos;->uplink:Landroid/hardware/radio/V1_6/QosBandwidth;

    .line 3690
    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->convertHalQosBandwidth(Landroid/hardware/radio/V1_6/QosBandwidth;)Landroid/telephony/data/Qos$QosBandwidth;

    move-result-object v2

    iget-short p0, p0, Landroid/hardware/radio/V1_6/EpsQos;->qci:S

    invoke-direct {v0, v1, v2, p0}, Landroid/telephony/data/EpsQos;-><init>(Landroid/telephony/data/Qos$QosBandwidth;Landroid/telephony/data/Qos$QosBandwidth;I)V

    return-object v0
.end method

.method private static blacklist convertHalQos(Landroid/hardware/radio/data/Qos;)Landroid/telephony/data/Qos;
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 3702
    :cond_4
    invoke-virtual {p0}, Landroid/hardware/radio/data/Qos;->getTag()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_31

    const/4 v2, 0x2

    if-eq v1, v2, :cond_f

    return-object v0

    .line 3708
    :cond_f
    invoke-virtual {p0}, Landroid/hardware/radio/data/Qos;->getNr()Landroid/hardware/radio/data/NrQos;

    move-result-object p0

    .line 3709
    iget v0, p0, Landroid/hardware/radio/data/NrQos;->averagingWindowMillis:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1a

    .line 3712
    iget-char v0, p0, Landroid/hardware/radio/data/NrQos;->averagingWindowMs:C

    :cond_1a
    move v6, v0

    .line 3714
    new-instance v1, Landroid/telephony/data/NrQos;

    iget-object v0, p0, Landroid/hardware/radio/data/NrQos;->downlink:Landroid/hardware/radio/data/QosBandwidth;

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalQosBandwidth(Landroid/hardware/radio/data/QosBandwidth;)Landroid/telephony/data/Qos$QosBandwidth;

    move-result-object v2

    iget-object v0, p0, Landroid/hardware/radio/data/NrQos;->uplink:Landroid/hardware/radio/data/QosBandwidth;

    .line 3715
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalQosBandwidth(Landroid/hardware/radio/data/QosBandwidth;)Landroid/telephony/data/Qos$QosBandwidth;

    move-result-object v3

    iget-byte v4, p0, Landroid/hardware/radio/data/NrQos;->qfi:B

    iget v5, p0, Landroid/hardware/radio/data/NrQos;->fiveQi:I

    invoke-direct/range {v1 .. v6}, Landroid/telephony/data/NrQos;-><init>(Landroid/telephony/data/Qos$QosBandwidth;Landroid/telephony/data/Qos$QosBandwidth;III)V

    return-object v1

    .line 3704
    :cond_31
    invoke-virtual {p0}, Landroid/hardware/radio/data/Qos;->getEps()Landroid/hardware/radio/data/EpsQos;

    move-result-object p0

    .line 3705
    new-instance v0, Landroid/telephony/data/EpsQos;

    iget-object v1, p0, Landroid/hardware/radio/data/EpsQos;->downlink:Landroid/hardware/radio/data/QosBandwidth;

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertHalQosBandwidth(Landroid/hardware/radio/data/QosBandwidth;)Landroid/telephony/data/Qos$QosBandwidth;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/data/EpsQos;->uplink:Landroid/hardware/radio/data/QosBandwidth;

    .line 3706
    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->convertHalQosBandwidth(Landroid/hardware/radio/data/QosBandwidth;)Landroid/telephony/data/Qos$QosBandwidth;

    move-result-object v2

    iget p0, p0, Landroid/hardware/radio/data/EpsQos;->qci:I

    invoke-direct {v0, v1, v2, p0}, Landroid/telephony/data/EpsQos;-><init>(Landroid/telephony/data/Qos$QosBandwidth;Landroid/telephony/data/Qos$QosBandwidth;I)V

    return-object v0
.end method

.method private static blacklist convertHalQosBandwidth(Landroid/hardware/radio/V1_6/QosBandwidth;)Landroid/telephony/data/Qos$QosBandwidth;
    .registers 3

    .line 3676
    new-instance v0, Landroid/telephony/data/Qos$QosBandwidth;

    iget v1, p0, Landroid/hardware/radio/V1_6/QosBandwidth;->maxBitrateKbps:I

    iget p0, p0, Landroid/hardware/radio/V1_6/QosBandwidth;->guaranteedBitrateKbps:I

    invoke-direct {v0, v1, p0}, Landroid/telephony/data/Qos$QosBandwidth;-><init>(II)V

    return-object v0
.end method

.method private static blacklist convertHalQosBandwidth(Landroid/hardware/radio/data/QosBandwidth;)Landroid/telephony/data/Qos$QosBandwidth;
    .registers 3

    .line 3681
    new-instance v0, Landroid/telephony/data/Qos$QosBandwidth;

    iget v1, p0, Landroid/hardware/radio/data/QosBandwidth;->maxBitrateKbps:I

    iget p0, p0, Landroid/hardware/radio/data/QosBandwidth;->guaranteedBitrateKbps:I

    invoke-direct {v0, v1, p0}, Landroid/telephony/data/Qos$QosBandwidth;-><init>(II)V

    return-object v0
.end method

.method private static blacklist convertHalQosBearerFilter(Landroid/hardware/radio/V1_6/QosFilter;)Landroid/telephony/data/QosBearerFilter;
    .registers 16

    .line 3723
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3724
    iget-object v0, p0, Landroid/hardware/radio/V1_6/QosFilter;->localAddresses:Ljava/util/ArrayList;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-eqz v0, :cond_22

    .line 3726
    array-length v3, v0

    move v4, v2

    :goto_14
    if-ge v4, v3, :cond_22

    aget-object v5, v0, v4

    .line 3727
    invoke-static {v5}, Lcom/android/internal/telephony/RILUtils;->convertToLinkAddress(Ljava/lang/String;)Landroid/net/LinkAddress;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_22
    move v0, v2

    .line 3730
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3731
    iget-object v3, p0, Landroid/hardware/radio/V1_6/QosFilter;->remoteAddresses:Ljava/util/ArrayList;

    new-array v4, v0, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    if-eqz v3, :cond_43

    .line 3733
    array-length v4, v3

    :goto_35
    if-ge v0, v4, :cond_43

    aget-object v5, v3, v0

    .line 3734
    invoke-static {v5}, Lcom/android/internal/telephony/RILUtils;->convertToLinkAddress(Ljava/lang/String;)Landroid/net/LinkAddress;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    .line 3738
    :cond_43
    iget-object v0, p0, Landroid/hardware/radio/V1_6/QosFilter;->localPort:Landroid/hardware/radio/V1_6/MaybePort;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_5f

    .line 3739
    invoke-virtual {v0}, Landroid/hardware/radio/V1_6/MaybePort;->getDiscriminator()B

    move-result v0

    if-ne v0, v4, :cond_5f

    .line 3741
    iget-object v0, p0, Landroid/hardware/radio/V1_6/QosFilter;->localPort:Landroid/hardware/radio/V1_6/MaybePort;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_6/MaybePort;->range()Landroid/hardware/radio/V1_6/PortRange;

    move-result-object v0

    .line 3742
    new-instance v5, Landroid/telephony/data/QosBearerFilter$PortRange;

    iget v6, v0, Landroid/hardware/radio/V1_6/PortRange;->start:I

    iget v0, v0, Landroid/hardware/radio/V1_6/PortRange;->end:I

    invoke-direct {v5, v6, v0}, Landroid/telephony/data/QosBearerFilter$PortRange;-><init>(II)V

    goto :goto_60

    :cond_5f
    move-object v5, v3

    .line 3746
    :goto_60
    iget-object v0, p0, Landroid/hardware/radio/V1_6/QosFilter;->remotePort:Landroid/hardware/radio/V1_6/MaybePort;

    if-eqz v0, :cond_79

    .line 3747
    invoke-virtual {v0}, Landroid/hardware/radio/V1_6/MaybePort;->getDiscriminator()B

    move-result v0

    if-ne v0, v4, :cond_79

    .line 3749
    iget-object v0, p0, Landroid/hardware/radio/V1_6/QosFilter;->remotePort:Landroid/hardware/radio/V1_6/MaybePort;

    .line 3750
    invoke-virtual {v0}, Landroid/hardware/radio/V1_6/MaybePort;->range()Landroid/hardware/radio/V1_6/PortRange;

    move-result-object v0

    .line 3751
    new-instance v3, Landroid/telephony/data/QosBearerFilter$PortRange;

    iget v6, v0, Landroid/hardware/radio/V1_6/PortRange;->start:I

    iget v0, v0, Landroid/hardware/radio/V1_6/PortRange;->end:I

    invoke-direct {v3, v6, v0}, Landroid/telephony/data/QosBearerFilter$PortRange;-><init>(II)V

    .line 3755
    :cond_79
    iget-object v0, p0, Landroid/hardware/radio/V1_6/QosFilter;->tos:Landroid/hardware/radio/V1_6/QosFilter$TypeOfService;

    if-eqz v0, :cond_8b

    .line 3756
    invoke-virtual {v0}, Landroid/hardware/radio/V1_6/QosFilter$TypeOfService;->getDiscriminator()B

    move-result v0

    if-ne v0, v4, :cond_8b

    .line 3758
    iget-object v0, p0, Landroid/hardware/radio/V1_6/QosFilter;->tos:Landroid/hardware/radio/V1_6/QosFilter$TypeOfService;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_6/QosFilter$TypeOfService;->value()B

    move-result v0

    :goto_89
    move v6, v0

    goto :goto_8d

    :cond_8b
    const/4 v0, -0x1

    goto :goto_89

    .line 3762
    :goto_8d
    iget-object v0, p0, Landroid/hardware/radio/V1_6/QosFilter;->flowLabel:Landroid/hardware/radio/V1_6/QosFilter$Ipv6FlowLabel;

    const-wide/16 v7, -0x1

    if-eqz v0, :cond_a1

    .line 3763
    invoke-virtual {v0}, Landroid/hardware/radio/V1_6/QosFilter$Ipv6FlowLabel;->getDiscriminator()B

    move-result v0

    if-ne v0, v4, :cond_a1

    .line 3765
    iget-object v0, p0, Landroid/hardware/radio/V1_6/QosFilter;->flowLabel:Landroid/hardware/radio/V1_6/QosFilter$Ipv6FlowLabel;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_6/QosFilter$Ipv6FlowLabel;->value()I

    move-result v0

    int-to-long v9, v0

    goto :goto_a2

    :cond_a1
    move-wide v9, v7

    .line 3769
    :goto_a2
    iget-object v0, p0, Landroid/hardware/radio/V1_6/QosFilter;->spi:Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;

    if-eqz v0, :cond_b3

    .line 3770
    invoke-virtual {v0}, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;->getDiscriminator()B

    move-result v0

    if-ne v0, v4, :cond_b3

    .line 3772
    iget-object v0, p0, Landroid/hardware/radio/V1_6/QosFilter;->spi:Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;->value()I

    move-result v0

    int-to-long v7, v0

    .line 3775
    :cond_b3
    new-instance v0, Landroid/telephony/data/QosBearerFilter;

    move-object v4, v3

    move-object v3, v5

    iget-byte v5, p0, Landroid/hardware/radio/V1_6/QosFilter;->protocol:B

    iget-byte v11, p0, Landroid/hardware/radio/V1_6/QosFilter;->direction:B

    iget v12, p0, Landroid/hardware/radio/V1_6/QosFilter;->precedence:I

    move-wide v13, v9

    move-wide v9, v7

    move-wide v7, v13

    invoke-direct/range {v0 .. v12}, Landroid/telephony/data/QosBearerFilter;-><init>(Ljava/util/List;Ljava/util/List;Landroid/telephony/data/QosBearerFilter$PortRange;Landroid/telephony/data/QosBearerFilter$PortRange;IIJJII)V

    return-object v0
.end method

.method private static blacklist convertHalQosBearerFilter(Landroid/hardware/radio/data/QosFilter;)Landroid/telephony/data/QosBearerFilter;
    .registers 14

    .line 3781
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3782
    iget-object v0, p0, Landroid/hardware/radio/data/QosFilter;->localAddresses:[Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    .line 3784
    array-length v3, v0

    move v4, v2

    :goto_c
    if-ge v4, v3, :cond_1a

    aget-object v5, v0, v4

    .line 3785
    invoke-static {v5}, Lcom/android/internal/telephony/RILUtils;->convertToLinkAddress(Ljava/lang/String;)Landroid/net/LinkAddress;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_1a
    move v0, v2

    .line 3788
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3789
    iget-object v3, p0, Landroid/hardware/radio/data/QosFilter;->remoteAddresses:[Ljava/lang/String;

    if-eqz v3, :cond_33

    .line 3791
    array-length v4, v3

    :goto_25
    if-ge v0, v4, :cond_33

    aget-object v5, v3, v0

    .line 3792
    invoke-static {v5}, Lcom/android/internal/telephony/RILUtils;->convertToLinkAddress(Ljava/lang/String;)Landroid/net/LinkAddress;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 3796
    :cond_33
    iget-object v0, p0, Landroid/hardware/radio/data/QosFilter;->localPort:Landroid/hardware/radio/data/PortRange;

    const/4 v3, 0x0

    if-eqz v0, :cond_44

    .line 3797
    new-instance v0, Landroid/telephony/data/QosBearerFilter$PortRange;

    iget-object v4, p0, Landroid/hardware/radio/data/QosFilter;->localPort:Landroid/hardware/radio/data/PortRange;

    iget v5, v4, Landroid/hardware/radio/data/PortRange;->start:I

    iget v4, v4, Landroid/hardware/radio/data/PortRange;->end:I

    invoke-direct {v0, v5, v4}, Landroid/telephony/data/QosBearerFilter$PortRange;-><init>(II)V

    goto :goto_45

    :cond_44
    move-object v0, v3

    .line 3801
    :goto_45
    iget-object v4, p0, Landroid/hardware/radio/data/QosFilter;->remotePort:Landroid/hardware/radio/data/PortRange;

    if-eqz v4, :cond_54

    .line 3802
    new-instance v3, Landroid/telephony/data/QosBearerFilter$PortRange;

    iget-object v4, p0, Landroid/hardware/radio/data/QosFilter;->remotePort:Landroid/hardware/radio/data/PortRange;

    iget v5, v4, Landroid/hardware/radio/data/PortRange;->start:I

    iget v4, v4, Landroid/hardware/radio/data/PortRange;->end:I

    invoke-direct {v3, v5, v4}, Landroid/telephony/data/QosBearerFilter$PortRange;-><init>(II)V

    :cond_54
    move-object v4, v3

    .line 3806
    iget-object v3, p0, Landroid/hardware/radio/data/QosFilter;->tos:Landroid/hardware/radio/data/QosFilterTypeOfService;

    const/4 v5, 0x1

    if-eqz v3, :cond_62

    .line 3807
    invoke-virtual {v3}, Landroid/hardware/radio/data/QosFilterTypeOfService;->getTag()I

    move-result v3

    if-ne v3, v5, :cond_62

    move v6, v5

    goto :goto_64

    :cond_62
    const/4 v3, -0x1

    move v6, v3

    .line 3813
    :goto_64
    iget-object v3, p0, Landroid/hardware/radio/data/QosFilter;->flowLabel:Landroid/hardware/radio/data/QosFilterIpv6FlowLabel;

    const-wide/16 v7, 0x1

    const-wide/16 v9, -0x1

    if-eqz v3, :cond_74

    .line 3814
    invoke-virtual {v3}, Landroid/hardware/radio/data/QosFilterIpv6FlowLabel;->getTag()I

    move-result v3

    if-ne v3, v5, :cond_74

    move-wide v11, v7

    goto :goto_76

    :cond_74
    move-wide v11, v7

    move-wide v7, v9

    .line 3820
    :goto_76
    iget-object v3, p0, Landroid/hardware/radio/data/QosFilter;->spi:Landroid/hardware/radio/data/QosFilterIpsecSpi;

    if-eqz v3, :cond_81

    .line 3821
    invoke-virtual {v3}, Landroid/hardware/radio/data/QosFilterIpsecSpi;->getTag()I

    move-result v3

    if-ne v3, v5, :cond_81

    move-wide v9, v11

    :cond_81
    move-object v3, v0

    .line 3826
    new-instance v0, Landroid/telephony/data/QosBearerFilter;

    iget-byte v5, p0, Landroid/hardware/radio/data/QosFilter;->protocol:B

    iget-byte v11, p0, Landroid/hardware/radio/data/QosFilter;->direction:B

    iget v12, p0, Landroid/hardware/radio/data/QosFilter;->precedence:I

    invoke-direct/range {v0 .. v12}, Landroid/telephony/data/QosBearerFilter;-><init>(Ljava/util/List;Ljava/util/List;Landroid/telephony/data/QosBearerFilter$PortRange;Landroid/telephony/data/QosBearerFilter$PortRange;IIJJII)V

    return-object v0
.end method

.method private static blacklist convertHalQosBearerSession(Landroid/hardware/radio/V1_6/QosSession;)Landroid/telephony/data/QosBearerSession;
    .registers 6

    .line 3832
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3833
    iget-object v1, p0, Landroid/hardware/radio/V1_6/QosSession;->qosFilters:Ljava/util/ArrayList;

    if-eqz v1, :cond_20

    .line 3834
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_20

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Landroid/hardware/radio/V1_6/QosFilter;

    .line 3835
    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->convertHalQosBearerFilter(Landroid/hardware/radio/V1_6/QosFilter;)Landroid/telephony/data/QosBearerFilter;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 3838
    :cond_20
    new-instance v1, Landroid/telephony/data/QosBearerSession;

    iget v2, p0, Landroid/hardware/radio/V1_6/QosSession;->qosSessionId:I

    iget-object p0, p0, Landroid/hardware/radio/V1_6/QosSession;->qos:Landroid/hardware/radio/V1_6/Qos;

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalQos(Landroid/hardware/radio/V1_6/Qos;)Landroid/telephony/data/Qos;

    move-result-object p0

    invoke-direct {v1, v2, p0, v0}, Landroid/telephony/data/QosBearerSession;-><init>(ILandroid/telephony/data/Qos;Ljava/util/List;)V

    return-object v1
.end method

.method private static blacklist convertHalQosBearerSession(Landroid/hardware/radio/data/QosSession;)Landroid/telephony/data/QosBearerSession;
    .registers 6

    .line 3844
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3845
    iget-object v1, p0, Landroid/hardware/radio/data/QosSession;->qosFilters:[Landroid/hardware/radio/data/QosFilter;

    if-eqz v1, :cond_19

    .line 3846
    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_19

    aget-object v4, v1, v3

    .line 3847
    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->convertHalQosBearerFilter(Landroid/hardware/radio/data/QosFilter;)Landroid/telephony/data/QosBearerFilter;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 3850
    :cond_19
    new-instance v1, Landroid/telephony/data/QosBearerSession;

    iget v2, p0, Landroid/hardware/radio/data/QosSession;->qosSessionId:I

    iget-object p0, p0, Landroid/hardware/radio/data/QosSession;->qos:Landroid/hardware/radio/data/Qos;

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalQos(Landroid/hardware/radio/data/Qos;)Landroid/telephony/data/Qos;

    move-result-object p0

    invoke-direct {v1, v2, p0, v0}, Landroid/telephony/data/QosBearerSession;-><init>(ILandroid/telephony/data/Qos;Ljava/util/List;)V

    return-object v1
.end method

.method public static blacklist convertHalRadioAccessNetworks(I)I
    .registers 3

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_14

    const/4 v0, 0x2

    if-eq p0, v0, :cond_14

    const/4 v0, 0x3

    if-eq p0, v0, :cond_14

    const/4 v0, 0x4

    if-eq p0, v0, :cond_12

    const/4 v1, 0x5

    if-eq p0, v1, :cond_11

    const/4 p0, 0x0

    return p0

    :cond_11
    return v0

    :cond_12
    const/4 p0, 0x6

    return p0

    :cond_14
    return v0
.end method

.method public static blacklist convertHalRadioAccessSpecifier(Landroid/hardware/radio/V1_5/RadioAccessSpecifier;)Landroid/telephony/RadioAccessSpecifier;
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1269
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1270
    iget-object v1, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->bands:Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;

    invoke-virtual {v1}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->getDiscriminator()B

    move-result v1

    if-eqz v1, :cond_30

    const/4 v2, 0x1

    if-eq v1, v2, :cond_29

    const/4 v2, 0x2

    if-eq v1, v2, :cond_22

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1b

    goto :goto_36

    .line 1285
    :cond_1b
    iget-object v0, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->bands:Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->ngranBands()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_36

    .line 1281
    :cond_22
    iget-object v0, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->bands:Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->eutranBands()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_36

    .line 1277
    :cond_29
    iget-object v0, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->bands:Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->utranBands()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_36

    .line 1273
    :cond_30
    iget-object v0, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->bands:Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->geranBands()Ljava/util/ArrayList;

    move-result-object v0

    .line 1288
    :goto_36
    new-instance v1, Landroid/telephony/RadioAccessSpecifier;

    iget v2, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->radioAccessNetwork:I

    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->convertHalRadioAccessNetworks(I)I

    move-result v2

    .line 1289
    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    iget-object p0, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->channels:Ljava/util/ArrayList;

    .line 1290
    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v3, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v3}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p0

    invoke-direct {v1, v2, v0, p0}, Landroid/telephony/RadioAccessSpecifier;-><init>(I[I[I)V

    return-object v1
.end method

.method public static blacklist convertHalRadioAccessSpecifier(Landroid/hardware/radio/network/RadioAccessSpecifier;)Landroid/telephony/RadioAccessSpecifier;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 1302
    :cond_4
    iget-object v1, p0, Landroid/hardware/radio/network/RadioAccessSpecifier;->bands:Landroid/hardware/radio/network/RadioAccessSpecifierBands;

    invoke-virtual {v1}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->getTag()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2c

    const/4 v2, 0x2

    if-eq v1, v2, :cond_25

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1e

    const/4 v2, 0x4

    if-eq v1, v2, :cond_17

    goto :goto_32

    .line 1313
    :cond_17
    iget-object v0, p0, Landroid/hardware/radio/network/RadioAccessSpecifier;->bands:Landroid/hardware/radio/network/RadioAccessSpecifierBands;

    invoke-virtual {v0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->getNgranBands()[I

    move-result-object v0

    goto :goto_32

    .line 1310
    :cond_1e
    iget-object v0, p0, Landroid/hardware/radio/network/RadioAccessSpecifier;->bands:Landroid/hardware/radio/network/RadioAccessSpecifierBands;

    invoke-virtual {v0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->getEutranBands()[I

    move-result-object v0

    goto :goto_32

    .line 1307
    :cond_25
    iget-object v0, p0, Landroid/hardware/radio/network/RadioAccessSpecifier;->bands:Landroid/hardware/radio/network/RadioAccessSpecifierBands;

    invoke-virtual {v0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->getUtranBands()[I

    move-result-object v0

    goto :goto_32

    .line 1304
    :cond_2c
    iget-object v0, p0, Landroid/hardware/radio/network/RadioAccessSpecifier;->bands:Landroid/hardware/radio/network/RadioAccessSpecifierBands;

    invoke-virtual {v0}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->getGeranBands()[I

    move-result-object v0

    .line 1316
    :goto_32
    new-instance v1, Landroid/telephony/RadioAccessSpecifier;

    iget v2, p0, Landroid/hardware/radio/network/RadioAccessSpecifier;->accessNetwork:I

    iget-object p0, p0, Landroid/hardware/radio/network/RadioAccessSpecifier;->channels:[I

    invoke-direct {v1, v2, v0, p0}, Landroid/telephony/RadioAccessSpecifier;-><init>(I[I[I)V

    return-object v1
.end method

.method public static blacklist convertHalRadioCapability(Landroid/hardware/radio/V1_0/RadioCapability;Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/RadioCapability;
    .registers 9

    .line 2188
    iget v2, p0, Landroid/hardware/radio/V1_0/RadioCapability;->session:I

    .line 2189
    iget v3, p0, Landroid/hardware/radio/V1_0/RadioCapability;->phase:I

    .line 2190
    iget v0, p0, Landroid/hardware/radio/V1_0/RadioCapability;->raf:I

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalNetworkTypeBitMask(I)I

    move-result v4

    .line 2191
    iget-object v5, p0, Landroid/hardware/radio/V1_0/RadioCapability;->logicalModemUuid:Ljava/lang/String;

    .line 2192
    iget v6, p0, Landroid/hardware/radio/V1_0/RadioCapability;->status:I

    .line 2194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "convertHalRadioCapability: session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", phase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", logicModemUuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rcRil.raf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/hardware/radio/V1_0/RadioCapability;->raf:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2197
    new-instance v0, Lcom/android/internal/telephony/RadioCapability;

    iget-object p0, p1, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/RadioCapability;-><init>(IIIILjava/lang/String;I)V

    return-object v0
.end method

.method public static blacklist convertHalRadioCapability(Landroid/hardware/radio/modem/RadioCapability;Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/RadioCapability;
    .registers 9

    .line 2208
    iget v2, p0, Landroid/hardware/radio/modem/RadioCapability;->session:I

    .line 2209
    iget v3, p0, Landroid/hardware/radio/modem/RadioCapability;->phase:I

    .line 2210
    iget v0, p0, Landroid/hardware/radio/modem/RadioCapability;->raf:I

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalNetworkTypeBitMask(I)I

    move-result v4

    .line 2211
    iget-object v5, p0, Landroid/hardware/radio/modem/RadioCapability;->logicalModemUuid:Ljava/lang/String;

    .line 2212
    iget v6, p0, Landroid/hardware/radio/modem/RadioCapability;->status:I

    .line 2214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "convertHalRadioCapability: session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", phase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", logicModemUuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rcRil.raf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/hardware/radio/modem/RadioCapability;->raf:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2217
    new-instance v0, Lcom/android/internal/telephony/RadioCapability;

    iget-object p0, p1, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/RadioCapability;-><init>(IIIILjava/lang/String;I)V

    return-object v0
.end method

.method public static blacklist convertHalRadioState(I)I
    .registers 4

    if-eqz p0, :cond_23

    const/4 v0, 0x1

    if-eq p0, v0, :cond_21

    const/16 v1, 0xa

    if-ne p0, v1, :cond_a

    return v0

    .line 3926
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized RadioState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    const/4 p0, 0x2

    return p0

    :cond_23
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist convertHalRegState(I)I
    .registers 5

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_17

    const/4 v0, 0x2

    if-eq p0, v0, :cond_17

    const/4 v1, 0x3

    if-eq p0, v1, :cond_16

    const/4 v2, 0x4

    if-eq p0, v2, :cond_15

    const/4 v3, 0x5

    if-eq p0, v3, :cond_14

    packed-switch p0, :pswitch_data_18

    const/4 p0, 0x0

    return p0

    :cond_14
    return v3

    :cond_15
    :pswitch_15
    return v2

    :cond_16
    :pswitch_16
    return v1

    :cond_17
    :pswitch_17
    return v0

    :pswitch_data_18
    .packed-switch 0xc
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch
.end method

.method public static blacklist convertHalSignalStrength(Landroid/hardware/radio/network/SignalStrength;)Landroid/telephony/SignalStrength;
    .registers 8

    .line 2913
    new-instance v0, Landroid/telephony/SignalStrength;

    iget-object v1, p0, Landroid/hardware/radio/network/SignalStrength;->cdma:Landroid/hardware/radio/network/CdmaSignalStrength;

    iget-object v2, p0, Landroid/hardware/radio/network/SignalStrength;->evdo:Landroid/hardware/radio/network/EvdoSignalStrength;

    .line 2914
    invoke-static {v1, v2}, Lcom/android/internal/telephony/RILUtils;->convertHalCdmaSignalStrength(Landroid/hardware/radio/network/CdmaSignalStrength;Landroid/hardware/radio/network/EvdoSignalStrength;)Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/network/SignalStrength;->gsm:Landroid/hardware/radio/network/GsmSignalStrength;

    .line 2915
    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->convertHalGsmSignalStrength(Landroid/hardware/radio/network/GsmSignalStrength;)Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/radio/network/SignalStrength;->wcdma:Landroid/hardware/radio/network/WcdmaSignalStrength;

    .line 2916
    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalWcdmaSignalStrength(Landroid/hardware/radio/network/WcdmaSignalStrength;)Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/radio/network/SignalStrength;->tdscdma:Landroid/hardware/radio/network/TdscdmaSignalStrength;

    .line 2917
    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->convertHalTdscdmaSignalStrength(Landroid/hardware/radio/network/TdscdmaSignalStrength;)Landroid/telephony/CellSignalStrengthTdscdma;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/radio/network/SignalStrength;->lte:Landroid/hardware/radio/network/LteSignalStrength;

    .line 2918
    invoke-static {v5}, Lcom/android/internal/telephony/RILUtils;->convertHalLteSignalStrength(Landroid/hardware/radio/network/LteSignalStrength;)Landroid/telephony/CellSignalStrengthLte;

    move-result-object v5

    iget-object p0, p0, Landroid/hardware/radio/network/SignalStrength;->nr:Landroid/hardware/radio/network/NrSignalStrength;

    .line 2919
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalNrSignalStrength(Landroid/hardware/radio/network/NrSignalStrength;)Landroid/telephony/CellSignalStrengthNr;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/CellSignalStrengthCdma;Landroid/telephony/CellSignalStrengthGsm;Landroid/telephony/CellSignalStrengthWcdma;Landroid/telephony/CellSignalStrengthTdscdma;Landroid/telephony/CellSignalStrengthLte;Landroid/telephony/CellSignalStrengthNr;)V

    return-object v0
.end method

.method public static blacklist convertHalSignalStrength(Ljava/lang/Object;)Landroid/telephony/SignalStrength;
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 2882
    :cond_4
    instance-of v1, p0, Landroid/hardware/radio/V1_4/SignalStrength;

    if-eqz v1, :cond_36

    .line 2883
    check-cast p0, Landroid/hardware/radio/V1_4/SignalStrength;

    .line 2885
    new-instance v0, Landroid/telephony/SignalStrength;

    iget-object v1, p0, Landroid/hardware/radio/V1_4/SignalStrength;->cdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    iget-object v2, p0, Landroid/hardware/radio/V1_4/SignalStrength;->evdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    .line 2886
    invoke-static {v1, v2}, Lcom/android/internal/telephony/RILUtils;->convertHalCdmaSignalStrength(Landroid/hardware/radio/V1_0/CdmaSignalStrength;Landroid/hardware/radio/V1_0/EvdoSignalStrength;)Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/V1_4/SignalStrength;->gsm:Landroid/hardware/radio/V1_0/GsmSignalStrength;

    .line 2887
    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->convertHalGsmSignalStrength(Landroid/hardware/radio/V1_0/GsmSignalStrength;)Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/radio/V1_4/SignalStrength;->wcdma:Landroid/hardware/radio/V1_2/WcdmaSignalStrength;

    .line 2888
    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalWcdmaSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/radio/V1_4/SignalStrength;->tdscdma:Landroid/hardware/radio/V1_2/TdscdmaSignalStrength;

    .line 2889
    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->convertHalTdscdmaSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthTdscdma;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/radio/V1_4/SignalStrength;->lte:Landroid/hardware/radio/V1_0/LteSignalStrength;

    .line 2890
    invoke-static {v5}, Lcom/android/internal/telephony/RILUtils;->convertHalLteSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthLte;

    move-result-object v5

    iget-object p0, p0, Landroid/hardware/radio/V1_4/SignalStrength;->nr:Landroid/hardware/radio/V1_4/NrSignalStrength;

    .line 2891
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalNrSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthNr;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/CellSignalStrengthCdma;Landroid/telephony/CellSignalStrengthGsm;Landroid/telephony/CellSignalStrengthWcdma;Landroid/telephony/CellSignalStrengthTdscdma;Landroid/telephony/CellSignalStrengthLte;Landroid/telephony/CellSignalStrengthNr;)V

    return-object v0

    .line 2892
    :cond_36
    instance-of v1, p0, Landroid/hardware/radio/V1_6/SignalStrength;

    if-eqz v1, :cond_67

    .line 2893
    check-cast p0, Landroid/hardware/radio/V1_6/SignalStrength;

    .line 2895
    new-instance v0, Landroid/telephony/SignalStrength;

    iget-object v1, p0, Landroid/hardware/radio/V1_6/SignalStrength;->cdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    iget-object v2, p0, Landroid/hardware/radio/V1_6/SignalStrength;->evdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    .line 2896
    invoke-static {v1, v2}, Lcom/android/internal/telephony/RILUtils;->convertHalCdmaSignalStrength(Landroid/hardware/radio/V1_0/CdmaSignalStrength;Landroid/hardware/radio/V1_0/EvdoSignalStrength;)Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/V1_6/SignalStrength;->gsm:Landroid/hardware/radio/V1_0/GsmSignalStrength;

    .line 2897
    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->convertHalGsmSignalStrength(Landroid/hardware/radio/V1_0/GsmSignalStrength;)Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/radio/V1_6/SignalStrength;->wcdma:Landroid/hardware/radio/V1_2/WcdmaSignalStrength;

    .line 2898
    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalWcdmaSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/radio/V1_6/SignalStrength;->tdscdma:Landroid/hardware/radio/V1_2/TdscdmaSignalStrength;

    .line 2899
    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->convertHalTdscdmaSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthTdscdma;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/radio/V1_6/SignalStrength;->lte:Landroid/hardware/radio/V1_6/LteSignalStrength;

    .line 2900
    invoke-static {v5}, Lcom/android/internal/telephony/RILUtils;->convertHalLteSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthLte;

    move-result-object v5

    iget-object p0, p0, Landroid/hardware/radio/V1_6/SignalStrength;->nr:Landroid/hardware/radio/V1_6/NrSignalStrength;

    .line 2901
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertHalNrSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthNr;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/CellSignalStrengthCdma;Landroid/telephony/CellSignalStrengthGsm;Landroid/telephony/CellSignalStrengthWcdma;Landroid/telephony/CellSignalStrengthTdscdma;Landroid/telephony/CellSignalStrengthLte;Landroid/telephony/CellSignalStrengthNr;)V

    :cond_67
    return-object v0
.end method

.method private static blacklist convertHalSliceInfo(Landroid/hardware/radio/V1_6/SliceInfo;)Landroid/telephony/data/NetworkSliceInfo;
    .registers 4

    .line 3534
    new-instance v0, Landroid/telephony/data/NetworkSliceInfo$Builder;

    invoke-direct {v0}, Landroid/telephony/data/NetworkSliceInfo$Builder;-><init>()V

    iget-byte v1, p0, Landroid/hardware/radio/V1_6/SliceInfo;->sst:B

    .line 3535
    invoke-virtual {v0, v1}, Landroid/telephony/data/NetworkSliceInfo$Builder;->setSliceServiceType(I)Landroid/telephony/data/NetworkSliceInfo$Builder;

    move-result-object v0

    iget-byte v1, p0, Landroid/hardware/radio/V1_6/SliceInfo;->mappedHplmnSst:B

    .line 3536
    invoke-virtual {v0, v1}, Landroid/telephony/data/NetworkSliceInfo$Builder;->setMappedHplmnSliceServiceType(I)Landroid/telephony/data/NetworkSliceInfo$Builder;

    move-result-object v0

    iget-byte v1, p0, Landroid/hardware/radio/V1_6/SliceInfo;->status:B

    .line 3537
    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertHalSliceStatus(B)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/NetworkSliceInfo$Builder;->setStatus(I)Landroid/telephony/data/NetworkSliceInfo$Builder;

    move-result-object v0

    .line 3538
    iget v1, p0, Landroid/hardware/radio/V1_6/SliceInfo;->sliceDifferentiator:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_29

    .line 3539
    invoke-virtual {v0, v1}, Landroid/telephony/data/NetworkSliceInfo$Builder;->setSliceDifferentiator(I)Landroid/telephony/data/NetworkSliceInfo$Builder;

    move-result-object v1

    iget p0, p0, Landroid/hardware/radio/V1_6/SliceInfo;->mappedHplmnSD:I

    .line 3540
    invoke-virtual {v1, p0}, Landroid/telephony/data/NetworkSliceInfo$Builder;->setMappedHplmnSliceDifferentiator(I)Landroid/telephony/data/NetworkSliceInfo$Builder;

    .line 3542
    :cond_29
    invoke-virtual {v0}, Landroid/telephony/data/NetworkSliceInfo$Builder;->build()Landroid/telephony/data/NetworkSliceInfo;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist convertHalSliceInfo(Landroid/hardware/radio/data/SliceInfo;)Landroid/telephony/data/NetworkSliceInfo;
    .registers 4

    .line 3546
    new-instance v0, Landroid/telephony/data/NetworkSliceInfo$Builder;

    invoke-direct {v0}, Landroid/telephony/data/NetworkSliceInfo$Builder;-><init>()V

    iget-byte v1, p0, Landroid/hardware/radio/data/SliceInfo;->sliceServiceType:B

    .line 3547
    invoke-virtual {v0, v1}, Landroid/telephony/data/NetworkSliceInfo$Builder;->setSliceServiceType(I)Landroid/telephony/data/NetworkSliceInfo$Builder;

    move-result-object v0

    iget-byte v1, p0, Landroid/hardware/radio/data/SliceInfo;->mappedHplmnSst:B

    .line 3548
    invoke-virtual {v0, v1}, Landroid/telephony/data/NetworkSliceInfo$Builder;->setMappedHplmnSliceServiceType(I)Landroid/telephony/data/NetworkSliceInfo$Builder;

    move-result-object v0

    iget-byte v1, p0, Landroid/hardware/radio/data/SliceInfo;->status:B

    .line 3549
    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertHalSliceStatus(B)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/NetworkSliceInfo$Builder;->setStatus(I)Landroid/telephony/data/NetworkSliceInfo$Builder;

    move-result-object v0

    .line 3550
    iget v1, p0, Landroid/hardware/radio/data/SliceInfo;->sliceDifferentiator:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_29

    .line 3551
    invoke-virtual {v0, v1}, Landroid/telephony/data/NetworkSliceInfo$Builder;->setSliceDifferentiator(I)Landroid/telephony/data/NetworkSliceInfo$Builder;

    move-result-object v1

    iget p0, p0, Landroid/hardware/radio/data/SliceInfo;->mappedHplmnSd:I

    .line 3552
    invoke-virtual {v1, p0}, Landroid/telephony/data/NetworkSliceInfo$Builder;->setMappedHplmnSliceDifferentiator(I)Landroid/telephony/data/NetworkSliceInfo$Builder;

    .line 3554
    :cond_29
    invoke-virtual {v0}, Landroid/telephony/data/NetworkSliceInfo$Builder;->build()Landroid/telephony/data/NetworkSliceInfo;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist convertHalSliceStatus(B)I
    .registers 2

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_11

    const/4 v0, 0x2

    if-eq p0, v0, :cond_11

    const/4 v0, 0x3

    if-eq p0, v0, :cond_11

    const/4 v0, 0x4

    if-eq p0, v0, :cond_11

    const/4 v0, 0x5

    if-eq p0, v0, :cond_11

    const/4 p0, 0x0

    return p0

    :cond_11
    return v0
.end method

.method public static blacklist convertHalSlicingConfig(Landroid/hardware/radio/V1_6/SlicingConfig;)Landroid/telephony/data/NetworkSlicingConfig;
    .registers 4

    .line 3614
    iget-object v0, p0, Landroid/hardware/radio/V1_6/SlicingConfig;->urspRules:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 3633
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 3634
    new-instance v1, Landroid/telephony/data/NetworkSlicingConfig;

    iget-object p0, p0, Landroid/hardware/radio/V1_6/SlicingConfig;->sliceInfo:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v2, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda6;-><init>()V

    .line 3635
    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-direct {v1, v0, p0}, Landroid/telephony/data/NetworkSlicingConfig;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method

.method public static blacklist convertHalSlicingConfig(Landroid/hardware/radio/data/SlicingConfig;)Landroid/telephony/data/NetworkSlicingConfig;
    .registers 21

    move-object/from16 v1, p0

    .line 3645
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3646
    iget-object v3, v1, Landroid/hardware/radio/data/SlicingConfig;->urspRules:[Landroid/hardware/radio/data/UrspRule;

    array-length v4, v3

    const/4 v6, 0x0

    :goto_b
    if-ge v6, v4, :cond_96

    aget-object v7, v3, v6

    .line 3647
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3648
    iget-object v9, v7, Landroid/hardware/radio/data/UrspRule;->trafficDescriptors:[Landroid/hardware/radio/data/TrafficDescriptor;

    array-length v10, v9

    const/4 v11, 0x0

    :goto_18
    if-ge v11, v10, :cond_3c

    aget-object v0, v9, v11

    .line 3650
    :try_start_1c
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertHalTrafficDescriptor(Landroid/hardware/radio/data/TrafficDescriptor;)Landroid/telephony/data/TrafficDescriptor;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_23
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_23} :catch_24

    goto :goto_39

    :catch_24
    move-exception v0

    .line 3652
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "convertHalTrafficDescriptor: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->loge(Ljava/lang/String;)V

    :goto_39
    add-int/lit8 v11, v11, 0x1

    goto :goto_18

    .line 3655
    :cond_3c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3657
    iget-object v9, v7, Landroid/hardware/radio/data/UrspRule;->routeSelectionDescriptor:[Landroid/hardware/radio/data/RouteSelectionDescriptor;

    array-length v10, v9

    const/4 v11, 0x0

    :goto_45
    if-ge v11, v10, :cond_84

    aget-object v12, v9, v11

    .line 3658
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 3659
    iget-object v14, v12, Landroid/hardware/radio/data/RouteSelectionDescriptor;->sliceInfo:[Landroid/hardware/radio/data/SliceInfo;

    array-length v15, v14

    const/4 v5, 0x0

    :goto_52
    if-ge v5, v15, :cond_64

    aget-object v16, v14, v5

    move-object/from16 v19, v3

    .line 3660
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/RILUtils;->convertHalSliceInfo(Landroid/hardware/radio/data/SliceInfo;)Landroid/telephony/data/NetworkSliceInfo;

    move-result-object v3

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, v19

    goto :goto_52

    :cond_64
    move-object/from16 v19, v3

    .line 3662
    new-instance v3, Landroid/telephony/data/RouteSelectionDescriptor;

    iget-byte v14, v12, Landroid/hardware/radio/data/RouteSelectionDescriptor;->precedence:B

    iget v15, v12, Landroid/hardware/radio/data/RouteSelectionDescriptor;->sessionType:I

    iget-byte v5, v12, Landroid/hardware/radio/data/RouteSelectionDescriptor;->sscMode:B

    iget-object v12, v12, Landroid/hardware/radio/data/RouteSelectionDescriptor;->dnn:[Ljava/lang/String;

    .line 3663
    invoke-static {v12}, Lcom/android/internal/telephony/RILUtils;->primitiveArrayToArrayList([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v18

    move/from16 v16, v5

    move-object/from16 v17, v13

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Landroid/telephony/data/RouteSelectionDescriptor;-><init>(IIILjava/util/List;Ljava/util/List;)V

    .line 3662
    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, v19

    goto :goto_45

    :cond_84
    move-object/from16 v19, v3

    .line 3665
    new-instance v3, Landroid/telephony/data/UrspRule;

    iget v5, v7, Landroid/hardware/radio/data/UrspRule;->precedence:I

    invoke-direct {v3, v5, v8, v0}, Landroid/telephony/data/UrspRule;-><init>(ILjava/util/List;Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v3, v19

    goto/16 :goto_b

    .line 3667
    :cond_96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3668
    iget-object v1, v1, Landroid/hardware/radio/data/SlicingConfig;->sliceInfo:[Landroid/hardware/radio/data/SliceInfo;

    array-length v3, v1

    const/4 v5, 0x0

    :goto_9f
    if-ge v5, v3, :cond_ad

    aget-object v4, v1, v5

    .line 3669
    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->convertHalSliceInfo(Landroid/hardware/radio/data/SliceInfo;)Landroid/telephony/data/NetworkSliceInfo;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_9f

    .line 3671
    :cond_ad
    new-instance v1, Landroid/telephony/data/NetworkSlicingConfig;

    invoke-direct {v1, v2, v0}, Landroid/telephony/data/NetworkSlicingConfig;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method

.method public static blacklist convertHalSlotStatus(Ljava/lang/Object;)Ljava/util/ArrayList;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/uicc/IccSlotStatus;",
            ">;"
        }
    .end annotation

    .line 4441
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 4443
    :try_start_7
    move-object v3, p0

    check-cast v3, [Landroid/hardware/radio/config/SimSlotStatus;

    .line 4445
    array-length v4, v3

    move v5, v2

    :goto_c
    if-ge v5, v4, :cond_eb

    aget-object v6, v3, v5

    .line 4446
    new-instance v7, Lcom/android/internal/telephony/uicc/IccSlotStatus;

    invoke-direct {v7}, Lcom/android/internal/telephony/uicc/IccSlotStatus;-><init>()V

    .line 4447
    iget v8, v6, Landroid/hardware/radio/config/SimSlotStatus;->cardState:I

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/uicc/IccSlotStatus;->setCardState(I)V

    .line 4448
    iget-object v8, v6, Landroid/hardware/radio/config/SimSlotStatus;->portInfo:[Landroid/hardware/radio/config/SimPortInfo;

    array-length v8, v8

    .line 4449
    new-array v9, v8, [Lcom/android/internal/telephony/uicc/IccSimPortInfo;

    iput-object v9, v7, Lcom/android/internal/telephony/uicc/IccSlotStatus;->mSimPortInfos:[Lcom/android/internal/telephony/uicc/IccSimPortInfo;

    move v9, v2

    :goto_22
    if-ge v9, v8, :cond_44

    .line 4451
    new-instance v10, Lcom/android/internal/telephony/uicc/IccSimPortInfo;

    invoke-direct {v10}, Lcom/android/internal/telephony/uicc/IccSimPortInfo;-><init>()V

    .line 4452
    iget-object v11, v6, Landroid/hardware/radio/config/SimSlotStatus;->portInfo:[Landroid/hardware/radio/config/SimPortInfo;

    aget-object v11, v11, v9

    iget-object v12, v11, Landroid/hardware/radio/config/SimPortInfo;->iccId:Ljava/lang/String;

    iput-object v12, v10, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mIccId:Ljava/lang/String;

    .line 4455
    iget-boolean v12, v11, Landroid/hardware/radio/config/SimPortInfo;->portActive:Z

    if-eqz v12, :cond_38

    .line 4456
    iget v11, v11, Landroid/hardware/radio/config/SimPortInfo;->logicalSlotId:I

    goto :goto_39

    :cond_38
    move v11, v1

    :goto_39
    iput v11, v10, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mLogicalSlotIndex:I

    .line 4457
    iput-boolean v12, v10, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mPortActive:Z

    .line 4458
    iget-object v11, v7, Lcom/android/internal/telephony/uicc/IccSlotStatus;->mSimPortInfos:[Lcom/android/internal/telephony/uicc/IccSimPortInfo;

    aput-object v10, v11, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_22

    .line 4460
    :cond_44
    iget-object v8, v6, Landroid/hardware/radio/config/SimSlotStatus;->atr:Ljava/lang/String;

    iput-object v8, v7, Lcom/android/internal/telephony/uicc/IccSlotStatus;->atr:Ljava/lang/String;

    .line 4461
    iget-object v8, v6, Landroid/hardware/radio/config/SimSlotStatus;->eid:Ljava/lang/String;

    iput-object v8, v7, Lcom/android/internal/telephony/uicc/IccSlotStatus;->eid:Ljava/lang/String;

    .line 4462
    iget v6, v6, Landroid/hardware/radio/config/SimSlotStatus;->supportedMepMode:I

    invoke-virtual {v7, v6}, Lcom/android/internal/telephony/uicc/IccSlotStatus;->setMultipleEnabledProfilesMode(I)V

    .line 4463
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_54
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_54} :catch_57

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :catch_57
    const/4 v3, 0x1

    .line 4469
    :try_start_58
    move-object v4, p0

    check-cast v4, Ljava/util/ArrayList;

    .line 4472
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v2

    :goto_60
    if-ge v6, v5, :cond_eb

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Landroid/hardware/radio/config/V1_2/SimSlotStatus;

    .line 4473
    new-instance v8, Lcom/android/internal/telephony/uicc/IccSlotStatus;

    invoke-direct {v8}, Lcom/android/internal/telephony/uicc/IccSlotStatus;-><init>()V

    .line 4474
    iget-object v9, v7, Landroid/hardware/radio/config/V1_2/SimSlotStatus;->base:Landroid/hardware/radio/config/V1_0/SimSlotStatus;

    iget v9, v9, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->cardState:I

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/IccSlotStatus;->setCardState(I)V

    .line 4476
    new-array v9, v3, [Lcom/android/internal/telephony/uicc/IccSimPortInfo;

    iput-object v9, v8, Lcom/android/internal/telephony/uicc/IccSlotStatus;->mSimPortInfos:[Lcom/android/internal/telephony/uicc/IccSimPortInfo;

    .line 4477
    new-instance v9, Lcom/android/internal/telephony/uicc/IccSimPortInfo;

    invoke-direct {v9}, Lcom/android/internal/telephony/uicc/IccSimPortInfo;-><init>()V

    .line 4478
    iget-object v10, v7, Landroid/hardware/radio/config/V1_2/SimSlotStatus;->base:Landroid/hardware/radio/config/V1_0/SimSlotStatus;

    iget-object v11, v10, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->iccid:Ljava/lang/String;

    iput-object v11, v9, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mIccId:Ljava/lang/String;

    .line 4479
    iget v11, v10, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->slotState:I

    if-ne v11, v3, :cond_8b

    move v11, v3

    goto :goto_8c

    :cond_8b
    move v11, v2

    :goto_8c
    iput-boolean v11, v9, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mPortActive:Z

    if-eqz v11, :cond_93

    .line 4483
    iget v11, v10, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->logicalSlotId:I

    goto :goto_94

    :cond_93
    move v11, v1

    :goto_94
    iput v11, v9, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mLogicalSlotIndex:I

    .line 4484
    iget-object v11, v8, Lcom/android/internal/telephony/uicc/IccSlotStatus;->mSimPortInfos:[Lcom/android/internal/telephony/uicc/IccSimPortInfo;

    aput-object v9, v11, v2

    .line 4485
    iget-object v9, v10, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->atr:Ljava/lang/String;

    iput-object v9, v8, Lcom/android/internal/telephony/uicc/IccSlotStatus;->atr:Ljava/lang/String;

    .line 4486
    iget-object v7, v7, Landroid/hardware/radio/config/V1_2/SimSlotStatus;->eid:Ljava/lang/String;

    iput-object v7, v8, Lcom/android/internal/telephony/uicc/IccSlotStatus;->eid:Ljava/lang/String;

    .line 4487
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a5
    .catch Ljava/lang/ClassCastException; {:try_start_58 .. :try_end_a5} :catch_a6

    goto :goto_60

    .line 4493
    :catch_a6
    :try_start_a6
    check-cast p0, Ljava/util/ArrayList;

    .line 4496
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v2

    :goto_ad
    if-ge v5, v4, :cond_eb

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Landroid/hardware/radio/config/V1_0/SimSlotStatus;

    .line 4497
    new-instance v7, Lcom/android/internal/telephony/uicc/IccSlotStatus;

    invoke-direct {v7}, Lcom/android/internal/telephony/uicc/IccSlotStatus;-><init>()V

    .line 4498
    iget v8, v6, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->cardState:I

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/uicc/IccSlotStatus;->setCardState(I)V

    .line 4500
    new-array v8, v3, [Lcom/android/internal/telephony/uicc/IccSimPortInfo;

    iput-object v8, v7, Lcom/android/internal/telephony/uicc/IccSlotStatus;->mSimPortInfos:[Lcom/android/internal/telephony/uicc/IccSimPortInfo;

    .line 4501
    new-instance v8, Lcom/android/internal/telephony/uicc/IccSimPortInfo;

    invoke-direct {v8}, Lcom/android/internal/telephony/uicc/IccSimPortInfo;-><init>()V

    .line 4502
    iget-object v9, v6, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->iccid:Ljava/lang/String;

    iput-object v9, v8, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mIccId:Ljava/lang/String;

    .line 4503
    iget v9, v6, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->slotState:I

    if-ne v9, v3, :cond_d4

    move v9, v3

    goto :goto_d5

    :cond_d4
    move v9, v2

    :goto_d5
    iput-boolean v9, v8, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mPortActive:Z

    if-eqz v9, :cond_dc

    .line 4507
    iget v9, v6, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->logicalSlotId:I

    goto :goto_dd

    :cond_dc
    move v9, v1

    :goto_dd
    iput v9, v8, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mLogicalSlotIndex:I

    .line 4508
    iget-object v9, v7, Lcom/android/internal/telephony/uicc/IccSlotStatus;->mSimPortInfos:[Lcom/android/internal/telephony/uicc/IccSimPortInfo;

    aput-object v8, v9, v2

    .line 4509
    iget-object v6, v6, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->atr:Ljava/lang/String;

    iput-object v6, v7, Lcom/android/internal/telephony/uicc/IccSlotStatus;->atr:Ljava/lang/String;

    .line 4510
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_ea
    .catch Ljava/lang/ClassCastException; {:try_start_a6 .. :try_end_ea} :catch_eb

    goto :goto_ad

    :catch_eb
    :cond_eb
    return-object v0
.end method

.method public static blacklist convertHalTdscdmaSignalStrength(Landroid/hardware/radio/network/TdscdmaSignalStrength;)Landroid/telephony/CellSignalStrengthTdscdma;
    .registers 4

    .line 3098
    new-instance v0, Landroid/telephony/CellSignalStrengthTdscdma;

    iget v1, p0, Landroid/hardware/radio/network/TdscdmaSignalStrength;->signalStrength:I

    .line 3099
    invoke-static {v1}, Landroid/telephony/CellSignalStrength;->getRssiDbmFromAsu(I)I

    move-result v1

    iget v2, p0, Landroid/hardware/radio/network/TdscdmaSignalStrength;->bitErrorRate:I

    iget p0, p0, Landroid/hardware/radio/network/TdscdmaSignalStrength;->rscp:I

    .line 3100
    invoke-static {p0}, Landroid/telephony/CellSignalStrength;->getRscpDbmFromAsu(I)I

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Landroid/telephony/CellSignalStrengthTdscdma;-><init>(III)V

    .line 3101
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthTdscdma;->getRssi()I

    move-result p0

    const v1, 0x7fffffff

    if-ne p0, v1, :cond_29

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthTdscdma;->getRscp()I

    move-result p0

    if-ne p0, v1, :cond_29

    .line 3102
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthTdscdma;->setDefaultValues()V

    const/4 p0, 0x0

    .line 3103
    invoke-virtual {v0, p0, p0}, Landroid/telephony/CellSignalStrengthTdscdma;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    :cond_29
    return-object v0
.end method

.method public static blacklist convertHalTdscdmaSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthTdscdma;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 3078
    :cond_4
    check-cast p0, Landroid/hardware/radio/V1_2/TdscdmaSignalStrength;

    .line 3080
    new-instance v1, Landroid/telephony/CellSignalStrengthTdscdma;

    iget v2, p0, Landroid/hardware/radio/V1_2/TdscdmaSignalStrength;->signalStrength:I

    .line 3081
    invoke-static {v2}, Landroid/telephony/CellSignalStrength;->getRssiDbmFromAsu(I)I

    move-result v2

    iget v3, p0, Landroid/hardware/radio/V1_2/TdscdmaSignalStrength;->bitErrorRate:I

    iget p0, p0, Landroid/hardware/radio/V1_2/TdscdmaSignalStrength;->rscp:I

    .line 3082
    invoke-static {p0}, Landroid/telephony/CellSignalStrength;->getRscpDbmFromAsu(I)I

    move-result p0

    invoke-direct {v1, v2, v3, p0}, Landroid/telephony/CellSignalStrengthTdscdma;-><init>(III)V

    .line 3083
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthTdscdma;->getRssi()I

    move-result p0

    const v2, 0x7fffffff

    if-ne p0, v2, :cond_2e

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthTdscdma;->getRscp()I

    move-result p0

    if-ne p0, v2, :cond_2e

    .line 3084
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthTdscdma;->setDefaultValues()V

    .line 3085
    invoke-virtual {v1, v0, v0}, Landroid/telephony/CellSignalStrengthTdscdma;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    :cond_2e
    return-object v1
.end method

.method private static blacklist convertHalTrafficDescriptor(Landroid/hardware/radio/V1_6/TrafficDescriptor;)Landroid/telephony/data/TrafficDescriptor;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 3577
    iget-object v0, p0, Landroid/hardware/radio/V1_6/TrafficDescriptor;->dnn:Landroid/hardware/radio/V1_6/OptionalDnn;

    .line 3576
    invoke-virtual {v0}, Landroid/hardware/radio/V1_6/OptionalDnn;->getDiscriminator()B

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    move-object v0, v1

    goto :goto_11

    .line 3578
    :cond_b
    iget-object v0, p0, Landroid/hardware/radio/V1_6/TrafficDescriptor;->dnn:Landroid/hardware/radio/V1_6/OptionalDnn;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_6/OptionalDnn;->value()Ljava/lang/String;

    move-result-object v0

    .line 3580
    :goto_11
    iget-object v2, p0, Landroid/hardware/radio/V1_6/TrafficDescriptor;->osAppId:Landroid/hardware/radio/V1_6/OptionalOsAppId;

    .line 3579
    invoke-virtual {v2}, Landroid/hardware/radio/V1_6/OptionalOsAppId;->getDiscriminator()B

    move-result v2

    if-nez v2, :cond_1a

    goto :goto_26

    .line 3581
    :cond_1a
    iget-object p0, p0, Landroid/hardware/radio/V1_6/TrafficDescriptor;->osAppId:Landroid/hardware/radio/V1_6/OptionalOsAppId;

    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/OptionalOsAppId;->value()Landroid/hardware/radio/V1_6/OsAppId;

    move-result-object p0

    iget-object p0, p0, Landroid/hardware/radio/V1_6/OsAppId;->osAppId:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[B

    move-result-object v1

    .line 3583
    :goto_26
    new-instance p0, Landroid/telephony/data/TrafficDescriptor$Builder;

    invoke-direct {p0}, Landroid/telephony/data/TrafficDescriptor$Builder;-><init>()V

    if-eqz v0, :cond_30

    .line 3585
    invoke-virtual {p0, v0}, Landroid/telephony/data/TrafficDescriptor$Builder;->setDataNetworkName(Ljava/lang/String;)Landroid/telephony/data/TrafficDescriptor$Builder;

    :cond_30
    if-eqz v1, :cond_35

    .line 3588
    invoke-virtual {p0, v1}, Landroid/telephony/data/TrafficDescriptor$Builder;->setOsAppId([B)Landroid/telephony/data/TrafficDescriptor$Builder;

    .line 3590
    :cond_35
    invoke-virtual {p0}, Landroid/telephony/data/TrafficDescriptor$Builder;->build()Landroid/telephony/data/TrafficDescriptor;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist convertHalTrafficDescriptor(Landroid/hardware/radio/data/TrafficDescriptor;)Landroid/telephony/data/TrafficDescriptor;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 3595
    iget-object v0, p0, Landroid/hardware/radio/data/TrafficDescriptor;->dnn:Ljava/lang/String;

    .line 3596
    iget-object p0, p0, Landroid/hardware/radio/data/TrafficDescriptor;->osAppId:Landroid/hardware/radio/data/OsAppId;

    if-nez p0, :cond_8

    const/4 p0, 0x0

    goto :goto_a

    :cond_8
    iget-object p0, p0, Landroid/hardware/radio/data/OsAppId;->osAppId:[B

    .line 3597
    :goto_a
    new-instance v1, Landroid/telephony/data/TrafficDescriptor$Builder;

    invoke-direct {v1}, Landroid/telephony/data/TrafficDescriptor$Builder;-><init>()V

    if-eqz v0, :cond_14

    .line 3599
    invoke-virtual {v1, v0}, Landroid/telephony/data/TrafficDescriptor$Builder;->setDataNetworkName(Ljava/lang/String;)Landroid/telephony/data/TrafficDescriptor$Builder;

    :cond_14
    if-eqz p0, :cond_19

    .line 3602
    invoke-virtual {v1, p0}, Landroid/telephony/data/TrafficDescriptor$Builder;->setOsAppId([B)Landroid/telephony/data/TrafficDescriptor$Builder;

    .line 3604
    :cond_19
    invoke-virtual {v1}, Landroid/telephony/data/TrafficDescriptor$Builder;->build()Landroid/telephony/data/TrafficDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist convertHalWcdmaSignalStrength(Landroid/hardware/radio/network/WcdmaSignalStrength;)Landroid/telephony/CellSignalStrengthWcdma;
    .registers 5

    .line 3060
    new-instance v0, Landroid/telephony/CellSignalStrengthWcdma;

    iget v1, p0, Landroid/hardware/radio/network/WcdmaSignalStrength;->signalStrength:I

    .line 3061
    invoke-static {v1}, Landroid/telephony/CellSignalStrength;->getRssiDbmFromAsu(I)I

    move-result v1

    iget v2, p0, Landroid/hardware/radio/network/WcdmaSignalStrength;->bitErrorRate:I

    iget v3, p0, Landroid/hardware/radio/network/WcdmaSignalStrength;->rscp:I

    .line 3062
    invoke-static {v3}, Landroid/telephony/CellSignalStrength;->getRscpDbmFromAsu(I)I

    move-result v3

    iget p0, p0, Landroid/hardware/radio/network/WcdmaSignalStrength;->ecno:I

    .line 3063
    invoke-static {p0}, Landroid/telephony/CellSignalStrength;->getEcNoDbFromAsu(I)I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/telephony/CellSignalStrengthWcdma;-><init>(IIII)V

    .line 3064
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthWcdma;->getRssi()I

    move-result p0

    const v1, 0x7fffffff

    if-ne p0, v1, :cond_2f

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthWcdma;->getRscp()I

    move-result p0

    if-ne p0, v1, :cond_2f

    .line 3065
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthWcdma;->setDefaultValues()V

    const/4 p0, 0x0

    .line 3066
    invoke-virtual {v0, p0, p0}, Landroid/telephony/CellSignalStrengthWcdma;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    :cond_2f
    return-object v0
.end method

.method public static blacklist convertHalWcdmaSignalStrength(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthWcdma;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 3040
    :cond_4
    check-cast p0, Landroid/hardware/radio/V1_2/WcdmaSignalStrength;

    .line 3042
    new-instance v1, Landroid/telephony/CellSignalStrengthWcdma;

    iget-object v2, p0, Landroid/hardware/radio/V1_2/WcdmaSignalStrength;->base:Landroid/hardware/radio/V1_0/WcdmaSignalStrength;

    iget v2, v2, Landroid/hardware/radio/V1_0/WcdmaSignalStrength;->signalStrength:I

    .line 3043
    invoke-static {v2}, Landroid/telephony/CellSignalStrength;->getRssiDbmFromAsu(I)I

    move-result v2

    iget-object v3, p0, Landroid/hardware/radio/V1_2/WcdmaSignalStrength;->base:Landroid/hardware/radio/V1_0/WcdmaSignalStrength;

    iget v3, v3, Landroid/hardware/radio/V1_0/WcdmaSignalStrength;->bitErrorRate:I

    iget v4, p0, Landroid/hardware/radio/V1_2/WcdmaSignalStrength;->rscp:I

    .line 3044
    invoke-static {v4}, Landroid/telephony/CellSignalStrength;->getRscpDbmFromAsu(I)I

    move-result v4

    iget p0, p0, Landroid/hardware/radio/V1_2/WcdmaSignalStrength;->ecno:I

    .line 3045
    invoke-static {p0}, Landroid/telephony/CellSignalStrength;->getEcNoDbFromAsu(I)I

    move-result p0

    invoke-direct {v1, v2, v3, v4, p0}, Landroid/telephony/CellSignalStrengthWcdma;-><init>(IIII)V

    .line 3046
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthWcdma;->getRssi()I

    move-result p0

    const v2, 0x7fffffff

    if-ne p0, v2, :cond_38

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthWcdma;->getRscp()I

    move-result p0

    if-ne p0, v2, :cond_38

    .line 3047
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthWcdma;->setDefaultValues()V

    .line 3048
    invoke-virtual {v1, v0, v0}, Landroid/telephony/CellSignalStrengthWcdma;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    :cond_38
    return-object v1
.end method

.method public static blacklist convertImsCallInfo(Ljava/util/List;)[Landroid/hardware/radio/ims/ImsCall;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/imsphone/ImsCallInfo;",
            ">;)[",
            "Landroid/hardware/radio/ims/ImsCall;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_6

    .line 5823
    new-array p0, v0, [Landroid/hardware/radio/ims/ImsCall;

    return-object p0

    :cond_6
    move v1, v0

    move v2, v1

    .line 5827
    :goto_8
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_19

    .line 5828
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_16

    add-int/lit8 v2, v2, 0x1

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_19
    if-nez v2, :cond_1e

    .line 5831
    new-array p0, v0, [Landroid/hardware/radio/ims/ImsCall;

    return-object p0

    .line 5834
    :cond_1e
    new-array v1, v2, [Landroid/hardware/radio/ims/ImsCall;

    move v2, v0

    .line 5838
    :goto_21
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_74

    .line 5839
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/imsphone/ImsCallInfo;

    if-nez v3, :cond_30

    goto :goto_71

    .line 5842
    :cond_30
    new-instance v4, Landroid/hardware/radio/ims/ImsCall;

    invoke-direct {v4}, Landroid/hardware/radio/ims/ImsCall;-><init>()V

    aput-object v4, v1, v2

    .line 5843
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->getIndex()I

    move-result v5

    iput v5, v4, Landroid/hardware/radio/ims/ImsCall;->index:I

    .line 5844
    aget-object v4, v1, v2

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->getCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/RILUtils;->convertToHalImsCallState(Lcom/android/internal/telephony/Call$State;)I

    move-result v5

    iput v5, v4, Landroid/hardware/radio/ims/ImsCall;->callState:I

    .line 5845
    aget-object v4, v1, v2

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->isEmergencyCall()Z

    move-result v5

    .line 5847
    iput v5, v4, Landroid/hardware/radio/ims/ImsCall;->callType:I

    .line 5848
    aget-object v4, v1, v2

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->getCallRadioTech()I

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/RILUtils;->convertToHalAccessNetworkAidl(I)I

    move-result v5

    iput v5, v4, Landroid/hardware/radio/ims/ImsCall;->accessNetwork:I

    .line 5849
    aget-object v4, v1, v2

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->isIncoming()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    .line 5851
    iput v5, v4, Landroid/hardware/radio/ims/ImsCall;->direction:I

    .line 5852
    aget-object v4, v1, v2

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->isHeldByRemote()Z

    move-result v3

    iput-boolean v3, v4, Landroid/hardware/radio/ims/ImsCall;->isHeldByRemote:Z

    add-int/lit8 v2, v2, 0x1

    :goto_71
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_74
    return-object v1
.end method

.method public static blacklist convertImsCapability(I)I
    .registers 3

    .line 0
    and-int/lit8 v0, p0, 0x1

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    and-int/lit8 v1, p0, 0x2

    if-lez v1, :cond_d

    or-int/lit8 v0, v0, 0x2

    :cond_d
    and-int/lit8 v1, p0, 0x4

    if-lez v1, :cond_13

    or-int/lit8 v0, v0, 0x4

    :cond_13
    and-int/lit8 p0, p0, 0x8

    if-lez p0, :cond_1a

    or-int/lit8 p0, v0, 0x8

    return p0

    :cond_1a
    return v0
.end method

.method public static blacklist convertImsRegistrationState(I)I
    .registers 4

    if-eqz p0, :cond_1e

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    return p0

    .line 5767
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist convertImsRegistrationTech(I)I
    .registers 3

    .line 0
    const/4 v0, 0x3

    if-eqz p0, :cond_13

    const/4 v1, 0x1

    if-eq p0, v1, :cond_11

    if-eq p0, v0, :cond_f

    const/4 v0, 0x4

    if-eq p0, v0, :cond_d

    const/4 p0, 0x0

    return p0

    :cond_d
    const/4 p0, 0x2

    return p0

    :cond_f
    const/4 p0, 0x6

    return p0

    :cond_11
    const/4 p0, 0x5

    return p0

    :cond_13
    return v0
.end method

.method public static blacklist convertImsTrafficDirection(I)I
    .registers 1

    .line 0
    if-eqz p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist convertImsTrafficType(I)I
    .registers 2

    .line 0
    if-eqz p0, :cond_14

    const/4 v0, 0x1

    if-eq p0, v0, :cond_13

    const/4 v0, 0x2

    if-eq p0, v0, :cond_13

    const/4 v0, 0x3

    if-eq p0, v0, :cond_13

    const/4 v0, 0x4

    if-eq p0, v0, :cond_13

    const/4 v0, 0x5

    if-eq p0, v0, :cond_13

    const/4 p0, 0x6

    return p0

    :cond_13
    return v0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    if-eqz p0, :cond_3

    return-object p0

    .line 4861
    :cond_3
    const-string p0, ""

    return-object p0
.end method

.method public static blacklist convertPresentation(I)I
    .registers 4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_26

    const/4 v1, 0x2

    if-eq p0, v1, :cond_25

    const/4 v0, 0x3

    if-eq p0, v0, :cond_24

    const/4 v1, 0x4

    if-ne p0, v1, :cond_d

    return v0

    .line 5750
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal presentation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    return v1

    :cond_25
    return v0

    :cond_26
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist convertSecurityAlgorithmUpdate(Landroid/hardware/radio/network/SecurityAlgorithmUpdate;)Landroid/telephony/SecurityAlgorithmUpdate;
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 5899
    :cond_4
    new-instance v0, Landroid/telephony/SecurityAlgorithmUpdate;

    iget v1, p0, Landroid/hardware/radio/network/SecurityAlgorithmUpdate;->connectionEvent:I

    iget v2, p0, Landroid/hardware/radio/network/SecurityAlgorithmUpdate;->encryption:I

    iget v3, p0, Landroid/hardware/radio/network/SecurityAlgorithmUpdate;->integrity:I

    iget-boolean p0, p0, Landroid/hardware/radio/network/SecurityAlgorithmUpdate;->isUnprotectedEmergency:Z

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/telephony/SecurityAlgorithmUpdate;-><init>(IIIZ)V

    return-object v0
.end method

.method public static blacklist convertSimSlotsMapping(Ljava/util/List;)[Landroid/hardware/radio/config/SlotPortMapping;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/UiccSlotMapping;",
            ">;)[",
            "Landroid/hardware/radio/config/SlotPortMapping;"
        }
    .end annotation

    .line 4525
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/hardware/radio/config/SlotPortMapping;

    .line 4526
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/UiccSlotMapping;

    .line 4527
    invoke-virtual {v1}, Landroid/telephony/UiccSlotMapping;->getLogicalSlotIndex()I

    move-result v2

    .line 4528
    new-instance v3, Landroid/hardware/radio/config/SlotPortMapping;

    invoke-direct {v3}, Landroid/hardware/radio/config/SlotPortMapping;-><init>()V

    aput-object v3, v0, v2

    .line 4529
    invoke-virtual {v1}, Landroid/telephony/UiccSlotMapping;->getPhysicalSlotIndex()I

    move-result v4

    iput v4, v3, Landroid/hardware/radio/config/SlotPortMapping;->physicalSlotId:I

    .line 4530
    aget-object v2, v0, v2

    .line 4531
    invoke-virtual {v1}, Landroid/telephony/UiccSlotMapping;->getPhysicalSlotIndex()I

    move-result v3

    invoke-virtual {v1}, Landroid/telephony/UiccSlotMapping;->getPortIndex()I

    move-result v1

    .line 4530
    invoke-static {v3, v1}, Lcom/android/internal/telephony/uicc/PortUtils;->convertToHalPortIndex(II)I

    move-result v1

    iput v1, v2, Landroid/hardware/radio/config/SlotPortMapping;->portId:I

    goto :goto_a

    :cond_38
    return-object v0
.end method

.method public static blacklist convertSlotMappingToList(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/UiccSlotMapping;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4539
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 4540
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/UiccSlotMapping;

    .line 4541
    invoke-virtual {v1}, Landroid/telephony/UiccSlotMapping;->getLogicalSlotIndex()I

    move-result v2

    invoke-virtual {v1}, Landroid/telephony/UiccSlotMapping;->getPhysicalSlotIndex()I

    move-result v1

    aput v1, v0, v2

    goto :goto_a

    .line 4543
    :cond_21
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->primitiveArrayToArrayList([I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist convertSrvccCallRingbackToneType(I)I
    .registers 4

    if-eqz p0, :cond_21

    const/4 v0, 0x1

    if-eq p0, v0, :cond_20

    const/4 v0, 0x2

    if-ne p0, v0, :cond_9

    return v0

    .line 5729
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal ringback tone type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    return v0

    :cond_21
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist convertSrvccCallSubState(I)I
    .registers 4

    if-eqz p0, :cond_1d

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    return v0

    .line 5710
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal substate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist convertSrvccCallType(I)I
    .registers 4

    if-eqz p0, :cond_1d

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    return v0

    .line 5674
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal call type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist convertToCensoredTerminalResponse(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 1464
    :try_start_0
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_56

    const/4 v1, 0x0

    .line 1466
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->decodeMany([BI)Ljava/util/List;

    move-result-object v0

    .line 1468
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    .line 1471
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getTag()I

    move-result v4

    if-ne v3, v4, :cond_4c

    .line 1472
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v3

    .line 1473
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v4

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v5

    add-int/2addr v4, v5

    .line 1472
    invoke-static {v3, v1, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 1474
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 1475
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "********"

    .line 1474
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 1479
    :cond_4c
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v2
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_54} :catch_57

    add-int/2addr v1, v2

    goto :goto_f

    :cond_56
    return-object p0

    :catch_57
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist convertToDataProfile(Landroid/hardware/radio/data/DataProfileInfo;)Landroid/telephony/data/DataProfile;
    .registers 5

    .line 1025
    new-instance v0, Landroid/telephony/data/ApnSetting$Builder;

    invoke-direct {v0}, Landroid/telephony/data/ApnSetting$Builder;-><init>()V

    iget-object v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->apn:Ljava/lang/String;

    .line 1026
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setEntryName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->apn:Ljava/lang/String;

    .line 1027
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setApnName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->supportedApnTypesBitmap:I

    .line 1028
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setApnTypeBitmask(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->authType:I

    .line 1029
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setAuthType(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->maxConnsTime:I

    .line 1030
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMaxConnsTime(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->maxConns:I

    .line 1031
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMaxConns(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->waitTime:I

    .line 1032
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setWaitTime(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->enabled:Z

    .line 1033
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setCarrierEnabled(Z)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->persistent:Z

    .line 1034
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setModemCognitive(Z)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->mtuV4:I

    .line 1035
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMtuV4(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->mtuV6:I

    .line 1036
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMtuV6(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->bearerBitmap:I

    .line 1037
    invoke-static {v1}, Landroid/telephony/ServiceState;->convertBearerBitmaskToNetworkTypeBitmask(I)I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setNetworkTypeBitmask(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->profileId:I

    .line 1039
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setProfileId(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->password:Ljava/lang/String;

    .line 1040
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setPassword(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->protocol:I

    .line 1041
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setProtocol(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->roamingProtocol:I

    .line 1042
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setRoamingProtocol(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->user:Ljava/lang/String;

    .line 1043
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setUser(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->alwaysOn:Z

    .line 1044
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setAlwaysOn(Z)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->infrastructureBitmap:I

    .line 1045
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setInfrastructureBitmask(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 1046
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting$Builder;->build()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    .line 1050
    :try_start_81
    iget-object v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->trafficDescriptor:Landroid/hardware/radio/data/TrafficDescriptor;

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertHalTrafficDescriptor(Landroid/hardware/radio/data/TrafficDescriptor;)Landroid/telephony/data/TrafficDescriptor;

    move-result-object v1
    :try_end_87
    .catch Ljava/lang/IllegalArgumentException; {:try_start_81 .. :try_end_87} :catch_88

    goto :goto_9e

    :catch_88
    move-exception v1

    .line 1052
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertToDataProfile: Failed to convert traffic descriptor. e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->loge(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1056
    :goto_9e
    new-instance v2, Landroid/telephony/data/DataProfile$Builder;

    invoke-direct {v2}, Landroid/telephony/data/DataProfile$Builder;-><init>()V

    iget v3, p0, Landroid/hardware/radio/data/DataProfileInfo;->type:I

    .line 1057
    invoke-virtual {v2, v3}, Landroid/telephony/data/DataProfile$Builder;->setType(I)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v2

    iget-boolean p0, p0, Landroid/hardware/radio/data/DataProfileInfo;->preferred:Z

    .line 1058
    invoke-virtual {v2, p0}, Landroid/telephony/data/DataProfile$Builder;->setPreferred(Z)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p0

    .line 1059
    invoke-virtual {p0, v1}, Landroid/telephony/data/DataProfile$Builder;->setTrafficDescriptor(Landroid/telephony/data/TrafficDescriptor;)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p0

    .line 1060
    invoke-virtual {p0, v0}, Landroid/telephony/data/DataProfile$Builder;->setApnSetting(Landroid/telephony/data/ApnSetting;)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p0

    .line 1061
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile$Builder;->build()Landroid/telephony/data/DataProfile;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist convertToDriverCall(Landroid/hardware/radio/voice/Call;)Lcom/android/internal/telephony/DriverCall;
    .registers 5

    .line 4010
    new-instance v0, Lcom/android/internal/telephony/DriverCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 4011
    iget v1, p0, Landroid/hardware/radio/voice/Call;->state:I

    invoke-static {v1}, Lcom/android/internal/telephony/DriverCall;->stateFromCLCC(I)Lcom/android/internal/telephony/DriverCall$State;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    .line 4012
    iget v1, p0, Landroid/hardware/radio/voice/Call;->index:I

    iput v1, v0, Lcom/android/internal/telephony/DriverCall;->index:I

    .line 4013
    iget v1, p0, Landroid/hardware/radio/voice/Call;->toa:I

    iput v1, v0, Lcom/android/internal/telephony/DriverCall;->TOA:I

    .line 4014
    iget-boolean v1, p0, Landroid/hardware/radio/voice/Call;->isMpty:Z

    iput-boolean v1, v0, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    .line 4015
    iget-boolean v1, p0, Landroid/hardware/radio/voice/Call;->isMT:Z

    iput-boolean v1, v0, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    .line 4016
    iget-byte v1, p0, Landroid/hardware/radio/voice/Call;->als:B

    iput v1, v0, Lcom/android/internal/telephony/DriverCall;->als:I

    .line 4017
    iget-boolean v1, p0, Landroid/hardware/radio/voice/Call;->isVoice:Z

    iput-boolean v1, v0, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 4018
    iget-boolean v1, p0, Landroid/hardware/radio/voice/Call;->isVoicePrivacy:Z

    iput-boolean v1, v0, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    .line 4019
    iget-object v1, p0, Landroid/hardware/radio/voice/Call;->number:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 4020
    iget v1, p0, Landroid/hardware/radio/voice/Call;->numberPresentation:I

    invoke-static {v1}, Lcom/android/internal/telephony/DriverCall;->presentationFromCLIP(I)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 4021
    iget-object v1, p0, Landroid/hardware/radio/voice/Call;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    .line 4022
    iget v1, p0, Landroid/hardware/radio/voice/Call;->namePresentation:I

    invoke-static {v1}, Lcom/android/internal/telephony/DriverCall;->presentationFromCLIP(I)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    .line 4023
    iget-object v1, p0, Landroid/hardware/radio/voice/Call;->uusInfo:[Landroid/hardware/radio/voice/UusInfo;

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7e

    .line 4024
    new-instance v1, Lcom/android/internal/telephony/UUSInfo;

    invoke-direct {v1}, Lcom/android/internal/telephony/UUSInfo;-><init>()V

    iput-object v1, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 4025
    iget-object v2, p0, Landroid/hardware/radio/voice/Call;->uusInfo:[Landroid/hardware/radio/voice/UusInfo;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget v2, v2, Landroid/hardware/radio/voice/UusInfo;->uusType:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/UUSInfo;->setType(I)V

    .line 4026
    iget-object v1, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    iget-object v2, p0, Landroid/hardware/radio/voice/Call;->uusInfo:[Landroid/hardware/radio/voice/UusInfo;

    aget-object v2, v2, v3

    iget v2, v2, Landroid/hardware/radio/voice/UusInfo;->uusDcs:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/UUSInfo;->setDcs(I)V

    .line 4027
    iget-object v1, p0, Landroid/hardware/radio/voice/Call;->uusInfo:[Landroid/hardware/radio/voice/UusInfo;

    aget-object v1, v1, v3

    iget-object v1, v1, Landroid/hardware/radio/voice/UusInfo;->uusData:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7e

    .line 4028
    iget-object v1, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    iget-object v2, p0, Landroid/hardware/radio/voice/Call;->uusInfo:[Landroid/hardware/radio/voice/UusInfo;

    aget-object v2, v2, v3

    iget-object v2, v2, Landroid/hardware/radio/voice/UusInfo;->uusData:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/UUSInfo;->setUserData([B)V

    .line 4032
    :cond_7e
    iget-object v1, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v2, v0, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v1, v2}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 4033
    iget v1, p0, Landroid/hardware/radio/voice/Call;->audioQuality:I

    iput v1, v0, Lcom/android/internal/telephony/DriverCall;->audioQuality:I

    .line 4034
    iget-object p0, p0, Landroid/hardware/radio/voice/Call;->forwardedNumber:Ljava/lang/String;

    iput-object p0, v0, Lcom/android/internal/telephony/DriverCall;->forwardedNumber:Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist convertToDriverCall(Ljava/lang/Object;)Lcom/android/internal/telephony/DriverCall;
    .registers 8

    .line 3953
    new-instance v0, Lcom/android/internal/telephony/DriverCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 3957
    instance-of v1, p0, Landroid/hardware/radio/V1_6/Call;

    if-eqz v1, :cond_10

    .line 3958
    check-cast p0, Landroid/hardware/radio/V1_6/Call;

    .line 3959
    iget-object v1, p0, Landroid/hardware/radio/V1_6/Call;->base:Landroid/hardware/radio/V1_2/Call;

    .line 3960
    iget-object v2, v1, Landroid/hardware/radio/V1_2/Call;->base:Landroid/hardware/radio/V1_0/Call;

    goto :goto_20

    .line 3961
    :cond_10
    instance-of v1, p0, Landroid/hardware/radio/V1_2/Call;

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    .line 3963
    move-object v1, p0

    check-cast v1, Landroid/hardware/radio/V1_2/Call;

    .line 3964
    iget-object p0, v1, Landroid/hardware/radio/V1_2/Call;->base:Landroid/hardware/radio/V1_0/Call;

    move-object v6, v2

    move-object v2, p0

    move-object p0, v6

    goto :goto_20

    :cond_1e
    move-object p0, v2

    move-object v1, p0

    :goto_20
    if-eqz v2, :cond_b8

    .line 3971
    iget v3, v2, Landroid/hardware/radio/V1_0/Call;->state:I

    invoke-static {v3}, Lcom/android/internal/telephony/DriverCall;->stateFromCLCC(I)Lcom/android/internal/telephony/DriverCall$State;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    .line 3972
    iget v3, v2, Landroid/hardware/radio/V1_0/Call;->index:I

    iput v3, v0, Lcom/android/internal/telephony/DriverCall;->index:I

    .line 3973
    iget v3, v2, Landroid/hardware/radio/V1_0/Call;->toa:I

    iput v3, v0, Lcom/android/internal/telephony/DriverCall;->TOA:I

    .line 3974
    iget-boolean v3, v2, Landroid/hardware/radio/V1_0/Call;->isMpty:Z

    iput-boolean v3, v0, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    .line 3975
    iget-boolean v3, v2, Landroid/hardware/radio/V1_0/Call;->isMT:Z

    iput-boolean v3, v0, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    .line 3976
    iget-byte v3, v2, Landroid/hardware/radio/V1_0/Call;->als:B

    iput v3, v0, Lcom/android/internal/telephony/DriverCall;->als:I

    .line 3977
    iget-boolean v3, v2, Landroid/hardware/radio/V1_0/Call;->isVoice:Z

    iput-boolean v3, v0, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 3978
    iget-boolean v3, v2, Landroid/hardware/radio/V1_0/Call;->isVoicePrivacy:Z

    iput-boolean v3, v0, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    .line 3979
    iget-object v3, v2, Landroid/hardware/radio/V1_0/Call;->number:Ljava/lang/String;

    iput-object v3, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 3980
    iget v3, v2, Landroid/hardware/radio/V1_0/Call;->numberPresentation:I

    invoke-static {v3}, Lcom/android/internal/telephony/DriverCall;->presentationFromCLIP(I)I

    move-result v3

    iput v3, v0, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 3981
    iget-object v3, v2, Landroid/hardware/radio/V1_0/Call;->name:Ljava/lang/String;

    iput-object v3, v0, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    .line 3982
    iget v3, v2, Landroid/hardware/radio/V1_0/Call;->namePresentation:I

    invoke-static {v3}, Lcom/android/internal/telephony/DriverCall;->presentationFromCLIP(I)I

    move-result v3

    iput v3, v0, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    .line 3983
    iget-object v3, v2, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_ae

    .line 3984
    new-instance v3, Lcom/android/internal/telephony/UUSInfo;

    invoke-direct {v3}, Lcom/android/internal/telephony/UUSInfo;-><init>()V

    iput-object v3, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 3985
    iget-object v4, v2, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/UusInfo;

    iget v4, v4, Landroid/hardware/radio/V1_0/UusInfo;->uusType:I

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/UUSInfo;->setType(I)V

    .line 3986
    iget-object v3, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    iget-object v4, v2, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/UusInfo;

    iget v4, v4, Landroid/hardware/radio/V1_0/UusInfo;->uusDcs:I

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/UUSInfo;->setDcs(I)V

    .line 3987
    iget-object v3, v2, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_0/UusInfo;

    iget-object v3, v3, Landroid/hardware/radio/V1_0/UusInfo;->uusData:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_ae

    .line 3988
    iget-object v2, v2, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/V1_0/UusInfo;

    iget-object v2, v2, Landroid/hardware/radio/V1_0/UusInfo;->uusData:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 3989
    iget-object v3, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/UUSInfo;->setUserData([B)V

    .line 3993
    :cond_ae
    iget-object v2, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v3, v0, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v2, v3}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    :cond_b8
    if-eqz v1, :cond_be

    .line 3996
    iget v1, v1, Landroid/hardware/radio/V1_2/Call;->audioQuality:I

    iput v1, v0, Lcom/android/internal/telephony/DriverCall;->audioQuality:I

    :cond_be
    if-eqz p0, :cond_c4

    .line 3999
    iget-object p0, p0, Landroid/hardware/radio/V1_6/Call;->forwardedNumber:Ljava/lang/String;

    iput-object p0, v0, Lcom/android/internal/telephony/DriverCall;->forwardedNumber:Ljava/lang/String;

    :cond_c4
    return-object v0
.end method

.method public static blacklist convertToHalAccessNetwork(I)I
    .registers 1

    .line 0
    packed-switch p0, :pswitch_data_12

    const/4 p0, 0x0

    return p0

    :pswitch_5
    const/4 p0, 0x6

    return p0

    :pswitch_7
    const/4 p0, 0x5

    return p0

    :pswitch_9
    const/4 p0, 0x4

    return p0

    :pswitch_b
    const/4 p0, 0x3

    return p0

    :pswitch_d
    const/4 p0, 0x2

    return p0

    :pswitch_f
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_f
        :pswitch_d
        :pswitch_b
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method public static blacklist convertToHalAccessNetworkAidl(I)I
    .registers 1

    .line 0
    packed-switch p0, :pswitch_data_12

    const/4 p0, 0x0

    return p0

    :pswitch_5
    const/4 p0, 0x6

    return p0

    :pswitch_7
    const/4 p0, 0x5

    return p0

    :pswitch_9
    const/4 p0, 0x4

    return p0

    :pswitch_b
    const/4 p0, 0x3

    return p0

    :pswitch_d
    const/4 p0, 0x2

    return p0

    :pswitch_f
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_f
        :pswitch_d
        :pswitch_b
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method public static blacklist convertToHalCarrierInfoListAidl(Ljava/util/List;)[Landroid/hardware/radio/sim/CarrierInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;)[",
            "Landroid/hardware/radio/sim/CarrierInfo;"
        }
    .end annotation

    .line 1968
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/hardware/radio/sim/CarrierInfo;

    const/4 v1, 0x0

    .line 1969
    :goto_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_49

    .line 1970
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/carrier/CarrierIdentifier;

    .line 1971
    new-instance v3, Landroid/hardware/radio/sim/CarrierInfo;

    invoke-direct {v3}, Landroid/hardware/radio/sim/CarrierInfo;-><init>()V

    .line 1973
    invoke-virtual {v2}, Landroid/service/carrier/CarrierIdentifier;->getMcc()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/hardware/radio/sim/CarrierInfo;->mcc:Ljava/lang/String;

    .line 1974
    invoke-virtual {v2}, Landroid/service/carrier/CarrierIdentifier;->getMnc()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/hardware/radio/sim/CarrierInfo;->mnc:Ljava/lang/String;

    .line 1975
    invoke-virtual {v2}, Landroid/service/carrier/CarrierIdentifier;->getSpn()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/hardware/radio/sim/CarrierInfo;->spn:Ljava/lang/String;

    .line 1976
    invoke-virtual {v2}, Landroid/service/carrier/CarrierIdentifier;->getImsi()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/hardware/radio/sim/CarrierInfo;->imsiPrefix:Ljava/lang/String;

    .line 1977
    invoke-virtual {v2}, Landroid/service/carrier/CarrierIdentifier;->getGid1()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/hardware/radio/sim/CarrierInfo;->gid1:Ljava/lang/String;

    .line 1978
    invoke-virtual {v2}, Landroid/service/carrier/CarrierIdentifier;->getGid2()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Landroid/hardware/radio/sim/CarrierInfo;->gid2:Ljava/lang/String;

    .line 1979
    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_49
    return-object v0
.end method

.method public static blacklist convertToHalCarrierRestrictionList(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/Carrier;",
            ">;"
        }
    .end annotation

    .line 1896
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1897
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/carrier/CarrierIdentifier;

    .line 1898
    new-instance v2, Landroid/hardware/radio/V1_0/Carrier;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Carrier;-><init>()V

    .line 1899
    invoke-virtual {v1}, Landroid/service/carrier/CarrierIdentifier;->getMcc()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/hardware/radio/V1_0/Carrier;->mcc:Ljava/lang/String;

    .line 1900
    invoke-virtual {v1}, Landroid/service/carrier/CarrierIdentifier;->getMnc()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/hardware/radio/V1_0/Carrier;->mnc:Ljava/lang/String;

    .line 1903
    invoke-virtual {v1}, Landroid/service/carrier/CarrierIdentifier;->getSpn()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3e

    .line 1905
    invoke-virtual {v1}, Landroid/service/carrier/CarrierIdentifier;->getSpn()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    goto :goto_70

    .line 1906
    :cond_3e
    invoke-virtual {v1}, Landroid/service/carrier/CarrierIdentifier;->getImsi()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4e

    .line 1908
    invoke-virtual {v1}, Landroid/service/carrier/CarrierIdentifier;->getImsi()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    goto :goto_70

    .line 1909
    :cond_4e
    invoke-virtual {v1}, Landroid/service/carrier/CarrierIdentifier;->getGid1()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5e

    .line 1911
    invoke-virtual {v1}, Landroid/service/carrier/CarrierIdentifier;->getGid1()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    goto :goto_70

    .line 1912
    :cond_5e
    invoke-virtual {v1}, Landroid/service/carrier/CarrierIdentifier;->getGid2()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6e

    .line 1914
    invoke-virtual {v1}, Landroid/service/carrier/CarrierIdentifier;->getGid2()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    goto :goto_70

    :cond_6e
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 1916
    :goto_70
    iput v3, v2, Landroid/hardware/radio/V1_0/Carrier;->matchType:I

    .line 1917
    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Landroid/hardware/radio/V1_0/Carrier;->matchData:Ljava/lang/String;

    .line 1918
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_7c
    return-object v0
.end method

.method public static blacklist convertToHalCarrierRestrictionListAidl(Ljava/util/List;)[Landroid/hardware/radio/sim/Carrier;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;)[",
            "Landroid/hardware/radio/sim/Carrier;"
        }
    .end annotation

    .line 1931
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/hardware/radio/sim/Carrier;

    const/4 v1, 0x0

    move v2, v1

    .line 1932
    :goto_8
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7c

    .line 1933
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/carrier/CarrierIdentifier;

    .line 1934
    new-instance v4, Landroid/hardware/radio/sim/Carrier;

    invoke-direct {v4}, Landroid/hardware/radio/sim/Carrier;-><init>()V

    .line 1935
    invoke-virtual {v3}, Landroid/service/carrier/CarrierIdentifier;->getMcc()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/hardware/radio/sim/Carrier;->mcc:Ljava/lang/String;

    .line 1936
    invoke-virtual {v3}, Landroid/service/carrier/CarrierIdentifier;->getMnc()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/hardware/radio/sim/Carrier;->mnc:Ljava/lang/String;

    .line 1939
    invoke-virtual {v3}, Landroid/service/carrier/CarrierIdentifier;->getSpn()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3d

    .line 1941
    invoke-virtual {v3}, Landroid/service/carrier/CarrierIdentifier;->getSpn()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    goto :goto_6f

    .line 1942
    :cond_3d
    invoke-virtual {v3}, Landroid/service/carrier/CarrierIdentifier;->getImsi()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4d

    .line 1944
    invoke-virtual {v3}, Landroid/service/carrier/CarrierIdentifier;->getImsi()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    goto :goto_6f

    .line 1945
    :cond_4d
    invoke-virtual {v3}, Landroid/service/carrier/CarrierIdentifier;->getGid1()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5d

    .line 1947
    invoke-virtual {v3}, Landroid/service/carrier/CarrierIdentifier;->getGid1()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x3

    goto :goto_6f

    .line 1948
    :cond_5d
    invoke-virtual {v3}, Landroid/service/carrier/CarrierIdentifier;->getGid2()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6d

    .line 1950
    invoke-virtual {v3}, Landroid/service/carrier/CarrierIdentifier;->getGid2()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    goto :goto_6f

    :cond_6d
    const/4 v3, 0x0

    move v5, v1

    .line 1952
    :goto_6f
    iput v5, v4, Landroid/hardware/radio/sim/Carrier;->matchType:I

    .line 1953
    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Landroid/hardware/radio/sim/Carrier;->matchData:Ljava/lang/String;

    .line 1954
    aput-object v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_7c
    return-object v0
.end method

.method public static blacklist convertToHalCdmaSmsMessage([B)Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    .registers 8

    .line 646
    new-instance v0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 651
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 652
    new-instance p0, Ljava/io/DataInputStream;

    invoke-direct {p0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 655
    :try_start_f
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->teleserviceId:I

    .line 656
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_20

    move v1, v3

    goto :goto_21

    :cond_20
    move v1, v2

    :goto_21
    iput-boolean v1, v0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->isServicePresent:Z

    .line 657
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->serviceCategory:I

    .line 658
    iget-object v1, v0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v4

    iput v4, v1, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->digitMode:I

    .line 659
    iget-object v1, v0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v4

    iput v4, v1, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->numberMode:I

    .line 660
    iget-object v1, v0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v4

    iput v4, v1, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->numberType:I

    .line 661
    iget-object v1, v0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v4

    iput v4, v1, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->numberPlan:I

    .line 662
    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v1

    int-to-byte v1, v1

    move v4, v2

    :goto_4f
    if-ge v4, v1, :cond_63

    .line 664
    iget-object v5, v0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    iget-object v5, v5, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->digits:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_4f

    .line 666
    :cond_63
    iget-object v1, v0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v4

    iput v4, v1, Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;->subaddressType:I

    .line 667
    iget-object v1, v0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v4

    int-to-byte v4, v4

    if-ne v4, v3, :cond_75

    goto :goto_76

    :cond_75
    move v3, v2

    :goto_76
    iput-boolean v3, v1, Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;->odd:Z

    .line 668
    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v1

    int-to-byte v1, v1

    move v3, v2

    :goto_7e
    if-ge v3, v1, :cond_92

    .line 670
    iget-object v4, v0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;

    iget-object v4, v4, Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;->digits:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_7e

    .line 673
    :cond_92
    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v1

    :goto_96
    if-ge v2, v1, :cond_a8

    .line 675
    iget-object v3, v0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->bearerData:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_a5} :catch_a8

    add-int/lit8 v2, v2, 0x1

    goto :goto_96

    :catch_a8
    :cond_a8
    return-object v0
.end method

.method public static blacklist convertToHalCdmaSmsMessageAidl([B)Landroid/hardware/radio/messaging/CdmaSmsMessage;
    .registers 8

    .line 689
    new-instance v0, Landroid/hardware/radio/messaging/CdmaSmsMessage;

    invoke-direct {v0}, Landroid/hardware/radio/messaging/CdmaSmsMessage;-><init>()V

    .line 691
    new-instance v1, Landroid/hardware/radio/messaging/CdmaSmsAddress;

    invoke-direct {v1}, Landroid/hardware/radio/messaging/CdmaSmsAddress;-><init>()V

    iput-object v1, v0, Landroid/hardware/radio/messaging/CdmaSmsMessage;->address:Landroid/hardware/radio/messaging/CdmaSmsAddress;

    .line 692
    new-instance v1, Landroid/hardware/radio/messaging/CdmaSmsSubaddress;

    invoke-direct {v1}, Landroid/hardware/radio/messaging/CdmaSmsSubaddress;-><init>()V

    iput-object v1, v0, Landroid/hardware/radio/messaging/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/messaging/CdmaSmsSubaddress;

    .line 696
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 697
    new-instance p0, Ljava/io/DataInputStream;

    invoke-direct {p0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 700
    :try_start_1d
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/messaging/CdmaSmsMessage;->teleserviceId:I

    .line 701
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2e

    move v1, v3

    goto :goto_2f

    :cond_2e
    move v1, v2

    :goto_2f
    iput-boolean v1, v0, Landroid/hardware/radio/messaging/CdmaSmsMessage;->isServicePresent:Z

    .line 702
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/messaging/CdmaSmsMessage;->serviceCategory:I

    .line 703
    iget-object v1, v0, Landroid/hardware/radio/messaging/CdmaSmsMessage;->address:Landroid/hardware/radio/messaging/CdmaSmsAddress;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v4

    iput v4, v1, Landroid/hardware/radio/messaging/CdmaSmsAddress;->digitMode:I

    .line 704
    iget-object v1, v0, Landroid/hardware/radio/messaging/CdmaSmsMessage;->address:Landroid/hardware/radio/messaging/CdmaSmsAddress;

    .line 705
    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v4

    if-ne v4, v3, :cond_49

    move v4, v3

    goto :goto_4a

    :cond_49
    move v4, v2

    :goto_4a
    iput-boolean v4, v1, Landroid/hardware/radio/messaging/CdmaSmsAddress;->isNumberModeDataNetwork:Z

    .line 706
    iget-object v1, v0, Landroid/hardware/radio/messaging/CdmaSmsMessage;->address:Landroid/hardware/radio/messaging/CdmaSmsAddress;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v4

    iput v4, v1, Landroid/hardware/radio/messaging/CdmaSmsAddress;->numberType:I

    .line 707
    iget-object v1, v0, Landroid/hardware/radio/messaging/CdmaSmsMessage;->address:Landroid/hardware/radio/messaging/CdmaSmsAddress;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v4

    iput v4, v1, Landroid/hardware/radio/messaging/CdmaSmsAddress;->numberPlan:I

    .line 708
    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v1

    int-to-byte v1, v1

    .line 709
    new-array v4, v1, [B

    move v5, v2

    :goto_64
    if-ge v5, v1, :cond_6f

    .line 711
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    aput-byte v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_64

    .line 713
    :cond_6f
    iget-object v1, v0, Landroid/hardware/radio/messaging/CdmaSmsMessage;->address:Landroid/hardware/radio/messaging/CdmaSmsAddress;

    iput-object v4, v1, Landroid/hardware/radio/messaging/CdmaSmsAddress;->digits:[B

    .line 714
    iget-object v1, v0, Landroid/hardware/radio/messaging/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/messaging/CdmaSmsSubaddress;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v4

    iput v4, v1, Landroid/hardware/radio/messaging/CdmaSmsSubaddress;->subaddressType:I

    .line 715
    iget-object v1, v0, Landroid/hardware/radio/messaging/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/messaging/CdmaSmsSubaddress;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v4

    int-to-byte v4, v4

    if-ne v4, v3, :cond_85

    goto :goto_86

    :cond_85
    move v3, v2

    :goto_86
    iput-boolean v3, v1, Landroid/hardware/radio/messaging/CdmaSmsSubaddress;->odd:Z

    .line 716
    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v1

    int-to-byte v1, v1

    .line 717
    new-array v3, v1, [B

    move v4, v2

    :goto_90
    if-ge v4, v1, :cond_9b

    .line 719
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_90

    .line 721
    :cond_9b
    iget-object v1, v0, Landroid/hardware/radio/messaging/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/messaging/CdmaSmsSubaddress;

    iput-object v3, v1, Landroid/hardware/radio/messaging/CdmaSmsSubaddress;->digits:[B

    .line 723
    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v1

    .line 724
    new-array v3, v1, [B

    :goto_a5
    if-ge v2, v1, :cond_b0

    .line 726
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a5

    .line 728
    :cond_b0
    iput-object v3, v0, Landroid/hardware/radio/messaging/CdmaSmsMessage;->bearerData:[B
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_b2} :catch_b2

    :catch_b2
    return-object v0
.end method

.method public static blacklist convertToHalDataProfile(Landroid/telephony/data/DataProfile;)Landroid/hardware/radio/data/DataProfileInfo;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 979
    :cond_4
    new-instance v0, Landroid/hardware/radio/data/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/data/DataProfileInfo;-><init>()V

    .line 982
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getApn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->apn:Ljava/lang/String;

    .line 983
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getProtocolType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->protocol:I

    .line 984
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getRoamingProtocolType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->roamingProtocol:I

    .line 985
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getAuthType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->authType:I

    .line 986
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->user:Ljava/lang/String;

    .line 987
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->password:Ljava/lang/String;

    .line 988
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->type:I

    .line 989
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMaxConnectionsTime()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->maxConnsTime:I

    .line 990
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMaxConnections()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->maxConns:I

    .line 991
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getWaitTime()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->waitTime:I

    .line 992
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->isEnabled()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->enabled:Z

    .line 993
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getSupportedApnTypesBitmask()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->supportedApnTypesBitmap:I

    .line 997
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getBearerBitmask()I

    move-result v1

    .line 996
    invoke-static {v1}, Landroid/telephony/ServiceState;->convertNetworkTypeBitmaskToBearerBitmask(I)I

    move-result v1

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    iput v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->bearerBitmap:I

    .line 998
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMtuV4()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->mtuV4:I

    .line 999
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMtuV6()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->mtuV6:I

    .line 1000
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->isPersistent()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->persistent:Z

    .line 1001
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->isPreferred()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->preferred:Z

    const/4 v1, 0x0

    .line 1002
    iput-boolean v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->alwaysOn:Z

    .line 1003
    iput v2, v0, Landroid/hardware/radio/data/DataProfileInfo;->infrastructureBitmap:I

    .line 1005
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    if-eqz v1, :cond_9c

    .line 1006
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->isAlwaysOn()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->alwaysOn:Z

    .line 1007
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getInfrastructureBitmask()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->infrastructureBitmap:I

    .line 1009
    :cond_9c
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getTrafficDescriptor()Landroid/telephony/data/TrafficDescriptor;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertToHalTrafficDescriptorAidl(Landroid/telephony/data/TrafficDescriptor;)Landroid/hardware/radio/data/TrafficDescriptor;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->trafficDescriptor:Landroid/hardware/radio/data/TrafficDescriptor;

    .line 1012
    iget-boolean v1, v0, Landroid/hardware/radio/data/DataProfileInfo;->persistent:Z

    if-eqz v1, :cond_af

    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getProfileId()I

    move-result p0

    goto :goto_b0

    :cond_af
    const/4 p0, -0x1

    .line 1013
    :goto_b0
    iput p0, v0, Landroid/hardware/radio/data/DataProfileInfo;->profileId:I

    return-object v0
.end method

.method public static blacklist convertToHalDataProfile14(Landroid/telephony/data/DataProfile;)Landroid/hardware/radio/V1_4/DataProfileInfo;
    .registers 3

    .line 901
    new-instance v0, Landroid/hardware/radio/V1_4/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_4/DataProfileInfo;-><init>()V

    .line 904
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getApn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->apn:Ljava/lang/String;

    .line 905
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getProtocolType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->protocol:I

    .line 906
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getRoamingProtocolType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->roamingProtocol:I

    .line 907
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getAuthType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->authType:I

    .line 908
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->user:Ljava/lang/String;

    .line 909
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->password:Ljava/lang/String;

    .line 910
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->type:I

    .line 911
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMaxConnectionsTime()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->maxConnsTime:I

    .line 912
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMaxConnections()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->maxConns:I

    .line 913
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getWaitTime()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->waitTime:I

    .line 914
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->isEnabled()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->enabled:Z

    .line 915
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getSupportedApnTypesBitmask()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->supportedApnTypesBitmap:I

    .line 920
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getBearerBitmask()I

    move-result v1

    .line 919
    invoke-static {v1}, Landroid/telephony/ServiceState;->convertNetworkTypeBitmaskToBearerBitmask(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->bearerBitmap:I

    .line 921
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMtuV4()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->mtu:I

    .line 922
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->isPersistent()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->persistent:Z

    .line 923
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->isPreferred()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->preferred:Z

    .line 926
    iget-boolean v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->persistent:Z

    if-eqz v1, :cond_7c

    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getProfileId()I

    move-result p0

    goto :goto_7d

    :cond_7c
    const/4 p0, -0x1

    .line 927
    :goto_7d
    iput p0, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->profileId:I

    return-object v0
.end method

.method public static blacklist convertToHalDataProfile15(Landroid/telephony/data/DataProfile;)Landroid/hardware/radio/V1_5/DataProfileInfo;
    .registers 3

    .line 939
    new-instance v0, Landroid/hardware/radio/V1_5/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_5/DataProfileInfo;-><init>()V

    .line 942
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getApn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->apn:Ljava/lang/String;

    .line 943
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getProtocolType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->protocol:I

    .line 944
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getRoamingProtocolType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->roamingProtocol:I

    .line 945
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getAuthType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->authType:I

    .line 946
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->user:Ljava/lang/String;

    .line 947
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->password:Ljava/lang/String;

    .line 948
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->type:I

    .line 949
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMaxConnectionsTime()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->maxConnsTime:I

    .line 950
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMaxConnections()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->maxConns:I

    .line 951
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getWaitTime()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->waitTime:I

    .line 952
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->isEnabled()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->enabled:Z

    .line 953
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getSupportedApnTypesBitmask()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->supportedApnTypesBitmap:I

    .line 958
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getBearerBitmask()I

    move-result v1

    .line 957
    invoke-static {v1}, Landroid/telephony/ServiceState;->convertNetworkTypeBitmaskToBearerBitmask(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->bearerBitmap:I

    .line 959
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMtuV4()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->mtuV4:I

    .line 960
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMtuV6()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->mtuV6:I

    .line 961
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->isPersistent()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->persistent:Z

    .line 962
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->isPreferred()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->preferred:Z

    .line 965
    iget-boolean v1, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->persistent:Z

    if-eqz v1, :cond_82

    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getProfileId()I

    move-result p0

    goto :goto_83

    :cond_82
    const/4 p0, -0x1

    .line 966
    :goto_83
    iput p0, v0, Landroid/hardware/radio/V1_5/DataProfileInfo;->profileId:I

    return-object v0
.end method

.method public static blacklist convertToHalDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Landroid/hardware/radio/V1_0/Dial;
    .registers 4

    .line 1993
    new-instance v0, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 1994
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/hardware/radio/V1_0/Dial;->address:Ljava/lang/String;

    .line 1995
    iput p1, v0, Landroid/hardware/radio/V1_0/Dial;->clir:I

    if-eqz p2, :cond_30

    .line 1997
    new-instance p0, Landroid/hardware/radio/V1_0/UusInfo;

    invoke-direct {p0}, Landroid/hardware/radio/V1_0/UusInfo;-><init>()V

    .line 1998
    invoke-virtual {p2}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result p1

    iput p1, p0, Landroid/hardware/radio/V1_0/UusInfo;->uusType:I

    .line 1999
    invoke-virtual {p2}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result p1

    iput p1, p0, Landroid/hardware/radio/V1_0/UusInfo;->uusDcs:I

    .line 2000
    new-instance p1, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([B)V

    iput-object p1, p0, Landroid/hardware/radio/V1_0/UusInfo;->uusData:Ljava/lang/String;

    .line 2001
    iget-object p1, v0, Landroid/hardware/radio/V1_0/Dial;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_30
    return-object v0
.end method

.method public static blacklist convertToHalDialAidl(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Landroid/hardware/radio/voice/Dial;
    .registers 5

    .line 2015
    new-instance v0, Landroid/hardware/radio/voice/Dial;

    invoke-direct {v0}, Landroid/hardware/radio/voice/Dial;-><init>()V

    .line 2016
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/hardware/radio/voice/Dial;->address:Ljava/lang/String;

    .line 2017
    iput p1, v0, Landroid/hardware/radio/voice/Dial;->clir:I

    const/4 p0, 0x0

    if-eqz p2, :cond_34

    .line 2019
    new-instance p1, Landroid/hardware/radio/voice/UusInfo;

    invoke-direct {p1}, Landroid/hardware/radio/voice/UusInfo;-><init>()V

    .line 2020
    invoke-virtual {p2}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v1

    iput v1, p1, Landroid/hardware/radio/voice/UusInfo;->uusType:I

    .line 2021
    invoke-virtual {p2}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v1

    iput v1, p1, Landroid/hardware/radio/voice/UusInfo;->uusDcs:I

    .line 2022
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p1, Landroid/hardware/radio/voice/UusInfo;->uusData:Ljava/lang/String;

    const/4 p2, 0x1

    .line 2023
    new-array p2, p2, [Landroid/hardware/radio/voice/UusInfo;

    aput-object p1, p2, p0

    iput-object p2, v0, Landroid/hardware/radio/voice/Dial;->uusInfo:[Landroid/hardware/radio/voice/UusInfo;

    return-object v0

    .line 2025
    :cond_34
    new-array p0, p0, [Landroid/hardware/radio/voice/UusInfo;

    iput-object p0, v0, Landroid/hardware/radio/voice/Dial;->uusInfo:[Landroid/hardware/radio/voice/UusInfo;

    return-object v0
.end method

.method public static blacklist convertToHalGsmSmsMessage(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/V1_0/GsmSmsMessage;
    .registers 4

    .line 617
    new-instance v0, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 619
    const-string v1, ""

    if-nez p0, :cond_a

    move-object p0, v1

    :cond_a
    iput-object p0, v0, Landroid/hardware/radio/V1_0/GsmSmsMessage;->smscPdu:Ljava/lang/String;

    if-nez p1, :cond_f

    move-object p1, v1

    .line 620
    :cond_f
    iput-object p1, v0, Landroid/hardware/radio/V1_0/GsmSmsMessage;->pdu:Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist convertToHalGsmSmsMessageAidl(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/messaging/GsmSmsMessage;
    .registers 3

    .line 632
    new-instance v0, Landroid/hardware/radio/messaging/GsmSmsMessage;

    invoke-direct {v0}, Landroid/hardware/radio/messaging/GsmSmsMessage;-><init>()V

    .line 634
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/hardware/radio/messaging/GsmSmsMessage;->smscPdu:Ljava/lang/String;

    .line 635
    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/hardware/radio/messaging/GsmSmsMessage;->pdu:Ljava/lang/String;

    return-object v0
.end method

.method private static blacklist convertToHalImsCallState(Lcom/android/internal/telephony/Call$State;)I
    .registers 2

    .line 5866
    sget-object v0, Lcom/android/internal/telephony/RILUtils$1;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_1c

    const/4 p0, 0x7

    return p0

    :pswitch_d
    const/4 p0, 0x6

    return p0

    :pswitch_f
    const/4 p0, 0x5

    return p0

    :pswitch_11
    const/4 p0, 0x4

    return p0

    :pswitch_13
    const/4 p0, 0x3

    return p0

    :pswitch_15
    const/4 p0, 0x2

    return p0

    :pswitch_17
    const/4 p0, 0x1

    return p0

    :pswitch_19
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_19
        :pswitch_17
        :pswitch_15
        :pswitch_13
        :pswitch_11
        :pswitch_f
        :pswitch_d
    .end packed-switch
.end method

.method public static blacklist convertToHalLinkProperties(Landroid/net/LinkProperties;)[Landroid/hardware/radio/data/LinkAddress;
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_6

    .line 1243
    new-array p0, v0, [Landroid/hardware/radio/data/LinkAddress;

    return-object p0

    .line 1247
    :cond_6
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllLinkAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/hardware/radio/data/LinkAddress;

    .line 1248
    :goto_10
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllLinkAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4a

    .line 1249
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllLinkAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 1250
    new-instance v3, Landroid/hardware/radio/data/LinkAddress;

    invoke-direct {v3}, Landroid/hardware/radio/data/LinkAddress;-><init>()V

    .line 1252
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/hardware/radio/data/LinkAddress;->address:Ljava/lang/String;

    .line 1253
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getFlags()I

    move-result v4

    iput v4, v3, Landroid/hardware/radio/data/LinkAddress;->addressProperties:I

    .line 1254
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getDeprecationTime()J

    move-result-wide v4

    iput-wide v4, v3, Landroid/hardware/radio/data/LinkAddress;->deprecationTime:J

    .line 1255
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getExpirationTime()J

    move-result-wide v4

    iput-wide v4, v3, Landroid/hardware/radio/data/LinkAddress;->expirationTime:J

    .line 1256
    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_4a
    return-object v1
.end method

.method public static blacklist convertToHalLinkProperties15(Landroid/net/LinkProperties;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/LinkProperties;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_5/LinkAddress;",
            ">;"
        }
    .end annotation

    .line 1220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_40

    .line 1222
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllLinkAddresses()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    .line 1223
    new-instance v2, Landroid/hardware/radio/V1_5/LinkAddress;

    invoke-direct {v2}, Landroid/hardware/radio/V1_5/LinkAddress;-><init>()V

    .line 1225
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/hardware/radio/V1_5/LinkAddress;->address:Ljava/lang/String;

    .line 1226
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getFlags()I

    move-result v3

    iput v3, v2, Landroid/hardware/radio/V1_5/LinkAddress;->properties:I

    .line 1227
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getDeprecationTime()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/hardware/radio/V1_5/LinkAddress;->deprecationTime:J

    .line 1228
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getExpirationTime()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/hardware/radio/V1_5/LinkAddress;->expirationTime:J

    .line 1229
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_40
    return-object v0
.end method

.method public static blacklist convertToHalPersoType(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;)I
    .registers 2

    .line 454
    sget-object v0, Lcom/android/internal/telephony/RILUtils$1;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$PersoSubState:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_6c

    const/4 p0, 0x0

    return p0

    :pswitch_d
    const/16 p0, 0x22

    return p0

    :pswitch_10
    const/16 p0, 0x21

    return p0

    :pswitch_13
    const/16 p0, 0x20

    return p0

    :pswitch_16
    const/16 p0, 0x1f

    return p0

    :pswitch_19
    const/16 p0, 0x1e

    return p0

    :pswitch_1c
    const/16 p0, 0x1d

    return p0

    :pswitch_1f
    const/16 p0, 0x1c

    return p0

    :pswitch_22
    const/16 p0, 0x1b

    return p0

    :pswitch_25
    const/16 p0, 0x1a

    return p0

    :pswitch_28
    const/16 p0, 0x19

    return p0

    :pswitch_2b
    const/16 p0, 0x18

    return p0

    :pswitch_2e
    const/16 p0, 0x17

    return p0

    :pswitch_31
    const/16 p0, 0x16

    return p0

    :pswitch_34
    const/16 p0, 0x15

    return p0

    :pswitch_37
    const/16 p0, 0x14

    return p0

    :pswitch_3a
    const/16 p0, 0x13

    return p0

    :pswitch_3d
    const/16 p0, 0x12

    return p0

    :pswitch_40
    const/16 p0, 0x11

    return p0

    :pswitch_43
    const/16 p0, 0x10

    return p0

    :pswitch_46
    const/16 p0, 0xf

    return p0

    :pswitch_49
    const/16 p0, 0xe

    return p0

    :pswitch_4c
    const/16 p0, 0xd

    return p0

    :pswitch_4f
    const/16 p0, 0xc

    return p0

    :pswitch_52
    const/16 p0, 0xb

    return p0

    :pswitch_55
    const/16 p0, 0xa

    return p0

    :pswitch_58
    const/16 p0, 0x9

    return p0

    :pswitch_5b
    const/16 p0, 0x8

    return p0

    :pswitch_5e
    const/4 p0, 0x7

    return p0

    :pswitch_60
    const/4 p0, 0x6

    return p0

    :pswitch_62
    const/4 p0, 0x5

    return p0

    :pswitch_64
    const/4 p0, 0x4

    return p0

    :pswitch_66
    const/4 p0, 0x3

    return p0

    :pswitch_68
    const/4 p0, 0x2

    return p0

    :pswitch_6a
    const/4 p0, 0x1

    return p0

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_6a
        :pswitch_68
        :pswitch_66
        :pswitch_64
        :pswitch_62
        :pswitch_60
        :pswitch_5e
        :pswitch_5b
        :pswitch_58
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
    .end packed-switch
.end method

.method public static blacklist convertToHalPersoTypeAidl(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;)I
    .registers 2

    .line 535
    sget-object v0, Lcom/android/internal/telephony/RILUtils$1;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$PersoSubState:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_6c

    const/4 p0, 0x0

    return p0

    :pswitch_d
    const/16 p0, 0x22

    return p0

    :pswitch_10
    const/16 p0, 0x21

    return p0

    :pswitch_13
    const/16 p0, 0x20

    return p0

    :pswitch_16
    const/16 p0, 0x1f

    return p0

    :pswitch_19
    const/16 p0, 0x1e

    return p0

    :pswitch_1c
    const/16 p0, 0x1d

    return p0

    :pswitch_1f
    const/16 p0, 0x1c

    return p0

    :pswitch_22
    const/16 p0, 0x1b

    return p0

    :pswitch_25
    const/16 p0, 0x1a

    return p0

    :pswitch_28
    const/16 p0, 0x19

    return p0

    :pswitch_2b
    const/16 p0, 0x18

    return p0

    :pswitch_2e
    const/16 p0, 0x17

    return p0

    :pswitch_31
    const/16 p0, 0x16

    return p0

    :pswitch_34
    const/16 p0, 0x15

    return p0

    :pswitch_37
    const/16 p0, 0x14

    return p0

    :pswitch_3a
    const/16 p0, 0x13

    return p0

    :pswitch_3d
    const/16 p0, 0x12

    return p0

    :pswitch_40
    const/16 p0, 0x11

    return p0

    :pswitch_43
    const/16 p0, 0x10

    return p0

    :pswitch_46
    const/16 p0, 0xf

    return p0

    :pswitch_49
    const/16 p0, 0xe

    return p0

    :pswitch_4c
    const/16 p0, 0xd

    return p0

    :pswitch_4f
    const/16 p0, 0xc

    return p0

    :pswitch_52
    const/16 p0, 0xb

    return p0

    :pswitch_55
    const/16 p0, 0xa

    return p0

    :pswitch_58
    const/16 p0, 0x9

    return p0

    :pswitch_5b
    const/16 p0, 0x8

    return p0

    :pswitch_5e
    const/4 p0, 0x7

    return p0

    :pswitch_60
    const/4 p0, 0x6

    return p0

    :pswitch_62
    const/4 p0, 0x5

    return p0

    :pswitch_64
    const/4 p0, 0x4

    return p0

    :pswitch_66
    const/4 p0, 0x3

    return p0

    :pswitch_68
    const/4 p0, 0x2

    return p0

    :pswitch_6a
    const/4 p0, 0x1

    return p0

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_6a
        :pswitch_68
        :pswitch_66
        :pswitch_64
        :pswitch_62
        :pswitch_60
        :pswitch_5e
        :pswitch_5b
        :pswitch_58
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
    .end packed-switch
.end method

.method public static blacklist convertToHalPhonebookRecordInfo(Lcom/android/internal/telephony/uicc/SimPhonebookRecord;)Landroid/hardware/radio/V1_6/PhonebookRecordInfo;
    .registers 1

    if-eqz p0, :cond_7

    .line 4417
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->toPhonebookRecordInfo()Landroid/hardware/radio/V1_6/PhonebookRecordInfo;

    move-result-object p0

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist convertToHalPhonebookRecordInfoAidl(Lcom/android/internal/telephony/uicc/SimPhonebookRecord;)Landroid/hardware/radio/sim/PhonebookRecordInfo;
    .registers 1

    if-eqz p0, :cond_7

    .line 4430
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->toPhonebookRecordInfoAidl()Landroid/hardware/radio/sim/PhonebookRecordInfo;

    move-result-object p0

    return-object p0

    .line 4432
    :cond_7
    new-instance p0, Landroid/hardware/radio/sim/PhonebookRecordInfo;

    invoke-direct {p0}, Landroid/hardware/radio/sim/PhonebookRecordInfo;-><init>()V

    return-object p0
.end method

.method public static blacklist convertToHalRadioAccessFamily(I)I
    .registers 7

    .line 0
    int-to-long v0, p0

    const-wide/32 v2, 0x8000

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-eqz p0, :cond_e

    const/high16 p0, 0x10000

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    const-wide/16 v2, 0x1

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_18

    or-int/lit8 p0, p0, 0x2

    :cond_18
    const-wide/16 v2, 0x2

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_21

    or-int/lit8 p0, p0, 0x4

    :cond_21
    const-wide/16 v2, 0x8

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2a

    or-int/lit8 p0, p0, 0x10

    :cond_2a
    const-wide/16 v2, 0x40

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_33

    or-int/lit8 p0, p0, 0x40

    :cond_33
    const-wide/16 v2, 0x10

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3c

    or-int/lit16 p0, p0, 0x80

    :cond_3c
    const-wide/16 v2, 0x20

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_45

    or-int/lit16 p0, p0, 0x100

    :cond_45
    const-wide/16 v2, 0x800

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4e

    or-int/lit16 p0, p0, 0x1000

    :cond_4e
    const-wide/16 v2, 0x2000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_57

    or-int/lit16 p0, p0, 0x2000

    :cond_57
    const-wide/16 v2, 0x100

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_60

    or-int/lit16 p0, p0, 0x400

    :cond_60
    const-wide/16 v2, 0x80

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_69

    or-int/lit16 p0, p0, 0x200

    :cond_69
    const-wide/16 v2, 0x200

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_72

    or-int/lit16 p0, p0, 0x800

    :cond_72
    const-wide/16 v2, 0x4000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7d

    const v2, 0x8000

    or-int/2addr p0, v2

    :cond_7d
    const-wide/16 v2, 0x4

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_86

    or-int/lit8 p0, p0, 0x8

    :cond_86
    const-wide/32 v2, 0x10000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_91

    const/high16 v2, 0x20000

    or-int/2addr p0, v2

    :cond_91
    const-wide/32 v2, 0x20000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9c

    const/high16 v2, 0x40000

    or-int/2addr p0, v2

    :cond_9c
    const-wide/16 v2, 0x1000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_a5

    or-int/lit16 p0, p0, 0x4000

    :cond_a5
    const-wide/32 v2, 0x40000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_b0

    const/high16 v2, 0x80000

    or-int/2addr p0, v2

    :cond_b0
    const-wide/32 v2, 0x80000

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_bb

    const/high16 v0, 0x100000

    or-int/2addr p0, v0

    :cond_bb
    if-nez p0, :cond_be

    const/4 p0, 0x1

    :cond_be
    return p0
.end method

.method public static blacklist convertToHalRadioAccessFamilyAidl(I)I
    .registers 7

    .line 0
    int-to-long v0, p0

    const-wide/32 v2, 0x8000

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-eqz p0, :cond_e

    const/high16 p0, 0x10000

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    const-wide/16 v2, 0x1

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_18

    or-int/lit8 p0, p0, 0x2

    :cond_18
    const-wide/16 v2, 0x2

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_21

    or-int/lit8 p0, p0, 0x4

    :cond_21
    const-wide/16 v2, 0x8

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2a

    or-int/lit8 p0, p0, 0x10

    :cond_2a
    const-wide/16 v2, 0x40

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_33

    or-int/lit8 p0, p0, 0x40

    :cond_33
    const-wide/16 v2, 0x10

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3c

    or-int/lit16 p0, p0, 0x80

    :cond_3c
    const-wide/16 v2, 0x20

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_45

    or-int/lit16 p0, p0, 0x100

    :cond_45
    const-wide/16 v2, 0x800

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4e

    or-int/lit16 p0, p0, 0x1000

    :cond_4e
    const-wide/16 v2, 0x2000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_57

    or-int/lit16 p0, p0, 0x2000

    :cond_57
    const-wide/16 v2, 0x100

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_60

    or-int/lit16 p0, p0, 0x400

    :cond_60
    const-wide/16 v2, 0x80

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_69

    or-int/lit16 p0, p0, 0x200

    :cond_69
    const-wide/16 v2, 0x200

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_72

    or-int/lit16 p0, p0, 0x800

    :cond_72
    const-wide/16 v2, 0x4000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7d

    const v2, 0x8000

    or-int/2addr p0, v2

    :cond_7d
    const-wide/16 v2, 0x4

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_86

    or-int/lit8 p0, p0, 0x8

    :cond_86
    const-wide/32 v2, 0x10000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_91

    const/high16 v2, 0x20000

    or-int/2addr p0, v2

    :cond_91
    const-wide/32 v2, 0x20000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9c

    const/high16 v2, 0x40000

    or-int/2addr p0, v2

    :cond_9c
    const-wide/16 v2, 0x1000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-nez v2, :cond_ab

    const-wide/32 v2, 0x40000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_ad

    :cond_ab
    or-int/lit16 p0, p0, 0x4000

    :cond_ad
    const-wide/32 v2, 0x80000

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_b8

    const/high16 v0, 0x100000

    or-int/2addr p0, v0

    :cond_b8
    if-nez p0, :cond_bb

    const/4 p0, 0x1

    :cond_bb
    return p0
.end method

.method public static blacklist convertToHalRadioAccessNetworks(I)I
    .registers 3

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_14

    const/4 v0, 0x2

    if-eq p0, v0, :cond_14

    const/4 v0, 0x3

    if-eq p0, v0, :cond_14

    const/4 v0, 0x4

    if-eq p0, v0, :cond_12

    const/4 v1, 0x6

    if-eq p0, v1, :cond_11

    const/4 p0, 0x0

    return p0

    :cond_11
    return v0

    :cond_12
    const/4 p0, 0x5

    return p0

    :cond_14
    return v0
.end method

.method public static blacklist convertToHalRadioAccessSpecifier11(Landroid/telephony/RadioAccessSpecifier;)Landroid/hardware/radio/V1_1/RadioAccessSpecifier;
    .registers 8

    .line 1326
    new-instance v0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;

    invoke-direct {v0}, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;-><init>()V

    .line 1328
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getRadioAccessNetwork()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->radioAccessNetwork:I

    .line 1329
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1330
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getBands()[I

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2b

    .line 1331
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getBands()[I

    move-result-object v2

    array-length v4, v2

    move v5, v3

    :goto_1d
    if-ge v5, v4, :cond_2b

    aget v6, v2, v5

    .line 1332
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    .line 1335
    :cond_2b
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getRadioAccessNetwork()I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_40

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3d

    const/4 v4, 0x3

    if-eq v2, v4, :cond_3a

    const/4 p0, 0x0

    return-object p0

    .line 1343
    :cond_3a
    iput-object v1, v0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->eutranBands:Ljava/util/ArrayList;

    goto :goto_42

    .line 1340
    :cond_3d
    iput-object v1, v0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->utranBands:Ljava/util/ArrayList;

    goto :goto_42

    .line 1337
    :cond_40
    iput-object v1, v0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->geranBands:Ljava/util/ArrayList;

    .line 1349
    :goto_42
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getChannels()[I

    move-result-object v1

    if-eqz v1, :cond_5d

    .line 1350
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getChannels()[I

    move-result-object p0

    array-length v1, p0

    :goto_4d
    if-ge v3, v1, :cond_5d

    aget v2, p0, v3

    .line 1351
    iget-object v4, v0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->channels:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4d

    :cond_5d
    return-object v0
.end method

.method public static blacklist convertToHalRadioAccessSpecifier15(Landroid/telephony/RadioAccessSpecifier;)Landroid/hardware/radio/V1_5/RadioAccessSpecifier;
    .registers 9

    .line 1365
    new-instance v0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;

    invoke-direct {v0}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;-><init>()V

    .line 1367
    new-instance v1, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;

    invoke-direct {v1}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;-><init>()V

    .line 1370
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getRadioAccessNetwork()I

    move-result v2

    .line 1369
    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->convertToHalRadioAccessNetworks(I)I

    move-result v2

    iput v2, v0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->radioAccessNetwork:I

    .line 1371
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1372
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getBands()[I

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_34

    .line 1373
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getBands()[I

    move-result-object v3

    array-length v5, v3

    move v6, v4

    :goto_26
    if-ge v6, v5, :cond_34

    aget v7, v3, v6

    .line 1374
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_26

    .line 1377
    :cond_34
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getRadioAccessNetwork()I

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_52

    const/4 v5, 0x2

    if-eq v3, v5, :cond_4e

    const/4 v5, 0x3

    if-eq v3, v5, :cond_4a

    const/4 v5, 0x6

    if-eq v3, v5, :cond_46

    const/4 p0, 0x0

    return-object p0

    .line 1388
    :cond_46
    invoke-virtual {v1, v2}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->ngranBands(Ljava/util/ArrayList;)V

    goto :goto_55

    .line 1385
    :cond_4a
    invoke-virtual {v1, v2}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->eutranBands(Ljava/util/ArrayList;)V

    goto :goto_55

    .line 1382
    :cond_4e
    invoke-virtual {v1, v2}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->utranBands(Ljava/util/ArrayList;)V

    goto :goto_55

    .line 1379
    :cond_52
    invoke-virtual {v1, v2}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->geranBands(Ljava/util/ArrayList;)V

    .line 1393
    :goto_55
    iput-object v1, v0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->bands:Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;

    .line 1395
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getChannels()[I

    move-result-object v1

    if-eqz v1, :cond_72

    .line 1396
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getChannels()[I

    move-result-object p0

    array-length v1, p0

    :goto_62
    if-ge v4, v1, :cond_72

    aget v2, p0, v4

    .line 1397
    iget-object v3, v0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->channels:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_62

    :cond_72
    return-object v0
.end method

.method public static blacklist convertToHalRadioAccessSpecifierAidl(Landroid/telephony/RadioAccessSpecifier;)Landroid/hardware/radio/network/RadioAccessSpecifier;
    .registers 7

    .line 1411
    new-instance v0, Landroid/hardware/radio/network/RadioAccessSpecifier;

    invoke-direct {v0}, Landroid/hardware/radio/network/RadioAccessSpecifier;-><init>()V

    .line 1413
    new-instance v1, Landroid/hardware/radio/network/RadioAccessSpecifierBands;

    invoke-direct {v1}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;-><init>()V

    .line 1415
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getRadioAccessNetwork()I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->convertToHalAccessNetworkAidl(I)I

    move-result v2

    iput v2, v0, Landroid/hardware/radio/network/RadioAccessSpecifier;->accessNetwork:I

    .line 1417
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getBands()[I

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_35

    .line 1418
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getBands()[I

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    move v4, v3

    .line 1419
    :goto_23
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getBands()[I

    move-result-object v5

    array-length v5, v5

    if-ge v4, v5, :cond_37

    .line 1420
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getBands()[I

    move-result-object v5

    aget v5, v5, v4

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 1423
    :cond_35
    new-array v2, v3, [I

    .line 1425
    :cond_37
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getRadioAccessNetwork()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_55

    const/4 v5, 0x2

    if-eq v4, v5, :cond_51

    const/4 v5, 0x3

    if-eq v4, v5, :cond_4d

    const/4 v5, 0x6

    if-eq v4, v5, :cond_49

    const/4 p0, 0x0

    return-object p0

    .line 1436
    :cond_49
    invoke-virtual {v1, v2}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->setNgranBands([I)V

    goto :goto_58

    .line 1433
    :cond_4d
    invoke-virtual {v1, v2}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->setEutranBands([I)V

    goto :goto_58

    .line 1430
    :cond_51
    invoke-virtual {v1, v2}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->setUtranBands([I)V

    goto :goto_58

    .line 1427
    :cond_55
    invoke-virtual {v1, v2}, Landroid/hardware/radio/network/RadioAccessSpecifierBands;->setGeranBands([I)V

    .line 1441
    :goto_58
    iput-object v1, v0, Landroid/hardware/radio/network/RadioAccessSpecifier;->bands:Landroid/hardware/radio/network/RadioAccessSpecifierBands;

    .line 1444
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getChannels()[I

    move-result-object v1

    if-eqz v1, :cond_79

    .line 1445
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getChannels()[I

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    .line 1446
    :goto_67
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getChannels()[I

    move-result-object v2

    array-length v2, v2

    if-ge v3, v2, :cond_7b

    .line 1447
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getChannels()[I

    move-result-object v2

    aget v2, v2, v3

    aput v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_67

    .line 1450
    :cond_79
    new-array v1, v3, [I

    .line 1452
    :cond_7b
    iput-object v1, v0, Landroid/hardware/radio/network/RadioAccessSpecifier;->channels:[I

    return-object v0
.end method

.method public static blacklist convertToHalResetNvType(I)I
    .registers 2

    .line 0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_5

    const/4 p0, 0x0

    return p0

    :cond_5
    const/4 p0, -0x1

    return p0
.end method

.method public static blacklist convertToHalResetNvTypeAidl(I)I
    .registers 2

    .line 0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_5

    const/4 p0, 0x0

    return p0

    :cond_5
    const/4 p0, -0x1

    return p0
.end method

.method public static blacklist convertToHalSignalThresholdInfo(Landroid/telephony/SignalThresholdInfo;)Landroid/hardware/radio/V1_5/SignalThresholdInfo;
    .registers 3

    .line 2037
    new-instance v0, Landroid/hardware/radio/V1_5/SignalThresholdInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_5/SignalThresholdInfo;-><init>()V

    .line 2039
    invoke-virtual {p0}, Landroid/telephony/SignalThresholdInfo;->getSignalMeasurementType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_5/SignalThresholdInfo;->signalMeasurement:I

    .line 2040
    invoke-virtual {p0}, Landroid/telephony/SignalThresholdInfo;->getHysteresisMs()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_5/SignalThresholdInfo;->hysteresisMs:I

    .line 2041
    invoke-virtual {p0}, Landroid/telephony/SignalThresholdInfo;->getHysteresisDb()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_5/SignalThresholdInfo;->hysteresisDb:I

    .line 2043
    invoke-virtual {p0}, Landroid/telephony/SignalThresholdInfo;->getThresholds()[I

    move-result-object v1

    .line 2042
    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->primitiveArrayToArrayList([I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/V1_5/SignalThresholdInfo;->thresholds:Ljava/util/ArrayList;

    .line 2044
    invoke-virtual {p0}, Landroid/telephony/SignalThresholdInfo;->isEnabled()Z

    move-result p0

    iput-boolean p0, v0, Landroid/hardware/radio/V1_5/SignalThresholdInfo;->isEnabled:Z

    return-object v0
.end method

.method public static blacklist convertToHalSignalThresholdInfoAidl(Landroid/telephony/SignalThresholdInfo;)Landroid/hardware/radio/network/SignalThresholdInfo;
    .registers 3

    .line 2055
    new-instance v0, Landroid/hardware/radio/network/SignalThresholdInfo;

    invoke-direct {v0}, Landroid/hardware/radio/network/SignalThresholdInfo;-><init>()V

    .line 2057
    invoke-virtual {p0}, Landroid/telephony/SignalThresholdInfo;->getSignalMeasurementType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/network/SignalThresholdInfo;->signalMeasurement:I

    .line 2058
    invoke-virtual {p0}, Landroid/telephony/SignalThresholdInfo;->getHysteresisMs()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/network/SignalThresholdInfo;->hysteresisMs:I

    .line 2059
    invoke-virtual {p0}, Landroid/telephony/SignalThresholdInfo;->getHysteresisDb()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/network/SignalThresholdInfo;->hysteresisDb:I

    .line 2060
    invoke-virtual {p0}, Landroid/telephony/SignalThresholdInfo;->getThresholds()[I

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/network/SignalThresholdInfo;->thresholds:[I

    .line 2061
    invoke-virtual {p0}, Landroid/telephony/SignalThresholdInfo;->isEnabled()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/radio/network/SignalThresholdInfo;->isEnabled:Z

    .line 2062
    invoke-virtual {p0}, Landroid/telephony/SignalThresholdInfo;->getRadioAccessNetworkType()I

    move-result p0

    iput p0, v0, Landroid/hardware/radio/network/SignalThresholdInfo;->ran:I

    return-object v0
.end method

.method public static blacklist convertToHalSimApdu(IIIIIILjava/lang/String;)Landroid/hardware/radio/V1_0/SimApdu;
    .registers 8

    .line 1813
    new-instance v0, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 1814
    iput p0, v0, Landroid/hardware/radio/V1_0/SimApdu;->sessionId:I

    .line 1815
    iput p1, v0, Landroid/hardware/radio/V1_0/SimApdu;->cla:I

    .line 1816
    iput p2, v0, Landroid/hardware/radio/V1_0/SimApdu;->instruction:I

    .line 1817
    iput p3, v0, Landroid/hardware/radio/V1_0/SimApdu;->p1:I

    .line 1818
    iput p4, v0, Landroid/hardware/radio/V1_0/SimApdu;->p2:I

    .line 1819
    iput p5, v0, Landroid/hardware/radio/V1_0/SimApdu;->p3:I

    .line 1820
    invoke-static {p6}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/hardware/radio/V1_0/SimApdu;->data:Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist convertToHalSimApduAidl(IIIIIILjava/lang/String;ZLcom/android/internal/telephony/HalVersion;)Landroid/hardware/radio/sim/SimApdu;
    .registers 10

    .line 1839
    new-instance v0, Landroid/hardware/radio/sim/SimApdu;

    invoke-direct {v0}, Landroid/hardware/radio/sim/SimApdu;-><init>()V

    .line 1840
    iput p0, v0, Landroid/hardware/radio/sim/SimApdu;->sessionId:I

    .line 1841
    iput p1, v0, Landroid/hardware/radio/sim/SimApdu;->cla:I

    .line 1842
    iput p2, v0, Landroid/hardware/radio/sim/SimApdu;->instruction:I

    .line 1843
    iput p3, v0, Landroid/hardware/radio/sim/SimApdu;->p1:I

    .line 1844
    iput p4, v0, Landroid/hardware/radio/sim/SimApdu;->p2:I

    .line 1845
    iput p5, v0, Landroid/hardware/radio/sim/SimApdu;->p3:I

    .line 1846
    invoke-static {p6}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/hardware/radio/sim/SimApdu;->data:Ljava/lang/String;

    .line 1847
    sget-object p0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_1:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {p8, p0}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result p0

    if-eqz p0, :cond_21

    .line 1848
    iput-boolean p7, v0, Landroid/hardware/radio/sim/SimApdu;->isEs10:Z

    :cond_21
    return-object v0
.end method

.method public static blacklist convertToHalSimLockMultiSimPolicy(I)I
    .registers 2

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const/4 p0, 0x0

    return p0

    :cond_5
    return v0
.end method

.method public static blacklist convertToHalSimLockMultiSimPolicyAidl(I)I
    .registers 2

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const/4 p0, 0x0

    return p0

    :cond_5
    return v0
.end method

.method public static blacklist convertToHalSliceInfo(Landroid/telephony/data/NetworkSliceInfo;)Landroid/hardware/radio/V1_6/OptionalSliceInfo;
    .registers 4

    .line 1071
    new-instance v0, Landroid/hardware/radio/V1_6/OptionalSliceInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/OptionalSliceInfo;-><init>()V

    if-nez p0, :cond_8

    return-object v0

    .line 1077
    :cond_8
    new-instance v1, Landroid/hardware/radio/V1_6/SliceInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_6/SliceInfo;-><init>()V

    .line 1078
    invoke-virtual {p0}, Landroid/telephony/data/NetworkSliceInfo;->getSliceServiceType()I

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, v1, Landroid/hardware/radio/V1_6/SliceInfo;->sst:B

    .line 1079
    invoke-virtual {p0}, Landroid/telephony/data/NetworkSliceInfo;->getMappedHplmnSliceServiceType()I

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, v1, Landroid/hardware/radio/V1_6/SliceInfo;->mappedHplmnSst:B

    .line 1080
    invoke-virtual {p0}, Landroid/telephony/data/NetworkSliceInfo;->getSliceDifferentiator()I

    move-result v2

    iput v2, v1, Landroid/hardware/radio/V1_6/SliceInfo;->sliceDifferentiator:I

    .line 1081
    invoke-virtual {p0}, Landroid/telephony/data/NetworkSliceInfo;->getMappedHplmnSliceDifferentiator()I

    move-result p0

    iput p0, v1, Landroid/hardware/radio/V1_6/SliceInfo;->mappedHplmnSD:I

    .line 1082
    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_6/OptionalSliceInfo;->value(Landroid/hardware/radio/V1_6/SliceInfo;)V

    return-object v0
.end method

.method public static blacklist convertToHalSliceInfoAidl(Landroid/telephony/data/NetworkSliceInfo;)Landroid/hardware/radio/data/SliceInfo;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1097
    :cond_4
    new-instance v0, Landroid/hardware/radio/data/SliceInfo;

    invoke-direct {v0}, Landroid/hardware/radio/data/SliceInfo;-><init>()V

    .line 1098
    invoke-virtual {p0}, Landroid/telephony/data/NetworkSliceInfo;->getSliceServiceType()I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/hardware/radio/data/SliceInfo;->sliceServiceType:B

    .line 1099
    invoke-virtual {p0}, Landroid/telephony/data/NetworkSliceInfo;->getMappedHplmnSliceServiceType()I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/hardware/radio/data/SliceInfo;->mappedHplmnSst:B

    .line 1100
    invoke-virtual {p0}, Landroid/telephony/data/NetworkSliceInfo;->getSliceDifferentiator()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/data/SliceInfo;->sliceDifferentiator:I

    .line 1101
    invoke-virtual {p0}, Landroid/telephony/data/NetworkSliceInfo;->getMappedHplmnSliceDifferentiator()I

    move-result p0

    iput p0, v0, Landroid/hardware/radio/data/SliceInfo;->mappedHplmnSd:I

    return-object v0
.end method

.method public static blacklist convertToHalSmsWriteArgsStatus(I)I
    .registers 4

    .line 0
    const/4 v0, 0x7

    and-int/2addr p0, v0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_f

    const/4 v2, 0x5

    if-eq p0, v2, :cond_e

    if-eq p0, v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x2

    return p0

    :cond_e
    return v1

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist convertToHalSmsWriteArgsStatusAidl(I)I
    .registers 4

    .line 0
    const/4 v0, 0x7

    and-int/2addr p0, v0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_f

    const/4 v2, 0x5

    if-eq p0, v2, :cond_e

    if-eq p0, v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x2

    return p0

    :cond_e
    return v1

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist convertToHalSrvccCall([Lcom/android/internal/telephony/SrvccConnection;)[Landroid/hardware/radio/ims/SrvccCall;
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_6

    .line 5632
    new-array p0, v0, [Landroid/hardware/radio/ims/SrvccCall;

    return-object p0

    .line 5635
    :cond_6
    array-length v1, p0

    .line 5636
    new-array v2, v1, [Landroid/hardware/radio/ims/SrvccCall;

    :goto_9
    if-ge v0, v1, :cond_9b

    .line 5640
    new-instance v3, Landroid/hardware/radio/ims/SrvccCall;

    invoke-direct {v3}, Landroid/hardware/radio/ims/SrvccCall;-><init>()V

    aput-object v3, v2, v0

    add-int/lit8 v4, v0, 0x1

    .line 5641
    iput v4, v3, Landroid/hardware/radio/ims/SrvccCall;->index:I

    .line 5642
    aget-object v5, p0, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/SrvccConnection;->getType()I

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/RILUtils;->convertSrvccCallType(I)I

    move-result v5

    iput v5, v3, Landroid/hardware/radio/ims/SrvccCall;->callType:I

    .line 5643
    aget-object v3, v2, v0

    aget-object v5, p0, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/SrvccConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/RILUtils;->convertCallState(Lcom/android/internal/telephony/Call$State;)I

    move-result v5

    iput v5, v3, Landroid/hardware/radio/ims/SrvccCall;->callState:I

    .line 5644
    aget-object v3, v2, v0

    aget-object v5, p0, v0

    .line 5645
    invoke-virtual {v5}, Lcom/android/internal/telephony/SrvccConnection;->getSubState()I

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/RILUtils;->convertSrvccCallSubState(I)I

    move-result v5

    iput v5, v3, Landroid/hardware/radio/ims/SrvccCall;->callSubstate:I

    .line 5646
    aget-object v3, v2, v0

    aget-object v5, p0, v0

    .line 5647
    invoke-virtual {v5}, Lcom/android/internal/telephony/SrvccConnection;->getRingbackToneType()I

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/RILUtils;->convertSrvccCallRingbackToneType(I)I

    move-result v5

    iput v5, v3, Landroid/hardware/radio/ims/SrvccCall;->ringbackToneType:I

    .line 5648
    aget-object v3, v2, v0

    aget-object v5, p0, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/SrvccConnection;->isMultiParty()Z

    move-result v5

    iput-boolean v5, v3, Landroid/hardware/radio/ims/SrvccCall;->isMpty:Z

    .line 5649
    aget-object v3, v2, v0

    aget-object v5, p0, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/SrvccConnection;->isIncoming()Z

    move-result v5

    iput-boolean v5, v3, Landroid/hardware/radio/ims/SrvccCall;->isMT:Z

    .line 5650
    aget-object v3, v2, v0

    aget-object v5, p0, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/SrvccConnection;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Landroid/hardware/radio/ims/SrvccCall;->number:Ljava/lang/String;

    .line 5651
    aget-object v3, v2, v0

    aget-object v5, p0, v0

    .line 5652
    invoke-virtual {v5}, Lcom/android/internal/telephony/SrvccConnection;->getNumberPresentation()I

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/RILUtils;->convertPresentation(I)I

    move-result v5

    iput v5, v3, Landroid/hardware/radio/ims/SrvccCall;->numPresentation:I

    .line 5653
    aget-object v3, v2, v0

    aget-object v5, p0, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/SrvccConnection;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Landroid/hardware/radio/ims/SrvccCall;->name:Ljava/lang/String;

    .line 5654
    aget-object v3, v2, v0

    aget-object v0, p0, v0

    .line 5655
    invoke-virtual {v0}, Lcom/android/internal/telephony/SrvccConnection;->getNamePresentation()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertPresentation(I)I

    move-result v0

    iput v0, v3, Landroid/hardware/radio/ims/SrvccCall;->namePresentation:I

    move v0, v4

    goto/16 :goto_9

    :cond_9b
    return-object v2
.end method

.method public static blacklist convertToHalTrafficDescriptor(Landroid/telephony/data/TrafficDescriptor;)Landroid/hardware/radio/V1_6/OptionalTrafficDescriptor;
    .registers 5

    .line 1112
    new-instance v0, Landroid/hardware/radio/V1_6/OptionalTrafficDescriptor;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/OptionalTrafficDescriptor;-><init>()V

    if-nez p0, :cond_8

    return-object v0

    .line 1118
    :cond_8
    new-instance v1, Landroid/hardware/radio/V1_6/TrafficDescriptor;

    invoke-direct {v1}, Landroid/hardware/radio/V1_6/TrafficDescriptor;-><init>()V

    .line 1121
    new-instance v2, Landroid/hardware/radio/V1_6/OptionalDnn;

    invoke-direct {v2}, Landroid/hardware/radio/V1_6/OptionalDnn;-><init>()V

    .line 1123
    invoke-virtual {p0}, Landroid/telephony/data/TrafficDescriptor;->getDataNetworkName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1f

    .line 1124
    invoke-virtual {p0}, Landroid/telephony/data/TrafficDescriptor;->getDataNetworkName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/radio/V1_6/OptionalDnn;->value(Ljava/lang/String;)V

    .line 1126
    :cond_1f
    iput-object v2, v1, Landroid/hardware/radio/V1_6/TrafficDescriptor;->dnn:Landroid/hardware/radio/V1_6/OptionalDnn;

    .line 1128
    new-instance v2, Landroid/hardware/radio/V1_6/OptionalOsAppId;

    invoke-direct {v2}, Landroid/hardware/radio/V1_6/OptionalOsAppId;-><init>()V

    .line 1130
    invoke-virtual {p0}, Landroid/telephony/data/TrafficDescriptor;->getOsAppId()[B

    move-result-object v3

    if-eqz v3, :cond_3e

    .line 1131
    new-instance v3, Landroid/hardware/radio/V1_6/OsAppId;

    invoke-direct {v3}, Landroid/hardware/radio/V1_6/OsAppId;-><init>()V

    .line 1132
    invoke-virtual {p0}, Landroid/telephony/data/TrafficDescriptor;->getOsAppId()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->primitiveArrayToArrayList([B)Ljava/util/ArrayList;

    move-result-object p0

    iput-object p0, v3, Landroid/hardware/radio/V1_6/OsAppId;->osAppId:Ljava/util/ArrayList;

    .line 1133
    invoke-virtual {v2, v3}, Landroid/hardware/radio/V1_6/OptionalOsAppId;->value(Landroid/hardware/radio/V1_6/OsAppId;)V

    .line 1135
    :cond_3e
    iput-object v2, v1, Landroid/hardware/radio/V1_6/TrafficDescriptor;->osAppId:Landroid/hardware/radio/V1_6/OptionalOsAppId;

    .line 1137
    invoke-virtual {v0, v1}, Landroid/hardware/radio/V1_6/OptionalTrafficDescriptor;->value(Landroid/hardware/radio/V1_6/TrafficDescriptor;)V

    return-object v0
.end method

.method public static blacklist convertToHalTrafficDescriptorAidl(Landroid/telephony/data/TrafficDescriptor;)Landroid/hardware/radio/data/TrafficDescriptor;
    .registers 3

    if-nez p0, :cond_8

    .line 1149
    new-instance p0, Landroid/hardware/radio/data/TrafficDescriptor;

    invoke-direct {p0}, Landroid/hardware/radio/data/TrafficDescriptor;-><init>()V

    return-object p0

    .line 1152
    :cond_8
    new-instance v0, Landroid/hardware/radio/data/TrafficDescriptor;

    invoke-direct {v0}, Landroid/hardware/radio/data/TrafficDescriptor;-><init>()V

    .line 1154
    invoke-virtual {p0}, Landroid/telephony/data/TrafficDescriptor;->getDataNetworkName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/data/TrafficDescriptor;->dnn:Ljava/lang/String;

    .line 1155
    invoke-virtual {p0}, Landroid/telephony/data/TrafficDescriptor;->getOsAppId()[B

    move-result-object v1

    if-nez v1, :cond_1d

    const/4 p0, 0x0

    .line 1156
    iput-object p0, v0, Landroid/hardware/radio/data/TrafficDescriptor;->osAppId:Landroid/hardware/radio/data/OsAppId;

    return-object v0

    .line 1158
    :cond_1d
    new-instance v1, Landroid/hardware/radio/data/OsAppId;

    invoke-direct {v1}, Landroid/hardware/radio/data/OsAppId;-><init>()V

    .line 1159
    invoke-virtual {p0}, Landroid/telephony/data/TrafficDescriptor;->getOsAppId()[B

    move-result-object p0

    iput-object p0, v1, Landroid/hardware/radio/data/OsAppId;->osAppId:[B

    .line 1160
    iput-object v1, v0, Landroid/hardware/radio/data/TrafficDescriptor;->osAppId:Landroid/hardware/radio/data/OsAppId;

    return-object v0
.end method

.method private static blacklist convertToLinkAddress(Ljava/lang/String;)Landroid/net/LinkAddress;
    .registers 7

    const-wide/16 v2, -0x1

    const-wide/16 v4, -0x1

    const/4 v1, 0x0

    move-object v0, p0

    .line 3236
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/RILUtils;->convertToLinkAddress(Ljava/lang/String;IJJ)Landroid/net/LinkAddress;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist convertToLinkAddress(Ljava/lang/String;IJJ)Landroid/net/LinkAddress;
    .registers 17

    .line 3242
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 3246
    :try_start_6
    const-string v2, "/"

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    .line 3247
    aget-object v4, v2, v4

    invoke-static {v4}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 3248
    array-length v4, v2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_22

    .line 3249
    instance-of v2, v0, Ljava/net/Inet4Address;

    if-eqz v2, :cond_1f

    const/16 v2, 0x20

    goto :goto_2d

    :cond_1f
    const/16 v2, 0x80

    goto :goto_2d

    .line 3250
    :cond_22
    array-length v4, v2

    if-ne v4, v3, :cond_2c

    .line 3251
    aget-object v2, v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_2b
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_2b} :catch_30
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_2b} :catch_30
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_2b} :catch_30
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_2b} :catch_30

    goto :goto_2d

    :cond_2c
    move v2, v1

    :goto_2d
    move-object v3, v0

    move v4, v2

    goto :goto_32

    :catch_30
    move-object v3, v0

    move v4, v1

    :goto_32
    if-eqz v3, :cond_40

    if-eq v4, v1, :cond_40

    .line 3263
    new-instance v2, Landroid/net/LinkAddress;

    const/4 v6, 0x0

    move v5, p1

    move-wide v7, p2

    move-wide v9, p4

    invoke-direct/range {v2 .. v10}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;IIIJJ)V

    return-object v2

    .line 3260
    :cond_40
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid link address "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static blacklist convertToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5531
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "toString"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_14} :catch_18

    if-eq v2, v3, :cond_20

    goto/16 :goto_1a3

    :catch_18
    move-exception v2

    .line 5533
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->loge(Ljava/lang/String;)V

    .line 5535
    :cond_20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->isPrimitiveOrWrapper(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1a3

    instance-of v2, p0, Ljava/util/ArrayList;

    if-eqz v2, :cond_30

    goto/16 :goto_1a3

    .line 5538
    :cond_30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    const-string v3, ", "

    const/4 v4, 0x1

    if-eqz v2, :cond_9b

    .line 5540
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5542
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->isPrimitiveOrWrapper(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_6b

    move v2, v1

    .line 5543
    :goto_53
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-ge v1, v5, :cond_82

    .line 5544
    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->convertToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_53

    .line 5548
    :cond_6b
    check-cast p0, [Ljava/lang/Object;

    array-length v2, p0

    move v5, v1

    :goto_6f
    if-ge v1, v2, :cond_81

    aget-object v5, p0, v1

    .line 5549
    invoke-static {v5}, Lcom/android/internal/telephony/RILUtils;->convertToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    move v5, v4

    goto :goto_6f

    :cond_81
    move v2, v5

    :cond_82
    if-eqz v2, :cond_91

    .line 5555
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 5557
    :cond_91
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5558
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5560
    :cond_9b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5561
    const-string v5, "{"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5562
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v6, -0x1

    .line 5565
    :try_start_b6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "getTag"

    new-array v9, v1, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7
    :try_end_cc
    .catch Ljava/lang/IllegalAccessException; {:try_start_b6 .. :try_end_cc} :catch_cd
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b6 .. :try_end_cc} :catch_cd
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b6 .. :try_end_cc} :catch_d5

    goto :goto_d6

    :catch_cd
    move-exception v7

    .line 5567
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/RILUtils;->loge(Ljava/lang/String;)V

    :catch_d5
    move v7, v6

    .line 5571
    :goto_d6
    const-string v8, "="

    if-eq v7, v6, :cond_150

    .line 5575
    :try_start_da
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v5, "_tagString"

    new-array v6, v4, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v6, v1

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 5576
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 5577
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_fb
    .catch Ljava/lang/NoSuchMethodException; {:try_start_da .. :try_end_fb} :catch_fc
    .catch Ljava/lang/IllegalAccessException; {:try_start_da .. :try_end_fb} :catch_fc
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_da .. :try_end_fb} :catch_fc

    goto :goto_105

    :catch_fc
    move-exception v3

    .line 5579
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->loge(Ljava/lang/String;)V

    move-object v3, v0

    :goto_105
    if-eqz v3, :cond_199

    .line 5582
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5583
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5585
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5586
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5589
    :try_start_12f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v4, v3, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_13d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_12f .. :try_end_13d} :catch_13e
    .catch Ljava/lang/IllegalAccessException; {:try_start_12f .. :try_end_13d} :catch_13e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_12f .. :try_end_13d} :catch_13e

    goto :goto_146

    :catch_13e
    move-exception p0

    .line 5592
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->loge(Ljava/lang/String;)V

    :goto_146
    if-eqz v0, :cond_199

    .line 5595
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_199

    .line 5600
    :cond_150
    array-length v6, v5

    move v7, v1

    :goto_152
    if-ge v1, v6, :cond_18a

    aget-object v9, v5, v1

    .line 5602
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v10

    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v10

    if-eqz v10, :cond_161

    goto :goto_187

    .line 5603
    :cond_161
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5606
    :try_start_16b
    invoke-virtual {v9, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9
    :try_end_16f
    .catch Ljava/lang/IllegalAccessException; {:try_start_16b .. :try_end_16f} :catch_170

    goto :goto_179

    :catch_170
    move-exception v9

    .line 5608
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/RILUtils;->loge(Ljava/lang/String;)V

    move-object v9, v0

    :goto_179
    if-nez v9, :cond_17c

    goto :goto_187

    .line 5611
    :cond_17c
    invoke-static {v9}, Lcom/android/internal/telephony/RILUtils;->convertToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v7, v4

    :goto_187
    add-int/lit8 v1, v1, 0x1

    goto :goto_152

    :cond_18a
    if-eqz v7, :cond_199

    .line 5616
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {v2, p0, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 5619
    :cond_199
    :goto_199
    const-string p0, "}"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5620
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5536
    :cond_1a3
    :goto_1a3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist deactivateDataReasonToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_2b

    const/4 v0, 0x1

    if-eq p0, v0, :cond_28

    const/4 v0, 0x2

    if-eq p0, v0, :cond_25

    const/4 v0, 0x3

    if-eq p0, v0, :cond_22

    .line 4900
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4894
    :cond_22
    const-string p0, "HANDOVER"

    return-object p0

    .line 4896
    :cond_25
    const-string p0, "SHUTDOWN"

    return-object p0

    .line 4892
    :cond_28
    const-string p0, "NORMAL"

    return-object p0

    .line 4898
    :cond_2b
    const-string p0, "UNKNOWN"

    return-object p0
.end method

.method public static blacklist getCaps(Lcom/android/internal/telephony/HalVersion;Z)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/HalVersion;",
            "Z)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5488
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 5490
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/HalVersion;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 5492
    const-string v1, "Radio Hal Version is UNKNOWN!"

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->loge(Ljava/lang/String;)V

    .line 5495
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Radio Hal Version = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/HalVersion;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->logd(Ljava/lang/String;)V

    .line 5496
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result p0

    if-eqz p0, :cond_6d

    .line 5497
    const-string p0, "CAPABILITY_USES_ALLOWED_NETWORK_TYPES_BITMASK"

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5498
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->logd(Ljava/lang/String;)V

    if-nez p1, :cond_65

    .line 5501
    const-string p0, "CAPABILITY_SECONDARY_LINK_BANDWIDTH_VISIBLE"

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5502
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->logd(Ljava/lang/String;)V

    .line 5503
    const-string p0, "CAPABILITY_NR_DUAL_CONNECTIVITY_CONFIGURATION_AVAILABLE"

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5504
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->logd(Ljava/lang/String;)V

    .line 5505
    const-string p0, "CAPABILITY_THERMAL_MITIGATION_DATA_THROTTLING"

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5506
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->logd(Ljava/lang/String;)V

    .line 5507
    const-string p0, "CAPABILITY_SLICING_CONFIG_SUPPORTED"

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5508
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->logd(Ljava/lang/String;)V

    .line 5509
    const-string p0, "CAPABILITY_PHYSICAL_CHANNEL_CONFIG_1_6_SUPPORTED"

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5510
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->logd(Ljava/lang/String;)V

    return-object v0

    .line 5512
    :cond_65
    const-string p0, "CAPABILITY_SIM_PHONEBOOK_IN_MODEM"

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5513
    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->logd(Ljava/lang/String;)V

    :cond_6d
    return-object v0
.end method

.method private static blacklist getCountryCodeForMccMnc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 4650
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, ""

    return-object p0

    .line 4651
    :cond_9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string p1, "000"

    :cond_11
    const/4 v0, 0x2

    .line 4652
    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4654
    invoke-static {p0}, Lcom/android/internal/telephony/MccTable$MccMnc;->fromOperatorNumeric(Ljava/lang/String;)Lcom/android/internal/telephony/MccTable$MccMnc;

    move-result-object p0

    .line 4655
    invoke-static {p0}, Lcom/android/internal/telephony/MccTable;->geoCountryCodeForMccMnc(Lcom/android/internal/telephony/MccTable$MccMnc;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist isPrimitiveOrWrapper(Ljava/lang/Class;)Z
    .registers 2

    .line 5520
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcom/android/internal/telephony/RILUtils;->WRAPPER_CLASSES:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    return p0

    :cond_11
    :goto_11
    const/4 p0, 0x1

    return p0
.end method

.method private static blacklist logd(Ljava/lang/String;)V
    .registers 2

    .line 5924
    const-string v0, "RILUtils"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 5928
    const-string v0, "RILUtils"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static blacklist primitiveArrayToArrayList([B)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 4829
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4830
    array-length v1, p0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_16

    aget-byte v3, p0, v2

    .line 4831
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_16
    return-object v0
.end method

.method public static blacklist primitiveArrayToArrayList([I)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4838
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4839
    array-length v1, p0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_16

    aget v3, p0, v2

    .line 4840
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_16
    return-object v0
.end method

.method public static blacklist primitiveArrayToArrayList([Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4847
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static blacklist requestToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_288

    packed-switch p0, :pswitch_data_3bc

    .line 5325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<unknown request "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5323
    :pswitch_1d
    const-string p0, "IS_SATELLITE_ENABLED_FOR_CARRIER"

    return-object p0

    .line 5321
    :pswitch_20
    const-string p0, "SET_SATELLITE_ENABLED_FOR_CARRIER"

    return-object p0

    .line 5319
    :pswitch_23
    const-string p0, "SET_SATELLITE_PLMN"

    return-object p0

    .line 5317
    :pswitch_26
    const-string p0, "GET_SIMULTANEOUS_CALLING_SUPPORT"

    return-object p0

    .line 5315
    :pswitch_29
    const-string p0, "IS_SECURITY_ALGORITHMS_UPDATED_ENABLED"

    return-object p0

    .line 5313
    :pswitch_2c
    const-string p0, "SET_SECURITY_ALGORITHMS_UPDATED_ENABLED"

    return-object p0

    .line 5311
    :pswitch_2f
    const-string p0, "SET_CELLULAR_IDENTIFIER_DISCLOSED_ENABLED"

    return-object p0

    .line 5309
    :pswitch_32
    const-string p0, "IS_CELLULAR_IDENTIFIER_DISCLOSED_ENABLED"

    return-object p0

    .line 5297
    :pswitch_35
    const-string p0, "IS_NULL_CIPHER_AND_INTEGRITY_ENABLED"

    return-object p0

    .line 5307
    :pswitch_38
    const-string p0, "GET_LOCATION_PRIVACY_SETTING"

    return-object p0

    .line 5305
    :pswitch_3b
    const-string p0, "SET_LOCATION_PRIVACY_SETTING"

    return-object p0

    .line 5303
    :pswitch_3e
    const-string p0, "IS_N1_MODE_ENABLED"

    return-object p0

    .line 5301
    :pswitch_41
    const-string p0, "SET_N1_MODE_ENABLED"

    return-object p0

    .line 5299
    :pswitch_44
    const-string p0, "UPDATE_IMS_CALL_STATUS"

    return-object p0

    .line 5295
    :pswitch_47
    const-string p0, "SET_NULL_CIPHER_AND_INTEGRITY_ENABLED"

    return-object p0

    .line 5293
    :pswitch_4a
    const-string p0, "TRIGGER_EPS_FALLBACK"

    return-object p0

    .line 5291
    :pswitch_4d
    const-string p0, "SEND_ANBR_QUERY"

    return-object p0

    .line 5289
    :pswitch_50
    const-string p0, "STOP_IMS_TRAFFIC"

    return-object p0

    .line 5287
    :pswitch_53
    const-string p0, "START_IMS_TRAFFIC"

    return-object p0

    .line 5285
    :pswitch_56
    const-string p0, "UPDATE_IMS_REGISTRATION_INFO"

    return-object p0

    .line 5283
    :pswitch_59
    const-string p0, "SET_SRVCC_CALL_INFO"

    return-object p0

    .line 5281
    :pswitch_5c
    const-string p0, "EXIT_EMERGENCY_MODE"

    return-object p0

    .line 5279
    :pswitch_5f
    const-string p0, "CANCEL_EMERGENCY_NETWORK_SCAN"

    return-object p0

    .line 5277
    :pswitch_62
    const-string p0, "TRIGGER_EMERGENCY_NETWORK_SCAN"

    return-object p0

    .line 5275
    :pswitch_65
    const-string p0, "SET_EMERGENCY_MODE"

    return-object p0

    .line 5273
    :pswitch_68
    const-string p0, "GET_USAGE_SETTING"

    return-object p0

    .line 5271
    :pswitch_6b
    const-string p0, "SET_USAGE_SETTING"

    return-object p0

    .line 5269
    :pswitch_6e
    const-string p0, "IS_VONR_ENABLED"

    return-object p0

    .line 5267
    :pswitch_71
    const-string p0, "ENABLE_VONR"

    return-object p0

    .line 5265
    :pswitch_74
    const-string p0, "GET_SLICING_CONFIG"

    return-object p0

    .line 5263
    :pswitch_77
    const-string p0, "GET_ALLOWED_NETWORK_TYPES_BITMAP"

    return-object p0

    .line 5261
    :pswitch_7a
    const-string p0, "SET_ALLOWED_NETWORK_TYPES_BITMAP"

    return-object p0

    .line 5259
    :pswitch_7d
    const-string p0, "SET_DATA_THROTTLING"

    return-object p0

    .line 5257
    :pswitch_80
    const-string p0, "GET_HAL_DEVICE_CAPABILITIES"

    return-object p0

    .line 5255
    :pswitch_83
    const-string p0, "GET_SYSTEM_SELECTION_CHANNELS"

    return-object p0

    .line 5253
    :pswitch_86
    const-string p0, "CANCEL_HANDOVER"

    return-object p0

    .line 5251
    :pswitch_89
    const-string p0, "START_HANDOVER"

    return-object p0

    .line 5249
    :pswitch_8c
    const-string p0, "RELEASE_PDU_SESSION_ID"

    return-object p0

    .line 5247
    :pswitch_8f
    const-string p0, "ALLOCATE_PDU_SESSION_ID"

    return-object p0

    .line 5245
    :pswitch_92
    const-string p0, "IS_NR_DUAL_CONNECTIVITY_ENABLED"

    return-object p0

    .line 5243
    :pswitch_95
    const-string p0, "ENABLE_NR_DUAL_CONNECTIVITY"

    return-object p0

    .line 5241
    :pswitch_98
    const-string p0, "ENTER_SIM_DEPERSONALIZATION"

    return-object p0

    .line 5239
    :pswitch_9b
    const-string p0, "GET_BARRING_INFO"

    return-object p0

    .line 5237
    :pswitch_9e
    const-string p0, "SET_SYSTEM_SELECTION_CHANNELS"

    return-object p0

    .line 5235
    :pswitch_a1
    const-string p0, "GET_UICC_APPLICATIONS_ENABLEMENT"

    return-object p0

    .line 5233
    :pswitch_a4
    const-string p0, "ENABLE_UICC_APPLICATIONS"

    return-object p0

    .line 5231
    :pswitch_a7
    const-string p0, "SWITCH_DUAL_SIM_CONFIG"

    return-object p0

    .line 5229
    :pswitch_aa
    const-string p0, "GET_PHONE_CAPABILITY"

    return-object p0

    .line 5227
    :pswitch_ad
    const-string p0, "EMERGENCY_DIAL"

    return-object p0

    .line 5225
    :pswitch_b0
    const-string p0, "SET_PREFERRED_DATA_MODEM"

    return-object p0

    .line 5223
    :pswitch_b3
    const-string p0, "SET_LINK_CAPACITY_REPORTING_CRITERIA"

    return-object p0

    .line 5221
    :pswitch_b6
    const-string p0, "SET_SIGNAL_STRENGTH_REPORTING_CRITERIA"

    return-object p0

    .line 5219
    :pswitch_b9
    const-string p0, "SET_LOGICAL_TO_PHYSICAL_SLOT_MAPPING"

    return-object p0

    .line 5217
    :pswitch_bc
    const-string p0, "GET_SLOT_STATUS"

    return-object p0

    .line 5214
    :pswitch_bf
    const-string p0, "DEVICE_IMEI"

    return-object p0

    .line 5212
    :pswitch_c2
    const-string p0, "UPDATE_SIM_PHONEBOOK_RECORD"

    return-object p0

    .line 5210
    :pswitch_c5
    const-string p0, "GET_SIM_PHONEBOOK_RECORDS"

    return-object p0

    .line 5208
    :pswitch_c8
    const-string p0, "GET_SIM_PHONEBOOK_CAPACITY"

    return-object p0

    .line 5206
    :pswitch_cb
    const-string p0, "CDMA_SEND_SMS_EXPECT_MORE"

    return-object p0

    .line 5204
    :pswitch_ce
    const-string p0, "GET_MODEM_STATUS"

    return-object p0

    .line 5202
    :pswitch_d1
    const-string p0, "ENABLE_MODEM"

    return-object p0

    .line 5200
    :pswitch_d4
    const-string p0, "STOP_KEEPALIVE"

    return-object p0

    .line 5198
    :pswitch_d7
    const-string p0, "START_KEEPALIVE"

    return-object p0

    .line 5196
    :pswitch_da
    const-string p0, "STOP_NETWORK_SCAN"

    return-object p0

    .line 5194
    :pswitch_dd
    const-string p0, "START_NETWORK_SCAN"

    return-object p0

    .line 5192
    :pswitch_e0
    const-string p0, "SET_CARRIER_INFO_IMSI_ENCRYPTION"

    return-object p0

    .line 5190
    :pswitch_e3
    const-string p0, "SET_SIM_CARD_POWER"

    return-object p0

    .line 5188
    :pswitch_e6
    const-string p0, "SET_UNSOLICITED_RESPONSE_FILTER"

    return-object p0

    .line 5186
    :pswitch_e9
    const-string p0, "SEND_DEVICE_STATE"

    return-object p0

    .line 5184
    :pswitch_ec
    const-string p0, "GET_ALLOWED_CARRIERS"

    return-object p0

    .line 5182
    :pswitch_ef
    const-string p0, "SET_ALLOWED_CARRIERS"

    return-object p0

    .line 5180
    :pswitch_f2
    const-string p0, "GET_ACTIVITY_INFO"

    return-object p0

    .line 5178
    :pswitch_f5
    const-string p0, "PULL_LCEDATA"

    return-object p0

    .line 5176
    :pswitch_f8
    const-string p0, "STOP_LCE"

    return-object p0

    .line 5174
    :pswitch_fb
    const-string p0, "START_LCE"

    return-object p0

    .line 5172
    :pswitch_fe
    const-string p0, "SET_RADIO_CAPABILITY"

    return-object p0

    .line 5170
    :pswitch_101
    const-string p0, "GET_RADIO_CAPABILITY"

    return-object p0

    .line 5168
    :pswitch_104
    const-string p0, "SHUTDOWN"

    return-object p0

    .line 5166
    :pswitch_107
    const-string p0, "SET_DATA_PROFILE"

    return-object p0

    .line 5164
    :pswitch_10a
    const-string p0, "SET_DC_RT_INFO_RATE"

    return-object p0

    .line 5162
    :pswitch_10d
    const-string p0, "GET_DC_RT_INFO"

    return-object p0

    .line 5160
    :pswitch_110
    const-string p0, "SIM_AUTHENTICATION"

    return-object p0

    .line 5158
    :pswitch_113
    const-string p0, "GET_HARDWARE_CONFIG"

    return-object p0

    .line 5156
    :pswitch_116
    const-string p0, "ALLOW_DATA"

    return-object p0

    .line 5154
    :pswitch_119
    const-string p0, "SET_UICC_SUBSCRIPTION"

    return-object p0

    .line 5152
    :pswitch_11c
    const-string p0, "NV_RESET_CONFIG"

    return-object p0

    .line 5150
    :pswitch_11f
    const-string p0, "NV_WRITE_CDMA_PRL"

    return-object p0

    .line 5148
    :pswitch_122
    const-string p0, "NV_WRITE_ITEM"

    return-object p0

    .line 5146
    :pswitch_125
    const-string p0, "NV_READ_ITEM"

    return-object p0

    .line 5144
    :pswitch_128
    const-string p0, "SIM_TRANSMIT_APDU_CHANNEL"

    return-object p0

    .line 5142
    :pswitch_12b
    const-string p0, "SIM_CLOSE_CHANNEL"

    return-object p0

    .line 5140
    :pswitch_12e
    const-string p0, "SIM_OPEN_CHANNEL"

    return-object p0

    .line 5138
    :pswitch_131
    const-string p0, "SIM_TRANSMIT_APDU_BASIC"

    return-object p0

    .line 5136
    :pswitch_134
    const-string p0, "IMS_SEND_SMS"

    return-object p0

    .line 5134
    :pswitch_137
    const-string p0, "IMS_REGISTRATION_STATE"

    return-object p0

    .line 5132
    :pswitch_13a
    const-string p0, "SET_INITIAL_ATTACH_APN"

    return-object p0

    .line 5130
    :pswitch_13d
    const-string p0, "SET_CELL_INFO_LIST_RATE"

    return-object p0

    .line 5128
    :pswitch_140
    const-string p0, "GET_CELL_INFO_LIST"

    return-object p0

    .line 5126
    :pswitch_143
    const-string p0, "VOICE_RADIO_TECH"

    return-object p0

    .line 5124
    :pswitch_146
    const-string p0, "STK_SEND_ENVELOPE_WITH_STATUS"

    return-object p0

    .line 5122
    :pswitch_149
    const-string p0, "ACKNOWLEDGE_INCOMING_GSM_SMS_WITH_PDU"

    return-object p0

    .line 5120
    :pswitch_14c
    const-string p0, "ISIM_AUTHENTICATION"

    return-object p0

    .line 5118
    :pswitch_14f
    const-string p0, "CDMA_GET_SUBSCRIPTION_SOURCE"

    return-object p0

    .line 5116
    :pswitch_152
    const-string p0, "REPORT_STK_SERVICE_IS_RUNNING"

    return-object p0

    .line 5114
    :pswitch_155
    const-string p0, "REPORT_SMS_MEMORY_STATUS"

    return-object p0

    .line 5112
    :pswitch_158
    const-string p0, "SET_SMSC_ADDRESS"

    return-object p0

    .line 5110
    :pswitch_15b
    const-string p0, "GET_SMSC_ADDRESS"

    return-object p0

    .line 5108
    :pswitch_15e
    const-string p0, "EXIT_EMERGENCY_CALLBACK_MODE"

    return-object p0

    .line 5106
    :pswitch_161
    const-string p0, "DEVICE_IDENTITY"

    return-object p0

    .line 5104
    :pswitch_164
    const-string p0, "CDMA_DELETE_SMS_ON_RUIM"

    return-object p0

    .line 5102
    :pswitch_167
    const-string p0, "CDMA_WRITE_SMS_TO_RUIM"

    return-object p0

    .line 5100
    :pswitch_16a
    const-string p0, "CDMA_SUBSCRIPTION"

    return-object p0

    .line 5098
    :pswitch_16d
    const-string p0, "CDMA_BROADCAST_ACTIVATION"

    return-object p0

    .line 5096
    :pswitch_170
    const-string p0, "CDMA_SET_BROADCAST_CONFIG"

    return-object p0

    .line 5094
    :pswitch_173
    const-string p0, "CDMA_GET_BROADCAST_CONFIG"

    return-object p0

    .line 5092
    :pswitch_176
    const-string p0, "GSM_BROADCAST_ACTIVATION"

    return-object p0

    .line 5090
    :pswitch_179
    const-string p0, "GSM_SET_BROADCAST_CONFIG"

    return-object p0

    .line 5088
    :pswitch_17c
    const-string p0, "GSM_GET_BROADCAST_CONFIG"

    return-object p0

    .line 5086
    :pswitch_17f
    const-string p0, "CDMA_SMS_ACKNOWLEDGE"

    return-object p0

    .line 5084
    :pswitch_182
    const-string p0, "CDMA_SEND_SMS"

    return-object p0

    .line 5082
    :pswitch_185
    const-string p0, "CDMA_VALIDATE_AND_WRITE_AKEY"

    return-object p0

    .line 5080
    :pswitch_188
    const-string p0, "CDMA_BURST_DTMF"

    return-object p0

    .line 5078
    :pswitch_18b
    const-string p0, "CDMA_FLASH"

    return-object p0

    .line 5076
    :pswitch_18e
    const-string p0, "CDMA_QUERY_PREFERRED_VOICE_PRIVACY_MODE"

    return-object p0

    .line 5074
    :pswitch_191
    const-string p0, "CDMA_SET_PREFERRED_VOICE_PRIVACY_MODE"

    return-object p0

    .line 5072
    :pswitch_194
    const-string p0, "QUERY_TTY_MODE"

    return-object p0

    .line 5070
    :pswitch_197
    const-string p0, "SET_TTY_MODE"

    return-object p0

    .line 5068
    :pswitch_19a
    const-string p0, "CDMA_QUERY_ROAMING_PREFERENCE"

    return-object p0

    .line 5066
    :pswitch_19d
    const-string p0, "CDMA_SET_ROAMING_PREFERENCE"

    return-object p0

    .line 5064
    :pswitch_1a0
    const-string p0, "CDMA_SET_SUBSCRIPTION_SOURCE"

    return-object p0

    .line 5062
    :pswitch_1a3
    const-string p0, "SET_LOCATION_UPDATES"

    return-object p0

    .line 5060
    :pswitch_1a6
    const-string p0, "GET_NEIGHBORING_CELL_IDS"

    return-object p0

    .line 5058
    :pswitch_1a9
    const-string p0, "GET_PREFERRED_NETWORK_TYPE"

    return-object p0

    .line 5056
    :pswitch_1ac
    const-string p0, "SET_PREFERRED_NETWORK_TYPE"

    return-object p0

    .line 5054
    :pswitch_1af
    const-string p0, "EXPLICIT_CALL_TRANSFER"

    return-object p0

    .line 5052
    :pswitch_1b2
    const-string p0, "STK_HANDLE_CALL_SETUP_REQUESTED_FROM_SIM"

    return-object p0

    .line 5050
    :pswitch_1b5
    const-string p0, "STK_SEND_TERMINAL_RESPONSE"

    return-object p0

    .line 5048
    :pswitch_1b8
    const-string p0, "STK_SEND_ENVELOPE_COMMAND"

    return-object p0

    .line 5046
    :pswitch_1bb
    const-string p0, "STK_SET_PROFILE"

    return-object p0

    .line 5044
    :pswitch_1be
    const-string p0, "STK_GET_PROFILE"

    return-object p0

    .line 5042
    :pswitch_1c1
    const-string p0, "QUERY_AVAILABLE_BAND_MODE"

    return-object p0

    .line 5040
    :pswitch_1c4
    const-string p0, "SET_BAND_MODE"

    return-object p0

    .line 5038
    :pswitch_1c7
    const-string p0, "DELETE_SMS_ON_SIM"

    return-object p0

    .line 5036
    :pswitch_1ca
    const-string p0, "WRITE_SMS_TO_SIM"

    return-object p0

    .line 5034
    :pswitch_1cd
    const-string p0, "SET_SUPP_SVC_NOTIFICATION"

    return-object p0

    .line 5032
    :pswitch_1d0
    const-string p0, "SCREEN_STATE"

    return-object p0

    .line 5030
    :pswitch_1d3
    const-string p0, "OEM_HOOK_STRINGS"

    return-object p0

    .line 5028
    :pswitch_1d6
    const-string p0, "OEM_HOOK_RAW"

    return-object p0

    .line 5026
    :pswitch_1d9
    const-string p0, "RESET_RADIO"

    return-object p0

    .line 5024
    :pswitch_1dc
    const-string p0, "DATA_CALL_LIST"

    return-object p0

    .line 5022
    :pswitch_1df
    const-string p0, "LAST_DATA_CALL_FAIL_CAUSE"

    return-object p0

    .line 5020
    :pswitch_1e2
    const-string p0, "QUERY_CLIP"

    return-object p0

    .line 5018
    :pswitch_1e5
    const-string p0, "GET_MUTE"

    return-object p0

    .line 5016
    :pswitch_1e8
    const-string p0, "SET_MUTE"

    return-object p0

    .line 5014
    :pswitch_1eb
    const-string p0, "SEPARATE_CONNECTION"

    return-object p0

    .line 5012
    :pswitch_1ee
    const-string p0, "BASEBAND_VERSION"

    return-object p0

    .line 5010
    :pswitch_1f1
    const-string p0, "DTMF_STOP"

    return-object p0

    .line 5008
    :pswitch_1f4
    const-string p0, "DTMF_START"

    return-object p0

    .line 5006
    :pswitch_1f7
    const-string p0, "QUERY_AVAILABLE_NETWORKS "

    return-object p0

    .line 5004
    :pswitch_1fa
    const-string p0, "SET_NETWORK_SELECTION_MANUAL"

    return-object p0

    .line 5002
    :pswitch_1fd
    const-string p0, "SET_NETWORK_SELECTION_AUTOMATIC"

    return-object p0

    .line 5000
    :pswitch_200
    const-string p0, "QUERY_NETWORK_SELECTION_MODE"

    return-object p0

    .line 4998
    :pswitch_203
    const-string p0, "CHANGE_BARRING_PASSWORD"

    return-object p0

    .line 4996
    :pswitch_206
    const-string p0, "SET_FACILITY_LOCK"

    return-object p0

    .line 4994
    :pswitch_209
    const-string p0, "QUERY_FACILITY_LOCK"

    return-object p0

    .line 4992
    :pswitch_20c
    const-string p0, "DEACTIVATE_DATA_CALL"

    return-object p0

    .line 4990
    :pswitch_20f
    const-string p0, "ANSWER"

    return-object p0

    .line 4988
    :pswitch_212
    const-string p0, "GET_IMEISV"

    return-object p0

    .line 4986
    :pswitch_215
    const-string p0, "GET_IMEI"

    return-object p0

    .line 4984
    :pswitch_218
    const-string p0, "SMS_ACKNOWLEDGE"

    return-object p0

    .line 4982
    :pswitch_21b
    const-string p0, "SET_CALL_WAITING"

    return-object p0

    .line 4980
    :pswitch_21e
    const-string p0, "QUERY_CALL_WAITING"

    return-object p0

    .line 4978
    :pswitch_221
    const-string p0, "SET_CALL_FORWARD"

    return-object p0

    .line 4976
    :pswitch_224
    const-string p0, "QUERY_CALL_FORWARD_STATUS"

    return-object p0

    .line 4974
    :pswitch_227
    const-string p0, "SET_CLIR"

    return-object p0

    .line 4972
    :pswitch_22a
    const-string p0, "GET_CLIR"

    return-object p0

    .line 4970
    :pswitch_22d
    const-string p0, "CANCEL_USSD"

    return-object p0

    .line 4968
    :pswitch_230
    const-string p0, "SEND_USSD"

    return-object p0

    .line 4966
    :pswitch_233
    const-string p0, "SIM_IO"

    return-object p0

    .line 4964
    :pswitch_236
    const-string p0, "SETUP_DATA_CALL"

    return-object p0

    .line 4962
    :pswitch_239
    const-string p0, "SEND_SMS_EXPECT_MORE"

    return-object p0

    .line 4960
    :pswitch_23c
    const-string p0, "SEND_SMS"

    return-object p0

    .line 4958
    :pswitch_23f
    const-string p0, "DTMF"

    return-object p0

    .line 4956
    :pswitch_242
    const-string p0, "RADIO_POWER"

    return-object p0

    .line 4954
    :pswitch_245
    const-string p0, "OPERATOR"

    return-object p0

    .line 4952
    :pswitch_248
    const-string p0, "DATA_REGISTRATION_STATE"

    return-object p0

    .line 4950
    :pswitch_24b
    const-string p0, "VOICE_REGISTRATION_STATE"

    return-object p0

    .line 4948
    :pswitch_24e
    const-string p0, "SIGNAL_STRENGTH"

    return-object p0

    .line 4946
    :pswitch_251
    const-string p0, "LAST_CALL_FAIL_CAUSE"

    return-object p0

    .line 4944
    :pswitch_254
    const-string p0, "UDUB"

    return-object p0

    .line 4942
    :pswitch_257
    const-string p0, "CONFERENCE"

    return-object p0

    .line 4940
    :pswitch_25a
    const-string p0, "REQUEST_SWITCH_WAITING_OR_HOLDING_AND_ACTIVE"

    return-object p0

    .line 4938
    :pswitch_25d
    const-string p0, "HANGUP_FOREGROUND_RESUME_BACKGROUND"

    return-object p0

    .line 4936
    :pswitch_260
    const-string p0, "HANGUP_WAITING_OR_BACKGROUND"

    return-object p0

    .line 4934
    :pswitch_263
    const-string p0, "HANGUP"

    return-object p0

    .line 4932
    :pswitch_266
    const-string p0, "GET_IMSI"

    return-object p0

    .line 4930
    :pswitch_269
    const-string p0, "DIAL"

    return-object p0

    .line 4928
    :pswitch_26c
    const-string p0, "GET_CURRENT_CALLS"

    return-object p0

    .line 4926
    :pswitch_26f
    const-string p0, "ENTER_NETWORK_DEPERSONALIZATION"

    return-object p0

    .line 4924
    :pswitch_272
    const-string p0, "CHANGE_SIM_PIN2"

    return-object p0

    .line 4922
    :pswitch_275
    const-string p0, "CHANGE_SIM_PIN"

    return-object p0

    .line 4920
    :pswitch_278
    const-string p0, "ENTER_SIM_PUK2"

    return-object p0

    .line 4918
    :pswitch_27b
    const-string p0, "ENTER_SIM_PIN2"

    return-object p0

    .line 4916
    :pswitch_27e
    const-string p0, "ENTER_SIM_PUK"

    return-object p0

    .line 4914
    :pswitch_281
    const-string p0, "ENTER_SIM_PIN"

    return-object p0

    .line 4912
    :pswitch_284
    const-string p0, "GET_SIM_STATUS"

    return-object p0

    nop

    :pswitch_data_288
    .packed-switch 0x1
        :pswitch_284
        :pswitch_281
        :pswitch_27e
        :pswitch_27b
        :pswitch_278
        :pswitch_275
        :pswitch_272
        :pswitch_26f
        :pswitch_26c
        :pswitch_269
        :pswitch_266
        :pswitch_263
        :pswitch_260
        :pswitch_25d
        :pswitch_25a
        :pswitch_257
        :pswitch_254
        :pswitch_251
        :pswitch_24e
        :pswitch_24b
        :pswitch_248
        :pswitch_245
        :pswitch_242
        :pswitch_23f
        :pswitch_23c
        :pswitch_239
        :pswitch_236
        :pswitch_233
        :pswitch_230
        :pswitch_22d
        :pswitch_22a
        :pswitch_227
        :pswitch_224
        :pswitch_221
        :pswitch_21e
        :pswitch_21b
        :pswitch_218
        :pswitch_215
        :pswitch_212
        :pswitch_20f
        :pswitch_20c
        :pswitch_209
        :pswitch_206
        :pswitch_203
        :pswitch_200
        :pswitch_1fd
        :pswitch_1fa
        :pswitch_1f7
        :pswitch_1f4
        :pswitch_1f1
        :pswitch_1ee
        :pswitch_1eb
        :pswitch_1e8
        :pswitch_1e5
        :pswitch_1e2
        :pswitch_1df
        :pswitch_1dc
        :pswitch_1d9
        :pswitch_1d6
        :pswitch_1d3
        :pswitch_1d0
        :pswitch_1cd
        :pswitch_1ca
        :pswitch_1c7
        :pswitch_1c4
        :pswitch_1c1
        :pswitch_1be
        :pswitch_1bb
        :pswitch_1b8
        :pswitch_1b5
        :pswitch_1b2
        :pswitch_1af
        :pswitch_1ac
        :pswitch_1a9
        :pswitch_1a6
        :pswitch_1a3
        :pswitch_1a0
        :pswitch_19d
        :pswitch_19a
        :pswitch_197
        :pswitch_194
        :pswitch_191
        :pswitch_18e
        :pswitch_18b
        :pswitch_188
        :pswitch_185
        :pswitch_182
        :pswitch_17f
        :pswitch_17c
        :pswitch_179
        :pswitch_176
        :pswitch_173
        :pswitch_170
        :pswitch_16d
        :pswitch_16a
        :pswitch_167
        :pswitch_164
        :pswitch_161
        :pswitch_15e
        :pswitch_15b
        :pswitch_158
        :pswitch_155
        :pswitch_152
        :pswitch_14f
        :pswitch_14c
        :pswitch_149
        :pswitch_146
        :pswitch_143
        :pswitch_140
        :pswitch_13d
        :pswitch_13a
        :pswitch_137
        :pswitch_134
        :pswitch_131
        :pswitch_12e
        :pswitch_12b
        :pswitch_128
        :pswitch_125
        :pswitch_122
        :pswitch_11f
        :pswitch_11c
        :pswitch_119
        :pswitch_116
        :pswitch_113
        :pswitch_110
        :pswitch_10d
        :pswitch_10a
        :pswitch_107
        :pswitch_104
        :pswitch_101
        :pswitch_fe
        :pswitch_fb
        :pswitch_f8
        :pswitch_f5
        :pswitch_f2
        :pswitch_ef
        :pswitch_ec
        :pswitch_e9
        :pswitch_e6
        :pswitch_e3
        :pswitch_e0
        :pswitch_dd
        :pswitch_da
        :pswitch_d7
        :pswitch_d4
        :pswitch_d1
        :pswitch_ce
        :pswitch_cb
        :pswitch_c8
        :pswitch_c5
        :pswitch_c2
        :pswitch_bf
    .end packed-switch

    :pswitch_data_3bc
    .packed-switch 0xc8
        :pswitch_bc
        :pswitch_b9
        :pswitch_b6
        :pswitch_b3
        :pswitch_b0
        :pswitch_ad
        :pswitch_aa
        :pswitch_a7
        :pswitch_a4
        :pswitch_a1
        :pswitch_9e
        :pswitch_9b
        :pswitch_98
        :pswitch_95
        :pswitch_92
        :pswitch_8f
        :pswitch_8c
        :pswitch_89
        :pswitch_86
        :pswitch_83
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method

.method public static blacklist responseToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_f0

    packed-switch p0, :pswitch_data_15a

    packed-switch p0, :pswitch_data_16a

    .line 5476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<unknown response "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5474
    :pswitch_20
    const-string p0, "UNSOL_SIMULTANEOUS_CALLING_SUPPORT_CHANGED"

    return-object p0

    .line 5472
    :pswitch_23
    const-string p0, "UNSOL_IMEI_MAPPING_CHANGED"

    return-object p0

    .line 5468
    :pswitch_26
    const-string p0, "UNSOL_NOTIFY_ANBR"

    return-object p0

    .line 5466
    :pswitch_29
    const-string p0, "UNSOL_CONNECTION_SETUP_FAILURE"

    return-object p0

    .line 5470
    :pswitch_2c
    const-string p0, "UNSOL_TRIGGER_IMS_DEREGISTRATION"

    return-object p0

    .line 5464
    :pswitch_2f
    const-string p0, "UNSOL_EMERGENCY_NETWORK_SCAN_RESULT"

    return-object p0

    .line 5462
    :pswitch_32
    const-string p0, "UNSOL_BARRING_INFO_CHANGED"

    return-object p0

    .line 5460
    :pswitch_35
    const-string p0, "UNSOL_REGISTRATION_FAILED"

    return-object p0

    .line 5458
    :pswitch_38
    const-string p0, "UNSOL_UICC_APPLICATIONS_ENABLEMENT_CHANGED"

    return-object p0

    .line 5456
    :pswitch_3b
    const-string p0, "UNSOL_EMERGENCY_NUMBER_LIST"

    return-object p0

    .line 5454
    :pswitch_3e
    const-string p0, "UNSOL_PHYSICAL_CHANNEL_CONFIG"

    return-object p0

    .line 5452
    :pswitch_41
    const-string p0, "UNSOL_ICC_SLOT_STATUS"

    return-object p0

    .line 5449
    :pswitch_44
    const-string p0, "UNSOL_SECURITY_ALGORITHMS_UPDATED"

    return-object p0

    .line 5447
    :pswitch_47
    const-string p0, "UNSOL_CELLULAR_IDENTIFIER_DISCLOSED"

    return-object p0

    .line 5445
    :pswitch_4a
    const-string p0, "UNSOL_SLICING_CONFIG_CHANGED"

    return-object p0

    .line 5443
    :pswitch_4d
    const-string p0, "UNSOL_RESPONSE_SIM_PHONEBOOK_RECORDS_RECEIVED"

    return-object p0

    .line 5441
    :pswitch_50
    const-string p0, "UNSOL_RESPONSE_SIM_PHONEBOOK_CHANGED"

    return-object p0

    .line 5439
    :pswitch_53
    const-string p0, "UNSOL_UNTHROTTLE_APN"

    return-object p0

    .line 5437
    :pswitch_56
    const-string p0, "UNSOL_KEEPALIVE_STATUS"

    return-object p0

    .line 5435
    :pswitch_59
    const-string p0, "UNSOL_NETWORK_SCAN_RESULT"

    return-object p0

    .line 5433
    :pswitch_5c
    const-string p0, "UNSOL_CARRIER_INFO_IMSI_ENCRYPTION"

    return-object p0

    .line 5431
    :pswitch_5f
    const-string p0, "UNSOL_MODEM_RESTART"

    return-object p0

    .line 5429
    :pswitch_62
    const-string p0, "UNSOL_PCO_DATA"

    return-object p0

    .line 5427
    :pswitch_65
    const-string p0, "UNSOL_LCE_INFO_RECV"

    return-object p0

    .line 5425
    :pswitch_68
    const-string p0, "UNSOL_STK_CC_ALPHA_NOTIFY"

    return-object p0

    .line 5423
    :pswitch_6b
    const-string p0, "UNSOL_ON_SS"

    return-object p0

    .line 5421
    :pswitch_6e
    const-string p0, "UNSOL_RADIO_CAPABILITY"

    return-object p0

    .line 5419
    :pswitch_71
    const-string p0, "UNSOL_DC_RT_INFO_CHANGED"

    return-object p0

    .line 5417
    :pswitch_74
    const-string p0, "UNSOL_HARDWARE_CONFIG_CHANGED"

    return-object p0

    .line 5415
    :pswitch_77
    const-string p0, "UNSOL_SRVCC_STATE_NOTIFY"

    return-object p0

    .line 5413
    :pswitch_7a
    const-string p0, "UNSOL_UICC_SUBSCRIPTION_STATUS_CHANGED"

    return-object p0

    .line 5411
    :pswitch_7d
    const-string p0, "UNSOL_RESPONSE_IMS_NETWORK_STATE_CHANGED"

    return-object p0

    .line 5409
    :pswitch_80
    const-string p0, "UNSOL_CELL_INFO_LIST"

    return-object p0

    .line 5407
    :pswitch_83
    const-string p0, "UNSOL_VOICE_RADIO_TECH_CHANGED"

    return-object p0

    .line 5405
    :pswitch_86
    const-string p0, "UNSOL_RIL_CONNECTED"

    return-object p0

    .line 5403
    :pswitch_89
    const-string p0, "UNSOL_EXIT_EMERGENCY_CALLBACK_MODE"

    return-object p0

    .line 5401
    :pswitch_8c
    const-string p0, "UNSOL_CDMA_PRL_CHANGED"

    return-object p0

    .line 5399
    :pswitch_8f
    const-string p0, "UNSOL_CDMA_SUBSCRIPTION_SOURCE_CHANGED"

    return-object p0

    .line 5397
    :pswitch_92
    const-string p0, "UNSOL_RESEND_INCALL_MUTE"

    return-object p0

    .line 5395
    :pswitch_95
    const-string p0, "UNSOL_RINGBACK_TONE"

    return-object p0

    .line 5393
    :pswitch_98
    const-string p0, "UNSOL_OEM_HOOK_RAW"

    return-object p0

    .line 5391
    :pswitch_9b
    const-string p0, "UNSOL_CDMA_INFO_REC"

    return-object p0

    .line 5389
    :pswitch_9e
    const-string p0, "UNSOL_CDMA_OTA_PROVISION_STATUS"

    return-object p0

    .line 5387
    :pswitch_a1
    const-string p0, "UNSOL_CDMA_CALL_WAITING"

    return-object p0

    .line 5385
    :pswitch_a4
    const-string p0, "UNSOL_ENTER_EMERGENCY_CALLBACK_MODE"

    return-object p0

    .line 5383
    :pswitch_a7
    const-string p0, "UNSOL_RESTRICTED_STATE_CHANGED"

    return-object p0

    .line 5381
    :pswitch_aa
    const-string p0, "UNSOL_CDMA_RUIM_SMS_STORAGE_FULL"

    return-object p0

    .line 5379
    :pswitch_ad
    const-string p0, "UNSOL_RESPONSE_NEW_BROADCAST_SMS"

    return-object p0

    .line 5377
    :pswitch_b0
    const-string p0, "UNSOL_RESPONSE_CDMA_NEW_SMS"

    return-object p0

    .line 5375
    :pswitch_b3
    const-string p0, "UNSOL_RESPONSE_SIM_STATUS_CHANGED"

    return-object p0

    .line 5373
    :pswitch_b6
    const-string p0, "UNSOL_CALL_RING"

    return-object p0

    .line 5371
    :pswitch_b9
    const-string p0, "UNSOL_SIM_REFRESH"

    return-object p0

    .line 5369
    :pswitch_bc
    const-string p0, "UNSOL_SIM_SMS_STORAGE_FULL"

    return-object p0

    .line 5367
    :pswitch_bf
    const-string p0, "UNSOL_STK_CALL_SETUP"

    return-object p0

    .line 5365
    :pswitch_c2
    const-string p0, "UNSOL_STK_EVENT_NOTIFY"

    return-object p0

    .line 5363
    :pswitch_c5
    const-string p0, "UNSOL_STK_PROACTIVE_COMMAND"

    return-object p0

    .line 5361
    :pswitch_c8
    const-string p0, "UNSOL_STK_SESSION_END"

    return-object p0

    .line 5359
    :pswitch_cb
    const-string p0, "UNSOL_SUPP_SVC_NOTIFICATION"

    return-object p0

    .line 5357
    :pswitch_ce
    const-string p0, "UNSOL_DATA_CALL_LIST_CHANGED"

    return-object p0

    .line 5355
    :pswitch_d1
    const-string p0, "UNSOL_SIGNAL_STRENGTH"

    return-object p0

    .line 5353
    :pswitch_d4
    const-string p0, "UNSOL_NITZ_TIME_RECEIVED"

    return-object p0

    .line 5351
    :pswitch_d7
    const-string p0, "UNSOL_ON_USSD_REQUEST"

    return-object p0

    .line 5349
    :pswitch_da
    const-string p0, "UNSOL_ON_USSD"

    return-object p0

    .line 5347
    :pswitch_dd
    const-string p0, "UNSOL_RESPONSE_NEW_SMS_ON_SIM"

    return-object p0

    .line 5345
    :pswitch_e0
    const-string p0, "UNSOL_RESPONSE_NEW_SMS_STATUS_REPORT"

    return-object p0

    .line 5343
    :pswitch_e3
    const-string p0, "UNSOL_RESPONSE_NEW_SMS"

    return-object p0

    .line 5341
    :pswitch_e6
    const-string p0, "UNSOL_RESPONSE_NETWORK_STATE_CHANGED"

    return-object p0

    .line 5339
    :pswitch_e9
    const-string p0, "UNSOL_RESPONSE_CALL_STATE_CHANGED"

    return-object p0

    .line 5337
    :pswitch_ec
    const-string p0, "UNSOL_RESPONSE_RADIO_STATE_CHANGED"

    return-object p0

    nop

    :pswitch_data_f0
    .packed-switch 0x3e8
        :pswitch_ec
        :pswitch_e9
        :pswitch_e6
        :pswitch_e3
        :pswitch_e0
        :pswitch_dd
        :pswitch_da
        :pswitch_d7
        :pswitch_d4
        :pswitch_d1
        :pswitch_ce
        :pswitch_cb
        :pswitch_c8
        :pswitch_c5
        :pswitch_c2
        :pswitch_bf
        :pswitch_bc
        :pswitch_b9
        :pswitch_b6
        :pswitch_b3
        :pswitch_b0
        :pswitch_ad
        :pswitch_aa
        :pswitch_a7
        :pswitch_a4
        :pswitch_a1
        :pswitch_9e
        :pswitch_9b
        :pswitch_98
        :pswitch_95
        :pswitch_92
        :pswitch_8f
        :pswitch_8c
        :pswitch_89
        :pswitch_86
        :pswitch_83
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
    .end packed-switch

    :pswitch_data_15a
    .packed-switch 0x41c
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
    .end packed-switch

    :pswitch_data_16a
    .packed-switch 0x44c
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
    .end packed-switch
.end method

.method public static blacklist scanTypeToString(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_c

    const/4 v0, 0x2

    if-eq p0, v0, :cond_9

    .line 4724
    const-string p0, "NO_PREFERENCE"

    return-object p0

    .line 4722
    :cond_9
    const-string p0, "FULL_SERVICE"

    return-object p0

    .line 4720
    :cond_c
    const-string p0, "LIMITED_SERVICE"

    return-object p0
.end method

.method public static blacklist setupDataReasonToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_25

    const/4 v0, 0x1

    if-eq p0, v0, :cond_22

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1f

    .line 4879
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4875
    :cond_1f
    const-string p0, "HANDOVER"

    return-object p0

    .line 4873
    :cond_22
    const-string p0, "NORMAL"

    return-object p0

    .line 4877
    :cond_25
    const-string p0, "UNKNOWN"

    return-object p0
.end method
