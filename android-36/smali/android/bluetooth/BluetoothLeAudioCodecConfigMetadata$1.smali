.class Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$1;
.super Ljava/lang/Object;
.source "BluetoothLeAudioCodecConfigMetadata.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;
    .registers 10
    .param p1, "in"    # Landroid/os/Parcel;

    .line 247
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 248
    .local v1, "audioLocation":J
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 249
    .local v0, "rawMetadata":[B
    if-nez v0, :cond_f

    .line 250
    const/4 v3, 0x0

    new-array v0, v3, [B

    move-object v6, v0

    goto :goto_10

    .line 249
    :cond_f
    move-object v6, v0

    .line 252
    .end local v0    # "rawMetadata":[B
    .local v6, "rawMetadata":[B
    :goto_10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 253
    .local v3, "sampleRate":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 254
    .local v4, "frameDuration":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 255
    .local v5, "octetsPerFrame":I
    new-instance v0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;-><init>(JIII[BLandroid/bluetooth/BluetoothLeAudioCodecConfigMetadata-IA;)V

    return-object v0
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

    .line 244
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;
    .registers 3
    .param p1, "size"    # I

    .line 260
    new-array v0, p1, [Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

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

    .line 244
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$1;->newArray(I)[Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    move-result-object p1

    return-object p1
.end method
