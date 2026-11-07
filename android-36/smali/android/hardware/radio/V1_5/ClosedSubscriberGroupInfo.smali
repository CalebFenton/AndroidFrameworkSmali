.class public final Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;
.super Ljava/lang/Object;
.source "ClosedSubscriberGroupInfo.java"


# instance fields
.field public blacklist csgIdentity:I

.field public blacklist csgIndication:Z

.field public blacklist homeNodebName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;->csgIndication:Z

    .line 18
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;->homeNodebName:Ljava/lang/String;

    .line 24
    iput v0, p0, Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;->csgIdentity:I

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
            "Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;",
            ">;"
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 82
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 83
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x20

    int-to-long v5, v3

    .line 84
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 83
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 87
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 88
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 89
    new-instance v5, Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;-><init>()V

    .line 90
    .local v5, "_hidl_vec_element":Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;
    mul-int/lit8 v6, v3, 0x20

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 91
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .end local v5    # "_hidl_vec_element":Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 95
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
            "Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;",
            ">;)V"
        }
    .end annotation

    .line 119
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 121
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 122
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 123
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 124
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x20

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 125
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 126
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;

    mul-int/lit8 v5, v3, 0x20

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 125
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 128
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 131
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 132
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 28
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 29
    return v0

    .line 31
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 32
    return v1

    .line 34
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;

    if-eq v2, v3, :cond_11

    .line 35
    return v1

    .line 37
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;

    .line 38
    .local v2, "other":Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;
    iget-boolean v3, p0, Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;->csgIndication:Z

    iget-boolean v4, v2, Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;->csgIndication:Z

    if-eq v3, v4, :cond_1b

    .line 39
    return v1

    .line 41
    :cond_1b
    iget-object v3, p0, Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;->homeNodebName:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;->homeNodebName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 42
    return v1

    .line 44
    :cond_26
    iget v3, p0, Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;->csgIdentity:I

    iget v4, v2, Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;->csgIdentity:I

    if-eq v3, v4, :cond_2d

    .line 45
    return v1

    .line 47
    :cond_2d
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 4

    .line 52
    iget-boolean v0, p0, Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;->csgIndication:Z

    .line 53
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;->homeNodebName:Ljava/lang/String;

    .line 54
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;->csgIdentity:I

    .line 55
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 52
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
    move-object/from16 v0, p2

    const-wide/16 v1, 0x0

    add-long v3, p3, v1

    invoke-virtual {v0, v3, v4}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v3

    iput-boolean v3, p0, Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;->csgIndication:Z

    .line 101
    const-wide/16 v3, 0x8

    add-long v5, p3, v3

    invoke-virtual {v0, v5, v6}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;->homeNodebName:Ljava/lang/String;

    .line 103
    iget-object v5, p0, Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;->homeNodebName:Ljava/lang/String;

    .line 104
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    int-to-long v7, v5

    .line 105
    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    move-result-wide v9

    add-long v3, p3, v3

    add-long v11, v3, v1

    .line 103
    const/4 v13, 0x0

    move-object v6, p1

    invoke-virtual/range {v6 .. v13}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 108
    const-wide/16 v1, 0x18

    add-long v1, p3, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, p0, Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;->csgIdentity:I

    .line 109
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 73
    const-wide/16 v0, 0x20

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 74
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 75
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string v1, ".csgIndication = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget-boolean v1, p0, Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;->csgIndication:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 64
    const-string v1, ", .homeNodebName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-object v1, p0, Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;->homeNodebName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, ", .csgIdentity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget v1, p0, Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;->csgIdentity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 136
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-boolean v2, p0, Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;->csgIndication:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 137
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget-object v2, p0, Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;->homeNodebName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 138
    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;->csgIdentity:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 139
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 112
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 113
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_5/ClosedSubscriberGroupInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 114
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 115
    return-void
.end method
