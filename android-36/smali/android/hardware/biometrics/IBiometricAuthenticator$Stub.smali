.class public abstract Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;
.super Landroid/os/Binder;
.source "IBiometricAuthenticator.java"

# interfaces
.implements Landroid/hardware/biometrics/IBiometricAuthenticator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/IBiometricAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/IBiometricAuthenticator$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_cancelAuthenticationFromService:I = 0x6

.field static final blacklist TRANSACTION_createTestSession:I = 0x1

.field static final blacklist TRANSACTION_dumpSensorServiceStateProto:I = 0x3

.field static final blacklist TRANSACTION_getAuthenticatorId:I = 0xb

.field static final blacklist TRANSACTION_getLockoutModeForUser:I = 0x9

.field static final blacklist TRANSACTION_getSensorProperties:I = 0x2

.field static final blacklist TRANSACTION_hasEnrolledTemplates:I = 0x8

.field static final blacklist TRANSACTION_invalidateAuthenticatorId:I = 0xa

.field static final blacklist TRANSACTION_isHardwareDetected:I = 0x7

.field static final blacklist TRANSACTION_prepareForAuthentication:I = 0x4

.field static final blacklist TRANSACTION_resetLockout:I = 0xc

.field static final blacklist TRANSACTION_startPreparedClient:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 90
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 91
    const-string v0, "android.hardware.biometrics.IBiometricAuthenticator"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricAuthenticator;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 99
    if-nez p0, :cond_4

    .line 100
    const/4 v0, 0x0

    return-object v0

    .line 102
    :cond_4
    const-string v0, "android.hardware.biometrics.IBiometricAuthenticator"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 103
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/biometrics/IBiometricAuthenticator;

    if-eqz v1, :cond_14

    .line 104
    move-object v1, v0

    check-cast v1, Landroid/hardware/biometrics/IBiometricAuthenticator;

    return-object v1

    .line 106
    :cond_14
    new-instance v1, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 115
    packed-switch p0, :pswitch_data_30

    .line 167
    const/4 v0, 0x0

    return-object v0

    .line 163
    :pswitch_5
    const-string/jumbo v0, "resetLockout"

    return-object v0

    .line 159
    :pswitch_9
    const-string v0, "getAuthenticatorId"

    return-object v0

    .line 155
    :pswitch_c
    const-string/jumbo v0, "invalidateAuthenticatorId"

    return-object v0

    .line 151
    :pswitch_10
    const-string v0, "getLockoutModeForUser"

    return-object v0

    .line 147
    :pswitch_13
    const-string/jumbo v0, "hasEnrolledTemplates"

    return-object v0

    .line 143
    :pswitch_17
    const-string/jumbo v0, "isHardwareDetected"

    return-object v0

    .line 139
    :pswitch_1b
    const-string v0, "cancelAuthenticationFromService"

    return-object v0

    .line 135
    :pswitch_1e
    const-string/jumbo v0, "startPreparedClient"

    return-object v0

    .line 131
    :pswitch_22
    const-string/jumbo v0, "prepareForAuthentication"

    return-object v0

    .line 127
    :pswitch_26
    const-string v0, "dumpSensorServiceStateProto"

    return-object v0

    .line 123
    :pswitch_29
    const-string v0, "getSensorProperties"

    return-object v0

    .line 119
    :pswitch_2c
    const-string v0, "createTestSession"

    return-object v0

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_22
        :pswitch_1e
        :pswitch_1b
        :pswitch_17
        :pswitch_13
        :pswitch_10
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 110
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 612
    const/16 v0, 0xb

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 174
    invoke-static {p1}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 23
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 178
    move-object/from16 v0, p0

    move/from16 v14, p1

    move-object/from16 v15, p3

    const-string v1, "android.hardware.biometrics.IBiometricAuthenticator"

    .line 179
    .local v1, "descriptor":Ljava/lang/String;
    const/4 v2, 0x1

    if-lt v14, v2, :cond_16

    const v3, 0xffffff

    if-gt v14, v3, :cond_16

    .line 180
    move-object/from16 v3, p2

    invoke-virtual {v3, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_18

    .line 179
    :cond_16
    move-object/from16 v3, p2

    .line 182
    :goto_18
    const v4, 0x5f4e5446

    if-ne v14, v4, :cond_21

    .line 183
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    return v2

    .line 186
    :cond_21
    packed-switch v14, :pswitch_data_17e

    .line 341
    move-object/from16 v16, v1

    .end local v1    # "descriptor":Ljava/lang/String;
    .local v16, "descriptor":Ljava/lang/String;
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 327
    .end local v16    # "descriptor":Ljava/lang/String;
    .restart local v1    # "descriptor":Ljava/lang/String;
    :pswitch_2b
    invoke-virtual {v3}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 329
    .local v4, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 331
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 333
    .local v6, "_arg2":I
    invoke-virtual {v3}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 334
    .local v7, "_arg3":[B
    invoke-virtual {v3}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 335
    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->resetLockout(Landroid/os/IBinder;Ljava/lang/String;I[B)V

    .line 336
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    move-object/from16 v16, v1

    move v14, v2

    goto/16 :goto_17c

    .line 317
    .end local v4    # "_arg0":Landroid/os/IBinder;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":[B
    :pswitch_49
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 318
    .local v4, "_arg0":I
    invoke-virtual {v3}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 319
    invoke-virtual {v0, v4}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->getAuthenticatorId(I)J

    move-result-wide v5

    .line 320
    .local v5, "_result":J
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    invoke-virtual {v15, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    .line 322
    move-object/from16 v16, v1

    move v14, v2

    goto/16 :goto_17c

    .line 306
    .end local v4    # "_arg0":I
    .end local v5    # "_result":J
    :pswitch_5f
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 308
    .restart local v4    # "_arg0":I
    invoke-virtual {v3}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/hardware/biometrics/IInvalidationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IInvalidationCallback;

    move-result-object v5

    .line 309
    .local v5, "_arg1":Landroid/hardware/biometrics/IInvalidationCallback;
    invoke-virtual {v3}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 310
    invoke-virtual {v0, v4, v5}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->invalidateAuthenticatorId(ILandroid/hardware/biometrics/IInvalidationCallback;)V

    .line 311
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    move-object/from16 v16, v1

    move v14, v2

    goto/16 :goto_17c

    .line 296
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Landroid/hardware/biometrics/IInvalidationCallback;
    :pswitch_79
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 297
    .restart local v4    # "_arg0":I
    invoke-virtual {v3}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 298
    invoke-virtual {v0, v4}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->getLockoutModeForUser(I)I

    move-result v5

    .line 299
    .local v5, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    invoke-virtual {v15, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    move-object/from16 v16, v1

    move v14, v2

    goto/16 :goto_17c

    .line 284
    .end local v4    # "_arg0":I
    .end local v5    # "_result":I
    :pswitch_8f
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 286
    .restart local v4    # "_arg0":I
    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 287
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 288
    invoke-virtual {v0, v4, v5}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->hasEnrolledTemplates(ILjava/lang/String;)Z

    move-result v6

    .line 289
    .local v6, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    invoke-virtual {v15, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 291
    move-object/from16 v16, v1

    move v14, v2

    goto/16 :goto_17c

    .line 274
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_result":Z
    :pswitch_a9
    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 275
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 276
    invoke-virtual {v0, v4}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->isHardwareDetected(Ljava/lang/String;)Z

    move-result v5

    .line 277
    .local v5, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    invoke-virtual {v15, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 279
    move-object/from16 v16, v1

    move v14, v2

    goto/16 :goto_17c

    .line 261
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_bf
    invoke-virtual {v3}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 263
    .local v4, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 265
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 266
    .local v6, "_arg2":J
    invoke-virtual {v3}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 267
    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->cancelAuthenticationFromService(Landroid/os/IBinder;Ljava/lang/String;J)V

    .line 268
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    move-object/from16 v16, v1

    move v14, v2

    goto/16 :goto_17c

    .line 252
    .end local v4    # "_arg0":Landroid/os/IBinder;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":J
    :pswitch_d9
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 253
    .local v4, "_arg0":I
    invoke-virtual {v3}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 254
    invoke-virtual {v0, v4}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->startPreparedClient(I)V

    .line 255
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    move-object/from16 v16, v1

    move v14, v2

    goto/16 :goto_17c

    .line 223
    .end local v4    # "_arg0":I
    :pswitch_eb
    move-object v4, v1

    .end local v1    # "descriptor":Ljava/lang/String;
    .local v4, "descriptor":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 225
    .local v1, "_arg0":Z
    move v5, v2

    invoke-virtual {v3}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 227
    .local v2, "_arg1":Landroid/os/IBinder;
    move-object v6, v4

    .end local v4    # "descriptor":Ljava/lang/String;
    .local v6, "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 229
    .local v3, "_arg2":J
    move v7, v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 231
    .local v5, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/hardware/biometrics/IBiometricSensorReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricSensorReceiver;

    move-result-object v8

    .line 233
    .local v8, "_arg4":Landroid/hardware/biometrics/IBiometricSensorReceiver;
    move v9, v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 235
    .local v7, "_arg5":Ljava/lang/String;
    move-object v10, v6

    move-object v6, v8

    move v11, v9

    .end local v8    # "_arg4":Landroid/hardware/biometrics/IBiometricSensorReceiver;
    .local v6, "_arg4":Landroid/hardware/biometrics/IBiometricSensorReceiver;
    .local v10, "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 237
    .local v8, "_arg6":J
    move-object v12, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .local v12, "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 239
    .local v10, "_arg7":I
    move v13, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v11

    .line 241
    .local v11, "_arg8":Z
    move-object/from16 v16, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v12

    .line 243
    .local v12, "_arg9":Z
    move/from16 v17, v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v13

    .line 244
    .local v13, "_arg10":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 245
    move/from16 v14, v17

    invoke-virtual/range {v0 .. v13}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->prepareForAuthentication(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricSensorReceiver;Ljava/lang/String;JIZZZ)V

    .line 246
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    goto :goto_17c

    .line 213
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":J
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":Landroid/hardware/biometrics/IBiometricSensorReceiver;
    .end local v7    # "_arg5":Ljava/lang/String;
    .end local v8    # "_arg6":J
    .end local v10    # "_arg7":I
    .end local v11    # "_arg8":Z
    .end local v12    # "_arg9":Z
    .end local v13    # "_arg10":Z
    .end local v16    # "descriptor":Ljava/lang/String;
    .local v1, "descriptor":Ljava/lang/String;
    :pswitch_135
    move-object/from16 v16, v1

    move v14, v2

    .end local v1    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 214
    .local v1, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 215
    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->dumpSensorServiceStateProto(Z)[B

    move-result-object v2

    .line 216
    .local v2, "_result":[B
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 218
    goto :goto_17c

    .line 203
    .end local v2    # "_result":[B
    .end local v16    # "descriptor":Ljava/lang/String;
    .local v1, "descriptor":Ljava/lang/String;
    :pswitch_14a
    move-object/from16 v16, v1

    move v14, v2

    .end local v1    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 205
    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->getSensorProperties(Ljava/lang/String;)Landroid/hardware/biometrics/SensorPropertiesInternal;

    move-result-object v2

    .line 206
    .local v2, "_result":Landroid/hardware/biometrics/SensorPropertiesInternal;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    invoke-virtual {v15, v2, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 208
    goto :goto_17c

    .line 191
    .end local v2    # "_result":Landroid/hardware/biometrics/SensorPropertiesInternal;
    .end local v16    # "descriptor":Ljava/lang/String;
    .local v1, "descriptor":Ljava/lang/String;
    :pswitch_15f
    move-object/from16 v16, v1

    move v14, v2

    .end local v1    # "descriptor":Ljava/lang/String;
    .restart local v16    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/biometrics/ITestSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/ITestSessionCallback;

    move-result-object v1

    .line 193
    .local v1, "_arg0":Landroid/hardware/biometrics/ITestSessionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 195
    invoke-virtual {v0, v1, v2}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;->createTestSession(Landroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;

    move-result-object v3

    .line 196
    .local v3, "_result":Landroid/hardware/biometrics/ITestSession;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 198
    nop

    .line 344
    .end local v1    # "_arg0":Landroid/hardware/biometrics/ITestSessionCallback;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Landroid/hardware/biometrics/ITestSession;
    :goto_17c
    return v14

    nop

    :pswitch_data_17e
    .packed-switch 0x1
        :pswitch_15f
        :pswitch_14a
        :pswitch_135
        :pswitch_eb
        :pswitch_d9
        :pswitch_bf
        :pswitch_a9
        :pswitch_8f
        :pswitch_79
        :pswitch_5f
        :pswitch_49
        :pswitch_2b
    .end packed-switch
.end method
