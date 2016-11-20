.class final Landroid/bluetooth/BluetoothAudioConfig$1;
.super Ljava/lang/Object;
.source "BluetoothAudioConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAudioConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/bluetooth/BluetoothAudioConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothAudioConfig;
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v2

    #@4
    .line 71
    .local v2, "sampleRate":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7
    move-result v1

    #@8
    .line 72
    .local v1, "channelConfig":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@b
    move-result v0

    #@c
    .line 73
    .local v0, "audioFormat":I
    new-instance v3, Landroid/bluetooth/BluetoothAudioConfig;

    #@e
    invoke-direct {v3, v2, v1, v0}, Landroid/bluetooth/BluetoothAudioConfig;-><init>(III)V

    #@11
    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 69
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAudioConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothAudioConfig;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/bluetooth/BluetoothAudioConfig;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 76
    new-array v0, p1, [Landroid/bluetooth/BluetoothAudioConfig;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 75
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAudioConfig$1;->newArray(I)[Landroid/bluetooth/BluetoothAudioConfig;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
