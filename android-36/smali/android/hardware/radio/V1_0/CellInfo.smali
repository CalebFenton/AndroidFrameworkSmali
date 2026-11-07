.class public final Landroid/hardware/radio/V1_0/CellInfo;
.super Ljava/lang/Object;
.source "CellInfo.java"


# instance fields
.field public blacklist cdma:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CellInfoCdma;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist cellInfoType:I

.field public blacklist gsm:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CellInfoGsm;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist lte:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CellInfoLte;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist registered:Z

.field public blacklist tdscdma:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CellInfoTdscdma;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist timeStamp:J

.field public blacklist timeStampType:I

.field public blacklist wcdma:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CellInfoWcdma;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/radio/V1_0/CellInfo;->cellInfoType:I

    .line 6
    iput-boolean v0, p0, Landroid/hardware/radio/V1_0/CellInfo;->registered:Z

    .line 7
    iput v0, p0, Landroid/hardware/radio/V1_0/CellInfo;->timeStampType:I

    .line 8
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/radio/V1_0/CellInfo;->timeStamp:J

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_0/CellInfo;->gsm:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_0/CellInfo;->cdma:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_0/CellInfo;->lte:Ljava/util/ArrayList;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_0/CellInfo;->wcdma:Ljava/util/ArrayList;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_0/CellInfo;->tdscdma:Ljava/util/ArrayList;

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
            "Landroid/hardware/radio/V1_0/CellInfo;",
            ">;"
        }
    .end annotation

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 107
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 108
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x68

    int-to-long v5, v3

    .line 109
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 108
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 112
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 113
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 114
    new-instance v5, Landroid/hardware/radio/V1_0/CellInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/CellInfo;-><init>()V

    .line 115
    .local v5, "_hidl_vec_element":Landroid/hardware/radio/V1_0/CellInfo;
    mul-int/lit8 v6, v3, 0x68

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/radio/V1_0/CellInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 116
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .end local v5    # "_hidl_vec_element":Landroid/hardware/radio/V1_0/CellInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 120
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
            "Landroid/hardware/radio/V1_0/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 204
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 206
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 207
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 208
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 209
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x68

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 210
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 211
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/CellInfo;

    mul-int/lit8 v5, v3, 0x68

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/radio/V1_0/CellInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 210
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 213
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 216
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 217
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 17
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 18
    return v0

    .line 20
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 21
    return v1

    .line 23
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_0/CellInfo;

    if-eq v2, v3, :cond_11

    .line 24
    return v1

    .line 26
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/V1_0/CellInfo;

    .line 27
    .local v2, "other":Landroid/hardware/radio/V1_0/CellInfo;
    iget v3, p0, Landroid/hardware/radio/V1_0/CellInfo;->cellInfoType:I

    iget v4, v2, Landroid/hardware/radio/V1_0/CellInfo;->cellInfoType:I

    if-eq v3, v4, :cond_1b

    .line 28
    return v1

    .line 30
    :cond_1b
    iget-boolean v3, p0, Landroid/hardware/radio/V1_0/CellInfo;->registered:Z

    iget-boolean v4, v2, Landroid/hardware/radio/V1_0/CellInfo;->registered:Z

    if-eq v3, v4, :cond_22

    .line 31
    return v1

    .line 33
    :cond_22
    iget v3, p0, Landroid/hardware/radio/V1_0/CellInfo;->timeStampType:I

    iget v4, v2, Landroid/hardware/radio/V1_0/CellInfo;->timeStampType:I

    if-eq v3, v4, :cond_29

    .line 34
    return v1

    .line 36
    :cond_29
    iget-wide v3, p0, Landroid/hardware/radio/V1_0/CellInfo;->timeStamp:J

    iget-wide v5, v2, Landroid/hardware/radio/V1_0/CellInfo;->timeStamp:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_32

    .line 37
    return v1

    .line 39
    :cond_32
    iget-object v3, p0, Landroid/hardware/radio/V1_0/CellInfo;->gsm:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_0/CellInfo;->gsm:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d

    .line 40
    return v1

    .line 42
    :cond_3d
    iget-object v3, p0, Landroid/hardware/radio/V1_0/CellInfo;->cdma:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_0/CellInfo;->cdma:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48

    .line 43
    return v1

    .line 45
    :cond_48
    iget-object v3, p0, Landroid/hardware/radio/V1_0/CellInfo;->lte:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_0/CellInfo;->lte:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_53

    .line 46
    return v1

    .line 48
    :cond_53
    iget-object v3, p0, Landroid/hardware/radio/V1_0/CellInfo;->wcdma:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_0/CellInfo;->wcdma:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5e

    .line 49
    return v1

    .line 51
    :cond_5e
    iget-object v3, p0, Landroid/hardware/radio/V1_0/CellInfo;->tdscdma:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_0/CellInfo;->tdscdma:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_69

    .line 52
    return v1

    .line 54
    :cond_69
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 11

    .line 59
    iget v0, p0, Landroid/hardware/radio/V1_0/CellInfo;->cellInfoType:I

    .line 60
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-boolean v0, p0, Landroid/hardware/radio/V1_0/CellInfo;->registered:Z

    .line 61
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/hardware/radio/V1_0/CellInfo;->timeStampType:I

    .line 62
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-wide v4, p0, Landroid/hardware/radio/V1_0/CellInfo;->timeStamp:J

    .line 63
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v0, p0, Landroid/hardware/radio/V1_0/CellInfo;->gsm:Ljava/util/ArrayList;

    .line 64
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v0, p0, Landroid/hardware/radio/V1_0/CellInfo;->cdma:Ljava/util/ArrayList;

    .line 65
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v0, p0, Landroid/hardware/radio/V1_0/CellInfo;->lte:Ljava/util/ArrayList;

    .line 66
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v0, p0, Landroid/hardware/radio/V1_0/CellInfo;->wcdma:Ljava/util/ArrayList;

    .line 67
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v0, p0, Landroid/hardware/radio/V1_0/CellInfo;->tdscdma:Ljava/util/ArrayList;

    .line 68
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array/range {v1 .. v9}, [Ljava/lang/Object;

    move-result-object v0

    .line 59
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 19
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 125
    move-object/from16 v8, p2

    const-wide/16 v9, 0x0

    add-long v0, p3, v9

    invoke-virtual {v8, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/V1_0/CellInfo;->cellInfoType:I

    .line 126
    const-wide/16 v0, 0x4

    add-long v0, p3, v0

    invoke-virtual {v8, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/V1_0/CellInfo;->registered:Z

    .line 127
    const-wide/16 v11, 0x8

    add-long v0, p3, v11

    invoke-virtual {v8, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/V1_0/CellInfo;->timeStampType:I

    .line 128
    const-wide/16 v0, 0x10

    add-long v0, p3, v0

    invoke-virtual {v8, v0, v1}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/radio/V1_0/CellInfo;->timeStamp:J

    .line 130
    const-wide/16 v0, 0x18

    add-long v2, p3, v0

    add-long/2addr v2, v11

    invoke-virtual {v8, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v13

    .line 131
    .local v13, "_hidl_vec_size":I
    mul-int/lit8 v2, v13, 0x40

    int-to-long v2, v2

    .line 132
    move-wide v5, v0

    move-wide v1, v2

    invoke-virtual {v8}, Landroid/os/HwBlob;->handle()J

    move-result-wide v3

    add-long v5, p3, v5

    add-long/2addr v5, v9

    .line 131
    const/4 v7, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 135
    .local v1, "childBlob":Landroid/os/HwBlob;
    iget-object v2, p0, Landroid/hardware/radio/V1_0/CellInfo;->gsm:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 136
    const/4 v2, 0x0

    .local v2, "_hidl_index_0":I
    :goto_4b
    if-ge v2, v13, :cond_60

    .line 137
    new-instance v3, Landroid/hardware/radio/V1_0/CellInfoGsm;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CellInfoGsm;-><init>()V

    .line 138
    .local v3, "_hidl_vec_element":Landroid/hardware/radio/V1_0/CellInfoGsm;
    mul-int/lit8 v4, v2, 0x40

    int-to-long v4, v4

    invoke-virtual {v3, p1, v1, v4, v5}, Landroid/hardware/radio/V1_0/CellInfoGsm;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 139
    iget-object v4, p0, Landroid/hardware/radio/V1_0/CellInfo;->gsm:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    .end local v3    # "_hidl_vec_element":Landroid/hardware/radio/V1_0/CellInfoGsm;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    .line 143
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v2    # "_hidl_index_0":I
    .end local v13    # "_hidl_vec_size":I
    :cond_60
    const-wide/16 v1, 0x28

    add-long v3, p3, v1

    add-long/2addr v3, v11

    invoke-virtual {v8, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v13

    .line 144
    .restart local v13    # "_hidl_vec_size":I
    mul-int/lit8 v3, v13, 0x28

    int-to-long v3, v3

    .line 145
    move-wide v5, v1

    move-wide v1, v3

    invoke-virtual {v8}, Landroid/os/HwBlob;->handle()J

    move-result-wide v3

    add-long v5, p3, v5

    add-long/2addr v5, v9

    .line 144
    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 148
    .restart local v1    # "childBlob":Landroid/os/HwBlob;
    iget-object v2, p0, Landroid/hardware/radio/V1_0/CellInfo;->cdma:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 149
    const/4 v2, 0x0

    .restart local v2    # "_hidl_index_0":I
    :goto_80
    if-ge v2, v13, :cond_95

    .line 150
    new-instance v3, Landroid/hardware/radio/V1_0/CellInfoCdma;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CellInfoCdma;-><init>()V

    .line 151
    .local v3, "_hidl_vec_element":Landroid/hardware/radio/V1_0/CellInfoCdma;
    mul-int/lit8 v4, v2, 0x28

    int-to-long v4, v4

    invoke-virtual {v3, p1, v1, v4, v5}, Landroid/hardware/radio/V1_0/CellInfoCdma;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 152
    iget-object v4, p0, Landroid/hardware/radio/V1_0/CellInfo;->cdma:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    .end local v3    # "_hidl_vec_element":Landroid/hardware/radio/V1_0/CellInfoCdma;
    add-int/lit8 v2, v2, 0x1

    goto :goto_80

    .line 156
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v2    # "_hidl_index_0":I
    .end local v13    # "_hidl_vec_size":I
    :cond_95
    const-wide/16 v1, 0x38

    add-long v3, p3, v1

    add-long/2addr v3, v11

    invoke-virtual {v8, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v13

    .line 157
    .restart local v13    # "_hidl_vec_size":I
    mul-int/lit8 v3, v13, 0x48

    int-to-long v3, v3

    .line 158
    move-wide v5, v1

    move-wide v1, v3

    invoke-virtual {v8}, Landroid/os/HwBlob;->handle()J

    move-result-wide v3

    add-long v5, p3, v5

    add-long/2addr v5, v9

    .line 157
    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 161
    .restart local v1    # "childBlob":Landroid/os/HwBlob;
    iget-object v2, p0, Landroid/hardware/radio/V1_0/CellInfo;->lte:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 162
    const/4 v2, 0x0

    .restart local v2    # "_hidl_index_0":I
    :goto_b5
    if-ge v2, v13, :cond_ca

    .line 163
    new-instance v3, Landroid/hardware/radio/V1_0/CellInfoLte;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CellInfoLte;-><init>()V

    .line 164
    .local v3, "_hidl_vec_element":Landroid/hardware/radio/V1_0/CellInfoLte;
    mul-int/lit8 v4, v2, 0x48

    int-to-long v4, v4

    invoke-virtual {v3, p1, v1, v4, v5}, Landroid/hardware/radio/V1_0/CellInfoLte;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 165
    iget-object v4, p0, Landroid/hardware/radio/V1_0/CellInfo;->lte:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    .end local v3    # "_hidl_vec_element":Landroid/hardware/radio/V1_0/CellInfoLte;
    add-int/lit8 v2, v2, 0x1

    goto :goto_b5

    .line 169
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v2    # "_hidl_index_0":I
    .end local v13    # "_hidl_vec_size":I
    :cond_ca
    const-wide/16 v1, 0x48

    add-long v3, p3, v1

    add-long/2addr v3, v11

    invoke-virtual {v8, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v13

    .line 170
    .restart local v13    # "_hidl_vec_size":I
    mul-int/lit8 v3, v13, 0x38

    int-to-long v3, v3

    .line 171
    move-wide v5, v1

    move-wide v1, v3

    invoke-virtual {v8}, Landroid/os/HwBlob;->handle()J

    move-result-wide v3

    add-long v5, p3, v5

    add-long/2addr v5, v9

    .line 170
    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 174
    .restart local v1    # "childBlob":Landroid/os/HwBlob;
    iget-object v2, p0, Landroid/hardware/radio/V1_0/CellInfo;->wcdma:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 175
    const/4 v2, 0x0

    .restart local v2    # "_hidl_index_0":I
    :goto_ea
    if-ge v2, v13, :cond_ff

    .line 176
    new-instance v3, Landroid/hardware/radio/V1_0/CellInfoWcdma;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CellInfoWcdma;-><init>()V

    .line 177
    .local v3, "_hidl_vec_element":Landroid/hardware/radio/V1_0/CellInfoWcdma;
    mul-int/lit8 v4, v2, 0x38

    int-to-long v4, v4

    invoke-virtual {v3, p1, v1, v4, v5}, Landroid/hardware/radio/V1_0/CellInfoWcdma;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 178
    iget-object v4, p0, Landroid/hardware/radio/V1_0/CellInfo;->wcdma:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    .end local v3    # "_hidl_vec_element":Landroid/hardware/radio/V1_0/CellInfoWcdma;
    add-int/lit8 v2, v2, 0x1

    goto :goto_ea

    .line 182
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v2    # "_hidl_index_0":I
    .end local v13    # "_hidl_vec_size":I
    :cond_ff
    const-wide/16 v1, 0x58

    add-long v3, p3, v1

    add-long/2addr v3, v11

    invoke-virtual {v8, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v11

    .line 183
    .local v11, "_hidl_vec_size":I
    mul-int/lit8 v3, v11, 0x38

    int-to-long v3, v3

    .line 184
    move-wide v5, v1

    move-wide v1, v3

    invoke-virtual {v8}, Landroid/os/HwBlob;->handle()J

    move-result-wide v3

    add-long v5, p3, v5

    add-long/2addr v5, v9

    .line 183
    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 187
    .restart local v1    # "childBlob":Landroid/os/HwBlob;
    iget-object v2, p0, Landroid/hardware/radio/V1_0/CellInfo;->tdscdma:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 188
    const/4 v2, 0x0

    .restart local v2    # "_hidl_index_0":I
    :goto_11f
    if-ge v2, v11, :cond_134

    .line 189
    new-instance v3, Landroid/hardware/radio/V1_0/CellInfoTdscdma;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CellInfoTdscdma;-><init>()V

    .line 190
    .local v3, "_hidl_vec_element":Landroid/hardware/radio/V1_0/CellInfoTdscdma;
    mul-int/lit8 v4, v2, 0x38

    int-to-long v4, v4

    invoke-virtual {v3, p1, v1, v4, v5}, Landroid/hardware/radio/V1_0/CellInfoTdscdma;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 191
    iget-object v4, p0, Landroid/hardware/radio/V1_0/CellInfo;->tdscdma:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    .end local v3    # "_hidl_vec_element":Landroid/hardware/radio/V1_0/CellInfoTdscdma;
    add-int/lit8 v2, v2, 0x1

    goto :goto_11f

    .line 194
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v2    # "_hidl_index_0":I
    .end local v11    # "_hidl_vec_size":I
    :cond_134
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 98
    const-wide/16 v0, 0x68

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 99
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_0/CellInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 100
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string v1, ".cellInfoType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget v1, p0, Landroid/hardware/radio/V1_0/CellInfo;->cellInfoType:I

    invoke-static {v1}, Landroid/hardware/radio/V1_0/CellInfoType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string v1, ", .registered = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-boolean v1, p0, Landroid/hardware/radio/V1_0/CellInfo;->registered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 79
    const-string v1, ", .timeStampType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    iget v1, p0, Landroid/hardware/radio/V1_0/CellInfo;->timeStampType:I

    invoke-static {v1}, Landroid/hardware/radio/V1_0/TimeStampType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    const-string v1, ", .timeStamp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget-wide v1, p0, Landroid/hardware/radio/V1_0/CellInfo;->timeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 83
    const-string v1, ", .gsm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CellInfo;->gsm:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    const-string v1, ", .cdma = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CellInfo;->cdma:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    const-string v1, ", .lte = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CellInfo;->lte:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    const-string v1, ", .wcdma = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CellInfo;->wcdma:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    const-string v1, ", .tdscdma = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CellInfo;->tdscdma:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 22
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 221
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0x0

    add-long v4, p2, v2

    iget v6, v0, Landroid/hardware/radio/V1_0/CellInfo;->cellInfoType:I

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 222
    const-wide/16 v4, 0x4

    add-long v4, p2, v4

    iget-boolean v6, v0, Landroid/hardware/radio/V1_0/CellInfo;->registered:Z

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 223
    const-wide/16 v4, 0x8

    add-long v6, p2, v4

    iget v8, v0, Landroid/hardware/radio/V1_0/CellInfo;->timeStampType:I

    invoke-virtual {v1, v6, v7, v8}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 224
    const-wide/16 v6, 0x10

    add-long v6, p2, v6

    iget-wide v8, v0, Landroid/hardware/radio/V1_0/CellInfo;->timeStamp:J

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/os/HwBlob;->putInt64(JJ)V

    .line 226
    iget-object v6, v0, Landroid/hardware/radio/V1_0/CellInfo;->gsm:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 227
    .local v6, "_hidl_vec_size":I
    const-wide/16 v7, 0x18

    add-long v9, p2, v7

    add-long/2addr v9, v4

    invoke-virtual {v1, v9, v10, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 228
    add-long v9, p2, v7

    const-wide/16 v11, 0xc

    add-long/2addr v9, v11

    const/4 v13, 0x0

    invoke-virtual {v1, v9, v10, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 229
    new-instance v9, Landroid/os/HwBlob;

    mul-int/lit8 v10, v6, 0x40

    invoke-direct {v9, v10}, Landroid/os/HwBlob;-><init>(I)V

    .line 230
    .local v9, "childBlob":Landroid/os/HwBlob;
    const/4 v10, 0x0

    .local v10, "_hidl_index_0":I
    :goto_47
    if-ge v10, v6, :cond_5e

    .line 231
    iget-object v14, v0, Landroid/hardware/radio/V1_0/CellInfo;->gsm:Ljava/util/ArrayList;

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/hardware/radio/V1_0/CellInfoGsm;

    mul-int/lit8 v15, v10, 0x40

    move-wide/from16 v16, v2

    int-to-long v2, v15

    invoke-virtual {v14, v9, v2, v3}, Landroid/hardware/radio/V1_0/CellInfoGsm;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 230
    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v2, v16

    goto :goto_47

    :cond_5e
    move-wide/from16 v16, v2

    .line 233
    .end local v10    # "_hidl_index_0":I
    add-long v7, p2, v7

    add-long v7, v7, v16

    invoke-virtual {v1, v7, v8, v9}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 236
    .end local v6    # "_hidl_vec_size":I
    .end local v9    # "childBlob":Landroid/os/HwBlob;
    iget-object v2, v0, Landroid/hardware/radio/V1_0/CellInfo;->cdma:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 237
    .local v2, "_hidl_vec_size":I
    const-wide/16 v6, 0x28

    add-long v8, p2, v6

    add-long/2addr v8, v4

    invoke-virtual {v1, v8, v9, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 238
    add-long v8, p2, v6

    add-long/2addr v8, v11

    invoke-virtual {v1, v8, v9, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 239
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v8, v2, 0x28

    invoke-direct {v3, v8}, Landroid/os/HwBlob;-><init>(I)V

    .line 240
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v8, 0x0

    .local v8, "_hidl_index_0":I
    :goto_83
    if-ge v8, v2, :cond_96

    .line 241
    iget-object v9, v0, Landroid/hardware/radio/V1_0/CellInfo;->cdma:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/radio/V1_0/CellInfoCdma;

    mul-int/lit8 v10, v8, 0x28

    int-to-long v14, v10

    invoke-virtual {v9, v3, v14, v15}, Landroid/hardware/radio/V1_0/CellInfoCdma;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 240
    add-int/lit8 v8, v8, 0x1

    goto :goto_83

    .line 243
    .end local v8    # "_hidl_index_0":I
    :cond_96
    add-long v6, p2, v6

    add-long v6, v6, v16

    invoke-virtual {v1, v6, v7, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 246
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    iget-object v2, v0, Landroid/hardware/radio/V1_0/CellInfo;->lte:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 247
    .restart local v2    # "_hidl_vec_size":I
    const-wide/16 v6, 0x38

    add-long v8, p2, v6

    add-long/2addr v8, v4

    invoke-virtual {v1, v8, v9, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 248
    add-long v8, p2, v6

    add-long/2addr v8, v11

    invoke-virtual {v1, v8, v9, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 249
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v8, v2, 0x48

    invoke-direct {v3, v8}, Landroid/os/HwBlob;-><init>(I)V

    .line 250
    .restart local v3    # "childBlob":Landroid/os/HwBlob;
    const/4 v8, 0x0

    .restart local v8    # "_hidl_index_0":I
    :goto_b9
    if-ge v8, v2, :cond_cc

    .line 251
    iget-object v9, v0, Landroid/hardware/radio/V1_0/CellInfo;->lte:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/radio/V1_0/CellInfoLte;

    mul-int/lit8 v10, v8, 0x48

    int-to-long v14, v10

    invoke-virtual {v9, v3, v14, v15}, Landroid/hardware/radio/V1_0/CellInfoLte;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 250
    add-int/lit8 v8, v8, 0x1

    goto :goto_b9

    .line 253
    .end local v8    # "_hidl_index_0":I
    :cond_cc
    add-long v6, p2, v6

    add-long v6, v6, v16

    invoke-virtual {v1, v6, v7, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 256
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    iget-object v2, v0, Landroid/hardware/radio/V1_0/CellInfo;->wcdma:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 257
    .restart local v2    # "_hidl_vec_size":I
    const-wide/16 v6, 0x48

    add-long v8, p2, v6

    add-long/2addr v8, v4

    invoke-virtual {v1, v8, v9, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 258
    add-long v8, p2, v6

    add-long/2addr v8, v11

    invoke-virtual {v1, v8, v9, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 259
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v8, v2, 0x38

    invoke-direct {v3, v8}, Landroid/os/HwBlob;-><init>(I)V

    .line 260
    .restart local v3    # "childBlob":Landroid/os/HwBlob;
    const/4 v8, 0x0

    .restart local v8    # "_hidl_index_0":I
    :goto_ef
    if-ge v8, v2, :cond_102

    .line 261
    iget-object v9, v0, Landroid/hardware/radio/V1_0/CellInfo;->wcdma:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/radio/V1_0/CellInfoWcdma;

    mul-int/lit8 v10, v8, 0x38

    int-to-long v14, v10

    invoke-virtual {v9, v3, v14, v15}, Landroid/hardware/radio/V1_0/CellInfoWcdma;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 260
    add-int/lit8 v8, v8, 0x1

    goto :goto_ef

    .line 263
    .end local v8    # "_hidl_index_0":I
    :cond_102
    add-long v6, p2, v6

    add-long v6, v6, v16

    invoke-virtual {v1, v6, v7, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 266
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    iget-object v2, v0, Landroid/hardware/radio/V1_0/CellInfo;->tdscdma:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 267
    .restart local v2    # "_hidl_vec_size":I
    const-wide/16 v6, 0x58

    add-long v8, p2, v6

    add-long/2addr v8, v4

    invoke-virtual {v1, v8, v9, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 268
    add-long v3, p2, v6

    add-long/2addr v3, v11

    invoke-virtual {v1, v3, v4, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 269
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x38

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 270
    .restart local v3    # "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_125
    if-ge v4, v2, :cond_138

    .line 271
    iget-object v5, v0, Landroid/hardware/radio/V1_0/CellInfo;->tdscdma:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/radio/V1_0/CellInfoTdscdma;

    mul-int/lit8 v8, v4, 0x38

    int-to-long v8, v8

    invoke-virtual {v5, v3, v8, v9}, Landroid/hardware/radio/V1_0/CellInfoTdscdma;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 270
    add-int/lit8 v4, v4, 0x1

    goto :goto_125

    .line 273
    .end local v4    # "_hidl_index_0":I
    :cond_138
    add-long v6, p2, v6

    add-long v6, v6, v16

    invoke-virtual {v1, v6, v7, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 275
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 197
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x68

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 198
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_0/CellInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 199
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 200
    return-void
.end method
