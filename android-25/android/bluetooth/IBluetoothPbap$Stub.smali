.class public abstract Landroid/bluetooth/IBluetoothPbap$Stub;
.super Landroid/os/Binder;
.source "IBluetoothPbap.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothPbap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothPbap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothPbap$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothPbap"

.field static final TRANSACTION_connect:I = 0x3

.field static final TRANSACTION_disconnect:I = 0x4

.field static final TRANSACTION_getClient:I = 0x2

.field static final TRANSACTION_getState:I = 0x1

.field static final TRANSACTION_isConnected:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "android.bluetooth.IBluetoothPbap"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothPbap$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothPbap;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 28
    if-nez p0, :cond_0

    #@3
    .line 29
    return-object v1

    #@4
    .line 31
    :cond_0
    const-string/jumbo v1, "android.bluetooth.IBluetoothPbap"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/bluetooth/IBluetoothPbap;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Landroid/bluetooth/IBluetoothPbap;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothPbap$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothPbap$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    .line 43
    sparse-switch p1, :sswitch_data_0

    #@5
    .line 110
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v4

    #@9
    return v4

    #@a
    .line 47
    :sswitch_0
    const-string/jumbo v4, "android.bluetooth.IBluetoothPbap"

    #@d
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 48
    return v5

    #@11
    .line 52
    :sswitch_1
    const-string/jumbo v4, "android.bluetooth.IBluetoothPbap"

    #@14
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17
    .line 53
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothPbap$Stub;->getState()I

    #@1a
    move-result v1

    #@1b
    .line 54
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1e
    .line 55
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 56
    return v5

    #@22
    .line 60
    .end local v1    # "_result":I
    :sswitch_2
    const-string/jumbo v6, "android.bluetooth.IBluetoothPbap"

    #@25
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@28
    .line 61
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothPbap$Stub;->getClient()Landroid/bluetooth/BluetoothDevice;

    #@2b
    move-result-object v2

    #@2c
    .line 62
    .local v2, "_result":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2f
    .line 63
    if-eqz v2, :cond_0

    #@31
    .line 64
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@34
    .line 65
    invoke-virtual {v2, p3, v5}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    #@37
    .line 70
    :goto_0
    return v5

    #@38
    .line 68
    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@3b
    goto :goto_0

    #@3c
    .line 74
    .end local v2    # "_result":Landroid/bluetooth/BluetoothDevice;
    :sswitch_3
    const-string/jumbo v6, "android.bluetooth.IBluetoothPbap"

    #@3f
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@42
    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@45
    move-result v6

    #@46
    if-eqz v6, :cond_2

    #@48
    .line 77
    sget-object v6, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4a
    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4d
    move-result-object v0

    #@4e
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    #@50
    .line 82
    :goto_1
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothPbap$Stub;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    #@53
    move-result v3

    #@54
    .line 83
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@57
    .line 84
    if-eqz v3, :cond_1

    #@59
    move v4, v5

    #@5a
    :cond_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@5d
    .line 85
    return v5

    #@5e
    .line 80
    .end local v3    # "_result":Z
    :cond_2
    const/4 v0, 0x0

    #@5f
    .local v0, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1

    #@60
    .line 89
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_4
    const-string/jumbo v4, "android.bluetooth.IBluetoothPbap"

    #@63
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@66
    .line 90
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothPbap$Stub;->disconnect()V

    #@69
    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@6c
    .line 92
    return v5

    #@6d
    .line 96
    :sswitch_5
    const-string/jumbo v6, "android.bluetooth.IBluetoothPbap"

    #@70
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@73
    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@76
    move-result v6

    #@77
    if-eqz v6, :cond_4

    #@79
    .line 99
    sget-object v6, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7b
    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@7e
    move-result-object v0

    #@7f
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    #@81
    .line 104
    :goto_2
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothPbap$Stub;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    #@84
    move-result v3

    #@85
    .line 105
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@88
    .line 106
    if-eqz v3, :cond_3

    #@8a
    move v4, v5

    #@8b
    :cond_3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@8e
    .line 107
    return v5

    #@8f
    .line 102
    .end local v3    # "_result":Z
    :cond_4
    const/4 v0, 0x0

    #@90
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2

    #@91
    .line 43
    nop

    #@92
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
