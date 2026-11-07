.class public abstract Landroid/bluetooth/IBluetoothMapClient$Stub;
.super Landroid/os/Binder;
.source "IBluetoothMapClient.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothMapClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothMapClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothMapClient$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothMapClient"

.field static final blacklist TRANSACTION_connect:I = 0x1

.field static final blacklist TRANSACTION_disconnect:I = 0x2

.field static final blacklist TRANSACTION_getConnectedDevices:I = 0x3

.field static final blacklist TRANSACTION_getConnectionPolicy:I = 0x7

.field static final blacklist TRANSACTION_getConnectionState:I = 0x5

.field static final blacklist TRANSACTION_getDevicesMatchingConnectionStates:I = 0x4

.field static final blacklist TRANSACTION_sendMessage:I = 0x8

.field static final blacklist TRANSACTION_setConnectionPolicy:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 63
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 64
    const-string v0, "android.bluetooth.IBluetoothMapClient"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothMapClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothMapClient;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 72
    if-nez p0, :cond_4

    .line 73
    const/4 v0, 0x0

    return-object v0

    .line 75
    :cond_4
    const-string v0, "android.bluetooth.IBluetoothMapClient"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 76
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/bluetooth/IBluetoothMapClient;

    if-eqz v1, :cond_14

    .line 77
    move-object v1, v0

    check-cast v1, Landroid/bluetooth/IBluetoothMapClient;

    return-object v1

    .line 79
    :cond_14
    new-instance v1, Landroid/bluetooth/IBluetoothMapClient$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothMapClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v0, "sendMessage"

    return-object v0

    .line 116
    :pswitch_8
    const-string v0, "getConnectionPolicy"

    return-object v0

    .line 112
    :pswitch_b
    const-string v0, "setConnectionPolicy"

    return-object v0

    .line 108
    :pswitch_e
    const-string v0, "getConnectionState"

    return-object v0

    .line 104
    :pswitch_11
    const-string v0, "getDevicesMatchingConnectionStates"

    return-object v0

    .line 100
    :pswitch_14
    const-string v0, "getConnectedDevices"

    return-object v0

    .line 96
    :pswitch_17
    const-string v0, "disconnect"

    return-object v0

    .line 92
    :pswitch_1a
    const-string v0, "connect"

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

    .line 441
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 131
    invoke-static {p1}, Landroid/bluetooth/IBluetoothMapClient$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
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
    const-string v0, "android.bluetooth.IBluetoothMapClient"

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
    packed-switch p1, :pswitch_data_136

    .line 251
    move-object v3, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 232
    :pswitch_1f
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 234
    .local v4, "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, [Landroid/net/Uri;

    .line 236
    .local v5, "_arg1":[Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 238
    .local v6, "_arg2":Ljava/lang/String;
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/app/PendingIntent;

    .line 240
    .local v7, "_arg3":Landroid/app/PendingIntent;
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/app/PendingIntent;

    .line 242
    .local v8, "_arg4":Landroid/app/PendingIntent;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/content/AttributionSource;

    .line 243
    .local v9, "_arg5":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 244
    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Landroid/bluetooth/IBluetoothMapClient$Stub;->sendMessage(Landroid/bluetooth/BluetoothDevice;[Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/content/AttributionSource;)Z

    move-result v2

    .line 245
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 247
    goto/16 :goto_134

    .line 220
    .end local v2    # "_result":Z
    .end local v4    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v5    # "_arg1":[Landroid/net/Uri;
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v7    # "_arg3":Landroid/app/PendingIntent;
    .end local v8    # "_arg4":Landroid/app/PendingIntent;
    .end local v9    # "_arg5":Landroid/content/AttributionSource;
    :pswitch_60
    move-object v3, p0

    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 222
    .local v2, "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v4, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/AttributionSource;

    .line 223
    .local v4, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 224
    invoke-virtual {p0, v2, v4}, Landroid/bluetooth/IBluetoothMapClient$Stub;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v5

    .line 225
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    goto/16 :goto_134

    .line 206
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "_arg1":Landroid/content/AttributionSource;
    .end local v5    # "_result":I
    :pswitch_80
    move-object v3, p0

    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 208
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 210
    .local v4, "_arg1":I
    sget-object v5, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/AttributionSource;

    .line 211
    .local v5, "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 212
    invoke-virtual {p0, v2, v4, v5}, Landroid/bluetooth/IBluetoothMapClient$Stub;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)Z

    move-result v6

    .line 213
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 215
    goto/16 :goto_134

    .line 194
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Landroid/content/AttributionSource;
    .end local v6    # "_result":Z
    :pswitch_a4
    move-object v3, p0

    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 196
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v4, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/AttributionSource;

    .line 197
    .local v4, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 198
    invoke-virtual {p0, v2, v4}, Landroid/bluetooth/IBluetoothMapClient$Stub;->getConnectionState(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v5

    .line 199
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    goto/16 :goto_134

    .line 182
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "_arg1":Landroid/content/AttributionSource;
    .end local v5    # "_result":I
    :pswitch_c4
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 184
    .local v2, "_arg0":[I
    sget-object v4, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/AttributionSource;

    .line 185
    .restart local v4    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 186
    invoke-virtual {p0, v2, v4}, Landroid/bluetooth/IBluetoothMapClient$Stub;->getDevicesMatchingConnectionStates([ILandroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v5

    .line 187
    .local v5, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    invoke-static {p3, v5, v1}, Landroid/bluetooth/IBluetoothMapClient$_Parcel;->-$$Nest$smwriteTypedList(Landroid/os/Parcel;Ljava/util/List;I)V

    .line 189
    goto :goto_134

    .line 172
    .end local v2    # "_arg0":[I
    .end local v4    # "_arg1":Landroid/content/AttributionSource;
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :pswitch_df
    move-object v3, p0

    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 173
    .local v2, "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 174
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothMapClient$Stub;->getConnectedDevices(Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v4

    .line 175
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    invoke-static {p3, v4, v1}, Landroid/bluetooth/IBluetoothMapClient$_Parcel;->-$$Nest$smwriteTypedList(Landroid/os/Parcel;Ljava/util/List;I)V

    .line 177
    goto :goto_134

    .line 160
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :pswitch_f6
    move-object v3, p0

    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 162
    .local v2, "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v4, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/AttributionSource;

    .line 163
    .local v4, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 164
    invoke-virtual {p0, v2, v4}, Landroid/bluetooth/IBluetoothMapClient$Stub;->disconnect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v5

    .line 165
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 167
    goto :goto_134

    .line 148
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "_arg1":Landroid/content/AttributionSource;
    .end local v5    # "_result":Z
    :pswitch_115
    move-object v3, p0

    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 150
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v4, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/AttributionSource;

    .line 151
    .restart local v4    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 152
    invoke-virtual {p0, v2, v4}, Landroid/bluetooth/IBluetoothMapClient$Stub;->connect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v5

    .line 153
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 155
    nop

    .line 254
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "_arg1":Landroid/content/AttributionSource;
    .end local v5    # "_result":Z
    :goto_134
    return v1

    nop

    :pswitch_data_136
    .packed-switch 0x1
        :pswitch_115
        :pswitch_f6
        :pswitch_df
        :pswitch_c4
        :pswitch_a4
        :pswitch_80
        :pswitch_60
        :pswitch_1f
    .end packed-switch
.end method
