.class public final Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;
.super Ljava/lang/Object;
.source "SingleSatCorrection.java"


# instance fields
.field public blacklist carrierFrequencyHz:F

.field public blacklist constellation:B

.field public blacklist excessPathLengthMeters:F

.field public blacklist excessPathLengthUncertaintyMeters:F

.field public blacklist probSatIsLos:F

.field public blacklist reflectingPlane:Landroid/hardware/gnss/measurement_corrections/V1_0/ReflectingPlane;

.field public blacklist singleSatCorrectionFlags:S

.field public blacklist svid:S


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;->constellation:B

    .line 16
    iput-short v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;->svid:S

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;->carrierFrequencyHz:F

    .line 29
    iput v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;->probSatIsLos:F

    .line 35
    iput v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;->excessPathLengthMeters:F

    .line 39
    iput v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;->excessPathLengthUncertaintyMeters:F

    .line 47
    new-instance v0, Landroid/hardware/gnss/measurement_corrections/V1_0/ReflectingPlane;

    invoke-direct {v0}, Landroid/hardware/gnss/measurement_corrections/V1_0/ReflectingPlane;-><init>()V

    iput-object v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;->reflectingPlane:Landroid/hardware/gnss/measurement_corrections/V1_0/ReflectingPlane;

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
            "Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;",
            ">;"
        }
    .end annotation

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 135
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 136
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x38

    int-to-long v5, v3

    .line 137
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 136
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 140
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 141
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 142
    new-instance v5, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;

    invoke-direct {v5}, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;-><init>()V

    .line 143
    .local v5, "_hidl_vec_element":Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;
    mul-int/lit8 v6, v3, 0x38

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 144
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    .end local v5    # "_hidl_vec_element":Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 148
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
            "Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;",
            ">;)V"
        }
    .end annotation

    .line 171
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 173
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 174
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 175
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 176
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x38

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 177
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 178
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;

    mul-int/lit8 v5, v3, 0x38

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 177
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 180
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 183
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 184
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 51
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 52
    return v0

    .line 54
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 55
    return v1

    .line 57
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;

    if-eq v2, v3, :cond_11

    .line 58
    return v1

    .line 60
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;

    .line 61
    .local v2, "other":Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;
    iget-short v3, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;->singleSatCorrectionFlags:S

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    iget-short v4, v2, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;->singleSatCorrectionFlags:S

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 62
    return v1

    .line 64
    :cond_27
    iget-byte v3, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;->constellation:B

    iget-byte v4, v2, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;->constellation:B

    if-eq v3, v4, :cond_2e

    .line 65
    return v1

    .line 67
    :cond_2e
    iget-short v3, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;->svid:S

    iget-short v4, v2, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;->svid:S

    if-eq v3, v4, :cond_35

    .line 68
    return v1

    .line 70
    :cond_35
    iget v3, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;->carrierFrequencyHz:F

    iget v4, v2, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;->carrierFrequencyHz:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3e

    .line 71
    return v1

    .line 73
    :cond_3e
    iget v3, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;->probSatIsLos:F

    iget v4, v2, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;->probSatIsLos:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_47

    .line 74
    return v1

    .line 76
    :cond_47
    iget v3, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;->excessPathLengthMeters:F

    iget v4, v2, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;->excessPathLengthMeters:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_50

    .line 77
    return v1

    .line 79
    :cond_50
    iget v3, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;->excessPathLengthUncertaintyMeters:F

    iget v4, v2, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;->excessPathLengthUncertaintyMeters:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_59

    .line 80
    return v1

    .line 82
    :cond_59
    iget-object v3, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;->reflectingPlane:Landroid/hardware/gnss/measurement_corrections/V1_0/ReflectingPlane;

    iget-object v4, v2, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;->reflectingPlane:Landroid/hardware/gnss/measurement_corrections/V1_0/ReflectingPlane;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_64

    .line 83
    return v1

    .line 85
    :cond_64
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 10

    .line 90
    iget-short v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;->singleSatCorrectionFlags:S

    .line 91
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-byte v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;->constellation:B

    .line 92
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-short v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;->svid:S

    .line 93
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;->carrierFrequencyHz:F

    .line 94
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;->probSatIsLos:F

    .line 95
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;->excessPathLengthMeters:F

    .line 96
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;->excessPathLengthUncertaintyMeters:F

    .line 97
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;->reflectingPlane:Landroid/hardware/gnss/measurement_corrections/V1_0/ReflectingPlane;

    .line 98
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    .line 90
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 8
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 153
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v0

    iput-short v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;->singleSatCorrectionFlags:S

    .line 154
    const-wide/16 v0, 0x2

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;->constellation:B

    .line 155
    const-wide/16 v0, 0x4

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v0

    iput-short v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;->svid:S

    .line 156
    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getFloat(J)F

    move-result v0

    iput v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;->carrierFrequencyHz:F

    .line 157
    const-wide/16 v0, 0xc

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getFloat(J)F

    move-result v0

    iput v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;->probSatIsLos:F

    .line 158
    const-wide/16 v0, 0x10

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getFloat(J)F

    move-result v0

    iput v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;->excessPathLengthMeters:F

    .line 159
    const-wide/16 v0, 0x14

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getFloat(J)F

    move-result v0

    iput v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;->excessPathLengthUncertaintyMeters:F

    .line 160
    iget-object v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;->reflectingPlane:Landroid/hardware/gnss/measurement_corrections/V1_0/ReflectingPlane;

    const-wide/16 v1, 0x18

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/gnss/measurement_corrections/V1_0/ReflectingPlane;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 161
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 126
    const-wide/16 v0, 0x38

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 127
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 128
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string v1, ".singleSatCorrectionFlags = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget-short v1, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;->singleSatCorrectionFlags:S

    invoke-static {v1}, Landroid/hardware/gnss/measurement_corrections/V1_0/GnssSingleSatCorrectionFlags;->dumpBitfield(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string v1, ", .constellation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget-byte v1, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;->constellation:B

    invoke-static {v1}, Landroid/hardware/gnss/V1_0/GnssConstellationType;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    const-string v1, ", .svid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget-short v1, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;->svid:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    const-string v1, ", .carrierFrequencyHz = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget v1, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;->carrierFrequencyHz:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 113
    const-string v1, ", .probSatIsLos = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget v1, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;->probSatIsLos:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 115
    const-string v1, ", .excessPathLengthMeters = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget v1, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;->excessPathLengthMeters:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 117
    const-string v1, ", .excessPathLengthUncertaintyMeters = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget v1, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;->excessPathLengthUncertaintyMeters:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 119
    const-string v1, ", .reflectingPlane = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget-object v1, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;->reflectingPlane:Landroid/hardware/gnss/measurement_corrections/V1_0/ReflectingPlane;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 188
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-short v2, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;->singleSatCorrectionFlags:S

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt16(JS)V

    .line 189
    const-wide/16 v0, 0x2

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;->constellation:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 190
    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    iget-short v2, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;->svid:S

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt16(JS)V

    .line 191
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;->carrierFrequencyHz:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putFloat(JF)V

    .line 192
    const-wide/16 v0, 0xc

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;->probSatIsLos:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putFloat(JF)V

    .line 193
    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;->excessPathLengthMeters:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putFloat(JF)V

    .line 194
    const-wide/16 v0, 0x14

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;->excessPathLengthUncertaintyMeters:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putFloat(JF)V

    .line 195
    iget-object v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;->reflectingPlane:Landroid/hardware/gnss/measurement_corrections/V1_0/ReflectingPlane;

    const-wide/16 v1, 0x18

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/gnss/measurement_corrections/V1_0/ReflectingPlane;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 196
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 164
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x38

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 165
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 166
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 167
    return-void
.end method
