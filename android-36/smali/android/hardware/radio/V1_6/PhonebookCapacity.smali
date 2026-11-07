.class public final Landroid/hardware/radio/V1_6/PhonebookCapacity;
.super Ljava/lang/Object;
.source "PhonebookCapacity.java"


# instance fields
.field public blacklist maxAdditionalNumberLen:I

.field public blacklist maxAdditionalNumberRecords:I

.field public blacklist maxAdnRecords:I

.field public blacklist maxEmailLen:I

.field public blacklist maxEmailRecords:I

.field public blacklist maxNameLen:I

.field public blacklist maxNumberLen:I

.field public blacklist usedAdditionalNumberRecords:I

.field public blacklist usedAdnRecords:I

.field public blacklist usedEmailRecords:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxAdnRecords:I

    .line 14
    iput v0, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->usedAdnRecords:I

    .line 19
    iput v0, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxEmailRecords:I

    .line 24
    iput v0, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->usedEmailRecords:I

    .line 29
    iput v0, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxAdditionalNumberRecords:I

    .line 34
    iput v0, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->usedAdditionalNumberRecords:I

    .line 39
    iput v0, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxNameLen:I

    .line 44
    iput v0, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxNumberLen:I

    .line 49
    iput v0, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxEmailLen:I

    .line 54
    iput v0, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxAdditionalNumberLen:I

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
            "Landroid/hardware/radio/V1_6/PhonebookCapacity;",
            ">;"
        }
    .end annotation

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_6/PhonebookCapacity;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 154
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 155
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x28

    int-to-long v5, v3

    .line 156
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 155
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 159
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 160
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 161
    new-instance v5, Landroid/hardware/radio/V1_6/PhonebookCapacity;

    invoke-direct {v5}, Landroid/hardware/radio/V1_6/PhonebookCapacity;-><init>()V

    .line 162
    .local v5, "_hidl_vec_element":Landroid/hardware/radio/V1_6/PhonebookCapacity;
    mul-int/lit8 v6, v3, 0x28

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/radio/V1_6/PhonebookCapacity;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 163
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    .end local v5    # "_hidl_vec_element":Landroid/hardware/radio/V1_6/PhonebookCapacity;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 167
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
            "Landroid/hardware/radio/V1_6/PhonebookCapacity;",
            ">;)V"
        }
    .end annotation

    .line 192
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_6/PhonebookCapacity;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 194
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 195
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 196
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 197
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x28

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 198
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 199
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_6/PhonebookCapacity;

    mul-int/lit8 v5, v3, 0x28

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/radio/V1_6/PhonebookCapacity;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 198
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 201
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 204
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 205
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 58
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 59
    return v0

    .line 61
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 62
    return v1

    .line 64
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_6/PhonebookCapacity;

    if-eq v2, v3, :cond_11

    .line 65
    return v1

    .line 67
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/V1_6/PhonebookCapacity;

    .line 68
    .local v2, "other":Landroid/hardware/radio/V1_6/PhonebookCapacity;
    iget v3, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxAdnRecords:I

    iget v4, v2, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxAdnRecords:I

    if-eq v3, v4, :cond_1b

    .line 69
    return v1

    .line 71
    :cond_1b
    iget v3, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->usedAdnRecords:I

    iget v4, v2, Landroid/hardware/radio/V1_6/PhonebookCapacity;->usedAdnRecords:I

    if-eq v3, v4, :cond_22

    .line 72
    return v1

    .line 74
    :cond_22
    iget v3, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxEmailRecords:I

    iget v4, v2, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxEmailRecords:I

    if-eq v3, v4, :cond_29

    .line 75
    return v1

    .line 77
    :cond_29
    iget v3, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->usedEmailRecords:I

    iget v4, v2, Landroid/hardware/radio/V1_6/PhonebookCapacity;->usedEmailRecords:I

    if-eq v3, v4, :cond_30

    .line 78
    return v1

    .line 80
    :cond_30
    iget v3, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxAdditionalNumberRecords:I

    iget v4, v2, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxAdditionalNumberRecords:I

    if-eq v3, v4, :cond_37

    .line 81
    return v1

    .line 83
    :cond_37
    iget v3, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->usedAdditionalNumberRecords:I

    iget v4, v2, Landroid/hardware/radio/V1_6/PhonebookCapacity;->usedAdditionalNumberRecords:I

    if-eq v3, v4, :cond_3e

    .line 84
    return v1

    .line 86
    :cond_3e
    iget v3, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxNameLen:I

    iget v4, v2, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxNameLen:I

    if-eq v3, v4, :cond_45

    .line 87
    return v1

    .line 89
    :cond_45
    iget v3, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxNumberLen:I

    iget v4, v2, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxNumberLen:I

    if-eq v3, v4, :cond_4c

    .line 90
    return v1

    .line 92
    :cond_4c
    iget v3, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxEmailLen:I

    iget v4, v2, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxEmailLen:I

    if-eq v3, v4, :cond_53

    .line 93
    return v1

    .line 95
    :cond_53
    iget v3, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxAdditionalNumberLen:I

    iget v4, v2, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxAdditionalNumberLen:I

    if-eq v3, v4, :cond_5a

    .line 96
    return v1

    .line 98
    :cond_5a
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 12

    .line 103
    iget v0, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxAdnRecords:I

    .line 104
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->usedAdnRecords:I

    .line 105
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxEmailRecords:I

    .line 106
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->usedEmailRecords:I

    .line 107
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxAdditionalNumberRecords:I

    .line 108
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->usedAdditionalNumberRecords:I

    .line 109
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v0, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxNameLen:I

    .line 110
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v0, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxNumberLen:I

    .line 111
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v0, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxEmailLen:I

    .line 112
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v0, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxAdditionalNumberLen:I

    .line 113
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array/range {v1 .. v10}, [Ljava/lang/Object;

    move-result-object v0

    .line 103
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 7
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 172
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxAdnRecords:I

    .line 173
    const-wide/16 v0, 0x4

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->usedAdnRecords:I

    .line 174
    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxEmailRecords:I

    .line 175
    const-wide/16 v0, 0xc

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->usedEmailRecords:I

    .line 176
    const-wide/16 v0, 0x10

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxAdditionalNumberRecords:I

    .line 177
    const-wide/16 v0, 0x14

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->usedAdditionalNumberRecords:I

    .line 178
    const-wide/16 v0, 0x18

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxNameLen:I

    .line 179
    const-wide/16 v0, 0x1c

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxNumberLen:I

    .line 180
    const-wide/16 v0, 0x20

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxEmailLen:I

    .line 181
    const-wide/16 v0, 0x24

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxAdditionalNumberLen:I

    .line 182
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 145
    const-wide/16 v0, 0x28

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 146
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_6/PhonebookCapacity;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 147
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    const-string v1, ".maxAdnRecords = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget v1, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxAdnRecords:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    const-string v1, ", .usedAdnRecords = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget v1, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->usedAdnRecords:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    const-string v1, ", .maxEmailRecords = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget v1, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxEmailRecords:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    const-string v1, ", .usedEmailRecords = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget v1, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->usedEmailRecords:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    const-string v1, ", .maxAdditionalNumberRecords = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget v1, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxAdditionalNumberRecords:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    const-string v1, ", .usedAdditionalNumberRecords = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    iget v1, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->usedAdditionalNumberRecords:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    const-string v1, ", .maxNameLen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    iget v1, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxNameLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    const-string v1, ", .maxNumberLen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget v1, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxNumberLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    const-string v1, ", .maxEmailLen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    iget v1, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxEmailLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    const-string v1, ", .maxAdditionalNumberLen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget v1, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxAdditionalNumberLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 209
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxAdnRecords:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 210
    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->usedAdnRecords:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 211
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxEmailRecords:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 212
    const-wide/16 v0, 0xc

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->usedEmailRecords:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 213
    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxAdditionalNumberRecords:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 214
    const-wide/16 v0, 0x14

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->usedAdditionalNumberRecords:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 215
    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxNameLen:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 216
    const-wide/16 v0, 0x1c

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxNumberLen:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 217
    const-wide/16 v0, 0x20

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxEmailLen:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 218
    const-wide/16 v0, 0x24

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_6/PhonebookCapacity;->maxAdditionalNumberLen:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 219
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 185
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 186
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_6/PhonebookCapacity;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 187
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 188
    return-void
.end method
