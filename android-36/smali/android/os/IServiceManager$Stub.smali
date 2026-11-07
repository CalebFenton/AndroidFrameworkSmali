.class public abstract Landroid/os/IServiceManager$Stub;
.super Landroid/os/Binder;
.source "IServiceManager.java"

# interfaces
.implements Landroid/os/IServiceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IServiceManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addService:I = 0x5

.field static final blacklist TRANSACTION_checkService:I = 0x3

.field static final blacklist TRANSACTION_checkService2:I = 0x4

.field static final blacklist TRANSACTION_getConnectionInfo:I = 0xd

.field static final blacklist TRANSACTION_getDeclaredInstances:I = 0xa

.field static final blacklist TRANSACTION_getService:I = 0x1

.field static final blacklist TRANSACTION_getService2:I = 0x2

.field static final blacklist TRANSACTION_getServiceDebugInfo:I = 0x10

.field static final blacklist TRANSACTION_getUpdatableNames:I = 0xc

.field static final blacklist TRANSACTION_isDeclared:I = 0x9

.field static final blacklist TRANSACTION_listServices:I = 0x6

.field static final blacklist TRANSACTION_registerClientCallback:I = 0xe

.field static final blacklist TRANSACTION_registerForNotifications:I = 0x7

.field static final blacklist TRANSACTION_tryUnregisterService:I = 0xf

.field static final blacklist TRANSACTION_unregisterForNotifications:I = 0x8

.field static final blacklist TRANSACTION_updatableViaApex:I = 0xb


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 157
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 158
    const-string v0, "android.os.IServiceManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/IServiceManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/IServiceManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 166
    if-nez p0, :cond_4

    .line 167
    const/4 v0, 0x0

    return-object v0

    .line 169
    :cond_4
    const-string v0, "android.os.IServiceManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 170
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/IServiceManager;

    if-eqz v1, :cond_14

    .line 171
    move-object v1, v0

    check-cast v1, Landroid/os/IServiceManager;

    return-object v1

    .line 173
    :cond_14
    new-instance v1, Landroid/os/IServiceManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IServiceManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 182
    packed-switch p0, :pswitch_data_40

    .line 250
    const/4 v0, 0x0

    return-object v0

    .line 246
    :pswitch_5
    const-string/jumbo v0, "getServiceDebugInfo"

    return-object v0

    .line 242
    :pswitch_9
    const-string/jumbo v0, "tryUnregisterService"

    return-object v0

    .line 238
    :pswitch_d
    const-string/jumbo v0, "registerClientCallback"

    return-object v0

    .line 234
    :pswitch_11
    const-string v0, "getConnectionInfo"

    return-object v0

    .line 230
    :pswitch_14
    const-string/jumbo v0, "getUpdatableNames"

    return-object v0

    .line 226
    :pswitch_18
    const-string/jumbo v0, "updatableViaApex"

    return-object v0

    .line 222
    :pswitch_1c
    const-string v0, "getDeclaredInstances"

    return-object v0

    .line 218
    :pswitch_1f
    const-string/jumbo v0, "isDeclared"

    return-object v0

    .line 214
    :pswitch_23
    const-string/jumbo v0, "unregisterForNotifications"

    return-object v0

    .line 210
    :pswitch_27
    const-string/jumbo v0, "registerForNotifications"

    return-object v0

    .line 206
    :pswitch_2b
    const-string/jumbo v0, "listServices"

    return-object v0

    .line 202
    :pswitch_2f
    const-string v0, "addService"

    return-object v0

    .line 198
    :pswitch_32
    const-string v0, "checkService2"

    return-object v0

    .line 194
    :pswitch_35
    const-string v0, "checkService"

    return-object v0

    .line 190
    :pswitch_38
    const-string/jumbo v0, "getService2"

    return-object v0

    .line 186
    :pswitch_3c
    const-string/jumbo v0, "getService"

    return-object v0

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2b
        :pswitch_27
        :pswitch_23
        :pswitch_1f
        :pswitch_1c
        :pswitch_18
        :pswitch_14
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 177
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 825
    const/16 v0, 0xf

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 257
    invoke-static {p1}, Landroid/os/IServiceManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 261
    const-string v0, "android.os.IServiceManager"

    .line 262
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 263
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 266
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 267
    return v1

    .line 269
    :cond_16
    packed-switch p1, :pswitch_data_15a

    .line 441
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 434
    :pswitch_1e
    invoke-virtual {p0}, Landroid/os/IServiceManager$Stub;->getServiceDebugInfo()[Landroid/os/ServiceDebugInfo;

    move-result-object v2

    .line 435
    .local v2, "_result":[Landroid/os/ServiceDebugInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 436
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 437
    goto/16 :goto_159

    .line 424
    .end local v2    # "_result":[Landroid/os/ServiceDebugInfo;
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 426
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 427
    .local v3, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 428
    invoke-virtual {p0, v2, v3}, Landroid/os/IServiceManager$Stub;->tryUnregisterService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 429
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    goto/16 :goto_159

    .line 411
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    :pswitch_3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 413
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 415
    .restart local v3    # "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IClientCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IClientCallback;

    move-result-object v4

    .line 416
    .local v4, "_arg2":Landroid/os/IClientCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 417
    invoke-virtual {p0, v2, v3, v4}, Landroid/os/IServiceManager$Stub;->registerClientCallback(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/IClientCallback;)V

    .line 418
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    goto/16 :goto_159

    .line 401
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    .end local v4    # "_arg2":Landroid/os/IClientCallback;
    :pswitch_58
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 402
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 403
    invoke-virtual {p0, v2}, Landroid/os/IServiceManager$Stub;->getConnectionInfo(Ljava/lang/String;)Landroid/os/ConnectionInfo;

    move-result-object v3

    .line 404
    .local v3, "_result":Landroid/os/ConnectionInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 406
    goto/16 :goto_159

    .line 391
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/os/ConnectionInfo;
    :pswitch_6b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 392
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 393
    invoke-virtual {p0, v2}, Landroid/os/IServiceManager$Stub;->getUpdatableNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 394
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 395
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 396
    goto/16 :goto_159

    .line 381
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":[Ljava/lang/String;
    :pswitch_7e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 382
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 383
    invoke-virtual {p0, v2}, Landroid/os/IServiceManager$Stub;->updatableViaApex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 384
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 386
    goto/16 :goto_159

    .line 371
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_91
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 372
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 373
    invoke-virtual {p0, v2}, Landroid/os/IServiceManager$Stub;->getDeclaredInstances(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 374
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 375
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 376
    goto/16 :goto_159

    .line 361
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":[Ljava/lang/String;
    :pswitch_a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 362
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 363
    invoke-virtual {p0, v2}, Landroid/os/IServiceManager$Stub;->isDeclared(Ljava/lang/String;)Z

    move-result v3

    .line 364
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 366
    goto/16 :goto_159

    .line 350
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_b7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 352
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IServiceCallback;

    move-result-object v3

    .line 353
    .local v3, "_arg1":Landroid/os/IServiceCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 354
    invoke-virtual {p0, v2, v3}, Landroid/os/IServiceManager$Stub;->unregisterForNotifications(Ljava/lang/String;Landroid/os/IServiceCallback;)V

    .line 355
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    goto/16 :goto_159

    .line 339
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/IServiceCallback;
    :pswitch_ce
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 341
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IServiceCallback;

    move-result-object v3

    .line 342
    .restart local v3    # "_arg1":Landroid/os/IServiceCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 343
    invoke-virtual {p0, v2, v3}, Landroid/os/IServiceManager$Stub;->registerForNotifications(Ljava/lang/String;Landroid/os/IServiceCallback;)V

    .line 344
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    goto/16 :goto_159

    .line 329
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/IServiceCallback;
    :pswitch_e5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 330
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 331
    invoke-virtual {p0, v2}, Landroid/os/IServiceManager$Stub;->listServices(I)[Ljava/lang/String;

    move-result-object v3

    .line 332
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 334
    goto :goto_159

    .line 314
    .end local v2    # "_arg0":I
    .end local v3    # "_result":[Ljava/lang/String;
    :pswitch_f7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 316
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 318
    .local v3, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 320
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 321
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 322
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/os/IServiceManager$Stub;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 323
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    goto :goto_159

    .line 304
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    .end local v4    # "_arg2":Z
    .end local v5    # "_arg3":I
    :pswitch_111
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 305
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 306
    invoke-virtual {p0, v2}, Landroid/os/IServiceManager$Stub;->checkService2(Ljava/lang/String;)Landroid/os/Service;

    move-result-object v3

    .line 307
    .local v3, "_result":Landroid/os/Service;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 309
    goto :goto_159

    .line 294
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/os/Service;
    :pswitch_123
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 295
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 296
    invoke-virtual {p0, v2}, Landroid/os/IServiceManager$Stub;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 297
    .local v3, "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 299
    goto :goto_159

    .line 284
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/os/IBinder;
    :pswitch_135
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 285
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 286
    invoke-virtual {p0, v2}, Landroid/os/IServiceManager$Stub;->getService2(Ljava/lang/String;)Landroid/os/Service;

    move-result-object v3

    .line 287
    .local v3, "_result":Landroid/os/Service;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 289
    goto :goto_159

    .line 274
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/os/Service;
    :pswitch_147
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 275
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 276
    invoke-virtual {p0, v2}, Landroid/os/IServiceManager$Stub;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 277
    .local v3, "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 279
    nop

    .line 444
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/os/IBinder;
    :goto_159
    return v1

    :pswitch_data_15a
    .packed-switch 0x1
        :pswitch_147
        :pswitch_135
        :pswitch_123
        :pswitch_111
        :pswitch_f7
        :pswitch_e5
        :pswitch_ce
        :pswitch_b7
        :pswitch_a4
        :pswitch_91
        :pswitch_7e
        :pswitch_6b
        :pswitch_58
        :pswitch_3d
        :pswitch_2a
        :pswitch_1e
    .end packed-switch
.end method
