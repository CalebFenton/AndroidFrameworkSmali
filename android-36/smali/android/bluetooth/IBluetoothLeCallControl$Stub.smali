.class public abstract Landroid/bluetooth/IBluetoothLeCallControl$Stub;
.super Landroid/os/Binder;
.source "IBluetoothLeCallControl.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothLeCallControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothLeCallControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothLeCallControl$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_callAdded:I = 0x4

.field static final blacklist TRANSACTION_callRemoved:I = 0x5

.field static final blacklist TRANSACTION_callStateChanged:I = 0x6

.field static final blacklist TRANSACTION_currentCallsList:I = 0x7

.field static final blacklist TRANSACTION_registerBearer:I = 0x1

.field static final blacklist TRANSACTION_requestResult:I = 0x3

.field static final blacklist TRANSACTION_unregisterBearer:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 49
    const-string v0, "android.bluetooth.IBluetoothLeCallControl"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothLeCallControl$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothLeCallControl;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 57
    if-nez p0, :cond_4

    .line 58
    const/4 v0, 0x0

    return-object v0

    .line 60
    :cond_4
    const-string v0, "android.bluetooth.IBluetoothLeCallControl"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 61
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/bluetooth/IBluetoothLeCallControl;

    if-eqz v1, :cond_14

    .line 62
    move-object v1, v0

    check-cast v1, Landroid/bluetooth/IBluetoothLeCallControl;

    return-object v1

    .line 64
    :cond_14
    new-instance v1, Landroid/bluetooth/IBluetoothLeCallControl$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothLeCallControl$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 73
    packed-switch p0, :pswitch_data_1a

    .line 105
    const/4 v0, 0x0

    return-object v0

    .line 101
    :pswitch_5
    const-string v0, "currentCallsList"

    return-object v0

    .line 97
    :pswitch_8
    const-string v0, "callStateChanged"

    return-object v0

    .line 93
    :pswitch_b
    const-string v0, "callRemoved"

    return-object v0

    .line 89
    :pswitch_e
    const-string v0, "callAdded"

    return-object v0

    .line 85
    :pswitch_11
    const-string v0, "requestResult"

    return-object v0

    .line 81
    :pswitch_14
    const-string v0, "unregisterBearer"

    return-object v0

    .line 77
    :pswitch_17
    const-string v0, "registerBearer"

    return-object v0

    :pswitch_data_1a
    .packed-switch 0x1
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

    .line 68
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 362
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 112
    invoke-static {p1}, Landroid/bluetooth/IBluetoothLeCallControl$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 18
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    move-object v9, p2

    const-string v10, "android.bluetooth.IBluetoothLeCallControl"

    .line 117
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt p1, v11, :cond_e

    const v1, 0xffffff

    if-gt p1, v1, :cond_e

    .line 118
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    :cond_e
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_19

    .line 121
    move-object/from16 v12, p3

    invoke-virtual {v12, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    return v11

    .line 124
    :cond_19
    move-object/from16 v12, p3

    packed-switch p1, :pswitch_data_f8

    .line 226
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 215
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 217
    .local v1, "_arg0":I
    sget-object v2, Landroid/bluetooth/BluetoothLeCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 219
    .local v2, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothLeCall;>;"
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 220
    .local v3, "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 221
    invoke-virtual {p0, v1, v2, v3}, Landroid/bluetooth/IBluetoothLeCallControl$Stub;->currentCallsList(ILjava/util/List;Landroid/content/AttributionSource;)V

    .line 222
    goto/16 :goto_f6

    .line 201
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothLeCall;>;"
    .end local v3    # "_arg2":Landroid/content/AttributionSource;
    :pswitch_3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 203
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 205
    .local v2, "_arg1":Landroid/os/ParcelUuid;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 207
    .local v3, "_arg2":I
    sget-object v4, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/AttributionSource;

    .line 208
    .local v4, "_arg3":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 209
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/bluetooth/IBluetoothLeCallControl$Stub;->callStateChanged(ILandroid/os/ParcelUuid;ILandroid/content/AttributionSource;)V

    .line 210
    goto/16 :goto_f6

    .line 187
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/ParcelUuid;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/content/AttributionSource;
    :pswitch_5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 189
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 191
    .restart local v2    # "_arg1":Landroid/os/ParcelUuid;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 193
    .restart local v3    # "_arg2":I
    sget-object v4, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/AttributionSource;

    .line 194
    .restart local v4    # "_arg3":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 195
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/bluetooth/IBluetoothLeCallControl$Stub;->callRemoved(ILandroid/os/ParcelUuid;ILandroid/content/AttributionSource;)V

    .line 196
    goto/16 :goto_f6

    .line 175
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/ParcelUuid;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/content/AttributionSource;
    :pswitch_7d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 177
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/bluetooth/BluetoothLeCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothLeCall;

    .line 179
    .local v2, "_arg1":Landroid/bluetooth/BluetoothLeCall;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 180
    .local v3, "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 181
    invoke-virtual {p0, v1, v2, v3}, Landroid/bluetooth/IBluetoothLeCallControl$Stub;->callAdded(ILandroid/bluetooth/BluetoothLeCall;Landroid/content/AttributionSource;)V

    .line 182
    goto :goto_f6

    .line 161
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/bluetooth/BluetoothLeCall;
    .end local v3    # "_arg2":Landroid/content/AttributionSource;
    :pswitch_98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 163
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 165
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 167
    .local v3, "_arg2":I
    sget-object v4, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/AttributionSource;

    .line 168
    .restart local v4    # "_arg3":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 169
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/bluetooth/IBluetoothLeCallControl$Stub;->requestResult(IIILandroid/content/AttributionSource;)V

    .line 170
    goto :goto_f6

    .line 151
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/content/AttributionSource;
    :pswitch_b3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 154
    .local v2, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 155
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetoothLeCallControl$Stub;->unregisterBearer(Ljava/lang/String;Landroid/content/AttributionSource;)V

    .line 156
    goto :goto_f6

    .line 129
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    :pswitch_c6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 131
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothLeCallControlCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothLeCallControlCallback;

    move-result-object v2

    .line 133
    .local v2, "_arg1":Landroid/bluetooth/IBluetoothLeCallControlCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 135
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 137
    .local v4, "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 139
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 141
    .local v6, "_arg5":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 143
    .local v7, "_arg6":I
    sget-object v8, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/AttributionSource;

    .line 144
    .local v8, "_arg7":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/bluetooth/IBluetoothLeCallControl$Stub;->registerBearer(Ljava/lang/String;Landroid/bluetooth/IBluetoothLeCallControlCallback;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;ILandroid/content/AttributionSource;)V

    .line 146
    nop

    .line 229
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/bluetooth/IBluetoothLeCallControlCallback;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v7    # "_arg6":I
    .end local v8    # "_arg7":Landroid/content/AttributionSource;
    :goto_f6
    return v11

    nop

    :pswitch_data_f8
    .packed-switch 0x1
        :pswitch_c6
        :pswitch_b3
        :pswitch_98
        :pswitch_7d
        :pswitch_5d
        :pswitch_3d
        :pswitch_23
    .end packed-switch
.end method
