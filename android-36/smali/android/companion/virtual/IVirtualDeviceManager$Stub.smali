.class public abstract Landroid/companion/virtual/IVirtualDeviceManager$Stub;
.super Landroid/os/Binder;
.source "IVirtualDeviceManager.java"

# interfaces
.implements Landroid/companion/virtual/IVirtualDeviceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/IVirtualDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/IVirtualDeviceManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_createVirtualDevice:I = 0x1

.field static final blacklist TRANSACTION_getAllPersistentDeviceIds:I = 0xe

.field static final blacklist TRANSACTION_getAudioPlaybackSessionId:I = 0xa

.field static final blacklist TRANSACTION_getAudioRecordingSessionId:I = 0xb

.field static final blacklist TRANSACTION_getDeviceIdForDisplayId:I = 0x6

.field static final blacklist TRANSACTION_getDevicePolicy:I = 0x9

.field static final blacklist TRANSACTION_getDisplayNameForPersistentDeviceId:I = 0x7

.field static final blacklist TRANSACTION_getVirtualDevice:I = 0x3

.field static final blacklist TRANSACTION_getVirtualDevices:I = 0x2

.field static final blacklist TRANSACTION_isValidVirtualDeviceId:I = 0x8

.field static final blacklist TRANSACTION_isVirtualDeviceOwnedMirrorDisplay:I = 0xd

.field static final blacklist TRANSACTION_playSoundEffect:I = 0xc

.field static final blacklist TRANSACTION_registerVirtualDeviceListener:I = 0x4

.field static final blacklist TRANSACTION_unregisterVirtualDeviceListener:I = 0x5


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 143
    nop

    .line 144
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 143
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 145
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 133
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 134
    const-string v0, "android.companion.virtual.IVirtualDeviceManager"

    invoke-virtual {p0, p0, v0}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 135
    if-eqz p1, :cond_d

    .line 138
    iput-object p1, p0, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 139
    return-void

    .line 136
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/IVirtualDeviceManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 152
    if-nez p0, :cond_4

    .line 153
    const/4 v0, 0x0

    return-object v0

    .line 155
    :cond_4
    const-string v0, "android.companion.virtual.IVirtualDeviceManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 156
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/companion/virtual/IVirtualDeviceManager;

    if-eqz v1, :cond_14

    .line 157
    move-object v1, v0

    check-cast v1, Landroid/companion/virtual/IVirtualDeviceManager;

    return-object v1

    .line 159
    :cond_14
    new-instance v1, Landroid/companion/virtual/IVirtualDeviceManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/companion/virtual/IVirtualDeviceManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 168
    packed-switch p0, :pswitch_data_36

    .line 228
    const/4 v0, 0x0

    return-object v0

    .line 224
    :pswitch_5
    const-string v0, "getAllPersistentDeviceIds"

    return-object v0

    .line 220
    :pswitch_8
    const-string/jumbo v0, "isVirtualDeviceOwnedMirrorDisplay"

    return-object v0

    .line 216
    :pswitch_c
    const-string/jumbo v0, "playSoundEffect"

    return-object v0

    .line 212
    :pswitch_10
    const-string v0, "getAudioRecordingSessionId"

    return-object v0

    .line 208
    :pswitch_13
    const-string v0, "getAudioPlaybackSessionId"

    return-object v0

    .line 204
    :pswitch_16
    const-string v0, "getDevicePolicy"

    return-object v0

    .line 200
    :pswitch_19
    const-string/jumbo v0, "isValidVirtualDeviceId"

    return-object v0

    .line 196
    :pswitch_1d
    const-string v0, "getDisplayNameForPersistentDeviceId"

    return-object v0

    .line 192
    :pswitch_20
    const-string v0, "getDeviceIdForDisplayId"

    return-object v0

    .line 188
    :pswitch_23
    const-string/jumbo v0, "unregisterVirtualDeviceListener"

    return-object v0

    .line 184
    :pswitch_27
    const-string/jumbo v0, "registerVirtualDeviceListener"

    return-object v0

    .line 180
    :pswitch_2b
    const-string/jumbo v0, "getVirtualDevice"

    return-object v0

    .line 176
    :pswitch_2f
    const-string/jumbo v0, "getVirtualDevices"

    return-object v0

    .line 172
    :pswitch_33
    const-string v0, "createVirtualDevice"

    return-object v0

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_33
        :pswitch_2f
        :pswitch_2b
        :pswitch_27
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 163
    return-object p0
.end method

.method protected blacklist createVirtualDevice_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 723
    iget-object v0, p0, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CREATE_VIRTUAL_DEVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 724
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 741
    const/16 v0, 0xd

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 235
    invoke-static {p1}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 239
    const-string v0, "android.companion.virtual.IVirtualDeviceManager"

    .line 240
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 241
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 244
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 245
    return v1

    .line 247
    :cond_16
    packed-switch p1, :pswitch_data_14c

    .line 402
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 395
    :pswitch_1e
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->getAllPersistentDeviceIds()Ljava/util/List;

    move-result-object v2

    .line 396
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 398
    goto/16 :goto_14b

    .line 386
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 387
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 388
    invoke-virtual {p0, v2}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->isVirtualDeviceOwnedMirrorDisplay(I)Z

    move-result v3

    .line 389
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 391
    goto/16 :goto_14b

    .line 375
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 377
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 378
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 379
    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->playSoundEffect(II)V

    .line 380
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    goto/16 :goto_14b

    .line 365
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 366
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 367
    invoke-virtual {p0, v2}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->getAudioRecordingSessionId(I)I

    move-result v3

    .line 368
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    goto/16 :goto_14b

    .line 355
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 356
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 357
    invoke-virtual {p0, v2}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->getAudioPlaybackSessionId(I)I

    move-result v3

    .line 358
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    goto/16 :goto_14b

    .line 343
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 345
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 346
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 347
    invoke-virtual {p0, v2, v3}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->getDevicePolicy(II)I

    move-result v4

    .line 348
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 350
    goto/16 :goto_14b

    .line 333
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_8d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 334
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 335
    invoke-virtual {p0, v2}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->isValidVirtualDeviceId(I)Z

    move-result v3

    .line 336
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 338
    goto/16 :goto_14b

    .line 317
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_a0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 318
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 319
    invoke-virtual {p0, v2}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->getDisplayNameForPersistentDeviceId(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 320
    .local v3, "_result":Ljava/lang/CharSequence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    if-eqz v3, :cond_b8

    .line 322
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    invoke-static {v3, p3, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_14b

    .line 326
    :cond_b8
    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    goto/16 :goto_14b

    .line 307
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/CharSequence;
    :pswitch_be
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 308
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 309
    invoke-virtual {p0, v2}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->getDeviceIdForDisplayId(I)I

    move-result v3

    .line 310
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 312
    goto/16 :goto_14b

    .line 298
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_d1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/companion/virtual/IVirtualDeviceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/IVirtualDeviceListener;

    move-result-object v2

    .line 299
    .local v2, "_arg0":Landroid/companion/virtual/IVirtualDeviceListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 300
    invoke-virtual {p0, v2}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->unregisterVirtualDeviceListener(Landroid/companion/virtual/IVirtualDeviceListener;)V

    .line 301
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    goto :goto_14b

    .line 289
    .end local v2    # "_arg0":Landroid/companion/virtual/IVirtualDeviceListener;
    :pswitch_e3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/companion/virtual/IVirtualDeviceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/IVirtualDeviceListener;

    move-result-object v2

    .line 290
    .restart local v2    # "_arg0":Landroid/companion/virtual/IVirtualDeviceListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 291
    invoke-virtual {p0, v2}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->registerVirtualDeviceListener(Landroid/companion/virtual/IVirtualDeviceListener;)V

    .line 292
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    goto :goto_14b

    .line 279
    .end local v2    # "_arg0":Landroid/companion/virtual/IVirtualDeviceListener;
    :pswitch_f5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 280
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 281
    invoke-virtual {p0, v2}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->getVirtualDevice(I)Landroid/companion/virtual/VirtualDevice;

    move-result-object v3

    .line 282
    .local v3, "_result":Landroid/companion/virtual/VirtualDevice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 284
    goto :goto_14b

    .line 271
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/companion/virtual/VirtualDevice;
    :pswitch_107
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->getVirtualDevices()Ljava/util/List;

    move-result-object v2

    .line 272
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/companion/virtual/VirtualDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 274
    goto :goto_14b

    .line 252
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/companion/virtual/VirtualDevice;>;"
    :pswitch_112
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 254
    .local v4, "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/content/AttributionSource;

    .line 256
    .local v5, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 258
    .local v6, "_arg2":I
    sget-object v2, Landroid/companion/virtual/VirtualDeviceParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/companion/virtual/VirtualDeviceParams;

    .line 260
    .local v7, "_arg3":Landroid/companion/virtual/VirtualDeviceParams;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/companion/virtual/IVirtualDeviceActivityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/IVirtualDeviceActivityListener;

    move-result-object v8

    .line 262
    .local v8, "_arg4":Landroid/companion/virtual/IVirtualDeviceActivityListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/companion/virtual/IVirtualDeviceSoundEffectListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;

    move-result-object v9

    .line 263
    .local v9, "_arg5":Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 264
    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->createVirtualDevice(Landroid/os/IBinder;Landroid/content/AttributionSource;ILandroid/companion/virtual/VirtualDeviceParams;Landroid/companion/virtual/IVirtualDeviceActivityListener;Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;)Landroid/companion/virtual/IVirtualDevice;

    move-result-object v2

    .line 265
    .local v2, "_result":Landroid/companion/virtual/IVirtualDevice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 267
    nop

    .line 405
    .end local v2    # "_result":Landroid/companion/virtual/IVirtualDevice;
    .end local v4    # "_arg0":Landroid/os/IBinder;
    .end local v5    # "_arg1":Landroid/content/AttributionSource;
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":Landroid/companion/virtual/VirtualDeviceParams;
    .end local v8    # "_arg4":Landroid/companion/virtual/IVirtualDeviceActivityListener;
    .end local v9    # "_arg5":Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;
    :goto_14b
    return v1

    :pswitch_data_14c
    .packed-switch 0x1
        :pswitch_112
        :pswitch_107
        :pswitch_f5
        :pswitch_e3
        :pswitch_d1
        :pswitch_be
        :pswitch_a0
        :pswitch_8d
        :pswitch_76
        :pswitch_63
        :pswitch_50
        :pswitch_3d
        :pswitch_2a
        :pswitch_1e
    .end packed-switch
.end method
