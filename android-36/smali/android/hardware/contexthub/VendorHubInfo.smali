.class public Landroid/hardware/contexthub/VendorHubInfo;
.super Ljava/lang/Object;
.source "VendorHubInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/contexthub/VendorHubInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist extendedInfo:Landroid/os/ParcelableHolder;

.field public blacklist name:Ljava/lang/String;

.field public blacklist version:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 17
    new-instance v0, Landroid/hardware/contexthub/VendorHubInfo$1;

    invoke-direct {v0}, Landroid/hardware/contexthub/VendorHubInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/contexthub/VendorHubInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/contexthub/VendorHubInfo;->version:I

    .line 14
    new-instance v0, Landroid/os/ParcelableHolder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/ParcelableHolder;-><init>(I)V

    iput-object v0, p0, Landroid/hardware/contexthub/VendorHubInfo;->extendedInfo:Landroid/os/ParcelableHolder;

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4
    .param p1, "_v"    # Ljava/lang/Object;

    .line 69
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 70
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_10

    .line 71
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 73
    :cond_10
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/hardware/contexthub/VendorHubInfo;->extendedInfo:Landroid/os/ParcelableHolder;

    invoke-direct {p0, v1}, Landroid/hardware/contexthub/VendorHubInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 66
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 16
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 44
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 46
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_7b

    .line 47
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_79

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 56
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 59
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 47
    return-void

    .line 57
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 48
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/contexthub/VendorHubInfo;->name:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_79

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 56
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 59
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 49
    return-void

    .line 57
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 50
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/contexthub/VendorHubInfo;->version:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_79

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5e

    .line 56
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_58

    .line 59
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 51
    return-void

    .line 57
    :cond_58
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 52
    :cond_5e
    :try_start_5e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_69

    .line 53
    iget-object v2, p0, Landroid/hardware/contexthub/VendorHubInfo;->extendedInfo:Landroid/os/ParcelableHolder;

    invoke-virtual {v2, p1}, Landroid/os/ParcelableHolder;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_69
    .catchall {:try_start_5e .. :try_end_69} :catchall_79

    .line 56
    :cond_69
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_73

    .line 59
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 60
    nop

    .line 61
    return-void

    .line 57
    :cond_73
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 56
    :catchall_79
    move-exception v2

    goto :goto_83

    .line 46
    :cond_7b
    :try_start_7b
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/contexthub/VendorHubInfo;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_83
    .catchall {:try_start_7b .. :try_end_83} :catchall_79

    .line 56
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/contexthub/VendorHubInfo;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_83
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_8c

    .line 57
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 59
    :cond_8c
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 60
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 32
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    iget-object v2, p0, Landroid/hardware/contexthub/VendorHubInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    iget v2, p0, Landroid/hardware/contexthub/VendorHubInfo;->version:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    iget-object v2, p0, Landroid/hardware/contexthub/VendorHubInfo;->extendedInfo:Landroid/os/ParcelableHolder;

    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 37
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 38
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 40
    return-void
.end method
