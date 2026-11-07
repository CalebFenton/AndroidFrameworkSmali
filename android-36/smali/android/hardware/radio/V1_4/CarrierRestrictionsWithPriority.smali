.class public final Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;
.super Ljava/lang/Object;
.source "CarrierRestrictionsWithPriority.java"


# instance fields
.field public blacklist allowedCarriers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/Carrier;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist allowedCarriersPrioritized:Z

.field public blacklist excludedCarriers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/Carrier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->allowedCarriers:Ljava/util/ArrayList;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->excludedCarriers:Ljava/util/ArrayList;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->allowedCarriersPrioritized:Z

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
            "Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;",
            ">;"
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 81
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 82
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x28

    int-to-long v5, v3

    .line 83
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 82
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 86
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 87
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 88
    new-instance v5, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;

    invoke-direct {v5}, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;-><init>()V

    .line 89
    .local v5, "_hidl_vec_element":Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;
    mul-int/lit8 v6, v3, 0x28

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 90
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .end local v5    # "_hidl_vec_element":Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 94
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
            "Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;",
            ">;)V"
        }
    .end annotation

    .line 136
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 138
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 139
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 140
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 141
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x28

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 142
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 143
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;

    mul-int/lit8 v5, v3, 0x28

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 142
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 145
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 148
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 149
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 27
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 28
    return v0

    .line 30
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 31
    return v1

    .line 33
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;

    if-eq v2, v3, :cond_11

    .line 34
    return v1

    .line 36
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;

    .line 37
    .local v2, "other":Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;
    iget-object v3, p0, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->allowedCarriers:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->allowedCarriers:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 38
    return v1

    .line 40
    :cond_1f
    iget-object v3, p0, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->excludedCarriers:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->excludedCarriers:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 41
    return v1

    .line 43
    :cond_2a
    iget-boolean v3, p0, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->allowedCarriersPrioritized:Z

    iget-boolean v4, v2, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->allowedCarriersPrioritized:Z

    if-eq v3, v4, :cond_31

    .line 44
    return v1

    .line 46
    :cond_31
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 4

    .line 51
    iget-object v0, p0, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->allowedCarriers:Ljava/util/ArrayList;

    .line 52
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->excludedCarriers:Ljava/util/ArrayList;

    .line 53
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->allowedCarriersPrioritized:Z

    .line 54
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 51
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 19
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 100
    move-object/from16 v8, p2

    const-wide/16 v9, 0x0

    add-long v0, p3, v9

    const-wide/16 v11, 0x8

    add-long/2addr v0, v11

    invoke-virtual {v8, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v13

    .line 101
    .local v13, "_hidl_vec_size":I
    mul-int/lit8 v0, v13, 0x38

    int-to-long v1, v0

    .line 102
    invoke-virtual {v8}, Landroid/os/HwBlob;->handle()J

    move-result-wide v3

    add-long v5, p3, v9

    add-long/2addr v5, v9

    .line 101
    const/4 v7, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 105
    .local v1, "childBlob":Landroid/os/HwBlob;
    iget-object v2, p0, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->allowedCarriers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 106
    const/4 v2, 0x0

    .local v2, "_hidl_index_0":I
    :goto_23
    if-ge v2, v13, :cond_38

    .line 107
    new-instance v3, Landroid/hardware/radio/V1_0/Carrier;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/Carrier;-><init>()V

    .line 108
    .local v3, "_hidl_vec_element":Landroid/hardware/radio/V1_0/Carrier;
    mul-int/lit8 v4, v2, 0x38

    int-to-long v4, v4

    invoke-virtual {v3, p1, v1, v4, v5}, Landroid/hardware/radio/V1_0/Carrier;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 109
    iget-object v4, p0, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->allowedCarriers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    .end local v3    # "_hidl_vec_element":Landroid/hardware/radio/V1_0/Carrier;
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 113
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v2    # "_hidl_index_0":I
    .end local v13    # "_hidl_vec_size":I
    :cond_38
    const-wide/16 v1, 0x10

    add-long v3, p3, v1

    add-long/2addr v3, v11

    invoke-virtual {v8, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v11

    .line 114
    .local v11, "_hidl_vec_size":I
    mul-int/lit8 v3, v11, 0x38

    int-to-long v3, v3

    .line 115
    move-wide v5, v1

    move-wide v1, v3

    invoke-virtual {v8}, Landroid/os/HwBlob;->handle()J

    move-result-wide v3

    add-long v5, p3, v5

    add-long/2addr v5, v9

    .line 114
    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 118
    .restart local v1    # "childBlob":Landroid/os/HwBlob;
    iget-object v2, p0, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->excludedCarriers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 119
    const/4 v2, 0x0

    .restart local v2    # "_hidl_index_0":I
    :goto_58
    if-ge v2, v11, :cond_6d

    .line 120
    new-instance v3, Landroid/hardware/radio/V1_0/Carrier;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/Carrier;-><init>()V

    .line 121
    .restart local v3    # "_hidl_vec_element":Landroid/hardware/radio/V1_0/Carrier;
    mul-int/lit8 v4, v2, 0x38

    int-to-long v4, v4

    invoke-virtual {v3, p1, v1, v4, v5}, Landroid/hardware/radio/V1_0/Carrier;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 122
    iget-object v4, p0, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->excludedCarriers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    .end local v3    # "_hidl_vec_element":Landroid/hardware/radio/V1_0/Carrier;
    add-int/lit8 v2, v2, 0x1

    goto :goto_58

    .line 125
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v2    # "_hidl_index_0":I
    .end local v11    # "_hidl_vec_size":I
    :cond_6d
    const-wide/16 v1, 0x20

    add-long v1, p3, v1

    invoke-virtual {v8, v1, v2}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v1

    iput-boolean v1, p0, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->allowedCarriersPrioritized:Z

    .line 126
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 72
    const-wide/16 v0, 0x28

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 73
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 74
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, ".allowedCarriers = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget-object v1, p0, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->allowedCarriers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    const-string v1, ", .excludedCarriers = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget-object v1, p0, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->excludedCarriers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    const-string v1, ", .allowedCarriersPrioritized = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-boolean v1, p0, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->allowedCarriersPrioritized:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 67
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 17
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 154
    iget-object v0, p0, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->allowedCarriers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 155
    .local v0, "_hidl_vec_size":I
    const-wide/16 v1, 0x0

    add-long v3, p2, v1

    const-wide/16 v5, 0x8

    add-long/2addr v3, v5

    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 156
    add-long v3, p2, v1

    const-wide/16 v7, 0xc

    add-long/2addr v3, v7

    const/4 v9, 0x0

    invoke-virtual {p1, v3, v4, v9}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 157
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v0, 0x38

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 158
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_21
    if-ge v4, v0, :cond_34

    .line 159
    iget-object v10, p0, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->allowedCarriers:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/radio/V1_0/Carrier;

    mul-int/lit8 v11, v4, 0x38

    int-to-long v11, v11

    invoke-virtual {v10, v3, v11, v12}, Landroid/hardware/radio/V1_0/Carrier;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 158
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 161
    .end local v4    # "_hidl_index_0":I
    :cond_34
    add-long v10, p2, v1

    add-long/2addr v10, v1

    invoke-virtual {p1, v10, v11, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 164
    .end local v0    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    iget-object v0, p0, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->excludedCarriers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 165
    .restart local v0    # "_hidl_vec_size":I
    const-wide/16 v3, 0x10

    add-long v10, p2, v3

    add-long/2addr v10, v5

    invoke-virtual {p1, v10, v11, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 166
    add-long v5, p2, v3

    add-long/2addr v5, v7

    invoke-virtual {p1, v5, v6, v9}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 167
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v0, 0x38

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 168
    .local v5, "childBlob":Landroid/os/HwBlob;
    const/4 v6, 0x0

    .local v6, "_hidl_index_0":I
    :goto_56
    if-ge v6, v0, :cond_69

    .line 169
    iget-object v7, p0, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->excludedCarriers:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/radio/V1_0/Carrier;

    mul-int/lit8 v8, v6, 0x38

    int-to-long v8, v8

    invoke-virtual {v7, v5, v8, v9}, Landroid/hardware/radio/V1_0/Carrier;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 168
    add-int/lit8 v6, v6, 0x1

    goto :goto_56

    .line 171
    .end local v6    # "_hidl_index_0":I
    :cond_69
    add-long/2addr v3, p2

    add-long/2addr v3, v1

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 173
    .end local v0    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    const-wide/16 v0, 0x20

    add-long/2addr v0, p2

    iget-boolean v2, p0, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->allowedCarriersPrioritized:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 174
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 129
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 130
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 131
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 132
    return-void
.end method
