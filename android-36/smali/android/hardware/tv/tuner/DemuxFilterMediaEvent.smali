.class public Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;
.super Ljava/lang/Object;
.source "DemuxFilterMediaEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist avDataId:J

.field public blacklist avMemory:Landroid/hardware/common/NativeHandle;

.field public blacklist dataGroupId:I

.field public blacklist dataLength:J

.field public blacklist dts:J

.field public blacklist extraMetaData:Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;

.field public blacklist indexInDataGroup:I

.field public blacklist isDtsPresent:Z

.field public blacklist isPesPrivateData:Z

.field public blacklist isPtsPresent:Z

.field public blacklist isSecureMemory:Z

.field public blacklist mpuSequenceNumber:I

.field public blacklist numDataPieces:I

.field public blacklist offset:J

.field public blacklist pts:J

.field public blacklist scIndexMask:Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;

.field public blacklist streamId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 32
    new-instance v0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent$1;

    invoke-direct {v0}, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 4

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->streamId:I

    .line 14
    iput-boolean v0, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->isPtsPresent:Z

    .line 15
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->pts:J

    .line 16
    iput-boolean v0, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->isDtsPresent:Z

    .line 17
    iput-wide v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->dts:J

    .line 18
    iput-wide v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->dataLength:J

    .line 19
    iput-wide v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->offset:J

    .line 21
    iput-boolean v0, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->isSecureMemory:Z

    .line 22
    iput-wide v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->avDataId:J

    .line 23
    iput v0, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->mpuSequenceNumber:I

    .line 24
    iput-boolean v0, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->isPesPrivateData:Z

    .line 27
    iput v0, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->numDataPieces:I

    .line 28
    iput v0, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->indexInDataGroup:I

    .line 29
    iput v0, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->dataGroupId:I

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4
    .param p1, "_v"    # Ljava/lang/Object;

    .line 126
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 127
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_10

    .line 128
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 130
    :cond_10
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->avMemory:Landroid/hardware/common/NativeHandle;

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 121
    iget-object v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->extraMetaData:Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 122
    iget-object v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->scIndexMask:Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 123
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 73
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 75
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_20a

    .line 76
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_208

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 111
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 114
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 76
    return-void

    .line 112
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 77
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->streamId:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_208

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 111
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 114
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 78
    return-void

    .line 112
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->isPtsPresent:Z

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_208

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5e

    .line 111
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_58

    .line 114
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 80
    return-void

    .line 112
    :cond_58
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 81
    :cond_5e
    :try_start_5e
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->pts:J

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_208

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7a

    .line 111
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_74

    .line 114
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 82
    return-void

    .line 112
    :cond_74
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 83
    :cond_7a
    :try_start_7a
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->isDtsPresent:Z

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_208

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_96

    .line 111
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_90

    .line 114
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 84
    return-void

    .line 112
    :cond_90
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 85
    :cond_96
    :try_start_96
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->dts:J

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a0
    .catchall {:try_start_96 .. :try_end_a0} :catchall_208

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b2

    .line 111
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ac

    .line 114
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 86
    return-void

    .line 112
    :cond_ac
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 87
    :cond_b2
    :try_start_b2
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->dataLength:J

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_bc
    .catchall {:try_start_b2 .. :try_end_bc} :catchall_208

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ce

    .line 111
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c8

    .line 114
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 88
    return-void

    .line 112
    :cond_c8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 89
    :cond_ce
    :try_start_ce
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->offset:J

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d8
    .catchall {:try_start_ce .. :try_end_d8} :catchall_208

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ea

    .line 111
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e4

    .line 114
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 90
    return-void

    .line 112
    :cond_e4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 91
    :cond_ea
    :try_start_ea
    sget-object v2, Landroid/hardware/common/NativeHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/common/NativeHandle;

    iput-object v2, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->avMemory:Landroid/hardware/common/NativeHandle;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_f8
    .catchall {:try_start_ea .. :try_end_f8} :catchall_208

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_10a

    .line 111
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_104

    .line 114
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 92
    return-void

    .line 112
    :cond_104
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 93
    :cond_10a
    :try_start_10a
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->isSecureMemory:Z

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_114
    .catchall {:try_start_10a .. :try_end_114} :catchall_208

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_126

    .line 111
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_120

    .line 114
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 94
    return-void

    .line 112
    :cond_120
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 95
    :cond_126
    :try_start_126
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->avDataId:J

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_130
    .catchall {:try_start_126 .. :try_end_130} :catchall_208

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_142

    .line 111
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_13c

    .line 114
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 96
    return-void

    .line 112
    :cond_13c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 97
    :cond_142
    :try_start_142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->mpuSequenceNumber:I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14c
    .catchall {:try_start_142 .. :try_end_14c} :catchall_208

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_15e

    .line 111
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_158

    .line 114
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 98
    return-void

    .line 112
    :cond_158
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 99
    :cond_15e
    :try_start_15e
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->isPesPrivateData:Z

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_168
    .catchall {:try_start_15e .. :try_end_168} :catchall_208

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_17a

    .line 111
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_174

    .line 114
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 100
    return-void

    .line 112
    :cond_174
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 101
    :cond_17a
    :try_start_17a
    sget-object v2, Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;

    iput-object v2, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->extraMetaData:Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_188
    .catchall {:try_start_17a .. :try_end_188} :catchall_208

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_19a

    .line 111
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_194

    .line 114
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 102
    return-void

    .line 112
    :cond_194
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 103
    :cond_19a
    :try_start_19a
    sget-object v2, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;

    iput-object v2, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->scIndexMask:Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1a8
    .catchall {:try_start_19a .. :try_end_1a8} :catchall_208

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1ba

    .line 111
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1b4

    .line 114
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 104
    return-void

    .line 112
    :cond_1b4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 105
    :cond_1ba
    :try_start_1ba
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->numDataPieces:I

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1c4
    .catchall {:try_start_1ba .. :try_end_1c4} :catchall_208

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1d6

    .line 111
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1d0

    .line 114
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 106
    return-void

    .line 112
    :cond_1d0
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 107
    :cond_1d6
    :try_start_1d6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->indexInDataGroup:I

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1e0
    .catchall {:try_start_1d6 .. :try_end_1e0} :catchall_208

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1f2

    .line 111
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1ec

    .line 114
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 108
    return-void

    .line 112
    :cond_1ec
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 109
    :cond_1f2
    :try_start_1f2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->dataGroupId:I
    :try_end_1f8
    .catchall {:try_start_1f2 .. :try_end_1f8} :catchall_208

    .line 111
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_202

    .line 114
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 115
    nop

    .line 116
    return-void

    .line 112
    :cond_202
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 111
    :catchall_208
    move-exception v2

    goto :goto_212

    .line 75
    :cond_20a
    :try_start_20a
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_212
    .catchall {:try_start_20a .. :try_end_212} :catchall_208

    .line 111
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_212
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_21b

    .line 112
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 114
    :cond_21b
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 115
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 47
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->streamId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget-boolean v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->isPtsPresent:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 50
    iget-wide v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->pts:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 51
    iget-boolean v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->isDtsPresent:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 52
    iget-wide v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->dts:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 53
    iget-wide v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->dataLength:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 54
    iget-wide v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->offset:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 55
    iget-object v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->avMemory:Landroid/hardware/common/NativeHandle;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 56
    iget-boolean v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->isSecureMemory:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 57
    iget-wide v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->avDataId:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 58
    iget v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->mpuSequenceNumber:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget-boolean v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->isPesPrivateData:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 60
    iget-object v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->extraMetaData:Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 61
    iget-object v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->scIndexMask:Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 62
    iget v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->numDataPieces:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->indexInDataGroup:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->dataGroupId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 66
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 67
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 69
    return-void
.end method
