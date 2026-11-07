.class public Landroid/hardware/biometrics/face/FaceEnrollOptions;
.super Ljava/lang/Object;
.source "FaceEnrollOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/biometrics/face/FaceEnrollOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist context:Landroid/hardware/biometrics/common/OperationContext;

.field public blacklist enrollmentType:B

.field public blacklist features:[B

.field public blacklist hardwareAuthToken:Landroid/hardware/keymaster/HardwareAuthToken;

.field public blacklist nativeHandlePreview:Landroid/hardware/common/NativeHandle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public blacklist surfacePreview:Landroid/view/Surface;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 23
    new-instance v0, Landroid/hardware/biometrics/face/FaceEnrollOptions$1;

    invoke-direct {v0}, Landroid/hardware/biometrics/face/FaceEnrollOptions$1;-><init>()V

    sput-object v0, Landroid/hardware/biometrics/face/FaceEnrollOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4
    .param p1, "_v"    # Ljava/lang/Object;

    .line 85
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 86
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_10

    .line 87
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 89
    :cond_10
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/hardware/biometrics/face/FaceEnrollOptions;->hardwareAuthToken:Landroid/hardware/keymaster/HardwareAuthToken;

    invoke-direct {p0, v1}, Landroid/hardware/biometrics/face/FaceEnrollOptions;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 79
    iget-object v1, p0, Landroid/hardware/biometrics/face/FaceEnrollOptions;->nativeHandlePreview:Landroid/hardware/common/NativeHandle;

    invoke-direct {p0, v1}, Landroid/hardware/biometrics/face/FaceEnrollOptions;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 80
    iget-object v1, p0, Landroid/hardware/biometrics/face/FaceEnrollOptions;->surfacePreview:Landroid/view/Surface;

    invoke-direct {p0, v1}, Landroid/hardware/biometrics/face/FaceEnrollOptions;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 81
    iget-object v1, p0, Landroid/hardware/biometrics/face/FaceEnrollOptions;->context:Landroid/hardware/biometrics/common/OperationContext;

    invoke-direct {p0, v1}, Landroid/hardware/biometrics/face/FaceEnrollOptions;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 82
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 22
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 53
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 55
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_da

    .line 56
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_d8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 69
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 72
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 56
    return-void

    .line 70
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 57
    :cond_26
    :try_start_26
    sget-object v2, Landroid/hardware/keymaster/HardwareAuthToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/keymaster/HardwareAuthToken;

    iput-object v2, p0, Landroid/hardware/biometrics/face/FaceEnrollOptions;->hardwareAuthToken:Landroid/hardware/keymaster/HardwareAuthToken;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_34
    .catchall {:try_start_26 .. :try_end_34} :catchall_d8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_46

    .line 69
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_40

    .line 72
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 58
    return-void

    .line 70
    :cond_40
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 59
    :cond_46
    :try_start_46
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Landroid/hardware/biometrics/face/FaceEnrollOptions;->enrollmentType:B

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_50
    .catchall {:try_start_46 .. :try_end_50} :catchall_d8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_62

    .line 69
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_5c

    .line 72
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 60
    return-void

    .line 70
    :cond_5c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 61
    :cond_62
    :try_start_62
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/biometrics/face/FaceEnrollOptions;->features:[B

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_6c
    .catchall {:try_start_62 .. :try_end_6c} :catchall_d8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7e

    .line 69
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_78

    .line 72
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 62
    return-void

    .line 70
    :cond_78
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 63
    :cond_7e
    :try_start_7e
    sget-object v2, Landroid/hardware/common/NativeHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/common/NativeHandle;

    iput-object v2, p0, Landroid/hardware/biometrics/face/FaceEnrollOptions;->nativeHandlePreview:Landroid/hardware/common/NativeHandle;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_8c
    .catchall {:try_start_7e .. :try_end_8c} :catchall_d8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9e

    .line 69
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_98

    .line 72
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 64
    return-void

    .line 70
    :cond_98
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 65
    :cond_9e
    :try_start_9e
    sget-object v2, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    iput-object v2, p0, Landroid/hardware/biometrics/face/FaceEnrollOptions;->surfacePreview:Landroid/view/Surface;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_ac
    .catchall {:try_start_9e .. :try_end_ac} :catchall_d8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_be

    .line 69
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_b8

    .line 72
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 66
    return-void

    .line 70
    :cond_b8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    :cond_be
    :try_start_be
    sget-object v2, Landroid/hardware/biometrics/common/OperationContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/biometrics/common/OperationContext;

    iput-object v2, p0, Landroid/hardware/biometrics/face/FaceEnrollOptions;->context:Landroid/hardware/biometrics/common/OperationContext;
    :try_end_c8
    .catchall {:try_start_be .. :try_end_c8} :catchall_d8

    .line 69
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_d2

    .line 72
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 73
    nop

    .line 74
    return-void

    .line 70
    :cond_d2
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 69
    :catchall_d8
    move-exception v2

    goto :goto_e2

    .line 55
    :cond_da
    :try_start_da
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/biometrics/face/FaceEnrollOptions;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_e2
    .catchall {:try_start_da .. :try_end_e2} :catchall_d8

    .line 69
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/biometrics/face/FaceEnrollOptions;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_e2
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_eb

    .line 70
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 72
    :cond_eb
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 73
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 38
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget-object v1, p0, Landroid/hardware/biometrics/face/FaceEnrollOptions;->hardwareAuthToken:Landroid/hardware/keymaster/HardwareAuthToken;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 40
    iget-byte v1, p0, Landroid/hardware/biometrics/face/FaceEnrollOptions;->enrollmentType:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 41
    iget-object v1, p0, Landroid/hardware/biometrics/face/FaceEnrollOptions;->features:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 42
    iget-object v1, p0, Landroid/hardware/biometrics/face/FaceEnrollOptions;->nativeHandlePreview:Landroid/hardware/common/NativeHandle;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 43
    iget-object v1, p0, Landroid/hardware/biometrics/face/FaceEnrollOptions;->surfacePreview:Landroid/view/Surface;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 44
    iget-object v1, p0, Landroid/hardware/biometrics/face/FaceEnrollOptions;->context:Landroid/hardware/biometrics/common/OperationContext;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 46
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 47
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 49
    return-void
.end method
