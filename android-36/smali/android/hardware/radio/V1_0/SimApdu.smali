.class public final Landroid/hardware/radio/V1_0/SimApdu;
.super Ljava/lang/Object;
.source "SimApdu.java"


# instance fields
.field public blacklist cla:I

.field public blacklist data:Ljava/lang/String;

.field public blacklist instruction:I

.field public blacklist p1:I

.field public blacklist p2:I

.field public blacklist p3:I

.field public blacklist sessionId:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/radio/V1_0/SimApdu;->sessionId:I

    .line 6
    iput v0, p0, Landroid/hardware/radio/V1_0/SimApdu;->cla:I

    .line 7
    iput v0, p0, Landroid/hardware/radio/V1_0/SimApdu;->instruction:I

    .line 8
    iput v0, p0, Landroid/hardware/radio/V1_0/SimApdu;->p1:I

    .line 9
    iput v0, p0, Landroid/hardware/radio/V1_0/SimApdu;->p2:I

    .line 10
    iput v0, p0, Landroid/hardware/radio/V1_0/SimApdu;->p3:I

    .line 11
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_0/SimApdu;->data:Ljava/lang/String;

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
            "Landroid/hardware/radio/V1_0/SimApdu;",
            ">;"
        }
    .end annotation

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SimApdu;>;"
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
    mul-int/lit8 v3, v2, 0x28

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
    new-instance v5, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 101
    .local v5, "_hidl_vec_element":Landroid/hardware/radio/V1_0/SimApdu;
    mul-int/lit8 v6, v3, 0x28

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/radio/V1_0/SimApdu;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 102
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .end local v5    # "_hidl_vec_element":Landroid/hardware/radio/V1_0/SimApdu;
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
            "Landroid/hardware/radio/V1_0/SimApdu;",
            ">;)V"
        }
    .end annotation

    .line 134
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SimApdu;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 136
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 137
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 138
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 139
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x28

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 140
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 141
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/SimApdu;

    mul-int/lit8 v5, v3, 0x28

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/radio/V1_0/SimApdu;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 140
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 143
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 146
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 147
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

    const-class v3, Landroid/hardware/radio/V1_0/SimApdu;

    if-eq v2, v3, :cond_11

    .line 22
    return v1

    .line 24
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/V1_0/SimApdu;

    .line 25
    .local v2, "other":Landroid/hardware/radio/V1_0/SimApdu;
    iget v3, p0, Landroid/hardware/radio/V1_0/SimApdu;->sessionId:I

    iget v4, v2, Landroid/hardware/radio/V1_0/SimApdu;->sessionId:I

    if-eq v3, v4, :cond_1b

    .line 26
    return v1

    .line 28
    :cond_1b
    iget v3, p0, Landroid/hardware/radio/V1_0/SimApdu;->cla:I

    iget v4, v2, Landroid/hardware/radio/V1_0/SimApdu;->cla:I

    if-eq v3, v4, :cond_22

    .line 29
    return v1

    .line 31
    :cond_22
    iget v3, p0, Landroid/hardware/radio/V1_0/SimApdu;->instruction:I

    iget v4, v2, Landroid/hardware/radio/V1_0/SimApdu;->instruction:I

    if-eq v3, v4, :cond_29

    .line 32
    return v1

    .line 34
    :cond_29
    iget v3, p0, Landroid/hardware/radio/V1_0/SimApdu;->p1:I

    iget v4, v2, Landroid/hardware/radio/V1_0/SimApdu;->p1:I

    if-eq v3, v4, :cond_30

    .line 35
    return v1

    .line 37
    :cond_30
    iget v3, p0, Landroid/hardware/radio/V1_0/SimApdu;->p2:I

    iget v4, v2, Landroid/hardware/radio/V1_0/SimApdu;->p2:I

    if-eq v3, v4, :cond_37

    .line 38
    return v1

    .line 40
    :cond_37
    iget v3, p0, Landroid/hardware/radio/V1_0/SimApdu;->p3:I

    iget v4, v2, Landroid/hardware/radio/V1_0/SimApdu;->p3:I

    if-eq v3, v4, :cond_3e

    .line 41
    return v1

    .line 43
    :cond_3e
    iget-object v3, p0, Landroid/hardware/radio/V1_0/SimApdu;->data:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/radio/V1_0/SimApdu;->data:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_49

    .line 44
    return v1

    .line 46
    :cond_49
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 9

    .line 51
    iget v0, p0, Landroid/hardware/radio/V1_0/SimApdu;->sessionId:I

    .line 52
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/hardware/radio/V1_0/SimApdu;->cla:I

    .line 53
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/hardware/radio/V1_0/SimApdu;->instruction:I

    .line 54
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/hardware/radio/V1_0/SimApdu;->p1:I

    .line 55
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/hardware/radio/V1_0/SimApdu;->p2:I

    .line 56
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/hardware/radio/V1_0/SimApdu;->p3:I

    .line 57
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v0, p0, Landroid/hardware/radio/V1_0/SimApdu;->data:Ljava/lang/String;

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
    move-object/from16 v0, p2

    const-wide/16 v1, 0x0

    add-long v3, p3, v1

    invoke-virtual {v0, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iput v3, p0, Landroid/hardware/radio/V1_0/SimApdu;->sessionId:I

    .line 112
    const-wide/16 v3, 0x4

    add-long v3, p3, v3

    invoke-virtual {v0, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iput v3, p0, Landroid/hardware/radio/V1_0/SimApdu;->cla:I

    .line 113
    const-wide/16 v3, 0x8

    add-long v3, p3, v3

    invoke-virtual {v0, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iput v3, p0, Landroid/hardware/radio/V1_0/SimApdu;->instruction:I

    .line 114
    const-wide/16 v3, 0xc

    add-long v3, p3, v3

    invoke-virtual {v0, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iput v3, p0, Landroid/hardware/radio/V1_0/SimApdu;->p1:I

    .line 115
    const-wide/16 v3, 0x10

    add-long v3, p3, v3

    invoke-virtual {v0, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iput v3, p0, Landroid/hardware/radio/V1_0/SimApdu;->p2:I

    .line 116
    const-wide/16 v3, 0x14

    add-long v3, p3, v3

    invoke-virtual {v0, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iput v3, p0, Landroid/hardware/radio/V1_0/SimApdu;->p3:I

    .line 117
    const-wide/16 v3, 0x18

    add-long v5, p3, v3

    invoke-virtual {v0, v5, v6}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/hardware/radio/V1_0/SimApdu;->data:Ljava/lang/String;

    .line 119
    iget-object v5, p0, Landroid/hardware/radio/V1_0/SimApdu;->data:Ljava/lang/String;

    .line 120
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    int-to-long v7, v5

    .line 121
    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    move-result-wide v9

    add-long v3, p3, v3

    add-long v11, v3, v1

    .line 119
    const/4 v13, 0x0

    move-object v6, p1

    invoke-virtual/range {v6 .. v13}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 124
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 84
    const-wide/16 v0, 0x28

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 85
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_0/SimApdu;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

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
    const-string v1, ".sessionId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget v1, p0, Landroid/hardware/radio/V1_0/SimApdu;->sessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    const-string v1, ", .cla = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget v1, p0, Landroid/hardware/radio/V1_0/SimApdu;->cla:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    const-string v1, ", .instruction = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget v1, p0, Landroid/hardware/radio/V1_0/SimApdu;->instruction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, ", .p1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget v1, p0, Landroid/hardware/radio/V1_0/SimApdu;->p1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    const-string v1, ", .p2 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget v1, p0, Landroid/hardware/radio/V1_0/SimApdu;->p2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    const-string v1, ", .p3 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget v1, p0, Landroid/hardware/radio/V1_0/SimApdu;->p3:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    const-string v1, ", .data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-object v1, p0, Landroid/hardware/radio/V1_0/SimApdu;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 151
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_0/SimApdu;->sessionId:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 152
    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_0/SimApdu;->cla:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 153
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_0/SimApdu;->instruction:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 154
    const-wide/16 v0, 0xc

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_0/SimApdu;->p1:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 155
    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_0/SimApdu;->p2:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 156
    const-wide/16 v0, 0x14

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_0/SimApdu;->p3:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 157
    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    iget-object v2, p0, Landroid/hardware/radio/V1_0/SimApdu;->data:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 158
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 127
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 128
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_0/SimApdu;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 129
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 130
    return-void
.end method
