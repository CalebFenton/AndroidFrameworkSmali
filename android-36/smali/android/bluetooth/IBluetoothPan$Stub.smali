.class public abstract Landroid/bluetooth/IBluetoothPan$Stub;
.super Landroid/os/Binder;
.source "IBluetoothPan.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothPan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothPan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothPan$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothPan"

.field static final blacklist TRANSACTION_connect:I = 0x3

.field static final blacklist TRANSACTION_disconnect:I = 0x4

.field static final blacklist TRANSACTION_getConnectedDevices:I = 0x5

.field static final blacklist TRANSACTION_getConnectionState:I = 0x7

.field static final blacklist TRANSACTION_getDevicesMatchingConnectionStates:I = 0x6

.field static final blacklist TRANSACTION_isTetheringOn:I = 0x1

.field static final blacklist TRANSACTION_setBluetoothTethering:I = 0x2

.field static final blacklist TRANSACTION_setConnectionPolicy:I = 0x8


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 63
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 64
    const-string v0, "android.bluetooth.IBluetoothPan"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothPan$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothPan;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 72
    if-nez p0, :cond_4

    .line 73
    const/4 v0, 0x0

    return-object v0

    .line 75
    :cond_4
    const-string v0, "android.bluetooth.IBluetoothPan"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 76
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/bluetooth/IBluetoothPan;

    if-eqz v1, :cond_14

    .line 77
    move-object v1, v0

    check-cast v1, Landroid/bluetooth/IBluetoothPan;

    return-object v1

    .line 79
    :cond_14
    new-instance v1, Landroid/bluetooth/IBluetoothPan$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothPan$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 88
    packed-switch p0, :pswitch_data_1e

    .line 124
    const/4 v0, 0x0

    return-object v0

    .line 120
    :pswitch_5
    const-string v0, "setConnectionPolicy"

    return-object v0

    .line 116
    :pswitch_8
    const-string v0, "getConnectionState"

    return-object v0

    .line 112
    :pswitch_b
    const-string v0, "getDevicesMatchingConnectionStates"

    return-object v0

    .line 108
    :pswitch_e
    const-string v0, "getConnectedDevices"

    return-object v0

    .line 104
    :pswitch_11
    const-string v0, "disconnect"

    return-object v0

    .line 100
    :pswitch_14
    const-string v0, "connect"

    return-object v0

    .line 96
    :pswitch_17
    const-string v0, "setBluetoothTethering"

    return-object v0

    .line 92
    :pswitch_1a
    const-string v0, "isTetheringOn"

    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 83
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 429
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 131
    invoke-static {p1}, Landroid/bluetooth/IBluetoothPan$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    const-string v0, "android.bluetooth.IBluetoothPan"

    .line 136
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 137
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 140
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    return v1

    .line 143
    :cond_16
    packed-switch p1, :pswitch_data_106

    .line 244
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 231
    :pswitch_1e
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 233
    .local v2, "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 235
    .local v3, "_arg1":I
    sget-object v4, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/AttributionSource;

    .line 236
    .local v4, "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 237
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothPan$Stub;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)Z

    move-result v5

    .line 238
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 240
    goto/16 :goto_105

    .line 219
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/content/AttributionSource;
    .end local v5    # "_result":Z
    :pswitch_41
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 221
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 222
    .local v3, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 223
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothPan$Stub;->getConnectionState(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v4

    .line 224
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    goto/16 :goto_105

    .line 207
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    .end local v4    # "_result":I
    :pswitch_60
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 209
    .local v2, "_arg0":[I
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 210
    .restart local v3    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 211
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothPan$Stub;->getDevicesMatchingConnectionStates([ILandroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v4

    .line 212
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    invoke-static {p3, v4, v1}, Landroid/bluetooth/IBluetoothPan$_Parcel;->-$$Nest$smwriteTypedList(Landroid/os/Parcel;Ljava/util/List;I)V

    .line 214
    goto/16 :goto_105

    .line 197
    .end local v2    # "_arg0":[I
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :pswitch_7b
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 198
    .local v2, "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 199
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothPan$Stub;->getConnectedDevices(Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v3

    .line 200
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    invoke-static {p3, v3, v1}, Landroid/bluetooth/IBluetoothPan$_Parcel;->-$$Nest$smwriteTypedList(Landroid/os/Parcel;Ljava/util/List;I)V

    .line 202
    goto :goto_105

    .line 185
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :pswitch_91
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 187
    .local v2, "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 188
    .local v3, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 189
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothPan$Stub;->disconnect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v4

    .line 190
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 192
    goto :goto_105

    .line 173
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    .end local v4    # "_result":Z
    :pswitch_af
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 175
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 176
    .restart local v3    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 177
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothPan$Stub;->connect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v4

    .line 178
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 180
    goto :goto_105

    .line 158
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    .end local v4    # "_result":Z
    :pswitch_cd
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothPanCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothPanCallback;

    move-result-object v2

    .line 160
    .local v2, "_arg0":Landroid/bluetooth/IBluetoothPanCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 162
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 164
    .local v4, "_arg2":Z
    sget-object v5, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/AttributionSource;

    .line 165
    .local v5, "_arg3":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 166
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/bluetooth/IBluetoothPan$Stub;->setBluetoothTethering(Landroid/bluetooth/IBluetoothPanCallback;IZLandroid/content/AttributionSource;)V

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    goto :goto_105

    .line 148
    .end local v2    # "_arg0":Landroid/bluetooth/IBluetoothPanCallback;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    .end local v5    # "_arg3":Landroid/content/AttributionSource;
    :pswitch_ef
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 149
    .local v2, "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 150
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothPan$Stub;->isTetheringOn(Landroid/content/AttributionSource;)Z

    move-result v3

    .line 151
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 153
    nop

    .line 247
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_result":Z
    :goto_105
    return v1

    :pswitch_data_106
    .packed-switch 0x1
        :pswitch_ef
        :pswitch_cd
        :pswitch_af
        :pswitch_91
        :pswitch_7b
        :pswitch_60
        :pswitch_41
        :pswitch_1e
    .end packed-switch
.end method
