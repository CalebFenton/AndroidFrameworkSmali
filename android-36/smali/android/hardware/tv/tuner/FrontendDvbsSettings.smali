.class public Landroid/hardware/tv/tuner/FrontendDvbsSettings;
.super Ljava/lang/Object;
.source "FrontendDvbsSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/tuner/FrontendDvbsSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist coderate:Landroid/hardware/tv/tuner/FrontendDvbsCodeRate;

.field public blacklist endFrequency:J

.field public blacklist frequency:J

.field public blacklist inputStreamId:I

.field public blacklist inversion:I

.field public blacklist isDiseqcRxMessage:Z

.field public blacklist modulation:I

.field public blacklist pilot:I

.field public blacklist rolloff:I

.field public blacklist scanType:I

.field public blacklist standard:B

.field public blacklist symbolRate:I

.field public blacklist vcmMode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 28
    new-instance v0, Landroid/hardware/tv/tuner/FrontendDvbsSettings$1;

    invoke-direct {v0}, Landroid/hardware/tv/tuner/FrontendDvbsSettings$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->frequency:J

    .line 14
    iput-wide v0, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->endFrequency:J

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->inversion:I

    .line 16
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->modulation:I

    .line 18
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->symbolRate:I

    .line 19
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->rolloff:I

    .line 20
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->pilot:I

    .line 21
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->inputStreamId:I

    .line 22
    iput-byte v0, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->standard:B

    .line 23
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->vcmMode:I

    .line 24
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->scanType:I

    .line 25
    iput-boolean v0, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->isDiseqcRxMessage:Z

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

    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->coderate:Landroid/hardware/tv/tuner/FrontendDvbsCodeRate;

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 105
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

    if-lt v1, v2, :cond_192

    .line 68
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_190

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->frequency:J

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_190

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->endFrequency:J

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_190

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

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->inversion:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_190

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

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->modulation:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_190

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
    sget-object v2, Landroid/hardware/tv/tuner/FrontendDvbsCodeRate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/tv/tuner/FrontendDvbsCodeRate;

    iput-object v2, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->coderate:Landroid/hardware/tv/tuner/FrontendDvbsCodeRate;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a4
    .catchall {:try_start_96 .. :try_end_a4} :catchall_190

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b6

    .line 95
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_b0

    .line 98
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 78
    return-void

    .line 96
    :cond_b0
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    :cond_b6
    :try_start_b6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->symbolRate:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_c0
    .catchall {:try_start_b6 .. :try_end_c0} :catchall_190

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_d2

    .line 95
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_cc

    .line 98
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 80
    return-void

    .line 96
    :cond_cc
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 81
    :cond_d2
    :try_start_d2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->rolloff:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_dc
    .catchall {:try_start_d2 .. :try_end_dc} :catchall_190

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ee

    .line 95
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e8

    .line 98
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 82
    return-void

    .line 96
    :cond_e8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 83
    :cond_ee
    :try_start_ee
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->pilot:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_f8
    .catchall {:try_start_ee .. :try_end_f8} :catchall_190

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_10a

    .line 95
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_104

    .line 98
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 84
    return-void

    .line 96
    :cond_104
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 85
    :cond_10a
    :try_start_10a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->inputStreamId:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_114
    .catchall {:try_start_10a .. :try_end_114} :catchall_190

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_126

    .line 95
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_120

    .line 98
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 86
    return-void

    .line 96
    :cond_120
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 87
    :cond_126
    :try_start_126
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->standard:B

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_130
    .catchall {:try_start_126 .. :try_end_130} :catchall_190

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_142

    .line 95
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_13c

    .line 98
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 88
    return-void

    .line 96
    :cond_13c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 89
    :cond_142
    :try_start_142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->vcmMode:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14c
    .catchall {:try_start_142 .. :try_end_14c} :catchall_190

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_15e

    .line 95
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_158

    .line 98
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 90
    return-void

    .line 96
    :cond_158
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 91
    :cond_15e
    :try_start_15e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->scanType:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_168
    .catchall {:try_start_15e .. :try_end_168} :catchall_190

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_17a

    .line 95
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_174

    .line 98
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 92
    return-void

    .line 96
    :cond_174
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 93
    :cond_17a
    :try_start_17a
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->isDiseqcRxMessage:Z
    :try_end_180
    .catchall {:try_start_17a .. :try_end_180} :catchall_190

    .line 95
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_18a

    .line 98
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 99
    nop

    .line 100
    return-void

    .line 96
    :cond_18a
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 95
    :catchall_190
    move-exception v2

    goto :goto_19a

    .line 67
    :cond_192
    :try_start_192
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/tv/tuner/FrontendDvbsSettings;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_19a
    .catchall {:try_start_192 .. :try_end_19a} :catchall_190

    .line 95
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/tv/tuner/FrontendDvbsSettings;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_19a
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_1a3

    .line 96
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 98
    :cond_1a3
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
    iget-wide v1, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->frequency:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 45
    iget-wide v1, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->endFrequency:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 46
    iget v1, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->inversion:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget v1, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->modulation:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget-object v1, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->coderate:Landroid/hardware/tv/tuner/FrontendDvbsCodeRate;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 49
    iget v1, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->symbolRate:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget v1, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->rolloff:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget v1, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->pilot:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget v1, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->inputStreamId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget-byte v1, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->standard:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 54
    iget v1, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->vcmMode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget v1, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->scanType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget-boolean v1, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->isDiseqcRxMessage:Z

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
