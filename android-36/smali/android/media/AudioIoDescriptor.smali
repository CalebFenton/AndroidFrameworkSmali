.class public Landroid/media/AudioIoDescriptor;
.super Ljava/lang/Object;
.source "AudioIoDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/AudioIoDescriptor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist channelMask:Landroid/media/audio/common/AudioChannelLayout;

.field public blacklist format:Landroid/media/audio/common/AudioFormatDescription;

.field public blacklist frameCount:J

.field public blacklist frameCountHAL:J

.field public blacklist ioHandle:I

.field public blacklist isInput:Z

.field public blacklist latency:I

.field public blacklist patch:Landroid/media/AudioPatchFw;

.field public blacklist portId:I

.field public blacklist samplingRate:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 29
    new-instance v0, Landroid/media/AudioIoDescriptor$1;

    invoke-direct {v0}, Landroid/media/AudioIoDescriptor$1;-><init>()V

    sput-object v0, Landroid/media/AudioIoDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 4

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioIoDescriptor;->ioHandle:I

    .line 16
    iput-boolean v0, p0, Landroid/media/AudioIoDescriptor;->isInput:Z

    .line 17
    iput v0, p0, Landroid/media/AudioIoDescriptor;->samplingRate:I

    .line 20
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/media/AudioIoDescriptor;->frameCount:J

    .line 21
    iput-wide v1, p0, Landroid/media/AudioIoDescriptor;->frameCountHAL:J

    .line 23
    iput v0, p0, Landroid/media/AudioIoDescriptor;->latency:I

    .line 28
    iput v0, p0, Landroid/media/AudioIoDescriptor;->portId:I

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4
    .param p1, "_v"    # Ljava/lang/Object;

    .line 102
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 103
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_10

    .line 104
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 106
    :cond_10
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/media/AudioIoDescriptor;->patch:Landroid/media/AudioPatchFw;

    invoke-direct {p0, v1}, Landroid/media/AudioIoDescriptor;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 97
    iget-object v1, p0, Landroid/media/AudioIoDescriptor;->format:Landroid/media/audio/common/AudioFormatDescription;

    invoke-direct {p0, v1}, Landroid/media/AudioIoDescriptor;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 98
    iget-object v1, p0, Landroid/media/AudioIoDescriptor;->channelMask:Landroid/media/audio/common/AudioChannelLayout;

    invoke-direct {p0, v1}, Landroid/media/AudioIoDescriptor;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 99
    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 63
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 65
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_146

    .line 66
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_144

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 87
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 90
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 66
    return-void

    .line 88
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/AudioIoDescriptor;->ioHandle:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_144

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 87
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 90
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 68
    return-void

    .line 88
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 69
    :cond_42
    :try_start_42
    sget-object v2, Landroid/media/AudioPatchFw;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioPatchFw;

    iput-object v2, p0, Landroid/media/AudioIoDescriptor;->patch:Landroid/media/AudioPatchFw;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_50
    .catchall {:try_start_42 .. :try_end_50} :catchall_144

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_62

    .line 87
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_5c

    .line 90
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 70
    return-void

    .line 88
    :cond_5c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 71
    :cond_62
    :try_start_62
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/media/AudioIoDescriptor;->isInput:Z

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_6c
    .catchall {:try_start_62 .. :try_end_6c} :catchall_144

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7e

    .line 87
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_78

    .line 90
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 72
    return-void

    .line 88
    :cond_78
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 73
    :cond_7e
    :try_start_7e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/AudioIoDescriptor;->samplingRate:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_88
    .catchall {:try_start_7e .. :try_end_88} :catchall_144

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9a

    .line 87
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_94

    .line 90
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 74
    return-void

    .line 88
    :cond_94
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 75
    :cond_9a
    :try_start_9a
    sget-object v2, Landroid/media/audio/common/AudioFormatDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audio/common/AudioFormatDescription;

    iput-object v2, p0, Landroid/media/AudioIoDescriptor;->format:Landroid/media/audio/common/AudioFormatDescription;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a8
    .catchall {:try_start_9a .. :try_end_a8} :catchall_144

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ba

    .line 87
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_b4

    .line 90
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 76
    return-void

    .line 88
    :cond_b4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 77
    :cond_ba
    :try_start_ba
    sget-object v2, Landroid/media/audio/common/AudioChannelLayout;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audio/common/AudioChannelLayout;

    iput-object v2, p0, Landroid/media/AudioIoDescriptor;->channelMask:Landroid/media/audio/common/AudioChannelLayout;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_c8
    .catchall {:try_start_ba .. :try_end_c8} :catchall_144

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_da

    .line 87
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_d4

    .line 90
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 78
    return-void

    .line 88
    :cond_d4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    :cond_da
    :try_start_da
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/media/AudioIoDescriptor;->frameCount:J

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_e4
    .catchall {:try_start_da .. :try_end_e4} :catchall_144

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_f6

    .line 87
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_f0

    .line 90
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 80
    return-void

    .line 88
    :cond_f0
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 81
    :cond_f6
    :try_start_f6
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/media/AudioIoDescriptor;->frameCountHAL:J

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_100
    .catchall {:try_start_f6 .. :try_end_100} :catchall_144

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_112

    .line 87
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_10c

    .line 90
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 82
    return-void

    .line 88
    :cond_10c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 83
    :cond_112
    :try_start_112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/AudioIoDescriptor;->latency:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_11c
    .catchall {:try_start_112 .. :try_end_11c} :catchall_144

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_12e

    .line 87
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_128

    .line 90
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 84
    return-void

    .line 88
    :cond_128
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 85
    :cond_12e
    :try_start_12e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/AudioIoDescriptor;->portId:I
    :try_end_134
    .catchall {:try_start_12e .. :try_end_134} :catchall_144

    .line 87
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_13e

    .line 90
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 91
    nop

    .line 92
    return-void

    .line 88
    :cond_13e
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 87
    :catchall_144
    move-exception v2

    goto :goto_14e

    .line 65
    :cond_146
    :try_start_146
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/media/AudioIoDescriptor;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_14e
    .catchall {:try_start_146 .. :try_end_14e} :catchall_144

    .line 87
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/media/AudioIoDescriptor;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_14e
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_157

    .line 88
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 90
    :cond_157
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 91
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 44
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget v1, p0, Landroid/media/AudioIoDescriptor;->ioHandle:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget-object v1, p0, Landroid/media/AudioIoDescriptor;->patch:Landroid/media/AudioPatchFw;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 47
    iget-boolean v1, p0, Landroid/media/AudioIoDescriptor;->isInput:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 48
    iget v1, p0, Landroid/media/AudioIoDescriptor;->samplingRate:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget-object v1, p0, Landroid/media/AudioIoDescriptor;->format:Landroid/media/audio/common/AudioFormatDescription;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 50
    iget-object v1, p0, Landroid/media/AudioIoDescriptor;->channelMask:Landroid/media/audio/common/AudioChannelLayout;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 51
    iget-wide v1, p0, Landroid/media/AudioIoDescriptor;->frameCount:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 52
    iget-wide v1, p0, Landroid/media/AudioIoDescriptor;->frameCountHAL:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 53
    iget v1, p0, Landroid/media/AudioIoDescriptor;->latency:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget v1, p0, Landroid/media/AudioIoDescriptor;->portId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 56
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 57
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 59
    return-void
.end method
