.class public final Landroid/hardware/radio/V1_0/AppStatus;
.super Ljava/lang/Object;
.source "AppStatus.java"


# instance fields
.field public blacklist aidPtr:Ljava/lang/String;

.field public blacklist appLabelPtr:Ljava/lang/String;

.field public blacklist appState:I

.field public blacklist appType:I

.field public blacklist persoSubstate:I

.field public blacklist pin1:I

.field public blacklist pin1Replaced:I

.field public blacklist pin2:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/radio/V1_0/AppStatus;->appType:I

    .line 6
    iput v0, p0, Landroid/hardware/radio/V1_0/AppStatus;->appState:I

    .line 7
    iput v0, p0, Landroid/hardware/radio/V1_0/AppStatus;->persoSubstate:I

    .line 8
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_0/AppStatus;->aidPtr:Ljava/lang/String;

    .line 9
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_0/AppStatus;->appLabelPtr:Ljava/lang/String;

    .line 10
    iput v0, p0, Landroid/hardware/radio/V1_0/AppStatus;->pin1Replaced:I

    .line 11
    iput v0, p0, Landroid/hardware/radio/V1_0/AppStatus;->pin1:I

    .line 12
    iput v0, p0, Landroid/hardware/radio/V1_0/AppStatus;->pin2:I

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
            "Landroid/hardware/radio/V1_0/AppStatus;",
            ">;"
        }
    .end annotation

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/AppStatus;>;"
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
    mul-int/lit8 v3, v2, 0x40

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
    new-instance v5, Landroid/hardware/radio/V1_0/AppStatus;

    invoke-direct {v5}, Landroid/hardware/radio/V1_0/AppStatus;-><init>()V

    .line 108
    .local v5, "_hidl_vec_element":Landroid/hardware/radio/V1_0/AppStatus;
    mul-int/lit8 v6, v3, 0x40

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/radio/V1_0/AppStatus;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 109
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    .end local v5    # "_hidl_vec_element":Landroid/hardware/radio/V1_0/AppStatus;
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
            "Landroid/hardware/radio/V1_0/AppStatus;",
            ">;)V"
        }
    .end annotation

    .line 148
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/AppStatus;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 150
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 151
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 152
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 153
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x40

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 154
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 155
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/AppStatus;

    mul-int/lit8 v5, v3, 0x40

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/radio/V1_0/AppStatus;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 154
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 157
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 160
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 161
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

    const-class v3, Landroid/hardware/radio/V1_0/AppStatus;

    if-eq v2, v3, :cond_11

    .line 23
    return v1

    .line 25
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/V1_0/AppStatus;

    .line 26
    .local v2, "other":Landroid/hardware/radio/V1_0/AppStatus;
    iget v3, p0, Landroid/hardware/radio/V1_0/AppStatus;->appType:I

    iget v4, v2, Landroid/hardware/radio/V1_0/AppStatus;->appType:I

    if-eq v3, v4, :cond_1b

    .line 27
    return v1

    .line 29
    :cond_1b
    iget v3, p0, Landroid/hardware/radio/V1_0/AppStatus;->appState:I

    iget v4, v2, Landroid/hardware/radio/V1_0/AppStatus;->appState:I

    if-eq v3, v4, :cond_22

    .line 30
    return v1

    .line 32
    :cond_22
    iget v3, p0, Landroid/hardware/radio/V1_0/AppStatus;->persoSubstate:I

    iget v4, v2, Landroid/hardware/radio/V1_0/AppStatus;->persoSubstate:I

    if-eq v3, v4, :cond_29

    .line 33
    return v1

    .line 35
    :cond_29
    iget-object v3, p0, Landroid/hardware/radio/V1_0/AppStatus;->aidPtr:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/radio/V1_0/AppStatus;->aidPtr:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    .line 36
    return v1

    .line 38
    :cond_34
    iget-object v3, p0, Landroid/hardware/radio/V1_0/AppStatus;->appLabelPtr:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/radio/V1_0/AppStatus;->appLabelPtr:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f

    .line 39
    return v1

    .line 41
    :cond_3f
    iget v3, p0, Landroid/hardware/radio/V1_0/AppStatus;->pin1Replaced:I

    iget v4, v2, Landroid/hardware/radio/V1_0/AppStatus;->pin1Replaced:I

    if-eq v3, v4, :cond_46

    .line 42
    return v1

    .line 44
    :cond_46
    iget v3, p0, Landroid/hardware/radio/V1_0/AppStatus;->pin1:I

    iget v4, v2, Landroid/hardware/radio/V1_0/AppStatus;->pin1:I

    if-eq v3, v4, :cond_4d

    .line 45
    return v1

    .line 47
    :cond_4d
    iget v3, p0, Landroid/hardware/radio/V1_0/AppStatus;->pin2:I

    iget v4, v2, Landroid/hardware/radio/V1_0/AppStatus;->pin2:I

    if-eq v3, v4, :cond_54

    .line 48
    return v1

    .line 50
    :cond_54
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 10

    .line 55
    iget v0, p0, Landroid/hardware/radio/V1_0/AppStatus;->appType:I

    .line 56
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/hardware/radio/V1_0/AppStatus;->appState:I

    .line 57
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/hardware/radio/V1_0/AppStatus;->persoSubstate:I

    .line 58
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v0, p0, Landroid/hardware/radio/V1_0/AppStatus;->aidPtr:Ljava/lang/String;

    .line 59
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v0, p0, Landroid/hardware/radio/V1_0/AppStatus;->appLabelPtr:Ljava/lang/String;

    .line 60
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/hardware/radio/V1_0/AppStatus;->pin1Replaced:I

    .line 61
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v0, p0, Landroid/hardware/radio/V1_0/AppStatus;->pin1:I

    .line 62
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v0, p0, Landroid/hardware/radio/V1_0/AppStatus;->pin2:I

    .line 63
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

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
    .registers 28
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 118
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/radio/V1_0/AppStatus;->appType:I

    .line 119
    const-wide/16 v4, 0x4

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/radio/V1_0/AppStatus;->appState:I

    .line 120
    const-wide/16 v4, 0x8

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/radio/V1_0/AppStatus;->persoSubstate:I

    .line 121
    const-wide/16 v4, 0x10

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/hardware/radio/V1_0/AppStatus;->aidPtr:Ljava/lang/String;

    .line 123
    iget-object v6, v0, Landroid/hardware/radio/V1_0/AppStatus;->aidPtr:Ljava/lang/String;

    .line 124
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 125
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v4, p3, v4

    add-long v12, v4, v2

    .line 123
    const/4 v14, 0x0

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 128
    const-wide/16 v4, 0x20

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/hardware/radio/V1_0/AppStatus;->appLabelPtr:Ljava/lang/String;

    .line 130
    iget-object v6, v0, Landroid/hardware/radio/V1_0/AppStatus;->appLabelPtr:Ljava/lang/String;

    .line 131
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v6, v6

    .line 132
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v18

    add-long v4, p3, v4

    add-long v20, v4, v2

    .line 130
    const/16 v22, 0x0

    move-object/from16 v15, p1

    move-wide/from16 v16, v6

    invoke-virtual/range {v15 .. v22}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 135
    const-wide/16 v2, 0x30

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Landroid/hardware/radio/V1_0/AppStatus;->pin1Replaced:I

    .line 136
    const-wide/16 v2, 0x34

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Landroid/hardware/radio/V1_0/AppStatus;->pin1:I

    .line 137
    const-wide/16 v2, 0x38

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Landroid/hardware/radio/V1_0/AppStatus;->pin2:I

    .line 138
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 91
    const-wide/16 v0, 0x40

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 92
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_0/AppStatus;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

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
    const-string v1, ".appType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget v1, p0, Landroid/hardware/radio/V1_0/AppStatus;->appType:I

    invoke-static {v1}, Landroid/hardware/radio/V1_0/AppType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, ", .appState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget v1, p0, Landroid/hardware/radio/V1_0/AppStatus;->appState:I

    invoke-static {v1}, Landroid/hardware/radio/V1_0/AppState;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v1, ", .persoSubstate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget v1, p0, Landroid/hardware/radio/V1_0/AppStatus;->persoSubstate:I

    invoke-static {v1}, Landroid/hardware/radio/V1_0/PersoSubstate;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string v1, ", .aidPtr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-object v1, p0, Landroid/hardware/radio/V1_0/AppStatus;->aidPtr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string v1, ", .appLabelPtr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget-object v1, p0, Landroid/hardware/radio/V1_0/AppStatus;->appLabelPtr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string v1, ", .pin1Replaced = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget v1, p0, Landroid/hardware/radio/V1_0/AppStatus;->pin1Replaced:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    const-string v1, ", .pin1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget v1, p0, Landroid/hardware/radio/V1_0/AppStatus;->pin1:I

    invoke-static {v1}, Landroid/hardware/radio/V1_0/PinState;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string v1, ", .pin2 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget v1, p0, Landroid/hardware/radio/V1_0/AppStatus;->pin2:I

    invoke-static {v1}, Landroid/hardware/radio/V1_0/PinState;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 165
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_0/AppStatus;->appType:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 166
    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_0/AppStatus;->appState:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 167
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_0/AppStatus;->persoSubstate:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 168
    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    iget-object v2, p0, Landroid/hardware/radio/V1_0/AppStatus;->aidPtr:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 169
    const-wide/16 v0, 0x20

    add-long/2addr v0, p2

    iget-object v2, p0, Landroid/hardware/radio/V1_0/AppStatus;->appLabelPtr:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 170
    const-wide/16 v0, 0x30

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_0/AppStatus;->pin1Replaced:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 171
    const-wide/16 v0, 0x34

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_0/AppStatus;->pin1:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 172
    const-wide/16 v0, 0x38

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_0/AppStatus;->pin2:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 173
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 141
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 142
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_0/AppStatus;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 143
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 144
    return-void
.end method
