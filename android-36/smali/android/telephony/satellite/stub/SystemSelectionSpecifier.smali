.class public Landroid/telephony/satellite/stub/SystemSelectionSpecifier;
.super Ljava/lang/Object;
.source "SystemSelectionSpecifier.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/satellite/stub/SystemSelectionSpecifier;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist mBands:[I

.field public blacklist mEarfcs:[I

.field public blacklist mMccMnc:Ljava/lang/String;

.field public blacklist satelliteInfos:[Landroid/telephony/satellite/stub/SatelliteInfo;

.field public blacklist tagIds:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Landroid/telephony/satellite/stub/SystemSelectionSpecifier$1;

    invoke-direct {v0}, Landroid/telephony/satellite/stub/SystemSelectionSpecifier$1;-><init>()V

    sput-object v0, Landroid/telephony/satellite/stub/SystemSelectionSpecifier;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 91
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 92
    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_1a

    .line 93
    const/4 v1, 0x0

    .line 94
    .local v1, "_mask":I
    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    array-length v3, v2

    :goto_d
    if-ge v0, v3, :cond_19

    aget-object v4, v2, v0

    .line 95
    .local v4, "o":Ljava/lang/Object;
    invoke-direct {p0, v4}, Landroid/telephony/satellite/stub/SystemSelectionSpecifier;->describeContents(Ljava/lang/Object;)I

    move-result v5

    or-int/2addr v1, v5

    .line 94
    .end local v4    # "o":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 97
    :cond_19
    return v1

    .line 99
    .end local v1    # "_mask":I
    :cond_1a
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_26

    .line 100
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 102
    :cond_26
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/telephony/satellite/stub/SystemSelectionSpecifier;->satelliteInfos:[Landroid/telephony/satellite/stub/SatelliteInfo;

    invoke-direct {p0, v1}, Landroid/telephony/satellite/stub/SystemSelectionSpecifier;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 88
    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 64
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 66
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_b2

    .line 67
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_b0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 78
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 81
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 67
    return-void

    .line 79
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 68
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/telephony/satellite/stub/SystemSelectionSpecifier;->mMccMnc:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_b0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 78
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 81
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 69
    return-void

    .line 79
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 70
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    iput-object v2, p0, Landroid/telephony/satellite/stub/SystemSelectionSpecifier;->mBands:[I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_b0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5e

    .line 78
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_58

    .line 81
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 71
    return-void

    .line 79
    :cond_58
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 72
    :cond_5e
    :try_start_5e
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    iput-object v2, p0, Landroid/telephony/satellite/stub/SystemSelectionSpecifier;->mEarfcs:[I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_b0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7a

    .line 78
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_74

    .line 81
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 73
    return-void

    .line 79
    :cond_74
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 74
    :cond_7a
    :try_start_7a
    sget-object v2, Landroid/telephony/satellite/stub/SatelliteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/telephony/satellite/stub/SatelliteInfo;

    iput-object v2, p0, Landroid/telephony/satellite/stub/SystemSelectionSpecifier;->satelliteInfos:[Landroid/telephony/satellite/stub/SatelliteInfo;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_88
    .catchall {:try_start_7a .. :try_end_88} :catchall_b0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9a

    .line 78
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_94

    .line 81
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 75
    return-void

    .line 79
    :cond_94
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 76
    :cond_9a
    :try_start_9a
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    iput-object v2, p0, Landroid/telephony/satellite/stub/SystemSelectionSpecifier;->tagIds:[I
    :try_end_a0
    .catchall {:try_start_9a .. :try_end_a0} :catchall_b0

    .line 78
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_aa

    .line 81
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 82
    nop

    .line 83
    return-void

    .line 79
    :cond_aa
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 78
    :catchall_b0
    move-exception v2

    goto :goto_ba

    .line 66
    :cond_b2
    :try_start_b2
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/telephony/satellite/stub/SystemSelectionSpecifier;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_ba
    .catchall {:try_start_b2 .. :try_end_ba} :catchall_b0

    .line 78
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/telephony/satellite/stub/SystemSelectionSpecifier;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_ba
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_c3

    .line 79
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 81
    :cond_c3
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 82
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 50
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget-object v1, p0, Landroid/telephony/satellite/stub/SystemSelectionSpecifier;->mMccMnc:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Landroid/telephony/satellite/stub/SystemSelectionSpecifier;->mBands:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 53
    iget-object v1, p0, Landroid/telephony/satellite/stub/SystemSelectionSpecifier;->mEarfcs:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 54
    iget-object v1, p0, Landroid/telephony/satellite/stub/SystemSelectionSpecifier;->satelliteInfos:[Landroid/telephony/satellite/stub/SatelliteInfo;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 55
    iget-object v1, p0, Landroid/telephony/satellite/stub/SystemSelectionSpecifier;->tagIds:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 57
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 58
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 60
    return-void
.end method
