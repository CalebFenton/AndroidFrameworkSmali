.class public Landroid/hardware/biometrics/face/SensorProps;
.super Ljava/lang/Object;
.source "SensorProps.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/biometrics/face/SensorProps;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist commonProps:Landroid/hardware/biometrics/common/CommonProps;

.field public blacklist enrollPreviewHeight:I

.field public blacklist enrollPreviewScale:F

.field public blacklist enrollPreviewWidth:I

.field public blacklist enrollTranslationX:F

.field public blacklist enrollTranslationY:F

.field public blacklist halControlsPreview:Z

.field public blacklist previewDisplayId:I

.field public blacklist sensorType:B

.field public blacklist supportsDetectInteraction:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 25
    new-instance v0, Landroid/hardware/biometrics/face/SensorProps$1;

    invoke-direct {v0}, Landroid/hardware/biometrics/face/SensorProps$1;-><init>()V

    sput-object v0, Landroid/hardware/biometrics/face/SensorProps;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/hardware/biometrics/face/SensorProps;->sensorType:B

    .line 15
    iput-boolean v0, p0, Landroid/hardware/biometrics/face/SensorProps;->halControlsPreview:Z

    .line 16
    iput v0, p0, Landroid/hardware/biometrics/face/SensorProps;->previewDisplayId:I

    .line 17
    iput v0, p0, Landroid/hardware/biometrics/face/SensorProps;->enrollPreviewWidth:I

    .line 18
    iput v0, p0, Landroid/hardware/biometrics/face/SensorProps;->enrollPreviewHeight:I

    .line 19
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/biometrics/face/SensorProps;->enrollTranslationX:F

    .line 20
    iput v1, p0, Landroid/hardware/biometrics/face/SensorProps;->enrollTranslationY:F

    .line 21
    iput v1, p0, Landroid/hardware/biometrics/face/SensorProps;->enrollPreviewScale:F

    .line 22
    iput-boolean v0, p0, Landroid/hardware/biometrics/face/SensorProps;->supportsDetectInteraction:Z

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4
    .param p1, "_v"    # Ljava/lang/Object;

    .line 96
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 97
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_10

    .line 98
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 100
    :cond_10
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 91
    const/4 v0, 0x0

    .line 92
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/hardware/biometrics/face/SensorProps;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    invoke-direct {p0, v1}, Landroid/hardware/biometrics/face/SensorProps;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 93
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 59
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 61
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_13e

    .line 62
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_13c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 83
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 86
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 62
    return-void

    .line 84
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 63
    :cond_26
    :try_start_26
    sget-object v2, Landroid/hardware/biometrics/common/CommonProps;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/biometrics/common/CommonProps;

    iput-object v2, p0, Landroid/hardware/biometrics/face/SensorProps;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_34
    .catchall {:try_start_26 .. :try_end_34} :catchall_13c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_46

    .line 83
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_40

    .line 86
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 64
    return-void

    .line 84
    :cond_40
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 65
    :cond_46
    :try_start_46
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Landroid/hardware/biometrics/face/SensorProps;->sensorType:B

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_50
    .catchall {:try_start_46 .. :try_end_50} :catchall_13c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_62

    .line 83
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_5c

    .line 86
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 66
    return-void

    .line 84
    :cond_5c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    :cond_62
    :try_start_62
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/biometrics/face/SensorProps;->halControlsPreview:Z

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_6c
    .catchall {:try_start_62 .. :try_end_6c} :catchall_13c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7e

    .line 83
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_78

    .line 86
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 68
    return-void

    .line 84
    :cond_78
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 69
    :cond_7e
    :try_start_7e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/biometrics/face/SensorProps;->previewDisplayId:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_88
    .catchall {:try_start_7e .. :try_end_88} :catchall_13c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9a

    .line 83
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_94

    .line 86
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 70
    return-void

    .line 84
    :cond_94
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 71
    :cond_9a
    :try_start_9a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/biometrics/face/SensorProps;->enrollPreviewWidth:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a4
    .catchall {:try_start_9a .. :try_end_a4} :catchall_13c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b6

    .line 83
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_b0

    .line 86
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 72
    return-void

    .line 84
    :cond_b0
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 73
    :cond_b6
    :try_start_b6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/biometrics/face/SensorProps;->enrollPreviewHeight:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_c0
    .catchall {:try_start_b6 .. :try_end_c0} :catchall_13c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_d2

    .line 83
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_cc

    .line 86
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 74
    return-void

    .line 84
    :cond_cc
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 75
    :cond_d2
    :try_start_d2
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/biometrics/face/SensorProps;->enrollTranslationX:F

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_dc
    .catchall {:try_start_d2 .. :try_end_dc} :catchall_13c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ee

    .line 83
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e8

    .line 86
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 76
    return-void

    .line 84
    :cond_e8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 77
    :cond_ee
    :try_start_ee
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/biometrics/face/SensorProps;->enrollTranslationY:F

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_f8
    .catchall {:try_start_ee .. :try_end_f8} :catchall_13c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_10a

    .line 83
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_104

    .line 86
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 78
    return-void

    .line 84
    :cond_104
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    :cond_10a
    :try_start_10a
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/biometrics/face/SensorProps;->enrollPreviewScale:F

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_114
    .catchall {:try_start_10a .. :try_end_114} :catchall_13c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_126

    .line 83
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_120

    .line 86
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 80
    return-void

    .line 84
    :cond_120
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 81
    :cond_126
    :try_start_126
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/biometrics/face/SensorProps;->supportsDetectInteraction:Z
    :try_end_12c
    .catchall {:try_start_126 .. :try_end_12c} :catchall_13c

    .line 83
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_136

    .line 86
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 87
    nop

    .line 88
    return-void

    .line 84
    :cond_136
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 83
    :catchall_13c
    move-exception v2

    goto :goto_146

    .line 61
    :cond_13e
    :try_start_13e
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/biometrics/face/SensorProps;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_146
    .catchall {:try_start_13e .. :try_end_146} :catchall_13c

    .line 83
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/biometrics/face/SensorProps;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_146
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_14f

    .line 84
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    :cond_14f
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 87
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
    iget-object v1, p0, Landroid/hardware/biometrics/face/SensorProps;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 42
    iget-byte v1, p0, Landroid/hardware/biometrics/face/SensorProps;->sensorType:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 43
    iget-boolean v1, p0, Landroid/hardware/biometrics/face/SensorProps;->halControlsPreview:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 44
    iget v1, p0, Landroid/hardware/biometrics/face/SensorProps;->previewDisplayId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget v1, p0, Landroid/hardware/biometrics/face/SensorProps;->enrollPreviewWidth:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget v1, p0, Landroid/hardware/biometrics/face/SensorProps;->enrollPreviewHeight:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget v1, p0, Landroid/hardware/biometrics/face/SensorProps;->enrollTranslationX:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 48
    iget v1, p0, Landroid/hardware/biometrics/face/SensorProps;->enrollTranslationY:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 49
    iget v1, p0, Landroid/hardware/biometrics/face/SensorProps;->enrollPreviewScale:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 50
    iget-boolean v1, p0, Landroid/hardware/biometrics/face/SensorProps;->supportsDetectInteraction:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 52
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 53
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 55
    return-void
.end method
