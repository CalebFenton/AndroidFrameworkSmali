.class Landroid/nearby/FastPairDevice$1;
.super Ljava/lang/Object;
.source "FastPairDevice.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nearby/FastPairDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/nearby/FastPairDevice;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/nearby/FastPairDevice;
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 42
    new-instance v0, Landroid/nearby/FastPairDevice$Builder;

    invoke-direct {v0}, Landroid/nearby/FastPairDevice$Builder;-><init>()V

    .line 43
    .local v0, "builder":Landroid/nearby/FastPairDevice$Builder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/nearby/FastPairDevice$Builder;->setName(Ljava/lang/String;)Landroid/nearby/FastPairDevice$Builder;

    .line 46
    :cond_13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 47
    .local v1, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_18
    if-ge v3, v1, :cond_24

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/nearby/FastPairDevice$Builder;->addMedium(I)Landroid/nearby/FastPairDevice$Builder;

    .line 47
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 50
    .end local v3    # "i":I
    :cond_24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/nearby/FastPairDevice$Builder;->setRssi(I)Landroid/nearby/FastPairDevice$Builder;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/nearby/FastPairDevice$Builder;->setTxPower(I)Landroid/nearby/FastPairDevice$Builder;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_3f

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/nearby/FastPairDevice$Builder;->setModelId(Ljava/lang/String;)Landroid/nearby/FastPairDevice$Builder;

    .line 55
    :cond_3f
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/nearby/FastPairDevice$Builder;->setBluetoothAddress(Ljava/lang/String;)Landroid/nearby/FastPairDevice$Builder;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_58

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 58
    .local v2, "dataLength":I
    new-array v3, v2, [B

    .line 59
    .local v3, "data":[B
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readByteArray([B)V

    .line 60
    invoke-virtual {v0, v3}, Landroid/nearby/FastPairDevice$Builder;->setData([B)Landroid/nearby/FastPairDevice$Builder;

    .line 62
    .end local v2    # "dataLength":I
    .end local v3    # "data":[B
    :cond_58
    invoke-virtual {v0}, Landroid/nearby/FastPairDevice$Builder;->build()Landroid/nearby/FastPairDevice;

    move-result-object v2

    return-object v2
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

    .line 39
    invoke-virtual {p0, p1}, Landroid/nearby/FastPairDevice$1;->createFromParcel(Landroid/os/Parcel;)Landroid/nearby/FastPairDevice;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/nearby/FastPairDevice;
    .registers 3
    .param p1, "size"    # I

    .line 67
    new-array v0, p1, [Landroid/nearby/FastPairDevice;

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

    .line 39
    invoke-virtual {p0, p1}, Landroid/nearby/FastPairDevice$1;->newArray(I)[Landroid/nearby/FastPairDevice;

    move-result-object p1

    return-object p1
.end method
