.class public final Landroid/hardware/radio/V1_0/CdmaInformationRecord;
.super Ljava/lang/Object;
.source "CdmaInformationRecord.java"


# instance fields
.field public blacklist audioCtrl:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CdmaT53AudioControlInfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist clir:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CdmaT53ClirInfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist display:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CdmaDisplayInfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist lineCtrl:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CdmaLineControlInfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist name:I

.field public blacklist number:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist redir:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CdmaRedirectingNumberInfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist signal:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;",
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

    iput v0, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->name:I

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->display:Ljava/util/ArrayList;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->number:Ljava/util/ArrayList;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->signal:Ljava/util/ArrayList;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->redir:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->lineCtrl:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->clir:Ljava/util/ArrayList;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->audioCtrl:Ljava/util/ArrayList;

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
            "Landroid/hardware/radio/V1_0/CdmaInformationRecord;",
            ">;"
        }
    .end annotation

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaInformationRecord;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 100
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 101
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x78

    int-to-long v5, v3

    .line 102
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 101
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 105
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 106
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 107
    new-instance v5, Landroid/hardware/radio/V1_0/CdmaInformationRecord;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/CdmaInformationRecord;-><init>()V

    .line 108
    .local v5, "_hidl_vec_element":Landroid/hardware/radio/V1_0/CdmaInformationRecord;
    mul-int/lit8 v6, v3, 0x78

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 109
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    .end local v5    # "_hidl_vec_element":Landroid/hardware/radio/V1_0/CdmaInformationRecord;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 113
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
            "Landroid/hardware/radio/V1_0/CdmaInformationRecord;",
            ">;)V"
        }
    .end annotation

    .line 220
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaInformationRecord;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 222
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 223
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 224
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 225
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x78

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 226
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 227
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/CdmaInformationRecord;

    mul-int/lit8 v5, v3, 0x78

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 226
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 229
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 232
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 233
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

    const-class v3, Landroid/hardware/radio/V1_0/CdmaInformationRecord;

    if-eq v2, v3, :cond_11

    .line 23
    return v1

    .line 25
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/V1_0/CdmaInformationRecord;

    .line 26
    .local v2, "other":Landroid/hardware/radio/V1_0/CdmaInformationRecord;
    iget v3, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->name:I

    iget v4, v2, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->name:I

    if-eq v3, v4, :cond_1b

    .line 27
    return v1

    .line 29
    :cond_1b
    iget-object v3, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->display:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->display:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 30
    return v1

    .line 32
    :cond_26
    iget-object v3, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->number:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->number:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 33
    return v1

    .line 35
    :cond_31
    iget-object v3, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->signal:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->signal:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    .line 36
    return v1

    .line 38
    :cond_3c
    iget-object v3, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->redir:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->redir:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_47

    .line 39
    return v1

    .line 41
    :cond_47
    iget-object v3, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->lineCtrl:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->lineCtrl:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_52

    .line 42
    return v1

    .line 44
    :cond_52
    iget-object v3, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->clir:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->clir:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5d

    .line 45
    return v1

    .line 47
    :cond_5d
    iget-object v3, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->audioCtrl:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->audioCtrl:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_68

    .line 48
    return v1

    .line 50
    :cond_68
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 10

    .line 55
    iget v0, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->name:I

    .line 56
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v0, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->display:Ljava/util/ArrayList;

    .line 57
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->number:Ljava/util/ArrayList;

    .line 58
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v0, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->signal:Ljava/util/ArrayList;

    .line 59
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v0, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->redir:Ljava/util/ArrayList;

    .line 60
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v0, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->lineCtrl:Ljava/util/ArrayList;

    .line 61
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v0, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->clir:Ljava/util/ArrayList;

    .line 62
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v0, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->audioCtrl:Ljava/util/ArrayList;

    .line 63
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    .line 55
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 19
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 118
    move-object/from16 v8, p2

    const-wide/16 v9, 0x0

    add-long v0, p3, v9

    invoke-virtual {v8, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->name:I

    .line 120
    const-wide/16 v11, 0x8

    add-long v0, p3, v11

    add-long/2addr v0, v11

    invoke-virtual {v8, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v13

    .line 121
    .local v13, "_hidl_vec_size":I
    mul-int/lit8 v0, v13, 0x10

    int-to-long v1, v0

    .line 122
    invoke-virtual {v8}, Landroid/os/HwBlob;->handle()J

    move-result-wide v3

    add-long v5, p3, v11

    add-long/2addr v5, v9

    .line 121
    const/4 v7, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 125
    .local v1, "childBlob":Landroid/os/HwBlob;
    iget-object v2, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->display:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 126
    const/4 v2, 0x0

    .local v2, "_hidl_index_0":I
    :goto_2b
    if-ge v2, v13, :cond_40

    .line 127
    new-instance v3, Landroid/hardware/radio/V1_0/CdmaDisplayInfoRecord;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CdmaDisplayInfoRecord;-><init>()V

    .line 128
    .local v3, "_hidl_vec_element":Landroid/hardware/radio/V1_0/CdmaDisplayInfoRecord;
    mul-int/lit8 v4, v2, 0x10

    int-to-long v4, v4

    invoke-virtual {v3, p1, v1, v4, v5}, Landroid/hardware/radio/V1_0/CdmaDisplayInfoRecord;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 129
    iget-object v4, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->display:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    .end local v3    # "_hidl_vec_element":Landroid/hardware/radio/V1_0/CdmaDisplayInfoRecord;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 133
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v2    # "_hidl_index_0":I
    .end local v13    # "_hidl_vec_size":I
    :cond_40
    const-wide/16 v1, 0x18

    add-long v3, p3, v1

    add-long/2addr v3, v11

    invoke-virtual {v8, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v13

    .line 134
    .restart local v13    # "_hidl_vec_size":I
    mul-int/lit8 v3, v13, 0x18

    int-to-long v3, v3

    .line 135
    move-wide v5, v1

    move-wide v1, v3

    invoke-virtual {v8}, Landroid/os/HwBlob;->handle()J

    move-result-wide v3

    add-long v5, p3, v5

    add-long/2addr v5, v9

    .line 134
    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 138
    .restart local v1    # "childBlob":Landroid/os/HwBlob;
    iget-object v2, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->number:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 139
    const/4 v2, 0x0

    .restart local v2    # "_hidl_index_0":I
    :goto_60
    if-ge v2, v13, :cond_75

    .line 140
    new-instance v3, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;-><init>()V

    .line 141
    .local v3, "_hidl_vec_element":Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;
    mul-int/lit8 v4, v2, 0x18

    int-to-long v4, v4

    invoke-virtual {v3, p1, v1, v4, v5}, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 142
    iget-object v4, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->number:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    .end local v3    # "_hidl_vec_element":Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;
    add-int/lit8 v2, v2, 0x1

    goto :goto_60

    .line 146
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v2    # "_hidl_index_0":I
    .end local v13    # "_hidl_vec_size":I
    :cond_75
    const-wide/16 v1, 0x28

    add-long v3, p3, v1

    add-long/2addr v3, v11

    invoke-virtual {v8, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v13

    .line 147
    .restart local v13    # "_hidl_vec_size":I
    mul-int/lit8 v3, v13, 0x4

    int-to-long v3, v3

    .line 148
    move-wide v5, v1

    move-wide v1, v3

    invoke-virtual {v8}, Landroid/os/HwBlob;->handle()J

    move-result-wide v3

    add-long v5, p3, v5

    add-long/2addr v5, v9

    .line 147
    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 151
    .restart local v1    # "childBlob":Landroid/os/HwBlob;
    iget-object v2, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->signal:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 152
    const/4 v2, 0x0

    .restart local v2    # "_hidl_index_0":I
    :goto_95
    if-ge v2, v13, :cond_aa

    .line 153
    new-instance v3, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;-><init>()V

    .line 154
    .local v3, "_hidl_vec_element":Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;
    mul-int/lit8 v4, v2, 0x4

    int-to-long v4, v4

    invoke-virtual {v3, p1, v1, v4, v5}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 155
    iget-object v4, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->signal:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    .end local v3    # "_hidl_vec_element":Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;
    add-int/lit8 v2, v2, 0x1

    goto :goto_95

    .line 159
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v2    # "_hidl_index_0":I
    .end local v13    # "_hidl_vec_size":I
    :cond_aa
    const-wide/16 v1, 0x38

    add-long v3, p3, v1

    add-long/2addr v3, v11

    invoke-virtual {v8, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v13

    .line 160
    .restart local v13    # "_hidl_vec_size":I
    mul-int/lit8 v3, v13, 0x20

    int-to-long v3, v3

    .line 161
    move-wide v5, v1

    move-wide v1, v3

    invoke-virtual {v8}, Landroid/os/HwBlob;->handle()J

    move-result-wide v3

    add-long v5, p3, v5

    add-long/2addr v5, v9

    .line 160
    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 164
    .restart local v1    # "childBlob":Landroid/os/HwBlob;
    iget-object v2, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->redir:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 165
    const/4 v2, 0x0

    .restart local v2    # "_hidl_index_0":I
    :goto_ca
    if-ge v2, v13, :cond_df

    .line 166
    new-instance v3, Landroid/hardware/radio/V1_0/CdmaRedirectingNumberInfoRecord;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CdmaRedirectingNumberInfoRecord;-><init>()V

    .line 167
    .local v3, "_hidl_vec_element":Landroid/hardware/radio/V1_0/CdmaRedirectingNumberInfoRecord;
    mul-int/lit8 v4, v2, 0x20

    int-to-long v4, v4

    invoke-virtual {v3, p1, v1, v4, v5}, Landroid/hardware/radio/V1_0/CdmaRedirectingNumberInfoRecord;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 168
    iget-object v4, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->redir:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    .end local v3    # "_hidl_vec_element":Landroid/hardware/radio/V1_0/CdmaRedirectingNumberInfoRecord;
    add-int/lit8 v2, v2, 0x1

    goto :goto_ca

    .line 172
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v2    # "_hidl_index_0":I
    .end local v13    # "_hidl_vec_size":I
    :cond_df
    const-wide/16 v1, 0x48

    add-long v3, p3, v1

    add-long/2addr v3, v11

    invoke-virtual {v8, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v13

    .line 173
    .restart local v13    # "_hidl_vec_size":I
    mul-int/lit8 v3, v13, 0x4

    int-to-long v3, v3

    .line 174
    move-wide v5, v1

    move-wide v1, v3

    invoke-virtual {v8}, Landroid/os/HwBlob;->handle()J

    move-result-wide v3

    add-long v5, p3, v5

    add-long/2addr v5, v9

    .line 173
    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 177
    .restart local v1    # "childBlob":Landroid/os/HwBlob;
    iget-object v2, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->lineCtrl:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 178
    const/4 v2, 0x0

    .restart local v2    # "_hidl_index_0":I
    :goto_ff
    if-ge v2, v13, :cond_114

    .line 179
    new-instance v3, Landroid/hardware/radio/V1_0/CdmaLineControlInfoRecord;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CdmaLineControlInfoRecord;-><init>()V

    .line 180
    .local v3, "_hidl_vec_element":Landroid/hardware/radio/V1_0/CdmaLineControlInfoRecord;
    mul-int/lit8 v4, v2, 0x4

    int-to-long v4, v4

    invoke-virtual {v3, p1, v1, v4, v5}, Landroid/hardware/radio/V1_0/CdmaLineControlInfoRecord;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 181
    iget-object v4, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->lineCtrl:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    .end local v3    # "_hidl_vec_element":Landroid/hardware/radio/V1_0/CdmaLineControlInfoRecord;
    add-int/lit8 v2, v2, 0x1

    goto :goto_ff

    .line 185
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v2    # "_hidl_index_0":I
    .end local v13    # "_hidl_vec_size":I
    :cond_114
    const-wide/16 v1, 0x58

    add-long v3, p3, v1

    add-long/2addr v3, v11

    invoke-virtual {v8, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v13

    .line 186
    .restart local v13    # "_hidl_vec_size":I
    mul-int/lit8 v3, v13, 0x1

    int-to-long v3, v3

    .line 187
    move-wide v5, v1

    move-wide v1, v3

    invoke-virtual {v8}, Landroid/os/HwBlob;->handle()J

    move-result-wide v3

    add-long v5, p3, v5

    add-long/2addr v5, v9

    .line 186
    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 190
    .restart local v1    # "childBlob":Landroid/os/HwBlob;
    iget-object v2, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->clir:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 191
    const/4 v2, 0x0

    .restart local v2    # "_hidl_index_0":I
    :goto_134
    if-ge v2, v13, :cond_149

    .line 192
    new-instance v3, Landroid/hardware/radio/V1_0/CdmaT53ClirInfoRecord;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CdmaT53ClirInfoRecord;-><init>()V

    .line 193
    .local v3, "_hidl_vec_element":Landroid/hardware/radio/V1_0/CdmaT53ClirInfoRecord;
    mul-int/lit8 v4, v2, 0x1

    int-to-long v4, v4

    invoke-virtual {v3, p1, v1, v4, v5}, Landroid/hardware/radio/V1_0/CdmaT53ClirInfoRecord;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 194
    iget-object v4, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->clir:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    .end local v3    # "_hidl_vec_element":Landroid/hardware/radio/V1_0/CdmaT53ClirInfoRecord;
    add-int/lit8 v2, v2, 0x1

    goto :goto_134

    .line 198
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v2    # "_hidl_index_0":I
    .end local v13    # "_hidl_vec_size":I
    :cond_149
    const-wide/16 v1, 0x68

    add-long v3, p3, v1

    add-long/2addr v3, v11

    invoke-virtual {v8, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v11

    .line 199
    .local v11, "_hidl_vec_size":I
    mul-int/lit8 v3, v11, 0x2

    int-to-long v3, v3

    .line 200
    move-wide v5, v1

    move-wide v1, v3

    invoke-virtual {v8}, Landroid/os/HwBlob;->handle()J

    move-result-wide v3

    add-long v5, p3, v5

    add-long/2addr v5, v9

    .line 199
    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 203
    .restart local v1    # "childBlob":Landroid/os/HwBlob;
    iget-object v2, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->audioCtrl:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 204
    const/4 v2, 0x0

    .restart local v2    # "_hidl_index_0":I
    :goto_169
    if-ge v2, v11, :cond_17e

    .line 205
    new-instance v3, Landroid/hardware/radio/V1_0/CdmaT53AudioControlInfoRecord;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CdmaT53AudioControlInfoRecord;-><init>()V

    .line 206
    .local v3, "_hidl_vec_element":Landroid/hardware/radio/V1_0/CdmaT53AudioControlInfoRecord;
    mul-int/lit8 v4, v2, 0x2

    int-to-long v4, v4

    invoke-virtual {v3, p1, v1, v4, v5}, Landroid/hardware/radio/V1_0/CdmaT53AudioControlInfoRecord;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 207
    iget-object v4, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->audioCtrl:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    .end local v3    # "_hidl_vec_element":Landroid/hardware/radio/V1_0/CdmaT53AudioControlInfoRecord;
    add-int/lit8 v2, v2, 0x1

    goto :goto_169

    .line 210
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v2    # "_hidl_index_0":I
    .end local v11    # "_hidl_vec_size":I
    :cond_17e
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 91
    const-wide/16 v0, 0x78

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 92
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 93
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
    const-string v1, ".name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget v1, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->name:I

    invoke-static {v1}, Landroid/hardware/radio/V1_0/CdmaInfoRecName;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, ", .display = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->display:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    const-string v1, ", .number = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->number:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    const-string v1, ", .signal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->signal:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    const-string v1, ", .redir = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->redir:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    const-string v1, ", .lineCtrl = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->lineCtrl:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    const-string v1, ", .clir = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->clir:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    const-string v1, ", .audioCtrl = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->audioCtrl:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 22
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 237
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0x0

    add-long v4, p2, v2

    iget v6, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->name:I

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 239
    iget-object v4, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->display:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 240
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    add-long v7, p2, v5

    add-long/2addr v7, v5

    invoke-virtual {v1, v7, v8, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 241
    add-long v7, p2, v5

    const-wide/16 v9, 0xc

    add-long/2addr v7, v9

    const/4 v11, 0x0

    invoke-virtual {v1, v7, v8, v11}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 242
    new-instance v7, Landroid/os/HwBlob;

    mul-int/lit8 v8, v4, 0x10

    invoke-direct {v7, v8}, Landroid/os/HwBlob;-><init>(I)V

    .line 243
    .local v7, "childBlob":Landroid/os/HwBlob;
    const/4 v8, 0x0

    .local v8, "_hidl_index_0":I
    :goto_2c
    if-ge v8, v4, :cond_3f

    .line 244
    iget-object v12, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->display:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/radio/V1_0/CdmaDisplayInfoRecord;

    mul-int/lit8 v13, v8, 0x10

    int-to-long v13, v13

    invoke-virtual {v12, v7, v13, v14}, Landroid/hardware/radio/V1_0/CdmaDisplayInfoRecord;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 243
    add-int/lit8 v8, v8, 0x1

    goto :goto_2c

    .line 246
    .end local v8    # "_hidl_index_0":I
    :cond_3f
    add-long v12, p2, v5

    add-long/2addr v12, v2

    invoke-virtual {v1, v12, v13, v7}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 249
    .end local v4    # "_hidl_vec_size":I
    .end local v7    # "childBlob":Landroid/os/HwBlob;
    iget-object v4, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->number:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 250
    .restart local v4    # "_hidl_vec_size":I
    const-wide/16 v7, 0x18

    add-long v12, p2, v7

    add-long/2addr v12, v5

    invoke-virtual {v1, v12, v13, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 251
    add-long v12, p2, v7

    add-long/2addr v12, v9

    invoke-virtual {v1, v12, v13, v11}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 252
    new-instance v12, Landroid/os/HwBlob;

    mul-int/lit8 v13, v4, 0x18

    invoke-direct {v12, v13}, Landroid/os/HwBlob;-><init>(I)V

    .line 253
    .local v12, "childBlob":Landroid/os/HwBlob;
    const/4 v13, 0x0

    .local v13, "_hidl_index_0":I
    :goto_61
    if-ge v13, v4, :cond_78

    .line 254
    iget-object v14, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->number:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;

    mul-int/lit8 v15, v13, 0x18

    move-wide/from16 v16, v2

    int-to-long v2, v15

    invoke-virtual {v14, v12, v2, v3}, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 253
    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v2, v16

    goto :goto_61

    :cond_78
    move-wide/from16 v16, v2

    .line 256
    .end local v13    # "_hidl_index_0":I
    add-long v7, p2, v7

    add-long v7, v7, v16

    invoke-virtual {v1, v7, v8, v12}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 259
    .end local v4    # "_hidl_vec_size":I
    .end local v12    # "childBlob":Landroid/os/HwBlob;
    iget-object v2, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->signal:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 260
    .local v2, "_hidl_vec_size":I
    const-wide/16 v3, 0x28

    add-long v7, p2, v3

    add-long/2addr v7, v5

    invoke-virtual {v1, v7, v8, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 261
    add-long v7, p2, v3

    add-long/2addr v7, v9

    invoke-virtual {v1, v7, v8, v11}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 262
    new-instance v7, Landroid/os/HwBlob;

    mul-int/lit8 v8, v2, 0x4

    invoke-direct {v7, v8}, Landroid/os/HwBlob;-><init>(I)V

    .line 263
    .restart local v7    # "childBlob":Landroid/os/HwBlob;
    const/4 v8, 0x0

    .restart local v8    # "_hidl_index_0":I
    :goto_9d
    if-ge v8, v2, :cond_b0

    .line 264
    iget-object v12, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->signal:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;

    mul-int/lit8 v13, v8, 0x4

    int-to-long v13, v13

    invoke-virtual {v12, v7, v13, v14}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 263
    add-int/lit8 v8, v8, 0x1

    goto :goto_9d

    .line 266
    .end local v8    # "_hidl_index_0":I
    :cond_b0
    add-long v3, p2, v3

    add-long v3, v3, v16

    invoke-virtual {v1, v3, v4, v7}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 269
    .end local v2    # "_hidl_vec_size":I
    .end local v7    # "childBlob":Landroid/os/HwBlob;
    iget-object v2, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->redir:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 270
    .restart local v2    # "_hidl_vec_size":I
    const-wide/16 v3, 0x38

    add-long v7, p2, v3

    add-long/2addr v7, v5

    invoke-virtual {v1, v7, v8, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 271
    add-long v7, p2, v3

    add-long/2addr v7, v9

    invoke-virtual {v1, v7, v8, v11}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 272
    new-instance v7, Landroid/os/HwBlob;

    mul-int/lit8 v8, v2, 0x20

    invoke-direct {v7, v8}, Landroid/os/HwBlob;-><init>(I)V

    .line 273
    .restart local v7    # "childBlob":Landroid/os/HwBlob;
    const/4 v8, 0x0

    .restart local v8    # "_hidl_index_0":I
    :goto_d3
    if-ge v8, v2, :cond_e6

    .line 274
    iget-object v12, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->redir:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/radio/V1_0/CdmaRedirectingNumberInfoRecord;

    mul-int/lit8 v13, v8, 0x20

    int-to-long v13, v13

    invoke-virtual {v12, v7, v13, v14}, Landroid/hardware/radio/V1_0/CdmaRedirectingNumberInfoRecord;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 273
    add-int/lit8 v8, v8, 0x1

    goto :goto_d3

    .line 276
    .end local v8    # "_hidl_index_0":I
    :cond_e6
    add-long v3, p2, v3

    add-long v3, v3, v16

    invoke-virtual {v1, v3, v4, v7}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 279
    .end local v2    # "_hidl_vec_size":I
    .end local v7    # "childBlob":Landroid/os/HwBlob;
    iget-object v2, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->lineCtrl:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 280
    .restart local v2    # "_hidl_vec_size":I
    const-wide/16 v3, 0x48

    add-long v7, p2, v3

    add-long/2addr v7, v5

    invoke-virtual {v1, v7, v8, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 281
    add-long v7, p2, v3

    add-long/2addr v7, v9

    invoke-virtual {v1, v7, v8, v11}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 282
    new-instance v7, Landroid/os/HwBlob;

    mul-int/lit8 v8, v2, 0x4

    invoke-direct {v7, v8}, Landroid/os/HwBlob;-><init>(I)V

    .line 283
    .restart local v7    # "childBlob":Landroid/os/HwBlob;
    const/4 v8, 0x0

    .restart local v8    # "_hidl_index_0":I
    :goto_109
    if-ge v8, v2, :cond_11c

    .line 284
    iget-object v12, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->lineCtrl:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/radio/V1_0/CdmaLineControlInfoRecord;

    mul-int/lit8 v13, v8, 0x4

    int-to-long v13, v13

    invoke-virtual {v12, v7, v13, v14}, Landroid/hardware/radio/V1_0/CdmaLineControlInfoRecord;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 283
    add-int/lit8 v8, v8, 0x1

    goto :goto_109

    .line 286
    .end local v8    # "_hidl_index_0":I
    :cond_11c
    add-long v3, p2, v3

    add-long v3, v3, v16

    invoke-virtual {v1, v3, v4, v7}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 289
    .end local v2    # "_hidl_vec_size":I
    .end local v7    # "childBlob":Landroid/os/HwBlob;
    iget-object v2, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->clir:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 290
    .restart local v2    # "_hidl_vec_size":I
    const-wide/16 v3, 0x58

    add-long v7, p2, v3

    add-long/2addr v7, v5

    invoke-virtual {v1, v7, v8, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 291
    add-long v7, p2, v3

    add-long/2addr v7, v9

    invoke-virtual {v1, v7, v8, v11}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 292
    new-instance v7, Landroid/os/HwBlob;

    mul-int/lit8 v8, v2, 0x1

    invoke-direct {v7, v8}, Landroid/os/HwBlob;-><init>(I)V

    .line 293
    .restart local v7    # "childBlob":Landroid/os/HwBlob;
    const/4 v8, 0x0

    .restart local v8    # "_hidl_index_0":I
    :goto_13f
    if-ge v8, v2, :cond_152

    .line 294
    iget-object v12, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->clir:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/radio/V1_0/CdmaT53ClirInfoRecord;

    mul-int/lit8 v13, v8, 0x1

    int-to-long v13, v13

    invoke-virtual {v12, v7, v13, v14}, Landroid/hardware/radio/V1_0/CdmaT53ClirInfoRecord;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 293
    add-int/lit8 v8, v8, 0x1

    goto :goto_13f

    .line 296
    .end local v8    # "_hidl_index_0":I
    :cond_152
    add-long v3, p2, v3

    add-long v3, v3, v16

    invoke-virtual {v1, v3, v4, v7}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 299
    .end local v2    # "_hidl_vec_size":I
    .end local v7    # "childBlob":Landroid/os/HwBlob;
    iget-object v2, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->audioCtrl:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 300
    .restart local v2    # "_hidl_vec_size":I
    const-wide/16 v3, 0x68

    add-long v7, p2, v3

    add-long/2addr v7, v5

    invoke-virtual {v1, v7, v8, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 301
    add-long v5, p2, v3

    add-long/2addr v5, v9

    invoke-virtual {v1, v5, v6, v11}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 302
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v2, 0x2

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 303
    .local v5, "childBlob":Landroid/os/HwBlob;
    const/4 v6, 0x0

    .local v6, "_hidl_index_0":I
    :goto_175
    if-ge v6, v2, :cond_188

    .line 304
    iget-object v7, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->audioCtrl:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/radio/V1_0/CdmaT53AudioControlInfoRecord;

    mul-int/lit8 v8, v6, 0x2

    int-to-long v8, v8

    invoke-virtual {v7, v5, v8, v9}, Landroid/hardware/radio/V1_0/CdmaT53AudioControlInfoRecord;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 303
    add-int/lit8 v6, v6, 0x1

    goto :goto_175

    .line 306
    .end local v6    # "_hidl_index_0":I
    :cond_188
    add-long v3, p2, v3

    add-long v3, v3, v16

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 308
    .end local v2    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 213
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x78

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 214
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 215
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 216
    return-void
.end method
