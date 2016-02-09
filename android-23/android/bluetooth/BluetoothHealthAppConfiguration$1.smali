.class final Landroid/bluetooth/BluetoothHealthAppConfiguration$1;
.super Ljava/lang/Object;
.source "BluetoothHealthAppConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHealthAppConfiguration;
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
        "Landroid/bluetooth/BluetoothHealthAppConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 146
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7
    move-result v3

    #@8
    .line 147
    .local v3, "type":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@b
    move-result v2

    #@c
    .line 148
    .local v2, "role":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v0

    #@10
    .line 149
    .local v0, "channelType":I
    new-instance v4, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    #@12
    invoke-direct {v4, v1, v3, v2, v0}, Landroid/bluetooth/BluetoothHealthAppConfiguration;-><init>(Ljava/lang/String;III)V

    #@15
    return-object v4
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 144
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHealthAppConfiguration$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothHealthAppConfiguration;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 155
    new-array v0, p1, [Landroid/bluetooth/BluetoothHealthAppConfiguration;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 154
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHealthAppConfiguration$1;->newArray(I)[Landroid/bluetooth/BluetoothHealthAppConfiguration;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
