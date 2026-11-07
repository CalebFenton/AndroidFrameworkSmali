.class public abstract Landroid/net/IEthernetManager$Stub;
.super Landroid/os/Binder;
.source "IEthernetManager.java"

# interfaces
.implements Landroid/net/IEthernetManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IEthernetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IEthernetManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.net.IEthernetManager"

.field static final greylist-max-o TRANSACTION_addListener:I = 0x5

.field static final blacklist TRANSACTION_disableInterface:I = 0xc

.field static final blacklist TRANSACTION_enableInterface:I = 0xb

.field static final greylist-max-o TRANSACTION_getAvailableInterfaces:I = 0x1

.field static final greylist-max-o TRANSACTION_getConfiguration:I = 0x2

.field static final blacklist TRANSACTION_getInterfaceList:I = 0xe

.field static final greylist-max-o TRANSACTION_isAvailable:I = 0x4

.field static final blacklist TRANSACTION_releaseTetheredInterface:I = 0x9

.field static final greylist-max-o TRANSACTION_removeListener:I = 0x6

.field static final blacklist TRANSACTION_requestTetheredInterface:I = 0x8

.field static final greylist-max-o TRANSACTION_setConfiguration:I = 0x3

.field static final blacklist TRANSACTION_setEthernetEnabled:I = 0xd

.field static final blacklist TRANSACTION_setIncludeTestInterfaces:I = 0x7

.field static final blacklist TRANSACTION_updateConfiguration:I = 0xa


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 77
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 78
    const-string v0, "android.net.IEthernetManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/IEthernetManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/net/IEthernetManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 86
    if-nez p0, :cond_4

    .line 87
    const/4 v0, 0x0

    return-object v0

    .line 89
    :cond_4
    const-string v0, "android.net.IEthernetManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 90
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/IEthernetManager;

    if-eqz v1, :cond_14

    .line 91
    move-object v1, v0

    check-cast v1, Landroid/net/IEthernetManager;

    return-object v1

    .line 93
    :cond_14
    new-instance v1, Landroid/net/IEthernetManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/IEthernetManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 102
    packed-switch p0, :pswitch_data_30

    .line 162
    const/4 v0, 0x0

    return-object v0

    .line 158
    :pswitch_5
    const-string v0, "getInterfaceList"

    return-object v0

    .line 154
    :pswitch_8
    const-string v0, "setEthernetEnabled"

    return-object v0

    .line 150
    :pswitch_b
    const-string v0, "disableInterface"

    return-object v0

    .line 146
    :pswitch_e
    const-string v0, "enableInterface"

    return-object v0

    .line 142
    :pswitch_11
    const-string v0, "updateConfiguration"

    return-object v0

    .line 138
    :pswitch_14
    const-string v0, "releaseTetheredInterface"

    return-object v0

    .line 134
    :pswitch_17
    const-string v0, "requestTetheredInterface"

    return-object v0

    .line 130
    :pswitch_1a
    const-string v0, "setIncludeTestInterfaces"

    return-object v0

    .line 126
    :pswitch_1d
    const-string v0, "removeListener"

    return-object v0

    .line 122
    :pswitch_20
    const-string v0, "addListener"

    return-object v0

    .line 118
    :pswitch_23
    const-string v0, "isAvailable"

    return-object v0

    .line 114
    :pswitch_26
    const-string v0, "setConfiguration"

    return-object v0

    .line 110
    :pswitch_29
    const-string v0, "getConfiguration"

    return-object v0

    .line 106
    :pswitch_2c
    const-string v0, "getAvailableInterfaces"

    return-object v0

    nop

    :pswitch_data_30
    .packed-switch 0x1
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

    .line 97
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 584
    const/16 v0, 0xd

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 169
    invoke-static {p1}, Landroid/net/IEthernetManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 173
    const-string v0, "android.net.IEthernetManager"

    .line 174
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 175
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 178
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    return v1

    .line 181
    :cond_16
    packed-switch p1, :pswitch_data_124

    .line 319
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 312
    :pswitch_1e
    invoke-virtual {p0}, Landroid/net/IEthernetManager$Stub;->getInterfaceList()Ljava/util/List;

    move-result-object v2

    .line 313
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 315
    goto/16 :goto_123

    .line 304
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 305
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 306
    invoke-virtual {p0, v2}, Landroid/net/IEthernetManager$Stub;->setEthernetEnabled(Z)V

    .line 307
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    goto/16 :goto_123

    .line 293
    .end local v2    # "_arg0":Z
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 295
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/connectivity/android/net/INetworkInterfaceOutcomeReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/connectivity/android/net/INetworkInterfaceOutcomeReceiver;

    move-result-object v3

    .line 296
    .local v3, "_arg1":Landroid/net/connectivity/android/net/INetworkInterfaceOutcomeReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 297
    invoke-virtual {p0, v2, v3}, Landroid/net/IEthernetManager$Stub;->disableInterface(Ljava/lang/String;Landroid/net/connectivity/android/net/INetworkInterfaceOutcomeReceiver;)V

    .line 298
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    goto/16 :goto_123

    .line 282
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/net/connectivity/android/net/INetworkInterfaceOutcomeReceiver;
    :pswitch_50
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 284
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/connectivity/android/net/INetworkInterfaceOutcomeReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/connectivity/android/net/INetworkInterfaceOutcomeReceiver;

    move-result-object v3

    .line 285
    .restart local v3    # "_arg1":Landroid/net/connectivity/android/net/INetworkInterfaceOutcomeReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 286
    invoke-virtual {p0, v2, v3}, Landroid/net/IEthernetManager$Stub;->enableInterface(Ljava/lang/String;Landroid/net/connectivity/android/net/INetworkInterfaceOutcomeReceiver;)V

    .line 287
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    goto/16 :goto_123

    .line 269
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/net/connectivity/android/net/INetworkInterfaceOutcomeReceiver;
    :pswitch_67
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 271
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/net/EthernetNetworkUpdateRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/EthernetNetworkUpdateRequest;

    .line 273
    .local v3, "_arg1":Landroid/net/EthernetNetworkUpdateRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/net/connectivity/android/net/INetworkInterfaceOutcomeReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/connectivity/android/net/INetworkInterfaceOutcomeReceiver;

    move-result-object v4

    .line 274
    .local v4, "_arg2":Landroid/net/connectivity/android/net/INetworkInterfaceOutcomeReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 275
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/IEthernetManager$Stub;->updateConfiguration(Ljava/lang/String;Landroid/net/EthernetNetworkUpdateRequest;Landroid/net/connectivity/android/net/INetworkInterfaceOutcomeReceiver;)V

    .line 276
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    goto/16 :goto_123

    .line 260
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/net/EthernetNetworkUpdateRequest;
    .end local v4    # "_arg2":Landroid/net/connectivity/android/net/INetworkInterfaceOutcomeReceiver;
    :pswitch_86
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/connectivity/android/net/ITetheredInterfaceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/connectivity/android/net/ITetheredInterfaceCallback;

    move-result-object v2

    .line 261
    .local v2, "_arg0":Landroid/net/connectivity/android/net/ITetheredInterfaceCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 262
    invoke-virtual {p0, v2}, Landroid/net/IEthernetManager$Stub;->releaseTetheredInterface(Landroid/net/connectivity/android/net/ITetheredInterfaceCallback;)V

    .line 263
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    goto/16 :goto_123

    .line 251
    .end local v2    # "_arg0":Landroid/net/connectivity/android/net/ITetheredInterfaceCallback;
    :pswitch_99
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/connectivity/android/net/ITetheredInterfaceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/connectivity/android/net/ITetheredInterfaceCallback;

    move-result-object v2

    .line 252
    .restart local v2    # "_arg0":Landroid/net/connectivity/android/net/ITetheredInterfaceCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 253
    invoke-virtual {p0, v2}, Landroid/net/IEthernetManager$Stub;->requestTetheredInterface(Landroid/net/connectivity/android/net/ITetheredInterfaceCallback;)V

    .line 254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    goto/16 :goto_123

    .line 242
    .end local v2    # "_arg0":Landroid/net/connectivity/android/net/ITetheredInterfaceCallback;
    :pswitch_ac
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 243
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 244
    invoke-virtual {p0, v2}, Landroid/net/IEthernetManager$Stub;->setIncludeTestInterfaces(Z)V

    .line 245
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    goto :goto_123

    .line 233
    .end local v2    # "_arg0":Z
    :pswitch_ba
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/IEthernetServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IEthernetServiceListener;

    move-result-object v2

    .line 234
    .local v2, "_arg0":Landroid/net/IEthernetServiceListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 235
    invoke-virtual {p0, v2}, Landroid/net/IEthernetManager$Stub;->removeListener(Landroid/net/IEthernetServiceListener;)V

    .line 236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    goto :goto_123

    .line 224
    .end local v2    # "_arg0":Landroid/net/IEthernetServiceListener;
    :pswitch_cc
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/IEthernetServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IEthernetServiceListener;

    move-result-object v2

    .line 225
    .restart local v2    # "_arg0":Landroid/net/IEthernetServiceListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 226
    invoke-virtual {p0, v2}, Landroid/net/IEthernetManager$Stub;->addListener(Landroid/net/IEthernetServiceListener;)V

    .line 227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    goto :goto_123

    .line 214
    .end local v2    # "_arg0":Landroid/net/IEthernetServiceListener;
    :pswitch_de
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 216
    invoke-virtual {p0, v2}, Landroid/net/IEthernetManager$Stub;->isAvailable(Ljava/lang/String;)Z

    move-result v3

    .line 217
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 219
    goto :goto_123

    .line 203
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_f0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 205
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/net/IpConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/IpConfiguration;

    .line 206
    .local v3, "_arg1":Landroid/net/IpConfiguration;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 207
    invoke-virtual {p0, v2, v3}, Landroid/net/IEthernetManager$Stub;->setConfiguration(Ljava/lang/String;Landroid/net/IpConfiguration;)V

    .line 208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    goto :goto_123

    .line 193
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/net/IpConfiguration;
    :pswitch_106
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 194
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 195
    invoke-virtual {p0, v2}, Landroid/net/IEthernetManager$Stub;->getConfiguration(Ljava/lang/String;)Landroid/net/IpConfiguration;

    move-result-object v3

    .line 196
    .local v3, "_result":Landroid/net/IpConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 198
    goto :goto_123

    .line 185
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/net/IpConfiguration;
    :pswitch_118
    invoke-virtual {p0}, Landroid/net/IEthernetManager$Stub;->getAvailableInterfaces()[Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 188
    nop

    .line 322
    .end local v2    # "_result":[Ljava/lang/String;
    :goto_123
    return v1

    :pswitch_data_124
    .packed-switch 0x1
        :pswitch_118
        :pswitch_106
        :pswitch_f0
        :pswitch_de
        :pswitch_cc
        :pswitch_ba
        :pswitch_ac
        :pswitch_99
        :pswitch_86
        :pswitch_67
        :pswitch_50
        :pswitch_39
        :pswitch_2a
        :pswitch_1e
    .end packed-switch
.end method
