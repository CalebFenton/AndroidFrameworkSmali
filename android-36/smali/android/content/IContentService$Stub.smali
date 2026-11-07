.class public abstract Landroid/content/IContentService$Stub;
.super Landroid/os/Binder;
.source "IContentService.java"

# interfaces
.implements Landroid/content/IContentService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/IContentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/IContentService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.content.IContentService"

.field static final greylist-max-o TRANSACTION_addPeriodicSync:I = 0xf

.field static final greylist-max-o TRANSACTION_addStatusChangeListener:I = 0x24

.field static final greylist-max-o TRANSACTION_cancelRequest:I = 0x9

.field static final greylist-max-o TRANSACTION_cancelSync:I = 0x7

.field static final greylist-max-o TRANSACTION_cancelSyncAsUser:I = 0x8

.field static final greylist-max-o TRANSACTION_getCache:I = 0x27

.field static final greylist-max-o TRANSACTION_getCurrentSyncs:I = 0x19

.field static final greylist-max-o TRANSACTION_getCurrentSyncsAsUser:I = 0x1a

.field static final greylist-max-o TRANSACTION_getIsSyncable:I = 0x11

.field static final greylist-max-o TRANSACTION_getIsSyncableAsUser:I = 0x12

.field static final greylist-max-o TRANSACTION_getMasterSyncAutomatically:I = 0x17

.field static final greylist-max-o TRANSACTION_getMasterSyncAutomaticallyAsUser:I = 0x18

.field static final greylist-max-o TRANSACTION_getPeriodicSyncs:I = 0xe

.field static final blacklist TRANSACTION_getSyncAdapterPackageAsUser:I = 0x1e

.field static final greylist-max-o TRANSACTION_getSyncAdapterPackagesForAuthorityAsUser:I = 0x1d

.field static final greylist-max-o TRANSACTION_getSyncAdapterTypes:I = 0x1b

.field static final greylist-max-o TRANSACTION_getSyncAdapterTypesAsUser:I = 0x1c

.field static final greylist-max-o TRANSACTION_getSyncAutomatically:I = 0xa

.field static final greylist-max-o TRANSACTION_getSyncAutomaticallyAsUser:I = 0xb

.field static final greylist-max-o TRANSACTION_getSyncStatus:I = 0x20

.field static final greylist-max-o TRANSACTION_getSyncStatusAsUser:I = 0x21

.field static final greylist-max-o TRANSACTION_isSyncActive:I = 0x1f

.field static final greylist-max-o TRANSACTION_isSyncPending:I = 0x22

.field static final greylist-max-o TRANSACTION_isSyncPendingAsUser:I = 0x23

.field static final greylist-max-o TRANSACTION_notifyChange:I = 0x3

.field static final blacklist TRANSACTION_onDbCorruption:I = 0x29

.field static final greylist-max-o TRANSACTION_putCache:I = 0x26

.field static final greylist-max-o TRANSACTION_registerContentObserver:I = 0x2

.field static final greylist-max-o TRANSACTION_removePeriodicSync:I = 0x10

.field static final greylist-max-o TRANSACTION_removeStatusChangeListener:I = 0x25

.field static final greylist-max-o TRANSACTION_requestSync:I = 0x4

.field static final greylist-max-o TRANSACTION_resetTodayStats:I = 0x28

.field static final greylist-max-o TRANSACTION_setIsSyncable:I = 0x13

.field static final blacklist TRANSACTION_setIsSyncableAsUser:I = 0x14

.field static final greylist-max-o TRANSACTION_setMasterSyncAutomatically:I = 0x15

.field static final greylist-max-o TRANSACTION_setMasterSyncAutomaticallyAsUser:I = 0x16

.field static final greylist-max-o TRANSACTION_setSyncAutomatically:I = 0xc

.field static final greylist-max-o TRANSACTION_setSyncAutomaticallyAsUser:I = 0xd

.field static final greylist-max-o TRANSACTION_sync:I = 0x5

.field static final greylist-max-o TRANSACTION_syncAsUser:I = 0x6

.field static final greylist-max-o TRANSACTION_unregisterContentObserver:I = 0x1


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor greylist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 262
    nop

    .line 263
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 262
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/IContentService$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 264
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 252
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 253
    const-string v0, "android.content.IContentService"

    invoke-virtual {p0, p0, v0}, Landroid/content/IContentService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 254
    if-eqz p1, :cond_d

    .line 257
    iput-object p1, p0, Landroid/content/IContentService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 258
    return-void

    .line 255
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/content/IContentService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 271
    if-nez p0, :cond_4

    .line 272
    const/4 v0, 0x0

    return-object v0

    .line 274
    :cond_4
    const-string v0, "android.content.IContentService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 275
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/content/IContentService;

    if-eqz v1, :cond_14

    .line 276
    move-object v1, v0

    check-cast v1, Landroid/content/IContentService;

    return-object v1

    .line 278
    :cond_14
    new-instance v1, Landroid/content/IContentService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/IContentService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 287
    packed-switch p0, :pswitch_data_9c

    .line 455
    const/4 v0, 0x0

    return-object v0

    .line 451
    :pswitch_5
    const-string/jumbo v0, "onDbCorruption"

    return-object v0

    .line 447
    :pswitch_9
    const-string/jumbo v0, "resetTodayStats"

    return-object v0

    .line 443
    :pswitch_d
    const-string v0, "getCache"

    return-object v0

    .line 439
    :pswitch_10
    const-string/jumbo v0, "putCache"

    return-object v0

    .line 435
    :pswitch_14
    const-string/jumbo v0, "removeStatusChangeListener"

    return-object v0

    .line 431
    :pswitch_18
    const-string v0, "addStatusChangeListener"

    return-object v0

    .line 427
    :pswitch_1b
    const-string/jumbo v0, "isSyncPendingAsUser"

    return-object v0

    .line 423
    :pswitch_1f
    const-string/jumbo v0, "isSyncPending"

    return-object v0

    .line 419
    :pswitch_23
    const-string/jumbo v0, "getSyncStatusAsUser"

    return-object v0

    .line 415
    :pswitch_27
    const-string/jumbo v0, "getSyncStatus"

    return-object v0

    .line 411
    :pswitch_2b
    const-string/jumbo v0, "isSyncActive"

    return-object v0

    .line 407
    :pswitch_2f
    const-string/jumbo v0, "getSyncAdapterPackageAsUser"

    return-object v0

    .line 403
    :pswitch_33
    const-string/jumbo v0, "getSyncAdapterPackagesForAuthorityAsUser"

    return-object v0

    .line 399
    :pswitch_37
    const-string/jumbo v0, "getSyncAdapterTypesAsUser"

    return-object v0

    .line 395
    :pswitch_3b
    const-string/jumbo v0, "getSyncAdapterTypes"

    return-object v0

    .line 391
    :pswitch_3f
    const-string v0, "getCurrentSyncsAsUser"

    return-object v0

    .line 387
    :pswitch_42
    const-string v0, "getCurrentSyncs"

    return-object v0

    .line 383
    :pswitch_45
    const-string v0, "getMasterSyncAutomaticallyAsUser"

    return-object v0

    .line 379
    :pswitch_48
    const-string v0, "getMasterSyncAutomatically"

    return-object v0

    .line 375
    :pswitch_4b
    const-string/jumbo v0, "setMasterSyncAutomaticallyAsUser"

    return-object v0

    .line 371
    :pswitch_4f
    const-string/jumbo v0, "setMasterSyncAutomatically"

    return-object v0

    .line 367
    :pswitch_53
    const-string/jumbo v0, "setIsSyncableAsUser"

    return-object v0

    .line 363
    :pswitch_57
    const-string/jumbo v0, "setIsSyncable"

    return-object v0

    .line 359
    :pswitch_5b
    const-string v0, "getIsSyncableAsUser"

    return-object v0

    .line 355
    :pswitch_5e
    const-string v0, "getIsSyncable"

    return-object v0

    .line 351
    :pswitch_61
    const-string/jumbo v0, "removePeriodicSync"

    return-object v0

    .line 347
    :pswitch_65
    const-string v0, "addPeriodicSync"

    return-object v0

    .line 343
    :pswitch_68
    const-string v0, "getPeriodicSyncs"

    return-object v0

    .line 339
    :pswitch_6b
    const-string/jumbo v0, "setSyncAutomaticallyAsUser"

    return-object v0

    .line 335
    :pswitch_6f
    const-string/jumbo v0, "setSyncAutomatically"

    return-object v0

    .line 331
    :pswitch_73
    const-string/jumbo v0, "getSyncAutomaticallyAsUser"

    return-object v0

    .line 327
    :pswitch_77
    const-string/jumbo v0, "getSyncAutomatically"

    return-object v0

    .line 323
    :pswitch_7b
    const-string v0, "cancelRequest"

    return-object v0

    .line 319
    :pswitch_7e
    const-string v0, "cancelSyncAsUser"

    return-object v0

    .line 315
    :pswitch_81
    const-string v0, "cancelSync"

    return-object v0

    .line 311
    :pswitch_84
    const-string/jumbo v0, "syncAsUser"

    return-object v0

    .line 307
    :pswitch_88
    const-string/jumbo v0, "sync"

    return-object v0

    .line 303
    :pswitch_8c
    const-string/jumbo v0, "requestSync"

    return-object v0

    .line 299
    :pswitch_90
    const-string/jumbo v0, "notifyChange"

    return-object v0

    .line 295
    :pswitch_94
    const-string/jumbo v0, "registerContentObserver"

    return-object v0

    .line 291
    :pswitch_98
    const-string/jumbo v0, "unregisterContentObserver"

    return-object v0

    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_98
        :pswitch_94
        :pswitch_90
        :pswitch_8c
        :pswitch_88
        :pswitch_84
        :pswitch_81
        :pswitch_7e
        :pswitch_7b
        :pswitch_77
        :pswitch_73
        :pswitch_6f
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_61
        :pswitch_5e
        :pswitch_5b
        :pswitch_57
        :pswitch_53
        :pswitch_4f
        :pswitch_4b
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3b
        :pswitch_37
        :pswitch_33
        :pswitch_2f
        :pswitch_2b
        :pswitch_27
        :pswitch_23
        :pswitch_1f
        :pswitch_1b
        :pswitch_18
        :pswitch_14
        :pswitch_10
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 282
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1884
    const/16 v0, 0x28

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 462
    invoke-static {p1}, Landroid/content/IContentService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist isSyncActive_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1865
    iget-object v0, p0, Landroid/content/IContentService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/content/IContentService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/content/IContentService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.READ_SYNC_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1866
    return-void
.end method

.method protected blacklist isSyncPendingAsUser_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1873
    iget-object v0, p0, Landroid/content/IContentService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/content/IContentService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/content/IContentService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.READ_SYNC_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1874
    return-void
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

    .line 466
    move-object v8, p3

    const-string v9, "android.content.IContentService"

    .line 467
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt p1, v10, :cond_e

    const v1, 0xffffff

    if-gt p1, v1, :cond_e

    .line 468
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 470
    :cond_e
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_17

    .line 471
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 472
    return v10

    .line 474
    :cond_17
    packed-switch p1, :pswitch_data_474

    .line 990
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 978
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 980
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 982
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 983
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 984
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/IContentService$Stub;->onDbCorruption(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 986
    goto/16 :goto_472

    .line 971
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_36
    invoke-virtual {p0}, Landroid/content/IContentService$Stub;->resetTodayStats()V

    .line 972
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 973
    goto/16 :goto_472

    .line 958
    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 960
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 962
    .local v2, "_arg1":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 963
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 964
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/IContentService$Stub;->getCache(Ljava/lang/String;Landroid/net/Uri;I)Landroid/os/Bundle;

    move-result-object v4

    .line 965
    .local v4, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 966
    invoke-virtual {p3, v4, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 967
    goto/16 :goto_472

    .line 943
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/net/Uri;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Landroid/os/Bundle;
    :pswitch_5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 945
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 947
    .restart local v2    # "_arg1":Landroid/net/Uri;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 949
    .local v3, "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 950
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 951
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/IContentService$Stub;->putCache(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;I)V

    .line 952
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 953
    goto/16 :goto_472

    .line 934
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/net/Uri;
    .end local v3    # "_arg2":Landroid/os/Bundle;
    .end local v4    # "_arg3":I
    :pswitch_80
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ISyncStatusObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISyncStatusObserver;

    move-result-object v1

    .line 935
    .local v1, "_arg0":Landroid/content/ISyncStatusObserver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 936
    invoke-virtual {p0, v1}, Landroid/content/IContentService$Stub;->removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V

    .line 937
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 938
    goto/16 :goto_472

    .line 923
    .end local v1    # "_arg0":Landroid/content/ISyncStatusObserver;
    :pswitch_93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 925
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ISyncStatusObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISyncStatusObserver;

    move-result-object v2

    .line 926
    .local v2, "_arg1":Landroid/content/ISyncStatusObserver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 927
    invoke-virtual {p0, v1, v2}, Landroid/content/IContentService$Stub;->addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V

    .line 928
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 929
    goto/16 :goto_472

    .line 907
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/content/ISyncStatusObserver;
    :pswitch_aa
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 909
    .local v1, "_arg0":Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 911
    .local v2, "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 913
    .local v3, "_arg2":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 914
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 915
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/IContentService$Stub;->isSyncPendingAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Z

    move-result v5

    .line 916
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 917
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 918
    goto/16 :goto_472

    .line 893
    .end local v1    # "_arg0":Landroid/accounts/Account;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/content/ComponentName;
    .end local v4    # "_arg3":I
    .end local v5    # "_result":Z
    :pswitch_d1
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 895
    .restart local v1    # "_arg0":Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 897
    .restart local v2    # "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 898
    .restart local v3    # "_arg2":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 899
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/IContentService$Stub;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result v4

    .line 900
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 901
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 902
    goto/16 :goto_472

    .line 877
    .end local v1    # "_arg0":Landroid/accounts/Account;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/content/ComponentName;
    .end local v4    # "_result":Z
    :pswitch_f4
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 879
    .restart local v1    # "_arg0":Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 881
    .restart local v2    # "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 883
    .restart local v3    # "_arg2":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 884
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 885
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/IContentService$Stub;->getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Landroid/content/SyncStatusInfo;

    move-result-object v5

    .line 886
    .local v5, "_result":Landroid/content/SyncStatusInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 887
    invoke-virtual {p3, v5, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 888
    goto/16 :goto_472

    .line 863
    .end local v1    # "_arg0":Landroid/accounts/Account;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/content/ComponentName;
    .end local v4    # "_arg3":I
    .end local v5    # "_result":Landroid/content/SyncStatusInfo;
    :pswitch_11b
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 865
    .restart local v1    # "_arg0":Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 867
    .restart local v2    # "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 868
    .restart local v3    # "_arg2":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 869
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/IContentService$Stub;->getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Landroid/content/SyncStatusInfo;

    move-result-object v4

    .line 870
    .local v4, "_result":Landroid/content/SyncStatusInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 871
    invoke-virtual {p3, v4, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 872
    goto/16 :goto_472

    .line 849
    .end local v1    # "_arg0":Landroid/accounts/Account;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/content/ComponentName;
    .end local v4    # "_result":Landroid/content/SyncStatusInfo;
    :pswitch_13e
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 851
    .restart local v1    # "_arg0":Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 853
    .restart local v2    # "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 854
    .restart local v3    # "_arg2":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 855
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/IContentService$Stub;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result v4

    .line 856
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 857
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 858
    goto/16 :goto_472

    .line 835
    .end local v1    # "_arg0":Landroid/accounts/Account;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/content/ComponentName;
    .end local v4    # "_result":Z
    :pswitch_161
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 837
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 839
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 840
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 841
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/IContentService$Stub;->getSyncAdapterPackageAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 842
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 843
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 844
    goto/16 :goto_472

    .line 823
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_17c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 825
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 826
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 827
    invoke-virtual {p0, v1, v2}, Landroid/content/IContentService$Stub;->getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 828
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 829
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 830
    goto/16 :goto_472

    .line 813
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":[Ljava/lang/String;
    :pswitch_193
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 814
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 815
    invoke-virtual {p0, v1}, Landroid/content/IContentService$Stub;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v2

    .line 816
    .local v2, "_result":[Landroid/content/SyncAdapterType;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 817
    invoke-virtual {p3, v2, v10}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 818
    goto/16 :goto_472

    .line 805
    .end local v1    # "_arg0":I
    .end local v2    # "_result":[Landroid/content/SyncAdapterType;
    :pswitch_1a6
    invoke-virtual {p0}, Landroid/content/IContentService$Stub;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v1

    .line 806
    .local v1, "_result":[Landroid/content/SyncAdapterType;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 807
    invoke-virtual {p3, v1, v10}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 808
    goto/16 :goto_472

    .line 796
    .end local v1    # "_result":[Landroid/content/SyncAdapterType;
    :pswitch_1b2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 797
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 798
    invoke-virtual {p0, v1}, Landroid/content/IContentService$Stub;->getCurrentSyncsAsUser(I)Ljava/util/List;

    move-result-object v2

    .line 799
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 800
    invoke-virtual {p3, v2, v10}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 801
    goto/16 :goto_472

    .line 788
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    :pswitch_1c5
    invoke-virtual {p0}, Landroid/content/IContentService$Stub;->getCurrentSyncs()Ljava/util/List;

    move-result-object v1

    .line 789
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 790
    invoke-virtual {p3, v1, v10}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 791
    goto/16 :goto_472

    .line 779
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    :pswitch_1d1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 780
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 781
    invoke-virtual {p0, v1}, Landroid/content/IContentService$Stub;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v2

    .line 782
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 783
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 784
    goto/16 :goto_472

    .line 771
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_1e4
    invoke-virtual {p0}, Landroid/content/IContentService$Stub;->getMasterSyncAutomatically()Z

    move-result v1

    .line 772
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 773
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 774
    goto/16 :goto_472

    .line 761
    .end local v1    # "_result":Z
    :pswitch_1f0
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 763
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 764
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 765
    invoke-virtual {p0, v1, v2}, Landroid/content/IContentService$Stub;->setMasterSyncAutomaticallyAsUser(ZI)V

    .line 766
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 767
    goto/16 :goto_472

    .line 752
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":I
    :pswitch_203
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 753
    .restart local v1    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 754
    invoke-virtual {p0, v1}, Landroid/content/IContentService$Stub;->setMasterSyncAutomatically(Z)V

    .line 755
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 756
    goto/16 :goto_472

    .line 737
    .end local v1    # "_arg0":Z
    :pswitch_212
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 739
    .local v1, "_arg0":Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 741
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 743
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 744
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 745
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/IContentService$Stub;->setIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;II)V

    .line 746
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 747
    goto/16 :goto_472

    .line 724
    .end local v1    # "_arg0":Landroid/accounts/Account;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :pswitch_231
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 726
    .restart local v1    # "_arg0":Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 728
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 729
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 730
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/IContentService$Stub;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 731
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 732
    goto/16 :goto_472

    .line 710
    .end local v1    # "_arg0":Landroid/accounts/Account;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    :pswitch_24c
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 712
    .restart local v1    # "_arg0":Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 714
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 715
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 716
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/IContentService$Stub;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result v4

    .line 717
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 718
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 719
    goto/16 :goto_472

    .line 698
    .end local v1    # "_arg0":Landroid/accounts/Account;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":I
    :pswitch_26b
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 700
    .restart local v1    # "_arg0":Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 701
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 702
    invoke-virtual {p0, v1, v2}, Landroid/content/IContentService$Stub;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v3

    .line 703
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 704
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 705
    goto/16 :goto_472

    .line 685
    .end local v1    # "_arg0":Landroid/accounts/Account;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_286
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 687
    .restart local v1    # "_arg0":Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 689
    .restart local v2    # "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 690
    .local v3, "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 691
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/IContentService$Stub;->removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 692
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 693
    goto/16 :goto_472

    .line 670
    .end local v1    # "_arg0":Landroid/accounts/Account;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/Bundle;
    :pswitch_2a5
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 672
    .restart local v1    # "_arg0":Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 674
    .restart local v2    # "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 676
    .restart local v3    # "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 677
    .local v4, "_arg3":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 678
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/IContentService$Stub;->addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V

    .line 679
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 680
    goto/16 :goto_472

    .line 656
    .end local v1    # "_arg0":Landroid/accounts/Account;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/Bundle;
    .end local v4    # "_arg3":J
    :pswitch_2c9
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 658
    .restart local v1    # "_arg0":Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 660
    .restart local v2    # "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 661
    .local v3, "_arg2":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 662
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/IContentService$Stub;->getPeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v4

    .line 663
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/PeriodicSync;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 664
    invoke-virtual {p3, v4, v10}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 665
    goto/16 :goto_472

    .line 641
    .end local v1    # "_arg0":Landroid/accounts/Account;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/content/ComponentName;
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/PeriodicSync;>;"
    :pswitch_2ec
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 643
    .restart local v1    # "_arg0":Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 645
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 647
    .local v3, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 648
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 649
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/IContentService$Stub;->setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    .line 650
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 651
    goto/16 :goto_472

    .line 628
    .end local v1    # "_arg0":Landroid/accounts/Account;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":I
    :pswitch_30b
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 630
    .restart local v1    # "_arg0":Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 632
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 633
    .restart local v3    # "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 634
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/IContentService$Stub;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 635
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 636
    goto/16 :goto_472

    .line 614
    .end local v1    # "_arg0":Landroid/accounts/Account;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Z
    :pswitch_326
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 616
    .restart local v1    # "_arg0":Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 618
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 619
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 620
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/IContentService$Stub;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v4

    .line 621
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 622
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 623
    goto/16 :goto_472

    .line 602
    .end local v1    # "_arg0":Landroid/accounts/Account;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Z
    :pswitch_345
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 604
    .restart local v1    # "_arg0":Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 605
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 606
    invoke-virtual {p0, v1, v2}, Landroid/content/IContentService$Stub;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    .line 607
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 608
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 609
    goto/16 :goto_472

    .line 593
    .end local v1    # "_arg0":Landroid/accounts/Account;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_360
    sget-object v1, Landroid/content/SyncRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncRequest;

    .line 594
    .local v1, "_arg0":Landroid/content/SyncRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 595
    invoke-virtual {p0, v1}, Landroid/content/IContentService$Stub;->cancelRequest(Landroid/content/SyncRequest;)V

    .line 596
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 597
    goto/16 :goto_472

    .line 578
    .end local v1    # "_arg0":Landroid/content/SyncRequest;
    :pswitch_373
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 580
    .local v1, "_arg0":Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 582
    .restart local v2    # "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 584
    .local v3, "_arg2":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 585
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 586
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/IContentService$Stub;->cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)V

    .line 587
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 588
    goto/16 :goto_472

    .line 565
    .end local v1    # "_arg0":Landroid/accounts/Account;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/content/ComponentName;
    .end local v4    # "_arg3":I
    :pswitch_396
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 567
    .restart local v1    # "_arg0":Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 569
    .restart local v2    # "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 570
    .restart local v3    # "_arg2":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 571
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/IContentService$Stub;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)V

    .line 572
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 573
    goto/16 :goto_472

    .line 552
    .end local v1    # "_arg0":Landroid/accounts/Account;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/content/ComponentName;
    :pswitch_3b5
    sget-object v1, Landroid/content/SyncRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncRequest;

    .line 554
    .local v1, "_arg0":Landroid/content/SyncRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 556
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 557
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 558
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/IContentService$Stub;->syncAsUser(Landroid/content/SyncRequest;ILjava/lang/String;)V

    .line 559
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 560
    goto/16 :goto_472

    .line 541
    .end local v1    # "_arg0":Landroid/content/SyncRequest;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_3d0
    sget-object v1, Landroid/content/SyncRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncRequest;

    .line 543
    .restart local v1    # "_arg0":Landroid/content/SyncRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 544
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 545
    invoke-virtual {p0, v1, v2}, Landroid/content/IContentService$Stub;->sync(Landroid/content/SyncRequest;Ljava/lang/String;)V

    .line 546
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 547
    goto/16 :goto_472

    .line 526
    .end local v1    # "_arg0":Landroid/content/SyncRequest;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_3e7
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 528
    .local v1, "_arg0":Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 530
    .restart local v2    # "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 532
    .local v3, "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 533
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 534
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/IContentService$Stub;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 535
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    goto :goto_472

    .line 505
    .end local v1    # "_arg0":Landroid/accounts/Account;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/Bundle;
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_409
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/Uri;

    .line 507
    .local v1, "_arg0":[Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/database/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;

    move-result-object v2

    .line 509
    .local v2, "_arg1":Landroid/database/IContentObserver;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 511
    .local v3, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 513
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 515
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 517
    .local v6, "_arg5":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 518
    .local v7, "_arg6":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 519
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/content/IContentService$Stub;->notifyChange([Landroid/net/Uri;Landroid/database/IContentObserver;ZIIILjava/lang/String;)V

    .line 520
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 521
    goto :goto_472

    .line 488
    .end local v1    # "_arg0":[Landroid/net/Uri;
    .end local v2    # "_arg1":Landroid/database/IContentObserver;
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Ljava/lang/String;
    :pswitch_438
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/net/Uri;

    .line 490
    .local v1, "_arg0":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 492
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/database/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;

    move-result-object v3

    .line 494
    .local v3, "_arg2":Landroid/database/IContentObserver;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 496
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 497
    .restart local v5    # "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 498
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/IContentService$Stub;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;II)V

    .line 499
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 500
    goto :goto_472

    .line 479
    .end local v1    # "_arg0":Landroid/net/Uri;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Landroid/database/IContentObserver;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    :pswitch_460
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/database/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;

    move-result-object v1

    .line 480
    .local v1, "_arg0":Landroid/database/IContentObserver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 481
    invoke-virtual {p0, v1}, Landroid/content/IContentService$Stub;->unregisterContentObserver(Landroid/database/IContentObserver;)V

    .line 482
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 483
    nop

    .line 993
    .end local v1    # "_arg0":Landroid/database/IContentObserver;
    :goto_472
    return v10

    nop

    :pswitch_data_474
    .packed-switch 0x1
        :pswitch_460
        :pswitch_438
        :pswitch_409
        :pswitch_3e7
        :pswitch_3d0
        :pswitch_3b5
        :pswitch_396
        :pswitch_373
        :pswitch_360
        :pswitch_345
        :pswitch_326
        :pswitch_30b
        :pswitch_2ec
        :pswitch_2c9
        :pswitch_2a5
        :pswitch_286
        :pswitch_26b
        :pswitch_24c
        :pswitch_231
        :pswitch_212
        :pswitch_203
        :pswitch_1f0
        :pswitch_1e4
        :pswitch_1d1
        :pswitch_1c5
        :pswitch_1b2
        :pswitch_1a6
        :pswitch_193
        :pswitch_17c
        :pswitch_161
        :pswitch_13e
        :pswitch_11b
        :pswitch_f4
        :pswitch_d1
        :pswitch_aa
        :pswitch_93
        :pswitch_80
        :pswitch_5d
        :pswitch_3e
        :pswitch_36
        :pswitch_1f
    .end packed-switch
.end method
