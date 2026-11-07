.class public Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;
.super Ljava/lang/Object;
.source "DemuxFilterSectionSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist bitWidthOfLengthField:I

.field public blacklist condition:Landroid/hardware/tv/tuner/DemuxFilterSectionSettingsCondition;

.field public blacklist isCheckCrc:Z

.field public blacklist isRaw:Z

.field public blacklist isRepeat:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 20
    new-instance v0, Landroid/hardware/tv/tuner/DemuxFilterSectionSettings$1;

    invoke-direct {v0}, Landroid/hardware/tv/tuner/DemuxFilterSectionSettings$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;->isCheckCrc:Z

    .line 15
    iput-boolean v0, p0, Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;->isRepeat:Z

    .line 16
    iput-boolean v0, p0, Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;->isRaw:Z

    .line 17
    iput v0, p0, Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;->bitWidthOfLengthField:I

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4
    .param p1, "_v"    # Ljava/lang/Object;

    .line 76
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 77
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_10

    .line 78
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 80
    :cond_10
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;->condition:Landroid/hardware/tv/tuner/DemuxFilterSectionSettingsCondition;

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 73
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 19
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 49
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 51
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_b2

    .line 52
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_b0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 63
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 66
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 52
    return-void

    .line 64
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 53
    :cond_26
    :try_start_26
    sget-object v2, Landroid/hardware/tv/tuner/DemuxFilterSectionSettingsCondition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/tv/tuner/DemuxFilterSectionSettingsCondition;

    iput-object v2, p0, Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;->condition:Landroid/hardware/tv/tuner/DemuxFilterSectionSettingsCondition;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_34
    .catchall {:try_start_26 .. :try_end_34} :catchall_b0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_46

    .line 63
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_40

    .line 66
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 54
    return-void

    .line 64
    :cond_40
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 55
    :cond_46
    :try_start_46
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;->isCheckCrc:Z

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_50
    .catchall {:try_start_46 .. :try_end_50} :catchall_b0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_62

    .line 63
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_5c

    .line 66
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 56
    return-void

    .line 64
    :cond_5c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 57
    :cond_62
    :try_start_62
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;->isRepeat:Z

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_6c
    .catchall {:try_start_62 .. :try_end_6c} :catchall_b0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7e

    .line 63
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_78

    .line 66
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 58
    return-void

    .line 64
    :cond_78
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 59
    :cond_7e
    :try_start_7e
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;->isRaw:Z

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_88
    .catchall {:try_start_7e .. :try_end_88} :catchall_b0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9a

    .line 63
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_94

    .line 66
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 60
    return-void

    .line 64
    :cond_94
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 61
    :cond_9a
    :try_start_9a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;->bitWidthOfLengthField:I
    :try_end_a0
    .catchall {:try_start_9a .. :try_end_a0} :catchall_b0

    .line 63
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_aa

    .line 66
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 67
    nop

    .line 68
    return-void

    .line 64
    :cond_aa
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 63
    :catchall_b0
    move-exception v2

    goto :goto_ba

    .line 51
    :cond_b2
    :try_start_b2
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_ba
    .catchall {:try_start_b2 .. :try_end_ba} :catchall_b0

    .line 63
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_ba
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_c3

    .line 64
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    :cond_c3
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 67
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 35
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    iget-object v1, p0, Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;->condition:Landroid/hardware/tv/tuner/DemuxFilterSectionSettingsCondition;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 37
    iget-boolean v1, p0, Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;->isCheckCrc:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 38
    iget-boolean v1, p0, Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;->isRepeat:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 39
    iget-boolean v1, p0, Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;->isRaw:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 40
    iget v1, p0, Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;->bitWidthOfLengthField:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 42
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 43
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 45
    return-void
.end method
