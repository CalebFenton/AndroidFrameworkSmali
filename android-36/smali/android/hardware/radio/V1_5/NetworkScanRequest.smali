.class public final Landroid/hardware/radio/V1_5/NetworkScanRequest;
.super Ljava/lang/Object;
.source "NetworkScanRequest.java"


# instance fields
.field public blacklist incrementalResults:Z

.field public blacklist incrementalResultsPeriodicity:I

.field public blacklist interval:I

.field public blacklist maxSearchTime:I

.field public blacklist mccMncs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist specifiers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_5/RadioAccessSpecifier;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist type:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->type:I

    .line 12
    iput v0, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->interval:I

    .line 17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->specifiers:Ljava/util/ArrayList;

    .line 23
    iput v0, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->maxSearchTime:I

    .line 30
    iput-boolean v0, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->incrementalResults:Z

    .line 38
    iput v0, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->incrementalResultsPeriodicity:I

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->mccMncs:Ljava/util/ArrayList;

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
            "Landroid/hardware/radio/V1_5/NetworkScanRequest;",
            ">;"
        }
    .end annotation

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/NetworkScanRequest;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 128
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 129
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x38

    int-to-long v5, v3

    .line 130
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 129
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 133
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 134
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 135
    new-instance v5, Landroid/hardware/radio/V1_5/NetworkScanRequest;

    invoke-direct {v5}, Landroid/hardware/radio/V1_5/NetworkScanRequest;-><init>()V

    .line 136
    .local v5, "_hidl_vec_element":Landroid/hardware/radio/V1_5/NetworkScanRequest;
    mul-int/lit8 v6, v3, 0x38

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/radio/V1_5/NetworkScanRequest;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 137
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    .end local v5    # "_hidl_vec_element":Landroid/hardware/radio/V1_5/NetworkScanRequest;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 141
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
            "Landroid/hardware/radio/V1_5/NetworkScanRequest;",
            ">;)V"
        }
    .end annotation

    .line 193
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/NetworkScanRequest;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 195
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 196
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 197
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 198
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x38

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 199
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 200
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_5/NetworkScanRequest;

    mul-int/lit8 v5, v3, 0x38

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/radio/V1_5/NetworkScanRequest;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 199
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 202
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 205
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 206
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 50
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 51
    return v0

    .line 53
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 54
    return v1

    .line 56
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_5/NetworkScanRequest;

    if-eq v2, v3, :cond_11

    .line 57
    return v1

    .line 59
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/V1_5/NetworkScanRequest;

    .line 60
    .local v2, "other":Landroid/hardware/radio/V1_5/NetworkScanRequest;
    iget v3, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->type:I

    iget v4, v2, Landroid/hardware/radio/V1_5/NetworkScanRequest;->type:I

    if-eq v3, v4, :cond_1b

    .line 61
    return v1

    .line 63
    :cond_1b
    iget v3, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->interval:I

    iget v4, v2, Landroid/hardware/radio/V1_5/NetworkScanRequest;->interval:I

    if-eq v3, v4, :cond_22

    .line 64
    return v1

    .line 66
    :cond_22
    iget-object v3, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->specifiers:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_5/NetworkScanRequest;->specifiers:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 67
    return v1

    .line 69
    :cond_2d
    iget v3, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->maxSearchTime:I

    iget v4, v2, Landroid/hardware/radio/V1_5/NetworkScanRequest;->maxSearchTime:I

    if-eq v3, v4, :cond_34

    .line 70
    return v1

    .line 72
    :cond_34
    iget-boolean v3, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->incrementalResults:Z

    iget-boolean v4, v2, Landroid/hardware/radio/V1_5/NetworkScanRequest;->incrementalResults:Z

    if-eq v3, v4, :cond_3b

    .line 73
    return v1

    .line 75
    :cond_3b
    iget v3, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->incrementalResultsPeriodicity:I

    iget v4, v2, Landroid/hardware/radio/V1_5/NetworkScanRequest;->incrementalResultsPeriodicity:I

    if-eq v3, v4, :cond_42

    .line 76
    return v1

    .line 78
    :cond_42
    iget-object v3, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->mccMncs:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_5/NetworkScanRequest;->mccMncs:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4d

    .line 79
    return v1

    .line 81
    :cond_4d
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 9

    .line 86
    iget v0, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->type:I

    .line 87
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->interval:I

    .line 88
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->specifiers:Ljava/util/ArrayList;

    .line 89
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->maxSearchTime:I

    .line 90
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-boolean v0, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->incrementalResults:Z

    .line 91
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->incrementalResultsPeriodicity:I

    .line 92
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v0, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->mccMncs:Ljava/util/ArrayList;

    .line 93
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    .line 86
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 21
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 146
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->type:I

    .line 147
    const-wide/16 v4, 0x4

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->interval:I

    .line 149
    const-wide/16 v4, 0x8

    add-long v6, p3, v4

    add-long/2addr v6, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    .line 150
    .local v6, "_hidl_vec_size":I
    mul-int/lit8 v7, v6, 0x30

    int-to-long v9, v7

    .line 151
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v11

    add-long v7, p3, v4

    add-long v13, v7, v2

    .line 150
    const/4 v15, 0x1

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v15}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v7

    .line 154
    .local v7, "childBlob":Landroid/os/HwBlob;
    iget-object v8, v0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->specifiers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 155
    const/4 v8, 0x0

    .local v8, "_hidl_index_0":I
    :goto_39
    if-ge v8, v6, :cond_50

    .line 156
    new-instance v9, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;

    invoke-direct {v9}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;-><init>()V

    .line 157
    .local v9, "_hidl_vec_element":Landroid/hardware/radio/V1_5/RadioAccessSpecifier;
    mul-int/lit8 v10, v8, 0x30

    int-to-long v10, v10

    move-object/from16 v12, p1

    invoke-virtual {v9, v12, v7, v10, v11}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 158
    iget-object v10, v0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->specifiers:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    .end local v9    # "_hidl_vec_element":Landroid/hardware/radio/V1_5/RadioAccessSpecifier;
    add-int/lit8 v8, v8, 0x1

    goto :goto_39

    :cond_50
    move-object/from16 v12, p1

    .line 161
    .end local v6    # "_hidl_vec_size":I
    .end local v7    # "childBlob":Landroid/os/HwBlob;
    .end local v8    # "_hidl_index_0":I
    const-wide/16 v6, 0x18

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->maxSearchTime:I

    .line 162
    const-wide/16 v6, 0x1c

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v6

    iput-boolean v6, v0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->incrementalResults:Z

    .line 163
    const-wide/16 v6, 0x20

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->incrementalResultsPeriodicity:I

    .line 165
    const-wide/16 v6, 0x28

    add-long v8, p3, v6

    add-long/2addr v8, v4

    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    .line 166
    .local v4, "_hidl_vec_size":I
    mul-int/lit8 v5, v4, 0x10

    int-to-long v9, v5

    .line 167
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v11

    add-long v6, p3, v6

    add-long v13, v6, v2

    .line 166
    const/4 v15, 0x1

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v15}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 170
    .local v2, "childBlob":Landroid/os/HwBlob;
    iget-object v3, v0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->mccMncs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 171
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_91
    if-ge v3, v4, :cond_bf

    .line 172
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    .line 173
    .local v5, "_hidl_vec_element":Ljava/lang/String;
    mul-int/lit8 v6, v3, 0x10

    int-to-long v6, v6

    invoke-virtual {v2, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v5

    .line 175
    nop

    .line 176
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v9, v6

    .line 177
    invoke-virtual {v2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v11

    mul-int/lit8 v6, v3, 0x10

    add-int/lit8 v6, v6, 0x0

    int-to-long v13, v6

    .line 175
    const/4 v15, 0x0

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v15}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 180
    iget-object v6, v0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->mccMncs:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    .end local v5    # "_hidl_vec_element":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_91

    .line 183
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_index_0":I
    .end local v4    # "_hidl_vec_size":I
    :cond_bf
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 119
    const-wide/16 v0, 0x38

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 120
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_5/NetworkScanRequest;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 121
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const-string v1, ".type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget v1, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->type:I

    invoke-static {v1}, Landroid/hardware/radio/V1_1/ScanType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string v1, ", .interval = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget v1, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->interval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    const-string v1, ", .specifiers = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget-object v1, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->specifiers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    const-string v1, ", .maxSearchTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget v1, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->maxSearchTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    const-string v1, ", .incrementalResults = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget-boolean v1, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->incrementalResults:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 110
    const-string v1, ", .incrementalResultsPeriodicity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget v1, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->incrementalResultsPeriodicity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    const-string v1, ", .mccMncs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget-object v1, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->mccMncs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 17
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 210
    const-wide/16 v0, 0x0

    add-long v2, p2, v0

    iget v4, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->type:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 211
    const-wide/16 v2, 0x4

    add-long/2addr v2, p2

    iget v4, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->interval:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 213
    iget-object v2, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->specifiers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 214
    .local v2, "_hidl_vec_size":I
    const-wide/16 v3, 0x8

    add-long v5, p2, v3

    add-long/2addr v5, v3

    invoke-virtual {p1, v5, v6, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 215
    add-long v5, p2, v3

    const-wide/16 v7, 0xc

    add-long/2addr v5, v7

    const/4 v9, 0x0

    invoke-virtual {p1, v5, v6, v9}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 216
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v2, 0x30

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 217
    .local v5, "childBlob":Landroid/os/HwBlob;
    const/4 v6, 0x0

    .local v6, "_hidl_index_0":I
    :goto_30
    if-ge v6, v2, :cond_43

    .line 218
    iget-object v10, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->specifiers:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;

    mul-int/lit8 v11, v6, 0x30

    int-to-long v11, v11

    invoke-virtual {v10, v5, v11, v12}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 217
    add-int/lit8 v6, v6, 0x1

    goto :goto_30

    .line 220
    .end local v6    # "_hidl_index_0":I
    :cond_43
    add-long v10, p2, v3

    add-long/2addr v10, v0

    invoke-virtual {p1, v10, v11, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 222
    .end local v2    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    const-wide/16 v5, 0x18

    add-long/2addr v5, p2

    iget v2, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->maxSearchTime:I

    invoke-virtual {p1, v5, v6, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 223
    const-wide/16 v5, 0x1c

    add-long/2addr v5, p2

    iget-boolean v2, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->incrementalResults:Z

    invoke-virtual {p1, v5, v6, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 224
    const-wide/16 v5, 0x20

    add-long/2addr v5, p2

    iget v2, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->incrementalResultsPeriodicity:I

    invoke-virtual {p1, v5, v6, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 226
    iget-object v2, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->mccMncs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 227
    .restart local v2    # "_hidl_vec_size":I
    const-wide/16 v5, 0x28

    add-long v10, p2, v5

    add-long/2addr v10, v3

    invoke-virtual {p1, v10, v11, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 228
    add-long v3, p2, v5

    add-long/2addr v3, v7

    invoke-virtual {p1, v3, v4, v9}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 229
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 230
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_7d
    if-ge v4, v2, :cond_90

    .line 231
    mul-int/lit8 v7, v4, 0x10

    int-to-long v7, v7

    iget-object v9, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->mccMncs:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v3, v7, v8, v9}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 230
    add-int/lit8 v4, v4, 0x1

    goto :goto_7d

    .line 233
    .end local v4    # "_hidl_index_0":I
    :cond_90
    add-long/2addr v5, p2

    add-long/2addr v5, v0

    invoke-virtual {p1, v5, v6, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 235
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 186
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x38

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 187
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_5/NetworkScanRequest;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 188
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 189
    return-void
.end method
