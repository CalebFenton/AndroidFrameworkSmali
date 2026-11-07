.class public final Landroid/hardware/radio/V1_0/CdmaCallWaiting;
.super Ljava/lang/Object;
.source "CdmaCallWaiting.java"


# instance fields
.field public blacklist name:Ljava/lang/String;

.field public blacklist number:Ljava/lang/String;

.field public blacklist numberPlan:I

.field public blacklist numberPresentation:I

.field public blacklist numberType:I

.field public blacklist signalInfoRecord:Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->number:Ljava/lang/String;

    .line 6
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->numberPresentation:I

    .line 7
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->name:Ljava/lang/String;

    .line 8
    new-instance v1, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->signalInfoRecord:Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;

    .line 9
    iput v0, p0, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->numberType:I

    .line 10
    iput v0, p0, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->numberPlan:I

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
            "Landroid/hardware/radio/V1_0/CdmaCallWaiting;",
            ">;"
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaCallWaiting;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 86
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 87
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x38

    int-to-long v5, v3

    .line 88
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 87
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 91
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 92
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 93
    new-instance v5, Landroid/hardware/radio/V1_0/CdmaCallWaiting;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/CdmaCallWaiting;-><init>()V

    .line 94
    .local v5, "_hidl_vec_element":Landroid/hardware/radio/V1_0/CdmaCallWaiting;
    mul-int/lit8 v6, v3, 0x38

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 95
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .end local v5    # "_hidl_vec_element":Landroid/hardware/radio/V1_0/CdmaCallWaiting;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 99
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
            "Landroid/hardware/radio/V1_0/CdmaCallWaiting;",
            ">;)V"
        }
    .end annotation

    .line 132
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaCallWaiting;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 134
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 135
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 136
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 137
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x38

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 138
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 139
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/CdmaCallWaiting;

    mul-int/lit8 v5, v3, 0x38

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 138
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 141
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 144
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 145
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 14
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 15
    return v0

    .line 17
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 18
    return v1

    .line 20
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_0/CdmaCallWaiting;

    if-eq v2, v3, :cond_11

    .line 21
    return v1

    .line 23
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/V1_0/CdmaCallWaiting;

    .line 24
    .local v2, "other":Landroid/hardware/radio/V1_0/CdmaCallWaiting;
    iget-object v3, p0, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->number:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->number:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 25
    return v1

    .line 27
    :cond_1f
    iget v3, p0, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->numberPresentation:I

    iget v4, v2, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->numberPresentation:I

    if-eq v3, v4, :cond_26

    .line 28
    return v1

    .line 30
    :cond_26
    iget-object v3, p0, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->name:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 31
    return v1

    .line 33
    :cond_31
    iget-object v3, p0, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->signalInfoRecord:Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;

    iget-object v4, v2, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->signalInfoRecord:Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    .line 34
    return v1

    .line 36
    :cond_3c
    iget v3, p0, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->numberType:I

    iget v4, v2, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->numberType:I

    if-eq v3, v4, :cond_43

    .line 37
    return v1

    .line 39
    :cond_43
    iget v3, p0, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->numberPlan:I

    iget v4, v2, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->numberPlan:I

    if-eq v3, v4, :cond_4a

    .line 40
    return v1

    .line 42
    :cond_4a
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 8

    .line 47
    iget-object v0, p0, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->number:Ljava/lang/String;

    .line 48
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->numberPresentation:I

    .line 49
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->name:Ljava/lang/String;

    .line 50
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v0, p0, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->signalInfoRecord:Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;

    .line 51
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->numberType:I

    .line 52
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->numberPlan:I

    .line 53
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 47
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 26
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 104
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->number:Ljava/lang/String;

    .line 106
    iget-object v4, v0, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->number:Ljava/lang/String;

    .line 107
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    int-to-long v6, v4

    .line 108
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v8

    add-long v4, p3, v2

    add-long v10, v4, v2

    .line 106
    const/4 v12, 0x0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v12}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 111
    const-wide/16 v4, 0x10

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->numberPresentation:I

    .line 112
    const-wide/16 v4, 0x18

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->name:Ljava/lang/String;

    .line 114
    iget-object v6, v0, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->name:Ljava/lang/String;

    .line 115
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v14, v6

    .line 116
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v16

    add-long v4, p3, v4

    add-long v18, v4, v2

    .line 114
    const/16 v20, 0x0

    move-object/from16 v13, p1

    invoke-virtual/range {v13 .. v20}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 119
    iget-object v2, v0, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->signalInfoRecord:Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;

    const-wide/16 v3, 0x28

    add-long v3, p3, v3

    invoke-virtual {v2, v13, v1, v3, v4}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 120
    const-wide/16 v2, 0x2c

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->numberType:I

    .line 121
    const-wide/16 v2, 0x30

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->numberPlan:I

    .line 122
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 77
    const-wide/16 v0, 0x38

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 78
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 79
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v1, ".number = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string v1, ", .numberPresentation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget v1, p0, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->numberPresentation:I

    invoke-static {v1}, Landroid/hardware/radio/V1_0/CdmaCallWaitingNumberPresentation;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string v1, ", .name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, ", .signalInfoRecord = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->signalInfoRecord:Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    const-string v1, ", .numberType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget v1, p0, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->numberType:I

    invoke-static {v1}, Landroid/hardware/radio/V1_0/CdmaCallWaitingNumberType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string v1, ", .numberPlan = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget v1, p0, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->numberPlan:I

    invoke-static {v1}, Landroid/hardware/radio/V1_0/CdmaCallWaitingNumberPlan;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 149
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-object v2, p0, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->number:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 150
    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->numberPresentation:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 151
    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    iget-object v2, p0, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 152
    iget-object v0, p0, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->signalInfoRecord:Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;

    const-wide/16 v1, 0x28

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 153
    const-wide/16 v0, 0x2c

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->numberType:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 154
    const-wide/16 v0, 0x30

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->numberPlan:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 155
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 125
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x38

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 126
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 127
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 128
    return-void
.end method
