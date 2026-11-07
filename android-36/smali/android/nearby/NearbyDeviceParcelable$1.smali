.class Landroid/nearby/NearbyDeviceParcelable$1;
.super Ljava/lang/Object;
.source "NearbyDeviceParcelable.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nearby/NearbyDeviceParcelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/nearby/NearbyDeviceParcelable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/nearby/NearbyDeviceParcelable;
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 48
    new-instance v0, Landroid/nearby/NearbyDeviceParcelable$Builder;

    invoke-direct {v0}, Landroid/nearby/NearbyDeviceParcelable$Builder;-><init>()V

    .line 49
    .local v0, "builder":Landroid/nearby/NearbyDeviceParcelable$Builder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/nearby/NearbyDeviceParcelable$Builder;->setDeviceId(J)Landroid/nearby/NearbyDeviceParcelable$Builder;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/nearby/NearbyDeviceParcelable$Builder;->setScanType(I)Landroid/nearby/NearbyDeviceParcelable$Builder;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_21

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/nearby/NearbyDeviceParcelable$Builder;->setName(Ljava/lang/String;)Landroid/nearby/NearbyDeviceParcelable$Builder;

    .line 54
    :cond_21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/nearby/NearbyDeviceParcelable$Builder;->setMedium(I)Landroid/nearby/NearbyDeviceParcelable$Builder;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/nearby/NearbyDeviceParcelable$Builder;->setTxPower(I)Landroid/nearby/NearbyDeviceParcelable$Builder;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/nearby/NearbyDeviceParcelable$Builder;->setRssi(I)Landroid/nearby/NearbyDeviceParcelable$Builder;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/nearby/NearbyDeviceParcelable$Builder;->setAction(I)Landroid/nearby/NearbyDeviceParcelable$Builder;

    .line 58
    const-class v1, Landroid/nearby/PublicCredential;

    .line 60
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v3, Landroid/nearby/PublicCredential;

    .line 59
    invoke-virtual {p1, v1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nearby/PublicCredential;

    .line 58
    invoke-virtual {v0, v1}, Landroid/nearby/NearbyDeviceParcelable$Builder;->setPublicCredential(Landroid/nearby/PublicCredential;)Landroid/nearby/NearbyDeviceParcelable$Builder;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_5b

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/nearby/NearbyDeviceParcelable$Builder;->setFastPairModelId(Ljava/lang/String;)Landroid/nearby/NearbyDeviceParcelable$Builder;

    .line 65
    :cond_5b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_68

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/nearby/NearbyDeviceParcelable$Builder;->setBluetoothAddress(Ljava/lang/String;)Landroid/nearby/NearbyDeviceParcelable$Builder;

    .line 68
    :cond_68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_7a

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 70
    .local v1, "dataLength":I
    new-array v3, v1, [B

    .line 71
    .local v3, "data":[B
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readByteArray([B)V

    .line 72
    invoke-virtual {v0, v3}, Landroid/nearby/NearbyDeviceParcelable$Builder;->setData([B)Landroid/nearby/NearbyDeviceParcelable$Builder;

    .line 74
    .end local v1    # "dataLength":I
    .end local v3    # "data":[B
    :cond_7a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_8c

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 76
    .local v1, "saltLength":I
    new-array v3, v1, [B

    .line 77
    .local v3, "salt":[B
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readByteArray([B)V

    .line 78
    invoke-virtual {v0, v3}, Landroid/nearby/NearbyDeviceParcelable$Builder;->setData([B)Landroid/nearby/NearbyDeviceParcelable$Builder;

    .line 80
    .end local v1    # "saltLength":I
    .end local v3    # "salt":[B
    :cond_8c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_a3

    .line 81
    const-class v1, Landroid/nearby/PresenceDevice;

    .line 82
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v3, Landroid/nearby/PresenceDevice;

    .line 81
    invoke-virtual {p1, v1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nearby/PresenceDevice;

    invoke-virtual {v0, v1}, Landroid/nearby/NearbyDeviceParcelable$Builder;->setPresenceDevice(Landroid/nearby/PresenceDevice;)Landroid/nearby/NearbyDeviceParcelable$Builder;

    .line 85
    :cond_a3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_b5

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 87
    .local v1, "encryptionKeyTagLength":I
    new-array v2, v1, [B

    .line 88
    .local v2, "keyTag":[B
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 89
    invoke-virtual {v0, v2}, Landroid/nearby/NearbyDeviceParcelable$Builder;->setData([B)Landroid/nearby/NearbyDeviceParcelable$Builder;

    .line 91
    .end local v1    # "encryptionKeyTagLength":I
    .end local v2    # "keyTag":[B
    :cond_b5
    invoke-virtual {v0}, Landroid/nearby/NearbyDeviceParcelable$Builder;->build()Landroid/nearby/NearbyDeviceParcelable;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 45
    invoke-virtual {p0, p1}, Landroid/nearby/NearbyDeviceParcelable$1;->createFromParcel(Landroid/os/Parcel;)Landroid/nearby/NearbyDeviceParcelable;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/nearby/NearbyDeviceParcelable;
    .registers 3
    .param p1, "size"    # I

    .line 96
    new-array v0, p1, [Landroid/nearby/NearbyDeviceParcelable;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 45
    invoke-virtual {p0, p1}, Landroid/nearby/NearbyDeviceParcelable$1;->newArray(I)[Landroid/nearby/NearbyDeviceParcelable;

    move-result-object p1

    return-object p1
.end method
