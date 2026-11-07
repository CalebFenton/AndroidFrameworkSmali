.class public abstract Landroid/os/IVibratorManagerService$Stub;
.super Landroid/os/Binder;
.source "IVibratorManagerService.java"

# interfaces
.implements Landroid/os/IVibratorManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IVibratorManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IVibratorManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist PERMISSIONS_startVendorVibrationSession:[Ljava/lang/String;

.field static final blacklist TRANSACTION_cancelVibrate:I = 0x9

.field static final blacklist TRANSACTION_getCapabilities:I = 0x2

.field static final blacklist TRANSACTION_getVibratorIds:I = 0x1

.field static final blacklist TRANSACTION_getVibratorInfo:I = 0x3

.field static final blacklist TRANSACTION_isVibrating:I = 0x4

.field static final blacklist TRANSACTION_performHapticFeedback:I = 0xa

.field static final blacklist TRANSACTION_performHapticFeedbackForInputDevice:I = 0xb

.field static final blacklist TRANSACTION_registerVibratorStateListener:I = 0x5

.field static final blacklist TRANSACTION_setAlwaysOnEffect:I = 0x7

.field static final blacklist TRANSACTION_startVendorVibrationSession:I = 0xc

.field static final blacklist TRANSACTION_unregisterVibratorStateListener:I = 0x6

.field static final blacklist TRANSACTION_vibrate:I = 0x8


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 643
    const-string v0, "android.permission.VIBRATE_VENDOR_EFFECTS"

    const-string v1, "android.permission.START_VIBRATION_SESSIONS"

    const-string v2, "android.permission.VIBRATE"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/IVibratorManagerService$Stub;->PERMISSIONS_startVendorVibrationSession:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 88
    nop

    .line 89
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 88
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/IVibratorManagerService$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 90
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 78
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 79
    const-string v0, "android.os.IVibratorManagerService"

    invoke-virtual {p0, p0, v0}, Landroid/os/IVibratorManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 80
    if-eqz p1, :cond_d

    .line 83
    iput-object p1, p0, Landroid/os/IVibratorManagerService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 84
    return-void

    .line 81
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/IVibratorManagerService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 97
    if-nez p0, :cond_4

    .line 98
    const/4 v0, 0x0

    return-object v0

    .line 100
    :cond_4
    const-string v0, "android.os.IVibratorManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 101
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/IVibratorManagerService;

    if-eqz v1, :cond_14

    .line 102
    move-object v1, v0

    check-cast v1, Landroid/os/IVibratorManagerService;

    return-object v1

    .line 104
    :cond_14
    new-instance v1, Landroid/os/IVibratorManagerService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IVibratorManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 113
    packed-switch p0, :pswitch_data_34

    .line 165
    const/4 v0, 0x0

    return-object v0

    .line 161
    :pswitch_5
    const-string/jumbo v0, "startVendorVibrationSession"

    return-object v0

    .line 157
    :pswitch_9
    const-string/jumbo v0, "performHapticFeedbackForInputDevice"

    return-object v0

    .line 153
    :pswitch_d
    const-string/jumbo v0, "performHapticFeedback"

    return-object v0

    .line 149
    :pswitch_11
    const-string v0, "cancelVibrate"

    return-object v0

    .line 145
    :pswitch_14
    const-string/jumbo v0, "vibrate"

    return-object v0

    .line 141
    :pswitch_18
    const-string/jumbo v0, "setAlwaysOnEffect"

    return-object v0

    .line 137
    :pswitch_1c
    const-string/jumbo v0, "unregisterVibratorStateListener"

    return-object v0

    .line 133
    :pswitch_20
    const-string/jumbo v0, "registerVibratorStateListener"

    return-object v0

    .line 129
    :pswitch_24
    const-string/jumbo v0, "isVibrating"

    return-object v0

    .line 125
    :pswitch_28
    const-string/jumbo v0, "getVibratorInfo"

    return-object v0

    .line 121
    :pswitch_2c
    const-string v0, "getCapabilities"

    return-object v0

    .line 117
    :pswitch_2f
    const-string/jumbo v0, "getVibratorIds"

    return-object v0

    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_2c
        :pswitch_28
        :pswitch_24
        :pswitch_20
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

    .line 108
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 651
    const/16 v0, 0xb

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 172
    invoke-static {p1}, Landroid/os/IVibratorManagerService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist isVibrating_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 625
    iget-object v0, p0, Landroid/os/IVibratorManagerService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/IVibratorManagerService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/IVibratorManagerService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_VIBRATOR_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 626
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 20
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 176
    move/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    const-string v13, "android.os.IVibratorManagerService"

    .line 177
    .local v13, "descriptor":Ljava/lang/String;
    const/4 v14, 0x1

    if-lt v10, v14, :cond_13

    const v0, 0xffffff

    if-gt v10, v0, :cond_13

    .line 178
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    :cond_13
    const v0, 0x5f4e5446

    if-ne v10, v0, :cond_1c

    .line 181
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    return v14

    .line 184
    :cond_1c
    packed-switch v10, :pswitch_data_18a

    .line 362
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 341
    :pswitch_24
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 343
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 345
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 347
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 349
    .local v4, "_arg3":[I
    sget-object v0, Landroid/os/VibrationAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/VibrationAttributes;

    .line 351
    .local v5, "_arg4":Landroid/os/VibrationAttributes;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 353
    .local v6, "_arg5":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/vibrator/IVibrationSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/vibrator/IVibrationSessionCallback;

    move-result-object v7

    .line 354
    .local v7, "_arg6":Landroid/os/vibrator/IVibrationSessionCallback;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 355
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/os/IVibratorManagerService$Stub;->startVendorVibrationSession(IILjava/lang/String;[ILandroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/vibrator/IVibrationSessionCallback;)Landroid/os/ICancellationSignal;

    move-result-object v8

    .line 356
    .local v8, "_result":Landroid/os/ICancellationSignal;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    invoke-virtual {v12, v8}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 358
    goto/16 :goto_189

    .line 317
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":[I
    .end local v5    # "_arg4":Landroid/os/VibrationAttributes;
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v7    # "_arg6":Landroid/os/vibrator/IVibrationSessionCallback;
    .end local v8    # "_result":Landroid/os/ICancellationSignal;
    :pswitch_59
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 319
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 321
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 323
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 325
    .local v4, "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 327
    .local v5, "_arg4":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 329
    .local v6, "_arg5":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 331
    .local v7, "_arg6":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 333
    .local v8, "_arg7":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 334
    .local v9, "_arg8":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 335
    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Landroid/os/IVibratorManagerService$Stub;->performHapticFeedbackForInputDevice(IILjava/lang/String;IIILjava/lang/String;II)V

    .line 336
    goto/16 :goto_189

    .line 297
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Ljava/lang/String;
    .end local v8    # "_arg7":I
    .end local v9    # "_arg8":I
    :pswitch_86
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 299
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 301
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 303
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 305
    .restart local v4    # "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 307
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 309
    .restart local v6    # "_arg5":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 310
    .local v7, "_arg6":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 311
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/os/IVibratorManagerService$Stub;->performHapticFeedback(IILjava/lang/String;ILjava/lang/String;II)V

    .line 312
    goto/16 :goto_189

    .line 286
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":I
    :pswitch_ab
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 288
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 289
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 290
    invoke-virtual {p0, v1, v2}, Landroid/os/IVibratorManagerService$Stub;->cancelVibrate(ILandroid/os/IBinder;)V

    .line 291
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    goto/16 :goto_189

    .line 265
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/IBinder;
    :pswitch_be
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 267
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 269
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 271
    .restart local v3    # "_arg2":Ljava/lang/String;
    sget-object v4, Landroid/os/CombinedVibration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/CombinedVibration;

    .line 273
    .local v4, "_arg3":Landroid/os/CombinedVibration;
    sget-object v5, Landroid/os/VibrationAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/VibrationAttributes;

    .line 275
    .local v5, "_arg4":Landroid/os/VibrationAttributes;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 277
    .local v6, "_arg5":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 278
    .local v7, "_arg6":Landroid/os/IBinder;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 279
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/os/IVibratorManagerService$Stub;->vibrate(IILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 280
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    goto/16 :goto_189

    .line 247
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/os/CombinedVibration;
    .end local v5    # "_arg4":Landroid/os/VibrationAttributes;
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v7    # "_arg6":Landroid/os/IBinder;
    :pswitch_ee
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 249
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 251
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 253
    .local v3, "_arg2":I
    sget-object v0, Landroid/os/CombinedVibration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/os/CombinedVibration;

    .line 255
    .restart local v4    # "_arg3":Landroid/os/CombinedVibration;
    sget-object v0, Landroid/os/VibrationAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/VibrationAttributes;

    .line 256
    .restart local v5    # "_arg4":Landroid/os/VibrationAttributes;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 257
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/os/IVibratorManagerService$Stub;->setAlwaysOnEffect(ILjava/lang/String;ILandroid/os/CombinedVibration;Landroid/os/VibrationAttributes;)Z

    move-result v6

    .line 258
    .local v6, "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    invoke-virtual {v12, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 260
    goto :goto_189

    .line 235
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/os/CombinedVibration;
    .end local v5    # "_arg4":Landroid/os/VibrationAttributes;
    .end local v6    # "_result":Z
    :pswitch_11b
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 237
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IVibratorStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVibratorStateListener;

    move-result-object v2

    .line 238
    .local v2, "_arg1":Landroid/os/IVibratorStateListener;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 239
    invoke-virtual {p0, v1, v2}, Landroid/os/IVibratorManagerService$Stub;->unregisterVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z

    move-result v3

    .line 240
    .local v3, "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 242
    goto :goto_189

    .line 223
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/IVibratorStateListener;
    .end local v3    # "_result":Z
    :pswitch_135
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 225
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IVibratorStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVibratorStateListener;

    move-result-object v2

    .line 226
    .restart local v2    # "_arg1":Landroid/os/IVibratorStateListener;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 227
    invoke-virtual {p0, v1, v2}, Landroid/os/IVibratorManagerService$Stub;->registerVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z

    move-result v3

    .line 228
    .restart local v3    # "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 230
    goto :goto_189

    .line 213
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/IVibratorStateListener;
    .end local v3    # "_result":Z
    :pswitch_14f
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 214
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 215
    invoke-virtual {p0, v1}, Landroid/os/IVibratorManagerService$Stub;->isVibrating(I)Z

    move-result v2

    .line 216
    .local v2, "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 218
    goto :goto_189

    .line 203
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_161
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 204
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 205
    invoke-virtual {p0, v1}, Landroid/os/IVibratorManagerService$Stub;->getVibratorInfo(I)Landroid/os/VibratorInfo;

    move-result-object v2

    .line 206
    .local v2, "_result":Landroid/os/VibratorInfo;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    invoke-virtual {v12, v2, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 208
    goto :goto_189

    .line 195
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/os/VibratorInfo;
    :pswitch_173
    invoke-virtual {p0}, Landroid/os/IVibratorManagerService$Stub;->getCapabilities()I

    move-result v1

    .line 196
    .local v1, "_result":I
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    goto :goto_189

    .line 188
    .end local v1    # "_result":I
    :pswitch_17e
    invoke-virtual {p0}, Landroid/os/IVibratorManagerService$Stub;->getVibratorIds()[I

    move-result-object v1

    .line 189
    .local v1, "_result":[I
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 191
    nop

    .line 365
    .end local v1    # "_result":[I
    :goto_189
    return v14

    :pswitch_data_18a
    .packed-switch 0x1
        :pswitch_17e
        :pswitch_173
        :pswitch_161
        :pswitch_14f
        :pswitch_135
        :pswitch_11b
        :pswitch_ee
        :pswitch_be
        :pswitch_ab
        :pswitch_86
        :pswitch_59
        :pswitch_24
    .end packed-switch
.end method

.method protected blacklist registerVibratorStateListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 630
    iget-object v0, p0, Landroid/os/IVibratorManagerService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/IVibratorManagerService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/IVibratorManagerService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_VIBRATOR_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 631
    return-void
.end method

.method protected blacklist startVendorVibrationSession_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 646
    iget-object v0, p0, Landroid/os/IVibratorManagerService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/os/IVibratorManagerService$Stub;->PERMISSIONS_startVendorVibrationSession:[Ljava/lang/String;

    invoke-static {}, Landroid/os/IVibratorManagerService$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/IVibratorManagerService$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAllOf([Ljava/lang/String;II)V

    .line 647
    return-void
.end method

.method protected blacklist unregisterVibratorStateListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 635
    iget-object v0, p0, Landroid/os/IVibratorManagerService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/IVibratorManagerService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/IVibratorManagerService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_VIBRATOR_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 636
    return-void
.end method
