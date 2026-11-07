.class public final Landroid/hardware/radio/V1_0/CdmaSmsMessage;
.super Ljava/lang/Object;
.source "CdmaSmsMessage.java"


# instance fields
.field public blacklist address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

.field public blacklist bearerData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist isServicePresent:Z

.field public blacklist serviceCategory:I

.field public blacklist subAddress:Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;

.field public blacklist teleserviceId:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->teleserviceId:I

    .line 6
    iput-boolean v0, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->isServicePresent:Z

    .line 7
    iput v0, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->serviceCategory:I

    .line 8
    new-instance v0, Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/CdmaSmsAddress;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    .line 9
    new-instance v0, Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->bearerData:Ljava/util/ArrayList;

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
            "Landroid/hardware/radio/V1_0/CdmaSmsMessage;",
            ">;"
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaSmsMessage;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 86
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 87
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x58

    int-to-long v5, v3

    .line 88
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 87
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 91
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 92
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 93
    new-instance v5, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 94
    .local v5, "_hidl_vec_element":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    mul-int/lit8 v6, v3, 0x58

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 95
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .end local v5    # "_hidl_vec_element":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 99
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
            "Landroid/hardware/radio/V1_0/CdmaSmsMessage;",
            ">;)V"
        }
    .end annotation

    .line 132
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaSmsMessage;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 134
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 135
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 136
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 137
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x58

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 138
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 139
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    mul-int/lit8 v5, v3, 0x58

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 138
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 141
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 144
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 145
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 14
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 15
    return v0

    .line 17
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 18
    return v1

    .line 20
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    if-eq v2, v3, :cond_11

    .line 21
    return v1

    .line 23
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    .line 24
    .local v2, "other":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    iget v3, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->teleserviceId:I

    iget v4, v2, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->teleserviceId:I

    if-eq v3, v4, :cond_1b

    .line 25
    return v1

    .line 27
    :cond_1b
    iget-boolean v3, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->isServicePresent:Z

    iget-boolean v4, v2, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->isServicePresent:Z

    if-eq v3, v4, :cond_22

    .line 28
    return v1

    .line 30
    :cond_22
    iget v3, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->serviceCategory:I

    iget v4, v2, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->serviceCategory:I

    if-eq v3, v4, :cond_29

    .line 31
    return v1

    .line 33
    :cond_29
    iget-object v3, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    iget-object v4, v2, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    .line 34
    return v1

    .line 36
    :cond_34
    iget-object v3, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;

    iget-object v4, v2, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f

    .line 37
    return v1

    .line 39
    :cond_3f
    iget-object v3, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->bearerData:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->bearerData:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4a

    .line 40
    return v1

    .line 42
    :cond_4a
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 8

    .line 47
    iget v0, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->teleserviceId:I

    .line 48
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-boolean v0, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->isServicePresent:Z

    .line 49
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->serviceCategory:I

    .line 50
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v0, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    .line 51
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v0, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;

    .line 52
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v0, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->bearerData:Ljava/util/ArrayList;

    .line 53
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 47
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 16
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 104
    const-wide/16 v1, 0x0

    add-long v3, p3, v1

    invoke-virtual {p2, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iput v3, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->teleserviceId:I

    .line 105
    const-wide/16 v3, 0x4

    add-long/2addr v3, p3

    invoke-virtual {p2, v3, v4}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v3

    iput-boolean v3, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->isServicePresent:Z

    .line 106
    const-wide/16 v3, 0x8

    add-long v5, p3, v3

    invoke-virtual {p2, v5, v6}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v5

    iput v5, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->serviceCategory:I

    .line 107
    iget-object v5, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    const-wide/16 v6, 0x10

    add-long/2addr v6, p3

    invoke-virtual {v5, p1, p2, v6, v7}, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 108
    iget-object v5, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;

    const-wide/16 v6, 0x30

    add-long/2addr v6, p3

    invoke-virtual {v5, p1, p2, v6, v7}, Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 110
    const-wide/16 v5, 0x48

    add-long v8, p3, v5

    add-long/2addr v8, v3

    invoke-virtual {p2, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v8

    .line 111
    .local v8, "_hidl_vec_size":I
    mul-int/lit8 v3, v8, 0x1

    int-to-long v3, v3

    .line 112
    move-wide v9, v1

    move-wide v1, v3

    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v3

    add-long/2addr v5, p3

    add-long/2addr v5, v9

    .line 111
    const/4 v7, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 115
    .local v1, "childBlob":Landroid/os/HwBlob;
    iget-object v0, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->bearerData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 116
    const/4 v0, 0x0

    .local v0, "_hidl_index_0":I
    :goto_4d
    if-ge v0, v8, :cond_63

    .line 117
    const/4 v2, 0x0

    .line 118
    .local v2, "_hidl_vec_element":B
    mul-int/lit8 v3, v0, 0x1

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v2

    .line 119
    iget-object v3, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->bearerData:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .end local v2    # "_hidl_vec_element":B
    add-int/lit8 v0, v0, 0x1

    goto :goto_4d

    .line 122
    .end local v0    # "_hidl_index_0":I
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v8    # "_hidl_vec_size":I
    :cond_63
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 77
    const-wide/16 v0, 0x58

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 78
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 79
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v1, ".teleserviceId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget v1, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->teleserviceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    const-string v1, ", .isServicePresent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget-boolean v1, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->isServicePresent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 64
    const-string v1, ", .serviceCategory = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget v1, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->serviceCategory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, ", .address = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    const-string v1, ", .subAddress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    const-string v1, ", .bearerData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->bearerData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 14
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 149
    const-wide/16 v0, 0x0

    add-long v2, p2, v0

    iget v4, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->teleserviceId:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 150
    const-wide/16 v2, 0x4

    add-long/2addr v2, p2

    iget-boolean v4, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->isServicePresent:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 151
    const-wide/16 v2, 0x8

    add-long v4, p2, v2

    iget v6, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->serviceCategory:I

    invoke-virtual {p1, v4, v5, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 152
    iget-object v4, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    const-wide/16 v5, 0x10

    add-long/2addr v5, p2

    invoke-virtual {v4, p1, v5, v6}, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 153
    iget-object v4, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;

    const-wide/16 v5, 0x30

    add-long/2addr v5, p2

    invoke-virtual {v4, p1, v5, v6}, Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 155
    iget-object v4, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->bearerData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 156
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x48

    add-long v7, p2, v5

    add-long/2addr v7, v2

    invoke-virtual {p1, v7, v8, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 157
    add-long v2, p2, v5

    const-wide/16 v7, 0xc

    add-long/2addr v2, v7

    const/4 v7, 0x0

    invoke-virtual {p1, v2, v3, v7}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 158
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v4, 0x1

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 159
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_49
    if-ge v3, v4, :cond_60

    .line 160
    mul-int/lit8 v7, v3, 0x1

    int-to-long v7, v7

    iget-object v9, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->bearerData:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Byte;

    invoke-virtual {v9}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    invoke-virtual {v2, v7, v8, v9}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 159
    add-int/lit8 v3, v3, 0x1

    goto :goto_49

    .line 162
    .end local v3    # "_hidl_index_0":I
    :cond_60
    add-long/2addr v5, p2

    add-long/2addr v5, v0

    invoke-virtual {p1, v5, v6, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 164
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_vec_size":I
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 125
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x58

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 126
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 127
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 128
    return-void
.end method
