.class public final Landroid/hardware/radio/V1_5/SetupDataCallResult;
.super Ljava/lang/Object;
.source "SetupDataCallResult.java"


# instance fields
.field public blacklist active:I

.field public blacklist addresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_5/LinkAddress;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist cause:I

.field public blacklist cid:I

.field public blacklist dnses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist gateways:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist ifname:Ljava/lang/String;

.field public blacklist mtuV4:I

.field public blacklist mtuV6:I

.field public blacklist pcscf:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist suggestedRetryTime:I

.field public blacklist type:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->cause:I

    .line 16
    iput v0, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->suggestedRetryTime:I

    .line 20
    iput v0, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->cid:I

    .line 24
    iput v0, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->active:I

    .line 29
    iput v0, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->type:I

    .line 33
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->ifname:Ljava/lang/String;

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->addresses:Ljava/util/ArrayList;

    .line 42
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->gateways:Ljava/util/ArrayList;

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->pcscf:Ljava/util/ArrayList;

    .line 57
    iput v0, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->mtuV4:I

    .line 62
    iput v0, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->mtuV6:I

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
            "Landroid/hardware/radio/V1_5/SetupDataCallResult;",
            ">;"
        }
    .end annotation

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/SetupDataCallResult;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 174
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 175
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x70

    int-to-long v5, v3

    .line 176
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 175
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 179
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 180
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 181
    new-instance v5, Landroid/hardware/radio/V1_5/SetupDataCallResult;

    invoke-direct {v5}, Landroid/hardware/radio/V1_5/SetupDataCallResult;-><init>()V

    .line 182
    .local v5, "_hidl_vec_element":Landroid/hardware/radio/V1_5/SetupDataCallResult;
    mul-int/lit8 v6, v3, 0x70

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/radio/V1_5/SetupDataCallResult;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 183
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    .end local v5    # "_hidl_vec_element":Landroid/hardware/radio/V1_5/SetupDataCallResult;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 187
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
            "Landroid/hardware/radio/V1_5/SetupDataCallResult;",
            ">;)V"
        }
    .end annotation

    .line 286
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/SetupDataCallResult;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 288
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 289
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 290
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 291
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x70

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 292
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 293
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_5/SetupDataCallResult;

    mul-int/lit8 v5, v3, 0x70

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/radio/V1_5/SetupDataCallResult;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 292
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 295
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 298
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 299
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 66
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 67
    return v0

    .line 69
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 70
    return v1

    .line 72
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_5/SetupDataCallResult;

    if-eq v2, v3, :cond_11

    .line 73
    return v1

    .line 75
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/V1_5/SetupDataCallResult;

    .line 76
    .local v2, "other":Landroid/hardware/radio/V1_5/SetupDataCallResult;
    iget v3, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->cause:I

    iget v4, v2, Landroid/hardware/radio/V1_5/SetupDataCallResult;->cause:I

    if-eq v3, v4, :cond_1b

    .line 77
    return v1

    .line 79
    :cond_1b
    iget v3, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->suggestedRetryTime:I

    iget v4, v2, Landroid/hardware/radio/V1_5/SetupDataCallResult;->suggestedRetryTime:I

    if-eq v3, v4, :cond_22

    .line 80
    return v1

    .line 82
    :cond_22
    iget v3, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->cid:I

    iget v4, v2, Landroid/hardware/radio/V1_5/SetupDataCallResult;->cid:I

    if-eq v3, v4, :cond_29

    .line 83
    return v1

    .line 85
    :cond_29
    iget v3, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->active:I

    iget v4, v2, Landroid/hardware/radio/V1_5/SetupDataCallResult;->active:I

    if-eq v3, v4, :cond_30

    .line 86
    return v1

    .line 88
    :cond_30
    iget v3, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->type:I

    iget v4, v2, Landroid/hardware/radio/V1_5/SetupDataCallResult;->type:I

    if-eq v3, v4, :cond_37

    .line 89
    return v1

    .line 91
    :cond_37
    iget-object v3, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->ifname:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/radio/V1_5/SetupDataCallResult;->ifname:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_42

    .line 92
    return v1

    .line 94
    :cond_42
    iget-object v3, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->addresses:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_5/SetupDataCallResult;->addresses:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4d

    .line 95
    return v1

    .line 97
    :cond_4d
    iget-object v3, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_5/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_58

    .line 98
    return v1

    .line 100
    :cond_58
    iget-object v3, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->gateways:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_5/SetupDataCallResult;->gateways:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_63

    .line 101
    return v1

    .line 103
    :cond_63
    iget-object v3, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->pcscf:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_5/SetupDataCallResult;->pcscf:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6e

    .line 104
    return v1

    .line 106
    :cond_6e
    iget v3, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->mtuV4:I

    iget v4, v2, Landroid/hardware/radio/V1_5/SetupDataCallResult;->mtuV4:I

    if-eq v3, v4, :cond_75

    .line 107
    return v1

    .line 109
    :cond_75
    iget v3, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->mtuV6:I

    iget v4, v2, Landroid/hardware/radio/V1_5/SetupDataCallResult;->mtuV6:I

    if-eq v3, v4, :cond_7c

    .line 110
    return v1

    .line 112
    :cond_7c
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 14

    .line 117
    iget v0, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->cause:I

    .line 118
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->suggestedRetryTime:I

    .line 119
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->cid:I

    .line 120
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->active:I

    .line 121
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->type:I

    .line 122
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v0, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->ifname:Ljava/lang/String;

    .line 123
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v0, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->addresses:Ljava/util/ArrayList;

    .line 124
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v0, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    .line 125
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v0, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->gateways:Ljava/util/ArrayList;

    .line 126
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v0, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->pcscf:Ljava/util/ArrayList;

    .line 127
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget v0, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->mtuV4:I

    .line 128
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget v0, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->mtuV6:I

    .line 129
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array/range {v1 .. v12}, [Ljava/lang/Object;

    move-result-object v0

    .line 117
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 30
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 192
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->cause:I

    .line 193
    const-wide/16 v4, 0x4

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->suggestedRetryTime:I

    .line 194
    const-wide/16 v4, 0x8

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->cid:I

    .line 195
    const-wide/16 v6, 0xc

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->active:I

    .line 196
    const-wide/16 v6, 0x10

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->type:I

    .line 197
    const-wide/16 v6, 0x18

    add-long v8, p3, v6

    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->ifname:Ljava/lang/String;

    .line 199
    iget-object v8, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->ifname:Ljava/lang/String;

    .line 200
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v8, v8

    add-int/lit8 v8, v8, 0x1

    int-to-long v10, v8

    .line 201
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v12

    add-long v6, p3, v6

    add-long v14, v6, v2

    .line 199
    const/16 v16, 0x0

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v16}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 205
    const-wide/16 v6, 0x28

    add-long v8, p3, v6

    add-long/2addr v8, v4

    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v8

    .line 206
    .local v8, "_hidl_vec_size":I
    mul-int/lit8 v9, v8, 0x28

    int-to-long v9, v9

    .line 207
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v20

    add-long v6, p3, v6

    add-long v22, v6, v2

    .line 206
    const/16 v24, 0x1

    move-object/from16 v17, p1

    move-wide/from16 v18, v9

    invoke-virtual/range {v17 .. v24}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v6

    .line 210
    .local v6, "childBlob":Landroid/os/HwBlob;
    iget-object v7, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->addresses:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 211
    const/4 v7, 0x0

    .local v7, "_hidl_index_0":I
    :goto_7d
    if-ge v7, v8, :cond_94

    .line 212
    new-instance v9, Landroid/hardware/radio/V1_5/LinkAddress;

    invoke-direct {v9}, Landroid/hardware/radio/V1_5/LinkAddress;-><init>()V

    .line 213
    .local v9, "_hidl_vec_element":Landroid/hardware/radio/V1_5/LinkAddress;
    mul-int/lit8 v10, v7, 0x28

    int-to-long v10, v10

    move-object/from16 v12, p1

    invoke-virtual {v9, v12, v6, v10, v11}, Landroid/hardware/radio/V1_5/LinkAddress;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 214
    iget-object v10, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->addresses:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    .end local v9    # "_hidl_vec_element":Landroid/hardware/radio/V1_5/LinkAddress;
    add-int/lit8 v7, v7, 0x1

    goto :goto_7d

    :cond_94
    move-object/from16 v12, p1

    .line 218
    .end local v6    # "childBlob":Landroid/os/HwBlob;
    .end local v7    # "_hidl_index_0":I
    .end local v8    # "_hidl_vec_size":I
    const-wide/16 v6, 0x38

    add-long v8, p3, v6

    add-long/2addr v8, v4

    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v8

    .line 219
    .restart local v8    # "_hidl_vec_size":I
    mul-int/lit8 v9, v8, 0x10

    int-to-long v9, v9

    .line 220
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v20

    add-long v6, p3, v6

    add-long v22, v6, v2

    .line 219
    const/16 v24, 0x1

    move-wide/from16 v18, v9

    move-object/from16 v17, v12

    invoke-virtual/range {v17 .. v24}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v6

    .line 223
    .restart local v6    # "childBlob":Landroid/os/HwBlob;
    iget-object v7, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 224
    const/4 v7, 0x0

    .restart local v7    # "_hidl_index_0":I
    :goto_ba
    if-ge v7, v8, :cond_ed

    .line 225
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9}, Ljava/lang/String;-><init>()V

    .line 226
    .local v9, "_hidl_vec_element":Ljava/lang/String;
    mul-int/lit8 v10, v7, 0x10

    int-to-long v10, v10

    invoke-virtual {v6, v10, v11}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v9

    .line 228
    nop

    .line 229
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    array-length v10, v10

    add-int/lit8 v10, v10, 0x1

    int-to-long v10, v10

    .line 230
    invoke-virtual {v6}, Landroid/os/HwBlob;->handle()J

    move-result-wide v20

    mul-int/lit8 v12, v7, 0x10

    add-int/lit8 v12, v12, 0x0

    int-to-long v12, v12

    .line 228
    const/16 v24, 0x0

    move-object/from16 v17, p1

    move-wide/from16 v18, v10

    move-wide/from16 v22, v12

    invoke-virtual/range {v17 .. v24}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 233
    iget-object v10, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    .end local v9    # "_hidl_vec_element":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_ba

    .line 237
    .end local v6    # "childBlob":Landroid/os/HwBlob;
    .end local v7    # "_hidl_index_0":I
    .end local v8    # "_hidl_vec_size":I
    :cond_ed
    const-wide/16 v6, 0x48

    add-long v8, p3, v6

    add-long/2addr v8, v4

    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v8

    .line 238
    .restart local v8    # "_hidl_vec_size":I
    mul-int/lit8 v9, v8, 0x10

    int-to-long v9, v9

    .line 239
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v20

    add-long v6, p3, v6

    add-long v22, v6, v2

    .line 238
    const/16 v24, 0x1

    move-object/from16 v17, p1

    move-wide/from16 v18, v9

    invoke-virtual/range {v17 .. v24}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v6

    .line 242
    .restart local v6    # "childBlob":Landroid/os/HwBlob;
    iget-object v7, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->gateways:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 243
    const/4 v7, 0x0

    .restart local v7    # "_hidl_index_0":I
    :goto_111
    if-ge v7, v8, :cond_144

    .line 244
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9}, Ljava/lang/String;-><init>()V

    .line 245
    .restart local v9    # "_hidl_vec_element":Ljava/lang/String;
    mul-int/lit8 v10, v7, 0x10

    int-to-long v10, v10

    invoke-virtual {v6, v10, v11}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v9

    .line 247
    nop

    .line 248
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    array-length v10, v10

    add-int/lit8 v10, v10, 0x1

    int-to-long v10, v10

    .line 249
    invoke-virtual {v6}, Landroid/os/HwBlob;->handle()J

    move-result-wide v20

    mul-int/lit8 v12, v7, 0x10

    add-int/lit8 v12, v12, 0x0

    int-to-long v12, v12

    .line 247
    const/16 v24, 0x0

    move-object/from16 v17, p1

    move-wide/from16 v18, v10

    move-wide/from16 v22, v12

    invoke-virtual/range {v17 .. v24}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 252
    iget-object v10, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->gateways:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    .end local v9    # "_hidl_vec_element":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_111

    .line 256
    .end local v6    # "childBlob":Landroid/os/HwBlob;
    .end local v7    # "_hidl_index_0":I
    .end local v8    # "_hidl_vec_size":I
    :cond_144
    const-wide/16 v6, 0x58

    add-long v8, p3, v6

    add-long/2addr v8, v4

    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    .line 257
    .local v4, "_hidl_vec_size":I
    mul-int/lit8 v5, v4, 0x10

    int-to-long v8, v5

    .line 258
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v20

    add-long v6, p3, v6

    add-long v22, v6, v2

    .line 257
    const/16 v24, 0x1

    move-object/from16 v17, p1

    move-wide/from16 v18, v8

    invoke-virtual/range {v17 .. v24}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 261
    .local v2, "childBlob":Landroid/os/HwBlob;
    iget-object v3, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->pcscf:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 262
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_168
    if-ge v3, v4, :cond_19b

    .line 263
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    .line 264
    .local v5, "_hidl_vec_element":Ljava/lang/String;
    mul-int/lit8 v6, v3, 0x10

    int-to-long v6, v6

    invoke-virtual {v2, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v5

    .line 266
    nop

    .line 267
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v6, v6

    .line 268
    invoke-virtual {v2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v20

    mul-int/lit8 v8, v3, 0x10

    add-int/lit8 v8, v8, 0x0

    int-to-long v8, v8

    .line 266
    const/16 v24, 0x0

    move-object/from16 v17, p1

    move-wide/from16 v18, v6

    move-wide/from16 v22, v8

    invoke-virtual/range {v17 .. v24}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 271
    iget-object v6, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->pcscf:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    .end local v5    # "_hidl_vec_element":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_168

    .line 274
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_index_0":I
    .end local v4    # "_hidl_vec_size":I
    :cond_19b
    const-wide/16 v2, 0x68

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->mtuV4:I

    .line 275
    const-wide/16 v2, 0x6c

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->mtuV6:I

    .line 276
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 165
    const-wide/16 v0, 0x70

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 166
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_5/SetupDataCallResult;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 167
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    const-string v1, ".cause = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    iget v1, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->cause:I

    invoke-static {v1}, Landroid/hardware/radio/V1_4/DataCallFailCause;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string v1, ", .suggestedRetryTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget v1, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->suggestedRetryTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    const-string v1, ", .cid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    iget v1, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->cid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    const-string v1, ", .active = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    iget v1, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->active:I

    invoke-static {v1}, Landroid/hardware/radio/V1_4/DataConnActiveStatus;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    const-string v1, ", .type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    iget v1, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->type:I

    invoke-static {v1}, Landroid/hardware/radio/V1_4/PdpProtocolType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    const-string v1, ", .ifname = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    iget-object v1, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->ifname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    const-string v1, ", .addresses = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    iget-object v1, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->addresses:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    const-string v1, ", .dnses = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    iget-object v1, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 152
    const-string v1, ", .gateways = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    iget-object v1, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->gateways:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 154
    const-string v1, ", .pcscf = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    iget-object v1, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->pcscf:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 156
    const-string v1, ", .mtuV4 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    iget v1, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->mtuV4:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    const-string v1, ", .mtuV6 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget v1, p0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->mtuV6:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 22
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 303
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0x0

    add-long v4, p2, v2

    iget v6, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->cause:I

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 304
    const-wide/16 v4, 0x4

    add-long v4, p2, v4

    iget v6, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->suggestedRetryTime:I

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 305
    const-wide/16 v4, 0x8

    add-long v6, p2, v4

    iget v8, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->cid:I

    invoke-virtual {v1, v6, v7, v8}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 306
    const-wide/16 v6, 0xc

    add-long v8, p2, v6

    iget v10, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->active:I

    invoke-virtual {v1, v8, v9, v10}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 307
    const-wide/16 v8, 0x10

    add-long v8, p2, v8

    iget v10, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->type:I

    invoke-virtual {v1, v8, v9, v10}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 308
    const-wide/16 v8, 0x18

    add-long v8, p2, v8

    iget-object v10, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->ifname:Ljava/lang/String;

    invoke-virtual {v1, v8, v9, v10}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 310
    iget-object v8, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->addresses:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 311
    .local v8, "_hidl_vec_size":I
    const-wide/16 v9, 0x28

    add-long v11, p2, v9

    add-long/2addr v11, v4

    invoke-virtual {v1, v11, v12, v8}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 312
    add-long v11, p2, v9

    add-long/2addr v11, v6

    const/4 v13, 0x0

    invoke-virtual {v1, v11, v12, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 313
    new-instance v11, Landroid/os/HwBlob;

    mul-int/lit8 v12, v8, 0x28

    invoke-direct {v11, v12}, Landroid/os/HwBlob;-><init>(I)V

    .line 314
    .local v11, "childBlob":Landroid/os/HwBlob;
    const/4 v12, 0x0

    .local v12, "_hidl_index_0":I
    :goto_57
    if-ge v12, v8, :cond_6e

    .line 315
    iget-object v14, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->addresses:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/hardware/radio/V1_5/LinkAddress;

    mul-int/lit8 v15, v12, 0x28

    move-wide/from16 v16, v2

    int-to-long v2, v15

    invoke-virtual {v14, v11, v2, v3}, Landroid/hardware/radio/V1_5/LinkAddress;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 314
    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v2, v16

    goto :goto_57

    :cond_6e
    move-wide/from16 v16, v2

    .line 317
    .end local v12    # "_hidl_index_0":I
    add-long v9, p2, v9

    add-long v9, v9, v16

    invoke-virtual {v1, v9, v10, v11}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 320
    .end local v8    # "_hidl_vec_size":I
    .end local v11    # "childBlob":Landroid/os/HwBlob;
    iget-object v2, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 321
    .local v2, "_hidl_vec_size":I
    const-wide/16 v8, 0x38

    add-long v10, p2, v8

    add-long/2addr v10, v4

    invoke-virtual {v1, v10, v11, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 322
    add-long v10, p2, v8

    add-long/2addr v10, v6

    invoke-virtual {v1, v10, v11, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 323
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v10, v2, 0x10

    invoke-direct {v3, v10}, Landroid/os/HwBlob;-><init>(I)V

    .line 324
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v10, 0x0

    .local v10, "_hidl_index_0":I
    :goto_93
    if-ge v10, v2, :cond_a6

    .line 325
    mul-int/lit8 v11, v10, 0x10

    int-to-long v11, v11

    iget-object v14, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v3, v11, v12, v14}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 324
    add-int/lit8 v10, v10, 0x1

    goto :goto_93

    .line 327
    .end local v10    # "_hidl_index_0":I
    :cond_a6
    add-long v8, p2, v8

    add-long v8, v8, v16

    invoke-virtual {v1, v8, v9, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 330
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    iget-object v2, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->gateways:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 331
    .restart local v2    # "_hidl_vec_size":I
    const-wide/16 v8, 0x48

    add-long v10, p2, v8

    add-long/2addr v10, v4

    invoke-virtual {v1, v10, v11, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 332
    add-long v10, p2, v8

    add-long/2addr v10, v6

    invoke-virtual {v1, v10, v11, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 333
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v10, v2, 0x10

    invoke-direct {v3, v10}, Landroid/os/HwBlob;-><init>(I)V

    .line 334
    .restart local v3    # "childBlob":Landroid/os/HwBlob;
    const/4 v10, 0x0

    .restart local v10    # "_hidl_index_0":I
    :goto_c9
    if-ge v10, v2, :cond_dc

    .line 335
    mul-int/lit8 v11, v10, 0x10

    int-to-long v11, v11

    iget-object v14, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->gateways:Ljava/util/ArrayList;

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v3, v11, v12, v14}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 334
    add-int/lit8 v10, v10, 0x1

    goto :goto_c9

    .line 337
    .end local v10    # "_hidl_index_0":I
    :cond_dc
    add-long v8, p2, v8

    add-long v8, v8, v16

    invoke-virtual {v1, v8, v9, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 340
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    iget-object v2, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->pcscf:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 341
    .restart local v2    # "_hidl_vec_size":I
    const-wide/16 v8, 0x58

    add-long v10, p2, v8

    add-long/2addr v10, v4

    invoke-virtual {v1, v10, v11, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 342
    add-long v3, p2, v8

    add-long/2addr v3, v6

    invoke-virtual {v1, v3, v4, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 343
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 344
    .restart local v3    # "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_ff
    if-ge v4, v2, :cond_112

    .line 345
    mul-int/lit8 v5, v4, 0x10

    int-to-long v5, v5

    iget-object v7, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->pcscf:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 344
    add-int/lit8 v4, v4, 0x1

    goto :goto_ff

    .line 347
    .end local v4    # "_hidl_index_0":I
    :cond_112
    add-long v8, p2, v8

    add-long v8, v8, v16

    invoke-virtual {v1, v8, v9, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 349
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x68

    add-long v2, p2, v2

    iget v4, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->mtuV4:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 350
    const-wide/16 v2, 0x6c

    add-long v2, p2, v2

    iget v4, v0, Landroid/hardware/radio/V1_5/SetupDataCallResult;->mtuV6:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 351
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 279
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x70

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 280
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_5/SetupDataCallResult;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 281
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 282
    return-void
.end method
