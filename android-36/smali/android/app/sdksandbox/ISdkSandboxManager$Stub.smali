.class public abstract Landroid/app/sdksandbox/ISdkSandboxManager$Stub;
.super Landroid/os/Binder;
.source "ISdkSandboxManager.java"

# interfaces
.implements Landroid/app/sdksandbox/ISdkSandboxManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/sdksandbox/ISdkSandboxManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/sdksandbox/ISdkSandboxManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addSdkSandboxProcessDeathCallback:I = 0x1

.field static final blacklist TRANSACTION_getAdServicesManager:I = 0xf

.field static final blacklist TRANSACTION_getAppOwnedSdkSandboxInterfaces:I = 0x8

.field static final blacklist TRANSACTION_getSandboxedSdks:I = 0x9

.field static final blacklist TRANSACTION_isSdkSandboxServiceRunning:I = 0xb

.field static final blacklist TRANSACTION_loadSdk:I = 0x5

.field static final blacklist TRANSACTION_logSandboxActivityApiLatency:I = 0xe

.field static final blacklist TRANSACTION_logSandboxApiLatency:I = 0xd

.field static final blacklist TRANSACTION_registerAppOwnedSdkSandboxInterface:I = 0x3

.field static final blacklist TRANSACTION_removeSdkSandboxProcessDeathCallback:I = 0x2

.field static final blacklist TRANSACTION_requestSurfacePackage:I = 0x7

.field static final blacklist TRANSACTION_stopSdkSandbox:I = 0xc

.field static final blacklist TRANSACTION_syncDataFromClient:I = 0xa

.field static final blacklist TRANSACTION_unloadSdk:I = 0x6

.field static final blacklist TRANSACTION_unregisterAppOwnedSdkSandboxInterface:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 82
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 83
    const-string v0, "android.app.sdksandbox.ISdkSandboxManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/sdksandbox/ISdkSandboxManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/sdksandbox/ISdkSandboxManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 91
    if-nez p0, :cond_4

    .line 92
    const/4 v0, 0x0

    return-object v0

    .line 94
    :cond_4
    const-string v0, "android.app.sdksandbox.ISdkSandboxManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 95
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/sdksandbox/ISdkSandboxManager;

    if-eqz v1, :cond_14

    .line 96
    move-object v1, v0

    check-cast v1, Landroid/app/sdksandbox/ISdkSandboxManager;

    return-object v1

    .line 98
    :cond_14
    new-instance v1, Landroid/app/sdksandbox/ISdkSandboxManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/sdksandbox/ISdkSandboxManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 107
    packed-switch p0, :pswitch_data_32

    .line 171
    const/4 v0, 0x0

    return-object v0

    .line 167
    :pswitch_5
    const-string v0, "getAdServicesManager"

    return-object v0

    .line 163
    :pswitch_8
    const-string v0, "logSandboxActivityApiLatency"

    return-object v0

    .line 159
    :pswitch_b
    const-string v0, "logSandboxApiLatency"

    return-object v0

    .line 155
    :pswitch_e
    const-string v0, "stopSdkSandbox"

    return-object v0

    .line 151
    :pswitch_11
    const-string v0, "isSdkSandboxServiceRunning"

    return-object v0

    .line 147
    :pswitch_14
    const-string v0, "syncDataFromClient"

    return-object v0

    .line 143
    :pswitch_17
    const-string v0, "getSandboxedSdks"

    return-object v0

    .line 139
    :pswitch_1a
    const-string v0, "getAppOwnedSdkSandboxInterfaces"

    return-object v0

    .line 135
    :pswitch_1d
    const-string v0, "requestSurfacePackage"

    return-object v0

    .line 131
    :pswitch_20
    const-string v0, "unloadSdk"

    return-object v0

    .line 127
    :pswitch_23
    const-string v0, "loadSdk"

    return-object v0

    .line 123
    :pswitch_26
    const-string v0, "unregisterAppOwnedSdkSandboxInterface"

    return-object v0

    .line 119
    :pswitch_29
    const-string v0, "registerAppOwnedSdkSandboxInterface"

    return-object v0

    .line 115
    :pswitch_2c
    const-string v0, "removeSdkSandboxProcessDeathCallback"

    return-object v0

    .line 111
    :pswitch_2f
    const-string v0, "addSdkSandboxProcessDeathCallback"

    return-object v0

    :pswitch_data_32
    .packed-switch 0x1
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

    .line 102
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 689
    const/16 v0, 0xe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 178
    invoke-static {p1}, Landroid/app/sdksandbox/ISdkSandboxManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 182
    move/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    const-string v13, "android.app.sdksandbox.ISdkSandboxManager"

    .line 183
    .local v13, "descriptor":Ljava/lang/String;
    const/4 v14, 0x1

    if-lt v10, v14, :cond_13

    const v1, 0xffffff

    if-gt v10, v1, :cond_13

    .line 184
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    :cond_13
    const v1, 0x5f4e5446

    if-ne v10, v1, :cond_1c

    .line 187
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    return v14

    .line 190
    :cond_1c
    packed-switch v10, :pswitch_data_1cc

    .line 387
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 380
    :pswitch_24
    invoke-virtual {p0}, Landroid/app/sdksandbox/ISdkSandboxManager$Stub;->getAdServicesManager()Landroid/os/IBinder;

    move-result-object v1

    .line 381
    .local v1, "_result":Landroid/os/IBinder;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 383
    goto/16 :goto_1ca

    .line 368
    .end local v1    # "_result":Landroid/os/IBinder;
    :pswitch_30
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 370
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 372
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 373
    .local v3, "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 374
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/sdksandbox/ISdkSandboxManager$Stub;->logSandboxActivityApiLatency(III)V

    .line 375
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    goto/16 :goto_1ca

    .line 359
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_47
    sget-object v1, Landroid/app/sdksandbox/SandboxLatencyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/sdksandbox/SandboxLatencyInfo;

    .line 360
    .local v1, "_arg0":Landroid/app/sdksandbox/SandboxLatencyInfo;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 361
    invoke-virtual {p0, v1}, Landroid/app/sdksandbox/ISdkSandboxManager$Stub;->logSandboxApiLatency(Landroid/app/sdksandbox/SandboxLatencyInfo;)V

    .line 362
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    goto/16 :goto_1ca

    .line 350
    .end local v1    # "_arg0":Landroid/app/sdksandbox/SandboxLatencyInfo;
    :pswitch_5a
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 351
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 352
    invoke-virtual {p0, v1}, Landroid/app/sdksandbox/ISdkSandboxManager$Stub;->stopSdkSandbox(Ljava/lang/String;)V

    .line 353
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    goto/16 :goto_1ca

    .line 340
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_69
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 341
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 342
    invoke-virtual {p0, v1}, Landroid/app/sdksandbox/ISdkSandboxManager$Stub;->isSdkSandboxServiceRunning(Ljava/lang/String;)Z

    move-result v2

    .line 343
    .local v2, "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 345
    goto/16 :goto_1ca

    .line 326
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_7c
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 328
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/app/sdksandbox/SandboxLatencyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/sdksandbox/SandboxLatencyInfo;

    .line 330
    .local v2, "_arg1":Landroid/app/sdksandbox/SandboxLatencyInfo;
    sget-object v3, Landroid/app/sdksandbox/SharedPreferencesUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/sdksandbox/SharedPreferencesUpdate;

    .line 332
    .local v3, "_arg2":Landroid/app/sdksandbox/SharedPreferencesUpdate;
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/sdksandbox/ISharedPreferencesSyncCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/sdksandbox/ISharedPreferencesSyncCallback;

    move-result-object v4

    .line 333
    .local v4, "_arg3":Landroid/app/sdksandbox/ISharedPreferencesSyncCallback;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 334
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/sdksandbox/ISdkSandboxManager$Stub;->syncDataFromClient(Ljava/lang/String;Landroid/app/sdksandbox/SandboxLatencyInfo;Landroid/app/sdksandbox/SharedPreferencesUpdate;Landroid/app/sdksandbox/ISharedPreferencesSyncCallback;)V

    .line 335
    goto/16 :goto_1ca

    .line 314
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/app/sdksandbox/SandboxLatencyInfo;
    .end local v3    # "_arg2":Landroid/app/sdksandbox/SharedPreferencesUpdate;
    .end local v4    # "_arg3":Landroid/app/sdksandbox/ISharedPreferencesSyncCallback;
    :pswitch_a0
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 316
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/app/sdksandbox/SandboxLatencyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/sdksandbox/SandboxLatencyInfo;

    .line 317
    .restart local v2    # "_arg1":Landroid/app/sdksandbox/SandboxLatencyInfo;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 318
    invoke-virtual {p0, v1, v2}, Landroid/app/sdksandbox/ISdkSandboxManager$Stub;->getSandboxedSdks(Ljava/lang/String;Landroid/app/sdksandbox/SandboxLatencyInfo;)Ljava/util/List;

    move-result-object v3

    .line 319
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/sdksandbox/SandboxedSdk;>;"
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    invoke-static {v12, v3, v14}, Landroid/app/sdksandbox/ISdkSandboxManager$_Parcel;->-$$Nest$smwriteTypedList(Landroid/os/Parcel;Ljava/util/List;I)V

    .line 321
    goto/16 :goto_1ca

    .line 302
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/app/sdksandbox/SandboxLatencyInfo;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/sdksandbox/SandboxedSdk;>;"
    :pswitch_bb
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 304
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/app/sdksandbox/SandboxLatencyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/sdksandbox/SandboxLatencyInfo;

    .line 305
    .restart local v2    # "_arg1":Landroid/app/sdksandbox/SandboxLatencyInfo;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 306
    invoke-virtual {p0, v1, v2}, Landroid/app/sdksandbox/ISdkSandboxManager$Stub;->getAppOwnedSdkSandboxInterfaces(Ljava/lang/String;Landroid/app/sdksandbox/SandboxLatencyInfo;)Ljava/util/List;

    move-result-object v3

    .line 307
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/sdksandbox/AppOwnedSdkSandboxInterface;>;"
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    invoke-static {v12, v3, v14}, Landroid/app/sdksandbox/ISdkSandboxManager$_Parcel;->-$$Nest$smwriteTypedList(Landroid/os/Parcel;Ljava/util/List;I)V

    .line 309
    goto/16 :goto_1ca

    .line 278
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/app/sdksandbox/SandboxLatencyInfo;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/sdksandbox/AppOwnedSdkSandboxInterface;>;"
    :pswitch_d6
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 280
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 282
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 284
    .local v3, "_arg2":Landroid/os/IBinder;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 286
    .local v4, "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 288
    .local v5, "_arg4":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 290
    .local v6, "_arg5":I
    sget-object v7, Landroid/app/sdksandbox/SandboxLatencyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v7}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/sdksandbox/SandboxLatencyInfo;

    .line 292
    .local v7, "_arg6":Landroid/app/sdksandbox/SandboxLatencyInfo;
    sget-object v8, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v8}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    .line 294
    .local v8, "_arg7":Landroid/os/Bundle;
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/app/sdksandbox/IRequestSurfacePackageCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/sdksandbox/IRequestSurfacePackageCallback;

    move-result-object v9

    .line 295
    .local v9, "_arg8":Landroid/app/sdksandbox/IRequestSurfacePackageCallback;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 296
    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Landroid/app/sdksandbox/ISdkSandboxManager$Stub;->requestSurfacePackage(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;IIILandroid/app/sdksandbox/SandboxLatencyInfo;Landroid/os/Bundle;Landroid/app/sdksandbox/IRequestSurfacePackageCallback;)V

    .line 297
    goto/16 :goto_1ca

    .line 265
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/IBinder;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Landroid/app/sdksandbox/SandboxLatencyInfo;
    .end local v8    # "_arg7":Landroid/os/Bundle;
    .end local v9    # "_arg8":Landroid/app/sdksandbox/IRequestSurfacePackageCallback;
    :pswitch_10f
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 267
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 269
    .restart local v2    # "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/app/sdksandbox/SandboxLatencyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/sdksandbox/SandboxLatencyInfo;

    .line 270
    .local v3, "_arg2":Landroid/app/sdksandbox/SandboxLatencyInfo;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 271
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/sdksandbox/ISdkSandboxManager$Stub;->unloadSdk(Ljava/lang/String;Ljava/lang/String;Landroid/app/sdksandbox/SandboxLatencyInfo;)V

    .line 272
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    goto/16 :goto_1ca

    .line 247
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/app/sdksandbox/SandboxLatencyInfo;
    :pswitch_12a
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 249
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 251
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 253
    .local v3, "_arg2":Ljava/lang/String;
    sget-object v4, Landroid/app/sdksandbox/SandboxLatencyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/sdksandbox/SandboxLatencyInfo;

    .line 255
    .local v4, "_arg3":Landroid/app/sdksandbox/SandboxLatencyInfo;
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 257
    .local v5, "_arg4":Landroid/os/Bundle;
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/sdksandbox/ILoadSdkCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/sdksandbox/ILoadSdkCallback;

    move-result-object v6

    .line 258
    .local v6, "_arg5":Landroid/app/sdksandbox/ILoadSdkCallback;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 259
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/sdksandbox/ISdkSandboxManager$Stub;->loadSdk(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;Landroid/app/sdksandbox/SandboxLatencyInfo;Landroid/os/Bundle;Landroid/app/sdksandbox/ILoadSdkCallback;)V

    .line 260
    goto :goto_1ca

    .line 234
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/app/sdksandbox/SandboxLatencyInfo;
    .end local v5    # "_arg4":Landroid/os/Bundle;
    .end local v6    # "_arg5":Landroid/app/sdksandbox/ILoadSdkCallback;
    :pswitch_156
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 236
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 238
    .local v2, "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/app/sdksandbox/SandboxLatencyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/sdksandbox/SandboxLatencyInfo;

    .line 239
    .local v3, "_arg2":Landroid/app/sdksandbox/SandboxLatencyInfo;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 240
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/sdksandbox/ISdkSandboxManager$Stub;->unregisterAppOwnedSdkSandboxInterface(Ljava/lang/String;Ljava/lang/String;Landroid/app/sdksandbox/SandboxLatencyInfo;)V

    .line 241
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    goto :goto_1ca

    .line 221
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/app/sdksandbox/SandboxLatencyInfo;
    :pswitch_170
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 223
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/app/sdksandbox/AppOwnedSdkSandboxInterface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/sdksandbox/AppOwnedSdkSandboxInterface;

    .line 225
    .local v2, "_arg1":Landroid/app/sdksandbox/AppOwnedSdkSandboxInterface;
    sget-object v3, Landroid/app/sdksandbox/SandboxLatencyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/sdksandbox/SandboxLatencyInfo;

    .line 226
    .restart local v3    # "_arg2":Landroid/app/sdksandbox/SandboxLatencyInfo;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 227
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/sdksandbox/ISdkSandboxManager$Stub;->registerAppOwnedSdkSandboxInterface(Ljava/lang/String;Landroid/app/sdksandbox/AppOwnedSdkSandboxInterface;Landroid/app/sdksandbox/SandboxLatencyInfo;)V

    .line 228
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    goto :goto_1ca

    .line 208
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/app/sdksandbox/AppOwnedSdkSandboxInterface;
    .end local v3    # "_arg2":Landroid/app/sdksandbox/SandboxLatencyInfo;
    :pswitch_18e
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 210
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/app/sdksandbox/SandboxLatencyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/sdksandbox/SandboxLatencyInfo;

    .line 212
    .local v2, "_arg1":Landroid/app/sdksandbox/SandboxLatencyInfo;
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/sdksandbox/ISdkSandboxProcessDeathCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/sdksandbox/ISdkSandboxProcessDeathCallback;

    move-result-object v3

    .line 213
    .local v3, "_arg2":Landroid/app/sdksandbox/ISdkSandboxProcessDeathCallback;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 214
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/sdksandbox/ISdkSandboxManager$Stub;->removeSdkSandboxProcessDeathCallback(Ljava/lang/String;Landroid/app/sdksandbox/SandboxLatencyInfo;Landroid/app/sdksandbox/ISdkSandboxProcessDeathCallback;)V

    .line 215
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    goto :goto_1ca

    .line 195
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/app/sdksandbox/SandboxLatencyInfo;
    .end local v3    # "_arg2":Landroid/app/sdksandbox/ISdkSandboxProcessDeathCallback;
    :pswitch_1ac
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 197
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/app/sdksandbox/SandboxLatencyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/sdksandbox/SandboxLatencyInfo;

    .line 199
    .restart local v2    # "_arg1":Landroid/app/sdksandbox/SandboxLatencyInfo;
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/sdksandbox/ISdkSandboxProcessDeathCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/sdksandbox/ISdkSandboxProcessDeathCallback;

    move-result-object v3

    .line 200
    .restart local v3    # "_arg2":Landroid/app/sdksandbox/ISdkSandboxProcessDeathCallback;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 201
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/sdksandbox/ISdkSandboxManager$Stub;->addSdkSandboxProcessDeathCallback(Ljava/lang/String;Landroid/app/sdksandbox/SandboxLatencyInfo;Landroid/app/sdksandbox/ISdkSandboxProcessDeathCallback;)V

    .line 202
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    nop

    .line 390
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/app/sdksandbox/SandboxLatencyInfo;
    .end local v3    # "_arg2":Landroid/app/sdksandbox/ISdkSandboxProcessDeathCallback;
    :goto_1ca
    return v14

    nop

    :pswitch_data_1cc
    .packed-switch 0x1
        :pswitch_1ac
        :pswitch_18e
        :pswitch_170
        :pswitch_156
        :pswitch_12a
        :pswitch_10f
        :pswitch_d6
        :pswitch_bb
        :pswitch_a0
        :pswitch_7c
        :pswitch_69
        :pswitch_5a
        :pswitch_47
        :pswitch_30
        :pswitch_24
    .end packed-switch
.end method
