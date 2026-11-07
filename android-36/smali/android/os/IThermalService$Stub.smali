.class public abstract Landroid/os/IThermalService$Stub;
.super Landroid/os/Binder;
.source "IThermalService.java"

# interfaces
.implements Landroid/os/IThermalService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IThermalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IThermalService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.os.IThermalService"

.field static final blacklist TRANSACTION_getCurrentCoolingDevices:I = 0x9

.field static final blacklist TRANSACTION_getCurrentCoolingDevicesWithType:I = 0xa

.field static final blacklist TRANSACTION_getCurrentTemperatures:I = 0x4

.field static final blacklist TRANSACTION_getCurrentTemperaturesWithType:I = 0x5

.field static final blacklist TRANSACTION_getCurrentThermalStatus:I = 0x8

.field static final blacklist TRANSACTION_getThermalHeadroom:I = 0xb

.field static final blacklist TRANSACTION_getThermalHeadroomThresholds:I = 0xc

.field static final greylist-max-o TRANSACTION_registerThermalEventListener:I = 0x1

.field static final blacklist TRANSACTION_registerThermalEventListenerWithType:I = 0x2

.field static final blacklist TRANSACTION_registerThermalHeadroomListener:I = 0xd

.field static final blacklist TRANSACTION_registerThermalStatusListener:I = 0x6

.field static final greylist-max-o TRANSACTION_unregisterThermalEventListener:I = 0x3

.field static final blacklist TRANSACTION_unregisterThermalHeadroomListener:I = 0xe

.field static final blacklist TRANSACTION_unregisterThermalStatusListener:I = 0x7


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 158
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 159
    const-string v0, "android.os.IThermalService"

    invoke-virtual {p0, p0, v0}, Landroid/os/IThermalService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 167
    if-nez p0, :cond_4

    .line 168
    const/4 v0, 0x0

    return-object v0

    .line 170
    :cond_4
    const-string v0, "android.os.IThermalService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 171
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/IThermalService;

    if-eqz v1, :cond_14

    .line 172
    move-object v1, v0

    check-cast v1, Landroid/os/IThermalService;

    return-object v1

    .line 174
    :cond_14
    new-instance v1, Landroid/os/IThermalService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IThermalService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 183
    packed-switch p0, :pswitch_data_38

    .line 243
    const/4 v0, 0x0

    return-object v0

    .line 239
    :pswitch_5
    const-string/jumbo v0, "unregisterThermalHeadroomListener"

    return-object v0

    .line 235
    :pswitch_9
    const-string/jumbo v0, "registerThermalHeadroomListener"

    return-object v0

    .line 231
    :pswitch_d
    const-string/jumbo v0, "getThermalHeadroomThresholds"

    return-object v0

    .line 227
    :pswitch_11
    const-string/jumbo v0, "getThermalHeadroom"

    return-object v0

    .line 223
    :pswitch_15
    const-string v0, "getCurrentCoolingDevicesWithType"

    return-object v0

    .line 219
    :pswitch_18
    const-string v0, "getCurrentCoolingDevices"

    return-object v0

    .line 215
    :pswitch_1b
    const-string v0, "getCurrentThermalStatus"

    return-object v0

    .line 211
    :pswitch_1e
    const-string/jumbo v0, "unregisterThermalStatusListener"

    return-object v0

    .line 207
    :pswitch_22
    const-string/jumbo v0, "registerThermalStatusListener"

    return-object v0

    .line 203
    :pswitch_26
    const-string v0, "getCurrentTemperaturesWithType"

    return-object v0

    .line 199
    :pswitch_29
    const-string v0, "getCurrentTemperatures"

    return-object v0

    .line 195
    :pswitch_2c
    const-string/jumbo v0, "unregisterThermalEventListener"

    return-object v0

    .line 191
    :pswitch_30
    const-string/jumbo v0, "registerThermalEventListenerWithType"

    return-object v0

    .line 187
    :pswitch_34
    const-string/jumbo v0, "registerThermalEventListener"

    return-object v0

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_34
        :pswitch_30
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_22
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 178
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 760
    const/16 v0, 0xd

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 250
    invoke-static {p1}, Landroid/os/IThermalService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 254
    const-string v0, "android.os.IThermalService"

    .line 255
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 256
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 259
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 260
    return v1

    .line 262
    :cond_16
    packed-switch p1, :pswitch_data_128

    .line 396
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 387
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IThermalHeadroomListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalHeadroomListener;

    move-result-object v2

    .line 388
    .local v2, "_arg0":Landroid/os/IThermalHeadroomListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 389
    invoke-virtual {p0, v2}, Landroid/os/IThermalService$Stub;->unregisterThermalHeadroomListener(Landroid/os/IThermalHeadroomListener;)Z

    move-result v3

    .line 390
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 392
    goto/16 :goto_126

    .line 377
    .end local v2    # "_arg0":Landroid/os/IThermalHeadroomListener;
    .end local v3    # "_result":Z
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IThermalHeadroomListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalHeadroomListener;

    move-result-object v2

    .line 378
    .restart local v2    # "_arg0":Landroid/os/IThermalHeadroomListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 379
    invoke-virtual {p0, v2}, Landroid/os/IThermalService$Stub;->registerThermalHeadroomListener(Landroid/os/IThermalHeadroomListener;)Z

    move-result v3

    .line 380
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 382
    goto/16 :goto_126

    .line 369
    .end local v2    # "_arg0":Landroid/os/IThermalHeadroomListener;
    .end local v3    # "_result":Z
    :pswitch_4c
    invoke-virtual {p0}, Landroid/os/IThermalService$Stub;->getThermalHeadroomThresholds()[F

    move-result-object v2

    .line 370
    .local v2, "_result":[F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 372
    goto/16 :goto_126

    .line 360
    .end local v2    # "_result":[F
    :pswitch_58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 361
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 362
    invoke-virtual {p0, v2}, Landroid/os/IThermalService$Stub;->getThermalHeadroom(I)F

    move-result v3

    .line 363
    .local v3, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 365
    goto/16 :goto_126

    .line 350
    .end local v2    # "_arg0":I
    .end local v3    # "_result":F
    :pswitch_6b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 351
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 352
    invoke-virtual {p0, v2}, Landroid/os/IThermalService$Stub;->getCurrentCoolingDevicesWithType(I)[Landroid/os/CoolingDevice;

    move-result-object v3

    .line 353
    .local v3, "_result":[Landroid/os/CoolingDevice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 355
    goto/16 :goto_126

    .line 342
    .end local v2    # "_arg0":I
    .end local v3    # "_result":[Landroid/os/CoolingDevice;
    :pswitch_7e
    invoke-virtual {p0}, Landroid/os/IThermalService$Stub;->getCurrentCoolingDevices()[Landroid/os/CoolingDevice;

    move-result-object v2

    .line 343
    .local v2, "_result":[Landroid/os/CoolingDevice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 345
    goto/16 :goto_126

    .line 335
    .end local v2    # "_result":[Landroid/os/CoolingDevice;
    :pswitch_8a
    invoke-virtual {p0}, Landroid/os/IThermalService$Stub;->getCurrentThermalStatus()I

    move-result v2

    .line 336
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    goto/16 :goto_126

    .line 326
    .end local v2    # "_result":I
    :pswitch_96
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IThermalStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalStatusListener;

    move-result-object v2

    .line 327
    .local v2, "_arg0":Landroid/os/IThermalStatusListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 328
    invoke-virtual {p0, v2}, Landroid/os/IThermalService$Stub;->unregisterThermalStatusListener(Landroid/os/IThermalStatusListener;)Z

    move-result v3

    .line 329
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 331
    goto/16 :goto_126

    .line 316
    .end local v2    # "_arg0":Landroid/os/IThermalStatusListener;
    .end local v3    # "_result":Z
    :pswitch_ad
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IThermalStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalStatusListener;

    move-result-object v2

    .line 317
    .restart local v2    # "_arg0":Landroid/os/IThermalStatusListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 318
    invoke-virtual {p0, v2}, Landroid/os/IThermalService$Stub;->registerThermalStatusListener(Landroid/os/IThermalStatusListener;)Z

    move-result v3

    .line 319
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 321
    goto :goto_126

    .line 306
    .end local v2    # "_arg0":Landroid/os/IThermalStatusListener;
    .end local v3    # "_result":Z
    :pswitch_c3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 307
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 308
    invoke-virtual {p0, v2}, Landroid/os/IThermalService$Stub;->getCurrentTemperaturesWithType(I)[Landroid/os/Temperature;

    move-result-object v3

    .line 309
    .local v3, "_result":[Landroid/os/Temperature;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 311
    goto :goto_126

    .line 298
    .end local v2    # "_arg0":I
    .end local v3    # "_result":[Landroid/os/Temperature;
    :pswitch_d5
    invoke-virtual {p0}, Landroid/os/IThermalService$Stub;->getCurrentTemperatures()[Landroid/os/Temperature;

    move-result-object v2

    .line 299
    .local v2, "_result":[Landroid/os/Temperature;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 301
    goto :goto_126

    .line 289
    .end local v2    # "_result":[Landroid/os/Temperature;
    :pswitch_e0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IThermalEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalEventListener;

    move-result-object v2

    .line 290
    .local v2, "_arg0":Landroid/os/IThermalEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 291
    invoke-virtual {p0, v2}, Landroid/os/IThermalService$Stub;->unregisterThermalEventListener(Landroid/os/IThermalEventListener;)Z

    move-result v3

    .line 292
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 294
    goto :goto_126

    .line 277
    .end local v2    # "_arg0":Landroid/os/IThermalEventListener;
    .end local v3    # "_result":Z
    :pswitch_f6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IThermalEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalEventListener;

    move-result-object v2

    .line 279
    .restart local v2    # "_arg0":Landroid/os/IThermalEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 280
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 281
    invoke-virtual {p0, v2, v3}, Landroid/os/IThermalService$Stub;->registerThermalEventListenerWithType(Landroid/os/IThermalEventListener;I)Z

    move-result v4

    .line 282
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 284
    goto :goto_126

    .line 267
    .end local v2    # "_arg0":Landroid/os/IThermalEventListener;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_110
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IThermalEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalEventListener;

    move-result-object v2

    .line 268
    .restart local v2    # "_arg0":Landroid/os/IThermalEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 269
    invoke-virtual {p0, v2}, Landroid/os/IThermalService$Stub;->registerThermalEventListener(Landroid/os/IThermalEventListener;)Z

    move-result v3

    .line 270
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 272
    nop

    .line 399
    .end local v2    # "_arg0":Landroid/os/IThermalEventListener;
    .end local v3    # "_result":Z
    :goto_126
    return v1

    nop

    :pswitch_data_128
    .packed-switch 0x1
        :pswitch_110
        :pswitch_f6
        :pswitch_e0
        :pswitch_d5
        :pswitch_c3
        :pswitch_ad
        :pswitch_96
        :pswitch_8a
        :pswitch_7e
        :pswitch_6b
        :pswitch_58
        :pswitch_4c
        :pswitch_35
        :pswitch_1e
    .end packed-switch
.end method
