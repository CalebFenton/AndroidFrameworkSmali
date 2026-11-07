.class public final Landroid/hardware/radio/V1_4/PhysicalChannelConfig;
.super Ljava/lang/Object;
.source "PhysicalChannelConfig.java"


# instance fields
.field public blacklist base:Landroid/hardware/radio/V1_2/PhysicalChannelConfig;

.field public blacklist contextIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist physicalCellId:I

.field public blacklist rat:I

.field public blacklist rfInfo:Landroid/hardware/radio/V1_4/RadioFrequencyInfo;


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Landroid/hardware/radio/V1_2/PhysicalChannelConfig;

    invoke-direct {v0}, Landroid/hardware/radio/V1_2/PhysicalChannelConfig;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->base:Landroid/hardware/radio/V1_2/PhysicalChannelConfig;

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->rat:I

    .line 13
    new-instance v1, Landroid/hardware/radio/V1_4/RadioFrequencyInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_4/RadioFrequencyInfo;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->rfInfo:Landroid/hardware/radio/V1_4/RadioFrequencyInfo;

    .line 19
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->contextIds:Ljava/util/ArrayList;

    .line 32
    iput v0, p0, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->physicalCellId:I

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
            "Landroid/hardware/radio/V1_4/PhysicalChannelConfig;",
            ">;"
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/PhysicalChannelConfig;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 102
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 103
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x30

    int-to-long v5, v3

    .line 104
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 103
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 107
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 108
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 109
    new-instance v5, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;

    invoke-direct {v5}, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;-><init>()V

    .line 110
    .local v5, "_hidl_vec_element":Landroid/hardware/radio/V1_4/PhysicalChannelConfig;
    mul-int/lit8 v6, v3, 0x30

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 111
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    .end local v5    # "_hidl_vec_element":Landroid/hardware/radio/V1_4/PhysicalChannelConfig;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 115
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
            "Landroid/hardware/radio/V1_4/PhysicalChannelConfig;",
            ">;)V"
        }
    .end annotation

    .line 147
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/PhysicalChannelConfig;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 149
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 150
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 151
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 152
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x30

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 153
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 154
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;

    mul-int/lit8 v5, v3, 0x30

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 153
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 156
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 159
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 160
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 36
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 37
    return v0

    .line 39
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 40
    return v1

    .line 42
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;

    if-eq v2, v3, :cond_11

    .line 43
    return v1

    .line 45
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;

    .line 46
    .local v2, "other":Landroid/hardware/radio/V1_4/PhysicalChannelConfig;
    iget-object v3, p0, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->base:Landroid/hardware/radio/V1_2/PhysicalChannelConfig;

    iget-object v4, v2, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->base:Landroid/hardware/radio/V1_2/PhysicalChannelConfig;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 47
    return v1

    .line 49
    :cond_1f
    iget v3, p0, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->rat:I

    iget v4, v2, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->rat:I

    if-eq v3, v4, :cond_26

    .line 50
    return v1

    .line 52
    :cond_26
    iget-object v3, p0, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->rfInfo:Landroid/hardware/radio/V1_4/RadioFrequencyInfo;

    iget-object v4, v2, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->rfInfo:Landroid/hardware/radio/V1_4/RadioFrequencyInfo;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 53
    return v1

    .line 55
    :cond_31
    iget-object v3, p0, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->contextIds:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->contextIds:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    .line 56
    return v1

    .line 58
    :cond_3c
    iget v3, p0, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->physicalCellId:I

    iget v4, v2, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->physicalCellId:I

    if-eq v3, v4, :cond_43

    .line 59
    return v1

    .line 61
    :cond_43
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 6

    .line 66
    iget-object v0, p0, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->base:Landroid/hardware/radio/V1_2/PhysicalChannelConfig;

    .line 67
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->rat:I

    .line 68
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->rfInfo:Landroid/hardware/radio/V1_4/RadioFrequencyInfo;

    .line 69
    invoke-static {v2}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->contextIds:Ljava/util/ArrayList;

    .line 70
    invoke-static {v3}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->physicalCellId:I

    .line 71
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 66
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 16
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 120
    iget-object v1, p0, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->base:Landroid/hardware/radio/V1_2/PhysicalChannelConfig;

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, p1, p2, v4, v5}, Landroid/hardware/radio/V1_2/PhysicalChannelConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 121
    const-wide/16 v4, 0x8

    add-long v6, p3, v4

    invoke-virtual {p2, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, p0, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->rat:I

    .line 122
    iget-object v1, p0, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->rfInfo:Landroid/hardware/radio/V1_4/RadioFrequencyInfo;

    const-wide/16 v6, 0xc

    add-long/2addr v6, p3

    invoke-virtual {v1, p1, p2, v6, v7}, Landroid/hardware/radio/V1_4/RadioFrequencyInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 124
    const-wide/16 v6, 0x18

    add-long v8, p3, v6

    add-long/2addr v8, v4

    invoke-virtual {p2, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v8

    .line 125
    .local v8, "_hidl_vec_size":I
    mul-int/lit8 v1, v8, 0x4

    int-to-long v4, v1

    .line 126
    move-wide v9, v2

    move-wide v1, v4

    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v3

    add-long/2addr v6, p3

    add-long v5, v6, v9

    .line 125
    const/4 v7, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 129
    .local v1, "childBlob":Landroid/os/HwBlob;
    iget-object v0, p0, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->contextIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 130
    const/4 v0, 0x0

    .local v0, "_hidl_index_0":I
    :goto_3c
    if-ge v0, v8, :cond_52

    .line 131
    const/4 v2, 0x0

    .line 132
    .local v2, "_hidl_vec_element":I
    mul-int/lit8 v3, v0, 0x4

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 133
    iget-object v3, p0, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->contextIds:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .end local v2    # "_hidl_vec_element":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 136
    .end local v0    # "_hidl_index_0":I
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v8    # "_hidl_vec_size":I
    :cond_52
    const-wide/16 v0, 0x28

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->physicalCellId:I

    .line 137
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 93
    const-wide/16 v0, 0x30

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 94
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 95
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string v1, ".base = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget-object v1, p0, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->base:Landroid/hardware/radio/V1_2/PhysicalChannelConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    const-string v1, ", .rat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget v1, p0, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->rat:I

    invoke-static {v1}, Landroid/hardware/radio/V1_4/RadioTechnology;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string v1, ", .rfInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget-object v1, p0, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->rfInfo:Landroid/hardware/radio/V1_4/RadioFrequencyInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    const-string v1, ", .contextIds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget-object v1, p0, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->contextIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, ", .physicalCellId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget v1, p0, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->physicalCellId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 15
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 164
    iget-object v0, p0, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->base:Landroid/hardware/radio/V1_2/PhysicalChannelConfig;

    const-wide/16 v1, 0x0

    add-long v3, p2, v1

    invoke-virtual {v0, p1, v3, v4}, Landroid/hardware/radio/V1_2/PhysicalChannelConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 165
    const-wide/16 v3, 0x8

    add-long v5, p2, v3

    iget v0, p0, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->rat:I

    invoke-virtual {p1, v5, v6, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 166
    iget-object v0, p0, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->rfInfo:Landroid/hardware/radio/V1_4/RadioFrequencyInfo;

    const-wide/16 v5, 0xc

    add-long v7, p2, v5

    invoke-virtual {v0, p1, v7, v8}, Landroid/hardware/radio/V1_4/RadioFrequencyInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 168
    iget-object v0, p0, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->contextIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 169
    .local v0, "_hidl_vec_size":I
    const-wide/16 v7, 0x18

    add-long v9, p2, v7

    add-long/2addr v9, v3

    invoke-virtual {p1, v9, v10, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 170
    add-long v3, p2, v7

    add-long/2addr v3, v5

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 171
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v0, 0x4

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 172
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_38
    if-ge v4, v0, :cond_4f

    .line 173
    mul-int/lit8 v5, v4, 0x4

    int-to-long v5, v5

    iget-object v9, p0, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->contextIds:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v3, v5, v6, v9}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 172
    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    .line 175
    .end local v4    # "_hidl_index_0":I
    :cond_4f
    add-long/2addr v7, p2

    add-long/2addr v7, v1

    invoke-virtual {p1, v7, v8, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 177
    .end local v0    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    const-wide/16 v0, 0x28

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->physicalCellId:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 178
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 140
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 141
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 142
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 143
    return-void
.end method
