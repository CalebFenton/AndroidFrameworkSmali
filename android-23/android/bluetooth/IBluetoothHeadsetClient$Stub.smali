.class public abstract Landroid/bluetooth/IBluetoothHeadsetClient$Stub;
.super Landroid/os/Binder;
.source "IBluetoothHeadsetClient.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothHeadsetClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothHeadsetClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothHeadsetClient$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothHeadsetClient"

.field static final TRANSACTION_acceptCall:I = 0xe

.field static final TRANSACTION_acceptIncomingConnect:I = 0x3

.field static final TRANSACTION_connect:I = 0x1

.field static final TRANSACTION_connectAudio:I = 0x1a

.field static final TRANSACTION_dial:I = 0x15

.field static final TRANSACTION_dialMemory:I = 0x16

.field static final TRANSACTION_disconnect:I = 0x2

.field static final TRANSACTION_disconnectAudio:I = 0x1b

.field static final TRANSACTION_enterPrivateMode:I = 0x12

.field static final TRANSACTION_explicitCallTransfer:I = 0x13

.field static final TRANSACTION_getAudioState:I = 0x19

.field static final TRANSACTION_getConnectedDevices:I = 0x5

.field static final TRANSACTION_getConnectionState:I = 0x7

.field static final TRANSACTION_getCurrentAgEvents:I = 0xd

.field static final TRANSACTION_getCurrentAgFeatures:I = 0x1c

.field static final TRANSACTION_getCurrentCalls:I = 0xc

.field static final TRANSACTION_getDevicesMatchingConnectionStates:I = 0x6

.field static final TRANSACTION_getLastVoiceTagNumber:I = 0x18

.field static final TRANSACTION_getPriority:I = 0x9

.field static final TRANSACTION_holdCall:I = 0xf

.field static final TRANSACTION_redial:I = 0x14

.field static final TRANSACTION_rejectCall:I = 0x10

.field static final TRANSACTION_rejectIncomingConnect:I = 0x4

.field static final TRANSACTION_sendDTMF:I = 0x17

.field static final TRANSACTION_setPriority:I = 0x8

.field static final TRANSACTION_startVoiceRecognition:I = 0xa

.field static final TRANSACTION_stopVoiceRecognition:I = 0xb

.field static final TRANSACTION_terminateCall:I = 0x11


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "android.bluetooth.IBluetoothHeadsetClient"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHeadsetClient;
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
    const-string/jumbo v1, "android.bluetooth.IBluetoothHeadsetClient"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/bluetooth/IBluetoothHeadsetClient;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Landroid/bluetooth/IBluetoothHeadsetClient;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothHeadsetClient$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .line 471
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v10

    #@7
    return v10

    #@8
    .line 47
    :sswitch_0
    const-string/jumbo v10, "android.bluetooth.IBluetoothHeadsetClient"

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
    const-string/jumbo v10, "android.bluetooth.IBluetoothHeadsetClient"

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
    sget-object v10, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    #@24
    .line 60
    :goto_0
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    #@27
    move-result v9

    #@28
    .line 61
    .local v9, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2b
    .line 62
    if-eqz v9, :cond_1

    #@2d
    const/4 v10, 0x1

    #@2e
    :goto_1
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@31
    .line 63
    const/4 v10, 0x1

    #@32
    return v10

    #@33
    .line 58
    .end local v9    # "_result":Z
    :cond_0
    const/4 v0, 0x0

    #@34
    .local v0, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_0

    #@35
    .line 62
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v9    # "_result":Z
    :cond_1
    const/4 v10, 0x0

    #@36
    goto :goto_1

    #@37
    .line 67
    .end local v9    # "_result":Z
    :sswitch_2
    const-string/jumbo v10, "android.bluetooth.IBluetoothHeadsetClient"

    #@3a
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3d
    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@40
    move-result v10

    #@41
    if-eqz v10, :cond_2

    #@43
    .line 70
    sget-object v10, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@45
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@48
    move-result-object v0

    #@49
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    #@4b
    .line 75
    :goto_2
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    #@4e
    move-result v9

    #@4f
    .line 76
    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@52
    .line 77
    if-eqz v9, :cond_3

    #@54
    const/4 v10, 0x1

    #@55
    :goto_3
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@58
    .line 78
    const/4 v10, 0x1

    #@59
    return v10

    #@5a
    .line 73
    .end local v9    # "_result":Z
    :cond_2
    const/4 v0, 0x0

    #@5b
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2

    #@5c
    .line 77
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v9    # "_result":Z
    :cond_3
    const/4 v10, 0x0

    #@5d
    goto :goto_3

    #@5e
    .line 82
    .end local v9    # "_result":Z
    :sswitch_3
    const-string/jumbo v10, "android.bluetooth.IBluetoothHeadsetClient"

    #@61
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@64
    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@67
    move-result v10

    #@68
    if-eqz v10, :cond_4

    #@6a
    .line 85
    sget-object v10, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@6c
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@6f
    move-result-object v0

    #@70
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    #@72
    .line 90
    :goto_4
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->acceptIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z

    #@75
    move-result v9

    #@76
    .line 91
    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@79
    .line 92
    if-eqz v9, :cond_5

    #@7b
    const/4 v10, 0x1

    #@7c
    :goto_5
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@7f
    .line 93
    const/4 v10, 0x1

    #@80
    return v10

    #@81
    .line 88
    .end local v9    # "_result":Z
    :cond_4
    const/4 v0, 0x0

    #@82
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_4

    #@83
    .line 92
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v9    # "_result":Z
    :cond_5
    const/4 v10, 0x0

    #@84
    goto :goto_5

    #@85
    .line 97
    .end local v9    # "_result":Z
    :sswitch_4
    const-string/jumbo v10, "android.bluetooth.IBluetoothHeadsetClient"

    #@88
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8b
    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@8e
    move-result v10

    #@8f
    if-eqz v10, :cond_6

    #@91
    .line 100
    sget-object v10, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@93
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@96
    move-result-object v0

    #@97
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    #@99
    .line 105
    :goto_6
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->rejectIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z

    #@9c
    move-result v9

    #@9d
    .line 106
    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@a0
    .line 107
    if-eqz v9, :cond_7

    #@a2
    const/4 v10, 0x1

    #@a3
    :goto_7
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@a6
    .line 108
    const/4 v10, 0x1

    #@a7
    return v10

    #@a8
    .line 103
    .end local v9    # "_result":Z
    :cond_6
    const/4 v0, 0x0

    #@a9
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_6

    #@aa
    .line 107
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v9    # "_result":Z
    :cond_7
    const/4 v10, 0x0

    #@ab
    goto :goto_7

    #@ac
    .line 112
    .end local v9    # "_result":Z
    :sswitch_5
    const-string/jumbo v10, "android.bluetooth.IBluetoothHeadsetClient"

    #@af
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b2
    .line 113
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->getConnectedDevices()Ljava/util/List;

    #@b5
    move-result-object v7

    #@b6
    .line 114
    .local v7, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@b9
    .line 115
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@bc
    .line 116
    const/4 v10, 0x1

    #@bd
    return v10

    #@be
    .line 120
    .end local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_6
    const-string/jumbo v10, "android.bluetooth.IBluetoothHeadsetClient"

    #@c1
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c4
    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    #@c7
    move-result-object v1

    #@c8
    .line 123
    .local v1, "_arg0":[I
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    #@cb
    move-result-object v7

    #@cc
    .line 124
    .restart local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@cf
    .line 125
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@d2
    .line 126
    const/4 v10, 0x1

    #@d3
    return v10

    #@d4
    .line 130
    .end local v1    # "_arg0":[I
    .end local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_7
    const-string/jumbo v10, "android.bluetooth.IBluetoothHeadsetClient"

    #@d7
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@da
    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@dd
    move-result v10

    #@de
    if-eqz v10, :cond_8

    #@e0
    .line 133
    sget-object v10, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@e2
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@e5
    move-result-object v0

    #@e6
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    #@e8
    .line 138
    :goto_8
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    #@eb
    move-result v5

    #@ec
    .line 139
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@ef
    .line 140
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@f2
    .line 141
    const/4 v10, 0x1

    #@f3
    return v10

    #@f4
    .line 136
    .end local v5    # "_result":I
    :cond_8
    const/4 v0, 0x0

    #@f5
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_8

    #@f6
    .line 145
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_8
    const-string/jumbo v10, "android.bluetooth.IBluetoothHeadsetClient"

    #@f9
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@fc
    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@ff
    move-result v10

    #@100
    if-eqz v10, :cond_9

    #@102
    .line 148
    sget-object v10, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@104
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@107
    move-result-object v0

    #@108
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    #@10a
    .line 154
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@10d
    move-result v3

    #@10e
    .line 155
    .local v3, "_arg1":I
    invoke-virtual {p0, v0, v3}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    #@111
    move-result v9

    #@112
    .line 156
    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@115
    .line 157
    if-eqz v9, :cond_a

    #@117
    const/4 v10, 0x1

    #@118
    :goto_a
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@11b
    .line 158
    const/4 v10, 0x1

    #@11c
    return v10

    #@11d
    .line 151
    .end local v3    # "_arg1":I
    .end local v9    # "_result":Z
    :cond_9
    const/4 v0, 0x0

    #@11e
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_9

    #@11f
    .line 157
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v3    # "_arg1":I
    .restart local v9    # "_result":Z
    :cond_a
    const/4 v10, 0x0

    #@120
    goto :goto_a

    #@121
    .line 162
    .end local v3    # "_arg1":I
    .end local v9    # "_result":Z
    :sswitch_9
    const-string/jumbo v10, "android.bluetooth.IBluetoothHeadsetClient"

    #@124
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@127
    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@12a
    move-result v10

    #@12b
    if-eqz v10, :cond_b

    #@12d
    .line 165
    sget-object v10, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@12f
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@132
    move-result-object v0

    #@133
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    #@135
    .line 170
    :goto_b
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    #@138
    move-result v5

    #@139
    .line 171
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@13c
    .line 172
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@13f
    .line 173
    const/4 v10, 0x1

    #@140
    return v10

    #@141
    .line 168
    .end local v5    # "_result":I
    :cond_b
    const/4 v0, 0x0

    #@142
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_b

    #@143
    .line 177
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_a
    const-string/jumbo v10, "android.bluetooth.IBluetoothHeadsetClient"

    #@146
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@149
    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@14c
    move-result v10

    #@14d
    if-eqz v10, :cond_c

    #@14f
    .line 180
    sget-object v10, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@151
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@154
    move-result-object v0

    #@155
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    #@157
    .line 185
    :goto_c
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    #@15a
    move-result v9

    #@15b
    .line 186
    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@15e
    .line 187
    if-eqz v9, :cond_d

    #@160
    const/4 v10, 0x1

    #@161
    :goto_d
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@164
    .line 188
    const/4 v10, 0x1

    #@165
    return v10

    #@166
    .line 183
    .end local v9    # "_result":Z
    :cond_c
    const/4 v0, 0x0

    #@167
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_c

    #@168
    .line 187
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v9    # "_result":Z
    :cond_d
    const/4 v10, 0x0

    #@169
    goto :goto_d

    #@16a
    .line 192
    .end local v9    # "_result":Z
    :sswitch_b
    const-string/jumbo v10, "android.bluetooth.IBluetoothHeadsetClient"

    #@16d
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@170
    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@173
    move-result v10

    #@174
    if-eqz v10, :cond_e

    #@176
    .line 195
    sget-object v10, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@178
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@17b
    move-result-object v0

    #@17c
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    #@17e
    .line 200
    :goto_e
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    #@181
    move-result v9

    #@182
    .line 201
    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@185
    .line 202
    if-eqz v9, :cond_f

    #@187
    const/4 v10, 0x1

    #@188
    :goto_f
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@18b
    .line 203
    const/4 v10, 0x1

    #@18c
    return v10

    #@18d
    .line 198
    .end local v9    # "_result":Z
    :cond_e
    const/4 v0, 0x0

    #@18e
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_e

    #@18f
    .line 202
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v9    # "_result":Z
    :cond_f
    const/4 v10, 0x0

    #@190
    goto :goto_f

    #@191
    .line 207
    .end local v9    # "_result":Z
    :sswitch_c
    const-string/jumbo v10, "android.bluetooth.IBluetoothHeadsetClient"

    #@194
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@197
    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19a
    move-result v10

    #@19b
    if-eqz v10, :cond_10

    #@19d
    .line 210
    sget-object v10, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@19f
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1a2
    move-result-object v0

    #@1a3
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    #@1a5
    .line 215
    :goto_10
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->getCurrentCalls(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;

    #@1a8
    move-result-object v8

    #@1a9
    .line 216
    .local v8, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothHeadsetClientCall;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1ac
    .line 217
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@1af
    .line 218
    const/4 v10, 0x1

    #@1b0
    return v10

    #@1b1
    .line 213
    .end local v8    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothHeadsetClientCall;>;"
    :cond_10
    const/4 v0, 0x0

    #@1b2
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_10

    #@1b3
    .line 222
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_d
    const-string/jumbo v10, "android.bluetooth.IBluetoothHeadsetClient"

    #@1b6
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1b9
    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1bc
    move-result v10

    #@1bd
    if-eqz v10, :cond_11

    #@1bf
    .line 225
    sget-object v10, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1c1
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1c4
    move-result-object v0

    #@1c5
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    #@1c7
    .line 230
    :goto_11
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->getCurrentAgEvents(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    #@1ca
    move-result-object v6

    #@1cb
    .line 231
    .local v6, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1ce
    .line 232
    if-eqz v6, :cond_12

    #@1d0
    .line 233
    const/4 v10, 0x1

    #@1d1
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@1d4
    .line 234
    const/4 v10, 0x1

    #@1d5
    invoke-virtual {v6, p3, v10}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@1d8
    .line 239
    :goto_12
    const/4 v10, 0x1

    #@1d9
    return v10

    #@1da
    .line 228
    .end local v6    # "_result":Landroid/os/Bundle;
    :cond_11
    const/4 v0, 0x0

    #@1db
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_11

    #@1dc
    .line 237
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v6    # "_result":Landroid/os/Bundle;
    :cond_12
    const/4 v10, 0x0

    #@1dd
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@1e0
    goto :goto_12

    #@1e1
    .line 243
    .end local v6    # "_result":Landroid/os/Bundle;
    :sswitch_e
    const-string/jumbo v10, "android.bluetooth.IBluetoothHeadsetClient"

    #@1e4
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1e7
    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1ea
    move-result v10

    #@1eb
    if-eqz v10, :cond_13

    #@1ed
    .line 246
    sget-object v10, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1ef
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1f2
    move-result-object v0

    #@1f3
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    #@1f5
    .line 252
    :goto_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1f8
    move-result v3

    #@1f9
    .line 253
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v0, v3}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->acceptCall(Landroid/bluetooth/BluetoothDevice;I)Z

    #@1fc
    move-result v9

    #@1fd
    .line 254
    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@200
    .line 255
    if-eqz v9, :cond_14

    #@202
    const/4 v10, 0x1

    #@203
    :goto_14
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@206
    .line 256
    const/4 v10, 0x1

    #@207
    return v10

    #@208
    .line 249
    .end local v3    # "_arg1":I
    .end local v9    # "_result":Z
    :cond_13
    const/4 v0, 0x0

    #@209
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_13

    #@20a
    .line 255
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v3    # "_arg1":I
    .restart local v9    # "_result":Z
    :cond_14
    const/4 v10, 0x0

    #@20b
    goto :goto_14

    #@20c
    .line 260
    .end local v3    # "_arg1":I
    .end local v9    # "_result":Z
    :sswitch_f
    const-string/jumbo v10, "android.bluetooth.IBluetoothHeadsetClient"

    #@20f
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@212
    .line 262
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@215
    move-result v10

    #@216
    if-eqz v10, :cond_15

    #@218
    .line 263
    sget-object v10, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@21a
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@21d
    move-result-object v0

    #@21e
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    #@220
    .line 268
    :goto_15
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->holdCall(Landroid/bluetooth/BluetoothDevice;)Z

    #@223
    move-result v9

    #@224
    .line 269
    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@227
    .line 270
    if-eqz v9, :cond_16

    #@229
    const/4 v10, 0x1

    #@22a
    :goto_16
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@22d
    .line 271
    const/4 v10, 0x1

    #@22e
    return v10

    #@22f
    .line 266
    .end local v9    # "_result":Z
    :cond_15
    const/4 v0, 0x0

    #@230
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_15

    #@231
    .line 270
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v9    # "_result":Z
    :cond_16
    const/4 v10, 0x0

    #@232
    goto :goto_16

    #@233
    .line 275
    .end local v9    # "_result":Z
    :sswitch_10
    const-string/jumbo v10, "android.bluetooth.IBluetoothHeadsetClient"

    #@236
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@239
    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@23c
    move-result v10

    #@23d
    if-eqz v10, :cond_17

    #@23f
    .line 278
    sget-object v10, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@241
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@244
    move-result-object v0

    #@245
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    #@247
    .line 283
    :goto_17
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->rejectCall(Landroid/bluetooth/BluetoothDevice;)Z

    #@24a
    move-result v9

    #@24b
    .line 284
    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@24e
    .line 285
    if-eqz v9, :cond_18

    #@250
    const/4 v10, 0x1

    #@251
    :goto_18
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@254
    .line 286
    const/4 v10, 0x1

    #@255
    return v10

    #@256
    .line 281
    .end local v9    # "_result":Z
    :cond_17
    const/4 v0, 0x0

    #@257
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_17

    #@258
    .line 285
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v9    # "_result":Z
    :cond_18
    const/4 v10, 0x0

    #@259
    goto :goto_18

    #@25a
    .line 290
    .end local v9    # "_result":Z
    :sswitch_11
    const-string/jumbo v10, "android.bluetooth.IBluetoothHeadsetClient"

    #@25d
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@260
    .line 292
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@263
    move-result v10

    #@264
    if-eqz v10, :cond_19

    #@266
    .line 293
    sget-object v10, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@268
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@26b
    move-result-object v0

    #@26c
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    #@26e
    .line 299
    :goto_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@271
    move-result v3

    #@272
    .line 300
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v0, v3}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->terminateCall(Landroid/bluetooth/BluetoothDevice;I)Z

    #@275
    move-result v9

    #@276
    .line 301
    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@279
    .line 302
    if-eqz v9, :cond_1a

    #@27b
    const/4 v10, 0x1

    #@27c
    :goto_1a
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@27f
    .line 303
    const/4 v10, 0x1

    #@280
    return v10

    #@281
    .line 296
    .end local v3    # "_arg1":I
    .end local v9    # "_result":Z
    :cond_19
    const/4 v0, 0x0

    #@282
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_19

    #@283
    .line 302
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v3    # "_arg1":I
    .restart local v9    # "_result":Z
    :cond_1a
    const/4 v10, 0x0

    #@284
    goto :goto_1a

    #@285
    .line 307
    .end local v3    # "_arg1":I
    .end local v9    # "_result":Z
    :sswitch_12
    const-string/jumbo v10, "android.bluetooth.IBluetoothHeadsetClient"

    #@288
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@28b
    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@28e
    move-result v10

    #@28f
    if-eqz v10, :cond_1b

    #@291
    .line 310
    sget-object v10, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@293
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@296
    move-result-object v0

    #@297
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    #@299
    .line 316
    :goto_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@29c
    move-result v3

    #@29d
    .line 317
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v0, v3}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->enterPrivateMode(Landroid/bluetooth/BluetoothDevice;I)Z

    #@2a0
    move-result v9

    #@2a1
    .line 318
    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2a4
    .line 319
    if-eqz v9, :cond_1c

    #@2a6
    const/4 v10, 0x1

    #@2a7
    :goto_1c
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@2aa
    .line 320
    const/4 v10, 0x1

    #@2ab
    return v10

    #@2ac
    .line 313
    .end local v3    # "_arg1":I
    .end local v9    # "_result":Z
    :cond_1b
    const/4 v0, 0x0

    #@2ad
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1b

    #@2ae
    .line 319
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v3    # "_arg1":I
    .restart local v9    # "_result":Z
    :cond_1c
    const/4 v10, 0x0

    #@2af
    goto :goto_1c

    #@2b0
    .line 324
    .end local v3    # "_arg1":I
    .end local v9    # "_result":Z
    :sswitch_13
    const-string/jumbo v10, "android.bluetooth.IBluetoothHeadsetClient"

    #@2b3
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2b6
    .line 326
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2b9
    move-result v10

    #@2ba
    if-eqz v10, :cond_1d

    #@2bc
    .line 327
    sget-object v10, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2be
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2c1
    move-result-object v0

    #@2c2
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    #@2c4
    .line 332
    :goto_1d
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->explicitCallTransfer(Landroid/bluetooth/BluetoothDevice;)Z

    #@2c7
    move-result v9

    #@2c8
    .line 333
    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2cb
    .line 334
    if-eqz v9, :cond_1e

    #@2cd
    const/4 v10, 0x1

    #@2ce
    :goto_1e
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@2d1
    .line 335
    const/4 v10, 0x1

    #@2d2
    return v10

    #@2d3
    .line 330
    .end local v9    # "_result":Z
    :cond_1d
    const/4 v0, 0x0

    #@2d4
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1d

    #@2d5
    .line 334
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v9    # "_result":Z
    :cond_1e
    const/4 v10, 0x0

    #@2d6
    goto :goto_1e

    #@2d7
    .line 339
    .end local v9    # "_result":Z
    :sswitch_14
    const-string/jumbo v10, "android.bluetooth.IBluetoothHeadsetClient"

    #@2da
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2dd
    .line 341
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2e0
    move-result v10

    #@2e1
    if-eqz v10, :cond_1f

    #@2e3
    .line 342
    sget-object v10, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2e5
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2e8
    move-result-object v0

    #@2e9
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    #@2eb
    .line 347
    :goto_1f
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->redial(Landroid/bluetooth/BluetoothDevice;)Z

    #@2ee
    move-result v9

    #@2ef
    .line 348
    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2f2
    .line 349
    if-eqz v9, :cond_20

    #@2f4
    const/4 v10, 0x1

    #@2f5
    :goto_20
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@2f8
    .line 350
    const/4 v10, 0x1

    #@2f9
    return v10

    #@2fa
    .line 345
    .end local v9    # "_result":Z
    :cond_1f
    const/4 v0, 0x0

    #@2fb
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1f

    #@2fc
    .line 349
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v9    # "_result":Z
    :cond_20
    const/4 v10, 0x0

    #@2fd
    goto :goto_20

    #@2fe
    .line 354
    .end local v9    # "_result":Z
    :sswitch_15
    const-string/jumbo v10, "android.bluetooth.IBluetoothHeadsetClient"

    #@301
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@304
    .line 356
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@307
    move-result v10

    #@308
    if-eqz v10, :cond_21

    #@30a
    .line 357
    sget-object v10, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@30c
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@30f
    move-result-object v0

    #@310
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    #@312
    .line 363
    :goto_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@315
    move-result-object v4

    #@316
    .line 364
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v4}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->dial(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    #@319
    move-result v9

    #@31a
    .line 365
    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@31d
    .line 366
    if-eqz v9, :cond_22

    #@31f
    const/4 v10, 0x1

    #@320
    :goto_22
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@323
    .line 367
    const/4 v10, 0x1

    #@324
    return v10

    #@325
    .line 360
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v9    # "_result":Z
    :cond_21
    const/4 v0, 0x0

    #@326
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_21

    #@327
    .line 366
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v4    # "_arg1":Ljava/lang/String;
    .restart local v9    # "_result":Z
    :cond_22
    const/4 v10, 0x0

    #@328
    goto :goto_22

    #@329
    .line 371
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v9    # "_result":Z
    :sswitch_16
    const-string/jumbo v10, "android.bluetooth.IBluetoothHeadsetClient"

    #@32c
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@32f
    .line 373
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@332
    move-result v10

    #@333
    if-eqz v10, :cond_23

    #@335
    .line 374
    sget-object v10, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@337
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@33a
    move-result-object v0

    #@33b
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    #@33d
    .line 380
    :goto_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@340
    move-result v3

    #@341
    .line 381
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v0, v3}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->dialMemory(Landroid/bluetooth/BluetoothDevice;I)Z

    #@344
    move-result v9

    #@345
    .line 382
    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@348
    .line 383
    if-eqz v9, :cond_24

    #@34a
    const/4 v10, 0x1

    #@34b
    :goto_24
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@34e
    .line 384
    const/4 v10, 0x1

    #@34f
    return v10

    #@350
    .line 377
    .end local v3    # "_arg1":I
    .end local v9    # "_result":Z
    :cond_23
    const/4 v0, 0x0

    #@351
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_23

    #@352
    .line 383
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v3    # "_arg1":I
    .restart local v9    # "_result":Z
    :cond_24
    const/4 v10, 0x0

    #@353
    goto :goto_24

    #@354
    .line 388
    .end local v3    # "_arg1":I
    .end local v9    # "_result":Z
    :sswitch_17
    const-string/jumbo v10, "android.bluetooth.IBluetoothHeadsetClient"

    #@357
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@35a
    .line 390
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@35d
    move-result v10

    #@35e
    if-eqz v10, :cond_25

    #@360
    .line 391
    sget-object v10, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@362
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@365
    move-result-object v0

    #@366
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    #@368
    .line 397
    :goto_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    #@36b
    move-result v2

    #@36c
    .line 398
    .local v2, "_arg1":B
    invoke-virtual {p0, v0, v2}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->sendDTMF(Landroid/bluetooth/BluetoothDevice;B)Z

    #@36f
    move-result v9

    #@370
    .line 399
    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@373
    .line 400
    if-eqz v9, :cond_26

    #@375
    const/4 v10, 0x1

    #@376
    :goto_26
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@379
    .line 401
    const/4 v10, 0x1

    #@37a
    return v10

    #@37b
    .line 394
    .end local v2    # "_arg1":B
    .end local v9    # "_result":Z
    :cond_25
    const/4 v0, 0x0

    #@37c
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_25

    #@37d
    .line 400
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v2    # "_arg1":B
    .restart local v9    # "_result":Z
    :cond_26
    const/4 v10, 0x0

    #@37e
    goto :goto_26

    #@37f
    .line 405
    .end local v2    # "_arg1":B
    .end local v9    # "_result":Z
    :sswitch_18
    const-string/jumbo v10, "android.bluetooth.IBluetoothHeadsetClient"

    #@382
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@385
    .line 407
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@388
    move-result v10

    #@389
    if-eqz v10, :cond_27

    #@38b
    .line 408
    sget-object v10, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@38d
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@390
    move-result-object v0

    #@391
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    #@393
    .line 413
    :goto_27
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->getLastVoiceTagNumber(Landroid/bluetooth/BluetoothDevice;)Z

    #@396
    move-result v9

    #@397
    .line 414
    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@39a
    .line 415
    if-eqz v9, :cond_28

    #@39c
    const/4 v10, 0x1

    #@39d
    :goto_28
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@3a0
    .line 416
    const/4 v10, 0x1

    #@3a1
    return v10

    #@3a2
    .line 411
    .end local v9    # "_result":Z
    :cond_27
    const/4 v0, 0x0

    #@3a3
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_27

    #@3a4
    .line 415
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v9    # "_result":Z
    :cond_28
    const/4 v10, 0x0

    #@3a5
    goto :goto_28

    #@3a6
    .line 420
    .end local v9    # "_result":Z
    :sswitch_19
    const-string/jumbo v10, "android.bluetooth.IBluetoothHeadsetClient"

    #@3a9
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3ac
    .line 422
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3af
    move-result v10

    #@3b0
    if-eqz v10, :cond_29

    #@3b2
    .line 423
    sget-object v10, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3b4
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3b7
    move-result-object v0

    #@3b8
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    #@3ba
    .line 428
    :goto_29
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    #@3bd
    move-result v5

    #@3be
    .line 429
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@3c1
    .line 430
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@3c4
    .line 431
    const/4 v10, 0x1

    #@3c5
    return v10

    #@3c6
    .line 426
    .end local v5    # "_result":I
    :cond_29
    const/4 v0, 0x0

    #@3c7
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_29

    #@3c8
    .line 435
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_1a
    const-string/jumbo v10, "android.bluetooth.IBluetoothHeadsetClient"

    #@3cb
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3ce
    .line 436
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->connectAudio()Z

    #@3d1
    move-result v9

    #@3d2
    .line 437
    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@3d5
    .line 438
    if-eqz v9, :cond_2a

    #@3d7
    const/4 v10, 0x1

    #@3d8
    :goto_2a
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@3db
    .line 439
    const/4 v10, 0x1

    #@3dc
    return v10

    #@3dd
    .line 438
    :cond_2a
    const/4 v10, 0x0

    #@3de
    goto :goto_2a

    #@3df
    .line 443
    .end local v9    # "_result":Z
    :sswitch_1b
    const-string/jumbo v10, "android.bluetooth.IBluetoothHeadsetClient"

    #@3e2
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3e5
    .line 444
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->disconnectAudio()Z

    #@3e8
    move-result v9

    #@3e9
    .line 445
    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@3ec
    .line 446
    if-eqz v9, :cond_2b

    #@3ee
    const/4 v10, 0x1

    #@3ef
    :goto_2b
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@3f2
    .line 447
    const/4 v10, 0x1

    #@3f3
    return v10

    #@3f4
    .line 446
    :cond_2b
    const/4 v10, 0x0

    #@3f5
    goto :goto_2b

    #@3f6
    .line 451
    .end local v9    # "_result":Z
    :sswitch_1c
    const-string/jumbo v10, "android.bluetooth.IBluetoothHeadsetClient"

    #@3f9
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3fc
    .line 453
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3ff
    move-result v10

    #@400
    if-eqz v10, :cond_2c

    #@402
    .line 454
    sget-object v10, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@404
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@407
    move-result-object v0

    #@408
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    #@40a
    .line 459
    :goto_2c
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->getCurrentAgFeatures(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    #@40d
    move-result-object v6

    #@40e
    .line 460
    .restart local v6    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@411
    .line 461
    if-eqz v6, :cond_2d

    #@413
    .line 462
    const/4 v10, 0x1

    #@414
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@417
    .line 463
    const/4 v10, 0x1

    #@418
    invoke-virtual {v6, p3, v10}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@41b
    .line 468
    :goto_2d
    const/4 v10, 0x1

    #@41c
    return v10

    #@41d
    .line 457
    .end local v6    # "_result":Landroid/os/Bundle;
    :cond_2c
    const/4 v0, 0x0

    #@41e
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2c

    #@41f
    .line 466
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v6    # "_result":Landroid/os/Bundle;
    :cond_2d
    const/4 v10, 0x0

    #@420
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@423
    goto :goto_2d

    #@424
    .line 43
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
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
