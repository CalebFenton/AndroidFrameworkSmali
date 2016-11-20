.class final Landroid/bluetooth/BluetoothAvrcpPlayerSettings$1;
.super Ljava/lang/Object;
.source "BluetoothAvrcpPlayerSettings.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAvrcpPlayerSettings;
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
        "Landroid/bluetooth/BluetoothAvrcpPlayerSettings;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothAvrcpPlayerSettings;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 122
    new-instance v0, Landroid/bluetooth/BluetoothAvrcpPlayerSettings;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p1, v1}, Landroid/bluetooth/BluetoothAvrcpPlayerSettings;-><init>(Landroid/os/Parcel;Landroid/bluetooth/BluetoothAvrcpPlayerSettings;)V

    #@6
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 121
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAvrcpPlayerSettings$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothAvrcpPlayerSettings;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/bluetooth/BluetoothAvrcpPlayerSettings;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 126
    new-array v0, p1, [Landroid/bluetooth/BluetoothAvrcpPlayerSettings;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 125
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAvrcpPlayerSettings$1;->newArray(I)[Landroid/bluetooth/BluetoothAvrcpPlayerSettings;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
