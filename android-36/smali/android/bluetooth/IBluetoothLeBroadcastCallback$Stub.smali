.class public abstract Landroid/bluetooth/IBluetoothLeBroadcastCallback$Stub;
.super Landroid/os/Binder;
.source "IBluetoothLeBroadcastCallback.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothLeBroadcastCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothLeBroadcastCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothLeBroadcastCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onBroadcastMetadataChanged:I = 0x9

.field static final blacklist TRANSACTION_onBroadcastStartFailed:I = 0x2

.field static final blacklist TRANSACTION_onBroadcastStarted:I = 0x1

.field static final blacklist TRANSACTION_onBroadcastStopFailed:I = 0x4

.field static final blacklist TRANSACTION_onBroadcastStopped:I = 0x3

.field static final blacklist TRANSACTION_onBroadcastUpdateFailed:I = 0x8

.field static final blacklist TRANSACTION_onBroadcastUpdated:I = 0x7

.field static final blacklist TRANSACTION_onPlaybackStarted:I = 0x5

.field static final blacklist TRANSACTION_onPlaybackStopped:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 57
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 58
    const-string v0, "android.bluetooth.IBluetoothLeBroadcastCallback"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothLeBroadcastCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothLeBroadcastCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 66
    if-nez p0, :cond_4

    .line 67
    const/4 v0, 0x0

    return-object v0

    .line 69
    :cond_4
    const-string v0, "android.bluetooth.IBluetoothLeBroadcastCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 70
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/bluetooth/IBluetoothLeBroadcastCallback;

    if-eqz v1, :cond_14

    .line 71
    move-object v1, v0

    check-cast v1, Landroid/bluetooth/IBluetoothLeBroadcastCallback;

    return-object v1

    .line 73
    :cond_14
    new-instance v1, Landroid/bluetooth/IBluetoothLeBroadcastCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothLeBroadcastCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 82
    packed-switch p0, :pswitch_data_20

    .line 122
    const/4 v0, 0x0

    return-object v0

    .line 118
    :pswitch_5
    const-string v0, "onBroadcastMetadataChanged"

    return-object v0

    .line 114
    :pswitch_8
    const-string v0, "onBroadcastUpdateFailed"

    return-object v0

    .line 110
    :pswitch_b
    const-string v0, "onBroadcastUpdated"

    return-object v0

    .line 106
    :pswitch_e
    const-string v0, "onPlaybackStopped"

    return-object v0

    .line 102
    :pswitch_11
    const-string v0, "onPlaybackStarted"

    return-object v0

    .line 98
    :pswitch_14
    const-string v0, "onBroadcastStopFailed"

    return-object v0

    .line 94
    :pswitch_17
    const-string v0, "onBroadcastStopped"

    return-object v0

    .line 90
    :pswitch_1a
    const-string v0, "onBroadcastStartFailed"

    return-object v0

    .line 86
    :pswitch_1d
    const-string v0, "onBroadcastStarted"

    return-object v0

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1d
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

    .line 77
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 379
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 129
    invoke-static {p1}, Landroid/bluetooth/IBluetoothLeBroadcastCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 133
    const-string v0, "android.bluetooth.IBluetoothLeBroadcastCallback"

    .line 134
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 135
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 138
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    return v1

    .line 141
    :cond_16
    packed-switch p1, :pswitch_data_a4

    .line 231
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 222
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 224
    .local v2, "_arg0":I
    sget-object v3, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    .line 225
    .local v3, "_arg1":Landroid/bluetooth/BluetoothLeBroadcastMetadata;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 226
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothLeBroadcastCallback$Stub;->onBroadcastMetadataChanged(ILandroid/bluetooth/BluetoothLeBroadcastMetadata;)V

    .line 227
    goto/16 :goto_a2

    .line 212
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/bluetooth/BluetoothLeBroadcastMetadata;
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 214
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 215
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 216
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothLeBroadcastCallback$Stub;->onBroadcastUpdateFailed(II)V

    .line 217
    goto :goto_a2

    .line 202
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 204
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 205
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 206
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothLeBroadcastCallback$Stub;->onBroadcastUpdated(II)V

    .line 207
    goto :goto_a2

    .line 192
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 194
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 195
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 196
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothLeBroadcastCallback$Stub;->onPlaybackStopped(II)V

    .line 197
    goto :goto_a2

    .line 182
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 184
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 185
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 186
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothLeBroadcastCallback$Stub;->onPlaybackStarted(II)V

    .line 187
    goto :goto_a2

    .line 174
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_6e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 175
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 176
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothLeBroadcastCallback$Stub;->onBroadcastStopFailed(I)V

    .line 177
    goto :goto_a2

    .line 164
    .end local v2    # "_arg0":I
    :pswitch_79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 166
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 167
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 168
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothLeBroadcastCallback$Stub;->onBroadcastStopped(II)V

    .line 169
    goto :goto_a2

    .line 156
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 157
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 158
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothLeBroadcastCallback$Stub;->onBroadcastStartFailed(I)V

    .line 159
    goto :goto_a2

    .line 146
    .end local v2    # "_arg0":I
    :pswitch_93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 148
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 149
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 150
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothLeBroadcastCallback$Stub;->onBroadcastStarted(II)V

    .line 151
    nop

    .line 234
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :goto_a2
    return v1

    nop

    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_93
        :pswitch_88
        :pswitch_79
        :pswitch_6e
        :pswitch_5f
        :pswitch_50
        :pswitch_41
        :pswitch_32
        :pswitch_1e
    .end packed-switch
.end method
