.class public final Landroid/hardware/contexthub/V1_0/ContextHub;
.super Ljava/lang/Object;
.source "ContextHub.java"


# instance fields
.field public blacklist chreApiMajorVersion:B

.field public blacklist chreApiMinorVersion:B

.field public blacklist chrePatchVersion:S

.field public blacklist chrePlatformId:J

.field public blacklist connectedSensors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/contexthub/V1_0/PhysicalSensor;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist hubId:I

.field public blacklist maxSupportedMsgLen:I

.field public blacklist name:Ljava/lang/String;

.field public blacklist peakMips:F

.field public blacklist peakPowerDrawMw:F

.field public blacklist platformVersion:I

.field public blacklist sleepPowerDrawMw:F

.field public blacklist stoppedPowerDrawMw:F

.field public blacklist toolchain:Ljava/lang/String;

.field public blacklist toolchainVersion:I

.field public blacklist vendor:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 4

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->name:Ljava/lang/String;

    .line 6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->vendor:Ljava/lang/String;

    .line 7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->toolchain:Ljava/lang/String;

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->platformVersion:I

    .line 9
    iput v0, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->toolchainVersion:I

    .line 10
    iput v0, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->hubId:I

    .line 11
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->peakMips:F

    .line 12
    iput v1, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->stoppedPowerDrawMw:F

    .line 13
    iput v1, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->sleepPowerDrawMw:F

    .line 14
    iput v1, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->peakPowerDrawMw:F

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->connectedSensors:Ljava/util/ArrayList;

    .line 16
    iput v0, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->maxSupportedMsgLen:I

    .line 17
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->chrePlatformId:J

    .line 18
    iput-byte v0, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->chreApiMajorVersion:B

    .line 19
    iput-byte v0, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->chreApiMinorVersion:B

    .line 20
    iput-short v0, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->chrePatchVersion:S

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
            "Landroid/hardware/contexthub/V1_0/ContextHub;",
            ">;"
        }
    .end annotation

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/contexthub/V1_0/ContextHub;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 156
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 157
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x78

    int-to-long v5, v3

    .line 158
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 157
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 161
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 162
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 163
    new-instance v5, Landroid/hardware/contexthub/V1_0/ContextHub;

    invoke-direct {v5}, Landroid/hardware/contexthub/V1_0/ContextHub;-><init>()V

    .line 164
    .local v5, "_hidl_vec_element":Landroid/hardware/contexthub/V1_0/ContextHub;
    mul-int/lit8 v6, v3, 0x78

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/contexthub/V1_0/ContextHub;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 165
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    .end local v5    # "_hidl_vec_element":Landroid/hardware/contexthub/V1_0/ContextHub;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 169
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
            "Landroid/hardware/contexthub/V1_0/ContextHub;",
            ">;)V"
        }
    .end annotation

    .line 230
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/contexthub/V1_0/ContextHub;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 232
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 233
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 234
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 235
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x78

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 236
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 237
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/contexthub/V1_0/ContextHub;

    mul-int/lit8 v5, v3, 0x78

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/contexthub/V1_0/ContextHub;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 236
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 239
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 242
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 243
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 24
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 25
    return v0

    .line 27
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 28
    return v1

    .line 30
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/contexthub/V1_0/ContextHub;

    if-eq v2, v3, :cond_11

    .line 31
    return v1

    .line 33
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/contexthub/V1_0/ContextHub;

    .line 34
    .local v2, "other":Landroid/hardware/contexthub/V1_0/ContextHub;
    iget-object v3, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->name:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/contexthub/V1_0/ContextHub;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 35
    return v1

    .line 37
    :cond_1f
    iget-object v3, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->vendor:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/contexthub/V1_0/ContextHub;->vendor:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 38
    return v1

    .line 40
    :cond_2a
    iget-object v3, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->toolchain:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/contexthub/V1_0/ContextHub;->toolchain:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    .line 41
    return v1

    .line 43
    :cond_35
    iget v3, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->platformVersion:I

    iget v4, v2, Landroid/hardware/contexthub/V1_0/ContextHub;->platformVersion:I

    if-eq v3, v4, :cond_3c

    .line 44
    return v1

    .line 46
    :cond_3c
    iget v3, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->toolchainVersion:I

    iget v4, v2, Landroid/hardware/contexthub/V1_0/ContextHub;->toolchainVersion:I

    if-eq v3, v4, :cond_43

    .line 47
    return v1

    .line 49
    :cond_43
    iget v3, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->hubId:I

    iget v4, v2, Landroid/hardware/contexthub/V1_0/ContextHub;->hubId:I

    if-eq v3, v4, :cond_4a

    .line 50
    return v1

    .line 52
    :cond_4a
    iget v3, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->peakMips:F

    iget v4, v2, Landroid/hardware/contexthub/V1_0/ContextHub;->peakMips:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_53

    .line 53
    return v1

    .line 55
    :cond_53
    iget v3, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->stoppedPowerDrawMw:F

    iget v4, v2, Landroid/hardware/contexthub/V1_0/ContextHub;->stoppedPowerDrawMw:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_5c

    .line 56
    return v1

    .line 58
    :cond_5c
    iget v3, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->sleepPowerDrawMw:F

    iget v4, v2, Landroid/hardware/contexthub/V1_0/ContextHub;->sleepPowerDrawMw:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_65

    .line 59
    return v1

    .line 61
    :cond_65
    iget v3, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->peakPowerDrawMw:F

    iget v4, v2, Landroid/hardware/contexthub/V1_0/ContextHub;->peakPowerDrawMw:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_6e

    .line 62
    return v1

    .line 64
    :cond_6e
    iget-object v3, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->connectedSensors:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/contexthub/V1_0/ContextHub;->connectedSensors:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_79

    .line 65
    return v1

    .line 67
    :cond_79
    iget v3, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->maxSupportedMsgLen:I

    iget v4, v2, Landroid/hardware/contexthub/V1_0/ContextHub;->maxSupportedMsgLen:I

    if-eq v3, v4, :cond_80

    .line 68
    return v1

    .line 70
    :cond_80
    iget-wide v3, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->chrePlatformId:J

    iget-wide v5, v2, Landroid/hardware/contexthub/V1_0/ContextHub;->chrePlatformId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_89

    .line 71
    return v1

    .line 73
    :cond_89
    iget-byte v3, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->chreApiMajorVersion:B

    iget-byte v4, v2, Landroid/hardware/contexthub/V1_0/ContextHub;->chreApiMajorVersion:B

    if-eq v3, v4, :cond_90

    .line 74
    return v1

    .line 76
    :cond_90
    iget-byte v3, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->chreApiMinorVersion:B

    iget-byte v4, v2, Landroid/hardware/contexthub/V1_0/ContextHub;->chreApiMinorVersion:B

    if-eq v3, v4, :cond_97

    .line 77
    return v1

    .line 79
    :cond_97
    iget-short v3, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->chrePatchVersion:S

    iget-short v4, v2, Landroid/hardware/contexthub/V1_0/ContextHub;->chrePatchVersion:S

    if-eq v3, v4, :cond_9e

    .line 80
    return v1

    .line 82
    :cond_9e
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 19

    .line 87
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/hardware/contexthub/V1_0/ContextHub;->name:Ljava/lang/String;

    .line 88
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v1, v0, Landroid/hardware/contexthub/V1_0/ContextHub;->vendor:Ljava/lang/String;

    .line 89
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v1, v0, Landroid/hardware/contexthub/V1_0/ContextHub;->toolchain:Ljava/lang/String;

    .line 90
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v1, v0, Landroid/hardware/contexthub/V1_0/ContextHub;->platformVersion:I

    .line 91
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v1, v0, Landroid/hardware/contexthub/V1_0/ContextHub;->toolchainVersion:I

    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v1, v0, Landroid/hardware/contexthub/V1_0/ContextHub;->hubId:I

    .line 93
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v1, v0, Landroid/hardware/contexthub/V1_0/ContextHub;->peakMips:F

    .line 94
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v1, v0, Landroid/hardware/contexthub/V1_0/ContextHub;->stoppedPowerDrawMw:F

    .line 95
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v1, v0, Landroid/hardware/contexthub/V1_0/ContextHub;->sleepPowerDrawMw:F

    .line 96
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget v1, v0, Landroid/hardware/contexthub/V1_0/ContextHub;->peakPowerDrawMw:F

    .line 97
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-object v1, v0, Landroid/hardware/contexthub/V1_0/ContextHub;->connectedSensors:Ljava/util/ArrayList;

    .line 98
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget v1, v0, Landroid/hardware/contexthub/V1_0/ContextHub;->maxSupportedMsgLen:I

    .line 99
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget-wide v14, v0, Landroid/hardware/contexthub/V1_0/ContextHub;->chrePlatformId:J

    .line 100
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget-byte v1, v0, Landroid/hardware/contexthub/V1_0/ContextHub;->chreApiMajorVersion:B

    .line 101
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iget-byte v1, v0, Landroid/hardware/contexthub/V1_0/ContextHub;->chreApiMinorVersion:B

    .line 102
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    iget-short v1, v0, Landroid/hardware/contexthub/V1_0/ContextHub;->chrePatchVersion:S

    .line 103
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    filled-new-array/range {v2 .. v17}, [Ljava/lang/Object;

    move-result-object v1

    .line 87
    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 26
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 174
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/hardware/contexthub/V1_0/ContextHub;->name:Ljava/lang/String;

    .line 176
    iget-object v4, v0, Landroid/hardware/contexthub/V1_0/ContextHub;->name:Ljava/lang/String;

    .line 177
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    int-to-long v6, v4

    .line 178
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v8

    add-long v4, p3, v2

    add-long v10, v4, v2

    .line 176
    const/4 v12, 0x0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v12}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 181
    const-wide/16 v4, 0x10

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/hardware/contexthub/V1_0/ContextHub;->vendor:Ljava/lang/String;

    .line 183
    iget-object v6, v0, Landroid/hardware/contexthub/V1_0/ContextHub;->vendor:Ljava/lang/String;

    .line 184
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v14, v6

    .line 185
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v16

    add-long v4, p3, v4

    add-long v18, v4, v2

    .line 183
    const/16 v20, 0x0

    move-object/from16 v13, p1

    invoke-virtual/range {v13 .. v20}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 188
    const-wide/16 v4, 0x20

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/hardware/contexthub/V1_0/ContextHub;->toolchain:Ljava/lang/String;

    .line 190
    iget-object v6, v0, Landroid/hardware/contexthub/V1_0/ContextHub;->toolchain:Ljava/lang/String;

    .line 191
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v14, v6

    .line 192
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v16

    add-long v4, p3, v4

    add-long v18, v4, v2

    .line 190
    invoke-virtual/range {v13 .. v20}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 195
    const-wide/16 v4, 0x30

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/contexthub/V1_0/ContextHub;->platformVersion:I

    .line 196
    const-wide/16 v4, 0x34

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/contexthub/V1_0/ContextHub;->toolchainVersion:I

    .line 197
    const-wide/16 v4, 0x38

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/contexthub/V1_0/ContextHub;->hubId:I

    .line 198
    const-wide/16 v4, 0x3c

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getFloat(J)F

    move-result v4

    iput v4, v0, Landroid/hardware/contexthub/V1_0/ContextHub;->peakMips:F

    .line 199
    const-wide/16 v4, 0x40

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getFloat(J)F

    move-result v4

    iput v4, v0, Landroid/hardware/contexthub/V1_0/ContextHub;->stoppedPowerDrawMw:F

    .line 200
    const-wide/16 v4, 0x44

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getFloat(J)F

    move-result v4

    iput v4, v0, Landroid/hardware/contexthub/V1_0/ContextHub;->sleepPowerDrawMw:F

    .line 201
    const-wide/16 v4, 0x48

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getFloat(J)F

    move-result v4

    iput v4, v0, Landroid/hardware/contexthub/V1_0/ContextHub;->peakPowerDrawMw:F

    .line 203
    const-wide/16 v4, 0x50

    add-long v6, p3, v4

    const-wide/16 v8, 0x8

    add-long/2addr v6, v8

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    .line 204
    .local v6, "_hidl_vec_size":I
    mul-int/lit8 v7, v6, 0x60

    int-to-long v14, v7

    .line 205
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v16

    add-long v4, p3, v4

    add-long v18, v4, v2

    .line 204
    const/16 v20, 0x1

    invoke-virtual/range {v13 .. v20}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 208
    .local v2, "childBlob":Landroid/os/HwBlob;
    iget-object v3, v0, Landroid/hardware/contexthub/V1_0/ContextHub;->connectedSensors:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 209
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_d0
    if-ge v3, v6, :cond_e7

    .line 210
    new-instance v4, Landroid/hardware/contexthub/V1_0/PhysicalSensor;

    invoke-direct {v4}, Landroid/hardware/contexthub/V1_0/PhysicalSensor;-><init>()V

    .line 211
    .local v4, "_hidl_vec_element":Landroid/hardware/contexthub/V1_0/PhysicalSensor;
    mul-int/lit8 v5, v3, 0x60

    int-to-long v7, v5

    move-object/from16 v13, p1

    invoke-virtual {v4, v13, v2, v7, v8}, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 212
    iget-object v5, v0, Landroid/hardware/contexthub/V1_0/ContextHub;->connectedSensors:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    .end local v4    # "_hidl_vec_element":Landroid/hardware/contexthub/V1_0/PhysicalSensor;
    add-int/lit8 v3, v3, 0x1

    goto :goto_d0

    :cond_e7
    move-object/from16 v13, p1

    .line 215
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_index_0":I
    .end local v6    # "_hidl_vec_size":I
    const-wide/16 v2, 0x60

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Landroid/hardware/contexthub/V1_0/ContextHub;->maxSupportedMsgLen:I

    .line 216
    const-wide/16 v2, 0x68

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/hardware/contexthub/V1_0/ContextHub;->chrePlatformId:J

    .line 217
    const-wide/16 v2, 0x70

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v2

    iput-byte v2, v0, Landroid/hardware/contexthub/V1_0/ContextHub;->chreApiMajorVersion:B

    .line 218
    const-wide/16 v2, 0x71

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v2

    iput-byte v2, v0, Landroid/hardware/contexthub/V1_0/ContextHub;->chreApiMinorVersion:B

    .line 219
    const-wide/16 v2, 0x72

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v2

    iput-short v2, v0, Landroid/hardware/contexthub/V1_0/ContextHub;->chrePatchVersion:S

    .line 220
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 147
    const-wide/16 v0, 0x78

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 148
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/contexthub/V1_0/ContextHub;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 149
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string v1, ".name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget-object v1, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string v1, ", .vendor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget-object v1, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->vendor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-string v1, ", .toolchain = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget-object v1, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->toolchain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const-string v1, ", .platformVersion = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget v1, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->platformVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    const-string v1, ", .toolchainVersion = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    iget v1, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->toolchainVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    const-string v1, ", .hubId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget v1, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->hubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    const-string v1, ", .peakMips = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget v1, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->peakMips:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 124
    const-string v1, ", .stoppedPowerDrawMw = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget v1, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->stoppedPowerDrawMw:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 126
    const-string v1, ", .sleepPowerDrawMw = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget v1, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->sleepPowerDrawMw:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 128
    const-string v1, ", .peakPowerDrawMw = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget v1, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->peakPowerDrawMw:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 130
    const-string v1, ", .connectedSensors = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    iget-object v1, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->connectedSensors:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    const-string v1, ", .maxSupportedMsgLen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    iget v1, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->maxSupportedMsgLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    const-string v1, ", .chrePlatformId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget-wide v1, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->chrePlatformId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 136
    const-string v1, ", .chreApiMajorVersion = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    iget-byte v1, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->chreApiMajorVersion:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    const-string v1, ", .chreApiMinorVersion = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget-byte v1, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->chreApiMinorVersion:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    const-string v1, ", .chrePatchVersion = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    iget-short v1, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->chrePatchVersion:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 14
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 247
    const-wide/16 v0, 0x0

    add-long v2, p2, v0

    iget-object v4, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->name:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 248
    const-wide/16 v2, 0x10

    add-long/2addr v2, p2

    iget-object v4, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->vendor:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 249
    const-wide/16 v2, 0x20

    add-long/2addr v2, p2

    iget-object v4, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->toolchain:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 250
    const-wide/16 v2, 0x30

    add-long/2addr v2, p2

    iget v4, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->platformVersion:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 251
    const-wide/16 v2, 0x34

    add-long/2addr v2, p2

    iget v4, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->toolchainVersion:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 252
    const-wide/16 v2, 0x38

    add-long/2addr v2, p2

    iget v4, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->hubId:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 253
    const-wide/16 v2, 0x3c

    add-long/2addr v2, p2

    iget v4, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->peakMips:F

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putFloat(JF)V

    .line 254
    const-wide/16 v2, 0x40

    add-long/2addr v2, p2

    iget v4, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->stoppedPowerDrawMw:F

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putFloat(JF)V

    .line 255
    const-wide/16 v2, 0x44

    add-long/2addr v2, p2

    iget v4, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->sleepPowerDrawMw:F

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putFloat(JF)V

    .line 256
    const-wide/16 v2, 0x48

    add-long/2addr v2, p2

    iget v4, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->peakPowerDrawMw:F

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putFloat(JF)V

    .line 258
    iget-object v2, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->connectedSensors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 259
    .local v2, "_hidl_vec_size":I
    const-wide/16 v3, 0x50

    add-long v5, p2, v3

    const-wide/16 v7, 0x8

    add-long/2addr v5, v7

    invoke-virtual {p1, v5, v6, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 260
    add-long v5, p2, v3

    const-wide/16 v7, 0xc

    add-long/2addr v5, v7

    const/4 v7, 0x0

    invoke-virtual {p1, v5, v6, v7}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 261
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v2, 0x60

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 262
    .local v5, "childBlob":Landroid/os/HwBlob;
    const/4 v6, 0x0

    .local v6, "_hidl_index_0":I
    :goto_72
    if-ge v6, v2, :cond_85

    .line 263
    iget-object v7, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->connectedSensors:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/contexthub/V1_0/PhysicalSensor;

    mul-int/lit8 v8, v6, 0x60

    int-to-long v8, v8

    invoke-virtual {v7, v5, v8, v9}, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 262
    add-int/lit8 v6, v6, 0x1

    goto :goto_72

    .line 265
    .end local v6    # "_hidl_index_0":I
    :cond_85
    add-long/2addr v3, p2

    add-long/2addr v3, v0

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 267
    .end local v2    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    const-wide/16 v0, 0x60

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->maxSupportedMsgLen:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 268
    const-wide/16 v0, 0x68

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->chrePlatformId:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt64(JJ)V

    .line 269
    const-wide/16 v0, 0x70

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->chreApiMajorVersion:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 270
    const-wide/16 v0, 0x71

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->chreApiMinorVersion:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 271
    const-wide/16 v0, 0x72

    add-long/2addr v0, p2

    iget-short v2, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->chrePatchVersion:S

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt16(JS)V

    .line 272
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 223
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x78

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 224
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/contexthub/V1_0/ContextHub;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 225
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 226
    return-void
.end method
