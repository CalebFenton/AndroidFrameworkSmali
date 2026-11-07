.class public final Landroid/hardware/radio/V1_6/SignalStrength;
.super Ljava/lang/Object;
.source "SignalStrength.java"


# instance fields
.field public blacklist cdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

.field public blacklist evdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

.field public blacklist gsm:Landroid/hardware/radio/V1_0/GsmSignalStrength;

.field public blacklist lte:Landroid/hardware/radio/V1_6/LteSignalStrength;

.field public blacklist nr:Landroid/hardware/radio/V1_6/NrSignalStrength;

.field public blacklist tdscdma:Landroid/hardware/radio/V1_2/TdscdmaSignalStrength;

.field public blacklist wcdma:Landroid/hardware/radio/V1_2/WcdmaSignalStrength;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Landroid/hardware/radio/V1_0/GsmSignalStrength;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/GsmSignalStrength;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/SignalStrength;->gsm:Landroid/hardware/radio/V1_0/GsmSignalStrength;

    .line 14
    new-instance v0, Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/CdmaSignalStrength;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/SignalStrength;->cdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    .line 19
    new-instance v0, Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/EvdoSignalStrength;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/SignalStrength;->evdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    .line 24
    new-instance v0, Landroid/hardware/radio/V1_6/LteSignalStrength;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/LteSignalStrength;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/SignalStrength;->lte:Landroid/hardware/radio/V1_6/LteSignalStrength;

    .line 29
    new-instance v0, Landroid/hardware/radio/V1_2/TdscdmaSignalStrength;

    invoke-direct {v0}, Landroid/hardware/radio/V1_2/TdscdmaSignalStrength;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/SignalStrength;->tdscdma:Landroid/hardware/radio/V1_2/TdscdmaSignalStrength;

    .line 34
    new-instance v0, Landroid/hardware/radio/V1_2/WcdmaSignalStrength;

    invoke-direct {v0}, Landroid/hardware/radio/V1_2/WcdmaSignalStrength;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/SignalStrength;->wcdma:Landroid/hardware/radio/V1_2/WcdmaSignalStrength;

    .line 39
    new-instance v0, Landroid/hardware/radio/V1_6/NrSignalStrength;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/NrSignalStrength;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/SignalStrength;->nr:Landroid/hardware/radio/V1_6/NrSignalStrength;

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
            "Landroid/hardware/radio/V1_6/SignalStrength;",
            ">;"
        }
    .end annotation

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_6/SignalStrength;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 121
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 122
    .local v2, "_hidl_vec_size":I
    mul-int/lit16 v3, v2, 0x88

    int-to-long v5, v3

    .line 123
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 122
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 126
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 127
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 128
    new-instance v5, Landroid/hardware/radio/V1_6/SignalStrength;

    invoke-direct {v5}, Landroid/hardware/radio/V1_6/SignalStrength;-><init>()V

    .line 129
    .local v5, "_hidl_vec_element":Landroid/hardware/radio/V1_6/SignalStrength;
    mul-int/lit16 v6, v3, 0x88

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/radio/V1_6/SignalStrength;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 130
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .end local v5    # "_hidl_vec_element":Landroid/hardware/radio/V1_6/SignalStrength;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 134
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
            "Landroid/hardware/radio/V1_6/SignalStrength;",
            ">;)V"
        }
    .end annotation

    .line 156
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_6/SignalStrength;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 158
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 159
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 160
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 161
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit16 v3, v1, 0x88

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 162
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 163
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_6/SignalStrength;

    mul-int/lit16 v5, v3, 0x88

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/radio/V1_6/SignalStrength;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 162
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 165
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 168
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 169
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 43
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 44
    return v0

    .line 46
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 47
    return v1

    .line 49
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_6/SignalStrength;

    if-eq v2, v3, :cond_11

    .line 50
    return v1

    .line 52
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/V1_6/SignalStrength;

    .line 53
    .local v2, "other":Landroid/hardware/radio/V1_6/SignalStrength;
    iget-object v3, p0, Landroid/hardware/radio/V1_6/SignalStrength;->gsm:Landroid/hardware/radio/V1_0/GsmSignalStrength;

    iget-object v4, v2, Landroid/hardware/radio/V1_6/SignalStrength;->gsm:Landroid/hardware/radio/V1_0/GsmSignalStrength;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 54
    return v1

    .line 56
    :cond_1f
    iget-object v3, p0, Landroid/hardware/radio/V1_6/SignalStrength;->cdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    iget-object v4, v2, Landroid/hardware/radio/V1_6/SignalStrength;->cdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 57
    return v1

    .line 59
    :cond_2a
    iget-object v3, p0, Landroid/hardware/radio/V1_6/SignalStrength;->evdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    iget-object v4, v2, Landroid/hardware/radio/V1_6/SignalStrength;->evdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    .line 60
    return v1

    .line 62
    :cond_35
    iget-object v3, p0, Landroid/hardware/radio/V1_6/SignalStrength;->lte:Landroid/hardware/radio/V1_6/LteSignalStrength;

    iget-object v4, v2, Landroid/hardware/radio/V1_6/SignalStrength;->lte:Landroid/hardware/radio/V1_6/LteSignalStrength;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    .line 63
    return v1

    .line 65
    :cond_40
    iget-object v3, p0, Landroid/hardware/radio/V1_6/SignalStrength;->tdscdma:Landroid/hardware/radio/V1_2/TdscdmaSignalStrength;

    iget-object v4, v2, Landroid/hardware/radio/V1_6/SignalStrength;->tdscdma:Landroid/hardware/radio/V1_2/TdscdmaSignalStrength;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4b

    .line 66
    return v1

    .line 68
    :cond_4b
    iget-object v3, p0, Landroid/hardware/radio/V1_6/SignalStrength;->wcdma:Landroid/hardware/radio/V1_2/WcdmaSignalStrength;

    iget-object v4, v2, Landroid/hardware/radio/V1_6/SignalStrength;->wcdma:Landroid/hardware/radio/V1_2/WcdmaSignalStrength;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_56

    .line 69
    return v1

    .line 71
    :cond_56
    iget-object v3, p0, Landroid/hardware/radio/V1_6/SignalStrength;->nr:Landroid/hardware/radio/V1_6/NrSignalStrength;

    iget-object v4, v2, Landroid/hardware/radio/V1_6/SignalStrength;->nr:Landroid/hardware/radio/V1_6/NrSignalStrength;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_61

    .line 72
    return v1

    .line 74
    :cond_61
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 9

    .line 79
    iget-object v0, p0, Landroid/hardware/radio/V1_6/SignalStrength;->gsm:Landroid/hardware/radio/V1_0/GsmSignalStrength;

    .line 80
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v0, p0, Landroid/hardware/radio/V1_6/SignalStrength;->cdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    .line 81
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Landroid/hardware/radio/V1_6/SignalStrength;->evdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    .line 82
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v0, p0, Landroid/hardware/radio/V1_6/SignalStrength;->lte:Landroid/hardware/radio/V1_6/LteSignalStrength;

    .line 83
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v0, p0, Landroid/hardware/radio/V1_6/SignalStrength;->tdscdma:Landroid/hardware/radio/V1_2/TdscdmaSignalStrength;

    .line 84
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v0, p0, Landroid/hardware/radio/V1_6/SignalStrength;->wcdma:Landroid/hardware/radio/V1_2/WcdmaSignalStrength;

    .line 85
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v0, p0, Landroid/hardware/radio/V1_6/SignalStrength;->nr:Landroid/hardware/radio/V1_6/NrSignalStrength;

    .line 86
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    .line 79
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 8
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 139
    iget-object v0, p0, Landroid/hardware/radio/V1_6/SignalStrength;->gsm:Landroid/hardware/radio/V1_0/GsmSignalStrength;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_0/GsmSignalStrength;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 140
    iget-object v0, p0, Landroid/hardware/radio/V1_6/SignalStrength;->cdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    const-wide/16 v1, 0xc

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_0/CdmaSignalStrength;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 141
    iget-object v0, p0, Landroid/hardware/radio/V1_6/SignalStrength;->evdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    const-wide/16 v1, 0x14

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_0/EvdoSignalStrength;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 142
    iget-object v0, p0, Landroid/hardware/radio/V1_6/SignalStrength;->lte:Landroid/hardware/radio/V1_6/LteSignalStrength;

    const-wide/16 v1, 0x20

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_6/LteSignalStrength;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 143
    iget-object v0, p0, Landroid/hardware/radio/V1_6/SignalStrength;->tdscdma:Landroid/hardware/radio/V1_2/TdscdmaSignalStrength;

    const-wide/16 v1, 0x3c

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_2/TdscdmaSignalStrength;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 144
    iget-object v0, p0, Landroid/hardware/radio/V1_6/SignalStrength;->wcdma:Landroid/hardware/radio/V1_2/WcdmaSignalStrength;

    const-wide/16 v1, 0x48

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_2/WcdmaSignalStrength;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 145
    iget-object v0, p0, Landroid/hardware/radio/V1_6/SignalStrength;->nr:Landroid/hardware/radio/V1_6/NrSignalStrength;

    const-wide/16 v1, 0x58

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_6/NrSignalStrength;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 146
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 112
    const-wide/16 v0, 0x88

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 113
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_6/SignalStrength;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 114
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const-string v1, ".gsm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    iget-object v1, p0, Landroid/hardware/radio/V1_6/SignalStrength;->gsm:Landroid/hardware/radio/V1_0/GsmSignalStrength;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    const-string v1, ", .cdma = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget-object v1, p0, Landroid/hardware/radio/V1_6/SignalStrength;->cdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    const-string v1, ", .evdo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget-object v1, p0, Landroid/hardware/radio/V1_6/SignalStrength;->evdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    const-string v1, ", .lte = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget-object v1, p0, Landroid/hardware/radio/V1_6/SignalStrength;->lte:Landroid/hardware/radio/V1_6/LteSignalStrength;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    const-string v1, ", .tdscdma = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget-object v1, p0, Landroid/hardware/radio/V1_6/SignalStrength;->tdscdma:Landroid/hardware/radio/V1_2/TdscdmaSignalStrength;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    const-string v1, ", .wcdma = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget-object v1, p0, Landroid/hardware/radio/V1_6/SignalStrength;->wcdma:Landroid/hardware/radio/V1_2/WcdmaSignalStrength;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    const-string v1, ", .nr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget-object v1, p0, Landroid/hardware/radio/V1_6/SignalStrength;->nr:Landroid/hardware/radio/V1_6/NrSignalStrength;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 173
    iget-object v0, p0, Landroid/hardware/radio/V1_6/SignalStrength;->gsm:Landroid/hardware/radio/V1_0/GsmSignalStrength;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_0/GsmSignalStrength;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 174
    iget-object v0, p0, Landroid/hardware/radio/V1_6/SignalStrength;->cdma:Landroid/hardware/radio/V1_0/CdmaSignalStrength;

    const-wide/16 v1, 0xc

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_0/CdmaSignalStrength;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 175
    iget-object v0, p0, Landroid/hardware/radio/V1_6/SignalStrength;->evdo:Landroid/hardware/radio/V1_0/EvdoSignalStrength;

    const-wide/16 v1, 0x14

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_0/EvdoSignalStrength;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 176
    iget-object v0, p0, Landroid/hardware/radio/V1_6/SignalStrength;->lte:Landroid/hardware/radio/V1_6/LteSignalStrength;

    const-wide/16 v1, 0x20

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_6/LteSignalStrength;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 177
    iget-object v0, p0, Landroid/hardware/radio/V1_6/SignalStrength;->tdscdma:Landroid/hardware/radio/V1_2/TdscdmaSignalStrength;

    const-wide/16 v1, 0x3c

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_2/TdscdmaSignalStrength;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 178
    iget-object v0, p0, Landroid/hardware/radio/V1_6/SignalStrength;->wcdma:Landroid/hardware/radio/V1_2/WcdmaSignalStrength;

    const-wide/16 v1, 0x48

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_2/WcdmaSignalStrength;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 179
    iget-object v0, p0, Landroid/hardware/radio/V1_6/SignalStrength;->nr:Landroid/hardware/radio/V1_6/NrSignalStrength;

    const-wide/16 v1, 0x58

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_6/NrSignalStrength;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 180
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 149
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x88

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 150
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_6/SignalStrength;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 151
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 152
    return-void
.end method
