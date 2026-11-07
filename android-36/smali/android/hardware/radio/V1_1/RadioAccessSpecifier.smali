.class public final Landroid/hardware/radio/V1_1/RadioAccessSpecifier;
.super Ljava/lang/Object;
.source "RadioAccessSpecifier.java"


# instance fields
.field public blacklist channels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist eutranBands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist geranBands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist radioAccessNetwork:I

.field public blacklist utranBands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
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
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->radioAccessNetwork:I

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->geranBands:Ljava/util/ArrayList;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->utranBands:Ljava/util/ArrayList;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->eutranBands:Ljava/util/ArrayList;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->channels:Ljava/util/ArrayList;

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
            "Landroid/hardware/radio/V1_1/RadioAccessSpecifier;",
            ">;"
        }
    .end annotation

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_1/RadioAccessSpecifier;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 79
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 80
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x48

    int-to-long v5, v3

    .line 81
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 80
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 84
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 85
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 86
    new-instance v5, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;

    invoke-direct {v5}, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;-><init>()V

    .line 87
    .local v5, "_hidl_vec_element":Landroid/hardware/radio/V1_1/RadioAccessSpecifier;
    mul-int/lit8 v6, v3, 0x48

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 88
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .end local v5    # "_hidl_vec_element":Landroid/hardware/radio/V1_1/RadioAccessSpecifier;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 92
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
            "Landroid/hardware/radio/V1_1/RadioAccessSpecifier;",
            ">;)V"
        }
    .end annotation

    .line 160
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_1/RadioAccessSpecifier;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 162
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 163
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 164
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 165
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x48

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 166
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 167
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;

    mul-int/lit8 v5, v3, 0x48

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 166
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 169
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 172
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 173
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 13
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 14
    return v0

    .line 16
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 17
    return v1

    .line 19
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;

    if-eq v2, v3, :cond_11

    .line 20
    return v1

    .line 22
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;

    .line 23
    .local v2, "other":Landroid/hardware/radio/V1_1/RadioAccessSpecifier;
    iget v3, p0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->radioAccessNetwork:I

    iget v4, v2, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->radioAccessNetwork:I

    if-eq v3, v4, :cond_1b

    .line 24
    return v1

    .line 26
    :cond_1b
    iget-object v3, p0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->geranBands:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->geranBands:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 27
    return v1

    .line 29
    :cond_26
    iget-object v3, p0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->utranBands:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->utranBands:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 30
    return v1

    .line 32
    :cond_31
    iget-object v3, p0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->eutranBands:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->eutranBands:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    .line 33
    return v1

    .line 35
    :cond_3c
    iget-object v3, p0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->channels:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->channels:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_47

    .line 36
    return v1

    .line 38
    :cond_47
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 6

    .line 43
    iget v0, p0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->radioAccessNetwork:I

    .line 44
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->geranBands:Ljava/util/ArrayList;

    .line 45
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->utranBands:Ljava/util/ArrayList;

    .line 46
    invoke-static {v2}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->eutranBands:Ljava/util/ArrayList;

    .line 47
    invoke-static {v3}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->channels:Ljava/util/ArrayList;

    .line 48
    invoke-static {v4}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 43
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 21
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 97
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->radioAccessNetwork:I

    .line 99
    const-wide/16 v4, 0x8

    add-long v6, p3, v4

    add-long/2addr v6, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    .line 100
    .local v6, "_hidl_vec_size":I
    mul-int/lit8 v7, v6, 0x4

    int-to-long v9, v7

    .line 101
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v11

    add-long v7, p3, v4

    add-long v13, v7, v2

    .line 100
    const/4 v15, 0x1

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v15}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v7

    .line 104
    .local v7, "childBlob":Landroid/os/HwBlob;
    iget-object v8, v0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->geranBands:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 105
    const/4 v8, 0x0

    .local v8, "_hidl_index_0":I
    :goto_2f
    if-ge v8, v6, :cond_45

    .line 106
    const/4 v9, 0x0

    .line 107
    .local v9, "_hidl_vec_element":I
    mul-int/lit8 v10, v8, 0x4

    int-to-long v10, v10

    invoke-virtual {v7, v10, v11}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v9

    .line 108
    iget-object v10, v0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->geranBands:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    .end local v9    # "_hidl_vec_element":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_2f

    .line 112
    .end local v6    # "_hidl_vec_size":I
    .end local v7    # "childBlob":Landroid/os/HwBlob;
    .end local v8    # "_hidl_index_0":I
    :cond_45
    const-wide/16 v6, 0x18

    add-long v8, p3, v6

    add-long/2addr v8, v4

    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v8

    .line 113
    .local v8, "_hidl_vec_size":I
    mul-int/lit8 v9, v8, 0x4

    int-to-long v9, v9

    .line 114
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v11

    add-long v6, p3, v6

    add-long v13, v6, v2

    .line 113
    const/4 v15, 0x1

    move v6, v8

    move-object/from16 v8, p1

    .end local v8    # "_hidl_vec_size":I
    .restart local v6    # "_hidl_vec_size":I
    invoke-virtual/range {v8 .. v15}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v7

    .line 117
    .restart local v7    # "childBlob":Landroid/os/HwBlob;
    iget-object v8, v0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->utranBands:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 118
    const/4 v8, 0x0

    .local v8, "_hidl_index_0":I
    :goto_67
    if-ge v8, v6, :cond_7d

    .line 119
    const/4 v9, 0x0

    .line 120
    .restart local v9    # "_hidl_vec_element":I
    mul-int/lit8 v10, v8, 0x4

    int-to-long v10, v10

    invoke-virtual {v7, v10, v11}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v9

    .line 121
    iget-object v10, v0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->utranBands:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .end local v9    # "_hidl_vec_element":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_67

    .line 125
    .end local v6    # "_hidl_vec_size":I
    .end local v7    # "childBlob":Landroid/os/HwBlob;
    .end local v8    # "_hidl_index_0":I
    :cond_7d
    const-wide/16 v6, 0x28

    add-long v8, p3, v6

    add-long/2addr v8, v4

    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v8

    .line 126
    .local v8, "_hidl_vec_size":I
    mul-int/lit8 v9, v8, 0x4

    int-to-long v9, v9

    .line 127
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v11

    add-long v6, p3, v6

    add-long v13, v6, v2

    .line 126
    const/4 v15, 0x1

    move v6, v8

    move-object/from16 v8, p1

    .end local v8    # "_hidl_vec_size":I
    .restart local v6    # "_hidl_vec_size":I
    invoke-virtual/range {v8 .. v15}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v7

    .line 130
    .restart local v7    # "childBlob":Landroid/os/HwBlob;
    iget-object v8, v0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->eutranBands:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 131
    const/4 v8, 0x0

    .local v8, "_hidl_index_0":I
    :goto_9f
    if-ge v8, v6, :cond_b5

    .line 132
    const/4 v9, 0x0

    .line 133
    .restart local v9    # "_hidl_vec_element":I
    mul-int/lit8 v10, v8, 0x4

    int-to-long v10, v10

    invoke-virtual {v7, v10, v11}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v9

    .line 134
    iget-object v10, v0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->eutranBands:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    .end local v9    # "_hidl_vec_element":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_9f

    .line 138
    .end local v6    # "_hidl_vec_size":I
    .end local v7    # "childBlob":Landroid/os/HwBlob;
    .end local v8    # "_hidl_index_0":I
    :cond_b5
    const-wide/16 v6, 0x38

    add-long v8, p3, v6

    add-long/2addr v8, v4

    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    .line 139
    .local v4, "_hidl_vec_size":I
    mul-int/lit8 v5, v4, 0x4

    int-to-long v9, v5

    .line 140
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v11

    add-long v6, p3, v6

    add-long v13, v6, v2

    .line 139
    const/4 v15, 0x1

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v15}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 143
    .local v2, "childBlob":Landroid/os/HwBlob;
    iget-object v3, v0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->channels:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 144
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_d6
    if-ge v3, v4, :cond_ec

    .line 145
    const/4 v5, 0x0

    .line 146
    .local v5, "_hidl_vec_element":I
    mul-int/lit8 v6, v3, 0x4

    int-to-long v6, v6

    invoke-virtual {v2, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v5

    .line 147
    iget-object v6, v0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->channels:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    .end local v5    # "_hidl_vec_element":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_d6

    .line 150
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_index_0":I
    .end local v4    # "_hidl_vec_size":I
    :cond_ec
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 70
    const-wide/16 v0, 0x48

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 71
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 72
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const-string v1, ".radioAccessNetwork = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget v1, p0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->radioAccessNetwork:I

    invoke-static {v1}, Landroid/hardware/radio/V1_1/RadioAccessNetworks;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const-string v1, ", .geranBands = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget-object v1, p0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->geranBands:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    const-string v1, ", .utranBands = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-object v1, p0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->utranBands:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, ", .eutranBands = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget-object v1, p0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->eutranBands:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    const-string v1, ", .channels = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget-object v1, p0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->channels:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 22
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 177
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0x0

    add-long v4, p2, v2

    iget v6, v0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->radioAccessNetwork:I

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 179
    iget-object v4, v0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->geranBands:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 180
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    add-long v7, p2, v5

    add-long/2addr v7, v5

    invoke-virtual {v1, v7, v8, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 181
    add-long v7, p2, v5

    const-wide/16 v9, 0xc

    add-long/2addr v7, v9

    const/4 v11, 0x0

    invoke-virtual {v1, v7, v8, v11}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 182
    new-instance v7, Landroid/os/HwBlob;

    mul-int/lit8 v8, v4, 0x4

    invoke-direct {v7, v8}, Landroid/os/HwBlob;-><init>(I)V

    .line 183
    .local v7, "childBlob":Landroid/os/HwBlob;
    const/4 v8, 0x0

    .local v8, "_hidl_index_0":I
    :goto_2c
    if-ge v8, v4, :cond_43

    .line 184
    mul-int/lit8 v12, v8, 0x4

    int-to-long v12, v12

    iget-object v14, v0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->geranBands:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v7, v12, v13, v14}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 183
    add-int/lit8 v8, v8, 0x1

    goto :goto_2c

    .line 186
    .end local v8    # "_hidl_index_0":I
    :cond_43
    add-long v12, p2, v5

    add-long/2addr v12, v2

    invoke-virtual {v1, v12, v13, v7}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 189
    .end local v4    # "_hidl_vec_size":I
    .end local v7    # "childBlob":Landroid/os/HwBlob;
    iget-object v4, v0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->utranBands:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 190
    .restart local v4    # "_hidl_vec_size":I
    const-wide/16 v7, 0x18

    add-long v12, p2, v7

    add-long/2addr v12, v5

    invoke-virtual {v1, v12, v13, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 191
    add-long v12, p2, v7

    add-long/2addr v12, v9

    invoke-virtual {v1, v12, v13, v11}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 192
    new-instance v12, Landroid/os/HwBlob;

    mul-int/lit8 v13, v4, 0x4

    invoke-direct {v12, v13}, Landroid/os/HwBlob;-><init>(I)V

    .line 193
    .local v12, "childBlob":Landroid/os/HwBlob;
    const/4 v13, 0x0

    .local v13, "_hidl_index_0":I
    :goto_65
    if-ge v13, v4, :cond_80

    .line 194
    mul-int/lit8 v14, v13, 0x4

    int-to-long v14, v14

    move-wide/from16 v16, v2

    iget-object v2, v0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->utranBands:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v12, v14, v15, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 193
    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v2, v16

    goto :goto_65

    :cond_80
    move-wide/from16 v16, v2

    .line 196
    .end local v13    # "_hidl_index_0":I
    add-long v7, p2, v7

    add-long v7, v7, v16

    invoke-virtual {v1, v7, v8, v12}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 199
    .end local v4    # "_hidl_vec_size":I
    .end local v12    # "childBlob":Landroid/os/HwBlob;
    iget-object v2, v0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->eutranBands:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 200
    .local v2, "_hidl_vec_size":I
    const-wide/16 v3, 0x28

    add-long v7, p2, v3

    add-long/2addr v7, v5

    invoke-virtual {v1, v7, v8, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 201
    add-long v7, p2, v3

    add-long/2addr v7, v9

    invoke-virtual {v1, v7, v8, v11}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 202
    new-instance v7, Landroid/os/HwBlob;

    mul-int/lit8 v8, v2, 0x4

    invoke-direct {v7, v8}, Landroid/os/HwBlob;-><init>(I)V

    .line 203
    .restart local v7    # "childBlob":Landroid/os/HwBlob;
    const/4 v8, 0x0

    .restart local v8    # "_hidl_index_0":I
    :goto_a5
    if-ge v8, v2, :cond_bc

    .line 204
    mul-int/lit8 v12, v8, 0x4

    int-to-long v12, v12

    iget-object v14, v0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->eutranBands:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v7, v12, v13, v14}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 203
    add-int/lit8 v8, v8, 0x1

    goto :goto_a5

    .line 206
    .end local v8    # "_hidl_index_0":I
    :cond_bc
    add-long v3, p2, v3

    add-long v3, v3, v16

    invoke-virtual {v1, v3, v4, v7}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 209
    .end local v2    # "_hidl_vec_size":I
    .end local v7    # "childBlob":Landroid/os/HwBlob;
    iget-object v2, v0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->channels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 210
    .restart local v2    # "_hidl_vec_size":I
    const-wide/16 v3, 0x38

    add-long v7, p2, v3

    add-long/2addr v7, v5

    invoke-virtual {v1, v7, v8, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 211
    add-long v5, p2, v3

    add-long/2addr v5, v9

    invoke-virtual {v1, v5, v6, v11}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 212
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v2, 0x4

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 213
    .local v5, "childBlob":Landroid/os/HwBlob;
    const/4 v6, 0x0

    .local v6, "_hidl_index_0":I
    :goto_df
    if-ge v6, v2, :cond_f6

    .line 214
    mul-int/lit8 v7, v6, 0x4

    int-to-long v7, v7

    iget-object v9, v0, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->channels:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v5, v7, v8, v9}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 213
    add-int/lit8 v6, v6, 0x1

    goto :goto_df

    .line 216
    .end local v6    # "_hidl_index_0":I
    :cond_f6
    add-long v3, p2, v3

    add-long v3, v3, v16

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 218
    .end local v2    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 153
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x48

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 154
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 155
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 156
    return-void
.end method
