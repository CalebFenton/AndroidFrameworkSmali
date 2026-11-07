.class public abstract Landroid/bluetooth/IBluetoothLeCallControlCallback$Stub;
.super Landroid/os/Binder;
.source "IBluetoothLeCallControlCallback.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothLeCallControlCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothLeCallControlCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothLeCallControlCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onAcceptCall:I = 0x2

.field static final blacklist TRANSACTION_onBearerRegistered:I = 0x1

.field static final blacklist TRANSACTION_onHoldCall:I = 0x4

.field static final blacklist TRANSACTION_onJoinCalls:I = 0x7

.field static final blacklist TRANSACTION_onPlaceCall:I = 0x6

.field static final blacklist TRANSACTION_onTerminateCall:I = 0x3

.field static final blacklist TRANSACTION_onUnholdCall:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 52
    const-string v0, "android.bluetooth.IBluetoothLeCallControlCallback"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothLeCallControlCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothLeCallControlCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 60
    if-nez p0, :cond_4

    .line 61
    const/4 v0, 0x0

    return-object v0

    .line 63
    :cond_4
    const-string v0, "android.bluetooth.IBluetoothLeCallControlCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 64
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/bluetooth/IBluetoothLeCallControlCallback;

    if-eqz v1, :cond_14

    .line 65
    move-object v1, v0

    check-cast v1, Landroid/bluetooth/IBluetoothLeCallControlCallback;

    return-object v1

    .line 67
    :cond_14
    new-instance v1, Landroid/bluetooth/IBluetoothLeCallControlCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothLeCallControlCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 76
    packed-switch p0, :pswitch_data_1a

    .line 108
    const/4 v0, 0x0

    return-object v0

    .line 104
    :pswitch_5
    const-string v0, "onJoinCalls"

    return-object v0

    .line 100
    :pswitch_8
    const-string v0, "onPlaceCall"

    return-object v0

    .line 96
    :pswitch_b
    const-string v0, "onUnholdCall"

    return-object v0

    .line 92
    :pswitch_e
    const-string v0, "onHoldCall"

    return-object v0

    .line 88
    :pswitch_11
    const-string v0, "onTerminateCall"

    return-object v0

    .line 84
    :pswitch_14
    const-string v0, "onAcceptCall"

    return-object v0

    .line 80
    :pswitch_17
    const-string v0, "onBearerRegistered"

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

    .line 71
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 323
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 115
    invoke-static {p1}, Landroid/bluetooth/IBluetoothLeCallControlCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    const-string v0, "android.bluetooth.IBluetoothLeCallControlCallback"

    .line 120
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 121
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 124
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    return v1

    .line 127
    :cond_16
    packed-switch p1, :pswitch_data_9e

    .line 201
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 192
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 194
    .local v2, "_arg0":I
    sget-object v3, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 195
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 196
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothLeCallControlCallback$Stub;->onJoinCalls(ILjava/util/List;)V

    .line 197
    goto :goto_9d

    .line 180
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 182
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .line 184
    .local v3, "_arg1":Landroid/os/ParcelUuid;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 185
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 186
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothLeCallControlCallback$Stub;->onPlaceCall(ILandroid/os/ParcelUuid;Ljava/lang/String;)V

    .line 187
    goto :goto_9d

    .line 170
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/ParcelUuid;
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 172
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .line 173
    .restart local v3    # "_arg1":Landroid/os/ParcelUuid;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 174
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothLeCallControlCallback$Stub;->onUnholdCall(ILandroid/os/ParcelUuid;)V

    .line 175
    goto :goto_9d

    .line 160
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/ParcelUuid;
    :pswitch_59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 162
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .line 163
    .restart local v3    # "_arg1":Landroid/os/ParcelUuid;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 164
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothLeCallControlCallback$Stub;->onHoldCall(ILandroid/os/ParcelUuid;)V

    .line 165
    goto :goto_9d

    .line 150
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/ParcelUuid;
    :pswitch_6c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 152
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .line 153
    .restart local v3    # "_arg1":Landroid/os/ParcelUuid;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 154
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothLeCallControlCallback$Stub;->onTerminateCall(ILandroid/os/ParcelUuid;)V

    .line 155
    goto :goto_9d

    .line 140
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/ParcelUuid;
    :pswitch_7f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 142
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .line 143
    .restart local v3    # "_arg1":Landroid/os/ParcelUuid;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 144
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothLeCallControlCallback$Stub;->onAcceptCall(ILandroid/os/ParcelUuid;)V

    .line 145
    goto :goto_9d

    .line 132
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/ParcelUuid;
    :pswitch_92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 133
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 134
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothLeCallControlCallback$Stub;->onBearerRegistered(I)V

    .line 135
    nop

    .line 204
    .end local v2    # "_arg0":I
    :goto_9d
    return v1

    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_92
        :pswitch_7f
        :pswitch_6c
        :pswitch_59
        :pswitch_46
        :pswitch_2f
        :pswitch_1e
    .end packed-switch
.end method
