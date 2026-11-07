.class public Landroid/hardware/biometrics/fingerprint/SensorProps;
.super Ljava/lang/Object;
.source "SensorProps.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/biometrics/fingerprint/SensorProps;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist commonProps:Landroid/hardware/biometrics/common/CommonProps;

.field public blacklist halControlsIllumination:Z

.field public blacklist halHandlesDisplayTouches:Z

.field public blacklist sensorLocations:[Landroid/hardware/biometrics/fingerprint/SensorLocation;

.field public blacklist sensorType:B

.field public blacklist supportsDetectInteraction:Z

.field public blacklist supportsNavigationGestures:Z

.field public blacklist touchDetectionParameters:Landroid/hardware/biometrics/fingerprint/TouchDetectionParameters;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 53
    new-instance v0, Landroid/hardware/biometrics/fingerprint/SensorProps$1;

    invoke-direct {v0}, Landroid/hardware/biometrics/fingerprint/SensorProps$1;-><init>()V

    sput-object v0, Landroid/hardware/biometrics/fingerprint/SensorProps;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->sensorType:B

    .line 26
    iput-boolean v0, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->supportsNavigationGestures:Z

    .line 28
    iput-boolean v0, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->supportsDetectInteraction:Z

    .line 38
    iput-boolean v0, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->halHandlesDisplayTouches:Z

    .line 48
    iput-boolean v0, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->halControlsIllumination:Z

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 8
    .param p1, "_v"    # Ljava/lang/Object;

    .line 120
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 121
    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_1a

    .line 122
    const/4 v1, 0x0

    .line 123
    .local v1, "_mask":I
    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    array-length v3, v2

    :goto_d
    if-ge v0, v3, :cond_19

    aget-object v4, v2, v0

    .line 124
    .local v4, "o":Ljava/lang/Object;
    invoke-direct {p0, v4}, Landroid/hardware/biometrics/fingerprint/SensorProps;->describeContents(Ljava/lang/Object;)I

    move-result v5

    or-int/2addr v1, v5

    .line 123
    .end local v4    # "o":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 126
    :cond_19
    return v1

    .line 128
    .end local v1    # "_mask":I
    :cond_1a
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_26

    .line 129
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 131
    :cond_26
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    invoke-direct {p0, v1}, Landroid/hardware/biometrics/fingerprint/SensorProps;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 115
    iget-object v1, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->sensorLocations:[Landroid/hardware/biometrics/fingerprint/SensorLocation;

    invoke-direct {p0, v1}, Landroid/hardware/biometrics/fingerprint/SensorProps;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 116
    iget-object v1, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->touchDetectionParameters:Landroid/hardware/biometrics/fingerprint/TouchDetectionParameters;

    invoke-direct {p0, v1}, Landroid/hardware/biometrics/fingerprint/SensorProps;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 117
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 85
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 87
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_10e

    .line 88
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_10c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 105
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 108
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 88
    return-void

    .line 106
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 89
    :cond_26
    :try_start_26
    sget-object v2, Landroid/hardware/biometrics/common/CommonProps;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/biometrics/common/CommonProps;

    iput-object v2, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_34
    .catchall {:try_start_26 .. :try_end_34} :catchall_10c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_46

    .line 105
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_40

    .line 108
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 90
    return-void

    .line 106
    :cond_40
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 91
    :cond_46
    :try_start_46
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->sensorType:B

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_50
    .catchall {:try_start_46 .. :try_end_50} :catchall_10c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_62

    .line 105
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_5c

    .line 108
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 92
    return-void

    .line 106
    :cond_5c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 93
    :cond_62
    :try_start_62
    sget-object v2, Landroid/hardware/biometrics/fingerprint/SensorLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/biometrics/fingerprint/SensorLocation;

    iput-object v2, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->sensorLocations:[Landroid/hardware/biometrics/fingerprint/SensorLocation;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_70
    .catchall {:try_start_62 .. :try_end_70} :catchall_10c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_82

    .line 105
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_7c

    .line 108
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 94
    return-void

    .line 106
    :cond_7c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 95
    :cond_82
    :try_start_82
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->supportsNavigationGestures:Z

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_8c
    .catchall {:try_start_82 .. :try_end_8c} :catchall_10c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9e

    .line 105
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_98

    .line 108
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 96
    return-void

    .line 106
    :cond_98
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 97
    :cond_9e
    :try_start_9e
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->supportsDetectInteraction:Z

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a8
    .catchall {:try_start_9e .. :try_end_a8} :catchall_10c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ba

    .line 105
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_b4

    .line 108
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 98
    return-void

    .line 106
    :cond_b4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 99
    :cond_ba
    :try_start_ba
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->halHandlesDisplayTouches:Z

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_c4
    .catchall {:try_start_ba .. :try_end_c4} :catchall_10c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_d6

    .line 105
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_d0

    .line 108
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 100
    return-void

    .line 106
    :cond_d0
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 101
    :cond_d6
    :try_start_d6
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->halControlsIllumination:Z

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_e0
    .catchall {:try_start_d6 .. :try_end_e0} :catchall_10c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_f2

    .line 105
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ec

    .line 108
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 102
    return-void

    .line 106
    :cond_ec
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 103
    :cond_f2
    :try_start_f2
    sget-object v2, Landroid/hardware/biometrics/fingerprint/TouchDetectionParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/biometrics/fingerprint/TouchDetectionParameters;

    iput-object v2, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->touchDetectionParameters:Landroid/hardware/biometrics/fingerprint/TouchDetectionParameters;
    :try_end_fc
    .catchall {:try_start_f2 .. :try_end_fc} :catchall_10c

    .line 105
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_106

    .line 108
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 109
    nop

    .line 110
    return-void

    .line 106
    :cond_106
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 105
    :catchall_10c
    move-exception v2

    goto :goto_116

    .line 87
    :cond_10e
    :try_start_10e
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/biometrics/fingerprint/SensorProps;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_116
    .catchall {:try_start_10e .. :try_end_116} :catchall_10c

    .line 105
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/biometrics/fingerprint/SensorProps;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_116
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_11f

    .line 106
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 108
    :cond_11f
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 109
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 68
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget-object v1, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 70
    iget-byte v1, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->sensorType:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 71
    iget-object v1, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->sensorLocations:[Landroid/hardware/biometrics/fingerprint/SensorLocation;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 72
    iget-boolean v1, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->supportsNavigationGestures:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 73
    iget-boolean v1, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->supportsDetectInteraction:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 74
    iget-boolean v1, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->halHandlesDisplayTouches:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 75
    iget-boolean v1, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->halControlsIllumination:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 76
    iget-object v1, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->touchDetectionParameters:Landroid/hardware/biometrics/fingerprint/TouchDetectionParameters;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 78
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 79
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 81
    return-void
.end method
