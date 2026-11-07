.class public Lcom/android/internal/telephony/RadioIndication;
.super Landroid/hardware/radio/V1_6/IRadioIndication$Stub;
.source "RadioIndication.java"


# instance fields
.field blacklist mRil:Lcom/android/internal/telephony/RIL;


# direct methods
.method public static synthetic blacklist $r8$lambda$3v4ae01XQIRo9tpYjRjwCuZxMDM(Ljava/lang/Integer;)I
    .registers 1

    .line 1227
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$hJfsdF8Uo_WQmi7h2p94yEFJhfg(Ljava/lang/Integer;)I
    .registers 1

    .line 1185
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/RIL;)V
    .registers 2

    .line 130
    invoke-direct {p0}, Landroid/hardware/radio/V1_6/IRadioIndication$Stub;-><init>()V

    .line 131
    iput-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    return-void
.end method

.method private blacklist physicalChannelConfigsIndication(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1171
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1173
    :try_start_9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_137

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1174
    instance-of v2, v1, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;

    if-eqz v2, :cond_6b

    .line 1175
    check-cast v1, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;

    .line 1177
    new-instance v2, Landroid/telephony/PhysicalChannelConfig$Builder;

    invoke-direct {v2}, Landroid/telephony/PhysicalChannelConfig$Builder;-><init>()V

    .line 1178
    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/RadioIndication;->setFrequencyRangeOrChannelNumber(Landroid/telephony/PhysicalChannelConfig$Builder;Landroid/hardware/radio/V1_4/PhysicalChannelConfig;)V

    .line 1179
    iget-object v3, v1, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->base:Landroid/hardware/radio/V1_2/PhysicalChannelConfig;

    iget v3, v3, Landroid/hardware/radio/V1_2/PhysicalChannelConfig;->status:I

    .line 1180
    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalCellConnectionStatus(I)I

    move-result v3

    .line 1179
    invoke-virtual {v2, v3}, Landroid/telephony/PhysicalChannelConfig$Builder;->setCellConnectionStatus(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    move-result-object v2

    iget-object v3, v1, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->base:Landroid/hardware/radio/V1_2/PhysicalChannelConfig;

    iget v3, v3, Landroid/hardware/radio/V1_2/PhysicalChannelConfig;->cellBandwidthDownlink:I

    .line 1181
    invoke-virtual {v2, v3}, Landroid/telephony/PhysicalChannelConfig$Builder;->setCellBandwidthDownlinkKhz(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    move-result-object v2

    iget v3, v1, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->rat:I

    .line 1183
    invoke-static {v3}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v3

    .line 1182
    invoke-virtual {v2, v3}, Landroid/telephony/PhysicalChannelConfig$Builder;->setNetworkType(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    move-result-object v2

    iget v3, v1, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->physicalCellId:I

    .line 1184
    invoke-virtual {v2, v3}, Landroid/telephony/PhysicalChannelConfig$Builder;->setPhysicalCellId(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    move-result-object v2

    iget-object v1, v1, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->contextIds:Ljava/util/ArrayList;

    .line 1185
    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/internal/telephony/RadioIndication$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/internal/telephony/RadioIndication$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/telephony/PhysicalChannelConfig$Builder;->setContextIds([I)Landroid/telephony/PhysicalChannelConfig$Builder;

    move-result-object v1

    .line 1186
    invoke-virtual {v1}, Landroid/telephony/PhysicalChannelConfig$Builder;->build()Landroid/telephony/PhysicalChannelConfig;

    move-result-object v1

    .line 1179
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :catch_68
    move-exception p1

    goto/16 :goto_154

    .line 1187
    :cond_6b
    instance-of v2, v1, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;

    if-eqz v2, :cond_11f

    .line 1188
    check-cast v1, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;

    .line 1190
    new-instance v2, Landroid/telephony/PhysicalChannelConfig$Builder;

    invoke-direct {v2}, Landroid/telephony/PhysicalChannelConfig$Builder;-><init>()V

    .line 1192
    iget-object v3, v1, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->band:Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;

    invoke-virtual {v3}, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->getDiscriminator()B

    move-result v3

    if-eqz v3, :cond_ba

    const/4 v4, 0x1

    if-eq v3, v4, :cond_b3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_ac

    const/4 v4, 0x3

    if-eq v3, v4, :cond_a5

    .line 1206
    iget-object v3, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported band "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->band:Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;

    invoke-virtual {v5}, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->getDiscriminator()B

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    const/4 v3, 0x0

    goto :goto_c0

    .line 1203
    :cond_a5
    iget-object v3, v1, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->band:Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;

    invoke-virtual {v3}, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->ngranBand()I

    move-result v3

    goto :goto_c0

    .line 1200
    :cond_ac
    iget-object v3, v1, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->band:Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;

    invoke-virtual {v3}, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->eutranBand()I

    move-result v3

    goto :goto_c0

    .line 1197
    :cond_b3
    iget-object v3, v1, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->band:Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;

    invoke-virtual {v3}, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->utranBand()I

    move-result v3

    goto :goto_c0

    .line 1194
    :cond_ba
    iget-object v3, v1, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->band:Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;

    invoke-virtual {v3}, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->geranBand()I

    move-result v3

    :goto_c0
    if-nez v3, :cond_ca

    .line 1209
    iget-object v3, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const-string v4, "Unsupported unknown band."

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    goto :goto_cd

    .line 1216
    :cond_ca
    invoke-virtual {v2, v3}, Landroid/telephony/PhysicalChannelConfig$Builder;->setBand(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    .line 1218
    :goto_cd
    iget v3, v1, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->status:I

    .line 1219
    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalCellConnectionStatus(I)I

    move-result v3

    .line 1218
    invoke-virtual {v2, v3}, Landroid/telephony/PhysicalChannelConfig$Builder;->setCellConnectionStatus(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    move-result-object v2

    iget v3, v1, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->downlinkChannelNumber:I

    .line 1220
    invoke-virtual {v2, v3}, Landroid/telephony/PhysicalChannelConfig$Builder;->setDownlinkChannelNumber(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    move-result-object v2

    iget v3, v1, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->uplinkChannelNumber:I

    .line 1221
    invoke-virtual {v2, v3}, Landroid/telephony/PhysicalChannelConfig$Builder;->setUplinkChannelNumber(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    move-result-object v2

    iget v3, v1, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->cellBandwidthDownlinkKhz:I

    .line 1222
    invoke-virtual {v2, v3}, Landroid/telephony/PhysicalChannelConfig$Builder;->setCellBandwidthDownlinkKhz(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    move-result-object v2

    iget v3, v1, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->cellBandwidthUplinkKhz:I

    .line 1223
    invoke-virtual {v2, v3}, Landroid/telephony/PhysicalChannelConfig$Builder;->setCellBandwidthUplinkKhz(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    move-result-object v2

    iget v3, v1, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->rat:I

    .line 1225
    invoke-static {v3}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v3

    .line 1224
    invoke-virtual {v2, v3}, Landroid/telephony/PhysicalChannelConfig$Builder;->setNetworkType(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    move-result-object v2

    iget v3, v1, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->physicalCellId:I

    .line 1226
    invoke-virtual {v2, v3}, Landroid/telephony/PhysicalChannelConfig$Builder;->setPhysicalCellId(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    move-result-object v2

    iget-object v1, v1, Landroid/hardware/radio/V1_6/PhysicalChannelConfig;->contextIds:Ljava/util/ArrayList;

    .line 1227
    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/internal/telephony/RadioIndication$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/android/internal/telephony/RadioIndication$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/telephony/PhysicalChannelConfig$Builder;->setContextIds([I)Landroid/telephony/PhysicalChannelConfig$Builder;

    move-result-object v1

    .line 1228
    invoke-virtual {v1}, Landroid/telephony/PhysicalChannelConfig$Builder;->build()Landroid/telephony/PhysicalChannelConfig;

    move-result-object v1

    .line 1218
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 1230
    :cond_11f
    iget-object v2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported PhysicalChannelConfig "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V
    :try_end_135
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_135} :catch_68

    goto/16 :goto_d

    .line 1241
    :cond_137
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_146

    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v1, 0x44d

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1243
    :cond_146
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mPhysicalChannelConfigurationRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p1, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void

    .line 1234
    :goto_154
    const-string v0, "918f0970-9aa9-4bcd-a28e-e49a83fe77d5"

    .line 1235
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    const-string v1, "RIL reported invalid PCC (HIDL)"

    .line 1234
    invoke-static {v0, v1}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;)V

    .line 1237
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid PhysicalChannelConfig "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist responseApnUnthrottled(ILjava/lang/String;)V
    .registers 5

    .line 1291
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 1293
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x41c

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1295
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mApnUnthrottledRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p1, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method private blacklist responseCellInfoList(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 821
    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->convertHalCellInfoList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 822
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v1, 0x40c

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 823
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mRilCellInfoListRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method private blacklist responseDataCallListChanged(ILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 1281
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 1283
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3f2

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1285
    :cond_15
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalDataCallResultList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1286
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mDataCallListChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method private blacklist responseNetworkScan(ILandroid/hardware/radio/V1_4/NetworkScanResult;)V
    .registers 5

    .line 1249
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 1251
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p2, Landroid/hardware/radio/V1_4/NetworkScanResult;->networkInfos:Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1252
    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->convertHalCellInfoList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1253
    new-instance v0, Lcom/android/internal/telephony/NetworkScanResult;

    iget v1, p2, Landroid/hardware/radio/V1_4/NetworkScanResult;->status:I

    iget p2, p2, Landroid/hardware/radio/V1_4/NetworkScanResult;->error:I

    invoke-direct {v0, v1, p2, p1}, Lcom/android/internal/telephony/NetworkScanResult;-><init>(IILjava/util/List;)V

    .line 1254
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_29

    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 p2, 0x419

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1255
    :cond_29
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mRilNetworkScanResultRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p1, Landroid/os/AsyncResult;

    const/4 p2, 0x0

    invoke-direct {p1, p2, v0, p2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method private blacklist responseNetworkScan_1_5(ILandroid/hardware/radio/V1_5/NetworkScanResult;)V
    .registers 5

    .line 1260
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 1262
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p2, Landroid/hardware/radio/V1_5/NetworkScanResult;->networkInfos:Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1263
    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->convertHalCellInfoList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1264
    new-instance v0, Lcom/android/internal/telephony/NetworkScanResult;

    iget v1, p2, Landroid/hardware/radio/V1_5/NetworkScanResult;->status:I

    iget p2, p2, Landroid/hardware/radio/V1_5/NetworkScanResult;->error:I

    invoke-direct {v0, v1, p2, p1}, Lcom/android/internal/telephony/NetworkScanResult;-><init>(IILjava/util/List;)V

    .line 1265
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_29

    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 p2, 0x419

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1266
    :cond_29
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mRilNetworkScanResultRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p1, Landroid/os/AsyncResult;

    const/4 p2, 0x0

    invoke-direct {p1, p2, v0, p2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method private blacklist responseNetworkScan_1_6(ILandroid/hardware/radio/V1_6/NetworkScanResult;)V
    .registers 5

    .line 1271
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 1273
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p2, Landroid/hardware/radio/V1_6/NetworkScanResult;->networkInfos:Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1274
    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->convertHalCellInfoList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1275
    new-instance v0, Lcom/android/internal/telephony/NetworkScanResult;

    iget v1, p2, Landroid/hardware/radio/V1_6/NetworkScanResult;->status:I

    iget p2, p2, Landroid/hardware/radio/V1_6/NetworkScanResult;->error:I

    invoke-direct {v0, v1, p2, p1}, Lcom/android/internal/telephony/NetworkScanResult;-><init>(IILjava/util/List;)V

    .line 1276
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_29

    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 p2, 0x419

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1277
    :cond_29
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mRilNetworkScanResultRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p1, Landroid/os/AsyncResult;

    const/4 p2, 0x0

    invoke-direct {p1, p2, v0, p2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method private blacklist setFrequencyRangeOrChannelNumber(Landroid/telephony/PhysicalChannelConfig$Builder;Landroid/hardware/radio/V1_4/PhysicalChannelConfig;)V
    .registers 5

    .line 1158
    iget-object v0, p2, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->rfInfo:Landroid/hardware/radio/V1_4/RadioFrequencyInfo;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_4/RadioFrequencyInfo;->getDiscriminator()B

    move-result v0

    if-eqz v0, :cond_32

    const/4 v1, 0x1

    if-eq v0, v1, :cond_28

    .line 1166
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported frequency type "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->rfInfo:Landroid/hardware/radio/V1_4/RadioFrequencyInfo;

    invoke-virtual {p2}, Landroid/hardware/radio/V1_4/RadioFrequencyInfo;->getDiscriminator()B

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    return-void

    .line 1163
    :cond_28
    iget-object p0, p2, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->rfInfo:Landroid/hardware/radio/V1_4/RadioFrequencyInfo;

    invoke-virtual {p0}, Landroid/hardware/radio/V1_4/RadioFrequencyInfo;->channelNumber()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/telephony/PhysicalChannelConfig$Builder;->setDownlinkChannelNumber(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    return-void

    .line 1160
    :cond_32
    iget-object p0, p2, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->rfInfo:Landroid/hardware/radio/V1_4/RadioFrequencyInfo;

    invoke-virtual {p0}, Landroid/hardware/radio/V1_4/RadioFrequencyInfo;->range()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/telephony/PhysicalChannelConfig$Builder;->setFrequencyRange(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    return-void
.end method


# virtual methods
.method public blacklist barringInfoChanged(ILandroid/hardware/radio/V1_5/CellIdentity;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/hardware/radio/V1_5/CellIdentity;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_5/BarringInfo;",
            ">;)V"
        }
    .end annotation

    .line 1131
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    if-eqz p2, :cond_26

    if-nez p3, :cond_b

    goto :goto_26

    .line 1142
    :cond_b
    new-instance p1, Landroid/telephony/BarringInfo;

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentity(Ljava/lang/Object;)Landroid/telephony/CellIdentity;

    move-result-object p2

    .line 1143
    invoke-static {p3}, Lcom/android/internal/telephony/RILUtils;->convertHalBarringInfoList(Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/telephony/BarringInfo;-><init>(Landroid/telephony/CellIdentity;Landroid/util/SparseArray;)V

    .line 1145
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mBarringInfoChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p1, p3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void

    .line 1134
    :cond_26
    :goto_26
    const-string p1, "645b16bb-c930-4c1c-9c5d-568696542e05"

    .line 1135
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    .line 1134
    const-string p2, "Invalid barringInfoChanged indication"

    invoke-static {p1, p2}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;)V

    .line 1138
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist callRing(IZLandroid/hardware/radio/V1_0/CdmaSignalInfoRecord;)V
    .registers 8

    .line 489
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    const/4 p1, 0x0

    if-nez p2, :cond_29

    .line 497
    iget-boolean p2, p3, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->isPresent:Z

    int-to-char p2, p2

    .line 498
    iget-byte v0, p3, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->signalType:B

    int-to-char v0, v0

    .line 499
    iget-byte v2, p3, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->alertPitch:B

    int-to-char v2, v2

    .line 500
    iget-byte p3, p3, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->signal:B

    int-to-char p3, p3

    const/4 v3, 0x4

    new-array v3, v3, [C

    aput-char p2, v3, v1

    const/4 p2, 0x1

    aput-char v0, v3, p2

    const/4 p2, 0x2

    aput-char v2, v3, p2

    const/4 p2, 0x3

    aput-char p3, v3, p2

    .line 501
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2, v3}, Lcom/android/internal/telephony/RIL;->writeMetricsCallRing([C)V

    goto :goto_2a

    :cond_29
    move-object v3, p1

    .line 504
    :goto_2a
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p2

    if-eqz p2, :cond_39

    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 p3, 0x3fa

    invoke-virtual {p2, p3, v3}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 506
    :cond_39
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mRingRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_47

    .line 507
    new-instance p2, Landroid/os/AsyncResult;

    invoke-direct {p2, p1, v3, p1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_47
    return-void
.end method

.method public blacklist callStateChanged(I)V
    .registers 4

    .line 152
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 154
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3e9

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 156
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mCallStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method public blacklist carrierInfoForImsiEncryption(I)V
    .registers 4

    .line 1014
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 1016
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_16

    .line 1017
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v1, 0x418

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1020
    :cond_16
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mCarrierInfoForImsiEncryptionRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p1, Landroid/os/AsyncResult;

    invoke-direct {p1, v0, v0, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist cdmaCallWaiting(ILandroid/hardware/radio/V1_0/CdmaCallWaiting;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist cdmaInfoRec(ILandroid/hardware/radio/V1_0/CdmaInformationRecords;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist cdmaNewSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V
    .registers 5

    .line 520
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 522
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3fc

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 524
    :cond_15
    new-instance p1, Landroid/telephony/SmsMessage;

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalCdmaSmsMessage(Landroid/hardware/radio/V1_0/CdmaSmsMessage;)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    .line 525
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaSmsRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_2d

    .line 526
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_2d
    return-void
.end method

.method public blacklist cdmaOtaProvisionStatus(II)V
    .registers 5

    .line 600
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 603
    filled-new-array {p2}, [I

    move-result-object p1

    .line 605
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p2

    if-eqz p2, :cond_19

    .line 606
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x402

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 609
    :cond_19
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mOtaProvisionRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist cdmaPrlChanged(II)V
    .registers 5

    .line 741
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 744
    filled-new-array {p2}, [I

    move-result-object p1

    .line 746
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p2

    if-eqz p2, :cond_19

    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x408

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 748
    :cond_19
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaPrlChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist cdmaRuimSmsStorageFull(I)V
    .registers 4

    .line 545
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 547
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3fe

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 549
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mIccSmsFullRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_1e

    .line 550
    invoke-virtual {p0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant()V

    :cond_1e
    return-void
.end method

.method public blacklist cdmaSubscriptionSourceChanged(II)V
    .registers 5

    .line 727
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 730
    filled-new-array {p2}, [I

    move-result-object p1

    .line 732
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p2

    if-eqz p2, :cond_19

    .line 733
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x407

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 736
    :cond_19
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaSubscriptionChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist cellInfoList(ILjava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 790
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 p1, 0x40c

    const-string p2, "unsupported on IRadio < 1.4"

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->unsljLogMore(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist cellInfoList_1_2(ILjava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_2/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 796
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 p1, 0x40c

    const-string p2, "unsupported on IRadio < 1.4"

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->unsljLogMore(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist cellInfoList_1_4(ILjava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_4/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 802
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 803
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RadioIndication;->responseCellInfoList(Ljava/util/ArrayList;)V

    return-void
.end method

.method public blacklist cellInfoList_1_5(ILjava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_5/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 809
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 810
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RadioIndication;->responseCellInfoList(Ljava/util/ArrayList;)V

    return-void
.end method

.method public blacklist cellInfoList_1_6(ILjava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_6/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 816
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 817
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RadioIndication;->responseCellInfoList(Ljava/util/ArrayList;)V

    return-void
.end method

.method public blacklist currentEmergencyNumberList(ILjava/util/ArrayList;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_4/EmergencyNumber;",
            ">;)V"
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 354
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 357
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_13
    if-ge v1, v0, :cond_37

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Landroid/hardware/radio/V1_4/EmergencyNumber;

    .line 358
    new-instance v3, Landroid/telephony/emergency/EmergencyNumber;

    iget-object v4, v2, Landroid/hardware/radio/V1_4/EmergencyNumber;->number:Ljava/lang/String;

    iget-object v5, v2, Landroid/hardware/radio/V1_4/EmergencyNumber;->mcc:Ljava/lang/String;

    .line 359
    invoke-static {v5}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Landroid/hardware/radio/V1_4/EmergencyNumber;->mnc:Ljava/lang/String;

    iget v7, v2, Landroid/hardware/radio/V1_4/EmergencyNumber;->categories:I

    iget-object v8, v2, Landroid/hardware/radio/V1_4/EmergencyNumber;->urns:Ljava/util/ArrayList;

    iget v9, v2, Landroid/hardware/radio/V1_4/EmergencyNumber;->sources:I

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Landroid/telephony/emergency/EmergencyNumber;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;II)V

    .line 362
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 365
    :cond_37
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p2

    if-eqz p2, :cond_46

    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x44e

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 368
    :cond_46
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/BaseCommands;->cacheEmergencyNumberListIndication(Ljava/util/List;)V

    .line 371
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mEmergencyNumberListRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist currentLinkCapacityEstimate(ILandroid/hardware/radio/V1_2/LinkCapacityEstimate;)V
    .registers 5

    .line 253
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 255
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalLinkCapacityEstimate(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 257
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p2

    if-eqz p2, :cond_19

    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x415

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 259
    :cond_19
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mLceInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz p0, :cond_28

    .line 260
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_28
    return-void
.end method

.method public blacklist currentLinkCapacityEstimate_1_6(ILandroid/hardware/radio/V1_6/LinkCapacityEstimate;)V
    .registers 5

    .line 269
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 271
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalLinkCapacityEstimate(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 273
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p2

    if-eqz p2, :cond_19

    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x415

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 275
    :cond_19
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mLceInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz p0, :cond_28

    .line 276
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_28
    return-void
.end method

.method public blacklist currentPhysicalChannelConfigs(ILjava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_2/PhysicalChannelConfig;",
            ">;)V"
        }
    .end annotation

    .line 345
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 p1, 0x44d

    const-string p2, "unsupported on IRadio < 1.4"

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->unsljLogMore(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist currentPhysicalChannelConfigs_1_4(ILjava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_4/PhysicalChannelConfig;",
            ">;)V"
        }
    .end annotation

    .line 327
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 328
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RadioIndication;->physicalChannelConfigsIndication(Ljava/util/List;)V

    return-void
.end method

.method public blacklist currentPhysicalChannelConfigs_1_6(ILjava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_6/PhysicalChannelConfig;",
            ">;)V"
        }
    .end annotation

    .line 336
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 337
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RadioIndication;->physicalChannelConfigsIndication(Ljava/util/List;)V

    return-void
.end method

.method public blacklist currentSignalStrength(ILandroid/hardware/radio/V1_0/SignalStrength;)V
    .registers 3

    .line 245
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 p1, 0x3f1

    const-string p2, "unsupported on IRadio < 1.4"

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->unsljLogMore(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist currentSignalStrength_1_2(ILandroid/hardware/radio/V1_2/SignalStrength;)V
    .registers 3

    .line 285
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 p1, 0x3f1

    const-string p2, "unsupported on IRadio < 1.4"

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->unsljLogMore(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist currentSignalStrength_1_4(ILandroid/hardware/radio/V1_4/SignalStrength;)V
    .registers 5

    .line 294
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 296
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalSignalStrength(Ljava/lang/Object;)Landroid/telephony/SignalStrength;

    move-result-object p1

    .line 298
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2}, Lcom/android/internal/telephony/RIL;->isLogvOrTrace()Z

    move-result p2

    if-eqz p2, :cond_19

    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3f1

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 300
    :cond_19
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mSignalStrengthRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_28

    .line 301
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_28
    return-void
.end method

.method public blacklist currentSignalStrength_1_6(ILandroid/hardware/radio/V1_6/SignalStrength;)V
    .registers 5

    .line 311
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 313
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalSignalStrength(Ljava/lang/Object;)Landroid/telephony/SignalStrength;

    move-result-object p1

    .line 315
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2}, Lcom/android/internal/telephony/RIL;->isLogvOrTrace()Z

    move-result p2

    if-eqz p2, :cond_19

    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3f1

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 317
    :cond_19
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mSignalStrengthRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_28

    .line 318
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_28
    return-void
.end method

.method public blacklist dataCallListChanged(ILjava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/SetupDataCallResult;",
            ">;)V"
        }
    .end annotation

    .line 378
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 p1, 0x3f2

    const-string p2, "unsupported on IRadio < 1.4"

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->unsljLogMore(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist dataCallListChanged_1_4(ILjava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_4/SetupDataCallResult;",
            ">;)V"
        }
    .end annotation

    .line 384
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioIndication;->responseDataCallListChanged(ILjava/util/List;)V

    return-void
.end method

.method public blacklist dataCallListChanged_1_5(ILjava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_5/SetupDataCallResult;",
            ">;)V"
        }
    .end annotation

    .line 391
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioIndication;->responseDataCallListChanged(ILjava/util/List;)V

    return-void
.end method

.method public blacklist dataCallListChanged_1_6(ILjava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_6/SetupDataCallResult;",
            ">;)V"
        }
    .end annotation

    .line 397
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioIndication;->responseDataCallListChanged(ILjava/util/List;)V

    return-void
.end method

.method public blacklist enterEmergencyCallbackMode(I)V
    .registers 4

    .line 565
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 567
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x400

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 569
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mEmergencyCallbackModeRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_1e

    .line 570
    invoke-virtual {p0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant()V

    :cond_1e
    return-void
.end method

.method public blacklist exitEmergencyCallbackMode(I)V
    .registers 4

    .line 753
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 755
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x409

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 757
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mExitEmergencyCallbackModeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method public blacklist hardwareConfigChanged(ILjava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/HardwareConfig;",
            ">;)V"
        }
    .end annotation

    .line 905
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 907
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalHardwareConfigList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 909
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p2

    if-eqz p2, :cond_19

    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x410

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 911
    :cond_19
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mHardwareConfigChangeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist imsNetworkStateChanged(I)V
    .registers 4

    .line 868
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 870
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x40d

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 872
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mImsNetworkStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method public blacklist indicateRingbackTone(IZ)V
    .registers 5

    .line 711
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 713
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x405

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/RIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 715
    :cond_19
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mRingbackToneRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p1, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist keepaliveStatus(ILandroid/hardware/radio/V1_1/KeepaliveStatus;)V
    .registers 5

    .line 1031
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 1033
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_32

    .line 1034
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Landroid/hardware/radio/V1_1/KeepaliveStatus;->sessionHandle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Landroid/hardware/radio/V1_1/KeepaliveStatus;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x41a

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1039
    :cond_32
    new-instance p1, Lcom/android/internal/telephony/data/KeepaliveStatus;

    iget v0, p2, Landroid/hardware/radio/V1_1/KeepaliveStatus;->sessionHandle:I

    iget p2, p2, Landroid/hardware/radio/V1_1/KeepaliveStatus;->code:I

    invoke-direct {p1, v0, p2}, Lcom/android/internal/telephony/data/KeepaliveStatus;-><init>(II)V

    .line 1041
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mNattKeepaliveStatusRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist lceData(ILandroid/hardware/radio/V1_0/LceDataInfo;)V
    .registers 3

    .line 986
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 p1, 0x44d

    const-string p2, "unsupported on IRadio < 1.4"

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->unsljLogMore(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist modemReset(ILjava/lang/String;)V
    .registers 5

    .line 1001
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 1003
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x417

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1005
    :cond_15
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/RIL;->writeMetricsModemRestartEvent(Ljava/lang/String;)V

    .line 1006
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mModemResetRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p1, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist networkScanResult(ILandroid/hardware/radio/V1_1/NetworkScanResult;)V
    .registers 3

    .line 840
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 p1, 0x419

    const-string p2, "unsupported on IRadio < 1.4"

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->unsljLogMore(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist networkScanResult_1_2(ILandroid/hardware/radio/V1_2/NetworkScanResult;)V
    .registers 3

    .line 846
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 p1, 0x419

    const-string p2, "unsupported on IRadio < 1.4"

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->unsljLogMore(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist networkScanResult_1_4(ILandroid/hardware/radio/V1_4/NetworkScanResult;)V
    .registers 3

    .line 852
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioIndication;->responseNetworkScan(ILandroid/hardware/radio/V1_4/NetworkScanResult;)V

    return-void
.end method

.method public blacklist networkScanResult_1_5(ILandroid/hardware/radio/V1_5/NetworkScanResult;)V
    .registers 3

    .line 858
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioIndication;->responseNetworkScan_1_5(ILandroid/hardware/radio/V1_5/NetworkScanResult;)V

    return-void
.end method

.method public blacklist networkScanResult_1_6(ILandroid/hardware/radio/V1_6/NetworkScanResult;)V
    .registers 3

    .line 864
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioIndication;->responseNetworkScan_1_6(ILandroid/hardware/radio/V1_6/NetworkScanResult;)V

    return-void
.end method

.method public blacklist networkStateChanged(I)V
    .registers 4

    .line 164
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 166
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3ea

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 168
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mNetworkStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method public blacklist newBroadcastSms(ILjava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 531
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 533
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[B

    move-result-object p1

    .line 534
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p2

    if-eqz p2, :cond_1d

    .line 535
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3fd

    .line 536
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 535
    invoke-virtual {p2, v0, v1}, Lcom/android/internal/telephony/RIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 539
    :cond_1d
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mGsmBroadcastSmsRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_2c

    .line 540
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_2c
    return-void
.end method

.method public blacklist newSms(ILjava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 174
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[B

    move-result-object p1

    .line 175
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p2

    if-eqz p2, :cond_19

    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3eb

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 177
    :cond_19
    invoke-static {p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object p1

    .line 178
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mGsmSmsRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_35

    .line 179
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    if-nez p1, :cond_2a

    move-object v1, v0

    goto :goto_2f

    .line 180
    :cond_2a
    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, p1}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    :goto_2f
    invoke-direct {p2, v0, v1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 179
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_35
    return-void
.end method

.method public blacklist newSmsOnSim(II)V
    .registers 5

    .line 196
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 198
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3ed

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 200
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mSmsOnSimRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_28

    .line 201
    new-instance p1, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_28
    return-void
.end method

.method public blacklist newSmsStatusReport(ILjava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 187
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[B

    move-result-object p1

    .line 188
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p2

    if-eqz p2, :cond_19

    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3ec

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 190
    :cond_19
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mSmsStatusRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_28

    .line 191
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_28
    return-void
.end method

.method public blacklist nitzTimeReceived(ILjava/lang/String;J)V
    .registers 7

    .line 220
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 222
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3f0

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 227
    :cond_15
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 229
    invoke-static {}, Landroid/internal/telephony/sysprop/TelephonyProperties;->ignore_nitz()Ljava/util/Optional;

    move-result-object p2

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, p3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3f

    .line 232
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_3e

    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const-string p1, "ignoring UNSOL_NITZ_TIME_RECEIVED"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :cond_3e
    return-void

    .line 234
    :cond_3f
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/BaseCommands;->mNITZTimeRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p2, :cond_4e

    .line 235
    new-instance p3, Landroid/os/AsyncResult;

    const/4 p4, 0x0

    invoke-direct {p3, p4, p1, p4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 239
    :cond_4e
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iput-object p1, p0, Lcom/android/internal/telephony/RIL;->mLastNITZTimeInfo:[Ljava/lang/Object;

    return-void
.end method

.method public blacklist onSupplementaryServiceIndication(ILandroid/hardware/radio/V1_0/StkCcUnsolSsResult;)V
    .registers 9

    .line 928
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 931
    new-instance p1, Lcom/android/internal/telephony/gsm/SsData;

    invoke-direct {p1}, Lcom/android/internal/telephony/gsm/SsData;-><init>()V

    .line 933
    iget v0, p2, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->serviceType:I

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/gsm/SsData;->ServiceTypeFromRILInt(I)Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/telephony/gsm/SsData;->serviceType:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 934
    iget v0, p2, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->requestType:I

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/gsm/SsData;->RequestTypeFromRILInt(I)Lcom/android/internal/telephony/gsm/SsData$RequestType;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/telephony/gsm/SsData;->requestType:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    .line 935
    iget v0, p2, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->teleserviceType:I

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/gsm/SsData;->TeleserviceTypeFromRILInt(I)Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/telephony/gsm/SsData;->teleserviceType:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    .line 936
    iget v0, p2, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->serviceClass:I

    iput v0, p1, Lcom/android/internal/telephony/gsm/SsData;->serviceClass:I

    .line 937
    iget v0, p2, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->result:I

    iput v0, p1, Lcom/android/internal/telephony/gsm/SsData;->result:I

    .line 939
    iget-object v0, p1, Lcom/android/internal/telephony/gsm/SsData;->serviceType:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->isTypeCF()Z

    move-result v0

    const-string v2, " : "

    if-eqz v0, :cond_a1

    iget-object v0, p1, Lcom/android/internal/telephony/gsm/SsData;->requestType:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    .line 940
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SsData$RequestType;->isTypeInterrogation()Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 941
    iget-object p2, p2, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->cfData:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/radio/V1_0/CfData;

    .line 942
    iget-object v0, p2, Landroid/hardware/radio/V1_0/CfData;->cfInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 943
    new-array v3, v0, [Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v3, p1, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    :goto_4f
    if-ge v1, v0, :cond_e8

    .line 946
    iget-object v3, p2, Landroid/hardware/radio/V1_0/CfData;->cfInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_0/CallForwardInfo;

    .line 947
    iget-object v4, p1, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    new-instance v5, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v5}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    aput-object v5, v4, v1

    .line 949
    iget-object v4, p1, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v4, v4, v1

    iget v5, v3, Landroid/hardware/radio/V1_0/CallForwardInfo;->status:I

    iput v5, v4, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 950
    iget v5, v3, Landroid/hardware/radio/V1_0/CallForwardInfo;->reason:I

    iput v5, v4, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 951
    iget v5, v3, Landroid/hardware/radio/V1_0/CallForwardInfo;->serviceClass:I

    iput v5, v4, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 952
    iget v5, v3, Landroid/hardware/radio/V1_0/CallForwardInfo;->toa:I

    iput v5, v4, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 953
    iget-object v5, v3, Landroid/hardware/radio/V1_0/CallForwardInfo;->number:Ljava/lang/String;

    iput-object v5, v4, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 954
    iget v3, v3, Landroid/hardware/radio/V1_0/CallForwardInfo;->timeSeconds:I

    iput v3, v4, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 956
    iget-object v3, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SS Data] CF Info "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4f

    .line 959
    :cond_a1
    iget-object p2, p2, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->ssInfo:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/radio/V1_0/SsInfoData;

    .line 960
    iget-object v0, p2, Landroid/hardware/radio/V1_0/SsInfoData;->ssInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 961
    new-array v3, v0, [I

    iput-object v3, p1, Lcom/android/internal/telephony/gsm/SsData;->ssInfo:[I

    :goto_b3
    if-ge v1, v0, :cond_e8

    .line 963
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/SsData;->ssInfo:[I

    iget-object v4, p2, Landroid/hardware/radio/V1_0/SsInfoData;->ssInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v3, v1

    .line 964
    iget-object v3, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SS Data] SS Info "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/internal/telephony/gsm/SsData;->ssInfo:[I

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b3

    .line 968
    :cond_e8
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p2

    if-eqz p2, :cond_f7

    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x413

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 970
    :cond_f7
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mSsRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_106

    .line 971
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_106
    return-void
.end method

.method public blacklist onUssd(IILjava/lang/String;)V
    .registers 7

    .line 206
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 208
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    const-string v0, ""

    if-eqz p1, :cond_26

    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3ee

    invoke-virtual {p1, v2, v1}, Lcom/android/internal/telephony/RIL;->unsljLogMore(ILjava/lang/String;)V

    .line 212
    :cond_26
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 213
    filled-new-array {p1, p3}, [Ljava/lang/String;

    move-result-object p1

    .line 214
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mUSSDRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_48

    .line 215
    new-instance p2, Landroid/os/AsyncResult;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p1, p3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_48
    return-void
.end method

.method public blacklist pcoData(ILandroid/hardware/radio/V1_0/PcoDataInfo;)V
    .registers 6

    .line 990
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 992
    new-instance p1, Landroid/telephony/PcoData;

    iget v0, p2, Landroid/hardware/radio/V1_0/PcoDataInfo;->cid:I

    iget-object v1, p2, Landroid/hardware/radio/V1_0/PcoDataInfo;->bearerProto:Ljava/lang/String;

    iget v2, p2, Landroid/hardware/radio/V1_0/PcoDataInfo;->pcoId:I

    iget-object p2, p2, Landroid/hardware/radio/V1_0/PcoDataInfo;->contents:Ljava/util/ArrayList;

    .line 993
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[B

    move-result-object p2

    invoke-direct {p1, v0, v1, v2, p2}, Landroid/telephony/PcoData;-><init>(ILjava/lang/String;I[B)V

    .line 995
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p2

    if-eqz p2, :cond_26

    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x416

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 997
    :cond_26
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mPcoDataRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist radioCapabilityIndication(ILandroid/hardware/radio/V1_0/RadioCapability;)V
    .registers 5

    .line 917
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 919
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2, p1}, Lcom/android/internal/telephony/RILUtils;->convertHalRadioCapability(Landroid/hardware/radio/V1_0/RadioCapability;Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/RadioCapability;

    move-result-object p1

    .line 921
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p2

    if-eqz p2, :cond_1b

    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x412

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 923
    :cond_1b
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mPhoneRadioCapabilityChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist radioStateChanged(II)V
    .registers 6

    .line 140
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 142
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalRadioState(I)I

    move-result p1

    .line 143
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p2

    if-eqz p2, :cond_2a

    .line 144
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "radioStateChanged: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3e8

    invoke-virtual {p2, v2, v0}, Lcom/android/internal/telephony/RIL;->unsljLogMore(ILjava/lang/String;)V

    .line 148
    :cond_2a
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/telephony/BaseCommands;->setRadioState(IZ)V

    return-void
.end method

.method public blacklist registrationFailed(ILandroid/hardware/radio/V1_5/CellIdentity;Ljava/lang/String;III)V
    .registers 9

    .line 1100
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 1101
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentity(Ljava/lang/Object;)Landroid/telephony/CellIdentity;

    move-result-object p1

    if-eqz p1, :cond_3d

    .line 1103
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3d

    and-int/lit8 p2, p4, 0x3

    if-eqz p2, :cond_3d

    and-int/lit8 p2, p4, -0x4

    if-nez p2, :cond_3d

    if-ltz p5, :cond_3d

    if-ltz p6, :cond_3d

    const p2, 0x7fffffff

    if-ne p5, p2, :cond_26

    if-ne p6, p2, :cond_26

    goto :goto_3d

    .line 1116
    :cond_26
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mRegistrationFailedRegistrant:Lcom/android/internal/telephony/Registrant;

    new-instance v1, Landroid/os/AsyncResult;

    new-instance p0, Lcom/android/internal/telephony/RegistrationFailedEvent;

    move-object p2, p3

    move p3, p4

    move p4, p5

    move p5, p6

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/RegistrationFailedEvent;-><init>(Landroid/telephony/CellIdentity;Ljava/lang/String;III)V

    const/4 p1, 0x0

    invoke-direct {v1, p1, p0, p1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    return-void

    .line 1108
    :cond_3d
    :goto_3d
    const-string p1, "f16e5703-6105-4341-9eb3-e68189156eb4"

    .line 1109
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    .line 1108
    const-string p2, "Invalid registrationFailed indication"

    invoke-static {p1, p2}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;)V

    .line 1112
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist resendIncallMute(I)V
    .registers 4

    .line 719
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 721
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x406

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 723
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mResendIncallMuteRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method public blacklist restrictedStateChanged(II)V
    .registers 5

    .line 555
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 557
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x3ff

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/RIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 559
    :cond_19
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mRestrictedStateRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_2c

    .line 560
    new-instance p1, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_2c
    return-void
.end method

.method public blacklist rilConnected(I)V
    .registers 4

    .line 761
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 763
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x40a

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 766
    :cond_15
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x0

    invoke-interface {p1, v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 767
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget v1, p1, Lcom/android/internal/telephony/BaseCommands;->mCdmaSubscription:I

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/RIL;->setCdmaSubscriptionSource(ILandroid/os/Message;)V

    .line 770
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 p1, 0xf

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->notifyRegistrantsRilConnectionChanged(I)V

    return-void
.end method

.method public blacklist simPhonebookChanged(I)V
    .registers 4

    .line 1050
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 1052
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 1053
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x41d

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 1056
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mSimPhonebookChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method public blacklist simPhonebookRecordsReceived(IBLjava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IB",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_6/PhonebookRecordInfo;",
            ">;)V"
        }
    .end annotation

    .line 1067
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 1069
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1071
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_f
    if-ge v1, v0, :cond_21

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;

    .line 1072
    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->convertHalPhonebookRecordInfo(Landroid/hardware/radio/V1_6/PhonebookRecordInfo;)Lcom/android/internal/telephony/uicc/SimPhonebookRecord;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 1075
    :cond_21
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 1076
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1078
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " records"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/16 v1, 0x41e

    .line 1076
    invoke-virtual {v0, v1, p3}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1081
    :cond_52
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mSimPhonebookRecordsReceivedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p3, Landroid/os/AsyncResult;

    new-instance v0, Lcom/android/internal/telephony/uicc/ReceivedPhonebookRecords;

    invoke-direct {v0, p2, p1}, Lcom/android/internal/telephony/uicc/ReceivedPhonebookRecords;-><init>(ILjava/util/List;)V

    const/4 p1, 0x0

    invoke-direct {p3, p1, v0, p1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist simRefresh(ILandroid/hardware/radio/V1_0/SimRefreshResult;)V
    .registers 5

    .line 476
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 478
    new-instance p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    invoke-direct {p1}, Lcom/android/internal/telephony/uicc/IccRefreshResponse;-><init>()V

    .line 479
    iget v0, p2, Landroid/hardware/radio/V1_0/SimRefreshResult;->type:I

    iput v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    .line 480
    iget v0, p2, Landroid/hardware/radio/V1_0/SimRefreshResult;->efId:I

    iput v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->efId:I

    .line 481
    iget-object p2, p2, Landroid/hardware/radio/V1_0/SimRefreshResult;->aid:Ljava/lang/String;

    iput-object p2, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    .line 483
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p2

    if-eqz p2, :cond_26

    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3f9

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 485
    :cond_26
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mIccRefreshRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist simSmsStorageFull(I)V
    .registers 4

    .line 466
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 468
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3f8

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 470
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mIccSmsFullRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_1e

    .line 471
    invoke-virtual {p0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant()V

    :cond_1e
    return-void
.end method

.method public blacklist simStatusChanged(I)V
    .registers 4

    .line 512
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 514
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3fb

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 516
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mIccStatusChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method public blacklist srvccStateNotify(II)V
    .registers 5

    .line 890
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 893
    filled-new-array {p2}, [I

    move-result-object p1

    .line 895
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v1, 0x40f

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 897
    :cond_19
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/RIL;->writeMetricsSrvcc(I)V

    .line 899
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mSrvccStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist stkCallControlAlphaNotify(ILjava/lang/String;)V
    .registers 5

    .line 976
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 978
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x414

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 980
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatCcAlphaRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_24

    .line 981
    new-instance p1, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_24
    return-void
.end method

.method public blacklist stkCallSetup(IJ)V
    .registers 6

    .line 456
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 458
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0x3f7

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 460
    :cond_19
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatCallSetUpRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_2c

    .line 461
    new-instance p1, Landroid/os/AsyncResult;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {p1, p3, p2, p3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_2c
    return-void
.end method

.method public blacklist stkEventNotify(ILjava/lang/String;)V
    .registers 5

    .line 446
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 448
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3f6

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 450
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatEventRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_24

    .line 451
    new-instance p1, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_24
    return-void
.end method

.method public blacklist stkProactiveCommand(ILjava/lang/String;)V
    .registers 5

    .line 436
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 438
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3f5

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 440
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatProCmdRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_24

    .line 441
    new-instance p1, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_24
    return-void
.end method

.method public blacklist stkSessionEnd(I)V
    .registers 4

    .line 426
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 428
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3f4

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 430
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mCatSessionEndRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_24

    .line 431
    new-instance p1, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_24
    return-void
.end method

.method public blacklist subscriptionStatusChanged(IZ)V
    .registers 5

    .line 876
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 879
    filled-new-array {p2}, [I

    move-result-object p1

    .line 881
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p2

    if-eqz p2, :cond_19

    .line 882
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x40e

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 885
    :cond_19
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mSubscriptionStatusRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist suppSvcNotify(ILandroid/hardware/radio/V1_0/SuppSvcNotification;)V
    .registers 5

    .line 407
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 409
    new-instance p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    invoke-direct {p1}, Lcom/android/internal/telephony/gsm/SuppServiceNotification;-><init>()V

    .line 410
    iget-boolean v0, p2, Landroid/hardware/radio/V1_0/SuppSvcNotification;->isMT:Z

    iput v0, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    .line 411
    iget v0, p2, Landroid/hardware/radio/V1_0/SuppSvcNotification;->code:I

    iput v0, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    .line 412
    iget v0, p2, Landroid/hardware/radio/V1_0/SuppSvcNotification;->index:I

    iput v0, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->index:I

    .line 413
    iget v0, p2, Landroid/hardware/radio/V1_0/SuppSvcNotification;->type:I

    iput v0, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->type:I

    .line 414
    iget-object p2, p2, Landroid/hardware/radio/V1_0/SuppSvcNotification;->number:Ljava/lang/String;

    iput-object p2, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->number:Ljava/lang/String;

    .line 416
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p2

    if-eqz p2, :cond_2e

    .line 417
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3f3

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 420
    :cond_2e
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mSsnRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_3d

    .line 421
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_3d
    return-void
.end method

.method public blacklist uiccApplicationsEnablementChanged(IZ)V
    .registers 5

    .line 828
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 830
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 831
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x44f

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 834
    :cond_19
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mUiccApplicationsEnablementRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist unthrottleApn(ILjava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 403
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioIndication;->responseApnUnthrottled(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist voiceRadioTechChanged(II)V
    .registers 5

    .line 774
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 777
    filled-new-array {p2}, [I

    move-result-object p1

    .line 779
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p2

    if-eqz p2, :cond_19

    .line 780
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x40b

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 783
    :cond_19
    iget-object p0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mVoiceRadioTechChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method
