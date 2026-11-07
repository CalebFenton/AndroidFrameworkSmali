.class public final Landroid/hardware/contexthub/V1_2/HubAppInfo;
.super Ljava/lang/Object;
.source "HubAppInfo.java"


# instance fields
.field public blacklist info_1_0:Landroid/hardware/contexthub/V1_0/HubAppInfo;

.field public blacklist permissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Landroid/hardware/contexthub/V1_0/HubAppInfo;

    invoke-direct {v0}, Landroid/hardware/contexthub/V1_0/HubAppInfo;-><init>()V

    iput-object v0, p0, Landroid/hardware/contexthub/V1_2/HubAppInfo;->info_1_0:Landroid/hardware/contexthub/V1_0/HubAppInfo;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/contexthub/V1_2/HubAppInfo;->permissions:Ljava/util/ArrayList;

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
            "Landroid/hardware/contexthub/V1_2/HubAppInfo;",
            ">;"
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/contexthub/V1_2/HubAppInfo;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 69
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 70
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x38

    int-to-long v5, v3

    .line 71
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 70
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 74
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 75
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 76
    new-instance v5, Landroid/hardware/contexthub/V1_2/HubAppInfo;

    invoke-direct {v5}, Landroid/hardware/contexthub/V1_2/HubAppInfo;-><init>()V

    .line 77
    .local v5, "_hidl_vec_element":Landroid/hardware/contexthub/V1_2/HubAppInfo;
    mul-int/lit8 v6, v3, 0x38

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/contexthub/V1_2/HubAppInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 78
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .end local v5    # "_hidl_vec_element":Landroid/hardware/contexthub/V1_2/HubAppInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 82
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
            "Landroid/hardware/contexthub/V1_2/HubAppInfo;",
            ">;)V"
        }
    .end annotation

    .line 117
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/contexthub/V1_2/HubAppInfo;>;"
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

    mul-int/lit8 v3, v1, 0x38

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

    check-cast v4, Landroid/hardware/contexthub/V1_2/HubAppInfo;

    mul-int/lit8 v5, v3, 0x38

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/contexthub/V1_2/HubAppInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

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

    .line 21
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 22
    return v0

    .line 24
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 25
    return v1

    .line 27
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/contexthub/V1_2/HubAppInfo;

    if-eq v2, v3, :cond_11

    .line 28
    return v1

    .line 30
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/contexthub/V1_2/HubAppInfo;

    .line 31
    .local v2, "other":Landroid/hardware/contexthub/V1_2/HubAppInfo;
    iget-object v3, p0, Landroid/hardware/contexthub/V1_2/HubAppInfo;->info_1_0:Landroid/hardware/contexthub/V1_0/HubAppInfo;

    iget-object v4, v2, Landroid/hardware/contexthub/V1_2/HubAppInfo;->info_1_0:Landroid/hardware/contexthub/V1_0/HubAppInfo;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 32
    return v1

    .line 34
    :cond_1f
    iget-object v3, p0, Landroid/hardware/contexthub/V1_2/HubAppInfo;->permissions:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/contexthub/V1_2/HubAppInfo;->permissions:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 35
    return v1

    .line 37
    :cond_2a
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 3

    .line 42
    iget-object v0, p0, Landroid/hardware/contexthub/V1_2/HubAppInfo;->info_1_0:Landroid/hardware/contexthub/V1_0/HubAppInfo;

    .line 43
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/contexthub/V1_2/HubAppInfo;->permissions:Ljava/util/ArrayList;

    .line 44
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 42
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 19
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 87
    move-object/from16 v0, p2

    iget-object v1, p0, Landroid/hardware/contexthub/V1_2/HubAppInfo;->info_1_0:Landroid/hardware/contexthub/V1_0/HubAppInfo;

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    move-object v6, p1

    invoke-virtual {v1, p1, v0, v4, v5}, Landroid/hardware/contexthub/V1_0/HubAppInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 89
    const-wide/16 v4, 0x28

    add-long v7, p3, v4

    const-wide/16 v9, 0x8

    add-long/2addr v7, v9

    invoke-virtual {v0, v7, v8}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    .line 90
    .local v1, "_hidl_vec_size":I
    mul-int/lit8 v7, v1, 0x10

    int-to-long v7, v7

    .line 91
    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    move-result-wide v9

    add-long v4, p3, v4

    add-long v11, v4, v2

    .line 90
    const/4 v13, 0x1

    invoke-virtual/range {v6 .. v13}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 94
    .local v2, "childBlob":Landroid/os/HwBlob;
    iget-object v3, p0, Landroid/hardware/contexthub/V1_2/HubAppInfo;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 95
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_2d
    if-ge v3, v1, :cond_5a

    .line 96
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 97
    .local v4, "_hidl_vec_element":Ljava/lang/String;
    mul-int/lit8 v5, v3, 0x10

    int-to-long v5, v5

    invoke-virtual {v2, v5, v6}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v4

    .line 99
    nop

    .line 100
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    int-to-long v7, v5

    .line 101
    invoke-virtual {v2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v9

    mul-int/lit8 v5, v3, 0x10

    add-int/lit8 v5, v5, 0x0

    int-to-long v11, v5

    .line 99
    const/4 v13, 0x0

    move-object v6, p1

    invoke-virtual/range {v6 .. v13}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 104
    iget-object v5, p0, Landroid/hardware/contexthub/V1_2/HubAppInfo;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .end local v4    # "_hidl_vec_element":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 107
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_index_0":I
    :cond_5a
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 60
    const-wide/16 v0, 0x38

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 61
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/contexthub/V1_2/HubAppInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 62
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, ".info_1_0 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-object v1, p0, Landroid/hardware/contexthub/V1_2/HubAppInfo;->info_1_0:Landroid/hardware/contexthub/V1_0/HubAppInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    const-string v1, ", .permissions = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    iget-object v1, p0, Landroid/hardware/contexthub/V1_2/HubAppInfo;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 14
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 134
    iget-object v0, p0, Landroid/hardware/contexthub/V1_2/HubAppInfo;->info_1_0:Landroid/hardware/contexthub/V1_0/HubAppInfo;

    const-wide/16 v1, 0x0

    add-long v3, p2, v1

    invoke-virtual {v0, p1, v3, v4}, Landroid/hardware/contexthub/V1_0/HubAppInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 136
    iget-object v0, p0, Landroid/hardware/contexthub/V1_2/HubAppInfo;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 137
    .local v0, "_hidl_vec_size":I
    const-wide/16 v3, 0x28

    add-long v5, p2, v3

    const-wide/16 v7, 0x8

    add-long/2addr v5, v7

    invoke-virtual {p1, v5, v6, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 138
    add-long v5, p2, v3

    const-wide/16 v7, 0xc

    add-long/2addr v5, v7

    const/4 v7, 0x0

    invoke-virtual {p1, v5, v6, v7}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 139
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v0, 0x10

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 140
    .local v5, "childBlob":Landroid/os/HwBlob;
    const/4 v6, 0x0

    .local v6, "_hidl_index_0":I
    :goto_2a
    if-ge v6, v0, :cond_3d

    .line 141
    mul-int/lit8 v7, v6, 0x10

    int-to-long v7, v7

    iget-object v9, p0, Landroid/hardware/contexthub/V1_2/HubAppInfo;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v5, v7, v8, v9}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 140
    add-int/lit8 v6, v6, 0x1

    goto :goto_2a

    .line 143
    .end local v6    # "_hidl_index_0":I
    :cond_3d
    add-long/2addr v3, p2

    add-long/2addr v3, v1

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 145
    .end local v0    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 110
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x38

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 111
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/contexthub/V1_2/HubAppInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 112
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 113
    return-void
.end method
