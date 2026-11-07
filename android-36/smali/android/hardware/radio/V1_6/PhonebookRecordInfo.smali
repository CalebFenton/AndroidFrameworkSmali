.class public final Landroid/hardware/radio/V1_6/PhonebookRecordInfo;
.super Ljava/lang/Object;
.source "PhonebookRecordInfo.java"


# instance fields
.field public blacklist additionalNumbers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist emails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist name:Ljava/lang/String;

.field public blacklist number:Ljava/lang/String;

.field public blacklist recordId:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->recordId:I

    .line 12
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->name:Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->number:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->emails:Ljava/util/ArrayList;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->additionalNumbers:Ljava/util/ArrayList;

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
            "Landroid/hardware/radio/V1_6/PhonebookRecordInfo;",
            ">;"
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_6/PhonebookRecordInfo;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 94
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 95
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x48

    int-to-long v5, v3

    .line 96
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 95
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 99
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 100
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 101
    new-instance v5, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;-><init>()V

    .line 102
    .local v5, "_hidl_vec_element":Landroid/hardware/radio/V1_6/PhonebookRecordInfo;
    mul-int/lit8 v6, v3, 0x48

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 103
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .end local v5    # "_hidl_vec_element":Landroid/hardware/radio/V1_6/PhonebookRecordInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 107
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
            "Landroid/hardware/radio/V1_6/PhonebookRecordInfo;",
            ">;)V"
        }
    .end annotation

    .line 175
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_6/PhonebookRecordInfo;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 177
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 178
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 179
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 180
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x48

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 181
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 182
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;

    mul-int/lit8 v5, v3, 0x48

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 181
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 184
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 187
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 188
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

    const-class v3, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;

    if-eq v2, v3, :cond_11

    .line 35
    return v1

    .line 37
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;

    .line 38
    .local v2, "other":Landroid/hardware/radio/V1_6/PhonebookRecordInfo;
    iget v3, p0, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->recordId:I

    iget v4, v2, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->recordId:I

    if-eq v3, v4, :cond_1b

    .line 39
    return v1

    .line 41
    :cond_1b
    iget-object v3, p0, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->name:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 42
    return v1

    .line 44
    :cond_26
    iget-object v3, p0, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->number:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->number:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 45
    return v1

    .line 47
    :cond_31
    iget-object v3, p0, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->emails:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->emails:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    .line 48
    return v1

    .line 50
    :cond_3c
    iget-object v3, p0, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->additionalNumbers:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->additionalNumbers:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_47

    .line 51
    return v1

    .line 53
    :cond_47
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 6

    .line 58
    iget v0, p0, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->recordId:I

    .line 59
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->name:Ljava/lang/String;

    .line 60
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->number:Ljava/lang/String;

    .line 61
    invoke-static {v2}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->emails:Ljava/util/ArrayList;

    .line 62
    invoke-static {v3}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->additionalNumbers:Ljava/util/ArrayList;

    .line 63
    invoke-static {v4}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 58
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 28
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 112
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->recordId:I

    .line 113
    const-wide/16 v4, 0x8

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->name:Ljava/lang/String;

    .line 115
    iget-object v6, v0, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->name:Ljava/lang/String;

    .line 116
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 117
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v6, p3, v4

    add-long v12, v6, v2

    .line 115
    const/4 v14, 0x0

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 120
    const-wide/16 v6, 0x18

    add-long v8, p3, v6

    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->number:Ljava/lang/String;

    .line 122
    iget-object v8, v0, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->number:Ljava/lang/String;

    .line 123
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v8, v8

    add-int/lit8 v8, v8, 0x1

    int-to-long v8, v8

    .line 124
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v18

    add-long v6, p3, v6

    add-long v20, v6, v2

    .line 122
    const/16 v22, 0x0

    move-object/from16 v15, p1

    move-wide/from16 v16, v8

    invoke-virtual/range {v15 .. v22}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 128
    const-wide/16 v6, 0x28

    add-long v8, p3, v6

    add-long/2addr v8, v4

    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v8

    .line 129
    .local v8, "_hidl_vec_size":I
    mul-int/lit8 v9, v8, 0x10

    int-to-long v9, v9

    .line 130
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v18

    add-long v6, p3, v6

    add-long v20, v6, v2

    .line 129
    const/16 v22, 0x1

    move-wide/from16 v16, v9

    invoke-virtual/range {v15 .. v22}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v6

    .line 133
    .local v6, "childBlob":Landroid/os/HwBlob;
    iget-object v7, v0, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->emails:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 134
    const/4 v7, 0x0

    .local v7, "_hidl_index_0":I
    :goto_77
    if-ge v7, v8, :cond_aa

    .line 135
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9}, Ljava/lang/String;-><init>()V

    .line 136
    .local v9, "_hidl_vec_element":Ljava/lang/String;
    mul-int/lit8 v10, v7, 0x10

    int-to-long v10, v10

    invoke-virtual {v6, v10, v11}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v9

    .line 138
    nop

    .line 139
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    array-length v10, v10

    add-int/lit8 v10, v10, 0x1

    int-to-long v10, v10

    .line 140
    invoke-virtual {v6}, Landroid/os/HwBlob;->handle()J

    move-result-wide v18

    mul-int/lit8 v12, v7, 0x10

    add-int/lit8 v12, v12, 0x0

    int-to-long v12, v12

    .line 138
    const/16 v22, 0x0

    move-object/from16 v15, p1

    move-wide/from16 v16, v10

    move-wide/from16 v20, v12

    invoke-virtual/range {v15 .. v22}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 143
    iget-object v10, v0, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->emails:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    .end local v9    # "_hidl_vec_element":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_77

    .line 147
    .end local v6    # "childBlob":Landroid/os/HwBlob;
    .end local v7    # "_hidl_index_0":I
    .end local v8    # "_hidl_vec_size":I
    :cond_aa
    const-wide/16 v6, 0x38

    add-long v8, p3, v6

    add-long/2addr v8, v4

    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    .line 148
    .local v4, "_hidl_vec_size":I
    mul-int/lit8 v5, v4, 0x10

    int-to-long v8, v5

    .line 149
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v18

    add-long v6, p3, v6

    add-long v20, v6, v2

    .line 148
    const/16 v22, 0x1

    move-object/from16 v15, p1

    move-wide/from16 v16, v8

    invoke-virtual/range {v15 .. v22}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 152
    .local v2, "childBlob":Landroid/os/HwBlob;
    iget-object v3, v0, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->additionalNumbers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 153
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_ce
    if-ge v3, v4, :cond_101

    .line 154
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    .line 155
    .local v5, "_hidl_vec_element":Ljava/lang/String;
    mul-int/lit8 v6, v3, 0x10

    int-to-long v6, v6

    invoke-virtual {v2, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v5

    .line 157
    nop

    .line 158
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v6, v6

    .line 159
    invoke-virtual {v2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v18

    mul-int/lit8 v8, v3, 0x10

    add-int/lit8 v8, v8, 0x0

    int-to-long v8, v8

    .line 157
    const/16 v22, 0x0

    move-object/from16 v15, p1

    move-wide/from16 v16, v6

    move-wide/from16 v20, v8

    invoke-virtual/range {v15 .. v22}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 162
    iget-object v6, v0, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->additionalNumbers:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    .end local v5    # "_hidl_vec_element":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_ce

    .line 165
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_index_0":I
    .end local v4    # "_hidl_vec_size":I
    :cond_101
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 85
    const-wide/16 v0, 0x48

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 86
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 87
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string v1, ".recordId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget v1, p0, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->recordId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, ", .name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget-object v1, p0, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v1, ", .number = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget-object v1, p0, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string v1, ", .emails = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-object v1, p0, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->emails:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    const-string v1, ", .additionalNumbers = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget-object v1, p0, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->additionalNumbers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 22
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 192
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0x0

    add-long v4, p2, v2

    iget v6, v0, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->recordId:I

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 193
    const-wide/16 v4, 0x8

    add-long v6, p2, v4

    iget-object v8, v0, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v6, v7, v8}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 194
    const-wide/16 v6, 0x18

    add-long v6, p2, v6

    iget-object v8, v0, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->number:Ljava/lang/String;

    invoke-virtual {v1, v6, v7, v8}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 196
    iget-object v6, v0, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->emails:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 197
    .local v6, "_hidl_vec_size":I
    const-wide/16 v7, 0x28

    add-long v9, p2, v7

    add-long/2addr v9, v4

    invoke-virtual {v1, v9, v10, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 198
    add-long v9, p2, v7

    const-wide/16 v11, 0xc

    add-long/2addr v9, v11

    const/4 v13, 0x0

    invoke-virtual {v1, v9, v10, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 199
    new-instance v9, Landroid/os/HwBlob;

    mul-int/lit8 v10, v6, 0x10

    invoke-direct {v9, v10}, Landroid/os/HwBlob;-><init>(I)V

    .line 200
    .local v9, "childBlob":Landroid/os/HwBlob;
    const/4 v10, 0x0

    .local v10, "_hidl_index_0":I
    :goto_3e
    if-ge v10, v6, :cond_55

    .line 201
    mul-int/lit8 v14, v10, 0x10

    int-to-long v14, v14

    move-wide/from16 v16, v2

    iget-object v2, v0, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->emails:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v9, v14, v15, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 200
    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v2, v16

    goto :goto_3e

    :cond_55
    move-wide/from16 v16, v2

    .line 203
    .end local v10    # "_hidl_index_0":I
    add-long v7, p2, v7

    add-long v7, v7, v16

    invoke-virtual {v1, v7, v8, v9}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 206
    .end local v6    # "_hidl_vec_size":I
    .end local v9    # "childBlob":Landroid/os/HwBlob;
    iget-object v2, v0, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->additionalNumbers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 207
    .local v2, "_hidl_vec_size":I
    const-wide/16 v6, 0x38

    add-long v8, p2, v6

    add-long/2addr v8, v4

    invoke-virtual {v1, v8, v9, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 208
    add-long v3, p2, v6

    add-long/2addr v3, v11

    invoke-virtual {v1, v3, v4, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 209
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 210
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_7a
    if-ge v4, v2, :cond_8d

    .line 211
    mul-int/lit8 v5, v4, 0x10

    int-to-long v8, v5

    iget-object v5, v0, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->additionalNumbers:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v8, v9, v5}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 210
    add-int/lit8 v4, v4, 0x1

    goto :goto_7a

    .line 213
    .end local v4    # "_hidl_index_0":I
    :cond_8d
    add-long v6, p2, v6

    add-long v6, v6, v16

    invoke-virtual {v1, v6, v7, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 215
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 168
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x48

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 169
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 170
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 171
    return-void
.end method
