.class public Landroid/hardware/camera2/extension/CameraOutputConfig;
.super Ljava/lang/Object;
.source "CameraOutputConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/camera2/extension/CameraOutputConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist TYPE_IMAGEREADER:I = 0x1

.field public static final blacklist TYPE_MULTIRES_IMAGEREADER:I = 0x2

.field public static final blacklist TYPE_SURFACE:I


# instance fields
.field public blacklist capacity:I

.field public blacklist dynamicRangeProfile:J

.field public blacklist imageFormat:I

.field public blacklist isMultiResolutionOutput:Z

.field public blacklist outputId:Landroid/hardware/camera2/extension/OutputConfigId;

.field public blacklist physicalCameraId:Ljava/lang/String;

.field public blacklist sharedSurfaceConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/CameraOutputConfig;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist size:Landroid/hardware/camera2/extension/Size;

.field public blacklist surface:Landroid/view/Surface;

.field public blacklist surfaceGroupId:I

.field public blacklist type:I

.field public blacklist usage:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 25
    new-instance v0, Landroid/hardware/camera2/extension/CameraOutputConfig$1;

    invoke-direct {v0}, Landroid/hardware/camera2/extension/CameraOutputConfig$1;-><init>()V

    sput-object v0, Landroid/hardware/camera2/extension/CameraOutputConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 4

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/camera2/extension/CameraOutputConfig;->imageFormat:I

    .line 16
    iput v0, p0, Landroid/hardware/camera2/extension/CameraOutputConfig;->capacity:I

    .line 17
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/hardware/camera2/extension/CameraOutputConfig;->usage:J

    .line 18
    iput-wide v1, p0, Landroid/hardware/camera2/extension/CameraOutputConfig;->dynamicRangeProfile:J

    .line 19
    iput v0, p0, Landroid/hardware/camera2/extension/CameraOutputConfig;->type:I

    .line 21
    iput v0, p0, Landroid/hardware/camera2/extension/CameraOutputConfig;->surfaceGroupId:I

    .line 24
    iput-boolean v0, p0, Landroid/hardware/camera2/extension/CameraOutputConfig;->isMultiResolutionOutput:Z

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 6
    .param p1, "_v"    # Ljava/lang/Object;

    .line 108
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 109
    :cond_4
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_21

    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "_mask":I
    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 112
    .local v2, "o":Ljava/lang/Object;
    invoke-direct {p0, v2}, Landroid/hardware/camera2/extension/CameraOutputConfig;->describeContents(Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v0, v3

    .line 113
    .end local v2    # "o":Ljava/lang/Object;
    goto :goto_10

    .line 114
    :cond_20
    return v0

    .line 116
    .end local v0    # "_mask":I
    :cond_21
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_2d

    .line 117
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 119
    :cond_2d
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/hardware/camera2/extension/CameraOutputConfig;->size:Landroid/hardware/camera2/extension/Size;

    invoke-direct {p0, v1}, Landroid/hardware/camera2/extension/CameraOutputConfig;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 102
    iget-object v1, p0, Landroid/hardware/camera2/extension/CameraOutputConfig;->surface:Landroid/view/Surface;

    invoke-direct {p0, v1}, Landroid/hardware/camera2/extension/CameraOutputConfig;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 103
    iget-object v1, p0, Landroid/hardware/camera2/extension/CameraOutputConfig;->outputId:Landroid/hardware/camera2/extension/OutputConfigId;

    invoke-direct {p0, v1}, Landroid/hardware/camera2/extension/CameraOutputConfig;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 104
    iget-object v1, p0, Landroid/hardware/camera2/extension/CameraOutputConfig;->sharedSurfaceConfigs:Ljava/util/List;

    invoke-direct {p0, v1}, Landroid/hardware/camera2/extension/CameraOutputConfig;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 105
    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 61
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 63
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_180

    .line 64
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_17e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 89
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 92
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 64
    return-void

    .line 90
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 65
    :cond_26
    :try_start_26
    sget-object v2, Landroid/hardware/camera2/extension/Size;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/extension/Size;

    iput-object v2, p0, Landroid/hardware/camera2/extension/CameraOutputConfig;->size:Landroid/hardware/camera2/extension/Size;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_34
    .catchall {:try_start_26 .. :try_end_34} :catchall_17e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_46

    .line 89
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_40

    .line 92
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 66
    return-void

    .line 90
    :cond_40
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    :cond_46
    :try_start_46
    sget-object v2, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    iput-object v2, p0, Landroid/hardware/camera2/extension/CameraOutputConfig;->surface:Landroid/view/Surface;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_54
    .catchall {:try_start_46 .. :try_end_54} :catchall_17e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_66

    .line 89
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_60

    .line 92
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 68
    return-void

    .line 90
    :cond_60
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 69
    :cond_66
    :try_start_66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/camera2/extension/CameraOutputConfig;->imageFormat:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_70
    .catchall {:try_start_66 .. :try_end_70} :catchall_17e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_82

    .line 89
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_7c

    .line 92
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 70
    return-void

    .line 90
    :cond_7c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 71
    :cond_82
    :try_start_82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/camera2/extension/CameraOutputConfig;->capacity:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_8c
    .catchall {:try_start_82 .. :try_end_8c} :catchall_17e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9e

    .line 89
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_98

    .line 92
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 72
    return-void

    .line 90
    :cond_98
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 73
    :cond_9e
    :try_start_9e
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/camera2/extension/CameraOutputConfig;->usage:J

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a8
    .catchall {:try_start_9e .. :try_end_a8} :catchall_17e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ba

    .line 89
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_b4

    .line 92
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 74
    return-void

    .line 90
    :cond_b4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 75
    :cond_ba
    :try_start_ba
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/camera2/extension/CameraOutputConfig;->dynamicRangeProfile:J

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_c4
    .catchall {:try_start_ba .. :try_end_c4} :catchall_17e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_d6

    .line 89
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_d0

    .line 92
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 76
    return-void

    .line 90
    :cond_d0
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 77
    :cond_d6
    :try_start_d6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/camera2/extension/CameraOutputConfig;->type:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_e0
    .catchall {:try_start_d6 .. :try_end_e0} :catchall_17e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_f2

    .line 89
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ec

    .line 92
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 78
    return-void

    .line 90
    :cond_ec
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    :cond_f2
    :try_start_f2
    sget-object v2, Landroid/hardware/camera2/extension/OutputConfigId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/extension/OutputConfigId;

    iput-object v2, p0, Landroid/hardware/camera2/extension/CameraOutputConfig;->outputId:Landroid/hardware/camera2/extension/OutputConfigId;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_100
    .catchall {:try_start_f2 .. :try_end_100} :catchall_17e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_112

    .line 89
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_10c

    .line 92
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 80
    return-void

    .line 90
    :cond_10c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 81
    :cond_112
    :try_start_112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/camera2/extension/CameraOutputConfig;->surfaceGroupId:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_11c
    .catchall {:try_start_112 .. :try_end_11c} :catchall_17e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_12e

    .line 89
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_128

    .line 92
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 82
    return-void

    .line 90
    :cond_128
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 83
    :cond_12e
    :try_start_12e
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/camera2/extension/CameraOutputConfig;->physicalCameraId:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_138
    .catchall {:try_start_12e .. :try_end_138} :catchall_17e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_14a

    .line 89
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_144

    .line 92
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 84
    return-void

    .line 90
    :cond_144
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 85
    :cond_14a
    :try_start_14a
    sget-object v2, Landroid/hardware/camera2/extension/CameraOutputConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/camera2/extension/CameraOutputConfig;->sharedSurfaceConfigs:Ljava/util/List;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_156
    .catchall {:try_start_14a .. :try_end_156} :catchall_17e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_168

    .line 89
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_162

    .line 92
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 86
    return-void

    .line 90
    :cond_162
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 87
    :cond_168
    :try_start_168
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/camera2/extension/CameraOutputConfig;->isMultiResolutionOutput:Z
    :try_end_16e
    .catchall {:try_start_168 .. :try_end_16e} :catchall_17e

    .line 89
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_178

    .line 92
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 93
    nop

    .line 94
    return-void

    .line 90
    :cond_178
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 89
    :catchall_17e
    move-exception v2

    goto :goto_188

    .line 63
    :cond_180
    :try_start_180
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/camera2/extension/CameraOutputConfig;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_188
    .catchall {:try_start_180 .. :try_end_188} :catchall_17e

    .line 89
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/camera2/extension/CameraOutputConfig;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_188
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_191

    .line 90
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 92
    :cond_191
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 93
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 40
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget-object v1, p0, Landroid/hardware/camera2/extension/CameraOutputConfig;->size:Landroid/hardware/camera2/extension/Size;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 42
    iget-object v1, p0, Landroid/hardware/camera2/extension/CameraOutputConfig;->surface:Landroid/view/Surface;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 43
    iget v1, p0, Landroid/hardware/camera2/extension/CameraOutputConfig;->imageFormat:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget v1, p0, Landroid/hardware/camera2/extension/CameraOutputConfig;->capacity:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget-wide v1, p0, Landroid/hardware/camera2/extension/CameraOutputConfig;->usage:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 46
    iget-wide v1, p0, Landroid/hardware/camera2/extension/CameraOutputConfig;->dynamicRangeProfile:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 47
    iget v1, p0, Landroid/hardware/camera2/extension/CameraOutputConfig;->type:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget-object v1, p0, Landroid/hardware/camera2/extension/CameraOutputConfig;->outputId:Landroid/hardware/camera2/extension/OutputConfigId;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 49
    iget v1, p0, Landroid/hardware/camera2/extension/CameraOutputConfig;->surfaceGroupId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget-object v1, p0, Landroid/hardware/camera2/extension/CameraOutputConfig;->physicalCameraId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Landroid/hardware/camera2/extension/CameraOutputConfig;->sharedSurfaceConfigs:Ljava/util/List;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 52
    iget-boolean v1, p0, Landroid/hardware/camera2/extension/CameraOutputConfig;->isMultiResolutionOutput:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 54
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 55
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 57
    return-void
.end method
