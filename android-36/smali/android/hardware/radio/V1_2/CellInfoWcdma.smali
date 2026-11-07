.class public final Landroid/hardware/radio/V1_2/CellInfoWcdma;
.super Ljava/lang/Object;
.source "CellInfoWcdma.java"


# instance fields
.field public blacklist cellIdentityWcdma:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

.field public blacklist signalStrengthWcdma:Landroid/hardware/radio/V1_2/WcdmaSignalStrength;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    invoke-direct {v0}, Landroid/hardware/radio/V1_2/CellIdentityWcdma;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_2/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    .line 6
    new-instance v0, Landroid/hardware/radio/V1_2/WcdmaSignalStrength;

    invoke-direct {v0}, Landroid/hardware/radio/V1_2/WcdmaSignalStrength;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_2/CellInfoWcdma;->signalStrengthWcdma:Landroid/hardware/radio/V1_2/WcdmaSignalStrength;

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
            "Landroid/hardware/radio/V1_2/CellInfoWcdma;",
            ">;"
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CellInfoWcdma;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 58
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 59
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x60

    int-to-long v5, v3

    .line 60
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 59
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 63
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 64
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 65
    new-instance v5, Landroid/hardware/radio/V1_2/CellInfoWcdma;

    invoke-direct {v5}, Landroid/hardware/radio/V1_2/CellInfoWcdma;-><init>()V

    .line 66
    .local v5, "_hidl_vec_element":Landroid/hardware/radio/V1_2/CellInfoWcdma;
    mul-int/lit8 v6, v3, 0x60

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/radio/V1_2/CellInfoWcdma;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 67
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .end local v5    # "_hidl_vec_element":Landroid/hardware/radio/V1_2/CellInfoWcdma;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 71
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
            "Landroid/hardware/radio/V1_2/CellInfoWcdma;",
            ">;)V"
        }
    .end annotation

    .line 88
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CellInfoWcdma;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 90
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 91
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 92
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 93
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x60

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 94
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 95
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_2/CellInfoWcdma;

    mul-int/lit8 v5, v3, 0x60

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/radio/V1_2/CellInfoWcdma;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 94
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 97
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 100
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 101
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 10
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 11
    return v0

    .line 13
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 14
    return v1

    .line 16
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_2/CellInfoWcdma;

    if-eq v2, v3, :cond_11

    .line 17
    return v1

    .line 19
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/V1_2/CellInfoWcdma;

    .line 20
    .local v2, "other":Landroid/hardware/radio/V1_2/CellInfoWcdma;
    iget-object v3, p0, Landroid/hardware/radio/V1_2/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    iget-object v4, v2, Landroid/hardware/radio/V1_2/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 21
    return v1

    .line 23
    :cond_1f
    iget-object v3, p0, Landroid/hardware/radio/V1_2/CellInfoWcdma;->signalStrengthWcdma:Landroid/hardware/radio/V1_2/WcdmaSignalStrength;

    iget-object v4, v2, Landroid/hardware/radio/V1_2/CellInfoWcdma;->signalStrengthWcdma:Landroid/hardware/radio/V1_2/WcdmaSignalStrength;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 24
    return v1

    .line 26
    :cond_2a
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 3

    .line 31
    iget-object v0, p0, Landroid/hardware/radio/V1_2/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    .line 32
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/V1_2/CellInfoWcdma;->signalStrengthWcdma:Landroid/hardware/radio/V1_2/WcdmaSignalStrength;

    .line 33
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 31
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 8
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 76
    iget-object v0, p0, Landroid/hardware/radio/V1_2/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 77
    iget-object v0, p0, Landroid/hardware/radio/V1_2/CellInfoWcdma;->signalStrengthWcdma:Landroid/hardware/radio/V1_2/WcdmaSignalStrength;

    const-wide/16 v1, 0x50

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_2/WcdmaSignalStrength;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 78
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 49
    const-wide/16 v0, 0x60

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 50
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_2/CellInfoWcdma;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 51
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const-string v1, ".cellIdentityWcdma = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object v1, p0, Landroid/hardware/radio/V1_2/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    const-string v1, ", .signalStrengthWcdma = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    iget-object v1, p0, Landroid/hardware/radio/V1_2/CellInfoWcdma;->signalStrengthWcdma:Landroid/hardware/radio/V1_2/WcdmaSignalStrength;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 105
    iget-object v0, p0, Landroid/hardware/radio/V1_2/CellInfoWcdma;->cellIdentityWcdma:Landroid/hardware/radio/V1_2/CellIdentityWcdma;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_2/CellIdentityWcdma;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 106
    iget-object v0, p0, Landroid/hardware/radio/V1_2/CellInfoWcdma;->signalStrengthWcdma:Landroid/hardware/radio/V1_2/WcdmaSignalStrength;

    const-wide/16 v1, 0x50

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_2/WcdmaSignalStrength;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 107
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 81
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x60

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 82
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_2/CellInfoWcdma;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 83
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 84
    return-void
.end method
