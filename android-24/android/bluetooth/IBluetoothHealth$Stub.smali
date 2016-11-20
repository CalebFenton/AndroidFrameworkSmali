.class public abstract Landroid/bluetooth/IBluetoothHealth$Stub;
.super Landroid/os/Binder;
.source "IBluetoothHealth.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothHealth;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothHealth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothHealth$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothHealth"

.field static final TRANSACTION_connectChannelToSink:I = 0x4

.field static final TRANSACTION_connectChannelToSource:I = 0x3

.field static final TRANSACTION_disconnectChannel:I = 0x5

.field static final TRANSACTION_getConnectedHealthDevices:I = 0x7

.field static final TRANSACTION_getHealthDeviceConnectionState:I = 0x9

.field static final TRANSACTION_getHealthDevicesMatchingConnectionStates:I = 0x8

.field static final TRANSACTION_getMainChannelFd:I = 0x6

.field static final TRANSACTION_registerAppConfiguration:I = 0x1

.field static final TRANSACTION_unregisterAppConfiguration:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "android.bluetooth.IBluetoothHealth"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothHealth$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHealth;
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
    const-string/jumbo v1, "android.bluetooth.IBluetoothHealth"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/bluetooth/IBluetoothHealth;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Landroid/bluetooth/IBluetoothHealth;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothHealth$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothHealth$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 11
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
    .line 43
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 214
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v10

    #@7
    return v10

    #@8
    .line 47
    :sswitch_0
    const-string/jumbo v10, "android.bluetooth.IBluetoothHealth"

    #@b
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    .line 48
    const/4 v10, 0x1

    #@f
    return v10

    #@10
    .line 52
    :sswitch_1
    const-string/jumbo v10, "android.bluetooth.IBluetoothHealth"

    #@13
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v10

    #@1a
    if-eqz v10, :cond_0

    #@1c
    .line 55
    sget-object v10, Landroid/bluetooth/BluetoothHealthAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@21
    move-result-object v1

    #@22
    check-cast v1, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    #@24
    .line 61
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@27
    move-result-object v10

    #@28
    invoke-static {v10}, Landroid/bluetooth/IBluetoothHealthCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHealthCallback;

    #@2b
    move-result-object v4

    #@2c
    .line 62
    .local v4, "_arg1":Landroid/bluetooth/IBluetoothHealthCallback;
    invoke-virtual {p0, v1, v4}, Landroid/bluetooth/IBluetoothHealth$Stub;->registerAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/IBluetoothHealthCallback;)Z

    #@2f
    move-result v9

    #@30
    .line 63
    .local v9, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@33
    .line 64
    if-eqz v9, :cond_1

    #@35
    const/4 v10, 0x1

    #@36
    :goto_1
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@39
    .line 65
    const/4 v10, 0x1

    #@3a
    return v10

    #@3b
    .line 58
    .end local v4    # "_arg1":Landroid/bluetooth/IBluetoothHealthCallback;
    .end local v9    # "_result":Z
    :cond_0
    const/4 v1, 0x0

    #@3c
    .local v1, "_arg0":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    goto :goto_0

    #@3d
    .line 64
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .restart local v4    # "_arg1":Landroid/bluetooth/IBluetoothHealthCallback;
    .restart local v9    # "_result":Z
    :cond_1
    const/4 v10, 0x0

    #@3e
    goto :goto_1

    #@3f
    .line 69
    .end local v4    # "_arg1":Landroid/bluetooth/IBluetoothHealthCallback;
    .end local v9    # "_result":Z
    :sswitch_2
    const-string/jumbo v10, "android.bluetooth.IBluetoothHealth"

    #@42
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@45
    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@48
    move-result v10

    #@49
    if-eqz v10, :cond_2

    #@4b
    .line 72
    sget-object v10, Landroid/bluetooth/BluetoothHealthAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4d
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@50
    move-result-object v1

    #@51
    check-cast v1, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    #@53
    .line 77
    :goto_2
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHealth$Stub;->unregisterAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z

    #@56
    move-result v9

    #@57
    .line 78
    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@5a
    .line 79
    if-eqz v9, :cond_3

    #@5c
    const/4 v10, 0x1

    #@5d
    :goto_3
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@60
    .line 80
    const/4 v10, 0x1

    #@61
    return v10

    #@62
    .line 75
    .end local v9    # "_result":Z
    :cond_2
    const/4 v1, 0x0

    #@63
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    goto :goto_2

    #@64
    .line 79
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .restart local v9    # "_result":Z
    :cond_3
    const/4 v10, 0x0

    #@65
    goto :goto_3

    #@66
    .line 84
    .end local v9    # "_result":Z
    :sswitch_3
    const-string/jumbo v10, "android.bluetooth.IBluetoothHealth"

    #@69
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6c
    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@6f
    move-result v10

    #@70
    if-eqz v10, :cond_4

    #@72
    .line 87
    sget-object v10, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@74
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@77
    move-result-object v0

    #@78
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    #@7a
    .line 93
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@7d
    move-result v10

    #@7e
    if-eqz v10, :cond_5

    #@80
    .line 94
    sget-object v10, Landroid/bluetooth/BluetoothHealthAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@82
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@85
    move-result-object v3

    #@86
    check-cast v3, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    #@88
    .line 99
    :goto_5
    invoke-virtual {p0, v0, v3}, Landroid/bluetooth/IBluetoothHealth$Stub;->connectChannelToSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z

    #@8b
    move-result v9

    #@8c
    .line 100
    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@8f
    .line 101
    if-eqz v9, :cond_6

    #@91
    const/4 v10, 0x1

    #@92
    :goto_6
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@95
    .line 102
    const/4 v10, 0x1

    #@96
    return v10

    #@97
    .line 90
    .end local v9    # "_result":Z
    :cond_4
    const/4 v0, 0x0

    #@98
    .local v0, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_4

    #@99
    .line 97
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_5
    const/4 v3, 0x0

    #@9a
    .local v3, "_arg1":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    goto :goto_5

    #@9b
    .line 101
    .end local v3    # "_arg1":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .restart local v9    # "_result":Z
    :cond_6
    const/4 v10, 0x0

    #@9c
    goto :goto_6

    #@9d
    .line 106
    .end local v9    # "_result":Z
    :sswitch_4
    const-string/jumbo v10, "android.bluetooth.IBluetoothHealth"

    #@a0
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a3
    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@a6
    move-result v10

    #@a7
    if-eqz v10, :cond_7

    #@a9
    .line 109
    sget-object v10, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@ab
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@ae
    move-result-object v0

    #@af
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    #@b1
    .line 115
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@b4
    move-result v10

    #@b5
    if-eqz v10, :cond_8

    #@b7
    .line 116
    sget-object v10, Landroid/bluetooth/BluetoothHealthAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@b9
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@bc
    move-result-object v3

    #@bd
    check-cast v3, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    #@bf
    .line 122
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@c2
    move-result v5

    #@c3
    .line 123
    .local v5, "_arg2":I
    invoke-virtual {p0, v0, v3, v5}, Landroid/bluetooth/IBluetoothHealth$Stub;->connectChannelToSink(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z

    #@c6
    move-result v9

    #@c7
    .line 124
    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@ca
    .line 125
    if-eqz v9, :cond_9

    #@cc
    const/4 v10, 0x1

    #@cd
    :goto_9
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@d0
    .line 126
    const/4 v10, 0x1

    #@d1
    return v10

    #@d2
    .line 112
    .end local v5    # "_arg2":I
    .end local v9    # "_result":Z
    :cond_7
    const/4 v0, 0x0

    #@d3
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_7

    #@d4
    .line 119
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_8
    const/4 v3, 0x0

    #@d5
    .restart local v3    # "_arg1":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    goto :goto_8

    #@d6
    .line 125
    .end local v3    # "_arg1":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .restart local v5    # "_arg2":I
    .restart local v9    # "_result":Z
    :cond_9
    const/4 v10, 0x0

    #@d7
    goto :goto_9

    #@d8
    .line 130
    .end local v5    # "_arg2":I
    .end local v9    # "_result":Z
    :sswitch_5
    const-string/jumbo v10, "android.bluetooth.IBluetoothHealth"

    #@db
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@de
    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@e1
    move-result v10

    #@e2
    if-eqz v10, :cond_a

    #@e4
    .line 133
    sget-object v10, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@e6
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@e9
    move-result-object v0

    #@ea
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    #@ec
    .line 139
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@ef
    move-result v10

    #@f0
    if-eqz v10, :cond_b

    #@f2
    .line 140
    sget-object v10, Landroid/bluetooth/BluetoothHealthAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@f4
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@f7
    move-result-object v3

    #@f8
    check-cast v3, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    #@fa
    .line 146
    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@fd
    move-result v5

    #@fe
    .line 147
    .restart local v5    # "_arg2":I
    invoke-virtual {p0, v0, v3, v5}, Landroid/bluetooth/IBluetoothHealth$Stub;->disconnectChannel(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z

    #@101
    move-result v9

    #@102
    .line 148
    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@105
    .line 149
    if-eqz v9, :cond_c

    #@107
    const/4 v10, 0x1

    #@108
    :goto_c
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@10b
    .line 150
    const/4 v10, 0x1

    #@10c
    return v10

    #@10d
    .line 136
    .end local v5    # "_arg2":I
    .end local v9    # "_result":Z
    :cond_a
    const/4 v0, 0x0

    #@10e
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_a

    #@10f
    .line 143
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_b
    const/4 v3, 0x0

    #@110
    .restart local v3    # "_arg1":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    goto :goto_b

    #@111
    .line 149
    .end local v3    # "_arg1":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .restart local v5    # "_arg2":I
    .restart local v9    # "_result":Z
    :cond_c
    const/4 v10, 0x0

    #@112
    goto :goto_c

    #@113
    .line 154
    .end local v5    # "_arg2":I
    .end local v9    # "_result":Z
    :sswitch_6
    const-string/jumbo v10, "android.bluetooth.IBluetoothHealth"

    #@116
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@119
    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@11c
    move-result v10

    #@11d
    if-eqz v10, :cond_d

    #@11f
    .line 157
    sget-object v10, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@121
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@124
    move-result-object v0

    #@125
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    #@127
    .line 163
    :goto_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@12a
    move-result v10

    #@12b
    if-eqz v10, :cond_e

    #@12d
    .line 164
    sget-object v10, Landroid/bluetooth/BluetoothHealthAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@12f
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@132
    move-result-object v3

    #@133
    check-cast v3, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    #@135
    .line 169
    :goto_e
    invoke-virtual {p0, v0, v3}, Landroid/bluetooth/IBluetoothHealth$Stub;->getMainChannelFd(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Landroid/os/ParcelFileDescriptor;

    #@138
    move-result-object v7

    #@139
    .line 170
    .local v7, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@13c
    .line 171
    if-eqz v7, :cond_f

    #@13e
    .line 172
    const/4 v10, 0x1

    #@13f
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@142
    .line 173
    const/4 v10, 0x1

    #@143
    invoke-virtual {v7, p3, v10}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@146
    .line 178
    :goto_f
    const/4 v10, 0x1

    #@147
    return v10

    #@148
    .line 160
    .end local v7    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_d
    const/4 v0, 0x0

    #@149
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_d

    #@14a
    .line 167
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_e
    const/4 v3, 0x0

    #@14b
    .restart local v3    # "_arg1":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    goto :goto_e

    #@14c
    .line 176
    .end local v3    # "_arg1":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .restart local v7    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_f
    const/4 v10, 0x0

    #@14d
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@150
    goto :goto_f

    #@151
    .line 182
    .end local v7    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_7
    const-string/jumbo v10, "android.bluetooth.IBluetoothHealth"

    #@154
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@157
    .line 183
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHealth$Stub;->getConnectedHealthDevices()Ljava/util/List;

    #@15a
    move-result-object v8

    #@15b
    .line 184
    .local v8, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@15e
    .line 185
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@161
    .line 186
    const/4 v10, 0x1

    #@162
    return v10

    #@163
    .line 190
    .end local v8    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_8
    const-string/jumbo v10, "android.bluetooth.IBluetoothHealth"

    #@166
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@169
    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    #@16c
    move-result-object v2

    #@16d
    .line 193
    .local v2, "_arg0":[I
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothHealth$Stub;->getHealthDevicesMatchingConnectionStates([I)Ljava/util/List;

    #@170
    move-result-object v8

    #@171
    .line 194
    .restart local v8    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@174
    .line 195
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@177
    .line 196
    const/4 v10, 0x1

    #@178
    return v10

    #@179
    .line 200
    .end local v2    # "_arg0":[I
    .end local v8    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_9
    const-string/jumbo v10, "android.bluetooth.IBluetoothHealth"

    #@17c
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17f
    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@182
    move-result v10

    #@183
    if-eqz v10, :cond_10

    #@185
    .line 203
    sget-object v10, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@187
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@18a
    move-result-object v0

    #@18b
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    #@18d
    .line 208
    :goto_10
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHealth$Stub;->getHealthDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    #@190
    move-result v6

    #@191
    .line 209
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@194
    .line 210
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@197
    .line 211
    const/4 v10, 0x1

    #@198
    return v10

    #@199
    .line 206
    .end local v6    # "_result":I
    :cond_10
    const/4 v0, 0x0

    #@19a
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_10

    #@19b
    .line 43
    nop

    #@19c
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
