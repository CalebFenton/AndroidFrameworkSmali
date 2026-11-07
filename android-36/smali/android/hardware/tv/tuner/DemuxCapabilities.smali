.class public Landroid/hardware/tv/tuner/DemuxCapabilities;
.super Ljava/lang/Object;
.source "DemuxCapabilities.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/tuner/DemuxCapabilities;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist bTimeFilter:Z

.field public blacklist filterCaps:I

.field public blacklist linkCaps:[I

.field public blacklist numAudioFilter:I

.field public blacklist numBytesInSectionFilter:J

.field public blacklist numDemux:I

.field public blacklist numPcrFilter:I

.field public blacklist numPesFilter:I

.field public blacklist numPlayback:I

.field public blacklist numRecord:I

.field public blacklist numSectionFilter:I

.field public blacklist numTsFilter:I

.field public blacklist numVideoFilter:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 28
    new-instance v0, Landroid/hardware/tv/tuner/DemuxCapabilities$1;

    invoke-direct {v0}, Landroid/hardware/tv/tuner/DemuxCapabilities$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/tuner/DemuxCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 4

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->numDemux:I

    .line 14
    iput v0, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->numRecord:I

    .line 15
    iput v0, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->numPlayback:I

    .line 16
    iput v0, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->numTsFilter:I

    .line 17
    iput v0, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->numSectionFilter:I

    .line 18
    iput v0, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->numAudioFilter:I

    .line 19
    iput v0, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->numVideoFilter:I

    .line 20
    iput v0, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->numPesFilter:I

    .line 21
    iput v0, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->numPcrFilter:I

    .line 22
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->numBytesInSectionFilter:J

    .line 23
    iput v0, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->filterCaps:I

    .line 25
    iput-boolean v0, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->bTimeFilter:Z

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, "_mask":I
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 27
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 65
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 67
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_18e

    .line 68
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_18c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 95
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 98
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 68
    return-void

    .line 96
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 69
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->numDemux:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_18c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 95
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 98
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 70
    return-void

    .line 96
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 71
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->numRecord:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_18c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5e

    .line 95
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_58

    .line 98
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 72
    return-void

    .line 96
    :cond_58
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 73
    :cond_5e
    :try_start_5e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->numPlayback:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_18c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7a

    .line 95
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_74

    .line 98
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 74
    return-void

    .line 96
    :cond_74
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 75
    :cond_7a
    :try_start_7a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->numTsFilter:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_18c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_96

    .line 95
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_90

    .line 98
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 76
    return-void

    .line 96
    :cond_90
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 77
    :cond_96
    :try_start_96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->numSectionFilter:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a0
    .catchall {:try_start_96 .. :try_end_a0} :catchall_18c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b2

    .line 95
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ac

    .line 98
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 78
    return-void

    .line 96
    :cond_ac
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    :cond_b2
    :try_start_b2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->numAudioFilter:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_bc
    .catchall {:try_start_b2 .. :try_end_bc} :catchall_18c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ce

    .line 95
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c8

    .line 98
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 80
    return-void

    .line 96
    :cond_c8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 81
    :cond_ce
    :try_start_ce
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->numVideoFilter:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d8
    .catchall {:try_start_ce .. :try_end_d8} :catchall_18c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ea

    .line 95
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e4

    .line 98
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 82
    return-void

    .line 96
    :cond_e4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 83
    :cond_ea
    :try_start_ea
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->numPesFilter:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_f4
    .catchall {:try_start_ea .. :try_end_f4} :catchall_18c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_106

    .line 95
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_100

    .line 98
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 84
    return-void

    .line 96
    :cond_100
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 85
    :cond_106
    :try_start_106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->numPcrFilter:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_110
    .catchall {:try_start_106 .. :try_end_110} :catchall_18c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_122

    .line 95
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_11c

    .line 98
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 86
    return-void

    .line 96
    :cond_11c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 87
    :cond_122
    :try_start_122
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->numBytesInSectionFilter:J

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_12c
    .catchall {:try_start_122 .. :try_end_12c} :catchall_18c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_13e

    .line 95
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_138

    .line 98
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 88
    return-void

    .line 96
    :cond_138
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 89
    :cond_13e
    :try_start_13e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->filterCaps:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_148
    .catchall {:try_start_13e .. :try_end_148} :catchall_18c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_15a

    .line 95
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_154

    .line 98
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 90
    return-void

    .line 96
    :cond_154
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 91
    :cond_15a
    :try_start_15a
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->linkCaps:[I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_164
    .catchall {:try_start_15a .. :try_end_164} :catchall_18c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_176

    .line 95
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_170

    .line 98
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 92
    return-void

    .line 96
    :cond_170
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 93
    :cond_176
    :try_start_176
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->bTimeFilter:Z
    :try_end_17c
    .catchall {:try_start_176 .. :try_end_17c} :catchall_18c

    .line 95
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_186

    .line 98
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 99
    nop

    .line 100
    return-void

    .line 96
    :cond_186
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 95
    :catchall_18c
    move-exception v2

    goto :goto_196

    .line 67
    :cond_18e
    :try_start_18e
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/tv/tuner/DemuxCapabilities;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_196
    .catchall {:try_start_18e .. :try_end_196} :catchall_18c

    .line 95
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/tv/tuner/DemuxCapabilities;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_196
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_19f

    .line 96
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 98
    :cond_19f
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 99
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 43
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget v1, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->numDemux:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget v1, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->numRecord:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget v1, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->numPlayback:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget v1, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->numTsFilter:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget v1, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->numSectionFilter:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget v1, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->numAudioFilter:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget v1, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->numVideoFilter:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget v1, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->numPesFilter:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget v1, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->numPcrFilter:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget-wide v1, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->numBytesInSectionFilter:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 54
    iget v1, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->filterCaps:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget-object v1, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->linkCaps:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 56
    iget-boolean v1, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->bTimeFilter:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 58
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 59
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 61
    return-void
.end method
