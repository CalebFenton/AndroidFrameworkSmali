.class public final Landroid/hardware/radio/V1_6/QosSession;
.super Ljava/lang/Object;
.source "QosSession.java"


# instance fields
.field public blacklist qos:Landroid/hardware/radio/V1_6/Qos;

.field public blacklist qosFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_6/QosFilter;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist qosSessionId:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/radio/V1_6/QosSession;->qosSessionId:I

    .line 12
    new-instance v0, Landroid/hardware/radio/V1_6/Qos;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/Qos;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/QosSession;->qos:Landroid/hardware/radio/V1_6/Qos;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/QosSession;->qosFilters:Ljava/util/ArrayList;

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
            "Landroid/hardware/radio/V1_6/QosSession;",
            ">;"
        }
    .end annotation

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_6/QosSession;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 74
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 75
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x30

    int-to-long v5, v3

    .line 76
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 75
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 79
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 80
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 81
    new-instance v5, Landroid/hardware/radio/V1_6/QosSession;

    invoke-direct {v5}, Landroid/hardware/radio/V1_6/QosSession;-><init>()V

    .line 82
    .local v5, "_hidl_vec_element":Landroid/hardware/radio/V1_6/QosSession;
    mul-int/lit8 v6, v3, 0x30

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/radio/V1_6/QosSession;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 83
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .end local v5    # "_hidl_vec_element":Landroid/hardware/radio/V1_6/QosSession;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 87
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
            "Landroid/hardware/radio/V1_6/QosSession;",
            ">;)V"
        }
    .end annotation

    .line 117
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_6/QosSession;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 119
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 120
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 121
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 122
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x30

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 123
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 124
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_6/QosSession;

    mul-int/lit8 v5, v3, 0x30

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/radio/V1_6/QosSession;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 123
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 126
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 129
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 130
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 20
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 21
    return v0

    .line 23
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 24
    return v1

    .line 26
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_6/QosSession;

    if-eq v2, v3, :cond_11

    .line 27
    return v1

    .line 29
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/V1_6/QosSession;

    .line 30
    .local v2, "other":Landroid/hardware/radio/V1_6/QosSession;
    iget v3, p0, Landroid/hardware/radio/V1_6/QosSession;->qosSessionId:I

    iget v4, v2, Landroid/hardware/radio/V1_6/QosSession;->qosSessionId:I

    if-eq v3, v4, :cond_1b

    .line 31
    return v1

    .line 33
    :cond_1b
    iget-object v3, p0, Landroid/hardware/radio/V1_6/QosSession;->qos:Landroid/hardware/radio/V1_6/Qos;

    iget-object v4, v2, Landroid/hardware/radio/V1_6/QosSession;->qos:Landroid/hardware/radio/V1_6/Qos;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 34
    return v1

    .line 36
    :cond_26
    iget-object v3, p0, Landroid/hardware/radio/V1_6/QosSession;->qosFilters:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_6/QosSession;->qosFilters:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 37
    return v1

    .line 39
    :cond_31
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 4

    .line 44
    iget v0, p0, Landroid/hardware/radio/V1_6/QosSession;->qosSessionId:I

    .line 45
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/V1_6/QosSession;->qos:Landroid/hardware/radio/V1_6/Qos;

    .line 46
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/V1_6/QosSession;->qosFilters:Ljava/util/ArrayList;

    .line 47
    invoke-static {v2}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 44
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 16
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 92
    const-wide/16 v1, 0x0

    add-long v3, p3, v1

    invoke-virtual {p2, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iput v3, p0, Landroid/hardware/radio/V1_6/QosSession;->qosSessionId:I

    .line 93
    iget-object v3, p0, Landroid/hardware/radio/V1_6/QosSession;->qos:Landroid/hardware/radio/V1_6/Qos;

    const-wide/16 v4, 0x4

    add-long/2addr v4, p3

    invoke-virtual {v3, p1, p2, v4, v5}, Landroid/hardware/radio/V1_6/Qos;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 95
    const-wide/16 v3, 0x20

    add-long v5, p3, v3

    const-wide/16 v8, 0x8

    add-long/2addr v5, v8

    invoke-virtual {p2, v5, v6}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v8

    .line 96
    .local v8, "_hidl_vec_size":I
    mul-int/lit8 v5, v8, 0x58

    int-to-long v5, v5

    .line 97
    move-wide v9, v3

    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v3

    add-long/2addr v9, p3

    add-long/2addr v9, v1

    .line 96
    const/4 v7, 0x1

    move-object v0, p1

    move-wide v1, v5

    move-wide v5, v9

    invoke-virtual/range {v0 .. v7}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 100
    .local v1, "childBlob":Landroid/os/HwBlob;
    iget-object v2, p0, Landroid/hardware/radio/V1_6/QosSession;->qosFilters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 101
    const/4 v2, 0x0

    .local v2, "_hidl_index_0":I
    :goto_35
    if-ge v2, v8, :cond_4a

    .line 102
    new-instance v3, Landroid/hardware/radio/V1_6/QosFilter;

    invoke-direct {v3}, Landroid/hardware/radio/V1_6/QosFilter;-><init>()V

    .line 103
    .local v3, "_hidl_vec_element":Landroid/hardware/radio/V1_6/QosFilter;
    mul-int/lit8 v4, v2, 0x58

    int-to-long v4, v4

    invoke-virtual {v3, p1, v1, v4, v5}, Landroid/hardware/radio/V1_6/QosFilter;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 104
    iget-object v4, p0, Landroid/hardware/radio/V1_6/QosSession;->qosFilters:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .end local v3    # "_hidl_vec_element":Landroid/hardware/radio/V1_6/QosFilter;
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 107
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v2    # "_hidl_index_0":I
    .end local v8    # "_hidl_vec_size":I
    :cond_4a
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 65
    const-wide/16 v0, 0x30

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 66
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_6/QosSession;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 67
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const-string v1, ".qosSessionId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget v1, p0, Landroid/hardware/radio/V1_6/QosSession;->qosSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    const-string v1, ", .qos = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-object v1, p0, Landroid/hardware/radio/V1_6/QosSession;->qos:Landroid/hardware/radio/V1_6/Qos;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    const-string v1, ", .qosFilters = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-object v1, p0, Landroid/hardware/radio/V1_6/QosSession;->qosFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 14
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 134
    const-wide/16 v0, 0x0

    add-long v2, p2, v0

    iget v4, p0, Landroid/hardware/radio/V1_6/QosSession;->qosSessionId:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 135
    iget-object v2, p0, Landroid/hardware/radio/V1_6/QosSession;->qos:Landroid/hardware/radio/V1_6/Qos;

    const-wide/16 v3, 0x4

    add-long/2addr v3, p2

    invoke-virtual {v2, p1, v3, v4}, Landroid/hardware/radio/V1_6/Qos;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 137
    iget-object v2, p0, Landroid/hardware/radio/V1_6/QosSession;->qosFilters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 138
    .local v2, "_hidl_vec_size":I
    const-wide/16 v3, 0x20

    add-long v5, p2, v3

    const-wide/16 v7, 0x8

    add-long/2addr v5, v7

    invoke-virtual {p1, v5, v6, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 139
    add-long v5, p2, v3

    const-wide/16 v7, 0xc

    add-long/2addr v5, v7

    const/4 v7, 0x0

    invoke-virtual {p1, v5, v6, v7}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 140
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v2, 0x58

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 141
    .local v5, "childBlob":Landroid/os/HwBlob;
    const/4 v6, 0x0

    .local v6, "_hidl_index_0":I
    :goto_32
    if-ge v6, v2, :cond_45

    .line 142
    iget-object v7, p0, Landroid/hardware/radio/V1_6/QosSession;->qosFilters:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/radio/V1_6/QosFilter;

    mul-int/lit8 v8, v6, 0x58

    int-to-long v8, v8

    invoke-virtual {v7, v5, v8, v9}, Landroid/hardware/radio/V1_6/QosFilter;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 141
    add-int/lit8 v6, v6, 0x1

    goto :goto_32

    .line 144
    .end local v6    # "_hidl_index_0":I
    :cond_45
    add-long/2addr v3, p2

    add-long/2addr v3, v0

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 146
    .end local v2    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 110
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 111
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_6/QosSession;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 112
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 113
    return-void
.end method
