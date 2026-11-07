.class public final Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;
.super Ljava/lang/Object;
.source "StkCcUnsolSsResult.java"


# instance fields
.field public blacklist cfData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CfData;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist requestType:I

.field public blacklist result:I

.field public blacklist serviceClass:I

.field public blacklist serviceType:I

.field public blacklist ssInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/SsInfoData;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist teleserviceType:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->serviceType:I

    .line 6
    iput v0, p0, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->requestType:I

    .line 7
    iput v0, p0, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->teleserviceType:I

    .line 9
    iput v0, p0, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->result:I

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->ssInfo:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->cfData:Ljava/util/ArrayList;

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
            "Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;",
            ">;"
        }
    .end annotation

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 93
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 94
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x38

    int-to-long v5, v3

    .line 95
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 94
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 98
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 99
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 100
    new-instance v5, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;-><init>()V

    .line 101
    .local v5, "_hidl_vec_element":Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;
    mul-int/lit8 v6, v3, 0x38

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 102
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .end local v5    # "_hidl_vec_element":Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 106
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
            "Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;",
            ">;)V"
        }
    .end annotation

    .line 152
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 154
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 155
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 156
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 157
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x38

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 158
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 159
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;

    mul-int/lit8 v5, v3, 0x38

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 158
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 161
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 164
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 165
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 15
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 16
    return v0

    .line 18
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 19
    return v1

    .line 21
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;

    if-eq v2, v3, :cond_11

    .line 22
    return v1

    .line 24
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;

    .line 25
    .local v2, "other":Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;
    iget v3, p0, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->serviceType:I

    iget v4, v2, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->serviceType:I

    if-eq v3, v4, :cond_1b

    .line 26
    return v1

    .line 28
    :cond_1b
    iget v3, p0, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->requestType:I

    iget v4, v2, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->requestType:I

    if-eq v3, v4, :cond_22

    .line 29
    return v1

    .line 31
    :cond_22
    iget v3, p0, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->teleserviceType:I

    iget v4, v2, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->teleserviceType:I

    if-eq v3, v4, :cond_29

    .line 32
    return v1

    .line 34
    :cond_29
    iget v3, p0, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->serviceClass:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->serviceClass:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    .line 35
    return v1

    .line 37
    :cond_3c
    iget v3, p0, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->result:I

    iget v4, v2, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->result:I

    if-eq v3, v4, :cond_43

    .line 38
    return v1

    .line 40
    :cond_43
    iget-object v3, p0, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->ssInfo:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->ssInfo:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4e

    .line 41
    return v1

    .line 43
    :cond_4e
    iget-object v3, p0, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->cfData:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->cfData:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_59

    .line 44
    return v1

    .line 46
    :cond_59
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 9

    .line 51
    iget v0, p0, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->serviceType:I

    .line 52
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->requestType:I

    .line 53
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->teleserviceType:I

    .line 54
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->serviceClass:I

    .line 55
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->result:I

    .line 56
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v0, p0, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->ssInfo:Ljava/util/ArrayList;

    .line 57
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v0, p0, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->cfData:Ljava/util/ArrayList;

    .line 58
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    .line 51
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 19
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 111
    move-object/from16 v8, p2

    const-wide/16 v9, 0x0

    add-long v0, p3, v9

    invoke-virtual {v8, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->serviceType:I

    .line 112
    const-wide/16 v0, 0x4

    add-long v0, p3, v0

    invoke-virtual {v8, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->requestType:I

    .line 113
    const-wide/16 v11, 0x8

    add-long v0, p3, v11

    invoke-virtual {v8, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->teleserviceType:I

    .line 114
    const-wide/16 v0, 0xc

    add-long v0, p3, v0

    invoke-virtual {v8, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->serviceClass:I

    .line 115
    const-wide/16 v0, 0x10

    add-long v0, p3, v0

    invoke-virtual {v8, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->result:I

    .line 117
    const-wide/16 v0, 0x18

    add-long v2, p3, v0

    add-long/2addr v2, v11

    invoke-virtual {v8, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v13

    .line 118
    .local v13, "_hidl_vec_size":I
    mul-int/lit8 v2, v13, 0x10

    int-to-long v2, v2

    .line 119
    move-wide v5, v0

    move-wide v1, v2

    invoke-virtual {v8}, Landroid/os/HwBlob;->handle()J

    move-result-wide v3

    add-long v5, p3, v5

    add-long/2addr v5, v9

    .line 118
    const/4 v7, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 122
    .local v1, "childBlob":Landroid/os/HwBlob;
    iget-object v2, p0, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->ssInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 123
    const/4 v2, 0x0

    .local v2, "_hidl_index_0":I
    :goto_55
    if-ge v2, v13, :cond_6a

    .line 124
    new-instance v3, Landroid/hardware/radio/V1_0/SsInfoData;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/SsInfoData;-><init>()V

    .line 125
    .local v3, "_hidl_vec_element":Landroid/hardware/radio/V1_0/SsInfoData;
    mul-int/lit8 v4, v2, 0x10

    int-to-long v4, v4

    invoke-virtual {v3, p1, v1, v4, v5}, Landroid/hardware/radio/V1_0/SsInfoData;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 126
    iget-object v4, p0, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->ssInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .end local v3    # "_hidl_vec_element":Landroid/hardware/radio/V1_0/SsInfoData;
    add-int/lit8 v2, v2, 0x1

    goto :goto_55

    .line 130
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v2    # "_hidl_index_0":I
    .end local v13    # "_hidl_vec_size":I
    :cond_6a
    const-wide/16 v1, 0x28

    add-long v3, p3, v1

    add-long/2addr v3, v11

    invoke-virtual {v8, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v11

    .line 131
    .local v11, "_hidl_vec_size":I
    mul-int/lit8 v3, v11, 0x10

    int-to-long v3, v3

    .line 132
    move-wide v5, v1

    move-wide v1, v3

    invoke-virtual {v8}, Landroid/os/HwBlob;->handle()J

    move-result-wide v3

    add-long v5, p3, v5

    add-long/2addr v5, v9

    .line 131
    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 135
    .restart local v1    # "childBlob":Landroid/os/HwBlob;
    iget-object v2, p0, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->cfData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 136
    const/4 v2, 0x0

    .restart local v2    # "_hidl_index_0":I
    :goto_8a
    if-ge v2, v11, :cond_9f

    .line 137
    new-instance v3, Landroid/hardware/radio/V1_0/CfData;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CfData;-><init>()V

    .line 138
    .local v3, "_hidl_vec_element":Landroid/hardware/radio/V1_0/CfData;
    mul-int/lit8 v4, v2, 0x10

    int-to-long v4, v4

    invoke-virtual {v3, p1, v1, v4, v5}, Landroid/hardware/radio/V1_0/CfData;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 139
    iget-object v4, p0, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->cfData:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    .end local v3    # "_hidl_vec_element":Landroid/hardware/radio/V1_0/CfData;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8a

    .line 142
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v2    # "_hidl_index_0":I
    .end local v11    # "_hidl_vec_size":I
    :cond_9f
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 84
    const-wide/16 v0, 0x38

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 85
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 86
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string v1, ".serviceType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget v1, p0, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->serviceType:I

    invoke-static {v1}, Landroid/hardware/radio/V1_0/SsServiceType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string v1, ", .requestType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget v1, p0, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->requestType:I

    invoke-static {v1}, Landroid/hardware/radio/V1_0/SsRequestType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string v1, ", .teleserviceType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget v1, p0, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->teleserviceType:I

    invoke-static {v1}, Landroid/hardware/radio/V1_0/SsTeleserviceType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, ", .serviceClass = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget v1, p0, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->serviceClass:I

    invoke-static {v1}, Landroid/hardware/radio/V1_0/SuppServiceClass;->dumpBitfield(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v1, ", .result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget v1, p0, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->result:I

    invoke-static {v1}, Landroid/hardware/radio/V1_0/RadioError;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string v1, ", .ssInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-object v1, p0, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->ssInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    const-string v1, ", .cfData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-object v1, p0, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->cfData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 22
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 169
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0x0

    add-long v4, p2, v2

    iget v6, v0, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->serviceType:I

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 170
    const-wide/16 v4, 0x4

    add-long v4, p2, v4

    iget v6, v0, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->requestType:I

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 171
    const-wide/16 v4, 0x8

    add-long v6, p2, v4

    iget v8, v0, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->teleserviceType:I

    invoke-virtual {v1, v6, v7, v8}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 172
    const-wide/16 v6, 0xc

    add-long v8, p2, v6

    iget v10, v0, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->serviceClass:I

    invoke-virtual {v1, v8, v9, v10}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 173
    const-wide/16 v8, 0x10

    add-long v8, p2, v8

    iget v10, v0, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->result:I

    invoke-virtual {v1, v8, v9, v10}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 175
    iget-object v8, v0, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->ssInfo:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 176
    .local v8, "_hidl_vec_size":I
    const-wide/16 v9, 0x18

    add-long v11, p2, v9

    add-long/2addr v11, v4

    invoke-virtual {v1, v11, v12, v8}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 177
    add-long v11, p2, v9

    add-long/2addr v11, v6

    const/4 v13, 0x0

    invoke-virtual {v1, v11, v12, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 178
    new-instance v11, Landroid/os/HwBlob;

    mul-int/lit8 v12, v8, 0x10

    invoke-direct {v11, v12}, Landroid/os/HwBlob;-><init>(I)V

    .line 179
    .local v11, "childBlob":Landroid/os/HwBlob;
    const/4 v12, 0x0

    .local v12, "_hidl_index_0":I
    :goto_4e
    if-ge v12, v8, :cond_65

    .line 180
    iget-object v14, v0, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->ssInfo:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/hardware/radio/V1_0/SsInfoData;

    mul-int/lit8 v15, v12, 0x10

    move-wide/from16 v16, v2

    int-to-long v2, v15

    invoke-virtual {v14, v11, v2, v3}, Landroid/hardware/radio/V1_0/SsInfoData;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 179
    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v2, v16

    goto :goto_4e

    :cond_65
    move-wide/from16 v16, v2

    .line 182
    .end local v12    # "_hidl_index_0":I
    add-long v9, p2, v9

    add-long v9, v9, v16

    invoke-virtual {v1, v9, v10, v11}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 185
    .end local v8    # "_hidl_vec_size":I
    .end local v11    # "childBlob":Landroid/os/HwBlob;
    iget-object v2, v0, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->cfData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 186
    .local v2, "_hidl_vec_size":I
    const-wide/16 v8, 0x28

    add-long v10, p2, v8

    add-long/2addr v10, v4

    invoke-virtual {v1, v10, v11, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 187
    add-long v3, p2, v8

    add-long/2addr v3, v6

    invoke-virtual {v1, v3, v4, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 188
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 189
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_8a
    if-ge v4, v2, :cond_9d

    .line 190
    iget-object v5, v0, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->cfData:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/radio/V1_0/CfData;

    mul-int/lit8 v6, v4, 0x10

    int-to-long v6, v6

    invoke-virtual {v5, v3, v6, v7}, Landroid/hardware/radio/V1_0/CfData;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 189
    add-int/lit8 v4, v4, 0x1

    goto :goto_8a

    .line 192
    .end local v4    # "_hidl_index_0":I
    :cond_9d
    add-long v8, p2, v8

    add-long v8, v8, v16

    invoke-virtual {v1, v8, v9, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 194
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 145
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x38

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 146
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 147
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 148
    return-void
.end method
