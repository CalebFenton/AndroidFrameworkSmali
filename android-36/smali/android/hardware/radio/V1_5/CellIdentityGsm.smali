.class public final Landroid/hardware/radio/V1_5/CellIdentityGsm;
.super Ljava/lang/Object;
.source "CellIdentityGsm.java"


# instance fields
.field public blacklist additionalPlmns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist base:Landroid/hardware/radio/V1_2/CellIdentityGsm;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Landroid/hardware/radio/V1_2/CellIdentityGsm;

    invoke-direct {v0}, Landroid/hardware/radio/V1_2/CellIdentityGsm;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_5/CellIdentityGsm;->base:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_5/CellIdentityGsm;->additionalPlmns:Ljava/util/ArrayList;

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
            "Landroid/hardware/radio/V1_5/CellIdentityGsm;",
            ">;"
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/CellIdentityGsm;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 64
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 65
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x60

    int-to-long v5, v3

    .line 66
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 65
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 69
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 70
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 71
    new-instance v5, Landroid/hardware/radio/V1_5/CellIdentityGsm;

    invoke-direct {v5}, Landroid/hardware/radio/V1_5/CellIdentityGsm;-><init>()V

    .line 72
    .local v5, "_hidl_vec_element":Landroid/hardware/radio/V1_5/CellIdentityGsm;
    mul-int/lit8 v6, v3, 0x60

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/radio/V1_5/CellIdentityGsm;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 73
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .end local v5    # "_hidl_vec_element":Landroid/hardware/radio/V1_5/CellIdentityGsm;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 77
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
            "Landroid/hardware/radio/V1_5/CellIdentityGsm;",
            ">;)V"
        }
    .end annotation

    .line 112
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/CellIdentityGsm;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 114
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 115
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 116
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 117
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x60

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 118
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 119
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_5/CellIdentityGsm;

    mul-int/lit8 v5, v3, 0x60

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/radio/V1_5/CellIdentityGsm;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 118
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 121
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 124
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 125
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 16
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 17
    return v0

    .line 19
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 20
    return v1

    .line 22
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_5/CellIdentityGsm;

    if-eq v2, v3, :cond_11

    .line 23
    return v1

    .line 25
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/V1_5/CellIdentityGsm;

    .line 26
    .local v2, "other":Landroid/hardware/radio/V1_5/CellIdentityGsm;
    iget-object v3, p0, Landroid/hardware/radio/V1_5/CellIdentityGsm;->base:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    iget-object v4, v2, Landroid/hardware/radio/V1_5/CellIdentityGsm;->base:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 27
    return v1

    .line 29
    :cond_1f
    iget-object v3, p0, Landroid/hardware/radio/V1_5/CellIdentityGsm;->additionalPlmns:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_5/CellIdentityGsm;->additionalPlmns:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 30
    return v1

    .line 32
    :cond_2a
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 3

    .line 37
    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellIdentityGsm;->base:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    .line 38
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/V1_5/CellIdentityGsm;->additionalPlmns:Ljava/util/ArrayList;

    .line 39
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 37
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 19
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 82
    move-object/from16 v0, p2

    iget-object v1, p0, Landroid/hardware/radio/V1_5/CellIdentityGsm;->base:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    move-object v6, p1

    invoke-virtual {v1, p1, v0, v4, v5}, Landroid/hardware/radio/V1_2/CellIdentityGsm;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 84
    const-wide/16 v4, 0x50

    add-long v7, p3, v4

    const-wide/16 v9, 0x8

    add-long/2addr v7, v9

    invoke-virtual {v0, v7, v8}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    .line 85
    .local v1, "_hidl_vec_size":I
    mul-int/lit8 v7, v1, 0x10

    int-to-long v7, v7

    .line 86
    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    move-result-wide v9

    add-long v4, p3, v4

    add-long v11, v4, v2

    .line 85
    const/4 v13, 0x1

    invoke-virtual/range {v6 .. v13}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 89
    .local v2, "childBlob":Landroid/os/HwBlob;
    iget-object v3, p0, Landroid/hardware/radio/V1_5/CellIdentityGsm;->additionalPlmns:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 90
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_2d
    if-ge v3, v1, :cond_5a

    .line 91
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 92
    .local v4, "_hidl_vec_element":Ljava/lang/String;
    mul-int/lit8 v5, v3, 0x10

    int-to-long v5, v5

    invoke-virtual {v2, v5, v6}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v4

    .line 94
    nop

    .line 95
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    int-to-long v7, v5

    .line 96
    invoke-virtual {v2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v9

    mul-int/lit8 v5, v3, 0x10

    add-int/lit8 v5, v5, 0x0

    int-to-long v11, v5

    .line 94
    const/4 v13, 0x0

    move-object v6, p1

    invoke-virtual/range {v6 .. v13}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 99
    iget-object v5, p0, Landroid/hardware/radio/V1_5/CellIdentityGsm;->additionalPlmns:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .end local v4    # "_hidl_vec_element":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 102
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_index_0":I
    :cond_5a
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 55
    const-wide/16 v0, 0x60

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 56
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_5/CellIdentityGsm;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 57
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    const-string v1, ".base = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-object v1, p0, Landroid/hardware/radio/V1_5/CellIdentityGsm;->base:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    const-string v1, ", .additionalPlmns = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget-object v1, p0, Landroid/hardware/radio/V1_5/CellIdentityGsm;->additionalPlmns:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 14
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 129
    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellIdentityGsm;->base:Landroid/hardware/radio/V1_2/CellIdentityGsm;

    const-wide/16 v1, 0x0

    add-long v3, p2, v1

    invoke-virtual {v0, p1, v3, v4}, Landroid/hardware/radio/V1_2/CellIdentityGsm;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 131
    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellIdentityGsm;->additionalPlmns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 132
    .local v0, "_hidl_vec_size":I
    const-wide/16 v3, 0x50

    add-long v5, p2, v3

    const-wide/16 v7, 0x8

    add-long/2addr v5, v7

    invoke-virtual {p1, v5, v6, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 133
    add-long v5, p2, v3

    const-wide/16 v7, 0xc

    add-long/2addr v5, v7

    const/4 v7, 0x0

    invoke-virtual {p1, v5, v6, v7}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 134
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v0, 0x10

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 135
    .local v5, "childBlob":Landroid/os/HwBlob;
    const/4 v6, 0x0

    .local v6, "_hidl_index_0":I
    :goto_2a
    if-ge v6, v0, :cond_3d

    .line 136
    mul-int/lit8 v7, v6, 0x10

    int-to-long v7, v7

    iget-object v9, p0, Landroid/hardware/radio/V1_5/CellIdentityGsm;->additionalPlmns:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v5, v7, v8, v9}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 135
    add-int/lit8 v6, v6, 0x1

    goto :goto_2a

    .line 138
    .end local v6    # "_hidl_index_0":I
    :cond_3d
    add-long/2addr v3, p2

    add-long/2addr v3, v1

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 140
    .end local v0    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 105
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x60

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 106
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_5/CellIdentityGsm;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 107
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 108
    return-void
.end method
