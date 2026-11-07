.class public final Landroid/hardware/radio/V1_0/ImsSmsMessage;
.super Ljava/lang/Object;
.source "ImsSmsMessage.java"


# instance fields
.field public blacklist cdmaMessage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CdmaSmsMessage;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist gsmMessage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/GsmSmsMessage;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist messageRef:I

.field public blacklist retry:Z

.field public blacklist tech:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/radio/V1_0/ImsSmsMessage;->tech:I

    .line 6
    iput-boolean v0, p0, Landroid/hardware/radio/V1_0/ImsSmsMessage;->retry:Z

    .line 7
    iput v0, p0, Landroid/hardware/radio/V1_0/ImsSmsMessage;->messageRef:I

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_0/ImsSmsMessage;->cdmaMessage:Ljava/util/ArrayList;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_0/ImsSmsMessage;->gsmMessage:Ljava/util/ArrayList;

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
            "Landroid/hardware/radio/V1_0/ImsSmsMessage;",
            ">;"
        }
    .end annotation

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/ImsSmsMessage;>;"
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
    mul-int/lit8 v3, v2, 0x30

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
    new-instance v5, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 87
    .local v5, "_hidl_vec_element":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    mul-int/lit8 v6, v3, 0x30

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 88
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .end local v5    # "_hidl_vec_element":Landroid/hardware/radio/V1_0/ImsSmsMessage;
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
            "Landroid/hardware/radio/V1_0/ImsSmsMessage;",
            ">;)V"
        }
    .end annotation

    .line 136
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/ImsSmsMessage;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 138
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 139
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 140
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 141
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x30

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 142
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 143
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    mul-int/lit8 v5, v3, 0x30

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 142
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 145
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 148
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 149
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

    const-class v3, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    if-eq v2, v3, :cond_11

    .line 20
    return v1

    .line 22
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    .line 23
    .local v2, "other":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    iget v3, p0, Landroid/hardware/radio/V1_0/ImsSmsMessage;->tech:I

    iget v4, v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;->tech:I

    if-eq v3, v4, :cond_1b

    .line 24
    return v1

    .line 26
    :cond_1b
    iget-boolean v3, p0, Landroid/hardware/radio/V1_0/ImsSmsMessage;->retry:Z

    iget-boolean v4, v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;->retry:Z

    if-eq v3, v4, :cond_22

    .line 27
    return v1

    .line 29
    :cond_22
    iget v3, p0, Landroid/hardware/radio/V1_0/ImsSmsMessage;->messageRef:I

    iget v4, v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;->messageRef:I

    if-eq v3, v4, :cond_29

    .line 30
    return v1

    .line 32
    :cond_29
    iget-object v3, p0, Landroid/hardware/radio/V1_0/ImsSmsMessage;->cdmaMessage:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;->cdmaMessage:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    .line 33
    return v1

    .line 35
    :cond_34
    iget-object v3, p0, Landroid/hardware/radio/V1_0/ImsSmsMessage;->gsmMessage:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;->gsmMessage:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f

    .line 36
    return v1

    .line 38
    :cond_3f
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 6

    .line 43
    iget v0, p0, Landroid/hardware/radio/V1_0/ImsSmsMessage;->tech:I

    .line 44
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/radio/V1_0/ImsSmsMessage;->retry:Z

    .line 45
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/hardware/radio/V1_0/ImsSmsMessage;->messageRef:I

    .line 46
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/radio/V1_0/ImsSmsMessage;->cdmaMessage:Ljava/util/ArrayList;

    .line 47
    invoke-static {v3}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/radio/V1_0/ImsSmsMessage;->gsmMessage:Ljava/util/ArrayList;

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
    .registers 19
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 97
    move-object/from16 v8, p2

    const-wide/16 v9, 0x0

    add-long v0, p3, v9

    invoke-virtual {v8, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/V1_0/ImsSmsMessage;->tech:I

    .line 98
    const-wide/16 v0, 0x4

    add-long v0, p3, v0

    invoke-virtual {v8, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/V1_0/ImsSmsMessage;->retry:Z

    .line 99
    const-wide/16 v11, 0x8

    add-long v0, p3, v11

    invoke-virtual {v8, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/V1_0/ImsSmsMessage;->messageRef:I

    .line 101
    const-wide/16 v0, 0x10

    add-long v2, p3, v0

    add-long/2addr v2, v11

    invoke-virtual {v8, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v13

    .line 102
    .local v13, "_hidl_vec_size":I
    mul-int/lit8 v2, v13, 0x58

    int-to-long v2, v2

    .line 103
    move-wide v5, v0

    move-wide v1, v2

    invoke-virtual {v8}, Landroid/os/HwBlob;->handle()J

    move-result-wide v3

    add-long v5, p3, v5

    add-long/2addr v5, v9

    .line 102
    const/4 v7, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 106
    .local v1, "childBlob":Landroid/os/HwBlob;
    iget-object v2, p0, Landroid/hardware/radio/V1_0/ImsSmsMessage;->cdmaMessage:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 107
    const/4 v2, 0x0

    .local v2, "_hidl_index_0":I
    :goto_41
    if-ge v2, v13, :cond_56

    .line 108
    new-instance v3, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 109
    .local v3, "_hidl_vec_element":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    mul-int/lit8 v4, v2, 0x58

    int-to-long v4, v4

    invoke-virtual {v3, p1, v1, v4, v5}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 110
    iget-object v4, p0, Landroid/hardware/radio/V1_0/ImsSmsMessage;->cdmaMessage:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .end local v3    # "_hidl_vec_element":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    .line 114
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v2    # "_hidl_index_0":I
    .end local v13    # "_hidl_vec_size":I
    :cond_56
    const-wide/16 v1, 0x20

    add-long v3, p3, v1

    add-long/2addr v3, v11

    invoke-virtual {v8, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v11

    .line 115
    .local v11, "_hidl_vec_size":I
    mul-int/lit8 v3, v11, 0x20

    int-to-long v3, v3

    .line 116
    move-wide v5, v1

    move-wide v1, v3

    invoke-virtual {v8}, Landroid/os/HwBlob;->handle()J

    move-result-wide v3

    add-long v5, p3, v5

    add-long/2addr v5, v9

    .line 115
    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 119
    .restart local v1    # "childBlob":Landroid/os/HwBlob;
    iget-object v2, p0, Landroid/hardware/radio/V1_0/ImsSmsMessage;->gsmMessage:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 120
    const/4 v2, 0x0

    .restart local v2    # "_hidl_index_0":I
    :goto_76
    if-ge v2, v11, :cond_8b

    .line 121
    new-instance v3, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 122
    .local v3, "_hidl_vec_element":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    mul-int/lit8 v4, v2, 0x20

    int-to-long v4, v4

    invoke-virtual {v3, p1, v1, v4, v5}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 123
    iget-object v4, p0, Landroid/hardware/radio/V1_0/ImsSmsMessage;->gsmMessage:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .end local v3    # "_hidl_vec_element":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    add-int/lit8 v2, v2, 0x1

    goto :goto_76

    .line 126
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v2    # "_hidl_index_0":I
    .end local v11    # "_hidl_vec_size":I
    :cond_8b
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 70
    const-wide/16 v0, 0x30

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 71
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

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
    const-string v1, ".tech = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget v1, p0, Landroid/hardware/radio/V1_0/ImsSmsMessage;->tech:I

    invoke-static {v1}, Landroid/hardware/radio/V1_0/RadioTechnologyFamily;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const-string v1, ", .retry = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget-boolean v1, p0, Landroid/hardware/radio/V1_0/ImsSmsMessage;->retry:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 59
    const-string v1, ", .messageRef = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget v1, p0, Landroid/hardware/radio/V1_0/ImsSmsMessage;->messageRef:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, ", .cdmaMessage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget-object v1, p0, Landroid/hardware/radio/V1_0/ImsSmsMessage;->cdmaMessage:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    const-string v1, ", .gsmMessage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget-object v1, p0, Landroid/hardware/radio/V1_0/ImsSmsMessage;->gsmMessage:Ljava/util/ArrayList;

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

    .line 153
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0x0

    add-long v4, p2, v2

    iget v6, v0, Landroid/hardware/radio/V1_0/ImsSmsMessage;->tech:I

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 154
    const-wide/16 v4, 0x4

    add-long v4, p2, v4

    iget-boolean v6, v0, Landroid/hardware/radio/V1_0/ImsSmsMessage;->retry:Z

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 155
    const-wide/16 v4, 0x8

    add-long v6, p2, v4

    iget v8, v0, Landroid/hardware/radio/V1_0/ImsSmsMessage;->messageRef:I

    invoke-virtual {v1, v6, v7, v8}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 157
    iget-object v6, v0, Landroid/hardware/radio/V1_0/ImsSmsMessage;->cdmaMessage:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 158
    .local v6, "_hidl_vec_size":I
    const-wide/16 v7, 0x10

    add-long v9, p2, v7

    add-long/2addr v9, v4

    invoke-virtual {v1, v9, v10, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 159
    add-long v9, p2, v7

    const-wide/16 v11, 0xc

    add-long/2addr v9, v11

    const/4 v13, 0x0

    invoke-virtual {v1, v9, v10, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 160
    new-instance v9, Landroid/os/HwBlob;

    mul-int/lit8 v10, v6, 0x58

    invoke-direct {v9, v10}, Landroid/os/HwBlob;-><init>(I)V

    .line 161
    .local v9, "childBlob":Landroid/os/HwBlob;
    const/4 v10, 0x0

    .local v10, "_hidl_index_0":I
    :goto_3e
    if-ge v10, v6, :cond_55

    .line 162
    iget-object v14, v0, Landroid/hardware/radio/V1_0/ImsSmsMessage;->cdmaMessage:Ljava/util/ArrayList;

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    mul-int/lit8 v15, v10, 0x58

    move-wide/from16 v16, v2

    int-to-long v2, v15

    invoke-virtual {v14, v9, v2, v3}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 161
    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v2, v16

    goto :goto_3e

    :cond_55
    move-wide/from16 v16, v2

    .line 164
    .end local v10    # "_hidl_index_0":I
    add-long v7, p2, v7

    add-long v7, v7, v16

    invoke-virtual {v1, v7, v8, v9}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 167
    .end local v6    # "_hidl_vec_size":I
    .end local v9    # "childBlob":Landroid/os/HwBlob;
    iget-object v2, v0, Landroid/hardware/radio/V1_0/ImsSmsMessage;->gsmMessage:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 168
    .local v2, "_hidl_vec_size":I
    const-wide/16 v6, 0x20

    add-long v8, p2, v6

    add-long/2addr v8, v4

    invoke-virtual {v1, v8, v9, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 169
    add-long v3, p2, v6

    add-long/2addr v3, v11

    invoke-virtual {v1, v3, v4, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 170
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x20

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 171
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_7a
    if-ge v4, v2, :cond_8d

    .line 172
    iget-object v5, v0, Landroid/hardware/radio/V1_0/ImsSmsMessage;->gsmMessage:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    mul-int/lit8 v8, v4, 0x20

    int-to-long v8, v8

    invoke-virtual {v5, v3, v8, v9}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 171
    add-int/lit8 v4, v4, 0x1

    goto :goto_7a

    .line 174
    .end local v4    # "_hidl_index_0":I
    :cond_8d
    add-long v6, p2, v6

    add-long v6, v6, v16

    invoke-virtual {v1, v6, v7, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 176
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 129
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 130
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 131
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 132
    return-void
.end method
