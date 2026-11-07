.class Landroid/bluetooth/BluetoothLeAudioContentMetadata$1;
.super Ljava/lang/Object;
.source "BluetoothLeAudioContentMetadata.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothLeAudioContentMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/bluetooth/BluetoothLeAudioContentMetadata;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothLeAudioContentMetadata;
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "programInfo":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "language":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 151
    .local v2, "rawMetadata":[B
    new-instance v3, Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v2, v4}, Landroid/bluetooth/BluetoothLeAudioContentMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;[BLandroid/bluetooth/BluetoothLeAudioContentMetadata-IA;)V

    return-object v3
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

    .line 145
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothLeAudioContentMetadata$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/bluetooth/BluetoothLeAudioContentMetadata;
    .registers 3
    .param p1, "size"    # I

    .line 155
    new-array v0, p1, [Landroid/bluetooth/BluetoothLeAudioContentMetadata;

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

    .line 145
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothLeAudioContentMetadata$1;->newArray(I)[Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    move-result-object p1

    return-object p1
.end method
