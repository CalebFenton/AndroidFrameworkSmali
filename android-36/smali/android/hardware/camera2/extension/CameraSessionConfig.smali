.class public Landroid/hardware/camera2/extension/CameraSessionConfig;
.super Ljava/lang/Object;
.source "CameraSessionConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/camera2/extension/CameraSessionConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist colorSpace:I

.field public blacklist outputConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/CameraOutputConfig;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist sessionParameter:Landroid/hardware/camera2/impl/CameraMetadataNative;

.field public blacklist sessionTemplateId:I

.field public blacklist sessionType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 18
    new-instance v0, Landroid/hardware/camera2/extension/CameraSessionConfig$1;

    invoke-direct {v0}, Landroid/hardware/camera2/extension/CameraSessionConfig$1;-><init>()V

    sput-object v0, Landroid/hardware/camera2/extension/CameraSessionConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/camera2/extension/CameraSessionConfig;->sessionTemplateId:I

    .line 16
    iput v0, p0, Landroid/hardware/camera2/extension/CameraSessionConfig;->sessionType:I

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/camera2/extension/CameraSessionConfig;->colorSpace:I

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 6
    .param p1, "_v"    # Ljava/lang/Object;

    .line 75
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 76
    :cond_4
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_21

    .line 77
    const/4 v0, 0x0

    .line 78
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

    .line 79
    .local v2, "o":Ljava/lang/Object;
    invoke-direct {p0, v2}, Landroid/hardware/camera2/extension/CameraSessionConfig;->describeContents(Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v0, v3

    .line 80
    .end local v2    # "o":Ljava/lang/Object;
    goto :goto_10

    .line 81
    :cond_20
    return v0

    .line 83
    .end local v0    # "_mask":I
    :cond_21
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_2d

    .line 84
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 86
    :cond_2d
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/hardware/camera2/extension/CameraSessionConfig;->outputConfigs:Ljava/util/List;

    invoke-direct {p0, v1}, Landroid/hardware/camera2/extension/CameraSessionConfig;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 71
    iget-object v1, p0, Landroid/hardware/camera2/extension/CameraSessionConfig;->sessionParameter:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {p0, v1}, Landroid/hardware/camera2/extension/CameraSessionConfig;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 72
    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 47
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 49
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_b4

    .line 50
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_b2

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 61
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 64
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 50
    return-void

    .line 62
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 51
    :cond_26
    :try_start_26
    sget-object v2, Landroid/hardware/camera2/extension/CameraOutputConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/camera2/extension/CameraSessionConfig;->outputConfigs:Ljava/util/List;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_32
    .catchall {:try_start_26 .. :try_end_32} :catchall_b2

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_44

    .line 61
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3e

    .line 64
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 52
    return-void

    .line 62
    :cond_3e
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 53
    :cond_44
    :try_start_44
    sget-object v2, Landroid/hardware/camera2/impl/CameraMetadataNative;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/impl/CameraMetadataNative;

    iput-object v2, p0, Landroid/hardware/camera2/extension/CameraSessionConfig;->sessionParameter:Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_52
    .catchall {:try_start_44 .. :try_end_52} :catchall_b2

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_64

    .line 61
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_5e

    .line 64
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 54
    return-void

    .line 62
    :cond_5e
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 55
    :cond_64
    :try_start_64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/camera2/extension/CameraSessionConfig;->sessionTemplateId:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_6e
    .catchall {:try_start_64 .. :try_end_6e} :catchall_b2

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_80

    .line 61
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_7a

    .line 64
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 56
    return-void

    .line 62
    :cond_7a
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 57
    :cond_80
    :try_start_80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/camera2/extension/CameraSessionConfig;->sessionType:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_8a
    .catchall {:try_start_80 .. :try_end_8a} :catchall_b2

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9c

    .line 61
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_96

    .line 64
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 58
    return-void

    .line 62
    :cond_96
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 59
    :cond_9c
    :try_start_9c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/camera2/extension/CameraSessionConfig;->colorSpace:I
    :try_end_a2
    .catchall {:try_start_9c .. :try_end_a2} :catchall_b2

    .line 61
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ac

    .line 64
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 65
    nop

    .line 66
    return-void

    .line 62
    :cond_ac
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 61
    :catchall_b2
    move-exception v2

    goto :goto_bc

    .line 49
    :cond_b4
    :try_start_b4
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/camera2/extension/CameraSessionConfig;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_bc
    .catchall {:try_start_b4 .. :try_end_bc} :catchall_b2

    .line 61
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/camera2/extension/CameraSessionConfig;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_bc
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_c5

    .line 62
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 64
    :cond_c5
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 65
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 33
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    iget-object v1, p0, Landroid/hardware/camera2/extension/CameraSessionConfig;->outputConfigs:Ljava/util/List;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 35
    iget-object v1, p0, Landroid/hardware/camera2/extension/CameraSessionConfig;->sessionParameter:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 36
    iget v1, p0, Landroid/hardware/camera2/extension/CameraSessionConfig;->sessionTemplateId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget v1, p0, Landroid/hardware/camera2/extension/CameraSessionConfig;->sessionType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    iget v1, p0, Landroid/hardware/camera2/extension/CameraSessionConfig;->colorSpace:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 40
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 41
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 43
    return-void
.end method
