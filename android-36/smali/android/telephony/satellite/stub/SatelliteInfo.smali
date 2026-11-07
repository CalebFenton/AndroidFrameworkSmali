.class public Landroid/telephony/satellite/stub/SatelliteInfo;
.super Ljava/lang/Object;
.source "SatelliteInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/satellite/stub/SatelliteInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist bands:[I

.field public blacklist earfcnRanges:[Landroid/telephony/satellite/stub/EarfcnRange;

.field public blacklist id:Landroid/telephony/satellite/stub/UUID;

.field public blacklist position:Landroid/telephony/satellite/stub/SatellitePosition;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 33
    new-instance v0, Landroid/telephony/satellite/stub/SatelliteInfo$1;

    invoke-direct {v0}, Landroid/telephony/satellite/stub/SatelliteInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/satellite/stub/SatelliteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 8
    .param p1, "_v"    # Ljava/lang/Object;

    .line 88
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 89
    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_1a

    .line 90
    const/4 v1, 0x0

    .line 91
    .local v1, "_mask":I
    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    array-length v3, v2

    :goto_d
    if-ge v0, v3, :cond_19

    aget-object v4, v2, v0

    .line 92
    .local v4, "o":Ljava/lang/Object;
    invoke-direct {p0, v4}, Landroid/telephony/satellite/stub/SatelliteInfo;->describeContents(Ljava/lang/Object;)I

    move-result v5

    or-int/2addr v1, v5

    .line 91
    .end local v4    # "o":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 94
    :cond_19
    return v1

    .line 96
    .end local v1    # "_mask":I
    :cond_1a
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_26

    .line 97
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 99
    :cond_26
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/telephony/satellite/stub/SatelliteInfo;->id:Landroid/telephony/satellite/stub/UUID;

    invoke-direct {p0, v1}, Landroid/telephony/satellite/stub/SatelliteInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 83
    iget-object v1, p0, Landroid/telephony/satellite/stub/SatelliteInfo;->position:Landroid/telephony/satellite/stub/SatellitePosition;

    invoke-direct {p0, v1}, Landroid/telephony/satellite/stub/SatelliteInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 84
    iget-object v1, p0, Landroid/telephony/satellite/stub/SatelliteInfo;->earfcnRanges:[Landroid/telephony/satellite/stub/EarfcnRange;

    invoke-direct {p0, v1}, Landroid/telephony/satellite/stub/SatelliteInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 85
    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 61
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 63
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_9e

    .line 64
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_9c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 73
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 76
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 64
    return-void

    .line 74
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 65
    :cond_26
    :try_start_26
    sget-object v2, Landroid/telephony/satellite/stub/UUID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/satellite/stub/UUID;

    iput-object v2, p0, Landroid/telephony/satellite/stub/SatelliteInfo;->id:Landroid/telephony/satellite/stub/UUID;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_34
    .catchall {:try_start_26 .. :try_end_34} :catchall_9c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_46

    .line 73
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_40

    .line 76
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 66
    return-void

    .line 74
    :cond_40
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    :cond_46
    :try_start_46
    sget-object v2, Landroid/telephony/satellite/stub/SatellitePosition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/satellite/stub/SatellitePosition;

    iput-object v2, p0, Landroid/telephony/satellite/stub/SatelliteInfo;->position:Landroid/telephony/satellite/stub/SatellitePosition;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_54
    .catchall {:try_start_46 .. :try_end_54} :catchall_9c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_66

    .line 73
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_60

    .line 76
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 68
    return-void

    .line 74
    :cond_60
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 69
    :cond_66
    :try_start_66
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    iput-object v2, p0, Landroid/telephony/satellite/stub/SatelliteInfo;->bands:[I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_70
    .catchall {:try_start_66 .. :try_end_70} :catchall_9c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_82

    .line 73
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_7c

    .line 76
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 70
    return-void

    .line 74
    :cond_7c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 71
    :cond_82
    :try_start_82
    sget-object v2, Landroid/telephony/satellite/stub/EarfcnRange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/telephony/satellite/stub/EarfcnRange;

    iput-object v2, p0, Landroid/telephony/satellite/stub/SatelliteInfo;->earfcnRanges:[Landroid/telephony/satellite/stub/EarfcnRange;
    :try_end_8c
    .catchall {:try_start_82 .. :try_end_8c} :catchall_9c

    .line 73
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_96

    .line 76
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 77
    nop

    .line 78
    return-void

    .line 74
    :cond_96
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 73
    :catchall_9c
    move-exception v2

    goto :goto_a6

    .line 63
    :cond_9e
    :try_start_9e
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/telephony/satellite/stub/SatelliteInfo;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_a6
    .catchall {:try_start_9e .. :try_end_a6} :catchall_9c

    .line 73
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/telephony/satellite/stub/SatelliteInfo;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_a6
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_af

    .line 74
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 76
    :cond_af
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 77
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
    iget-object v1, p0, Landroid/telephony/satellite/stub/SatelliteInfo;->id:Landroid/telephony/satellite/stub/UUID;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 50
    iget-object v1, p0, Landroid/telephony/satellite/stub/SatelliteInfo;->position:Landroid/telephony/satellite/stub/SatellitePosition;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 51
    iget-object v1, p0, Landroid/telephony/satellite/stub/SatelliteInfo;->bands:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 52
    iget-object v1, p0, Landroid/telephony/satellite/stub/SatelliteInfo;->earfcnRanges:[Landroid/telephony/satellite/stub/EarfcnRange;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 54
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 55
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 57
    return-void
.end method
