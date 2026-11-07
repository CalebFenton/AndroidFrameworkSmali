.class public Landroid/hardware/tv/tuner/FrontendDvbtSettings;
.super Ljava/lang/Object;
.source "FrontendDvbtSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/tuner/FrontendDvbtSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist bandwidth:I

.field public blacklist constellation:I

.field public blacklist endFrequency:J

.field public blacklist frequency:J

.field public blacklist guardInterval:I

.field public blacklist hierarchy:I

.field public blacklist hpCoderate:I

.field public blacklist inversion:I

.field public blacklist isHighPriority:Z

.field public blacklist isMiso:Z

.field public blacklist lpCoderate:I

.field public blacklist plpGroupId:I

.field public blacklist plpId:I

.field public blacklist plpMode:I

.field public blacklist standard:B

.field public blacklist transmissionMode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Landroid/hardware/tv/tuner/FrontendDvbtSettings$1;

    invoke-direct {v0}, Landroid/hardware/tv/tuner/FrontendDvbtSettings$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->frequency:J

    .line 14
    iput-wide v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->endFrequency:J

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->inversion:I

    .line 16
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->transmissionMode:I

    .line 17
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->bandwidth:I

    .line 18
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->constellation:I

    .line 19
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->hierarchy:I

    .line 20
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->hpCoderate:I

    .line 21
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->lpCoderate:I

    .line 22
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->guardInterval:I

    .line 23
    iput-boolean v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->isHighPriority:Z

    .line 24
    iput-byte v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->standard:B

    .line 25
    iput-boolean v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->isMiso:Z

    .line 26
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->plpMode:I

    .line 27
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->plpId:I

    .line 28
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->plpGroupId:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, "_mask":I
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 71
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 73
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_1e2

    .line 74
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_1e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 107
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 110
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 74
    return-void

    .line 108
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 75
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->frequency:J

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_1e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 107
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 110
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 76
    return-void

    .line 108
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 77
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->endFrequency:J

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_1e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5e

    .line 107
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_58

    .line 110
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 78
    return-void

    .line 108
    :cond_58
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    :cond_5e
    :try_start_5e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->inversion:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_1e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7a

    .line 107
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_74

    .line 110
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 80
    return-void

    .line 108
    :cond_74
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 81
    :cond_7a
    :try_start_7a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->transmissionMode:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_1e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_96

    .line 107
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_90

    .line 110
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 82
    return-void

    .line 108
    :cond_90
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 83
    :cond_96
    :try_start_96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->bandwidth:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a0
    .catchall {:try_start_96 .. :try_end_a0} :catchall_1e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b2

    .line 107
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ac

    .line 110
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 84
    return-void

    .line 108
    :cond_ac
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 85
    :cond_b2
    :try_start_b2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->constellation:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_bc
    .catchall {:try_start_b2 .. :try_end_bc} :catchall_1e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ce

    .line 107
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c8

    .line 110
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 86
    return-void

    .line 108
    :cond_c8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 87
    :cond_ce
    :try_start_ce
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->hierarchy:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d8
    .catchall {:try_start_ce .. :try_end_d8} :catchall_1e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ea

    .line 107
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e4

    .line 110
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 88
    return-void

    .line 108
    :cond_e4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 89
    :cond_ea
    :try_start_ea
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->hpCoderate:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_f4
    .catchall {:try_start_ea .. :try_end_f4} :catchall_1e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_106

    .line 107
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_100

    .line 110
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 90
    return-void

    .line 108
    :cond_100
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 91
    :cond_106
    :try_start_106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->lpCoderate:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_110
    .catchall {:try_start_106 .. :try_end_110} :catchall_1e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_122

    .line 107
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_11c

    .line 110
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 92
    return-void

    .line 108
    :cond_11c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 93
    :cond_122
    :try_start_122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->guardInterval:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_12c
    .catchall {:try_start_122 .. :try_end_12c} :catchall_1e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_13e

    .line 107
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_138

    .line 110
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 94
    return-void

    .line 108
    :cond_138
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 95
    :cond_13e
    :try_start_13e
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->isHighPriority:Z

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_148
    .catchall {:try_start_13e .. :try_end_148} :catchall_1e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_15a

    .line 107
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_154

    .line 110
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 96
    return-void

    .line 108
    :cond_154
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 97
    :cond_15a
    :try_start_15a
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->standard:B

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_164
    .catchall {:try_start_15a .. :try_end_164} :catchall_1e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_176

    .line 107
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_170

    .line 110
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 98
    return-void

    .line 108
    :cond_170
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 99
    :cond_176
    :try_start_176
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->isMiso:Z

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_180
    .catchall {:try_start_176 .. :try_end_180} :catchall_1e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_192

    .line 107
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_18c

    .line 110
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 100
    return-void

    .line 108
    :cond_18c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 101
    :cond_192
    :try_start_192
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->plpMode:I

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_19c
    .catchall {:try_start_192 .. :try_end_19c} :catchall_1e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1ae

    .line 107
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1a8

    .line 110
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 102
    return-void

    .line 108
    :cond_1a8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 103
    :cond_1ae
    :try_start_1ae
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->plpId:I

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1b8
    .catchall {:try_start_1ae .. :try_end_1b8} :catchall_1e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1ca

    .line 107
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1c4

    .line 110
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 104
    return-void

    .line 108
    :cond_1c4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 105
    :cond_1ca
    :try_start_1ca
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->plpGroupId:I
    :try_end_1d0
    .catchall {:try_start_1ca .. :try_end_1d0} :catchall_1e0

    .line 107
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1da

    .line 110
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 111
    nop

    .line 112
    return-void

    .line 108
    :cond_1da
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 107
    :catchall_1e0
    move-exception v2

    goto :goto_1ea

    .line 73
    :cond_1e2
    :try_start_1e2
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/tv/tuner/FrontendDvbtSettings;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_1ea
    .catchall {:try_start_1e2 .. :try_end_1ea} :catchall_1e0

    .line 107
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/tv/tuner/FrontendDvbtSettings;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_1ea
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_1f3

    .line 108
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 110
    :cond_1f3
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 111
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 46
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget-wide v1, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->frequency:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 48
    iget-wide v1, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->endFrequency:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 49
    iget v1, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->inversion:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget v1, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->transmissionMode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget v1, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->bandwidth:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget v1, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->constellation:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget v1, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->hierarchy:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget v1, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->hpCoderate:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget v1, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->lpCoderate:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget v1, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->guardInterval:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget-boolean v1, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->isHighPriority:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 58
    iget-byte v1, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->standard:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 59
    iget-boolean v1, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->isMiso:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 60
    iget v1, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->plpMode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget v1, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->plpId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget v1, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->plpGroupId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 64
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 65
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 67
    return-void
.end method
