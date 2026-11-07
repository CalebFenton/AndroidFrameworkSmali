.class public abstract Landroid/net/wifi/nl80211/IWificond$Stub;
.super Landroid/os/Binder;
.source "IWificond.java"

# interfaces
.implements Landroid/net/wifi/nl80211/IWificond;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nl80211/IWificond;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/nl80211/IWificond$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_GetApInterfaces:I = 0x7

.field static final blacklist TRANSACTION_GetClientInterfaces:I = 0x6

.field static final blacklist TRANSACTION_RegisterCallback:I = 0xd

.field static final blacklist TRANSACTION_UnregisterCallback:I = 0xe

.field static final blacklist TRANSACTION_createApInterface:I = 0x1

.field static final blacklist TRANSACTION_createClientInterface:I = 0x2

.field static final blacklist TRANSACTION_getAvailable2gChannels:I = 0x8

.field static final blacklist TRANSACTION_getAvailable5gNonDFSChannels:I = 0x9

.field static final blacklist TRANSACTION_getAvailable60gChannels:I = 0xc

.field static final blacklist TRANSACTION_getAvailable6gChannels:I = 0xb

.field static final blacklist TRANSACTION_getAvailableDFSChannels:I = 0xa

.field static final blacklist TRANSACTION_getDeviceWiphyCapabilities:I = 0x11

.field static final blacklist TRANSACTION_notifyCountryCodeChanged:I = 0x12

.field static final blacklist TRANSACTION_registerWificondEventCallback:I = 0xf

.field static final blacklist TRANSACTION_tearDownApInterface:I = 0x3

.field static final blacklist TRANSACTION_tearDownClientInterface:I = 0x4

.field static final blacklist TRANSACTION_tearDownInterfaces:I = 0x5

.field static final blacklist TRANSACTION_unregisterWificondEventCallback:I = 0x10


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 143
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 144
    const-string v0, "android.net.wifi.nl80211.IWificond"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/nl80211/IWificond$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/IWificond;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 152
    if-nez p0, :cond_4

    .line 153
    const/4 v0, 0x0

    return-object v0

    .line 155
    :cond_4
    const-string v0, "android.net.wifi.nl80211.IWificond"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 156
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/wifi/nl80211/IWificond;

    if-eqz v1, :cond_14

    .line 157
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/nl80211/IWificond;

    return-object v1

    .line 159
    :cond_14
    new-instance v1, Landroid/net/wifi/nl80211/IWificond$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/nl80211/IWificond$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 168
    packed-switch p0, :pswitch_data_42

    .line 244
    const/4 v0, 0x0

    return-object v0

    .line 240
    :pswitch_5
    const-string/jumbo v0, "notifyCountryCodeChanged"

    return-object v0

    .line 236
    :pswitch_9
    const-string v0, "getDeviceWiphyCapabilities"

    return-object v0

    .line 232
    :pswitch_c
    const-string/jumbo v0, "unregisterWificondEventCallback"

    return-object v0

    .line 228
    :pswitch_10
    const-string/jumbo v0, "registerWificondEventCallback"

    return-object v0

    .line 224
    :pswitch_14
    const-string v0, "UnregisterCallback"

    return-object v0

    .line 220
    :pswitch_17
    const-string v0, "RegisterCallback"

    return-object v0

    .line 216
    :pswitch_1a
    const-string v0, "getAvailable60gChannels"

    return-object v0

    .line 212
    :pswitch_1d
    const-string v0, "getAvailable6gChannels"

    return-object v0

    .line 208
    :pswitch_20
    const-string v0, "getAvailableDFSChannels"

    return-object v0

    .line 204
    :pswitch_23
    const-string v0, "getAvailable5gNonDFSChannels"

    return-object v0

    .line 200
    :pswitch_26
    const-string v0, "getAvailable2gChannels"

    return-object v0

    .line 196
    :pswitch_29
    const-string v0, "GetApInterfaces"

    return-object v0

    .line 192
    :pswitch_2c
    const-string v0, "GetClientInterfaces"

    return-object v0

    .line 188
    :pswitch_2f
    const-string/jumbo v0, "tearDownInterfaces"

    return-object v0

    .line 184
    :pswitch_33
    const-string/jumbo v0, "tearDownClientInterface"

    return-object v0

    .line 180
    :pswitch_37
    const-string/jumbo v0, "tearDownApInterface"

    return-object v0

    .line 176
    :pswitch_3b
    const-string v0, "createClientInterface"

    return-object v0

    .line 172
    :pswitch_3e
    const-string v0, "createApInterface"

    return-object v0

    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_3b
        :pswitch_37
        :pswitch_33
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
        :pswitch_10
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 163
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 779
    const/16 v0, 0x11

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 251
    invoke-static {p1}, Landroid/net/wifi/nl80211/IWificond$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 255
    const-string v0, "android.net.wifi.nl80211.IWificond"

    .line 256
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 257
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 260
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 261
    return v1

    .line 263
    :cond_16
    packed-switch p1, :pswitch_data_118

    .line 409
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 404
    :pswitch_1e
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWificond$Stub;->notifyCountryCodeChanged()V

    .line 405
    goto/16 :goto_116

    .line 395
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 396
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 397
    invoke-virtual {p0, v2}, Landroid/net/wifi/nl80211/IWificond$Stub;->getDeviceWiphyCapabilities(Ljava/lang/String;)Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    move-result-object v3

    .line 398
    .local v3, "_result":Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 400
    goto/16 :goto_116

    .line 387
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/nl80211/IWificondEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/IWificondEventCallback;

    move-result-object v2

    .line 388
    .local v2, "_arg0":Landroid/net/wifi/nl80211/IWificondEventCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 389
    invoke-virtual {p0, v2}, Landroid/net/wifi/nl80211/IWificond$Stub;->unregisterWificondEventCallback(Landroid/net/wifi/nl80211/IWificondEventCallback;)V

    .line 390
    goto/16 :goto_116

    .line 379
    .end local v2    # "_arg0":Landroid/net/wifi/nl80211/IWificondEventCallback;
    :pswitch_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/nl80211/IWificondEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/IWificondEventCallback;

    move-result-object v2

    .line 380
    .restart local v2    # "_arg0":Landroid/net/wifi/nl80211/IWificondEventCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 381
    invoke-virtual {p0, v2}, Landroid/net/wifi/nl80211/IWificond$Stub;->registerWificondEventCallback(Landroid/net/wifi/nl80211/IWificondEventCallback;)V

    .line 382
    goto/16 :goto_116

    .line 371
    .end local v2    # "_arg0":Landroid/net/wifi/nl80211/IWificondEventCallback;
    :pswitch_56
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/nl80211/IInterfaceEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/IInterfaceEventCallback;

    move-result-object v2

    .line 372
    .local v2, "_arg0":Landroid/net/wifi/nl80211/IInterfaceEventCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 373
    invoke-virtual {p0, v2}, Landroid/net/wifi/nl80211/IWificond$Stub;->UnregisterCallback(Landroid/net/wifi/nl80211/IInterfaceEventCallback;)V

    .line 374
    goto/16 :goto_116

    .line 363
    .end local v2    # "_arg0":Landroid/net/wifi/nl80211/IInterfaceEventCallback;
    :pswitch_66
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/nl80211/IInterfaceEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/IInterfaceEventCallback;

    move-result-object v2

    .line 364
    .restart local v2    # "_arg0":Landroid/net/wifi/nl80211/IInterfaceEventCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 365
    invoke-virtual {p0, v2}, Landroid/net/wifi/nl80211/IWificond$Stub;->RegisterCallback(Landroid/net/wifi/nl80211/IInterfaceEventCallback;)V

    .line 366
    goto/16 :goto_116

    .line 355
    .end local v2    # "_arg0":Landroid/net/wifi/nl80211/IInterfaceEventCallback;
    :pswitch_76
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWificond$Stub;->getAvailable60gChannels()[I

    move-result-object v2

    .line 356
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 358
    goto/16 :goto_116

    .line 348
    .end local v2    # "_result":[I
    :pswitch_82
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWificond$Stub;->getAvailable6gChannels()[I

    move-result-object v2

    .line 349
    .restart local v2    # "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 351
    goto/16 :goto_116

    .line 341
    .end local v2    # "_result":[I
    :pswitch_8e
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWificond$Stub;->getAvailableDFSChannels()[I

    move-result-object v2

    .line 342
    .restart local v2    # "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 344
    goto/16 :goto_116

    .line 334
    .end local v2    # "_result":[I
    :pswitch_9a
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWificond$Stub;->getAvailable5gNonDFSChannels()[I

    move-result-object v2

    .line 335
    .restart local v2    # "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 337
    goto/16 :goto_116

    .line 327
    .end local v2    # "_result":[I
    :pswitch_a6
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWificond$Stub;->getAvailable2gChannels()[I

    move-result-object v2

    .line 328
    .restart local v2    # "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 330
    goto :goto_116

    .line 320
    .end local v2    # "_result":[I
    :pswitch_b1
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWificond$Stub;->GetApInterfaces()Ljava/util/List;

    move-result-object v2

    .line 321
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    .line 323
    goto :goto_116

    .line 313
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :pswitch_bc
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWificond$Stub;->GetClientInterfaces()Ljava/util/List;

    move-result-object v2

    .line 314
    .restart local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    .line 316
    goto :goto_116

    .line 307
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :pswitch_c7
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWificond$Stub;->tearDownInterfaces()V

    .line 308
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    goto :goto_116

    .line 298
    :pswitch_ce
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 299
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 300
    invoke-virtual {p0, v2}, Landroid/net/wifi/nl80211/IWificond$Stub;->tearDownClientInterface(Ljava/lang/String;)Z

    move-result v3

    .line 301
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 303
    goto :goto_116

    .line 288
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_e0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 289
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 290
    invoke-virtual {p0, v2}, Landroid/net/wifi/nl80211/IWificond$Stub;->tearDownApInterface(Ljava/lang/String;)Z

    move-result v3

    .line 291
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 293
    goto :goto_116

    .line 278
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_f2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 279
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 280
    invoke-virtual {p0, v2}, Landroid/net/wifi/nl80211/IWificond$Stub;->createClientInterface(Ljava/lang/String;)Landroid/net/wifi/nl80211/IClientInterface;

    move-result-object v3

    .line 281
    .local v3, "_result":Landroid/net/wifi/nl80211/IClientInterface;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 283
    goto :goto_116

    .line 268
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/net/wifi/nl80211/IClientInterface;
    :pswitch_104
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 269
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 270
    invoke-virtual {p0, v2}, Landroid/net/wifi/nl80211/IWificond$Stub;->createApInterface(Ljava/lang/String;)Landroid/net/wifi/nl80211/IApInterface;

    move-result-object v3

    .line 271
    .local v3, "_result":Landroid/net/wifi/nl80211/IApInterface;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 273
    nop

    .line 412
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/net/wifi/nl80211/IApInterface;
    :goto_116
    return v1

    nop

    :pswitch_data_118
    .packed-switch 0x1
        :pswitch_104
        :pswitch_f2
        :pswitch_e0
        :pswitch_ce
        :pswitch_c7
        :pswitch_bc
        :pswitch_b1
        :pswitch_a6
        :pswitch_9a
        :pswitch_8e
        :pswitch_82
        :pswitch_76
        :pswitch_66
        :pswitch_56
        :pswitch_46
        :pswitch_36
        :pswitch_23
        :pswitch_1e
    .end packed-switch
.end method
