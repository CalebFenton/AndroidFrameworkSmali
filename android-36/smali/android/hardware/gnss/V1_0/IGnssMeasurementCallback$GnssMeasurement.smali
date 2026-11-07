.class public final Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;
.super Ljava/lang/Object;
.source "IGnssMeasurementCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GnssMeasurement"
.end annotation


# instance fields
.field public blacklist accumulatedDeltaRangeM:D

.field public blacklist accumulatedDeltaRangeState:S

.field public blacklist accumulatedDeltaRangeUncertaintyM:D

.field public blacklist agcLevelDb:D

.field public blacklist cN0DbHz:D

.field public blacklist carrierCycles:J

.field public blacklist carrierFrequencyHz:F

.field public blacklist carrierPhase:D

.field public blacklist carrierPhaseUncertainty:D

.field public blacklist constellation:B

.field public blacklist flags:I

.field public blacklist multipathIndicator:B

.field public blacklist pseudorangeRateMps:D

.field public blacklist pseudorangeRateUncertaintyMps:D

.field public blacklist receivedSvTimeInNs:J

.field public blacklist receivedSvTimeUncertaintyInNs:J

.field public blacklist snrDb:D

.field public blacklist state:I

.field public blacklist svid:S

.field public blacklist timeOffsetNs:D


# direct methods
.method public constructor blacklist <init>()V
    .registers 7

    .line 912
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 929
    const/4 v0, 0x0

    iput-short v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->svid:S

    .line 935
    iput-byte v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->constellation:B

    .line 949
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->timeOffsetNs:D

    .line 1042
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->receivedSvTimeInNs:J

    .line 1048
    iput-wide v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->receivedSvTimeUncertaintyInNs:J

    .line 1059
    iput-wide v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->cN0DbHz:D

    .line 1086
    iput-wide v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->pseudorangeRateMps:D

    .line 1093
    iput-wide v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->pseudorangeRateUncertaintyMps:D

    .line 1114
    iput-wide v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->accumulatedDeltaRangeM:D

    .line 1120
    iput-wide v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->accumulatedDeltaRangeUncertaintyM:D

    .line 1137
    const/4 v5, 0x0

    iput v5, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->carrierFrequencyHz:F

    .line 1148
    iput-wide v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->carrierCycles:J

    .line 1160
    iput-wide v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->carrierPhase:D

    .line 1166
    iput-wide v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->carrierPhaseUncertainty:D

    .line 1186
    iput-byte v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->multipathIndicator:B

    .line 1193
    iput-wide v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->snrDb:D

    .line 1206
    iput-wide v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->agcLevelDb:D

    return-void
.end method

.method public static final blacklist readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .registers 13
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;",
            ">;"
        }
    .end annotation

    .line 1362
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1363
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 1366
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 1367
    .local v2, "_hidl_vec_size":I
    mul-int/lit16 v3, v2, 0x90

    int-to-long v5, v3

    .line 1368
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 1367
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 1371
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1372
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 1373
    new-instance v5, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;

    invoke-direct {v5}, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;-><init>()V

    .line 1374
    .local v5, "_hidl_vec_element":Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;
    mul-int/lit16 v6, v3, 0x90

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 1375
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1372
    .end local v5    # "_hidl_vec_element":Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 1379
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "_hidl_index_0":I
    .end local p0    # "childBlob":Landroid/os/HwBlob;
    :cond_37
    return-object v0
.end method

.method public static final blacklist writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .registers 9
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;",
            ">;)V"
        }
    .end annotation

    .line 1414
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 1416
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1417
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1418
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1419
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit16 v3, v1, 0x90

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 1420
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 1421
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;

    mul-int/lit16 v5, v3, 0x90

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 1420
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 1423
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1426
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1427
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 1210
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1211
    return v0

    .line 1213
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 1214
    return v1

    .line 1216
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;

    if-eq v2, v3, :cond_11

    .line 1217
    return v1

    .line 1219
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;

    .line 1220
    .local v2, "other":Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;
    iget v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->flags:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->flags:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 1221
    return v1

    .line 1223
    :cond_27
    iget-short v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->svid:S

    iget-short v4, v2, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->svid:S

    if-eq v3, v4, :cond_2e

    .line 1224
    return v1

    .line 1226
    :cond_2e
    iget-byte v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->constellation:B

    iget-byte v4, v2, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->constellation:B

    if-eq v3, v4, :cond_35

    .line 1227
    return v1

    .line 1229
    :cond_35
    iget-wide v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->timeOffsetNs:D

    iget-wide v5, v2, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->timeOffsetNs:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_3e

    .line 1230
    return v1

    .line 1232
    :cond_3e
    iget v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->state:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->state:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_51

    .line 1233
    return v1

    .line 1235
    :cond_51
    iget-wide v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->receivedSvTimeInNs:J

    iget-wide v5, v2, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->receivedSvTimeInNs:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5a

    .line 1236
    return v1

    .line 1238
    :cond_5a
    iget-wide v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->receivedSvTimeUncertaintyInNs:J

    iget-wide v5, v2, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->receivedSvTimeUncertaintyInNs:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_63

    .line 1239
    return v1

    .line 1241
    :cond_63
    iget-wide v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->cN0DbHz:D

    iget-wide v5, v2, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->cN0DbHz:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_6c

    .line 1242
    return v1

    .line 1244
    :cond_6c
    iget-wide v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->pseudorangeRateMps:D

    iget-wide v5, v2, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->pseudorangeRateMps:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_75

    .line 1245
    return v1

    .line 1247
    :cond_75
    iget-wide v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->pseudorangeRateUncertaintyMps:D

    iget-wide v5, v2, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->pseudorangeRateUncertaintyMps:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_7e

    .line 1248
    return v1

    .line 1250
    :cond_7e
    iget-short v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->accumulatedDeltaRangeState:S

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    iget-short v4, v2, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->accumulatedDeltaRangeState:S

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_91

    .line 1251
    return v1

    .line 1253
    :cond_91
    iget-wide v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->accumulatedDeltaRangeM:D

    iget-wide v5, v2, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->accumulatedDeltaRangeM:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_9a

    .line 1254
    return v1

    .line 1256
    :cond_9a
    iget-wide v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->accumulatedDeltaRangeUncertaintyM:D

    iget-wide v5, v2, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->accumulatedDeltaRangeUncertaintyM:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_a3

    .line 1257
    return v1

    .line 1259
    :cond_a3
    iget v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->carrierFrequencyHz:F

    iget v4, v2, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->carrierFrequencyHz:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_ac

    .line 1260
    return v1

    .line 1262
    :cond_ac
    iget-wide v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->carrierCycles:J

    iget-wide v5, v2, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->carrierCycles:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_b5

    .line 1263
    return v1

    .line 1265
    :cond_b5
    iget-wide v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->carrierPhase:D

    iget-wide v5, v2, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->carrierPhase:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_be

    .line 1266
    return v1

    .line 1268
    :cond_be
    iget-wide v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->carrierPhaseUncertainty:D

    iget-wide v5, v2, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->carrierPhaseUncertainty:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_c7

    .line 1269
    return v1

    .line 1271
    :cond_c7
    iget-byte v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->multipathIndicator:B

    iget-byte v4, v2, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->multipathIndicator:B

    if-eq v3, v4, :cond_ce

    .line 1272
    return v1

    .line 1274
    :cond_ce
    iget-wide v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->snrDb:D

    iget-wide v5, v2, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->snrDb:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_d7

    .line 1275
    return v1

    .line 1277
    :cond_d7
    iget-wide v3, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->agcLevelDb:D

    iget-wide v5, v2, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->agcLevelDb:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_e0

    .line 1278
    return v1

    .line 1280
    :cond_e0
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 23

    .line 1285
    move-object/from16 v0, p0

    iget v1, v0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->flags:I

    .line 1286
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-short v1, v0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->svid:S

    .line 1287
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-byte v1, v0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->constellation:B

    .line 1288
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v5, v0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->timeOffsetNs:D

    .line 1289
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v1, v0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->state:I

    .line 1290
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-wide v7, v0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->receivedSvTimeInNs:J

    .line 1291
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-wide v8, v0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->receivedSvTimeUncertaintyInNs:J

    .line 1292
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-wide v9, v0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->cN0DbHz:D

    .line 1293
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-wide v10, v0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->pseudorangeRateMps:D

    .line 1294
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-wide v11, v0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->pseudorangeRateUncertaintyMps:D

    .line 1295
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-short v1, v0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->accumulatedDeltaRangeState:S

    .line 1296
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget-wide v13, v0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->accumulatedDeltaRangeM:D

    .line 1297
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget-wide v14, v0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->accumulatedDeltaRangeUncertaintyM:D

    .line 1298
    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget v1, v0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->carrierFrequencyHz:F

    .line 1299
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v16, v2

    iget-wide v1, v0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->carrierCycles:J

    .line 1300
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v17, v1

    iget-wide v1, v0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->carrierPhase:D

    .line 1301
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v18, v1

    iget-wide v1, v0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->carrierPhaseUncertainty:D

    .line 1302
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-byte v2, v0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->multipathIndicator:B

    .line 1303
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-static {v2}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v20, v1

    iget-wide v1, v0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->snrDb:D

    .line 1304
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v21, v1

    iget-wide v1, v0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->agcLevelDb:D

    .line 1305
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v1

    filled-new-array/range {v2 .. v21}, [Ljava/lang/Object;

    move-result-object v1

    .line 1285
    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 7
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 1384
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->flags:I

    .line 1385
    const-wide/16 v0, 0x4

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v0

    iput-short v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->svid:S

    .line 1386
    const-wide/16 v0, 0x6

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->constellation:B

    .line 1387
    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->timeOffsetNs:D

    .line 1388
    const-wide/16 v0, 0x10

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->state:I

    .line 1389
    const-wide/16 v0, 0x18

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->receivedSvTimeInNs:J

    .line 1390
    const-wide/16 v0, 0x20

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->receivedSvTimeUncertaintyInNs:J

    .line 1391
    const-wide/16 v0, 0x28

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->cN0DbHz:D

    .line 1392
    const-wide/16 v0, 0x30

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->pseudorangeRateMps:D

    .line 1393
    const-wide/16 v0, 0x38

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->pseudorangeRateUncertaintyMps:D

    .line 1394
    const-wide/16 v0, 0x40

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v0

    iput-short v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->accumulatedDeltaRangeState:S

    .line 1395
    const-wide/16 v0, 0x48

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->accumulatedDeltaRangeM:D

    .line 1396
    const-wide/16 v0, 0x50

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->accumulatedDeltaRangeUncertaintyM:D

    .line 1397
    const-wide/16 v0, 0x58

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getFloat(J)F

    move-result v0

    iput v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->carrierFrequencyHz:F

    .line 1398
    const-wide/16 v0, 0x60

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->carrierCycles:J

    .line 1399
    const-wide/16 v0, 0x68

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->carrierPhase:D

    .line 1400
    const-wide/16 v0, 0x70

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->carrierPhaseUncertainty:D

    .line 1401
    const-wide/16 v0, 0x78

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->multipathIndicator:B

    .line 1402
    const-wide/16 v0, 0x80

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->snrDb:D

    .line 1403
    const-wide/16 v0, 0x88

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->agcLevelDb:D

    .line 1404
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 1357
    const-wide/16 v0, 0x90

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 1358
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 1359
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 1310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1311
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1312
    const-string v1, ".flags = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1313
    iget v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->flags:I

    invoke-static {v1}, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurementFlags;->dumpBitfield(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1314
    const-string v1, ", .svid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1315
    iget-short v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->svid:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1316
    const-string v1, ", .constellation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1317
    iget-byte v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->constellation:B

    invoke-static {v1}, Landroid/hardware/gnss/V1_0/GnssConstellationType;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1318
    const-string v1, ", .timeOffsetNs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1319
    iget-wide v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->timeOffsetNs:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1320
    const-string v1, ", .state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1321
    iget v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->state:I

    invoke-static {v1}, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurementState;->dumpBitfield(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1322
    const-string v1, ", .receivedSvTimeInNs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1323
    iget-wide v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->receivedSvTimeInNs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1324
    const-string v1, ", .receivedSvTimeUncertaintyInNs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1325
    iget-wide v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->receivedSvTimeUncertaintyInNs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1326
    const-string v1, ", .cN0DbHz = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1327
    iget-wide v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->cN0DbHz:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1328
    const-string v1, ", .pseudorangeRateMps = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1329
    iget-wide v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->pseudorangeRateMps:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1330
    const-string v1, ", .pseudorangeRateUncertaintyMps = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1331
    iget-wide v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->pseudorangeRateUncertaintyMps:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1332
    const-string v1, ", .accumulatedDeltaRangeState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1333
    iget-short v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->accumulatedDeltaRangeState:S

    invoke-static {v1}, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssAccumulatedDeltaRangeState;->dumpBitfield(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1334
    const-string v1, ", .accumulatedDeltaRangeM = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1335
    iget-wide v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->accumulatedDeltaRangeM:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1336
    const-string v1, ", .accumulatedDeltaRangeUncertaintyM = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1337
    iget-wide v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->accumulatedDeltaRangeUncertaintyM:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1338
    const-string v1, ", .carrierFrequencyHz = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1339
    iget v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->carrierFrequencyHz:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1340
    const-string v1, ", .carrierCycles = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1341
    iget-wide v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->carrierCycles:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1342
    const-string v1, ", .carrierPhase = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1343
    iget-wide v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->carrierPhase:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1344
    const-string v1, ", .carrierPhaseUncertainty = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1345
    iget-wide v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->carrierPhaseUncertainty:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1346
    const-string v1, ", .multipathIndicator = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1347
    iget-byte v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->multipathIndicator:B

    invoke-static {v1}, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMultipathIndicator;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1348
    const-string v1, ", .snrDb = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1349
    iget-wide v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->snrDb:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1350
    const-string v1, ", .agcLevelDb = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1351
    iget-wide v1, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->agcLevelDb:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1352
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1353
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 8
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 1431
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->flags:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1432
    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    iget-short v2, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->svid:S

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt16(JS)V

    .line 1433
    const-wide/16 v0, 0x6

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->constellation:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 1434
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->timeOffsetNs:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    .line 1435
    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->state:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1436
    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->receivedSvTimeInNs:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt64(JJ)V

    .line 1437
    const-wide/16 v0, 0x20

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->receivedSvTimeUncertaintyInNs:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt64(JJ)V

    .line 1438
    const-wide/16 v0, 0x28

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->cN0DbHz:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    .line 1439
    const-wide/16 v0, 0x30

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->pseudorangeRateMps:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    .line 1440
    const-wide/16 v0, 0x38

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->pseudorangeRateUncertaintyMps:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    .line 1441
    const-wide/16 v0, 0x40

    add-long/2addr v0, p2

    iget-short v2, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->accumulatedDeltaRangeState:S

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt16(JS)V

    .line 1442
    const-wide/16 v0, 0x48

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->accumulatedDeltaRangeM:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    .line 1443
    const-wide/16 v0, 0x50

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->accumulatedDeltaRangeUncertaintyM:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    .line 1444
    const-wide/16 v0, 0x58

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->carrierFrequencyHz:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putFloat(JF)V

    .line 1445
    const-wide/16 v0, 0x60

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->carrierCycles:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt64(JJ)V

    .line 1446
    const-wide/16 v0, 0x68

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->carrierPhase:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    .line 1447
    const-wide/16 v0, 0x70

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->carrierPhaseUncertainty:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    .line 1448
    const-wide/16 v0, 0x78

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->multipathIndicator:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 1449
    const-wide/16 v0, 0x80

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->snrDb:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    .line 1450
    const-wide/16 v0, 0x88

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->agcLevelDb:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    .line 1451
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 1407
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x90

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 1408
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 1409
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1410
    return-void
.end method
