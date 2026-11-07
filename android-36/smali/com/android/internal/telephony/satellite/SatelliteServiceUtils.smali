.class public Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;
.super Ljava/lang/Object;
.source "SatelliteServiceUtils.java"


# direct methods
.method public static synthetic blacklist $r8$lambda$dLQDCKedVySUu-LiiN3eXocM7Is(Landroid/telephony/satellite/SystemSelectionSpecifier;)Landroid/telephony/satellite/stub/SystemSelectionSpecifier;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->convertSystemSelectionSpecifierToHALFormat(Landroid/telephony/satellite/SystemSelectionSpecifier;)Landroid/telephony/satellite/stub/SystemSelectionSpecifier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$vzlTz5V5RB_3_vyBfEikAXaULQk(Landroid/telephony/SubscriptionInfo;)Z
    .registers 1

    .line 390
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->isOnlyNonTerrestrialNetwork()Z

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist carrierRoamingNtnConnectTypeToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_1f

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1c

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 88
    :cond_1c
    const-string p0, "MANUAL"

    return-object p0

    .line 87
    :cond_1f
    const-string p0, "AUTOMATIC"

    return-object p0
.end method

.method private static blacklist convertCommandExceptionErrorToSatelliteError(Lcom/android/internal/telephony/CommandException$Error;)I
    .registers 3

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "convertCommandExceptionErrorToSatelliteError: commandExceptionError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 337
    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->logd(Ljava/lang/String;)V

    .line 340
    sget-object v0, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils$1;->$SwitchMap$com$android$internal$telephony$CommandException$Error:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_30

    const/4 p0, 0x1

    return p0

    :pswitch_25
    const/4 p0, 0x4

    return p0

    :pswitch_27
    const/4 p0, 0x7

    return p0

    :pswitch_29
    const/16 p0, 0xa

    return p0

    :pswitch_2c
    const/16 p0, 0xb

    return p0

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_29
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_25
    .end packed-switch
.end method

.method private static blacklist convertSystemSelectionSpecifierToHALFormat(Landroid/telephony/satellite/SystemSelectionSpecifier;)Landroid/telephony/satellite/stub/SystemSelectionSpecifier;
    .registers 10

    .line 614
    new-instance v0, Landroid/telephony/satellite/stub/SystemSelectionSpecifier;

    invoke-direct {v0}, Landroid/telephony/satellite/stub/SystemSelectionSpecifier;-><init>()V

    .line 617
    invoke-virtual {p0}, Landroid/telephony/satellite/SystemSelectionSpecifier;->getMccMnc()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/telephony/satellite/stub/SystemSelectionSpecifier;->mMccMnc:Ljava/lang/String;

    .line 618
    invoke-virtual {p0}, Landroid/telephony/satellite/SystemSelectionSpecifier;->getBands()[I

    move-result-object v1

    iput-object v1, v0, Landroid/telephony/satellite/stub/SystemSelectionSpecifier;->mBands:[I

    .line 619
    invoke-virtual {p0}, Landroid/telephony/satellite/SystemSelectionSpecifier;->getEarfcns()[I

    move-result-object v1

    iput-object v1, v0, Landroid/telephony/satellite/stub/SystemSelectionSpecifier;->mEarfcs:[I

    .line 620
    invoke-virtual {p0}, Landroid/telephony/satellite/SystemSelectionSpecifier;->getSatelliteInfos()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Landroid/telephony/satellite/SatelliteInfo;

    .line 621
    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/telephony/satellite/SatelliteInfo;

    .line 622
    array-length v3, v1

    new-array v3, v3, [Landroid/telephony/satellite/stub/SatelliteInfo;

    move v4, v2

    .line 624
    :goto_28
    array-length v5, v1

    if-ge v4, v5, :cond_ea

    .line 625
    new-instance v5, Landroid/telephony/satellite/stub/SatelliteInfo;

    invoke-direct {v5}, Landroid/telephony/satellite/stub/SatelliteInfo;-><init>()V

    aput-object v5, v3, v4

    .line 627
    new-instance v6, Landroid/telephony/satellite/stub/UUID;

    invoke-direct {v6}, Landroid/telephony/satellite/stub/UUID;-><init>()V

    iput-object v6, v5, Landroid/telephony/satellite/stub/SatelliteInfo;->id:Landroid/telephony/satellite/stub/UUID;

    .line 628
    aget-object v5, v3, v4

    iget-object v5, v5, Landroid/telephony/satellite/stub/SatelliteInfo;->id:Landroid/telephony/satellite/stub/UUID;

    aget-object v6, v1, v4

    .line 629
    invoke-virtual {v6}, Landroid/telephony/satellite/SatelliteInfo;->getSatelliteId()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v6

    iput-wide v6, v5, Landroid/telephony/satellite/stub/UUID;->mostSigBits:J

    .line 630
    aget-object v5, v3, v4

    iget-object v5, v5, Landroid/telephony/satellite/stub/SatelliteInfo;->id:Landroid/telephony/satellite/stub/UUID;

    aget-object v6, v1, v4

    .line 631
    invoke-virtual {v6}, Landroid/telephony/satellite/SatelliteInfo;->getSatelliteId()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v6

    iput-wide v6, v5, Landroid/telephony/satellite/stub/UUID;->leastSigBits:J

    .line 633
    aget-object v5, v3, v4

    new-instance v6, Landroid/telephony/satellite/stub/SatellitePosition;

    invoke-direct {v6}, Landroid/telephony/satellite/stub/SatellitePosition;-><init>()V

    iput-object v6, v5, Landroid/telephony/satellite/stub/SatelliteInfo;->position:Landroid/telephony/satellite/stub/SatellitePosition;

    .line 635
    aget-object v5, v3, v4

    iget-object v5, v5, Landroid/telephony/satellite/stub/SatelliteInfo;->position:Landroid/telephony/satellite/stub/SatellitePosition;

    aget-object v6, v1, v4

    .line 636
    invoke-virtual {v6}, Landroid/telephony/satellite/SatelliteInfo;->getSatellitePosition()Landroid/telephony/satellite/SatellitePosition;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/satellite/SatellitePosition;->getLongitudeDegrees()D

    move-result-wide v6

    iput-wide v6, v5, Landroid/telephony/satellite/stub/SatellitePosition;->longitudeDegree:D

    .line 637
    aget-object v5, v3, v4

    iget-object v5, v5, Landroid/telephony/satellite/stub/SatelliteInfo;->position:Landroid/telephony/satellite/stub/SatellitePosition;

    aget-object v6, v1, v4

    .line 638
    invoke-virtual {v6}, Landroid/telephony/satellite/SatelliteInfo;->getSatellitePosition()Landroid/telephony/satellite/SatellitePosition;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/satellite/SatellitePosition;->getAltitudeKm()D

    move-result-wide v6

    iput-wide v6, v5, Landroid/telephony/satellite/stub/SatellitePosition;->altitudeKm:D

    .line 640
    aget-object v5, v3, v4

    aget-object v6, v1, v4

    invoke-virtual {v6}, Landroid/telephony/satellite/SatelliteInfo;->getBands()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v6

    .line 641
    invoke-interface {v6}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v6

    iput-object v6, v5, Landroid/telephony/satellite/stub/SatelliteInfo;->bands:[I

    .line 643
    aget-object v5, v1, v4

    invoke-virtual {v5}, Landroid/telephony/satellite/SatelliteInfo;->getEarfcnRanges()Ljava/util/List;

    move-result-object v5

    .line 644
    aget-object v6, v3, v4

    .line 645
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Landroid/telephony/satellite/stub/EarfcnRange;

    iput-object v7, v6, Landroid/telephony/satellite/stub/SatelliteInfo;->earfcnRanges:[Landroid/telephony/satellite/stub/EarfcnRange;

    move v6, v2

    .line 646
    :goto_ae
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_e6

    .line 647
    aget-object v7, v3, v4

    iget-object v7, v7, Landroid/telephony/satellite/stub/SatelliteInfo;->earfcnRanges:[Landroid/telephony/satellite/stub/EarfcnRange;

    new-instance v8, Landroid/telephony/satellite/stub/EarfcnRange;

    invoke-direct {v8}, Landroid/telephony/satellite/stub/EarfcnRange;-><init>()V

    aput-object v8, v7, v6

    .line 649
    aget-object v7, v3, v4

    iget-object v7, v7, Landroid/telephony/satellite/stub/SatelliteInfo;->earfcnRanges:[Landroid/telephony/satellite/stub/EarfcnRange;

    aget-object v7, v7, v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/satellite/EarfcnRange;

    .line 650
    invoke-virtual {v8}, Landroid/telephony/satellite/EarfcnRange;->getStartEarfcn()I

    move-result v8

    iput v8, v7, Landroid/telephony/satellite/stub/EarfcnRange;->startEarfcn:I

    .line 651
    aget-object v7, v3, v4

    iget-object v7, v7, Landroid/telephony/satellite/stub/SatelliteInfo;->earfcnRanges:[Landroid/telephony/satellite/stub/EarfcnRange;

    aget-object v7, v7, v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/satellite/EarfcnRange;

    .line 652
    invoke-virtual {v8}, Landroid/telephony/satellite/EarfcnRange;->getEndEarfcn()I

    move-result v8

    iput v8, v7, Landroid/telephony/satellite/stub/EarfcnRange;->endEarfcn:I

    add-int/lit8 v6, v6, 0x1

    goto :goto_ae

    :cond_e6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_28

    .line 655
    :cond_ea
    iput-object v3, v0, Landroid/telephony/satellite/stub/SystemSelectionSpecifier;->satelliteInfos:[Landroid/telephony/satellite/stub/SatelliteInfo;

    .line 656
    invoke-virtual {p0}, Landroid/telephony/satellite/SystemSelectionSpecifier;->getTagIds()[I

    move-result-object p0

    iput-object p0, v0, Landroid/telephony/satellite/stub/SystemSelectionSpecifier;->tagIds:[I

    return-object v0
.end method

.method public static blacklist fromNtnSignalStrength(Landroid/telephony/satellite/stub/NtnSignalStrength;)Landroid/telephony/satellite/NtnSignalStrength;
    .registers 2

    .line 254
    new-instance v0, Landroid/telephony/satellite/NtnSignalStrength;

    iget p0, p0, Landroid/telephony/satellite/stub/NtnSignalStrength;->signalStrengthLevel:I

    invoke-direct {v0, p0}, Landroid/telephony/satellite/NtnSignalStrength;-><init>(I)V

    return-object v0
.end method

.method public static blacklist fromPointingInfo(Landroid/telephony/satellite/stub/PointingInfo;)Landroid/telephony/satellite/PointingInfo;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 232
    :cond_4
    new-instance v0, Landroid/telephony/satellite/PointingInfo;

    iget v1, p0, Landroid/telephony/satellite/stub/PointingInfo;->satelliteAzimuth:F

    iget p0, p0, Landroid/telephony/satellite/stub/PointingInfo;->satelliteElevation:F

    invoke-direct {v0, v1, p0}, Landroid/telephony/satellite/PointingInfo;-><init>(FF)V

    return-object v0
.end method

.method public static blacklist fromSatelliteCapabilities(Landroid/telephony/satellite/stub/SatelliteCapabilities;)Landroid/telephony/satellite/SatelliteCapabilities;
    .registers 8

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 203
    :cond_4
    iget-object v0, p0, Landroid/telephony/satellite/stub/SatelliteCapabilities;->supportedRadioTechnologies:[I

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 204
    new-array v0, v1, [I

    .line 206
    :cond_b
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 207
    iget-object v3, p0, Landroid/telephony/satellite/stub/SatelliteCapabilities;->antennaPositionKeys:[I

    .line 208
    iget-object v4, p0, Landroid/telephony/satellite/stub/SatelliteCapabilities;->antennaPositionValues:[Landroid/telephony/satellite/AntennaPosition;

    if-eqz v3, :cond_2d

    if-eqz v4, :cond_2d

    .line 209
    array-length v5, v3

    array-length v6, v4

    if-ne v5, v6, :cond_2d

    .line 211
    :goto_1c
    array-length v5, v3

    if-ge v1, v5, :cond_2d

    .line 212
    aget v5, v3, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aget-object v6, v4, v1

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 216
    :cond_2d
    new-instance v1, Landroid/telephony/satellite/SatelliteCapabilities;

    .line 217
    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v3, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils$$ExternalSyntheticLambda0;-><init>()V

    .line 218
    invoke-interface {v0, v3}, Ljava/util/stream/IntStream;->map(Ljava/util/function/IntUnaryOperator;)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 219
    invoke-interface {v0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iget-boolean v3, p0, Landroid/telephony/satellite/stub/SatelliteCapabilities;->isPointingRequired:Z

    iget p0, p0, Landroid/telephony/satellite/stub/SatelliteCapabilities;->maxBytesPerOutgoingDatagram:I

    invoke-direct {v1, v0, v3, p0, v2}, Landroid/telephony/satellite/SatelliteCapabilities;-><init>(Ljava/util/Set;ZILjava/util/Map;)V

    return-object v1
.end method

.method public static blacklist fromSatelliteDatagram(Landroid/telephony/satellite/stub/SatelliteDatagram;)Landroid/telephony/satellite/SatelliteDatagram;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 243
    :cond_4
    iget-object p0, p0, Landroid/telephony/satellite/stub/SatelliteDatagram;->data:[B

    if-nez p0, :cond_b

    const/4 p0, 0x0

    new-array p0, p0, [B

    .line 244
    :cond_b
    new-instance v0, Landroid/telephony/satellite/SatelliteDatagram;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteDatagram;-><init>([B)V

    return-object v0
.end method

.method public static blacklist fromSatelliteError(I)I
    .registers 4

    const/4 v0, 0x3

    packed-switch p0, :pswitch_data_4a

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received invalid satellite service error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->loge(Ljava/lang/String;)V

    return v0

    :pswitch_19
    const/16 p0, 0x13

    return p0

    :pswitch_1c
    const/16 p0, 0x12

    return p0

    :pswitch_1f
    const/16 p0, 0x11

    return p0

    :pswitch_22
    const/16 p0, 0x10

    return p0

    :pswitch_25
    const/16 p0, 0xf

    return p0

    :pswitch_28
    const/16 p0, 0xe

    return p0

    :pswitch_2b
    const/16 p0, 0xd

    return p0

    :pswitch_2e
    const/16 p0, 0xc

    return p0

    :pswitch_31
    const/16 p0, 0xb

    return p0

    :pswitch_34
    const/16 p0, 0xa

    return p0

    :pswitch_37
    const/16 p0, 0x9

    return p0

    :pswitch_3a
    const/16 p0, 0x8

    return p0

    :pswitch_3d
    const/4 p0, 0x7

    return p0

    :pswitch_3f
    const/4 p0, 0x5

    return p0

    :pswitch_41
    const/4 p0, 0x4

    return p0

    :pswitch_43
    return v0

    :pswitch_44
    const/4 p0, 0x2

    return p0

    :pswitch_46
    const/4 p0, 0x1

    return p0

    :pswitch_48
    const/4 p0, 0x0

    return p0

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_48
        :pswitch_46
        :pswitch_44
        :pswitch_43
        :pswitch_41
        :pswitch_3f
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
    .end packed-switch
.end method

.method public static blacklist fromSatelliteModemState(I)I
    .registers 3

    packed-switch p0, :pswitch_data_2a

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received invalid modem state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->loge(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :pswitch_19
    const/4 p0, 0x7

    return p0

    :pswitch_1b
    const/4 p0, 0x6

    return p0

    :pswitch_1d
    const/4 p0, 0x5

    return p0

    :pswitch_1f
    const/4 p0, 0x4

    return p0

    :pswitch_21
    const/4 p0, 0x3

    return p0

    :pswitch_23
    const/4 p0, 0x2

    return p0

    :pswitch_25
    const/4 p0, 0x1

    return p0

    :pswitch_27
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_27
        :pswitch_25
        :pswitch_23
        :pswitch_21
        :pswitch_1f
        :pswitch_1d
        :pswitch_1b
        :pswitch_19
    .end packed-switch
.end method

.method public static blacklist fromSatelliteRadioTechnology(I)I
    .registers 3

    const/4 v0, 0x1

    if-eqz p0, :cond_25

    const/4 v1, 0x2

    if-eq p0, v0, :cond_24

    const/4 v0, 0x3

    if-eq p0, v1, :cond_23

    if-eq p0, v0, :cond_21

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received invalid radio technology: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_21
    const/4 p0, 0x4

    return p0

    :cond_23
    return v0

    :cond_24
    return v1

    :cond_25
    return v0
.end method

.method public static blacklist getMccMnc(Landroid/telephony/NetworkRegistrationInfo;)Ljava/lang/String;
    .registers 5

    .line 594
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_d

    .line 596
    const-string p0, "getMccMnc: cellIdentity is null"

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->logd(Ljava/lang/String;)V

    return-object v0

    .line 600
    :cond_d
    invoke-virtual {p0}, Landroid/telephony/CellIdentity;->getMccString()Ljava/lang/String;

    move-result-object v1

    .line 601
    invoke-virtual {p0}, Landroid/telephony/CellIdentity;->getMncString()Ljava/lang/String;

    move-result-object p0

    if-eqz v1, :cond_2a

    if-nez p0, :cond_1a

    goto :goto_2a

    .line 607
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 603
    :cond_2a
    :goto_2a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMccMnc: mcc or mnc is null. mcc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mnc="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->logd(Ljava/lang/String;)V

    return-object v0
.end method

.method public static blacklist getNtnOnlySubscriptionId(Landroid/content/Context;)I
    .registers 3

    .line 386
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v0

    .line 387
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 386
    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getAllSubInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 389
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils$$ExternalSyntheticLambda2;-><init>()V

    .line 390
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/satellite/SatelliteController$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/telephony/satellite/SatelliteController$$ExternalSyntheticLambda1;-><init>()V

    .line 391
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    .line 392
    invoke-interface {p0}, Ljava/util/stream/IntStream;->findFirst()Ljava/util/OptionalInt;

    move-result-object p0

    const/4 v0, -0x1

    .line 393
    invoke-virtual {p0, v0}, Ljava/util/OptionalInt;->orElse(I)I

    move-result p0

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNtnOnlySubscriptionId: subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->logd(Ljava/lang/String;)V

    return p0
.end method

.method public static blacklist getPersistentLogger(Landroid/content/Context;)Landroid/telephony/PersistentLogger;
    .registers 3

    .line 714
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111015f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 716
    new-instance v0, Landroid/telephony/PersistentLogger;

    invoke-static {p0}, Landroid/telephony/DropBoxManagerLoggerBackend;->getInstance(Landroid/content/Context;)Landroid/telephony/DropBoxManagerLoggerBackend;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/telephony/PersistentLogger;-><init>(Landroid/telephony/PersistentLoggerBackend;)V
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_16} :catch_17

    return-object v0

    :catch_17
    move-exception p0

    .line 719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPersistentLogger: RuntimeException ex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->loge(Ljava/lang/String;)V

    :cond_2c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist getPhone()Lcom/android/internal/telephony/Phone;
    .registers 1

    const/4 v0, 0x0

    .line 519
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getPhone(I)Lcom/android/internal/telephony/Phone;
    .registers 1

    .line 528
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getSatelliteError(Landroid/os/AsyncResult;Ljava/lang/String;)I
    .registers 5

    .line 316
    iget-object v0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    goto :goto_6d

    .line 320
    :cond_6
    instance-of v1, v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    if-eqz v1, :cond_2b

    .line 321
    check-cast v0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    invoke-virtual {v0}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;->getErrorCode()I

    move-result v0

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " SatelliteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->loge(Ljava/lang/String;)V

    :goto_29
    move p0, v0

    goto :goto_6d

    .line 323
    :cond_2b
    instance-of v1, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_53

    .line 324
    check-cast v0, Lcom/android/internal/telephony/CommandException;

    .line 325
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 324
    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->convertCommandExceptionErrorToSatelliteError(Lcom/android/internal/telephony/CommandException$Error;)I

    move-result v0

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " CommandException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->loge(Ljava/lang/String;)V

    goto :goto_29

    .line 328
    :cond_53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " unknown exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->loge(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 331
    :goto_6d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " error: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->logd(Ljava/lang/String;)V

    return p0
.end method

.method public static blacklist getValidSatelliteSubId(ILandroid/content/Context;)I
    .registers 6

    .line 363
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 365
    :try_start_4
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v2

    .line 366
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object p1

    .line 365
    invoke-virtual {v2, p0, v3, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->isActiveSubId(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_35

    if-eqz p1, :cond_1a

    .line 372
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :cond_1a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 374
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getValidSatelliteSubId: use DEFAULT_SUBSCRIPTION_ID for subId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->logd(Ljava/lang/String;)V

    const p0, 0x7fffffff

    return p0

    :catchall_35
    move-exception p0

    .line 372
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 373
    throw p0
.end method

.method public static blacklist isCellularAvailable()Z
    .registers 12

    .line 533
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_79

    aget-object v4, v0, v3

    .line 534
    invoke-interface {v4}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    if-eqz v5, :cond_76

    .line 536
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    .line 537
    invoke-virtual {v5, v7, v8}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v9

    if-eqz v9, :cond_25

    .line 540
    invoke-virtual {v9}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result v9

    if-eqz v9, :cond_25

    move v9, v8

    goto :goto_26

    :cond_25
    move v9, v2

    .line 541
    :goto_26
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isCellularAvailable: phoneId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " state="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " isEmergencyOnly="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " isCellularDataInService="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 541
    invoke-static {v10}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->logd(Ljava/lang/String;)V

    if-eqz v6, :cond_66

    if-eq v6, v7, :cond_66

    .line 546
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v6

    if-nez v6, :cond_66

    if-eqz v9, :cond_76

    .line 548
    :cond_66
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v4

    invoke-static {v4, v5}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->isSatellitePlmn(ILandroid/telephony/ServiceState;)Z

    move-result v4

    if-nez v4, :cond_76

    .line 549
    const-string v0, "isCellularAvailable true"

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->logd(Ljava/lang/String;)V

    return v8

    :cond_76
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 554
    :cond_79
    const-string v0, "isCellularAvailable false"

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->logd(Ljava/lang/String;)V

    return v2
.end method

.method public static blacklist isLastSosMessage(I)Z
    .registers 2

    .line 0
    const/4 v0, 0x4

    if-eq p0, v0, :cond_9

    const/4 v0, 0x5

    if-ne p0, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 p0, 0x0

    return p0

    :cond_9
    :goto_9
    const/4 p0, 0x1

    return p0
.end method

.method public static blacklist isNbIotNtn(I)Z
    .registers 3

    .line 726
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_11

    .line 728
    const-string p0, "isNbIotNtn(): phone is null"

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->logd(Ljava/lang/String;)V

    return v0

    .line 732
    :cond_11
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v1

    if-nez v1, :cond_1d

    .line 734
    const-string p0, "isNbIotNtn(): satelliteController is null"

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->logd(Ljava/lang/String;)V

    return v0

    .line 738
    :cond_1d
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteController;->isInCarrierRoamingNbIotNtn(Lcom/android/internal/telephony/Phone;)Z

    move-result p0

    return p0
.end method

.method public static blacklist isNtnOnlySubscriptionId(I)Z
    .registers 4

    .line 406
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 408
    const-string p0, "isNtnOnlySubscriptionId: subscriptionManagerService is null"

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->logd(Ljava/lang/String;)V

    return v1

    .line 412
    :cond_d
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-nez v0, :cond_28

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNtnOnlySubscriptionId: subInfo is null for subId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->logd(Ljava/lang/String;)V

    return v1

    .line 418
    :cond_28
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->isOnlyNonTerrestrialNetwork()Z

    move-result p0

    return p0
.end method

.method public static blacklist isSatellitePlmn(ILandroid/telephony/ServiceState;)Z
    .registers 10

    .line 560
    new-instance p0, Ljava/util/ArrayList;

    .line 561
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getAllPlmnSet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 562
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 563
    const-string p0, "isSatellitePlmn: satellitePlmnList is empty"

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->logd(Ljava/lang/String;)V

    return v1

    :cond_1a
    const/4 v0, 0x1

    .line 568
    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfoListForTransportType(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_23
    :goto_23
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_89

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/NetworkRegistrationInfo;

    .line 570
    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->getRegisteredPlmn()Ljava/lang/String;

    move-result-object v3

    .line 571
    invoke-static {v2}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->getMccMnc(Landroid/telephony/NetworkRegistrationInfo;)Ljava/lang/String;

    move-result-object v2

    .line 572
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 573
    const-string v2, "isSatellitePlmn: registeredPlmn and cell plmn are empty"

    invoke-static {v2}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->logd(Ljava/lang/String;)V

    goto :goto_23

    .line 577
    :cond_49
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v1

    :cond_4e
    if-ge v5, v4, :cond_23

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Ljava/lang/String;

    .line 578
    invoke-static {v6, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_64

    .line 579
    invoke-static {v6, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4e

    .line 580
    :cond_64
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "isSatellitePlmn: return true, satellitePlmn:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " registeredPlmn:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " mccmnc:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->logd(Ljava/lang/String;)V

    return v0

    .line 587
    :cond_89
    const-string p0, "isSatellitePlmn: return false"

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->logd(Ljava/lang/String;)V

    return v1
.end method

.method public static blacklist isSosMessage(I)Z
    .registers 3

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_c

    const/4 v1, 0x4

    if-eq p0, v1, :cond_c

    const/4 v1, 0x5

    if-ne p0, v1, :cond_a

    goto :goto_c

    :cond_a
    const/4 p0, 0x0

    return p0

    :cond_c
    :goto_c
    return v0
.end method

.method private static blacklist logd(Ljava/lang/String;)V
    .registers 2

    .line 742
    const-string v0, "SatelliteServiceUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 746
    const-string v0, "SatelliteServiceUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static blacklist mergeStrLists(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 466
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-eqz p0, :cond_a

    .line 468
    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_a
    if-eqz p1, :cond_f

    .line 472
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 475
    :cond_f
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist mergeStrLists(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 485
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 486
    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 487
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 488
    invoke-interface {v0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 489
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseRegionalSatelliteEarfcns(Landroid/os/PersistableBundle;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/PersistableBundle;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 686
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_75

    .line 687
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_75

    .line 692
    :cond_e
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_74

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 693
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 694
    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_2d
    if-ge v6, v5, :cond_3b

    aget v7, v4, v6

    .line 695
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2d

    .line 697
    :cond_3b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseRegionalSatelliteEarfcns: configId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", earfcns ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    invoke-interface {v3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/internal/telephony/SimultaneousCallingTracker$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/android/internal/telephony/SimultaneousCallingTracker$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    const-string v6, ","

    invoke-static {v6}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 697
    invoke-static {v4}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->logd(Ljava/lang/String;)V

    .line 699
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    :cond_74
    return-object v0

    .line 688
    :cond_75
    :goto_75
    const-string p0, "parseRegionalSatelliteEarfcns: earfcnsBundle is null or empty"

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->logd(Ljava/lang/String;)V

    return-object v0
.end method

.method public static blacklist parseSupportedSatelliteServices(Landroid/os/PersistableBundle;)Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/PersistableBundle;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 434
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_b5

    .line 435
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    goto/16 :goto_b5

    .line 439
    :cond_f
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 440
    invoke-static {v2}, Lcom/android/internal/telephony/util/TelephonyUtils;->isValidPlmn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9f

    .line 441
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 442
    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_34
    if-ge v6, v5, :cond_65

    aget v7, v4, v6

    .line 443
    invoke-static {v7}, Lcom/android/internal/telephony/util/TelephonyUtils;->isValidService(I)Z

    move-result v8

    if-eqz v8, :cond_46

    .line 444
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_62

    .line 446
    :cond_46
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseSupportedSatelliteServices: invalid service type="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " for plmn="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->loge(Ljava/lang/String;)V

    :goto_62
    add-int/lit8 v6, v6, 0x1

    goto :goto_34

    .line 450
    :cond_65
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseSupportedSatelliteServices: plmn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", supportedServicesSet="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    invoke-interface {v3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/internal/telephony/SimultaneousCallingTracker$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/android/internal/telephony/SimultaneousCallingTracker$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    const-string v6, ","

    .line 452
    invoke-static {v6}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v6

    .line 451
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 450
    invoke-static {v4}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->logd(Ljava/lang/String;)V

    .line 453
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_17

    .line 455
    :cond_9f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseSupportedSatelliteServices: invalid plmn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->loge(Ljava/lang/String;)V

    goto/16 :goto_17

    :cond_b5
    :goto_b5
    return-object v0
.end method

.method public static blacklist toSatelliteDatagram(Landroid/telephony/satellite/SatelliteDatagram;)Landroid/telephony/satellite/stub/SatelliteDatagram;
    .registers 2

    .line 264
    new-instance v0, Landroid/telephony/satellite/stub/SatelliteDatagram;

    invoke-direct {v0}, Landroid/telephony/satellite/stub/SatelliteDatagram;-><init>()V

    .line 266
    invoke-virtual {p0}, Landroid/telephony/satellite/SatelliteDatagram;->getSatelliteDatagram()[B

    move-result-object p0

    iput-object p0, v0, Landroid/telephony/satellite/stub/SatelliteDatagram;->data:[B

    return-object v0
.end method

.method public static blacklist toSatelliteModemEnableRequestAttributes(Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;)Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;
    .registers 3

    .line 295
    new-instance v0, Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;

    invoke-direct {v0}, Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;-><init>()V

    .line 297
    invoke-virtual {p0}, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->isEnabled()Z

    move-result v1

    iput-boolean v1, v0, Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;->isEnabled:Z

    .line 298
    invoke-virtual {p0}, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->isForDemoMode()Z

    move-result v1

    iput-boolean v1, v0, Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;->isDemoMode:Z

    .line 299
    invoke-virtual {p0}, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->isForEmergencyMode()Z

    move-result v1

    iput-boolean v1, v0, Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;->isEmergencyMode:Z

    .line 301
    invoke-virtual {p0}, Landroid/telephony/satellite/SatelliteModemEnableRequestAttributes;->getSatelliteSubscriptionInfo()Landroid/telephony/satellite/SatelliteSubscriptionInfo;

    move-result-object p0

    .line 300
    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->toSatelliteSubscriptionInfo(Landroid/telephony/satellite/SatelliteSubscriptionInfo;)Landroid/telephony/satellite/stub/SatelliteSubscriptionInfo;

    move-result-object p0

    iput-object p0, v0, Landroid/telephony/satellite/stub/SatelliteModemEnableRequestAttributes;->satelliteSubscriptionInfo:Landroid/telephony/satellite/stub/SatelliteSubscriptionInfo;

    return-object v0
.end method

.method public static blacklist toSatelliteSubscriptionInfo(Landroid/telephony/satellite/SatelliteSubscriptionInfo;)Landroid/telephony/satellite/stub/SatelliteSubscriptionInfo;
    .registers 3

    .line 279
    new-instance v0, Landroid/telephony/satellite/stub/SatelliteSubscriptionInfo;

    invoke-direct {v0}, Landroid/telephony/satellite/stub/SatelliteSubscriptionInfo;-><init>()V

    .line 281
    invoke-virtual {p0}, Landroid/telephony/satellite/SatelliteSubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/telephony/satellite/stub/SatelliteSubscriptionInfo;->iccId:Ljava/lang/String;

    .line 282
    invoke-virtual {p0}, Landroid/telephony/satellite/SatelliteSubscriptionInfo;->getNiddApn()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/telephony/satellite/stub/SatelliteSubscriptionInfo;->niddApn:Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist toSystemSelectionSpecifier(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/satellite/SystemSelectionSpecifier;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/telephony/satellite/stub/SystemSelectionSpecifier;",
            ">;"
        }
    .end annotation

    .line 669
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 671
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    .line 670
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method
