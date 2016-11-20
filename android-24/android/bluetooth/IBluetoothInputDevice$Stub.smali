.class public abstract Landroid/bluetooth/IBluetoothInputDevice$Stub;
.super Landroid/os/Binder;
.source "IBluetoothInputDevice.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothInputDevice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothInputDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothInputDevice$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothInputDevice"

.field static final TRANSACTION_connect:I = 0x1

.field static final TRANSACTION_disconnect:I = 0x2

.field static final TRANSACTION_getConnectedDevices:I = 0x3

.field static final TRANSACTION_getConnectionState:I = 0x5

.field static final TRANSACTION_getDevicesMatchingConnectionStates:I = 0x4

.field static final TRANSACTION_getPriority:I = 0x7

.field static final TRANSACTION_getProtocolMode:I = 0x8

.field static final TRANSACTION_getReport:I = 0xb

.field static final TRANSACTION_sendData:I = 0xd

.field static final TRANSACTION_setPriority:I = 0x6

.field static final TRANSACTION_setProtocolMode:I = 0xa

.field static final TRANSACTION_setReport:I = 0xc

.field static final TRANSACTION_virtualUnplug:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "android.bluetooth.IBluetoothInputDevice"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothInputDevice$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothInputDevice;
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
    const-string/jumbo v1, "android.bluetooth.IBluetoothInputDevice"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/bluetooth/IBluetoothInputDevice;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Landroid/bluetooth/IBluetoothInputDevice;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothInputDevice$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothInputDevice$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 12
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
    .line 250
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v11

    #@7
    return v11

    #@8
    .line 47
    :sswitch_0
    const-string/jumbo v11, "android.bluetooth.IBluetoothInputDevice"

    #@b
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    .line 48
    const/4 v11, 0x1

    #@f
    return v11

    #@10
    .line 52
    :sswitch_1
    const-string/jumbo v11, "android.bluetooth.IBluetoothInputDevice"

    #@13
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v11

    #@1a
    if-eqz v11, :cond_0

    #@1c
    .line 55
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e
    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    #@24
    .line 60
    :goto_0
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothInputDevice$Stub;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    #@27
    move-result v10

    #@28
    .line 61
    .local v10, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2b
    .line 62
    if-eqz v10, :cond_1

    #@2d
    const/4 v11, 0x1

    #@2e
    :goto_1
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@31
    .line 63
    const/4 v11, 0x1

    #@32
    return v11

    #@33
    .line 58
    .end local v10    # "_result":Z
    :cond_0
    const/4 v0, 0x0

    #@34
    .local v0, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_0

    #@35
    .line 62
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v10    # "_result":Z
    :cond_1
    const/4 v11, 0x0

    #@36
    goto :goto_1

    #@37
    .line 67
    .end local v10    # "_result":Z
    :sswitch_2
    const-string/jumbo v11, "android.bluetooth.IBluetoothInputDevice"

    #@3a
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3d
    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@40
    move-result v11

    #@41
    if-eqz v11, :cond_2

    #@43
    .line 70
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@45
    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@48
    move-result-object v0

    #@49
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    #@4b
    .line 75
    :goto_2
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothInputDevice$Stub;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    #@4e
    move-result v10

    #@4f
    .line 76
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@52
    .line 77
    if-eqz v10, :cond_3

    #@54
    const/4 v11, 0x1

    #@55
    :goto_3
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@58
    .line 78
    const/4 v11, 0x1

    #@59
    return v11

    #@5a
    .line 73
    .end local v10    # "_result":Z
    :cond_2
    const/4 v0, 0x0

    #@5b
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2

    #@5c
    .line 77
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v10    # "_result":Z
    :cond_3
    const/4 v11, 0x0

    #@5d
    goto :goto_3

    #@5e
    .line 82
    .end local v10    # "_result":Z
    :sswitch_3
    const-string/jumbo v11, "android.bluetooth.IBluetoothInputDevice"

    #@61
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@64
    .line 83
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothInputDevice$Stub;->getConnectedDevices()Ljava/util/List;

    #@67
    move-result-object v9

    #@68
    .line 84
    .local v9, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@6b
    .line 85
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@6e
    .line 86
    const/4 v11, 0x1

    #@6f
    return v11

    #@70
    .line 90
    .end local v9    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_4
    const-string/jumbo v11, "android.bluetooth.IBluetoothInputDevice"

    #@73
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@76
    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    #@79
    move-result-object v1

    #@7a
    .line 93
    .local v1, "_arg0":[I
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothInputDevice$Stub;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    #@7d
    move-result-object v9

    #@7e
    .line 94
    .restart local v9    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@81
    .line 95
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@84
    .line 96
    const/4 v11, 0x1

    #@85
    return v11

    #@86
    .line 100
    .end local v1    # "_arg0":[I
    .end local v9    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_5
    const-string/jumbo v11, "android.bluetooth.IBluetoothInputDevice"

    #@89
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8c
    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@8f
    move-result v11

    #@90
    if-eqz v11, :cond_4

    #@92
    .line 103
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@94
    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@97
    move-result-object v0

    #@98
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    #@9a
    .line 108
    :goto_4
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothInputDevice$Stub;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    #@9d
    move-result v8

    #@9e
    .line 109
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@a1
    .line 110
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@a4
    .line 111
    const/4 v11, 0x1

    #@a5
    return v11

    #@a6
    .line 106
    .end local v8    # "_result":I
    :cond_4
    const/4 v0, 0x0

    #@a7
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_4

    #@a8
    .line 115
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_6
    const-string/jumbo v11, "android.bluetooth.IBluetoothInputDevice"

    #@ab
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ae
    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@b1
    move-result v11

    #@b2
    if-eqz v11, :cond_5

    #@b4
    .line 118
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@b6
    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@b9
    move-result-object v0

    #@ba
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    #@bc
    .line 124
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@bf
    move-result v3

    #@c0
    .line 125
    .local v3, "_arg1":I
    invoke-virtual {p0, v0, v3}, Landroid/bluetooth/IBluetoothInputDevice$Stub;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    #@c3
    move-result v10

    #@c4
    .line 126
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@c7
    .line 127
    if-eqz v10, :cond_6

    #@c9
    const/4 v11, 0x1

    #@ca
    :goto_6
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@cd
    .line 128
    const/4 v11, 0x1

    #@ce
    return v11

    #@cf
    .line 121
    .end local v3    # "_arg1":I
    .end local v10    # "_result":Z
    :cond_5
    const/4 v0, 0x0

    #@d0
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_5

    #@d1
    .line 127
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v3    # "_arg1":I
    .restart local v10    # "_result":Z
    :cond_6
    const/4 v11, 0x0

    #@d2
    goto :goto_6

    #@d3
    .line 132
    .end local v3    # "_arg1":I
    .end local v10    # "_result":Z
    :sswitch_7
    const-string/jumbo v11, "android.bluetooth.IBluetoothInputDevice"

    #@d6
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d9
    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@dc
    move-result v11

    #@dd
    if-eqz v11, :cond_7

    #@df
    .line 135
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@e1
    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@e4
    move-result-object v0

    #@e5
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    #@e7
    .line 140
    :goto_7
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothInputDevice$Stub;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    #@ea
    move-result v8

    #@eb
    .line 141
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@ee
    .line 142
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@f1
    .line 143
    const/4 v11, 0x1

    #@f2
    return v11

    #@f3
    .line 138
    .end local v8    # "_result":I
    :cond_7
    const/4 v0, 0x0

    #@f4
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_7

    #@f5
    .line 147
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_8
    const-string/jumbo v11, "android.bluetooth.IBluetoothInputDevice"

    #@f8
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@fb
    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@fe
    move-result v11

    #@ff
    if-eqz v11, :cond_8

    #@101
    .line 150
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@103
    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@106
    move-result-object v0

    #@107
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    #@109
    .line 155
    :goto_8
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothInputDevice$Stub;->getProtocolMode(Landroid/bluetooth/BluetoothDevice;)Z

    #@10c
    move-result v10

    #@10d
    .line 156
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@110
    .line 157
    if-eqz v10, :cond_9

    #@112
    const/4 v11, 0x1

    #@113
    :goto_9
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@116
    .line 158
    const/4 v11, 0x1

    #@117
    return v11

    #@118
    .line 153
    .end local v10    # "_result":Z
    :cond_8
    const/4 v0, 0x0

    #@119
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_8

    #@11a
    .line 157
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v10    # "_result":Z
    :cond_9
    const/4 v11, 0x0

    #@11b
    goto :goto_9

    #@11c
    .line 162
    .end local v10    # "_result":Z
    :sswitch_9
    const-string/jumbo v11, "android.bluetooth.IBluetoothInputDevice"

    #@11f
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@122
    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@125
    move-result v11

    #@126
    if-eqz v11, :cond_a

    #@128
    .line 165
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@12a
    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@12d
    move-result-object v0

    #@12e
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    #@130
    .line 170
    :goto_a
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothInputDevice$Stub;->virtualUnplug(Landroid/bluetooth/BluetoothDevice;)Z

    #@133
    move-result v10

    #@134
    .line 171
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@137
    .line 172
    if-eqz v10, :cond_b

    #@139
    const/4 v11, 0x1

    #@13a
    :goto_b
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@13d
    .line 173
    const/4 v11, 0x1

    #@13e
    return v11

    #@13f
    .line 168
    .end local v10    # "_result":Z
    :cond_a
    const/4 v0, 0x0

    #@140
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_a

    #@141
    .line 172
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v10    # "_result":Z
    :cond_b
    const/4 v11, 0x0

    #@142
    goto :goto_b

    #@143
    .line 177
    .end local v10    # "_result":Z
    :sswitch_a
    const-string/jumbo v11, "android.bluetooth.IBluetoothInputDevice"

    #@146
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@149
    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@14c
    move-result v11

    #@14d
    if-eqz v11, :cond_c

    #@14f
    .line 180
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@151
    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@154
    move-result-object v0

    #@155
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    #@157
    .line 186
    :goto_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@15a
    move-result v3

    #@15b
    .line 187
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v0, v3}, Landroid/bluetooth/IBluetoothInputDevice$Stub;->setProtocolMode(Landroid/bluetooth/BluetoothDevice;I)Z

    #@15e
    move-result v10

    #@15f
    .line 188
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@162
    .line 189
    if-eqz v10, :cond_d

    #@164
    const/4 v11, 0x1

    #@165
    :goto_d
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@168
    .line 190
    const/4 v11, 0x1

    #@169
    return v11

    #@16a
    .line 183
    .end local v3    # "_arg1":I
    .end local v10    # "_result":Z
    :cond_c
    const/4 v0, 0x0

    #@16b
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_c

    #@16c
    .line 189
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v3    # "_arg1":I
    .restart local v10    # "_result":Z
    :cond_d
    const/4 v11, 0x0

    #@16d
    goto :goto_d

    #@16e
    .line 194
    .end local v3    # "_arg1":I
    .end local v10    # "_result":Z
    :sswitch_b
    const-string/jumbo v11, "android.bluetooth.IBluetoothInputDevice"

    #@171
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@174
    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@177
    move-result v11

    #@178
    if-eqz v11, :cond_e

    #@17a
    .line 197
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@17c
    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@17f
    move-result-object v0

    #@180
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    #@182
    .line 203
    :goto_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    #@185
    move-result v2

    #@186
    .line 205
    .local v2, "_arg1":B
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    #@189
    move-result v5

    #@18a
    .line 207
    .local v5, "_arg2":B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@18d
    move-result v7

    #@18e
    .line 208
    .local v7, "_arg3":I
    invoke-virtual {p0, v0, v2, v5, v7}, Landroid/bluetooth/IBluetoothInputDevice$Stub;->getReport(Landroid/bluetooth/BluetoothDevice;BBI)Z

    #@191
    move-result v10

    #@192
    .line 209
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@195
    .line 210
    if-eqz v10, :cond_f

    #@197
    const/4 v11, 0x1

    #@198
    :goto_f
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@19b
    .line 211
    const/4 v11, 0x1

    #@19c
    return v11

    #@19d
    .line 200
    .end local v2    # "_arg1":B
    .end local v5    # "_arg2":B
    .end local v7    # "_arg3":I
    .end local v10    # "_result":Z
    :cond_e
    const/4 v0, 0x0

    #@19e
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_e

    #@19f
    .line 210
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v2    # "_arg1":B
    .restart local v5    # "_arg2":B
    .restart local v7    # "_arg3":I
    .restart local v10    # "_result":Z
    :cond_f
    const/4 v11, 0x0

    #@1a0
    goto :goto_f

    #@1a1
    .line 215
    .end local v2    # "_arg1":B
    .end local v5    # "_arg2":B
    .end local v7    # "_arg3":I
    .end local v10    # "_result":Z
    :sswitch_c
    const-string/jumbo v11, "android.bluetooth.IBluetoothInputDevice"

    #@1a4
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a7
    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1aa
    move-result v11

    #@1ab
    if-eqz v11, :cond_10

    #@1ad
    .line 218
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1af
    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1b2
    move-result-object v0

    #@1b3
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    #@1b5
    .line 224
    :goto_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    #@1b8
    move-result v2

    #@1b9
    .line 226
    .restart local v2    # "_arg1":B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1bc
    move-result-object v6

    #@1bd
    .line 227
    .local v6, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v6}, Landroid/bluetooth/IBluetoothInputDevice$Stub;->setReport(Landroid/bluetooth/BluetoothDevice;BLjava/lang/String;)Z

    #@1c0
    move-result v10

    #@1c1
    .line 228
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1c4
    .line 229
    if-eqz v10, :cond_11

    #@1c6
    const/4 v11, 0x1

    #@1c7
    :goto_11
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@1ca
    .line 230
    const/4 v11, 0x1

    #@1cb
    return v11

    #@1cc
    .line 221
    .end local v2    # "_arg1":B
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v10    # "_result":Z
    :cond_10
    const/4 v0, 0x0

    #@1cd
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_10

    #@1ce
    .line 229
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v2    # "_arg1":B
    .restart local v6    # "_arg2":Ljava/lang/String;
    .restart local v10    # "_result":Z
    :cond_11
    const/4 v11, 0x0

    #@1cf
    goto :goto_11

    #@1d0
    .line 234
    .end local v2    # "_arg1":B
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v10    # "_result":Z
    :sswitch_d
    const-string/jumbo v11, "android.bluetooth.IBluetoothInputDevice"

    #@1d3
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1d6
    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1d9
    move-result v11

    #@1da
    if-eqz v11, :cond_12

    #@1dc
    .line 237
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1de
    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1e1
    move-result-object v0

    #@1e2
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    #@1e4
    .line 243
    :goto_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1e7
    move-result-object v4

    #@1e8
    .line 244
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v4}, Landroid/bluetooth/IBluetoothInputDevice$Stub;->sendData(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    #@1eb
    move-result v10

    #@1ec
    .line 245
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1ef
    .line 246
    if-eqz v10, :cond_13

    #@1f1
    const/4 v11, 0x1

    #@1f2
    :goto_13
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@1f5
    .line 247
    const/4 v11, 0x1

    #@1f6
    return v11

    #@1f7
    .line 240
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v10    # "_result":Z
    :cond_12
    const/4 v0, 0x0

    #@1f8
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_12

    #@1f9
    .line 246
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v4    # "_arg1":Ljava/lang/String;
    .restart local v10    # "_result":Z
    :cond_13
    const/4 v11, 0x0

    #@1fa
    goto :goto_13

    #@1fb
    .line 43
    nop

    #@1fc
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
