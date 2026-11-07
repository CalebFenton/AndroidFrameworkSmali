.class public abstract Landroid/net/INetworkAgent$Stub;
.super Landroid/os/Binder;
.source "INetworkAgent.java"

# interfaces
.implements Landroid/net/INetworkAgent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkAgent$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onAddNattKeepalivePacketFilter:I = 0xb

.field static final blacklist TRANSACTION_onAddTcpKeepalivePacketFilter:I = 0xc

.field static final blacklist TRANSACTION_onBandwidthUpdateRequested:I = 0x3

.field static final blacklist TRANSACTION_onDisconnected:I = 0x2

.field static final blacklist TRANSACTION_onDscpPolicyStatusUpdated:I = 0x12

.field static final blacklist TRANSACTION_onNetworkCreated:I = 0x10

.field static final blacklist TRANSACTION_onNetworkDestroyed:I = 0x11

.field static final blacklist TRANSACTION_onPreventAutomaticReconnect:I = 0xa

.field static final blacklist TRANSACTION_onQosCallbackUnregistered:I = 0xf

.field static final blacklist TRANSACTION_onQosFilterCallbackRegistered:I = 0xe

.field static final blacklist TRANSACTION_onRegistered:I = 0x1

.field static final blacklist TRANSACTION_onRemoveKeepalivePacketFilter:I = 0xd

.field static final blacklist TRANSACTION_onSaveAcceptUnvalidated:I = 0x5

.field static final blacklist TRANSACTION_onSignalStrengthThresholdsUpdated:I = 0x9

.field static final blacklist TRANSACTION_onStartNattSocketKeepalive:I = 0x6

.field static final blacklist TRANSACTION_onStartTcpSocketKeepalive:I = 0x7

.field static final blacklist TRANSACTION_onStopSocketKeepalive:I = 0x8

.field static final blacklist TRANSACTION_onValidationStatusChanged:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 84
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 85
    const-string v0, "android.net.INetworkAgent"

    invoke-virtual {p0, p0, v0}, Landroid/net/INetworkAgent$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/net/INetworkAgent;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 93
    if-nez p0, :cond_4

    .line 94
    const/4 v0, 0x0

    return-object v0

    .line 96
    :cond_4
    const-string v0, "android.net.INetworkAgent"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 97
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/INetworkAgent;

    if-eqz v1, :cond_14

    .line 98
    move-object v1, v0

    check-cast v1, Landroid/net/INetworkAgent;

    return-object v1

    .line 100
    :cond_14
    new-instance v1, Landroid/net/INetworkAgent$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/INetworkAgent$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 109
    packed-switch p0, :pswitch_data_3c

    .line 185
    const/4 v0, 0x0

    return-object v0

    .line 181
    :pswitch_5
    const-string v0, "onDscpPolicyStatusUpdated"

    return-object v0

    .line 177
    :pswitch_8
    const-string v0, "onNetworkDestroyed"

    return-object v0

    .line 173
    :pswitch_b
    const-string v0, "onNetworkCreated"

    return-object v0

    .line 169
    :pswitch_e
    const-string v0, "onQosCallbackUnregistered"

    return-object v0

    .line 165
    :pswitch_11
    const-string v0, "onQosFilterCallbackRegistered"

    return-object v0

    .line 161
    :pswitch_14
    const-string v0, "onRemoveKeepalivePacketFilter"

    return-object v0

    .line 157
    :pswitch_17
    const-string v0, "onAddTcpKeepalivePacketFilter"

    return-object v0

    .line 153
    :pswitch_1a
    const-string v0, "onAddNattKeepalivePacketFilter"

    return-object v0

    .line 149
    :pswitch_1d
    const-string v0, "onPreventAutomaticReconnect"

    return-object v0

    .line 145
    :pswitch_20
    const-string v0, "onSignalStrengthThresholdsUpdated"

    return-object v0

    .line 141
    :pswitch_23
    const-string v0, "onStopSocketKeepalive"

    return-object v0

    .line 137
    :pswitch_26
    const-string v0, "onStartTcpSocketKeepalive"

    return-object v0

    .line 133
    :pswitch_29
    const-string v0, "onStartNattSocketKeepalive"

    return-object v0

    .line 129
    :pswitch_2c
    const-string v0, "onSaveAcceptUnvalidated"

    return-object v0

    .line 125
    :pswitch_2f
    const-string v0, "onValidationStatusChanged"

    return-object v0

    .line 121
    :pswitch_32
    const-string v0, "onBandwidthUpdateRequested"

    return-object v0

    .line 117
    :pswitch_35
    const-string v0, "onDisconnected"

    return-object v0

    .line 113
    :pswitch_38
    const-string v0, "onRegistered"

    return-object v0

    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
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

    .line 104
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 601
    const/16 v0, 0x11

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 192
    invoke-static {p1}, Landroid/net/INetworkAgent$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 196
    const-string v0, "android.net.INetworkAgent"

    .line 197
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 198
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 201
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 202
    return v1

    .line 204
    :cond_16
    packed-switch p1, :pswitch_data_d6

    .line 340
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 332
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 334
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 335
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/net/INetworkAgent$Stub;->onDscpPolicyStatusUpdated(II)V

    .line 336
    goto/16 :goto_d5

    .line 326
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_2b
    invoke-virtual {p0}, Landroid/net/INetworkAgent$Stub;->onNetworkDestroyed()V

    .line 327
    goto/16 :goto_d5

    .line 321
    :pswitch_30
    invoke-virtual {p0}, Landroid/net/INetworkAgent$Stub;->onNetworkCreated()V

    .line 322
    goto/16 :goto_d5

    .line 315
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 316
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/INetworkAgent$Stub;->onQosCallbackUnregistered(I)V

    .line 317
    goto/16 :goto_d5

    .line 306
    .end local v2    # "_arg0":I
    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 308
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/net/connectivity/android/net/QosFilterParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/connectivity/android/net/QosFilterParcelable;

    .line 309
    .local v3, "_arg1":Landroid/net/connectivity/android/net/QosFilterParcelable;
    invoke-virtual {p0, v2, v3}, Landroid/net/INetworkAgent$Stub;->onQosFilterCallbackRegistered(ILandroid/net/connectivity/android/net/QosFilterParcelable;)V

    .line 310
    goto/16 :goto_d5

    .line 299
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/net/connectivity/android/net/QosFilterParcelable;
    :pswitch_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 300
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/INetworkAgent$Stub;->onRemoveKeepalivePacketFilter(I)V

    .line 301
    goto/16 :goto_d5

    .line 290
    .end local v2    # "_arg0":I
    :pswitch_58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 292
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/net/TcpKeepalivePacketData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/TcpKeepalivePacketData;

    .line 293
    .local v3, "_arg1":Landroid/net/TcpKeepalivePacketData;
    invoke-virtual {p0, v2, v3}, Landroid/net/INetworkAgent$Stub;->onAddTcpKeepalivePacketFilter(ILandroid/net/TcpKeepalivePacketData;)V

    .line 294
    goto/16 :goto_d5

    .line 281
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/net/TcpKeepalivePacketData;
    :pswitch_69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 283
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/net/NattKeepalivePacketData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NattKeepalivePacketData;

    .line 284
    .local v3, "_arg1":Landroid/net/NattKeepalivePacketData;
    invoke-virtual {p0, v2, v3}, Landroid/net/INetworkAgent$Stub;->onAddNattKeepalivePacketFilter(ILandroid/net/NattKeepalivePacketData;)V

    .line 285
    goto :goto_d5

    .line 275
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/net/NattKeepalivePacketData;
    :pswitch_79
    invoke-virtual {p0}, Landroid/net/INetworkAgent$Stub;->onPreventAutomaticReconnect()V

    .line 276
    goto :goto_d5

    .line 269
    :pswitch_7d
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 270
    .local v2, "_arg0":[I
    invoke-virtual {p0, v2}, Landroid/net/INetworkAgent$Stub;->onSignalStrengthThresholdsUpdated([I)V

    .line 271
    goto :goto_d5

    .line 262
    .end local v2    # "_arg0":[I
    :pswitch_85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 263
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/INetworkAgent$Stub;->onStopSocketKeepalive(I)V

    .line 264
    goto :goto_d5

    .line 251
    .end local v2    # "_arg0":I
    :pswitch_8d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 253
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 255
    .local v3, "_arg1":I
    sget-object v4, Landroid/net/TcpKeepalivePacketData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/TcpKeepalivePacketData;

    .line 256
    .local v4, "_arg2":Landroid/net/TcpKeepalivePacketData;
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/INetworkAgent$Stub;->onStartTcpSocketKeepalive(IILandroid/net/TcpKeepalivePacketData;)V

    .line 257
    goto :goto_d5

    .line 240
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/net/TcpKeepalivePacketData;
    :pswitch_a1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 242
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 244
    .restart local v3    # "_arg1":I
    sget-object v4, Landroid/net/NattKeepalivePacketData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NattKeepalivePacketData;

    .line 245
    .local v4, "_arg2":Landroid/net/NattKeepalivePacketData;
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/INetworkAgent$Stub;->onStartNattSocketKeepalive(IILandroid/net/NattKeepalivePacketData;)V

    .line 246
    goto :goto_d5

    .line 233
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/net/NattKeepalivePacketData;
    :pswitch_b5
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 234
    .local v2, "_arg0":Z
    invoke-virtual {p0, v2}, Landroid/net/INetworkAgent$Stub;->onSaveAcceptUnvalidated(Z)V

    .line 235
    goto :goto_d5

    .line 224
    .end local v2    # "_arg0":Z
    :pswitch_bd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 226
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 227
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Landroid/net/INetworkAgent$Stub;->onValidationStatusChanged(ILjava/lang/String;)V

    .line 228
    goto :goto_d5

    .line 218
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_c9
    invoke-virtual {p0}, Landroid/net/INetworkAgent$Stub;->onBandwidthUpdateRequested()V

    .line 219
    goto :goto_d5

    .line 213
    :pswitch_cd
    invoke-virtual {p0}, Landroid/net/INetworkAgent$Stub;->onDisconnected()V

    .line 214
    goto :goto_d5

    .line 208
    :pswitch_d1
    invoke-virtual {p0}, Landroid/net/INetworkAgent$Stub;->onRegistered()V

    .line 209
    nop

    .line 343
    :goto_d5
    return v1

    :pswitch_data_d6
    .packed-switch 0x1
        :pswitch_d1
        :pswitch_cd
        :pswitch_c9
        :pswitch_bd
        :pswitch_b5
        :pswitch_a1
        :pswitch_8d
        :pswitch_85
        :pswitch_7d
        :pswitch_79
        :pswitch_69
        :pswitch_58
        :pswitch_4f
        :pswitch_3e
        :pswitch_35
        :pswitch_30
        :pswitch_2b
        :pswitch_1e
    .end packed-switch
.end method
