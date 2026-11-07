.class public Landroid/net/TetheringRequestParcel;
.super Ljava/lang/Object;
.source "TetheringRequestParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/TetheringRequestParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist connectivityScope:I

.field public blacklist exemptFromEntitlementCheck:Z

.field public blacklist interfaceName:Ljava/lang/String;

.field public blacklist localIPv4Address:Landroid/net/LinkAddress;

.field public blacklist packageName:Ljava/lang/String;

.field public blacklist requestType:I

.field public blacklist showProvisioningUi:Z

.field public blacklist softApConfig:Landroid/net/wifi/SoftApConfiguration;

.field public blacklist staticClientAddress:Landroid/net/LinkAddress;

.field public blacklist tetheringType:I

.field public blacklist uid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 27
    new-instance v0, Landroid/net/TetheringRequestParcel$1;

    invoke-direct {v0}, Landroid/net/TetheringRequestParcel$1;-><init>()V

    sput-object v0, Landroid/net/TetheringRequestParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/TetheringRequestParcel;->requestType:I

    .line 17
    iput v0, p0, Landroid/net/TetheringRequestParcel;->tetheringType:I

    .line 20
    iput-boolean v0, p0, Landroid/net/TetheringRequestParcel;->exemptFromEntitlementCheck:Z

    .line 21
    iput-boolean v0, p0, Landroid/net/TetheringRequestParcel;->showProvisioningUi:Z

    .line 22
    iput v0, p0, Landroid/net/TetheringRequestParcel;->connectivityScope:I

    .line 24
    iput v0, p0, Landroid/net/TetheringRequestParcel;->uid:I

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4
    .param p1, "_v"    # Ljava/lang/Object;

    .line 103
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 104
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_10

    .line 105
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 107
    :cond_10
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/net/TetheringRequestParcel;->localIPv4Address:Landroid/net/LinkAddress;

    invoke-direct {p0, v1}, Landroid/net/TetheringRequestParcel;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 98
    iget-object v1, p0, Landroid/net/TetheringRequestParcel;->staticClientAddress:Landroid/net/LinkAddress;

    invoke-direct {p0, v1}, Landroid/net/TetheringRequestParcel;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 99
    iget-object v1, p0, Landroid/net/TetheringRequestParcel;->softApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-direct {p0, v1}, Landroid/net/TetheringRequestParcel;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 100
    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 62
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 64
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_162

    .line 65
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_160

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 88
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 91
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 65
    return-void

    .line 89
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/TetheringRequestParcel;->requestType:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_160

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 88
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 91
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 67
    return-void

    .line 89
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 68
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/TetheringRequestParcel;->tetheringType:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_160

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5e

    .line 88
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_58

    .line 91
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 69
    return-void

    .line 89
    :cond_58
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 70
    :cond_5e
    :try_start_5e
    sget-object v2, Landroid/net/LinkAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    iput-object v2, p0, Landroid/net/TetheringRequestParcel;->localIPv4Address:Landroid/net/LinkAddress;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_6c
    .catchall {:try_start_5e .. :try_end_6c} :catchall_160

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7e

    .line 88
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_78

    .line 91
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 71
    return-void

    .line 89
    :cond_78
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 72
    :cond_7e
    :try_start_7e
    sget-object v2, Landroid/net/LinkAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    iput-object v2, p0, Landroid/net/TetheringRequestParcel;->staticClientAddress:Landroid/net/LinkAddress;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_8c
    .catchall {:try_start_7e .. :try_end_8c} :catchall_160

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9e

    .line 88
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_98

    .line 91
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 73
    return-void

    .line 89
    :cond_98
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 74
    :cond_9e
    :try_start_9e
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/net/TetheringRequestParcel;->exemptFromEntitlementCheck:Z

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a8
    .catchall {:try_start_9e .. :try_end_a8} :catchall_160

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ba

    .line 88
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_b4

    .line 91
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 75
    return-void

    .line 89
    :cond_b4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 76
    :cond_ba
    :try_start_ba
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/net/TetheringRequestParcel;->showProvisioningUi:Z

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_c4
    .catchall {:try_start_ba .. :try_end_c4} :catchall_160

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_d6

    .line 88
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_d0

    .line 91
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 77
    return-void

    .line 89
    :cond_d0
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 78
    :cond_d6
    :try_start_d6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/TetheringRequestParcel;->connectivityScope:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_e0
    .catchall {:try_start_d6 .. :try_end_e0} :catchall_160

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_f2

    .line 88
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ec

    .line 91
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 79
    return-void

    .line 89
    :cond_ec
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 80
    :cond_f2
    :try_start_f2
    sget-object v2, Landroid/net/wifi/SoftApConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/SoftApConfiguration;

    iput-object v2, p0, Landroid/net/TetheringRequestParcel;->softApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_100
    .catchall {:try_start_f2 .. :try_end_100} :catchall_160

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_112

    .line 88
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_10c

    .line 91
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 81
    return-void

    .line 89
    :cond_10c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 82
    :cond_112
    :try_start_112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/TetheringRequestParcel;->uid:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_11c
    .catchall {:try_start_112 .. :try_end_11c} :catchall_160

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_12e

    .line 88
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_128

    .line 91
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 83
    return-void

    .line 89
    :cond_128
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 84
    :cond_12e
    :try_start_12e
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/TetheringRequestParcel;->packageName:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_138
    .catchall {:try_start_12e .. :try_end_138} :catchall_160

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_14a

    .line 88
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_144

    .line 91
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 85
    return-void

    .line 89
    :cond_144
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    :cond_14a
    :try_start_14a
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/TetheringRequestParcel;->interfaceName:Ljava/lang/String;
    :try_end_150
    .catchall {:try_start_14a .. :try_end_150} :catchall_160

    .line 88
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_15a

    .line 91
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 92
    nop

    .line 93
    return-void

    .line 89
    :cond_15a
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 88
    :catchall_160
    move-exception v2

    goto :goto_16a

    .line 64
    :cond_162
    :try_start_162
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/net/TetheringRequestParcel;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_16a
    .catchall {:try_start_162 .. :try_end_16a} :catchall_160

    .line 88
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/net/TetheringRequestParcel;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_16a
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_173

    .line 89
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 91
    :cond_173
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 92
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 42
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget v1, p0, Landroid/net/TetheringRequestParcel;->requestType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget v1, p0, Landroid/net/TetheringRequestParcel;->tetheringType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget-object v1, p0, Landroid/net/TetheringRequestParcel;->localIPv4Address:Landroid/net/LinkAddress;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 46
    iget-object v1, p0, Landroid/net/TetheringRequestParcel;->staticClientAddress:Landroid/net/LinkAddress;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 47
    iget-boolean v1, p0, Landroid/net/TetheringRequestParcel;->exemptFromEntitlementCheck:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 48
    iget-boolean v1, p0, Landroid/net/TetheringRequestParcel;->showProvisioningUi:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 49
    iget v1, p0, Landroid/net/TetheringRequestParcel;->connectivityScope:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget-object v1, p0, Landroid/net/TetheringRequestParcel;->softApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 51
    iget v1, p0, Landroid/net/TetheringRequestParcel;->uid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget-object v1, p0, Landroid/net/TetheringRequestParcel;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Landroid/net/TetheringRequestParcel;->interfaceName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 55
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 56
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 58
    return-void
.end method
