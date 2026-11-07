.class public final Landroid/hardware/radio/V1_5/SignalThresholdInfo;
.super Ljava/lang/Object;
.source "SignalThresholdInfo.java"


# instance fields
.field public blacklist hysteresisDb:I

.field public blacklist hysteresisMs:I

.field public blacklist isEnabled:Z

.field public blacklist signalMeasurement:I

.field public blacklist thresholds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/radio/V1_5/SignalThresholdInfo;->signalMeasurement:I

    .line 12
    iput v0, p0, Landroid/hardware/radio/V1_5/SignalThresholdInfo;->hysteresisMs:I

    .line 18
    iput v0, p0, Landroid/hardware/radio/V1_5/SignalThresholdInfo;->hysteresisDb:I

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_5/SignalThresholdInfo;->thresholds:Ljava/util/ArrayList;

    .line 33
    iput-boolean v0, p0, Landroid/hardware/radio/V1_5/SignalThresholdInfo;->isEnabled:Z

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
            "Landroid/hardware/radio/V1_5/SignalThresholdInfo;",
            ">;"
        }
    .end annotation

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/SignalThresholdInfo;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 103
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 104
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x28

    int-to-long v5, v3

    .line 105
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 104
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 108
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 109
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 110
    new-instance v5, Landroid/hardware/radio/V1_5/SignalThresholdInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_5/SignalThresholdInfo;-><init>()V

    .line 111
    .local v5, "_hidl_vec_element":Landroid/hardware/radio/V1_5/SignalThresholdInfo;
    mul-int/lit8 v6, v3, 0x28

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/radio/V1_5/SignalThresholdInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 112
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    .end local v5    # "_hidl_vec_element":Landroid/hardware/radio/V1_5/SignalThresholdInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 116
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
            "Landroid/hardware/radio/V1_5/SignalThresholdInfo;",
            ">;)V"
        }
    .end annotation

    .line 148
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/SignalThresholdInfo;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 150
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 151
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 152
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 153
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x28

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 154
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 155
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_5/SignalThresholdInfo;

    mul-int/lit8 v5, v3, 0x28

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/radio/V1_5/SignalThresholdInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 154
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 157
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 160
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 161
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 37
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 38
    return v0

    .line 40
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 41
    return v1

    .line 43
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_5/SignalThresholdInfo;

    if-eq v2, v3, :cond_11

    .line 44
    return v1

    .line 46
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/V1_5/SignalThresholdInfo;

    .line 47
    .local v2, "other":Landroid/hardware/radio/V1_5/SignalThresholdInfo;
    iget v3, p0, Landroid/hardware/radio/V1_5/SignalThresholdInfo;->signalMeasurement:I

    iget v4, v2, Landroid/hardware/radio/V1_5/SignalThresholdInfo;->signalMeasurement:I

    if-eq v3, v4, :cond_1b

    .line 48
    return v1

    .line 50
    :cond_1b
    iget v3, p0, Landroid/hardware/radio/V1_5/SignalThresholdInfo;->hysteresisMs:I

    iget v4, v2, Landroid/hardware/radio/V1_5/SignalThresholdInfo;->hysteresisMs:I

    if-eq v3, v4, :cond_22

    .line 51
    return v1

    .line 53
    :cond_22
    iget v3, p0, Landroid/hardware/radio/V1_5/SignalThresholdInfo;->hysteresisDb:I

    iget v4, v2, Landroid/hardware/radio/V1_5/SignalThresholdInfo;->hysteresisDb:I

    if-eq v3, v4, :cond_29

    .line 54
    return v1

    .line 56
    :cond_29
    iget-object v3, p0, Landroid/hardware/radio/V1_5/SignalThresholdInfo;->thresholds:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_5/SignalThresholdInfo;->thresholds:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    .line 57
    return v1

    .line 59
    :cond_34
    iget-boolean v3, p0, Landroid/hardware/radio/V1_5/SignalThresholdInfo;->isEnabled:Z

    iget-boolean v4, v2, Landroid/hardware/radio/V1_5/SignalThresholdInfo;->isEnabled:Z

    if-eq v3, v4, :cond_3b

    .line 60
    return v1

    .line 62
    :cond_3b
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 6

    .line 67
    iget v0, p0, Landroid/hardware/radio/V1_5/SignalThresholdInfo;->signalMeasurement:I

    .line 68
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/V1_5/SignalThresholdInfo;->hysteresisMs:I

    .line 69
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/hardware/radio/V1_5/SignalThresholdInfo;->hysteresisDb:I

    .line 70
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/radio/V1_5/SignalThresholdInfo;->thresholds:Ljava/util/ArrayList;

    .line 71
    invoke-static {v3}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-boolean v4, p0, Landroid/hardware/radio/V1_5/SignalThresholdInfo;->isEnabled:Z

    .line 72
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 67
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 21
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 121
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/radio/V1_5/SignalThresholdInfo;->signalMeasurement:I

    .line 122
    const-wide/16 v4, 0x4

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/radio/V1_5/SignalThresholdInfo;->hysteresisMs:I

    .line 123
    const-wide/16 v4, 0x8

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Landroid/hardware/radio/V1_5/SignalThresholdInfo;->hysteresisDb:I

    .line 125
    const-wide/16 v6, 0x10

    add-long v8, p3, v6

    add-long/2addr v8, v4

    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    .line 126
    .local v4, "_hidl_vec_size":I
    mul-int/lit8 v5, v4, 0x4

    int-to-long v9, v5

    .line 127
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v11

    add-long v6, p3, v6

    add-long v13, v6, v2

    .line 126
    const/4 v15, 0x1

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v15}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 130
    .local v2, "childBlob":Landroid/os/HwBlob;
    iget-object v3, v0, Landroid/hardware/radio/V1_5/SignalThresholdInfo;->thresholds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 131
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_43
    if-ge v3, v4, :cond_59

    .line 132
    const/4 v5, 0x0

    .line 133
    .local v5, "_hidl_vec_element":I
    mul-int/lit8 v6, v3, 0x4

    int-to-long v6, v6

    invoke-virtual {v2, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v5

    .line 134
    iget-object v6, v0, Landroid/hardware/radio/V1_5/SignalThresholdInfo;->thresholds:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    .end local v5    # "_hidl_vec_element":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_43

    .line 137
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_index_0":I
    .end local v4    # "_hidl_vec_size":I
    :cond_59
    const-wide/16 v2, 0x20

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, v0, Landroid/hardware/radio/V1_5/SignalThresholdInfo;->isEnabled:Z

    .line 138
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 94
    const-wide/16 v0, 0x28

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 95
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_5/SignalThresholdInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 96
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    const-string v1, ".signalMeasurement = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    iget v1, p0, Landroid/hardware/radio/V1_5/SignalThresholdInfo;->signalMeasurement:I

    invoke-static {v1}, Landroid/hardware/radio/V1_5/SignalMeasurementType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    const-string v1, ", .hysteresisMs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget v1, p0, Landroid/hardware/radio/V1_5/SignalThresholdInfo;->hysteresisMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    const-string v1, ", .hysteresisDb = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget v1, p0, Landroid/hardware/radio/V1_5/SignalThresholdInfo;->hysteresisDb:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    const-string v1, ", .thresholds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-object v1, p0, Landroid/hardware/radio/V1_5/SignalThresholdInfo;->thresholds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    const-string v1, ", .isEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget-boolean v1, p0, Landroid/hardware/radio/V1_5/SignalThresholdInfo;->isEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 89
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 14
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 165
    const-wide/16 v0, 0x0

    add-long v2, p2, v0

    iget v4, p0, Landroid/hardware/radio/V1_5/SignalThresholdInfo;->signalMeasurement:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 166
    const-wide/16 v2, 0x4

    add-long/2addr v2, p2

    iget v4, p0, Landroid/hardware/radio/V1_5/SignalThresholdInfo;->hysteresisMs:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 167
    const-wide/16 v2, 0x8

    add-long v4, p2, v2

    iget v6, p0, Landroid/hardware/radio/V1_5/SignalThresholdInfo;->hysteresisDb:I

    invoke-virtual {p1, v4, v5, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 169
    iget-object v4, p0, Landroid/hardware/radio/V1_5/SignalThresholdInfo;->thresholds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 170
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x10

    add-long v7, p2, v5

    add-long/2addr v7, v2

    invoke-virtual {p1, v7, v8, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 171
    add-long v2, p2, v5

    const-wide/16 v7, 0xc

    add-long/2addr v2, v7

    const/4 v7, 0x0

    invoke-virtual {p1, v2, v3, v7}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 172
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v4, 0x4

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 173
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_39
    if-ge v3, v4, :cond_50

    .line 174
    mul-int/lit8 v7, v3, 0x4

    int-to-long v7, v7

    iget-object v9, p0, Landroid/hardware/radio/V1_5/SignalThresholdInfo;->thresholds:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v2, v7, v8, v9}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 173
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 176
    .end local v3    # "_hidl_index_0":I
    :cond_50
    add-long/2addr v5, p2

    add-long/2addr v5, v0

    invoke-virtual {p1, v5, v6, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 178
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_vec_size":I
    const-wide/16 v0, 0x20

    add-long/2addr v0, p2

    iget-boolean v2, p0, Landroid/hardware/radio/V1_5/SignalThresholdInfo;->isEnabled:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 179
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 141
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 142
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_5/SignalThresholdInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 143
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 144
    return-void
.end method
