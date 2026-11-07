.class Landroid/companion/BluetoothLeDeviceFilter$1;
.super Ljava/lang/Object;
.source "BluetoothLeDeviceFilter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/BluetoothLeDeviceFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/companion/BluetoothLeDeviceFilter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/companion/BluetoothLeDeviceFilter;
    .registers 13
    .param p1, "in"    # Landroid/os/Parcel;

    .line 254
    new-instance v0, Landroid/companion/BluetoothLeDeviceFilter$Builder;

    invoke-direct {v0}, Landroid/companion/BluetoothLeDeviceFilter$Builder;-><init>()V

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/companion/BluetoothDeviceFilterUtils;->patternFromString(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/companion/BluetoothLeDeviceFilter$Builder;->setNamePattern(Ljava/util/regex/Pattern;)Landroid/companion/BluetoothLeDeviceFilter$Builder;

    move-result-object v0

    const-class v1, Landroid/bluetooth/le/ScanFilter;

    .line 256
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/le/ScanFilter;

    invoke-virtual {v0, v1}, Landroid/companion/BluetoothLeDeviceFilter$Builder;->setScanFilter(Landroid/bluetooth/le/ScanFilter;)Landroid/companion/BluetoothLeDeviceFilter$Builder;

    move-result-object v2

    .line 257
    .local v2, "builder":Landroid/companion/BluetoothLeDeviceFilter$Builder;
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 258
    .local v0, "rawDataFilter":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 259
    .local v1, "rawDataFilterMask":[B
    if-eqz v0, :cond_2b

    .line 260
    invoke-virtual {v2, v0, v1}, Landroid/companion/BluetoothLeDeviceFilter$Builder;->setRawDataFilter([B[B)Landroid/companion/BluetoothLeDeviceFilter$Builder;

    .line 262
    :cond_2b
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 263
    .local v3, "renamePrefix":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 264
    .local v4, "suffix":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 265
    .local v5, "bytesFrom":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 266
    .local v6, "bytesTo":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 267
    .local v8, "nameFrom":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 268
    .local v9, "nameTo":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    .line 269
    .local v10, "bytesReverseOrder":Z
    if-eqz v3, :cond_5a

    .line 270
    if-ltz v5, :cond_57

    .line 271
    nop

    .line 272
    if-eqz v10, :cond_51

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_53

    :cond_51
    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 271
    :goto_53
    invoke-virtual/range {v2 .. v7}, Landroid/companion/BluetoothLeDeviceFilter$Builder;->setRenameFromBytes(Ljava/lang/String;Ljava/lang/String;IILjava/nio/ByteOrder;)Landroid/companion/BluetoothLeDeviceFilter$Builder;

    goto :goto_5a

    .line 274
    :cond_57
    invoke-virtual {v2, v3, v4, v8, v9}, Landroid/companion/BluetoothLeDeviceFilter$Builder;->setRenameFromName(Ljava/lang/String;Ljava/lang/String;II)Landroid/companion/BluetoothLeDeviceFilter$Builder;

    .line 277
    :cond_5a
    :goto_5a
    invoke-virtual {v2}, Landroid/companion/BluetoothLeDeviceFilter$Builder;->build()Landroid/companion/BluetoothLeDeviceFilter;

    move-result-object v7

    return-object v7
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

    .line 251
    invoke-virtual {p0, p1}, Landroid/companion/BluetoothLeDeviceFilter$1;->createFromParcel(Landroid/os/Parcel;)Landroid/companion/BluetoothLeDeviceFilter;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/companion/BluetoothLeDeviceFilter;
    .registers 3
    .param p1, "size"    # I

    .line 282
    new-array v0, p1, [Landroid/companion/BluetoothLeDeviceFilter;

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

    .line 251
    invoke-virtual {p0, p1}, Landroid/companion/BluetoothLeDeviceFilter$1;->newArray(I)[Landroid/companion/BluetoothLeDeviceFilter;

    move-result-object p1

    return-object p1
.end method
