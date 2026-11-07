.class public final Landroid/hardware/radio/V1_2/CellIdentity;
.super Ljava/lang/Object;
.source "CellIdentity.java"


# instance fields
.field public blacklist cellIdentityCdma:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_2/CellIdentityCdma;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist cellIdentityGsm:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_2/CellIdentityGsm;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist cellIdentityLte:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_2/CellIdentityLte;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist cellIdentityTdscdma:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_2/CellIdentityTdscdma;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist cellIdentityWcdma:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_2/CellIdentityWcdma;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist cellInfoType:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellInfoType:I

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityGsm:Ljava/util/ArrayList;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityWcdma:Ljava/util/ArrayList;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityCdma:Ljava/util/ArrayList;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityLte:Ljava/util/ArrayList;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityTdscdma:Ljava/util/ArrayList;

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
            "Landroid/hardware/radio/V1_2/CellIdentity;",
            ">;"
        }
    .end annotation

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CellIdentity;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 92
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 93
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x58

    int-to-long v5, v3

    .line 94
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 93
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 97
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 98
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 99
    new-instance v5, Landroid/hardware/radio/V1_2/CellIdentity;

    invoke-direct {v5}, Landroid/hardware/radio/V1_2/CellIdentity;-><init>()V

    .line 100
    .local v5, "_hidl_vec_element":Landroid/hardware/radio/V1_2/CellIdentity;
    mul-int/lit8 v6, v3, 0x58

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/radio/V1_2/CellIdentity;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 101
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .end local v5    # "_hidl_vec_element":Landroid/hardware/radio/V1_2/CellIdentity;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 105
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
            "Landroid/hardware/radio/V1_2/CellIdentity;",
            ">;)V"
        }
    .end annotation

    .line 186
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CellIdentity;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 188
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 189
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 190
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 191
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x58

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 192
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 193
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_2/CellIdentity;

    mul-int/lit8 v5, v3, 0x58

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/radio/V1_2/CellIdentity;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 192
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 195
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 198
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 199
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

    const-class v3, Landroid/hardware/radio/V1_2/CellIdentity;

    if-eq v2, v3, :cond_11

    .line 27
    return v1

    .line 29
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/V1_2/CellIdentity;

    .line 30
    .local v2, "other":Landroid/hardware/radio/V1_2/CellIdentity;
    iget v3, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellInfoType:I

    iget v4, v2, Landroid/hardware/radio/V1_2/CellIdentity;->cellInfoType:I

    if-eq v3, v4, :cond_1b

    .line 31
    return v1

    .line 33
    :cond_1b
    iget-object v3, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityGsm:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityGsm:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 34
    return v1

    .line 36
    :cond_26
    iget-object v3, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityWcdma:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityWcdma:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 37
    return v1

    .line 39
    :cond_31
    iget-object v3, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityCdma:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityCdma:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    .line 40
    return v1

    .line 42
    :cond_3c
    iget-object v3, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityLte:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityLte:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_47

    .line 43
    return v1

    .line 45
    :cond_47
    iget-object v3, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityTdscdma:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityTdscdma:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_52

    .line 46
    return v1

    .line 48
    :cond_52
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 8

    .line 53
    iget v0, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellInfoType:I

    .line 54
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v0, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityGsm:Ljava/util/ArrayList;

    .line 55
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityWcdma:Ljava/util/ArrayList;

    .line 56
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v0, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityCdma:Ljava/util/ArrayList;

    .line 57
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v0, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityLte:Ljava/util/ArrayList;

    .line 58
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v0, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityTdscdma:Ljava/util/ArrayList;

    .line 59
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 53
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 19
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 110
    move-object/from16 v8, p2

    const-wide/16 v9, 0x0

    add-long v0, p3, v9

    invoke-virtual {v8, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellInfoType:I

    .line 112
    const-wide/16 v11, 0x8

    add-long v0, p3, v11

    add-long/2addr v0, v11

    invoke-virtual {v8, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v13

    .line 113
    .local v13, "_hidl_vec_size":I
    mul-int/lit8 v0, v13, 0x50

    int-to-long v1, v0

    .line 114
    invoke-virtual {v8}, Landroid/os/HwBlob;->handle()J

    move-result-wide v3

    add-long v5, p3, v11

    add-long/2addr v5, v9

    .line 113
    const/4 v7, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 117
    .local v1, "childBlob":Landroid/os/HwBlob;
    iget-object v2, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityGsm:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 118
    const/4 v2, 0x0

    .local v2, "_hidl_index_0":I
    :goto_2b
    if-ge v2, v13, :cond_40

    .line 119
    new-instance v3, Landroid/hardware/radio/V1_2/CellIdentityGsm;

    invoke-direct {v3}, Landroid/hardware/radio/V1_2/CellIdentityGsm;-><init>()V

    .line 120
    .local v3, "_hidl_vec_element":Landroid/hardware/radio/V1_2/CellIdentityGsm;
    mul-int/lit8 v4, v2, 0x50

    int-to-long v4, v4

    invoke-virtual {v3, p1, v1, v4, v5}, Landroid/hardware/radio/V1_2/CellIdentityGsm;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 121
    iget-object v4, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityGsm:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .end local v3    # "_hidl_vec_element":Landroid/hardware/radio/V1_2/CellIdentityGsm;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 125
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v2    # "_hidl_index_0":I
    .end local v13    # "_hidl_vec_size":I
    :cond_40
    const-wide/16 v1, 0x18

    add-long v3, p3, v1

    add-long/2addr v3, v11

    invoke-virtual {v8, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v13

    .line 126
    .restart local v13    # "_hidl_vec_size":I
    mul-int/lit8 v3, v13, 0x50

    int-to-long v3, v3

    .line 127
    move-wide v5, v1

    move-wide v1, v3

    invoke-virtual {v8}, Landroid/os/HwBlob;->handle()J

    move-result-wide v3

    add-long v5, p3, v5

    add-long/2addr v5, v9

    .line 126
    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 130
    .restart local v1    # "childBlob":Landroid/os/HwBlob;
    iget-object v2, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityWcdma:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 131
    const/4 v2, 0x0

    .restart local v2    # "_hidl_index_0":I
    :goto_60
    if-ge v2, v13, :cond_75

    .line 132
    new-instance v3, Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    invoke-direct {v3}, Landroid/hardware/radio/V1_2/CellIdentityWcdma;-><init>()V

    .line 133
    .local v3, "_hidl_vec_element":Landroid/hardware/radio/V1_2/CellIdentityWcdma;
    mul-int/lit8 v4, v2, 0x50

    int-to-long v4, v4

    invoke-virtual {v3, p1, v1, v4, v5}, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 134
    iget-object v4, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityWcdma:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    .end local v3    # "_hidl_vec_element":Landroid/hardware/radio/V1_2/CellIdentityWcdma;
    add-int/lit8 v2, v2, 0x1

    goto :goto_60

    .line 138
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v2    # "_hidl_index_0":I
    .end local v13    # "_hidl_vec_size":I
    :cond_75
    const-wide/16 v1, 0x28

    add-long v3, p3, v1

    add-long/2addr v3, v11

    invoke-virtual {v8, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v13

    .line 139
    .restart local v13    # "_hidl_vec_size":I
    mul-int/lit8 v3, v13, 0x38

    int-to-long v3, v3

    .line 140
    move-wide v5, v1

    move-wide v1, v3

    invoke-virtual {v8}, Landroid/os/HwBlob;->handle()J

    move-result-wide v3

    add-long v5, p3, v5

    add-long/2addr v5, v9

    .line 139
    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 143
    .restart local v1    # "childBlob":Landroid/os/HwBlob;
    iget-object v2, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityCdma:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 144
    const/4 v2, 0x0

    .restart local v2    # "_hidl_index_0":I
    :goto_95
    if-ge v2, v13, :cond_aa

    .line 145
    new-instance v3, Landroid/hardware/radio/V1_2/CellIdentityCdma;

    invoke-direct {v3}, Landroid/hardware/radio/V1_2/CellIdentityCdma;-><init>()V

    .line 146
    .local v3, "_hidl_vec_element":Landroid/hardware/radio/V1_2/CellIdentityCdma;
    mul-int/lit8 v4, v2, 0x38

    int-to-long v4, v4

    invoke-virtual {v3, p1, v1, v4, v5}, Landroid/hardware/radio/V1_2/CellIdentityCdma;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 147
    iget-object v4, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityCdma:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    .end local v3    # "_hidl_vec_element":Landroid/hardware/radio/V1_2/CellIdentityCdma;
    add-int/lit8 v2, v2, 0x1

    goto :goto_95

    .line 151
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v2    # "_hidl_index_0":I
    .end local v13    # "_hidl_vec_size":I
    :cond_aa
    const-wide/16 v1, 0x38

    add-long v3, p3, v1

    add-long/2addr v3, v11

    invoke-virtual {v8, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v13

    .line 152
    .restart local v13    # "_hidl_vec_size":I
    mul-int/lit8 v3, v13, 0x58

    int-to-long v3, v3

    .line 153
    move-wide v5, v1

    move-wide v1, v3

    invoke-virtual {v8}, Landroid/os/HwBlob;->handle()J

    move-result-wide v3

    add-long v5, p3, v5

    add-long/2addr v5, v9

    .line 152
    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 156
    .restart local v1    # "childBlob":Landroid/os/HwBlob;
    iget-object v2, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityLte:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 157
    const/4 v2, 0x0

    .restart local v2    # "_hidl_index_0":I
    :goto_ca
    if-ge v2, v13, :cond_df

    .line 158
    new-instance v3, Landroid/hardware/radio/V1_2/CellIdentityLte;

    invoke-direct {v3}, Landroid/hardware/radio/V1_2/CellIdentityLte;-><init>()V

    .line 159
    .local v3, "_hidl_vec_element":Landroid/hardware/radio/V1_2/CellIdentityLte;
    mul-int/lit8 v4, v2, 0x58

    int-to-long v4, v4

    invoke-virtual {v3, p1, v1, v4, v5}, Landroid/hardware/radio/V1_2/CellIdentityLte;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 160
    iget-object v4, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityLte:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    .end local v3    # "_hidl_vec_element":Landroid/hardware/radio/V1_2/CellIdentityLte;
    add-int/lit8 v2, v2, 0x1

    goto :goto_ca

    .line 164
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v2    # "_hidl_index_0":I
    .end local v13    # "_hidl_vec_size":I
    :cond_df
    const-wide/16 v1, 0x48

    add-long v3, p3, v1

    add-long/2addr v3, v11

    invoke-virtual {v8, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v11

    .line 165
    .local v11, "_hidl_vec_size":I
    mul-int/lit8 v3, v11, 0x58

    int-to-long v3, v3

    .line 166
    move-wide v5, v1

    move-wide v1, v3

    invoke-virtual {v8}, Landroid/os/HwBlob;->handle()J

    move-result-wide v3

    add-long v5, p3, v5

    add-long/2addr v5, v9

    .line 165
    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 169
    .restart local v1    # "childBlob":Landroid/os/HwBlob;
    iget-object v2, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityTdscdma:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 170
    const/4 v2, 0x0

    .restart local v2    # "_hidl_index_0":I
    :goto_ff
    if-ge v2, v11, :cond_114

    .line 171
    new-instance v3, Landroid/hardware/radio/V1_2/CellIdentityTdscdma;

    invoke-direct {v3}, Landroid/hardware/radio/V1_2/CellIdentityTdscdma;-><init>()V

    .line 172
    .local v3, "_hidl_vec_element":Landroid/hardware/radio/V1_2/CellIdentityTdscdma;
    mul-int/lit8 v4, v2, 0x58

    int-to-long v4, v4

    invoke-virtual {v3, p1, v1, v4, v5}, Landroid/hardware/radio/V1_2/CellIdentityTdscdma;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 173
    iget-object v4, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityTdscdma:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    .end local v3    # "_hidl_vec_element":Landroid/hardware/radio/V1_2/CellIdentityTdscdma;
    add-int/lit8 v2, v2, 0x1

    goto :goto_ff

    .line 176
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v2    # "_hidl_index_0":I
    .end local v11    # "_hidl_vec_size":I
    :cond_114
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 83
    const-wide/16 v0, 0x58

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 84
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_2/CellIdentity;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 85
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, ".cellInfoType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget v1, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellInfoType:I

    invoke-static {v1}, Landroid/hardware/radio/V1_0/CellInfoType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v1, ", .cellIdentityGsm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-object v1, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityGsm:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    const-string v1, ", .cellIdentityWcdma = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v1, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityWcdma:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, ", .cellIdentityCdma = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget-object v1, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityCdma:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    const-string v1, ", .cellIdentityLte = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget-object v1, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityLte:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    const-string v1, ", .cellIdentityTdscdma = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-object v1, p0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityTdscdma:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 22
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 203
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0x0

    add-long v4, p2, v2

    iget v6, v0, Landroid/hardware/radio/V1_2/CellIdentity;->cellInfoType:I

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 205
    iget-object v4, v0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityGsm:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 206
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    add-long v7, p2, v5

    add-long/2addr v7, v5

    invoke-virtual {v1, v7, v8, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 207
    add-long v7, p2, v5

    const-wide/16 v9, 0xc

    add-long/2addr v7, v9

    const/4 v11, 0x0

    invoke-virtual {v1, v7, v8, v11}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 208
    new-instance v7, Landroid/os/HwBlob;

    mul-int/lit8 v8, v4, 0x50

    invoke-direct {v7, v8}, Landroid/os/HwBlob;-><init>(I)V

    .line 209
    .local v7, "childBlob":Landroid/os/HwBlob;
    const/4 v8, 0x0

    .local v8, "_hidl_index_0":I
    :goto_2c
    if-ge v8, v4, :cond_3f

    .line 210
    iget-object v12, v0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityGsm:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/radio/V1_2/CellIdentityGsm;

    mul-int/lit8 v13, v8, 0x50

    int-to-long v13, v13

    invoke-virtual {v12, v7, v13, v14}, Landroid/hardware/radio/V1_2/CellIdentityGsm;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 209
    add-int/lit8 v8, v8, 0x1

    goto :goto_2c

    .line 212
    .end local v8    # "_hidl_index_0":I
    :cond_3f
    add-long v12, p2, v5

    add-long/2addr v12, v2

    invoke-virtual {v1, v12, v13, v7}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 215
    .end local v4    # "_hidl_vec_size":I
    .end local v7    # "childBlob":Landroid/os/HwBlob;
    iget-object v4, v0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityWcdma:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 216
    .restart local v4    # "_hidl_vec_size":I
    const-wide/16 v7, 0x18

    add-long v12, p2, v7

    add-long/2addr v12, v5

    invoke-virtual {v1, v12, v13, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 217
    add-long v12, p2, v7

    add-long/2addr v12, v9

    invoke-virtual {v1, v12, v13, v11}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 218
    new-instance v12, Landroid/os/HwBlob;

    mul-int/lit8 v13, v4, 0x50

    invoke-direct {v12, v13}, Landroid/os/HwBlob;-><init>(I)V

    .line 219
    .local v12, "childBlob":Landroid/os/HwBlob;
    const/4 v13, 0x0

    .local v13, "_hidl_index_0":I
    :goto_61
    if-ge v13, v4, :cond_78

    .line 220
    iget-object v14, v0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityWcdma:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    mul-int/lit8 v15, v13, 0x50

    move-wide/from16 v16, v2

    int-to-long v2, v15

    invoke-virtual {v14, v12, v2, v3}, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 219
    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v2, v16

    goto :goto_61

    :cond_78
    move-wide/from16 v16, v2

    .line 222
    .end local v13    # "_hidl_index_0":I
    add-long v7, p2, v7

    add-long v7, v7, v16

    invoke-virtual {v1, v7, v8, v12}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 225
    .end local v4    # "_hidl_vec_size":I
    .end local v12    # "childBlob":Landroid/os/HwBlob;
    iget-object v2, v0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityCdma:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 226
    .local v2, "_hidl_vec_size":I
    const-wide/16 v3, 0x28

    add-long v7, p2, v3

    add-long/2addr v7, v5

    invoke-virtual {v1, v7, v8, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 227
    add-long v7, p2, v3

    add-long/2addr v7, v9

    invoke-virtual {v1, v7, v8, v11}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 228
    new-instance v7, Landroid/os/HwBlob;

    mul-int/lit8 v8, v2, 0x38

    invoke-direct {v7, v8}, Landroid/os/HwBlob;-><init>(I)V

    .line 229
    .restart local v7    # "childBlob":Landroid/os/HwBlob;
    const/4 v8, 0x0

    .restart local v8    # "_hidl_index_0":I
    :goto_9d
    if-ge v8, v2, :cond_b0

    .line 230
    iget-object v12, v0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityCdma:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/radio/V1_2/CellIdentityCdma;

    mul-int/lit8 v13, v8, 0x38

    int-to-long v13, v13

    invoke-virtual {v12, v7, v13, v14}, Landroid/hardware/radio/V1_2/CellIdentityCdma;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 229
    add-int/lit8 v8, v8, 0x1

    goto :goto_9d

    .line 232
    .end local v8    # "_hidl_index_0":I
    :cond_b0
    add-long v3, p2, v3

    add-long v3, v3, v16

    invoke-virtual {v1, v3, v4, v7}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 235
    .end local v2    # "_hidl_vec_size":I
    .end local v7    # "childBlob":Landroid/os/HwBlob;
    iget-object v2, v0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityLte:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 236
    .restart local v2    # "_hidl_vec_size":I
    const-wide/16 v3, 0x38

    add-long v7, p2, v3

    add-long/2addr v7, v5

    invoke-virtual {v1, v7, v8, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 237
    add-long v7, p2, v3

    add-long/2addr v7, v9

    invoke-virtual {v1, v7, v8, v11}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 238
    new-instance v7, Landroid/os/HwBlob;

    mul-int/lit8 v8, v2, 0x58

    invoke-direct {v7, v8}, Landroid/os/HwBlob;-><init>(I)V

    .line 239
    .restart local v7    # "childBlob":Landroid/os/HwBlob;
    const/4 v8, 0x0

    .restart local v8    # "_hidl_index_0":I
    :goto_d3
    if-ge v8, v2, :cond_e6

    .line 240
    iget-object v12, v0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityLte:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/radio/V1_2/CellIdentityLte;

    mul-int/lit8 v13, v8, 0x58

    int-to-long v13, v13

    invoke-virtual {v12, v7, v13, v14}, Landroid/hardware/radio/V1_2/CellIdentityLte;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 239
    add-int/lit8 v8, v8, 0x1

    goto :goto_d3

    .line 242
    .end local v8    # "_hidl_index_0":I
    :cond_e6
    add-long v3, p2, v3

    add-long v3, v3, v16

    invoke-virtual {v1, v3, v4, v7}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 245
    .end local v2    # "_hidl_vec_size":I
    .end local v7    # "childBlob":Landroid/os/HwBlob;
    iget-object v2, v0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityTdscdma:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 246
    .restart local v2    # "_hidl_vec_size":I
    const-wide/16 v3, 0x48

    add-long v7, p2, v3

    add-long/2addr v7, v5

    invoke-virtual {v1, v7, v8, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 247
    add-long v5, p2, v3

    add-long/2addr v5, v9

    invoke-virtual {v1, v5, v6, v11}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 248
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v2, 0x58

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 249
    .local v5, "childBlob":Landroid/os/HwBlob;
    const/4 v6, 0x0

    .local v6, "_hidl_index_0":I
    :goto_109
    if-ge v6, v2, :cond_11c

    .line 250
    iget-object v7, v0, Landroid/hardware/radio/V1_2/CellIdentity;->cellIdentityTdscdma:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/radio/V1_2/CellIdentityTdscdma;

    mul-int/lit8 v8, v6, 0x58

    int-to-long v8, v8

    invoke-virtual {v7, v5, v8, v9}, Landroid/hardware/radio/V1_2/CellIdentityTdscdma;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 249
    add-int/lit8 v6, v6, 0x1

    goto :goto_109

    .line 252
    .end local v6    # "_hidl_index_0":I
    :cond_11c
    add-long v3, p2, v3

    add-long v3, v3, v16

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 254
    .end local v2    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 179
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x58

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 180
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_2/CellIdentity;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 181
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 182
    return-void
.end method
