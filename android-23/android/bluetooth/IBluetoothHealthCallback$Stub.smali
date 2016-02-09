.class public abstract Landroid/bluetooth/IBluetoothHealthCallback$Stub;
.super Landroid/os/Binder;
.source "IBluetoothHealthCallback.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothHealthCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothHealthCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothHealthCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothHealthCallback"

.field static final TRANSACTION_onHealthAppConfigurationStatusChange:I = 0x1

.field static final TRANSACTION_onHealthChannelStateChange:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 18
    const-string/jumbo v0, "android.bluetooth.IBluetoothHealthCallback"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothHealthCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHealthCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 26
    if-nez p0, :cond_0

    #@3
    .line 27
    return-object v1

    #@4
    .line 29
    :cond_0
    const-string/jumbo v1, "android.bluetooth.IBluetoothHealthCallback"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/bluetooth/IBluetoothHealthCallback;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 31
    check-cast v0, Landroid/bluetooth/IBluetoothHealthCallback;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothHealthCallback$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothHealthCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
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
    const/4 v8, 0x1

    #@1
    .line 41
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 99
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v0

    #@8
    return v0

    #@9
    .line 45
    :sswitch_0
    const-string/jumbo v0, "android.bluetooth.IBluetoothHealthCallback"

    #@c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 46
    return v8

    #@10
    .line 50
    :sswitch_1
    const-string/jumbo v0, "android.bluetooth.IBluetoothHealthCallback"

    #@13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_0

    #@1c
    .line 53
    sget-object v0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@21
    move-result-object v1

    #@22
    check-cast v1, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    #@24
    .line 59
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@27
    move-result v7

    #@28
    .line 60
    .local v7, "_arg1":I
    invoke-virtual {p0, v1, v7}, Landroid/bluetooth/IBluetoothHealthCallback$Stub;->onHealthAppConfigurationStatusChange(Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V

    #@2b
    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2e
    .line 62
    return v8

    #@2f
    .line 56
    .end local v7    # "_arg1":I
    :cond_0
    const/4 v1, 0x0

    #@30
    .local v1, "_arg0":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    goto :goto_0

    #@31
    .line 66
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :sswitch_2
    const-string/jumbo v0, "android.bluetooth.IBluetoothHealthCallback"

    #@34
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@37
    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3a
    move-result v0

    #@3b
    if-eqz v0, :cond_1

    #@3d
    .line 69
    sget-object v0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3f
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@42
    move-result-object v1

    #@43
    check-cast v1, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    #@45
    .line 75
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@48
    move-result v0

    #@49
    if-eqz v0, :cond_2

    #@4b
    .line 76
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4d
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@50
    move-result-object v2

    #@51
    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    #@53
    .line 82
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@56
    move-result v3

    #@57
    .line 84
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@5a
    move-result v4

    #@5b
    .line 86
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@5e
    move-result v0

    #@5f
    if-eqz v0, :cond_3

    #@61
    .line 87
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@63
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@66
    move-result-object v5

    #@67
    check-cast v5, Landroid/os/ParcelFileDescriptor;

    #@69
    .line 93
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@6c
    move-result v6

    #@6d
    .local v6, "_arg5":I
    move-object v0, p0

    #@6e
    .line 94
    invoke-virtual/range {v0 .. v6}, Landroid/bluetooth/IBluetoothHealthCallback$Stub;->onHealthChannelStateChange(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelFileDescriptor;I)V

    #@71
    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@74
    .line 96
    return v8

    #@75
    .line 72
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v6    # "_arg5":I
    :cond_1
    const/4 v1, 0x0

    #@76
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    goto :goto_1

    #@77
    .line 79
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :cond_2
    const/4 v2, 0x0

    #@78
    .local v2, "_arg1":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2

    #@79
    .line 90
    .end local v2    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    .restart local v3    # "_arg2":I
    .restart local v4    # "_arg3":I
    :cond_3
    const/4 v5, 0x0

    #@7a
    .local v5, "_arg4":Landroid/os/ParcelFileDescriptor;
    goto :goto_3

    #@7b
    .line 41
    nop

    #@7c
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
