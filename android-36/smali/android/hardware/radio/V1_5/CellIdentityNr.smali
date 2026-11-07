.class public final Landroid/hardware/radio/V1_5/CellIdentityNr;
.super Ljava/lang/Object;
.source "CellIdentityNr.java"


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

.field public blacklist bands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist base:Landroid/hardware/radio/V1_4/CellIdentityNr;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Landroid/hardware/radio/V1_4/CellIdentityNr;

    invoke-direct {v0}, Landroid/hardware/radio/V1_4/CellIdentityNr;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_5/CellIdentityNr;->base:Landroid/hardware/radio/V1_4/CellIdentityNr;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_5/CellIdentityNr;->additionalPlmns:Ljava/util/ArrayList;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_5/CellIdentityNr;->bands:Ljava/util/ArrayList;

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
            "Landroid/hardware/radio/V1_5/CellIdentityNr;",
            ">;"
        }
    .end annotation

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/CellIdentityNr;>;"
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
    mul-int/lit8 v3, v2, 0x78

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
    new-instance v5, Landroid/hardware/radio/V1_5/CellIdentityNr;

    invoke-direct {v5}, Landroid/hardware/radio/V1_5/CellIdentityNr;-><init>()V

    .line 82
    .local v5, "_hidl_vec_element":Landroid/hardware/radio/V1_5/CellIdentityNr;
    mul-int/lit8 v6, v3, 0x78

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/radio/V1_5/CellIdentityNr;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 83
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .end local v5    # "_hidl_vec_element":Landroid/hardware/radio/V1_5/CellIdentityNr;
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
            "Landroid/hardware/radio/V1_5/CellIdentityNr;",
            ">;)V"
        }
    .end annotation

    .line 135
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/CellIdentityNr;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 137
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 138
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 139
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 140
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x78

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 141
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 142
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_5/CellIdentityNr;

    mul-int/lit8 v5, v3, 0x78

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/radio/V1_5/CellIdentityNr;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 141
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 144
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 147
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 148
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

    const-class v3, Landroid/hardware/radio/V1_5/CellIdentityNr;

    if-eq v2, v3, :cond_11

    .line 27
    return v1

    .line 29
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/V1_5/CellIdentityNr;

    .line 30
    .local v2, "other":Landroid/hardware/radio/V1_5/CellIdentityNr;
    iget-object v3, p0, Landroid/hardware/radio/V1_5/CellIdentityNr;->base:Landroid/hardware/radio/V1_4/CellIdentityNr;

    iget-object v4, v2, Landroid/hardware/radio/V1_5/CellIdentityNr;->base:Landroid/hardware/radio/V1_4/CellIdentityNr;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 31
    return v1

    .line 33
    :cond_1f
    iget-object v3, p0, Landroid/hardware/radio/V1_5/CellIdentityNr;->additionalPlmns:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_5/CellIdentityNr;->additionalPlmns:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 34
    return v1

    .line 36
    :cond_2a
    iget-object v3, p0, Landroid/hardware/radio/V1_5/CellIdentityNr;->bands:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_5/CellIdentityNr;->bands:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    .line 37
    return v1

    .line 39
    :cond_35
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 4

    .line 44
    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellIdentityNr;->base:Landroid/hardware/radio/V1_4/CellIdentityNr;

    .line 45
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/V1_5/CellIdentityNr;->additionalPlmns:Ljava/util/ArrayList;

    .line 46
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/V1_5/CellIdentityNr;->bands:Ljava/util/ArrayList;

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
    .registers 24
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 92
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Landroid/hardware/radio/V1_5/CellIdentityNr;->base:Landroid/hardware/radio/V1_4/CellIdentityNr;

    const-wide/16 v3, 0x0

    add-long v5, p3, v3

    move-object/from16 v7, p1

    invoke-virtual {v2, v7, v1, v5, v6}, Landroid/hardware/radio/V1_4/CellIdentityNr;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 94
    const-wide/16 v5, 0x58

    add-long v8, p3, v5

    const-wide/16 v15, 0x8

    add-long/2addr v8, v15

    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 95
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v8, v2, 0x10

    int-to-long v8, v8

    .line 96
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v5, p3, v5

    add-long v12, v5, v3

    .line 95
    const/4 v14, 0x1

    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v5

    .line 99
    .local v5, "childBlob":Landroid/os/HwBlob;
    iget-object v6, v0, Landroid/hardware/radio/V1_5/CellIdentityNr;->additionalPlmns:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 100
    const/4 v6, 0x0

    .local v6, "_hidl_index_0":I
    :goto_30
    if-ge v6, v2, :cond_63

    .line 101
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7}, Ljava/lang/String;-><init>()V

    .line 102
    .local v7, "_hidl_vec_element":Ljava/lang/String;
    mul-int/lit8 v8, v6, 0x10

    int-to-long v8, v8

    invoke-virtual {v5, v8, v9}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v7

    .line 104
    nop

    .line 105
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v8, v8

    add-int/lit8 v8, v8, 0x1

    int-to-long v8, v8

    .line 106
    invoke-virtual {v5}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    mul-int/lit8 v12, v6, 0x10

    add-int/lit8 v12, v12, 0x0

    int-to-long v12, v12

    .line 104
    const/4 v14, 0x0

    move-wide/from16 v17, v3

    move-object v3, v7

    move-object/from16 v7, p1

    .end local v7    # "_hidl_vec_element":Ljava/lang/String;
    .local v3, "_hidl_vec_element":Ljava/lang/String;
    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 109
    iget-object v4, v0, Landroid/hardware/radio/V1_5/CellIdentityNr;->additionalPlmns:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .end local v3    # "_hidl_vec_element":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v3, v17

    goto :goto_30

    :cond_63
    move-wide/from16 v17, v3

    .line 113
    .end local v2    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    .end local v6    # "_hidl_index_0":I
    const-wide/16 v2, 0x68

    add-long v4, p3, v2

    add-long/2addr v4, v15

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    .line 114
    .local v4, "_hidl_vec_size":I
    mul-int/lit8 v5, v4, 0x4

    int-to-long v8, v5

    .line 115
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v2, p3, v2

    add-long v12, v2, v17

    .line 114
    const/4 v14, 0x1

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 118
    .local v2, "childBlob":Landroid/os/HwBlob;
    iget-object v3, v0, Landroid/hardware/radio/V1_5/CellIdentityNr;->bands:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 119
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_86
    if-ge v3, v4, :cond_9c

    .line 120
    const/4 v5, 0x0

    .line 121
    .local v5, "_hidl_vec_element":I
    mul-int/lit8 v6, v3, 0x4

    int-to-long v6, v6

    invoke-virtual {v2, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v5

    .line 122
    iget-object v6, v0, Landroid/hardware/radio/V1_5/CellIdentityNr;->bands:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    .end local v5    # "_hidl_vec_element":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_86

    .line 125
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_index_0":I
    .end local v4    # "_hidl_vec_size":I
    :cond_9c
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 65
    const-wide/16 v0, 0x78

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 66
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_5/CellIdentityNr;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

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
    const-string v1, ".base = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget-object v1, p0, Landroid/hardware/radio/V1_5/CellIdentityNr;->base:Landroid/hardware/radio/V1_4/CellIdentityNr;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    const-string v1, ", .additionalPlmns = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-object v1, p0, Landroid/hardware/radio/V1_5/CellIdentityNr;->additionalPlmns:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    const-string v1, ", .bands = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-object v1, p0, Landroid/hardware/radio/V1_5/CellIdentityNr;->bands:Ljava/util/ArrayList;

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
    .registers 22
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 152
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/hardware/radio/V1_5/CellIdentityNr;->base:Landroid/hardware/radio/V1_4/CellIdentityNr;

    const-wide/16 v3, 0x0

    add-long v5, p2, v3

    invoke-virtual {v2, v1, v5, v6}, Landroid/hardware/radio/V1_4/CellIdentityNr;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 154
    iget-object v2, v0, Landroid/hardware/radio/V1_5/CellIdentityNr;->additionalPlmns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 155
    .local v2, "_hidl_vec_size":I
    const-wide/16 v5, 0x58

    add-long v7, p2, v5

    const-wide/16 v9, 0x8

    add-long/2addr v7, v9

    invoke-virtual {v1, v7, v8, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 156
    add-long v7, p2, v5

    const-wide/16 v11, 0xc

    add-long/2addr v7, v11

    const/4 v13, 0x0

    invoke-virtual {v1, v7, v8, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 157
    new-instance v7, Landroid/os/HwBlob;

    mul-int/lit8 v8, v2, 0x10

    invoke-direct {v7, v8}, Landroid/os/HwBlob;-><init>(I)V

    .line 158
    .local v7, "childBlob":Landroid/os/HwBlob;
    const/4 v8, 0x0

    .local v8, "_hidl_index_0":I
    :goto_2e
    if-ge v8, v2, :cond_45

    .line 159
    mul-int/lit8 v14, v8, 0x10

    int-to-long v14, v14

    move-wide/from16 v16, v3

    iget-object v3, v0, Landroid/hardware/radio/V1_5/CellIdentityNr;->additionalPlmns:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v14, v15, v3}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 158
    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v3, v16

    goto :goto_2e

    :cond_45
    move-wide/from16 v16, v3

    .line 161
    .end local v8    # "_hidl_index_0":I
    add-long v5, p2, v5

    add-long v5, v5, v16

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 164
    .end local v2    # "_hidl_vec_size":I
    .end local v7    # "childBlob":Landroid/os/HwBlob;
    iget-object v2, v0, Landroid/hardware/radio/V1_5/CellIdentityNr;->bands:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 165
    .restart local v2    # "_hidl_vec_size":I
    const-wide/16 v3, 0x68

    add-long v5, p2, v3

    add-long/2addr v5, v9

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 166
    add-long v5, p2, v3

    add-long/2addr v5, v11

    invoke-virtual {v1, v5, v6, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 167
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v2, 0x4

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 168
    .local v5, "childBlob":Landroid/os/HwBlob;
    const/4 v6, 0x0

    .local v6, "_hidl_index_0":I
    :goto_6a
    if-ge v6, v2, :cond_81

    .line 169
    mul-int/lit8 v7, v6, 0x4

    int-to-long v7, v7

    iget-object v9, v0, Landroid/hardware/radio/V1_5/CellIdentityNr;->bands:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v5, v7, v8, v9}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 168
    add-int/lit8 v6, v6, 0x1

    goto :goto_6a

    .line 171
    .end local v6    # "_hidl_index_0":I
    :cond_81
    add-long v3, p2, v3

    add-long v3, v3, v16

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 173
    .end local v2    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 128
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x78

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 129
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_5/CellIdentityNr;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 130
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 131
    return-void
.end method
