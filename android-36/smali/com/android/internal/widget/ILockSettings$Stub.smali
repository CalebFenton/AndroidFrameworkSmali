.class public abstract Lcom/android/internal/widget/ILockSettings$Stub;
.super Landroid/os/Binder;
.source "ILockSettings.java"

# interfaces
.implements Lcom/android/internal/widget/ILockSettings;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ILockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ILockSettings$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.widget.ILockSettings"

.field static final blacklist TRANSACTION_addWeakEscrowToken:I = 0x35

.field static final greylist-max-o TRANSACTION_checkCredential:I = 0x9

.field static final greylist-max-o TRANSACTION_closeSession:I = 0x2d

.field static final greylist-max-o TRANSACTION_generateKey:I = 0x1f

.field static final blacklist TRANSACTION_generateKeyWithMetadata:I = 0x20

.field static final greylist-max-o TRANSACTION_getBoolean:I = 0x4

.field static final blacklist TRANSACTION_getCredentialType:I = 0xe

.field static final greylist-max-o TRANSACTION_getHashFactor:I = 0x11

.field static final greylist-max-o TRANSACTION_getKey:I = 0x23

.field static final greylist-max-o TRANSACTION_getKeyChainSnapshot:I = 0x1e

.field static final greylist-max-o TRANSACTION_getLong:I = 0x5

.field static final blacklist TRANSACTION_getPinLength:I = 0xf

.field static final greylist-max-o TRANSACTION_getRecoverySecretTypes:I = 0x2a

.field static final greylist-max-o TRANSACTION_getRecoveryStatus:I = 0x28

.field static final greylist-max-o TRANSACTION_getSeparateProfileChallengeEnabled:I = 0x13

.field static final greylist-max-o TRANSACTION_getString:I = 0x6

.field static final greylist-max-o TRANSACTION_getStrongAuthForUser:I = 0x1b

.field static final blacklist TRANSACTION_hasPendingEscrowToken:I = 0x1c

.field static final blacklist TRANSACTION_hasSecureLockScreen:I = 0x30

.field static final greylist-max-o TRANSACTION_importKey:I = 0x21

.field static final blacklist TRANSACTION_importKeyWithMetadata:I = 0x22

.field static final greylist-max-o TRANSACTION_initRecoveryServiceWithSigFile:I = 0x1d

.field static final blacklist TRANSACTION_isWeakEscrowTokenActive:I = 0x37

.field static final blacklist TRANSACTION_isWeakEscrowTokenValid:I = 0x38

.field static final greylist-max-o TRANSACTION_recoverKeyChainSnapshot:I = 0x2c

.field static final blacklist TRANSACTION_refreshStoredPinLength:I = 0x10

.field static final greylist-max-o TRANSACTION_registerStrongAuthTracker:I = 0x14

.field static final blacklist TRANSACTION_registerWeakEscrowTokenRemovedListener:I = 0x33

.field static final blacklist TRANSACTION_removeCachedUnifiedChallenge:I = 0x32

.field static final blacklist TRANSACTION_removeGatekeeperPasswordHandle:I = 0xd

.field static final greylist-max-o TRANSACTION_removeKey:I = 0x24

.field static final blacklist TRANSACTION_removeWeakEscrowToken:I = 0x36

.field static final blacklist TRANSACTION_reportSuccessfulBiometricUnlock:I = 0x17

.field static final greylist-max-o TRANSACTION_requireStrongAuth:I = 0x16

.field static final greylist-max-o TRANSACTION_resetKeyStore:I = 0x8

.field static final blacklist TRANSACTION_scheduleNonStrongBiometricIdleTimeout:I = 0x18

.field static final greylist-max-o TRANSACTION_setBoolean:I = 0x1

.field static final greylist-max-o TRANSACTION_setLockCredential:I = 0x7

.field static final greylist-max-o TRANSACTION_setLong:I = 0x2

.field static final greylist-max-o TRANSACTION_setRecoverySecretTypes:I = 0x29

.field static final greylist-max-o TRANSACTION_setRecoveryStatus:I = 0x27

.field static final greylist-max-o TRANSACTION_setSeparateProfileChallengeEnabled:I = 0x12

.field static final greylist-max-o TRANSACTION_setServerParams:I = 0x26

.field static final greylist-max-o TRANSACTION_setSnapshotCreatedPendingIntent:I = 0x25

.field static final greylist-max-o TRANSACTION_setString:I = 0x3

.field static final greylist-max-o TRANSACTION_startRecoverySessionWithCertPath:I = 0x2b

.field static final blacklist TRANSACTION_startRemoteLockscreenValidation:I = 0x2e

.field static final greylist-max-o TRANSACTION_systemReady:I = 0x19

.field static final blacklist TRANSACTION_tryUnlockWithCachedUnifiedChallenge:I = 0x31

.field static final blacklist TRANSACTION_unlockUserKeyIfUnsecured:I = 0x39

.field static final greylist-max-o TRANSACTION_unregisterStrongAuthTracker:I = 0x15

.field static final blacklist TRANSACTION_unregisterWeakEscrowTokenRemovedListener:I = 0x34

.field static final greylist-max-o TRANSACTION_userPresent:I = 0x1a

.field static final blacklist TRANSACTION_validateRemoteLockscreen:I = 0x2f

.field static final greylist-max-o TRANSACTION_verifyCredential:I = 0xa

.field static final blacklist TRANSACTION_verifyGatekeeperPasswordHandle:I = 0xc

.field static final greylist-max-o TRANSACTION_verifyTiedProfileChallenge:I = 0xb

.field static final blacklist TRANSACTION_writeRepairModeCredential:I = 0x3a


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 241
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 242
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 250
    if-nez p0, :cond_4

    .line 251
    const/4 v0, 0x0

    return-object v0

    .line 253
    :cond_4
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 254
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/widget/ILockSettings;

    if-eqz v1, :cond_14

    .line 255
    move-object v1, v0

    check-cast v1, Lcom/android/internal/widget/ILockSettings;

    return-object v1

    .line 257
    :cond_14
    new-instance v1, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 266
    packed-switch p0, :pswitch_data_d6

    .line 502
    const/4 v0, 0x0

    return-object v0

    .line 498
    :pswitch_5
    const-string/jumbo v0, "writeRepairModeCredential"

    return-object v0

    .line 494
    :pswitch_9
    const-string/jumbo v0, "unlockUserKeyIfUnsecured"

    return-object v0

    .line 490
    :pswitch_d
    const-string v0, "isWeakEscrowTokenValid"

    return-object v0

    .line 486
    :pswitch_10
    const-string v0, "isWeakEscrowTokenActive"

    return-object v0

    .line 482
    :pswitch_13
    const-string/jumbo v0, "removeWeakEscrowToken"

    return-object v0

    .line 478
    :pswitch_17
    const-string v0, "addWeakEscrowToken"

    return-object v0

    .line 474
    :pswitch_1a
    const-string/jumbo v0, "unregisterWeakEscrowTokenRemovedListener"

    return-object v0

    .line 470
    :pswitch_1e
    const-string/jumbo v0, "registerWeakEscrowTokenRemovedListener"

    return-object v0

    .line 466
    :pswitch_22
    const-string/jumbo v0, "removeCachedUnifiedChallenge"

    return-object v0

    .line 462
    :pswitch_26
    const-string/jumbo v0, "tryUnlockWithCachedUnifiedChallenge"

    return-object v0

    .line 458
    :pswitch_2a
    const-string v0, "hasSecureLockScreen"

    return-object v0

    .line 454
    :pswitch_2d
    const-string/jumbo v0, "validateRemoteLockscreen"

    return-object v0

    .line 450
    :pswitch_31
    const-string/jumbo v0, "startRemoteLockscreenValidation"

    return-object v0

    .line 446
    :pswitch_35
    const-string v0, "closeSession"

    return-object v0

    .line 442
    :pswitch_38
    const-string/jumbo v0, "recoverKeyChainSnapshot"

    return-object v0

    .line 438
    :pswitch_3c
    const-string/jumbo v0, "startRecoverySessionWithCertPath"

    return-object v0

    .line 434
    :pswitch_40
    const-string v0, "getRecoverySecretTypes"

    return-object v0

    .line 430
    :pswitch_43
    const-string/jumbo v0, "setRecoverySecretTypes"

    return-object v0

    .line 426
    :pswitch_47
    const-string v0, "getRecoveryStatus"

    return-object v0

    .line 422
    :pswitch_4a
    const-string/jumbo v0, "setRecoveryStatus"

    return-object v0

    .line 418
    :pswitch_4e
    const-string/jumbo v0, "setServerParams"

    return-object v0

    .line 414
    :pswitch_52
    const-string/jumbo v0, "setSnapshotCreatedPendingIntent"

    return-object v0

    .line 410
    :pswitch_56
    const-string/jumbo v0, "removeKey"

    return-object v0

    .line 406
    :pswitch_5a
    const-string v0, "getKey"

    return-object v0

    .line 402
    :pswitch_5d
    const-string v0, "importKeyWithMetadata"

    return-object v0

    .line 398
    :pswitch_60
    const-string v0, "importKey"

    return-object v0

    .line 394
    :pswitch_63
    const-string v0, "generateKeyWithMetadata"

    return-object v0

    .line 390
    :pswitch_66
    const-string v0, "generateKey"

    return-object v0

    .line 386
    :pswitch_69
    const-string v0, "getKeyChainSnapshot"

    return-object v0

    .line 382
    :pswitch_6c
    const-string v0, "initRecoveryServiceWithSigFile"

    return-object v0

    .line 378
    :pswitch_6f
    const-string v0, "hasPendingEscrowToken"

    return-object v0

    .line 374
    :pswitch_72
    const-string v0, "getStrongAuthForUser"

    return-object v0

    .line 370
    :pswitch_75
    const-string/jumbo v0, "userPresent"

    return-object v0

    .line 366
    :pswitch_79
    const-string/jumbo v0, "systemReady"

    return-object v0

    .line 362
    :pswitch_7d
    const-string/jumbo v0, "scheduleNonStrongBiometricIdleTimeout"

    return-object v0

    .line 358
    :pswitch_81
    const-string/jumbo v0, "reportSuccessfulBiometricUnlock"

    return-object v0

    .line 354
    :pswitch_85
    const-string/jumbo v0, "requireStrongAuth"

    return-object v0

    .line 350
    :pswitch_89
    const-string/jumbo v0, "unregisterStrongAuthTracker"

    return-object v0

    .line 346
    :pswitch_8d
    const-string/jumbo v0, "registerStrongAuthTracker"

    return-object v0

    .line 342
    :pswitch_91
    const-string v0, "getSeparateProfileChallengeEnabled"

    return-object v0

    .line 338
    :pswitch_94
    const-string/jumbo v0, "setSeparateProfileChallengeEnabled"

    return-object v0

    .line 334
    :pswitch_98
    const-string v0, "getHashFactor"

    return-object v0

    .line 330
    :pswitch_9b
    const-string/jumbo v0, "refreshStoredPinLength"

    return-object v0

    .line 326
    :pswitch_9f
    const-string v0, "getPinLength"

    return-object v0

    .line 322
    :pswitch_a2
    const-string v0, "getCredentialType"

    return-object v0

    .line 318
    :pswitch_a5
    const-string/jumbo v0, "removeGatekeeperPasswordHandle"

    return-object v0

    .line 314
    :pswitch_a9
    const-string/jumbo v0, "verifyGatekeeperPasswordHandle"

    return-object v0

    .line 310
    :pswitch_ad
    const-string/jumbo v0, "verifyTiedProfileChallenge"

    return-object v0

    .line 306
    :pswitch_b1
    const-string/jumbo v0, "verifyCredential"

    return-object v0

    .line 302
    :pswitch_b5
    const-string v0, "checkCredential"

    return-object v0

    .line 298
    :pswitch_b8
    const-string/jumbo v0, "resetKeyStore"

    return-object v0

    .line 294
    :pswitch_bc
    const-string/jumbo v0, "setLockCredential"

    return-object v0

    .line 290
    :pswitch_c0
    const-string v0, "getString"

    return-object v0

    .line 286
    :pswitch_c3
    const-string v0, "getLong"

    return-object v0

    .line 282
    :pswitch_c6
    const-string v0, "getBoolean"

    return-object v0

    .line 278
    :pswitch_c9
    const-string/jumbo v0, "setString"

    return-object v0

    .line 274
    :pswitch_cd
    const-string/jumbo v0, "setLong"

    return-object v0

    .line 270
    :pswitch_d1
    const-string/jumbo v0, "setBoolean"

    return-object v0

    nop

    :pswitch_data_d6
    .packed-switch 0x1
        :pswitch_d1
        :pswitch_cd
        :pswitch_c9
        :pswitch_c6
        :pswitch_c3
        :pswitch_c0
        :pswitch_bc
        :pswitch_b8
        :pswitch_b5
        :pswitch_b1
        :pswitch_ad
        :pswitch_a9
        :pswitch_a5
        :pswitch_a2
        :pswitch_9f
        :pswitch_9b
        :pswitch_98
        :pswitch_94
        :pswitch_91
        :pswitch_8d
        :pswitch_89
        :pswitch_85
        :pswitch_81
        :pswitch_7d
        :pswitch_79
        :pswitch_75
        :pswitch_72
        :pswitch_6f
        :pswitch_6c
        :pswitch_69
        :pswitch_66
        :pswitch_63
        :pswitch_60
        :pswitch_5d
        :pswitch_5a
        :pswitch_56
        :pswitch_52
        :pswitch_4e
        :pswitch_4a
        :pswitch_47
        :pswitch_43
        :pswitch_40
        :pswitch_3c
        :pswitch_38
        :pswitch_35
        :pswitch_31
        :pswitch_2d
        :pswitch_2a
        :pswitch_26
        :pswitch_22
        :pswitch_1e
        :pswitch_1a
        :pswitch_17
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 261
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2268
    const/16 v0, 0x39

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 509
    invoke-static {p1}, Lcom/android/internal/widget/ILockSettings$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 513
    move-object v7, p3

    const-string v8, "com.android.internal.widget.ILockSettings"

    .line 514
    .local v8, "descriptor":Ljava/lang/String;
    const/4 v9, 0x1

    if-lt p1, v9, :cond_e

    const v1, 0xffffff

    if-gt p1, v1, :cond_e

    .line 515
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 517
    :cond_e
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_17

    .line 518
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 519
    return v9

    .line 521
    :cond_17
    packed-switch p1, :pswitch_data_4e6

    .line 1159
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 1150
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1151
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1152
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->writeRepairModeCredential(I)Z

    move-result v2

    .line 1153
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1154
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1155
    goto/16 :goto_4e4

    .line 1141
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1142
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1143
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->unlockUserKeyIfUnsecured(I)V

    .line 1144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1145
    goto/16 :goto_4e4

    .line 1127
    .end local v1    # "_arg0":I
    :pswitch_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1129
    .local v1, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 1131
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1132
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1133
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/widget/ILockSettings$Stub;->isWeakEscrowTokenValid(J[BI)Z

    move-result v5

    .line 1134
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1135
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1136
    goto/16 :goto_4e4

    .line 1115
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":[B
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Z
    :pswitch_5c
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1117
    .restart local v1    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1118
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1119
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/widget/ILockSettings$Stub;->isWeakEscrowTokenActive(JI)Z

    move-result v4

    .line 1120
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1121
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1122
    goto/16 :goto_4e4

    .line 1103
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_73
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1105
    .restart local v1    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1106
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1107
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/widget/ILockSettings$Stub;->removeWeakEscrowToken(JI)Z

    move-result v4

    .line 1108
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1109
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1110
    goto/16 :goto_4e4

    .line 1089
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_8a
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 1091
    .local v1, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1093
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener;

    move-result-object v3

    .line 1094
    .local v3, "_arg2":Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1095
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/widget/ILockSettings$Stub;->addWeakEscrowToken([BILcom/android/internal/widget/IWeakEscrowTokenActivatedListener;)J

    move-result-wide v4

    .line 1096
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1097
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1098
    goto/16 :goto_4e4

    .line 1079
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener;
    .end local v4    # "_result":J
    :pswitch_a9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;

    move-result-object v1

    .line 1080
    .local v1, "_arg0":Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1081
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->unregisterWeakEscrowTokenRemovedListener(Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;)Z

    move-result v2

    .line 1082
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1083
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1084
    goto/16 :goto_4e4

    .line 1069
    .end local v1    # "_arg0":Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;
    .end local v2    # "_result":Z
    :pswitch_c0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;

    move-result-object v1

    .line 1070
    .restart local v1    # "_arg0":Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1071
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->registerWeakEscrowTokenRemovedListener(Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;)Z

    move-result v2

    .line 1072
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1073
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1074
    goto/16 :goto_4e4

    .line 1060
    .end local v1    # "_arg0":Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;
    .end local v2    # "_result":Z
    :pswitch_d7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1061
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1062
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->removeCachedUnifiedChallenge(I)V

    .line 1063
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1064
    goto/16 :goto_4e4

    .line 1050
    .end local v1    # "_arg0":I
    :pswitch_e6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1051
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1052
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->tryUnlockWithCachedUnifiedChallenge(I)Z

    move-result v2

    .line 1053
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1054
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1055
    goto/16 :goto_4e4

    .line 1042
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_f9
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub;->hasSecureLockScreen()Z

    move-result v1

    .line 1043
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1044
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1045
    goto/16 :goto_4e4

    .line 1033
    .end local v1    # "_result":Z
    :pswitch_105
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 1034
    .local v1, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1035
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->validateRemoteLockscreen([B)Landroid/app/RemoteLockscreenValidationResult;

    move-result-object v2

    .line 1036
    .local v2, "_result":Landroid/app/RemoteLockscreenValidationResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1037
    invoke-virtual {p3, v2, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1038
    goto/16 :goto_4e4

    .line 1025
    .end local v1    # "_arg0":[B
    .end local v2    # "_result":Landroid/app/RemoteLockscreenValidationResult;
    :pswitch_118
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub;->startRemoteLockscreenValidation()Landroid/app/RemoteLockscreenValidationSession;

    move-result-object v1

    .line 1026
    .local v1, "_result":Landroid/app/RemoteLockscreenValidationSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1027
    invoke-virtual {p3, v1, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1028
    goto/16 :goto_4e4

    .line 1017
    .end local v1    # "_result":Landroid/app/RemoteLockscreenValidationSession;
    :pswitch_124
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1018
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1019
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->closeSession(Ljava/lang/String;)V

    .line 1020
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1021
    goto/16 :goto_4e4

    .line 1003
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_133
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1005
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 1007
    .local v2, "_arg1":[B
    sget-object v3, Landroid/security/keystore/recovery/WrappedApplicationKey;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1008
    .local v3, "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/security/keystore/recovery/WrappedApplicationKey;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1009
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/widget/ILockSettings$Stub;->recoverKeyChainSnapshot(Ljava/lang/String;[BLjava/util/List;)Ljava/util/Map;

    move-result-object v4

    .line 1010
    .local v4, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1011
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 1012
    goto/16 :goto_4e4

    .line 983
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/security/keystore/recovery/WrappedApplicationKey;>;"
    .end local v4    # "_result":Ljava/util/Map;
    :pswitch_150
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 985
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 987
    .local v2, "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/security/keystore/recovery/RecoveryCertPath;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/security/keystore/recovery/RecoveryCertPath;

    .line 989
    .local v3, "_arg2":Landroid/security/keystore/recovery/RecoveryCertPath;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 991
    .local v4, "_arg3":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 993
    .local v5, "_arg4":[B
    sget-object v6, Landroid/security/keystore/recovery/KeyChainProtectionParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v6

    .line 994
    .local v6, "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/security/keystore/recovery/KeyChainProtectionParams;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 995
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/ILockSettings$Stub;->startRecoverySessionWithCertPath(Ljava/lang/String;Ljava/lang/String;Landroid/security/keystore/recovery/RecoveryCertPath;[B[BLjava/util/List;)[B

    move-result-object v10

    .line 996
    .local v10, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 997
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 998
    goto/16 :goto_4e4

    .line 975
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/security/keystore/recovery/RecoveryCertPath;
    .end local v4    # "_arg3":[B
    .end local v5    # "_arg4":[B
    .end local v6    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/security/keystore/recovery/KeyChainProtectionParams;>;"
    .end local v10    # "_result":[B
    :pswitch_17e
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub;->getRecoverySecretTypes()[I

    move-result-object v1

    .line 976
    .local v1, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 977
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 978
    goto/16 :goto_4e4

    .line 967
    .end local v1    # "_result":[I
    :pswitch_18a
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 968
    .local v1, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 969
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->setRecoverySecretTypes([I)V

    .line 970
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 971
    goto/16 :goto_4e4

    .line 959
    .end local v1    # "_arg0":[I
    :pswitch_199
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub;->getRecoveryStatus()Ljava/util/Map;

    move-result-object v1

    .line 960
    .local v1, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 961
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 962
    goto/16 :goto_4e4

    .line 949
    .end local v1    # "_result":Ljava/util/Map;
    :pswitch_1a5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 951
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 952
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 953
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->setRecoveryStatus(Ljava/lang/String;I)V

    .line 954
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 955
    goto/16 :goto_4e4

    .line 940
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_1b8
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 941
    .local v1, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 942
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->setServerParams([B)V

    .line 943
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 944
    goto/16 :goto_4e4

    .line 931
    .end local v1    # "_arg0":[B
    :pswitch_1c7
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 932
    .local v1, "_arg0":Landroid/app/PendingIntent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 933
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->setSnapshotCreatedPendingIntent(Landroid/app/PendingIntent;)V

    .line 934
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 935
    goto/16 :goto_4e4

    .line 922
    .end local v1    # "_arg0":Landroid/app/PendingIntent;
    :pswitch_1da
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 923
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 924
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->removeKey(Ljava/lang/String;)V

    .line 925
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 926
    goto/16 :goto_4e4

    .line 912
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_1e9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 913
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 914
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 915
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 916
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 917
    goto/16 :goto_4e4

    .line 898
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_1fc
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 900
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 902
    .local v2, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 903
    .local v3, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 904
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/widget/ILockSettings$Stub;->importKeyWithMetadata(Ljava/lang/String;[B[B)Ljava/lang/String;

    move-result-object v4

    .line 905
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 906
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 907
    goto/16 :goto_4e4

    .line 886
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[B
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_217
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 888
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 889
    .restart local v2    # "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 890
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->importKey(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v3

    .line 891
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 892
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 893
    goto/16 :goto_4e4

    .line 874
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[B
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_22e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 876
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 877
    .restart local v2    # "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 878
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->generateKeyWithMetadata(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v3

    .line 879
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 880
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 881
    goto/16 :goto_4e4

    .line 864
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[B
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_245
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 865
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 866
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->generateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 867
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 868
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 869
    goto/16 :goto_4e4

    .line 856
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_258
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub;->getKeyChainSnapshot()Landroid/security/keystore/recovery/KeyChainSnapshot;

    move-result-object v1

    .line 857
    .local v1, "_result":Landroid/security/keystore/recovery/KeyChainSnapshot;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 858
    invoke-virtual {p3, v1, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 859
    goto/16 :goto_4e4

    .line 844
    .end local v1    # "_result":Landroid/security/keystore/recovery/KeyChainSnapshot;
    :pswitch_264
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 846
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 848
    .local v2, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 849
    .local v3, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 850
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/widget/ILockSettings$Stub;->initRecoveryServiceWithSigFile(Ljava/lang/String;[B[B)V

    .line 851
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 852
    goto/16 :goto_4e4

    .line 834
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[B
    :pswitch_27b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 835
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 836
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->hasPendingEscrowToken(I)Z

    move-result v2

    .line 837
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 838
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 839
    goto/16 :goto_4e4

    .line 824
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_28e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 825
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 826
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->getStrongAuthForUser(I)I

    move-result v2

    .line 827
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 828
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 829
    goto/16 :goto_4e4

    .line 815
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_2a1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 816
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 817
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->userPresent(I)V

    .line 818
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 819
    goto/16 :goto_4e4

    .line 808
    .end local v1    # "_arg0":I
    :pswitch_2b0
    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub;->systemReady()V

    .line 809
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 810
    goto/16 :goto_4e4

    .line 800
    :pswitch_2b8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 801
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 802
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->scheduleNonStrongBiometricIdleTimeout(I)V

    .line 803
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 804
    goto/16 :goto_4e4

    .line 789
    .end local v1    # "_arg0":I
    :pswitch_2c7
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 791
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 792
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 793
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->reportSuccessfulBiometricUnlock(ZI)V

    .line 794
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 795
    goto/16 :goto_4e4

    .line 778
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":I
    :pswitch_2da
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 780
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 781
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 782
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->requireStrongAuth(II)V

    .line 783
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 784
    goto/16 :goto_4e4

    .line 769
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_2ed
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/trust/IStrongAuthTracker$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/IStrongAuthTracker;

    move-result-object v1

    .line 770
    .local v1, "_arg0":Landroid/app/trust/IStrongAuthTracker;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 771
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    .line 772
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 773
    goto/16 :goto_4e4

    .line 760
    .end local v1    # "_arg0":Landroid/app/trust/IStrongAuthTracker;
    :pswitch_300
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/trust/IStrongAuthTracker$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/IStrongAuthTracker;

    move-result-object v1

    .line 761
    .restart local v1    # "_arg0":Landroid/app/trust/IStrongAuthTracker;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 762
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    .line 763
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 764
    goto/16 :goto_4e4

    .line 750
    .end local v1    # "_arg0":Landroid/app/trust/IStrongAuthTracker;
    :pswitch_313
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 751
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 752
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->getSeparateProfileChallengeEnabled(I)Z

    move-result v2

    .line 753
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 754
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 755
    goto/16 :goto_4e4

    .line 737
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_326
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 739
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 741
    .local v2, "_arg1":Z
    sget-object v3, Lcom/android/internal/widget/LockscreenCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/LockscreenCredential;

    .line 742
    .local v3, "_arg2":Lcom/android/internal/widget/LockscreenCredential;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 743
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/widget/ILockSettings$Stub;->setSeparateProfileChallengeEnabled(IZLcom/android/internal/widget/LockscreenCredential;)V

    .line 744
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 745
    goto/16 :goto_4e4

    .line 725
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Lcom/android/internal/widget/LockscreenCredential;
    :pswitch_341
    sget-object v1, Lcom/android/internal/widget/LockscreenCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/LockscreenCredential;

    .line 727
    .local v1, "_arg0":Lcom/android/internal/widget/LockscreenCredential;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 728
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 729
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->getHashFactor(Lcom/android/internal/widget/LockscreenCredential;I)[B

    move-result-object v3

    .line 730
    .local v3, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 731
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 732
    goto/16 :goto_4e4

    .line 715
    .end local v1    # "_arg0":Lcom/android/internal/widget/LockscreenCredential;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":[B
    :pswitch_35c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 716
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 717
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->refreshStoredPinLength(I)Z

    move-result v2

    .line 718
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 719
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 720
    goto/16 :goto_4e4

    .line 705
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_36f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 706
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 707
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->getPinLength(I)I

    move-result v2

    .line 708
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 709
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 710
    goto/16 :goto_4e4

    .line 695
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_382
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 696
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 697
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->getCredentialType(I)I

    move-result v2

    .line 698
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 699
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 700
    goto/16 :goto_4e4

    .line 686
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_395
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 687
    .local v1, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 688
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->removeGatekeeperPasswordHandle(J)V

    .line 689
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 690
    goto/16 :goto_4e4

    .line 672
    .end local v1    # "_arg0":J
    :pswitch_3a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 674
    .restart local v1    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 676
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 677
    .local v5, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 678
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ILockSettings$Stub;->verifyGatekeeperPasswordHandle(JJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v6

    .line 679
    .local v6, "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 680
    invoke-virtual {p3, v6, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 681
    goto/16 :goto_4e4

    .line 658
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":J
    .end local v5    # "_arg2":I
    .end local v6    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :pswitch_3c0
    sget-object v1, Lcom/android/internal/widget/LockscreenCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/LockscreenCredential;

    .line 660
    .local v1, "_arg0":Lcom/android/internal/widget/LockscreenCredential;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 662
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 663
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 664
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/widget/ILockSettings$Stub;->verifyTiedProfileChallenge(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v4

    .line 665
    .local v4, "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 666
    invoke-virtual {p3, v4, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 667
    goto/16 :goto_4e4

    .line 644
    .end local v1    # "_arg0":Lcom/android/internal/widget/LockscreenCredential;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :pswitch_3df
    sget-object v1, Lcom/android/internal/widget/LockscreenCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/LockscreenCredential;

    .line 646
    .restart local v1    # "_arg0":Lcom/android/internal/widget/LockscreenCredential;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 648
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 649
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 650
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/widget/ILockSettings$Stub;->verifyCredential(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v4

    .line 651
    .restart local v4    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 652
    invoke-virtual {p3, v4, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 653
    goto/16 :goto_4e4

    .line 630
    .end local v1    # "_arg0":Lcom/android/internal/widget/LockscreenCredential;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :pswitch_3fe
    sget-object v1, Lcom/android/internal/widget/LockscreenCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/LockscreenCredential;

    .line 632
    .restart local v1    # "_arg0":Lcom/android/internal/widget/LockscreenCredential;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 634
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/ICheckCredentialProgressCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ICheckCredentialProgressCallback;

    move-result-object v3

    .line 635
    .local v3, "_arg2":Lcom/android/internal/widget/ICheckCredentialProgressCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 636
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/widget/ILockSettings$Stub;->checkCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v4

    .line 637
    .restart local v4    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 638
    invoke-virtual {p3, v4, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 639
    goto/16 :goto_4e4

    .line 621
    .end local v1    # "_arg0":Lcom/android/internal/widget/LockscreenCredential;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Lcom/android/internal/widget/ICheckCredentialProgressCallback;
    .end local v4    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :pswitch_421
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 622
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 623
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->resetKeyStore(I)V

    .line 624
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 625
    goto/16 :goto_4e4

    .line 607
    .end local v1    # "_arg0":I
    :pswitch_430
    sget-object v1, Lcom/android/internal/widget/LockscreenCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/LockscreenCredential;

    .line 609
    .local v1, "_arg0":Lcom/android/internal/widget/LockscreenCredential;
    sget-object v2, Lcom/android/internal/widget/LockscreenCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/LockscreenCredential;

    .line 611
    .local v2, "_arg1":Lcom/android/internal/widget/LockscreenCredential;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 612
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 613
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/widget/ILockSettings$Stub;->setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z

    move-result v4

    .line 614
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 615
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 616
    goto/16 :goto_4e4

    .line 593
    .end local v1    # "_arg0":Lcom/android/internal/widget/LockscreenCredential;
    .end local v2    # "_arg1":Lcom/android/internal/widget/LockscreenCredential;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Z
    :pswitch_453
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 595
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 597
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 598
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 599
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/widget/ILockSettings$Stub;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 600
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 601
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 602
    goto/16 :goto_4e4

    .line 579
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_46e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 581
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 583
    .local v2, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 584
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 585
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/widget/ILockSettings$Stub;->getLong(Ljava/lang/String;JI)J

    move-result-wide v5

    .line 586
    .local v5, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 587
    invoke-virtual {p3, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    .line 588
    goto :goto_4e4

    .line 565
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":I
    .end local v5    # "_result":J
    :pswitch_488
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 567
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 569
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 570
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 571
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/widget/ILockSettings$Stub;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v4

    .line 572
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 573
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 574
    goto :goto_4e4

    .line 552
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Z
    :pswitch_4a2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 554
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 556
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 557
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 558
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/widget/ILockSettings$Stub;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 559
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 560
    goto :goto_4e4

    .line 539
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    :pswitch_4b8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 541
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 543
    .local v2, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 544
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 545
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/widget/ILockSettings$Stub;->setLong(Ljava/lang/String;JI)V

    .line 546
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 547
    goto :goto_4e4

    .line 526
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":I
    :pswitch_4ce
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 528
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 530
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 531
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 532
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/widget/ILockSettings$Stub;->setBoolean(Ljava/lang/String;ZI)V

    .line 533
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 534
    nop

    .line 1162
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":I
    :goto_4e4
    return v9

    nop

    :pswitch_data_4e6
    .packed-switch 0x1
        :pswitch_4ce
        :pswitch_4b8
        :pswitch_4a2
        :pswitch_488
        :pswitch_46e
        :pswitch_453
        :pswitch_430
        :pswitch_421
        :pswitch_3fe
        :pswitch_3df
        :pswitch_3c0
        :pswitch_3a4
        :pswitch_395
        :pswitch_382
        :pswitch_36f
        :pswitch_35c
        :pswitch_341
        :pswitch_326
        :pswitch_313
        :pswitch_300
        :pswitch_2ed
        :pswitch_2da
        :pswitch_2c7
        :pswitch_2b8
        :pswitch_2b0
        :pswitch_2a1
        :pswitch_28e
        :pswitch_27b
        :pswitch_264
        :pswitch_258
        :pswitch_245
        :pswitch_22e
        :pswitch_217
        :pswitch_1fc
        :pswitch_1e9
        :pswitch_1da
        :pswitch_1c7
        :pswitch_1b8
        :pswitch_1a5
        :pswitch_199
        :pswitch_18a
        :pswitch_17e
        :pswitch_150
        :pswitch_133
        :pswitch_124
        :pswitch_118
        :pswitch_105
        :pswitch_f9
        :pswitch_e6
        :pswitch_d7
        :pswitch_c0
        :pswitch_a9
        :pswitch_8a
        :pswitch_73
        :pswitch_5c
        :pswitch_41
        :pswitch_32
        :pswitch_1f
    .end packed-switch
.end method
