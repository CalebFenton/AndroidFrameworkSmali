.class public abstract Landroid/os/IInstalld$Stub;
.super Landroid/os/Binder;
.source "IInstalld.java"

# interfaces
.implements Landroid/os/IInstalld;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IInstalld;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IInstalld$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.os.IInstalld"

.field static final blacklist TRANSACTION_cleanupInvalidPackageDirs:I = 0x31

.field static final greylist-max-o TRANSACTION_clearAppData:I = 0x9

.field static final greylist-max-o TRANSACTION_clearAppProfiles:I = 0x19

.field static final blacklist TRANSACTION_controlDexOptBlocking:I = 0x14

.field static final greylist-max-o TRANSACTION_copySystemProfile:I = 0x18

.field static final greylist-max-o TRANSACTION_createAppData:I = 0x4

.field static final blacklist TRANSACTION_createAppDataBatched:I = 0x5

.field static final blacklist TRANSACTION_createFsveritySetupAuthToken:I = 0x33

.field static final greylist-max-o TRANSACTION_createOatDir:I = 0x21

.field static final greylist-max-o TRANSACTION_createProfileSnapshot:I = 0x1c

.field static final greylist-max-o TRANSACTION_createUserData:I = 0x1

.field static final greylist-max-o TRANSACTION_deleteOdex:I = 0x24

.field static final blacklist TRANSACTION_deleteReferenceProfile:I = 0x1b

.field static final greylist-max-o TRANSACTION_destroyAppData:I = 0xa

.field static final blacklist TRANSACTION_destroyAppDataSnapshot:I = 0x2c

.field static final greylist-max-o TRANSACTION_destroyAppProfiles:I = 0x1a

.field static final blacklist TRANSACTION_destroyCeSnapshotsNotSpecified:I = 0x2d

.field static final greylist-max-o TRANSACTION_destroyProfileSnapshot:I = 0x1d

.field static final greylist-max-o TRANSACTION_destroyUserData:I = 0x2

.field static final greylist-max-o TRANSACTION_dexopt:I = 0x13

.field static final greylist-max-o TRANSACTION_dumpProfiles:I = 0x17

.field static final blacklist TRANSACTION_enableFsverity:I = 0x34

.field static final greylist-max-o TRANSACTION_fixupAppData:I = 0xb

.field static final greylist-max-o TRANSACTION_freeCache:I = 0x1f

.field static final blacklist TRANSACTION_getAppCrates:I = 0xf

.field static final greylist-max-o TRANSACTION_getAppSize:I = 0xc

.field static final greylist-max-o TRANSACTION_getExternalSize:I = 0xe

.field static final blacklist TRANSACTION_getOdexVisibility:I = 0x32

.field static final blacklist TRANSACTION_getUserCrates:I = 0x10

.field static final greylist-max-o TRANSACTION_getUserSize:I = 0xd

.field static final greylist-max-o TRANSACTION_hashSecondaryDexFile:I = 0x26

.field static final greylist-max-o TRANSACTION_invalidateMounts:I = 0x27

.field static final greylist-max-o TRANSACTION_isQuotaSupported:I = 0x28

.field static final greylist-max-o TRANSACTION_linkFile:I = 0x22

.field static final greylist-max-o TRANSACTION_linkNativeLibraryDirectory:I = 0x20

.field static final greylist-max-o TRANSACTION_mergeProfiles:I = 0x16

.field static final greylist-max-o TRANSACTION_migrateAppData:I = 0x8

.field static final blacklist TRANSACTION_migrateLegacyObbData:I = 0x30

.field static final greylist-max-o TRANSACTION_moveAb:I = 0x23

.field static final greylist-max-o TRANSACTION_moveCompleteApp:I = 0x12

.field static final blacklist TRANSACTION_onPrivateVolumeRemoved:I = 0x2f

.field static final greylist-max-o TRANSACTION_prepareAppProfile:I = 0x29

.field static final blacklist TRANSACTION_reconcileSdkData:I = 0x6

.field static final greylist-max-o TRANSACTION_reconcileSecondaryDexFile:I = 0x25

.field static final blacklist TRANSACTION_restoreAppDataSnapshot:I = 0x2b

.field static final greylist-max-o TRANSACTION_restoreconAppData:I = 0x7

.field static final greylist-max-o TRANSACTION_rmPackageDir:I = 0x1e

.field static final greylist-max-o TRANSACTION_rmdex:I = 0x15

.field static final greylist-max-o TRANSACTION_setAppQuota:I = 0x11

.field static final blacklist TRANSACTION_setFirstBoot:I = 0x3

.field static final blacklist TRANSACTION_snapshotAppData:I = 0x2a

.field static final blacklist TRANSACTION_tryMountDataMirror:I = 0x2e


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 207
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 208
    const-string v0, "android.os.IInstalld"

    invoke-virtual {p0, p0, v0}, Landroid/os/IInstalld$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/os/IInstalld;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 216
    if-nez p0, :cond_4

    .line 217
    const/4 v0, 0x0

    return-object v0

    .line 219
    :cond_4
    const-string v0, "android.os.IInstalld"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 220
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/IInstalld;

    if-eqz v1, :cond_14

    .line 221
    move-object v1, v0

    check-cast v1, Landroid/os/IInstalld;

    return-object v1

    .line 223
    :cond_14
    new-instance v1, Landroid/os/IInstalld$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IInstalld$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 232
    packed-switch p0, :pswitch_data_ba

    .line 444
    const/4 v0, 0x0

    return-object v0

    .line 440
    :pswitch_5
    const-string v0, "enableFsverity"

    return-object v0

    .line 436
    :pswitch_8
    const-string v0, "createFsveritySetupAuthToken"

    return-object v0

    .line 432
    :pswitch_b
    const-string v0, "getOdexVisibility"

    return-object v0

    .line 428
    :pswitch_e
    const-string v0, "cleanupInvalidPackageDirs"

    return-object v0

    .line 424
    :pswitch_11
    const-string/jumbo v0, "migrateLegacyObbData"

    return-object v0

    .line 420
    :pswitch_15
    const-string/jumbo v0, "onPrivateVolumeRemoved"

    return-object v0

    .line 416
    :pswitch_19
    const-string/jumbo v0, "tryMountDataMirror"

    return-object v0

    .line 412
    :pswitch_1d
    const-string v0, "destroyCeSnapshotsNotSpecified"

    return-object v0

    .line 408
    :pswitch_20
    const-string v0, "destroyAppDataSnapshot"

    return-object v0

    .line 404
    :pswitch_23
    const-string/jumbo v0, "restoreAppDataSnapshot"

    return-object v0

    .line 400
    :pswitch_27
    const-string/jumbo v0, "snapshotAppData"

    return-object v0

    .line 396
    :pswitch_2b
    const-string/jumbo v0, "prepareAppProfile"

    return-object v0

    .line 392
    :pswitch_2f
    const-string/jumbo v0, "isQuotaSupported"

    return-object v0

    .line 388
    :pswitch_33
    const-string/jumbo v0, "invalidateMounts"

    return-object v0

    .line 384
    :pswitch_37
    const-string/jumbo v0, "hashSecondaryDexFile"

    return-object v0

    .line 380
    :pswitch_3b
    const-string/jumbo v0, "reconcileSecondaryDexFile"

    return-object v0

    .line 376
    :pswitch_3f
    const-string v0, "deleteOdex"

    return-object v0

    .line 372
    :pswitch_42
    const-string/jumbo v0, "moveAb"

    return-object v0

    .line 368
    :pswitch_46
    const-string/jumbo v0, "linkFile"

    return-object v0

    .line 364
    :pswitch_4a
    const-string v0, "createOatDir"

    return-object v0

    .line 360
    :pswitch_4d
    const-string/jumbo v0, "linkNativeLibraryDirectory"

    return-object v0

    .line 356
    :pswitch_51
    const-string v0, "freeCache"

    return-object v0

    .line 352
    :pswitch_54
    const-string/jumbo v0, "rmPackageDir"

    return-object v0

    .line 348
    :pswitch_58
    const-string v0, "destroyProfileSnapshot"

    return-object v0

    .line 344
    :pswitch_5b
    const-string v0, "createProfileSnapshot"

    return-object v0

    .line 340
    :pswitch_5e
    const-string v0, "deleteReferenceProfile"

    return-object v0

    .line 336
    :pswitch_61
    const-string v0, "destroyAppProfiles"

    return-object v0

    .line 332
    :pswitch_64
    const-string v0, "clearAppProfiles"

    return-object v0

    .line 328
    :pswitch_67
    const-string v0, "copySystemProfile"

    return-object v0

    .line 324
    :pswitch_6a
    const-string v0, "dumpProfiles"

    return-object v0

    .line 320
    :pswitch_6d
    const-string/jumbo v0, "mergeProfiles"

    return-object v0

    .line 316
    :pswitch_71
    const-string/jumbo v0, "rmdex"

    return-object v0

    .line 312
    :pswitch_75
    const-string v0, "controlDexOptBlocking"

    return-object v0

    .line 308
    :pswitch_78
    const-string v0, "dexopt"

    return-object v0

    .line 304
    :pswitch_7b
    const-string/jumbo v0, "moveCompleteApp"

    return-object v0

    .line 300
    :pswitch_7f
    const-string/jumbo v0, "setAppQuota"

    return-object v0

    .line 296
    :pswitch_83
    const-string/jumbo v0, "getUserCrates"

    return-object v0

    .line 292
    :pswitch_87
    const-string v0, "getAppCrates"

    return-object v0

    .line 288
    :pswitch_8a
    const-string v0, "getExternalSize"

    return-object v0

    .line 284
    :pswitch_8d
    const-string/jumbo v0, "getUserSize"

    return-object v0

    .line 280
    :pswitch_91
    const-string v0, "getAppSize"

    return-object v0

    .line 276
    :pswitch_94
    const-string v0, "fixupAppData"

    return-object v0

    .line 272
    :pswitch_97
    const-string v0, "destroyAppData"

    return-object v0

    .line 268
    :pswitch_9a
    const-string v0, "clearAppData"

    return-object v0

    .line 264
    :pswitch_9d
    const-string/jumbo v0, "migrateAppData"

    return-object v0

    .line 260
    :pswitch_a1
    const-string/jumbo v0, "restoreconAppData"

    return-object v0

    .line 256
    :pswitch_a5
    const-string/jumbo v0, "reconcileSdkData"

    return-object v0

    .line 252
    :pswitch_a9
    const-string v0, "createAppDataBatched"

    return-object v0

    .line 248
    :pswitch_ac
    const-string v0, "createAppData"

    return-object v0

    .line 244
    :pswitch_af
    const-string/jumbo v0, "setFirstBoot"

    return-object v0

    .line 240
    :pswitch_b3
    const-string v0, "destroyUserData"

    return-object v0

    .line 236
    :pswitch_b6
    const-string v0, "createUserData"

    return-object v0

    nop

    :pswitch_data_ba
    .packed-switch 0x1
        :pswitch_b6
        :pswitch_b3
        :pswitch_af
        :pswitch_ac
        :pswitch_a9
        :pswitch_a5
        :pswitch_a1
        :pswitch_9d
        :pswitch_9a
        :pswitch_97
        :pswitch_94
        :pswitch_91
        :pswitch_8d
        :pswitch_8a
        :pswitch_87
        :pswitch_83
        :pswitch_7f
        :pswitch_7b
        :pswitch_78
        :pswitch_75
        :pswitch_71
        :pswitch_6d
        :pswitch_6a
        :pswitch_67
        :pswitch_64
        :pswitch_61
        :pswitch_5e
        :pswitch_5b
        :pswitch_58
        :pswitch_54
        :pswitch_51
        :pswitch_4d
        :pswitch_4a
        :pswitch_46
        :pswitch_42
        :pswitch_3f
        :pswitch_3b
        :pswitch_37
        :pswitch_33
        :pswitch_2f
        :pswitch_2b
        :pswitch_27
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_19
        :pswitch_15
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

    .line 227
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2267
    const/16 v0, 0x33

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 451
    invoke-static {p1}, Landroid/os/IInstalld$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 24
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 455
    move-object/from16 v0, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, "android.os.IInstalld"

    .line 456
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt v8, v12, :cond_15

    const v1, 0xffffff

    if-gt v8, v1, :cond_15

    .line 457
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    :cond_15
    const v1, 0x5f4e5446

    if-ne v8, v1, :cond_1e

    .line 460
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 461
    return v12

    .line 463
    :cond_1e
    packed-switch v8, :pswitch_data_65c

    .line 1213
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 1200
    :pswitch_26
    invoke-virtual {v9}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IInstalld$IFsveritySetupAuthToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IInstalld$IFsveritySetupAuthToken;

    move-result-object v1

    .line 1202
    .local v1, "_arg0":Landroid/os/IInstalld$IFsveritySetupAuthToken;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1204
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1205
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1206
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->enableFsverity(Landroid/os/IInstalld$IFsveritySetupAuthToken;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1207
    .local v4, "_result":I
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1208
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1209
    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_65b

    .line 1188
    .end local v1    # "_arg0":Landroid/os/IInstalld$IFsveritySetupAuthToken;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_48
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 1190
    .local v1, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1191
    .local v2, "_arg1":I
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1192
    invoke-virtual {v0, v1, v2}, Landroid/os/IInstalld$Stub;->createFsveritySetupAuthToken(Landroid/os/ParcelFileDescriptor;I)Landroid/os/IInstalld$IFsveritySetupAuthToken;

    move-result-object v3

    .line 1193
    .local v3, "_result":Landroid/os/IInstalld$IFsveritySetupAuthToken;
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1194
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1195
    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_65b

    .line 1172
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/os/IInstalld$IFsveritySetupAuthToken;
    :pswitch_66
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1174
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1176
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1178
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1179
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1180
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/IInstalld$Stub;->getOdexVisibility(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1181
    .local v5, "_result":I
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1182
    invoke-virtual {v10, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1183
    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_65b

    .line 1159
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_result":I
    :pswitch_88
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1161
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1163
    .local v2, "_arg1":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1164
    .local v3, "_arg2":I
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1165
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->cleanupInvalidPackageDirs(Ljava/lang/String;II)V

    .line 1166
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1167
    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_65b

    .line 1152
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_a2
    invoke-virtual {v0}, Landroid/os/IInstalld$Stub;->migrateLegacyObbData()V

    .line 1153
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1154
    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_65b

    .line 1144
    :pswitch_ad
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1145
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1146
    invoke-virtual {v0, v1}, Landroid/os/IInstalld$Stub;->onPrivateVolumeRemoved(Ljava/lang/String;)V

    .line 1147
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1148
    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_65b

    .line 1135
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_bf
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1136
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1137
    invoke-virtual {v0, v1}, Landroid/os/IInstalld$Stub;->tryMountDataMirror(Ljava/lang/String;)V

    .line 1138
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1139
    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_65b

    .line 1122
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_d1
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1124
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1126
    .restart local v2    # "_arg1":I
    invoke-virtual {v9}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 1127
    .local v3, "_arg2":[I
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1128
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->destroyCeSnapshotsNotSpecified(Ljava/lang/String;I[I)V

    .line 1129
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1130
    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_65b

    .line 1103
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[I
    :pswitch_eb
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1105
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1107
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1109
    .local v3, "_arg2":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 1111
    .local v4, "_arg3":J
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1113
    .local v6, "_arg4":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1114
    .local v7, "_arg5":I
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1115
    invoke-virtual/range {v0 .. v7}, Landroid/os/IInstalld$Stub;->destroyAppDataSnapshot(Ljava/lang/String;Ljava/lang/String;IJII)V

    .line 1116
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1117
    move-object/from16 v0, p0

    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_65b

    .line 1082
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":J
    .end local v6    # "_arg4":I
    .end local v7    # "_arg5":I
    :pswitch_113
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1084
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1086
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1088
    .restart local v3    # "_arg2":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1090
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1092
    .local v5, "_arg4":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1094
    .local v6, "_arg5":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1095
    .local v7, "_arg6":I
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1096
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/os/IInstalld$Stub;->restoreAppDataSnapshot(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    .line 1097
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1098
    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_65b

    .line 1064
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":I
    :pswitch_13f
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1066
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1068
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1070
    .restart local v3    # "_arg2":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1072
    .local v4, "_arg3":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1073
    .restart local v5    # "_arg4":I
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1074
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/os/IInstalld$Stub;->snapshotAppData(Ljava/lang/String;Ljava/lang/String;III)J

    move-result-wide v6

    .line 1075
    .local v6, "_result":J
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1076
    invoke-virtual {v10, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 1077
    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_65b

    .line 1044
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_result":J
    :pswitch_167
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1046
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1048
    .local v2, "_arg1":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1050
    .restart local v3    # "_arg2":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1052
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1054
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1055
    .local v6, "_arg5":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1056
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/os/IInstalld$Stub;->prepareAppProfile(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 1057
    .local v7, "_result":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1058
    invoke-virtual {v10, v7}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1059
    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_65b

    .line 1034
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v7    # "_result":Z
    :pswitch_193
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1035
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1036
    invoke-virtual {v0, v1}, Landroid/os/IInstalld$Stub;->isQuotaSupported(Ljava/lang/String;)Z

    move-result v2

    .line 1037
    .local v2, "_result":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1038
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1039
    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_65b

    .line 1027
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_1a9
    invoke-virtual {v0}, Landroid/os/IInstalld$Stub;->invalidateMounts()V

    .line 1028
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1029
    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_65b

    .line 1010
    :pswitch_1b4
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1012
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1014
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1016
    .restart local v3    # "_arg2":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1018
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1019
    .local v5, "_arg4":I
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1020
    invoke-virtual/range {v0 .. v5}, Landroid/os/IInstalld$Stub;->hashSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)[B

    move-result-object v6

    .line 1021
    .local v6, "_result":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1022
    invoke-virtual {v10, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1023
    move-object/from16 v0, p0

    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_65b

    .line 990
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":I
    .end local v6    # "_result":[B
    :pswitch_1dc
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 992
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 994
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 996
    .restart local v3    # "_arg2":I
    invoke-virtual {v9}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 998
    .local v4, "_arg3":[Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1000
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1001
    .local v6, "_arg5":I
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1002
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/os/IInstalld$Stub;->reconcileSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v7

    .line 1003
    .restart local v7    # "_result":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 1004
    invoke-virtual {v10, v7}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1005
    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_65b

    .line 974
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":[Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":I
    .end local v7    # "_result":Z
    :pswitch_208
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 976
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 978
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 980
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 981
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 982
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/IInstalld$Stub;->deleteOdex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    .line 983
    .local v5, "_result":J
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 984
    invoke-virtual {v10, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    .line 985
    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_65b

    .line 959
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_result":J
    :pswitch_22a
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 961
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 963
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 965
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 966
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 967
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/IInstalld$Stub;->moveAb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 969
    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_65b

    .line 944
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_248
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 946
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 948
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 950
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 951
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 952
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/IInstalld$Stub;->linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 954
    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_65b

    .line 931
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_266
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 933
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 935
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 936
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 937
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->createOatDir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 939
    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_65b

    .line 916
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_280
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 918
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 920
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 922
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 923
    .local v4, "_arg3":I
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 924
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/IInstalld$Stub;->linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 925
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 926
    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_65b

    .line 903
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    :pswitch_29e
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 905
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 907
    .local v2, "_arg1":J
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 908
    .local v4, "_arg2":I
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 909
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/IInstalld$Stub;->freeCache(Ljava/lang/String;JI)V

    .line 910
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 911
    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_65b

    .line 892
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":I
    :pswitch_2b8
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 894
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 895
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 896
    invoke-virtual {v0, v1, v2}, Landroid/os/IInstalld$Stub;->rmPackageDir(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 898
    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_65b

    .line 881
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_2ce
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 883
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 884
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 885
    invoke-virtual {v0, v1, v2}, Landroid/os/IInstalld$Stub;->destroyProfileSnapshot(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 887
    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_65b

    .line 865
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_2e4
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 867
    .local v1, "_arg0":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 869
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 871
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 872
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 873
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/IInstalld$Stub;->createProfileSnapshot(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 874
    .local v5, "_result":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 875
    invoke-virtual {v10, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 876
    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_65b

    .line 854
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_306
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 856
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 857
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 858
    invoke-virtual {v0, v1, v2}, Landroid/os/IInstalld$Stub;->deleteReferenceProfile(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 860
    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_65b

    .line 845
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_31c
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 846
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 847
    invoke-virtual {v0, v1}, Landroid/os/IInstalld$Stub;->destroyAppProfiles(Ljava/lang/String;)V

    .line 848
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 849
    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_65b

    .line 834
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_32e
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 836
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 837
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 838
    invoke-virtual {v0, v1, v2}, Landroid/os/IInstalld$Stub;->clearAppProfiles(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 840
    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_65b

    .line 818
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_344
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 820
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 822
    .local v2, "_arg1":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 824
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 825
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 826
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/IInstalld$Stub;->copySystemProfile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 827
    .restart local v5    # "_result":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 828
    invoke-virtual {v10, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 829
    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_65b

    .line 800
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_366
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 802
    .local v1, "_arg0":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 804
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 806
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 808
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 809
    .local v5, "_arg4":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 810
    invoke-virtual/range {v0 .. v5}, Landroid/os/IInstalld$Stub;->dumpProfiles(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 811
    .local v6, "_result":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 812
    invoke-virtual {v10, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 813
    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_65b

    .line 786
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Z
    .end local v6    # "_result":Z
    :pswitch_38c
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 788
    .restart local v1    # "_arg0":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 790
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 791
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 792
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->mergeProfiles(ILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 793
    .local v4, "_result":I
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 794
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 795
    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_65b

    .line 775
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_3aa
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 777
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 778
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 779
    invoke-virtual {v0, v1, v2}, Landroid/os/IInstalld$Stub;->rmdex(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 781
    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_65b

    .line 766
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_3c0
    invoke-virtual {v9}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 767
    .local v1, "_arg0":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 768
    invoke-virtual {v0, v1}, Landroid/os/IInstalld$Stub;->controlDexOptBlocking(Z)V

    .line 769
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 770
    move-object/from16 v18, v11

    move v13, v12

    goto/16 :goto_65b

    .line 726
    .end local v1    # "_arg0":Z
    :pswitch_3d2
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 728
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 730
    .local v3, "_arg1":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 732
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 734
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 736
    .local v6, "_arg4":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 738
    .local v7, "_arg5":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 740
    .local v8, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 742
    .local v9, "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 744
    .local v10, "_arg8":Ljava/lang/String;
    move-object v1, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .local v1, "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 746
    .local v11, "_arg9":Ljava/lang/String;
    move v13, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 748
    .local v12, "_arg10":Ljava/lang/String;
    move v14, v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v13

    .line 750
    .local v13, "_arg11":Z
    move v15, v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 752
    .local v14, "_arg12":I
    move/from16 v16, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 754
    .local v15, "_arg13":Ljava/lang/String;
    move/from16 v17, v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 756
    .local v16, "_arg14":Ljava/lang/String;
    move/from16 v18, v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 757
    .local v17, "_arg15":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 758
    move-object/from16 v18, v1

    move-object v1, v0

    .end local v1    # "descriptor":Ljava/lang/String;
    .local v18, "descriptor":Ljava/lang/String;
    invoke-virtual/range {v1 .. v17}, Landroid/os/IInstalld$Stub;->dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 759
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 760
    move-object/from16 v1, p3

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 761
    move-object/from16 v0, p0

    move-object/from16 v9, p2

    move-object v10, v1

    const/4 v13, 0x1

    goto/16 :goto_65b

    .line 705
    .end local v0    # "_result":Z
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Ljava/lang/String;
    .end local v6    # "_arg4":I
    .end local v7    # "_arg5":Ljava/lang/String;
    .end local v8    # "_arg6":I
    .end local v9    # "_arg7":Ljava/lang/String;
    .end local v10    # "_arg8":Ljava/lang/String;
    .end local v12    # "_arg10":Ljava/lang/String;
    .end local v13    # "_arg11":Z
    .end local v14    # "_arg12":I
    .end local v15    # "_arg13":Ljava/lang/String;
    .end local v16    # "_arg14":Ljava/lang/String;
    .end local v17    # "_arg15":Ljava/lang/String;
    .end local v18    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_436
    move-object v1, v10

    move-object/from16 v18, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 707
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 709
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 711
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 713
    .local v4, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 715
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 717
    .local v6, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 718
    .local v7, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 719
    move-object/from16 v0, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    invoke-virtual/range {v0 .. v7}, Landroid/os/IInstalld$Stub;->moveCompleteApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 720
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    const/4 v13, 0x1

    goto/16 :goto_65b

    .line 690
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Ljava/lang/String;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_467
    move-object/from16 v18, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 692
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 694
    .local v2, "_arg1":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 696
    .local v3, "_arg2":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 697
    .local v4, "_arg3":J
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 698
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/os/IInstalld$Stub;->setAppQuota(Ljava/lang/String;IIJ)V

    .line 699
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 700
    const/4 v13, 0x1

    goto/16 :goto_65b

    .line 678
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":J
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_487
    move-object/from16 v18, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 680
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 681
    .restart local v2    # "_arg1":I
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 682
    invoke-virtual {v0, v1, v2}, Landroid/os/IInstalld$Stub;->getUserCrates(Ljava/lang/String;I)[Landroid/os/storage/CrateMetadata;

    move-result-object v3

    .line 683
    .local v3, "_result":[Landroid/os/storage/CrateMetadata;
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 684
    const/4 v13, 0x1

    invoke-virtual {v10, v3, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 685
    goto/16 :goto_65b

    .line 664
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":[Landroid/os/storage/CrateMetadata;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_4a1
    move-object/from16 v18, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 666
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 668
    .local v2, "_arg1":[Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 669
    .local v3, "_arg2":I
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 670
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->getAppCrates(Ljava/lang/String;[Ljava/lang/String;I)[Landroid/os/storage/CrateMetadata;

    move-result-object v4

    .line 671
    .local v4, "_result":[Landroid/os/storage/CrateMetadata;
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 672
    invoke-virtual {v10, v4, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 673
    goto/16 :goto_65b

    .line 648
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":[Landroid/os/storage/CrateMetadata;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_4bf
    move-object/from16 v18, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 650
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 652
    .local v2, "_arg1":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 654
    .restart local v3    # "_arg2":I
    invoke-virtual {v9}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 655
    .local v4, "_arg3":[I
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 656
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/IInstalld$Stub;->getExternalSize(Ljava/lang/String;II[I)[J

    move-result-object v5

    .line 657
    .local v5, "_result":[J
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 658
    invoke-virtual {v10, v5}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 659
    goto/16 :goto_65b

    .line 632
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":[I
    .end local v5    # "_result":[J
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_4e1
    move-object/from16 v18, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 634
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 636
    .restart local v2    # "_arg1":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 638
    .restart local v3    # "_arg2":I
    invoke-virtual {v9}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 639
    .restart local v4    # "_arg3":[I
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 640
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/IInstalld$Stub;->getUserSize(Ljava/lang/String;II[I)[J

    move-result-object v5

    .line 641
    .restart local v5    # "_result":[J
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 642
    invoke-virtual {v10, v5}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 643
    goto/16 :goto_65b

    .line 610
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":[I
    .end local v5    # "_result":[J
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_503
    move-object/from16 v18, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 612
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 614
    .local v2, "_arg1":[Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 616
    .restart local v3    # "_arg2":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 618
    .local v4, "_arg3":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 620
    .local v5, "_arg4":I
    invoke-virtual {v9}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v6

    .line 622
    .local v6, "_arg5":[J
    invoke-virtual {v9}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v7

    .line 623
    .local v7, "_arg6":[Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 624
    invoke-virtual/range {v0 .. v7}, Landroid/os/IInstalld$Stub;->getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;)[J

    move-result-object v8

    .line 625
    .local v8, "_result":[J
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 626
    invoke-virtual {v10, v8}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 627
    goto/16 :goto_65b

    .line 599
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":[J
    .end local v7    # "_arg6":[Ljava/lang/String;
    .end local v8    # "_result":[J
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_531
    move-object/from16 v18, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 601
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 602
    .local v2, "_arg1":I
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 603
    invoke-virtual {v0, v1, v2}, Landroid/os/IInstalld$Stub;->fixupAppData(Ljava/lang/String;I)V

    .line 604
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    goto/16 :goto_65b

    .line 582
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_547
    move-object/from16 v18, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 584
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 586
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 588
    .restart local v3    # "_arg2":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 590
    .restart local v4    # "_arg3":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 591
    .local v5, "_arg4":J
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 592
    invoke-virtual/range {v0 .. v6}, Landroid/os/IInstalld$Stub;->destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 593
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 594
    move-object/from16 v0, p0

    goto/16 :goto_65b

    .line 565
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":J
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_56b
    move-object/from16 v18, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 567
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 569
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 571
    .restart local v3    # "_arg2":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 573
    .restart local v4    # "_arg3":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 574
    .restart local v5    # "_arg4":J
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 575
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/os/IInstalld$Stub;->clearAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 576
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 577
    goto/16 :goto_65b

    .line 550
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":J
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_58f
    move-object/from16 v18, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 552
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 554
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 556
    .restart local v3    # "_arg2":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 557
    .restart local v4    # "_arg3":I
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 558
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/IInstalld$Stub;->migrateAppData(Ljava/lang/String;Ljava/lang/String;II)V

    .line 559
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 560
    goto/16 :goto_65b

    .line 531
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_5ad
    move-object/from16 v18, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 533
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 535
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 537
    .restart local v3    # "_arg2":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 539
    .restart local v4    # "_arg3":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 541
    .local v5, "_arg4":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 542
    .local v6, "_arg5":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 543
    invoke-virtual/range {v0 .. v6}, Landroid/os/IInstalld$Stub;->restoreconAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    .line 544
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 545
    goto/16 :goto_65b

    .line 522
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_5d3
    move-object/from16 v18, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/os/ReconcileSdkDataArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ReconcileSdkDataArgs;

    .line 523
    .local v1, "_arg0":Landroid/os/ReconcileSdkDataArgs;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 524
    invoke-virtual {v0, v1}, Landroid/os/IInstalld$Stub;->reconcileSdkData(Landroid/os/ReconcileSdkDataArgs;)V

    .line 525
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    goto/16 :goto_65b

    .line 512
    .end local v1    # "_arg0":Landroid/os/ReconcileSdkDataArgs;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_5e9
    move-object/from16 v18, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/os/CreateAppDataArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/CreateAppDataArgs;

    .line 513
    .local v1, "_arg0":[Landroid/os/CreateAppDataArgs;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 514
    invoke-virtual {v0, v1}, Landroid/os/IInstalld$Stub;->createAppDataBatched([Landroid/os/CreateAppDataArgs;)[Landroid/os/CreateAppDataResult;

    move-result-object v2

    .line 515
    .local v2, "_result":[Landroid/os/CreateAppDataResult;
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 516
    invoke-virtual {v10, v2, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 517
    goto :goto_65b

    .line 502
    .end local v1    # "_arg0":[Landroid/os/CreateAppDataArgs;
    .end local v2    # "_result":[Landroid/os/CreateAppDataResult;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_602
    move-object/from16 v18, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/os/CreateAppDataArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/CreateAppDataArgs;

    .line 503
    .local v1, "_arg0":Landroid/os/CreateAppDataArgs;
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 504
    invoke-virtual {v0, v1}, Landroid/os/IInstalld$Stub;->createAppData(Landroid/os/CreateAppDataArgs;)Landroid/os/CreateAppDataResult;

    move-result-object v2

    .line 505
    .local v2, "_result":Landroid/os/CreateAppDataResult;
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 506
    invoke-virtual {v10, v2, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 507
    goto :goto_65b

    .line 495
    .end local v1    # "_arg0":Landroid/os/CreateAppDataArgs;
    .end local v2    # "_result":Landroid/os/CreateAppDataResult;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_61b
    move-object/from16 v18, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/IInstalld$Stub;->setFirstBoot()V

    .line 496
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    goto :goto_65b

    .line 483
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_625
    move-object/from16 v18, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 485
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 487
    .local v2, "_arg1":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 488
    .restart local v3    # "_arg2":I
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 489
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->destroyUserData(Ljava/lang/String;II)V

    .line 490
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 491
    goto :goto_65b

    .line 468
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_63e
    move-object/from16 v18, v11

    move v13, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 470
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 472
    .restart local v2    # "_arg1":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 474
    .restart local v3    # "_arg2":I
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 475
    .restart local v4    # "_arg3":I
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 476
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/IInstalld$Stub;->createUserData(Ljava/lang/String;III)V

    .line 477
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 478
    nop

    .line 1216
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :goto_65b
    return v13

    :pswitch_data_65c
    .packed-switch 0x1
        :pswitch_63e
        :pswitch_625
        :pswitch_61b
        :pswitch_602
        :pswitch_5e9
        :pswitch_5d3
        :pswitch_5ad
        :pswitch_58f
        :pswitch_56b
        :pswitch_547
        :pswitch_531
        :pswitch_503
        :pswitch_4e1
        :pswitch_4bf
        :pswitch_4a1
        :pswitch_487
        :pswitch_467
        :pswitch_436
        :pswitch_3d2
        :pswitch_3c0
        :pswitch_3aa
        :pswitch_38c
        :pswitch_366
        :pswitch_344
        :pswitch_32e
        :pswitch_31c
        :pswitch_306
        :pswitch_2e4
        :pswitch_2ce
        :pswitch_2b8
        :pswitch_29e
        :pswitch_280
        :pswitch_266
        :pswitch_248
        :pswitch_22a
        :pswitch_208
        :pswitch_1dc
        :pswitch_1b4
        :pswitch_1a9
        :pswitch_193
        :pswitch_167
        :pswitch_13f
        :pswitch_113
        :pswitch_eb
        :pswitch_d1
        :pswitch_bf
        :pswitch_ad
        :pswitch_a2
        :pswitch_88
        :pswitch_66
        :pswitch_48
        :pswitch_26
    .end packed-switch
.end method
