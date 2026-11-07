.class public Landroid/media/GetOutputForAttrResponse;
.super Ljava/lang/Object;
.source "GetOutputForAttrResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/GetOutputForAttrResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist attr:Landroid/media/audio/common/AudioAttributes;

.field public blacklist configBase:Landroid/media/audio/common/AudioConfigBase;

.field public blacklist isBitPerfect:Z

.field public blacklist isSpatialized:Z

.field public blacklist muted:Z

.field public blacklist output:I

.field public blacklist portId:I

.field public blacklist secondaryOutputs:[I

.field public blacklist selectedDeviceIds:[I

.field public blacklist stream:I

.field public blacklist volume:F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 33
    new-instance v0, Landroid/media/GetOutputForAttrResponse$1;

    invoke-direct {v0}, Landroid/media/GetOutputForAttrResponse$1;-><init>()V

    sput-object v0, Landroid/media/GetOutputForAttrResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/GetOutputForAttrResponse;->output:I

    .line 19
    iput v0, p0, Landroid/media/GetOutputForAttrResponse;->portId:I

    .line 23
    iput-boolean v0, p0, Landroid/media/GetOutputForAttrResponse;->isSpatialized:Z

    .line 26
    iput-boolean v0, p0, Landroid/media/GetOutputForAttrResponse;->isBitPerfect:Z

    .line 30
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/GetOutputForAttrResponse;->volume:F

    .line 32
    iput-boolean v0, p0, Landroid/media/GetOutputForAttrResponse;->muted:Z

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4
    .param p1, "_v"    # Ljava/lang/Object;

    .line 108
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 109
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_10

    .line 110
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 112
    :cond_10
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 102
    const/4 v0, 0x0

    .line 103
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/media/GetOutputForAttrResponse;->configBase:Landroid/media/audio/common/AudioConfigBase;

    invoke-direct {p0, v1}, Landroid/media/GetOutputForAttrResponse;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 104
    iget-object v1, p0, Landroid/media/GetOutputForAttrResponse;->attr:Landroid/media/audio/common/AudioAttributes;

    invoke-direct {p0, v1}, Landroid/media/GetOutputForAttrResponse;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 105
    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 68
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 70
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_15e

    .line 71
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_15c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 94
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 97
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 71
    return-void

    .line 95
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 72
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/GetOutputForAttrResponse;->output:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_15c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 94
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 97
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 73
    return-void

    .line 95
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 74
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/GetOutputForAttrResponse;->stream:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_15c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5e

    .line 94
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_58

    .line 97
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 75
    return-void

    .line 95
    :cond_58
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 76
    :cond_5e
    :try_start_5e
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    iput-object v2, p0, Landroid/media/GetOutputForAttrResponse;->selectedDeviceIds:[I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_15c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7a

    .line 94
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_74

    .line 97
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 77
    return-void

    .line 95
    :cond_74
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 78
    :cond_7a
    :try_start_7a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/GetOutputForAttrResponse;->portId:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_15c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_96

    .line 94
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_90

    .line 97
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 79
    return-void

    .line 95
    :cond_90
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 80
    :cond_96
    :try_start_96
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    iput-object v2, p0, Landroid/media/GetOutputForAttrResponse;->secondaryOutputs:[I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a0
    .catchall {:try_start_96 .. :try_end_a0} :catchall_15c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b2

    .line 94
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ac

    .line 97
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 81
    return-void

    .line 95
    :cond_ac
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 82
    :cond_b2
    :try_start_b2
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/media/GetOutputForAttrResponse;->isSpatialized:Z

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_bc
    .catchall {:try_start_b2 .. :try_end_bc} :catchall_15c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ce

    .line 94
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c8

    .line 97
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 83
    return-void

    .line 95
    :cond_c8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 84
    :cond_ce
    :try_start_ce
    sget-object v2, Landroid/media/audio/common/AudioConfigBase;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audio/common/AudioConfigBase;

    iput-object v2, p0, Landroid/media/GetOutputForAttrResponse;->configBase:Landroid/media/audio/common/AudioConfigBase;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_dc
    .catchall {:try_start_ce .. :try_end_dc} :catchall_15c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ee

    .line 94
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e8

    .line 97
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 85
    return-void

    .line 95
    :cond_e8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    :cond_ee
    :try_start_ee
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/media/GetOutputForAttrResponse;->isBitPerfect:Z

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_f8
    .catchall {:try_start_ee .. :try_end_f8} :catchall_15c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_10a

    .line 94
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_104

    .line 97
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 87
    return-void

    .line 95
    :cond_104
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 88
    :cond_10a
    :try_start_10a
    sget-object v2, Landroid/media/audio/common/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audio/common/AudioAttributes;

    iput-object v2, p0, Landroid/media/GetOutputForAttrResponse;->attr:Landroid/media/audio/common/AudioAttributes;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_118
    .catchall {:try_start_10a .. :try_end_118} :catchall_15c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_12a

    .line 94
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_124

    .line 97
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 89
    return-void

    .line 95
    :cond_124
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 90
    :cond_12a
    :try_start_12a
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/media/GetOutputForAttrResponse;->volume:F

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_134
    .catchall {:try_start_12a .. :try_end_134} :catchall_15c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_146

    .line 94
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_140

    .line 97
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 91
    return-void

    .line 95
    :cond_140
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 92
    :cond_146
    :try_start_146
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/media/GetOutputForAttrResponse;->muted:Z
    :try_end_14c
    .catchall {:try_start_146 .. :try_end_14c} :catchall_15c

    .line 94
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_156

    .line 97
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 98
    nop

    .line 99
    return-void

    .line 95
    :cond_156
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 94
    :catchall_15c
    move-exception v2

    goto :goto_166

    .line 70
    :cond_15e
    :try_start_15e
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/media/GetOutputForAttrResponse;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_166
    .catchall {:try_start_15e .. :try_end_166} :catchall_15c

    .line 94
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/media/GetOutputForAttrResponse;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_166
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_16f

    .line 95
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 97
    :cond_16f
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 98
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 48
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget v1, p0, Landroid/media/GetOutputForAttrResponse;->output:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget v1, p0, Landroid/media/GetOutputForAttrResponse;->stream:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget-object v1, p0, Landroid/media/GetOutputForAttrResponse;->selectedDeviceIds:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 52
    iget v1, p0, Landroid/media/GetOutputForAttrResponse;->portId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget-object v1, p0, Landroid/media/GetOutputForAttrResponse;->secondaryOutputs:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 54
    iget-boolean v1, p0, Landroid/media/GetOutputForAttrResponse;->isSpatialized:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 55
    iget-object v1, p0, Landroid/media/GetOutputForAttrResponse;->configBase:Landroid/media/audio/common/AudioConfigBase;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 56
    iget-boolean v1, p0, Landroid/media/GetOutputForAttrResponse;->isBitPerfect:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 57
    iget-object v1, p0, Landroid/media/GetOutputForAttrResponse;->attr:Landroid/media/audio/common/AudioAttributes;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 58
    iget v1, p0, Landroid/media/GetOutputForAttrResponse;->volume:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 59
    iget-boolean v1, p0, Landroid/media/GetOutputForAttrResponse;->muted:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 61
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 62
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 64
    return-void
.end method
