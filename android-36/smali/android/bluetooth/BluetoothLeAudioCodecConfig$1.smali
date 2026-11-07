.class Landroid/bluetooth/BluetoothLeAudioCodecConfig$1;
.super Ljava/lang/Object;
.source "BluetoothLeAudioCodecConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothLeAudioCodecConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/bluetooth/BluetoothLeAudioCodecConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothLeAudioCodecConfig;
    .registers 13
    .param p1, "in"    # Landroid/os/Parcel;

    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 269
    .local v1, "codecType":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 270
    .local v2, "codecPriority":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 271
    .local v3, "sampleRate":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 272
    .local v4, "bitsPerSample":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 273
    .local v5, "channelCount":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 274
    .local v6, "frameDuration":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 275
    .local v7, "octetsPerFrame":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 276
    .local v8, "minOctetsPerFrame":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 277
    .local v9, "maxOctetsPerFrame":I
    new-instance v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;-><init>(IIIIIIIIILandroid/bluetooth/BluetoothLeAudioCodecConfig-IA;)V

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

    .line 266
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/bluetooth/BluetoothLeAudioCodecConfig;
    .registers 3
    .param p1, "size"    # I

    .line 290
    new-array v0, p1, [Landroid/bluetooth/BluetoothLeAudioCodecConfig;

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

    .line 266
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfig$1;->newArray(I)[Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    move-result-object p1

    return-object p1
.end method
