.class public final Landroid/hardware/gnss/measurement_corrections/V1_0/ReflectingPlane;
.super Ljava/lang/Object;
.source "ReflectingPlane.java"


# instance fields
.field public blacklist altitudeMeters:D

.field public blacklist azimuthDegrees:D

.field public blacklist latitudeDegrees:D

.field public blacklist longitudeDegrees:D


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/ReflectingPlane;->latitudeDegrees:D

    .line 12
    iput-wide v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/ReflectingPlane;->longitudeDegrees:D

    .line 17
    iput-wide v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/ReflectingPlane;->altitudeMeters:D

    .line 21
    iput-wide v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/ReflectingPlane;->azimuthDegrees:D

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
            "Landroid/hardware/gnss/measurement_corrections/V1_0/ReflectingPlane;",
            ">;"
        }
    .end annotation

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/measurement_corrections/V1_0/ReflectingPlane;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 85
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 86
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x20

    int-to-long v5, v3

    .line 87
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 86
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 90
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 91
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 92
    new-instance v5, Landroid/hardware/gnss/measurement_corrections/V1_0/ReflectingPlane;

    invoke-direct {v5}, Landroid/hardware/gnss/measurement_corrections/V1_0/ReflectingPlane;-><init>()V

    .line 93
    .local v5, "_hidl_vec_element":Landroid/hardware/gnss/measurement_corrections/V1_0/ReflectingPlane;
    mul-int/lit8 v6, v3, 0x20

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/gnss/measurement_corrections/V1_0/ReflectingPlane;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 94
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .end local v5    # "_hidl_vec_element":Landroid/hardware/gnss/measurement_corrections/V1_0/ReflectingPlane;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 98
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
            "Landroid/hardware/gnss/measurement_corrections/V1_0/ReflectingPlane;",
            ">;)V"
        }
    .end annotation

    .line 117
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/measurement_corrections/V1_0/ReflectingPlane;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 119
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 120
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 121
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 122
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x20

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 123
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 124
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/gnss/measurement_corrections/V1_0/ReflectingPlane;

    mul-int/lit8 v5, v3, 0x20

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/gnss/measurement_corrections/V1_0/ReflectingPlane;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 123
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 126
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 129
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 130
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 25
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 26
    return v0

    .line 28
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 29
    return v1

    .line 31
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/gnss/measurement_corrections/V1_0/ReflectingPlane;

    if-eq v2, v3, :cond_11

    .line 32
    return v1

    .line 34
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/gnss/measurement_corrections/V1_0/ReflectingPlane;

    .line 35
    .local v2, "other":Landroid/hardware/gnss/measurement_corrections/V1_0/ReflectingPlane;
    iget-wide v3, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/ReflectingPlane;->latitudeDegrees:D

    iget-wide v5, v2, Landroid/hardware/gnss/measurement_corrections/V1_0/ReflectingPlane;->latitudeDegrees:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_1d

    .line 36
    return v1

    .line 38
    :cond_1d
    iget-wide v3, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/ReflectingPlane;->longitudeDegrees:D

    iget-wide v5, v2, Landroid/hardware/gnss/measurement_corrections/V1_0/ReflectingPlane;->longitudeDegrees:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_26

    .line 39
    return v1

    .line 41
    :cond_26
    iget-wide v3, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/ReflectingPlane;->altitudeMeters:D

    iget-wide v5, v2, Landroid/hardware/gnss/measurement_corrections/V1_0/ReflectingPlane;->altitudeMeters:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_2f

    .line 42
    return v1

    .line 44
    :cond_2f
    iget-wide v3, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/ReflectingPlane;->azimuthDegrees:D

    iget-wide v5, v2, Landroid/hardware/gnss/measurement_corrections/V1_0/ReflectingPlane;->azimuthDegrees:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_38

    .line 45
    return v1

    .line 47
    :cond_38
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 6

    .line 52
    iget-wide v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/ReflectingPlane;->latitudeDegrees:D

    .line 53
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-wide v1, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/ReflectingPlane;->longitudeDegrees:D

    .line 54
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-wide v2, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/ReflectingPlane;->altitudeMeters:D

    .line 55
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v2}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-wide v3, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/ReflectingPlane;->azimuthDegrees:D

    .line 56
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v3}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 52
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 7
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 103
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/ReflectingPlane;->latitudeDegrees:D

    .line 104
    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/ReflectingPlane;->longitudeDegrees:D

    .line 105
    const-wide/16 v0, 0x10

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/ReflectingPlane;->altitudeMeters:D

    .line 106
    const-wide/16 v0, 0x18

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/ReflectingPlane;->azimuthDegrees:D

    .line 107
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 76
    const-wide/16 v0, 0x20

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 77
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/gnss/measurement_corrections/V1_0/ReflectingPlane;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 78
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const-string v1, ".latitudeDegrees = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget-wide v1, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/ReflectingPlane;->latitudeDegrees:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 65
    const-string v1, ", .longitudeDegrees = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-wide v1, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/ReflectingPlane;->longitudeDegrees:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 67
    const-string v1, ", .altitudeMeters = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget-wide v1, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/ReflectingPlane;->altitudeMeters:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 69
    const-string v1, ", .azimuthDegrees = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget-wide v1, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/ReflectingPlane;->azimuthDegrees:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 8
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 134
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/ReflectingPlane;->latitudeDegrees:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    .line 135
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/ReflectingPlane;->longitudeDegrees:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    .line 136
    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/ReflectingPlane;->altitudeMeters:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    .line 137
    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/ReflectingPlane;->azimuthDegrees:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    .line 138
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 110
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 111
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/gnss/measurement_corrections/V1_0/ReflectingPlane;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 112
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 113
    return-void
.end method
