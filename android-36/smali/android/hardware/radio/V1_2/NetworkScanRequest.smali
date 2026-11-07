.class public final Landroid/hardware/radio/V1_2/NetworkScanRequest;
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
            "Landroid/hardware/radio/V1_1/RadioAccessSpecifier;",
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

    iput v0, p0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->type:I

    .line 11
    iput v0, p0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->interval:I

    .line 17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->specifiers:Ljava/util/ArrayList;

    .line 23
    iput v0, p0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->maxSearchTime:I

    .line 30
    iput-boolean v0, p0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->incrementalResults:Z

    .line 39
    iput v0, p0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->incrementalResultsPeriodicity:I

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->mccMncs:Ljava/util/ArrayList;

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
            "Landroid/hardware/radio/V1_2/NetworkScanRequest;",
            ">;"
        }
    .end annotation

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/NetworkScanRequest;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 129
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 130
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x38

    int-to-long v5, v3

    .line 131
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 130
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 134
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 135
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 136
    new-instance v5, Landroid/hardware/radio/V1_2/NetworkScanRequest;

    invoke-direct {v5}, Landroid/hardware/radio/V1_2/NetworkScanRequest;-><init>()V

    .line 137
    .local v5, "_hidl_vec_element":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    mul-int/lit8 v6, v3, 0x38

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/radio/V1_2/NetworkScanRequest;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 138
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .end local v5    # "_hidl_vec_element":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 142
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
            "Landroid/hardware/radio/V1_2/NetworkScanRequest;",
            ">;)V"
        }
    .end annotation

    .line 194
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/NetworkScanRequest;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 196
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 197
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 198
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 199
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x38

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 200
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 201
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_2/NetworkScanRequest;

    mul-int/lit8 v5, v3, 0x38

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/radio/V1_2/NetworkScanRequest;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 200
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 203
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 206
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 207
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 51
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 52
    return v0

    .line 54
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 55
    return v1

    .line 57
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_2/NetworkScanRequest;

    if-eq v2, v3, :cond_11

    .line 58
    return v1

    .line 60
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/V1_2/NetworkScanRequest;

    .line 61
    .local v2, "other":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    iget v3, p0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->type:I

    iget v4, v2, Landroid/hardware/radio/V1_2/NetworkScanRequest;->type:I

    if-eq v3, v4, :cond_1b

    .line 62
    return v1

    .line 64
    :cond_1b
    iget v3, p0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->interval:I

    iget v4, v2, Landroid/hardware/radio/V1_2/NetworkScanRequest;->interval:I

    if-eq v3, v4, :cond_22

    .line 65
    return v1

    .line 67
    :cond_22
    iget-object v3, p0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->specifiers:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_2/NetworkScanRequest;->specifiers:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 68
    return v1

    .line 70
    :cond_2d
    iget v3, p0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->maxSearchTime:I

    iget v4, v2, Landroid/hardware/radio/V1_2/NetworkScanRequest;->maxSearchTime:I

    if-eq v3, v4, :cond_34

    .line 71
    return v1

    .line 73
    :cond_34
    iget-boolean v3, p0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->incrementalResults:Z

    iget-boolean v4, v2, Landroid/hardware/radio/V1_2/NetworkScanRequest;->incrementalResults:Z

    if-eq v3, v4, :cond_3b

    .line 74
    return v1

    .line 76
    :cond_3b
    iget v3, p0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->incrementalResultsPeriodicity:I

    iget v4, v2, Landroid/hardware/radio/V1_2/NetworkScanRequest;->incrementalResultsPeriodicity:I

    if-eq v3, v4, :cond_42

    .line 77
    return v1

    .line 79
    :cond_42
    iget-object v3, p0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->mccMncs:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_2/NetworkScanRequest;->mccMncs:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4d

    .line 80
    return v1

    .line 82
    :cond_4d
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 9

    .line 87
    iget v0, p0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->type:I

    .line 88
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->interval:I

    .line 89
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->specifiers:Ljava/util/ArrayList;

    .line 90
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->maxSearchTime:I

    .line 91
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-boolean v0, p0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->incrementalResults:Z

    .line 92
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->incrementalResultsPeriodicity:I

    .line 93
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v0, p0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->mccMncs:Ljava/util/ArrayList;

    .line 94
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    .line 87
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 21
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 147
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->type:I

    .line 148
    const-wide/16 v4, 0x4

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->interval:I

    .line 150
    const-wide/16 v4, 0x8

    add-long v6, p3, v4

    add-long/2addr v6, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    .line 151
    .local v6, "_hidl_vec_size":I
    mul-int/lit8 v7, v6, 0x48

    int-to-long v9, v7

    .line 152
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v11

    add-long v7, p3, v4

    add-long v13, v7, v2

    .line 151
    const/4 v15, 0x1

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v15}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v7

    .line 155
    .local v7, "childBlob":Landroid/os/HwBlob;
    iget-object v8, v0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->specifiers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 156
    const/4 v8, 0x0

    .local v8, "_hidl_index_0":I
    :goto_39
    if-ge v8, v6, :cond_50

    .line 157
    new-instance v9, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;

    invoke-direct {v9}, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;-><init>()V

    .line 158
    .local v9, "_hidl_vec_element":Landroid/hardware/radio/V1_1/RadioAccessSpecifier;
    mul-int/lit8 v10, v8, 0x48

    int-to-long v10, v10

    move-object/from16 v12, p1

    invoke-virtual {v9, v12, v7, v10, v11}, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 159
    iget-object v10, v0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->specifiers:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    .end local v9    # "_hidl_vec_element":Landroid/hardware/radio/V1_1/RadioAccessSpecifier;
    add-int/lit8 v8, v8, 0x1

    goto :goto_39

    :cond_50
    move-object/from16 v12, p1

    .line 162
    .end local v6    # "_hidl_vec_size":I
    .end local v7    # "childBlob":Landroid/os/HwBlob;
    .end local v8    # "_hidl_index_0":I
    const-wide/16 v6, 0x18

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->maxSearchTime:I

    .line 163
    const-wide/16 v6, 0x1c

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v6

    iput-boolean v6, v0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->incrementalResults:Z

    .line 164
    const-wide/16 v6, 0x20

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->incrementalResultsPeriodicity:I

    .line 166
    const-wide/16 v6, 0x28

    add-long v8, p3, v6

    add-long/2addr v8, v4

    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    .line 167
    .local v4, "_hidl_vec_size":I
    mul-int/lit8 v5, v4, 0x10

    int-to-long v9, v5

    .line 168
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v11

    add-long v6, p3, v6

    add-long v13, v6, v2

    .line 167
    const/4 v15, 0x1

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v15}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 171
    .local v2, "childBlob":Landroid/os/HwBlob;
    iget-object v3, v0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->mccMncs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 172
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_91
    if-ge v3, v4, :cond_bf

    .line 173
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    .line 174
    .local v5, "_hidl_vec_element":Ljava/lang/String;
    mul-int/lit8 v6, v3, 0x10

    int-to-long v6, v6

    invoke-virtual {v2, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v5

    .line 176
    nop

    .line 177
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v9, v6

    .line 178
    invoke-virtual {v2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v11

    mul-int/lit8 v6, v3, 0x10

    add-int/lit8 v6, v6, 0x0

    int-to-long v13, v6

    .line 176
    const/4 v15, 0x0

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v15}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 181
    iget-object v6, v0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->mccMncs:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    .end local v5    # "_hidl_vec_element":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_91

    .line 184
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_index_0":I
    .end local v4    # "_hidl_vec_size":I
    :cond_bf
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 120
    const-wide/16 v0, 0x38

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 121
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_2/NetworkScanRequest;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 122
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const-string v1, ".type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget v1, p0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->type:I

    invoke-static {v1}, Landroid/hardware/radio/V1_1/ScanType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string v1, ", .interval = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget v1, p0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->interval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    const-string v1, ", .specifiers = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget-object v1, p0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->specifiers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    const-string v1, ", .maxSearchTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget v1, p0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->maxSearchTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    const-string v1, ", .incrementalResults = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget-boolean v1, p0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->incrementalResults:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 111
    const-string v1, ", .incrementalResultsPeriodicity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget v1, p0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->incrementalResultsPeriodicity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    const-string v1, ", .mccMncs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget-object v1, p0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->mccMncs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 17
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 211
    const-wide/16 v0, 0x0

    add-long v2, p2, v0

    iget v4, p0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->type:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 212
    const-wide/16 v2, 0x4

    add-long/2addr v2, p2

    iget v4, p0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->interval:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 214
    iget-object v2, p0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->specifiers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 215
    .local v2, "_hidl_vec_size":I
    const-wide/16 v3, 0x8

    add-long v5, p2, v3

    add-long/2addr v5, v3

    invoke-virtual {p1, v5, v6, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 216
    add-long v5, p2, v3

    const-wide/16 v7, 0xc

    add-long/2addr v5, v7

    const/4 v9, 0x0

    invoke-virtual {p1, v5, v6, v9}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 217
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v2, 0x48

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 218
    .local v5, "childBlob":Landroid/os/HwBlob;
    const/4 v6, 0x0

    .local v6, "_hidl_index_0":I
    :goto_30
    if-ge v6, v2, :cond_43

    .line 219
    iget-object v10, p0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->specifiers:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;

    mul-int/lit8 v11, v6, 0x48

    int-to-long v11, v11

    invoke-virtual {v10, v5, v11, v12}, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 218
    add-int/lit8 v6, v6, 0x1

    goto :goto_30

    .line 221
    .end local v6    # "_hidl_index_0":I
    :cond_43
    add-long v10, p2, v3

    add-long/2addr v10, v0

    invoke-virtual {p1, v10, v11, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 223
    .end local v2    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    const-wide/16 v5, 0x18

    add-long/2addr v5, p2

    iget v2, p0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->maxSearchTime:I

    invoke-virtual {p1, v5, v6, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 224
    const-wide/16 v5, 0x1c

    add-long/2addr v5, p2

    iget-boolean v2, p0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->incrementalResults:Z

    invoke-virtual {p1, v5, v6, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 225
    const-wide/16 v5, 0x20

    add-long/2addr v5, p2

    iget v2, p0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->incrementalResultsPeriodicity:I

    invoke-virtual {p1, v5, v6, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 227
    iget-object v2, p0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->mccMncs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 228
    .restart local v2    # "_hidl_vec_size":I
    const-wide/16 v5, 0x28

    add-long v10, p2, v5

    add-long/2addr v10, v3

    invoke-virtual {p1, v10, v11, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 229
    add-long v3, p2, v5

    add-long/2addr v3, v7

    invoke-virtual {p1, v3, v4, v9}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 230
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 231
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_7d
    if-ge v4, v2, :cond_90

    .line 232
    mul-int/lit8 v7, v4, 0x10

    int-to-long v7, v7

    iget-object v9, p0, Landroid/hardware/radio/V1_2/NetworkScanRequest;->mccMncs:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v3, v7, v8, v9}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 231
    add-int/lit8 v4, v4, 0x1

    goto :goto_7d

    .line 234
    .end local v4    # "_hidl_index_0":I
    :cond_90
    add-long/2addr v5, p2

    add-long/2addr v5, v0

    invoke-virtual {p1, v5, v6, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 236
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 187
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x38

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 188
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_2/NetworkScanRequest;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 189
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 190
    return-void
.end method
