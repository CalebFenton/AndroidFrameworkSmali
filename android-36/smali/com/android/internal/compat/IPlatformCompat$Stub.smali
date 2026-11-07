.class public abstract Lcom/android/internal/compat/IPlatformCompat$Stub;
.super Landroid/os/Binder;
.source "IPlatformCompat.java"

# interfaces
.implements Lcom/android/internal/compat/IPlatformCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/compat/IPlatformCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/compat/IPlatformCompat$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist PERMISSIONS_getAppConfig:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_isChangeEnabled:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_isChangeEnabledByPackageName:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_isChangeEnabledByUid:[Ljava/lang/String;

.field static final blacklist TRANSACTION_clearOverride:I = 0xb

.field static final blacklist TRANSACTION_clearOverrideForTest:I = 0xc

.field static final blacklist TRANSACTION_clearOverrides:I = 0x11

.field static final blacklist TRANSACTION_clearOverridesForTest:I = 0x12

.field static final blacklist TRANSACTION_disableTargetSdkChanges:I = 0x10

.field static final blacklist TRANSACTION_enableTargetSdkChanges:I = 0xf

.field static final blacklist TRANSACTION_getAppConfig:I = 0x13

.field static final blacklist TRANSACTION_getOverrideValidator:I = 0x16

.field static final blacklist TRANSACTION_isChangeEnabled:I = 0x4

.field static final blacklist TRANSACTION_isChangeEnabledByPackageName:I = 0x5

.field static final blacklist TRANSACTION_isChangeEnabledByUid:I = 0x6

.field static final blacklist TRANSACTION_listAllChanges:I = 0x14

.field static final blacklist TRANSACTION_listUIChanges:I = 0x15

.field static final blacklist TRANSACTION_putAllOverridesOnReleaseBuilds:I = 0x8

.field static final blacklist TRANSACTION_putOverridesOnReleaseBuilds:I = 0x9

.field static final blacklist TRANSACTION_removeAllOverridesOnReleaseBuilds:I = 0xd

.field static final blacklist TRANSACTION_removeOverridesOnReleaseBuilds:I = 0xe

.field static final blacklist TRANSACTION_reportChange:I = 0x1

.field static final blacklist TRANSACTION_reportChangeByPackageName:I = 0x2

.field static final blacklist TRANSACTION_reportChangeByUid:I = 0x3

.field static final blacklist TRANSACTION_setOverrides:I = 0x7

.field static final blacklist TRANSACTION_setOverridesForTest:I = 0xa


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 1431
    const-string v0, "android.permission.LOG_COMPAT_CHANGE"

    const-string v1, "android.permission.READ_COMPAT_CHANGE_CONFIG"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/compat/IPlatformCompat$Stub;->PERMISSIONS_isChangeEnabled:[Ljava/lang/String;

    .line 1437
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/compat/IPlatformCompat$Stub;->PERMISSIONS_isChangeEnabledByPackageName:[Ljava/lang/String;

    .line 1443
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/compat/IPlatformCompat$Stub;->PERMISSIONS_isChangeEnabledByUid:[Ljava/lang/String;

    .line 1509
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/compat/IPlatformCompat$Stub;->PERMISSIONS_getAppConfig:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 384
    nop

    .line 385
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 384
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/compat/IPlatformCompat$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 386
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 374
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 375
    const-string v0, "com.android.internal.compat.IPlatformCompat"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 376
    if-eqz p1, :cond_d

    .line 379
    iput-object p1, p0, Lcom/android/internal/compat/IPlatformCompat$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 380
    return-void

    .line 377
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 393
    if-nez p0, :cond_4

    .line 394
    const/4 v0, 0x0

    return-object v0

    .line 396
    :cond_4
    const-string v0, "com.android.internal.compat.IPlatformCompat"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 397
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/compat/IPlatformCompat;

    if-eqz v1, :cond_14

    .line 398
    move-object v1, v0

    check-cast v1, Lcom/android/internal/compat/IPlatformCompat;

    return-object v1

    .line 400
    :cond_14
    new-instance v1, Lcom/android/internal/compat/IPlatformCompat$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/compat/IPlatformCompat$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 409
    packed-switch p0, :pswitch_data_50

    .line 501
    const/4 v0, 0x0

    return-object v0

    .line 497
    :pswitch_5
    const-string v0, "getOverrideValidator"

    return-object v0

    .line 493
    :pswitch_8
    const-string v0, "listUIChanges"

    return-object v0

    .line 489
    :pswitch_b
    const-string v0, "listAllChanges"

    return-object v0

    .line 485
    :pswitch_e
    const-string v0, "getAppConfig"

    return-object v0

    .line 481
    :pswitch_11
    const-string v0, "clearOverridesForTest"

    return-object v0

    .line 477
    :pswitch_14
    const-string v0, "clearOverrides"

    return-object v0

    .line 473
    :pswitch_17
    const-string v0, "disableTargetSdkChanges"

    return-object v0

    .line 469
    :pswitch_1a
    const-string v0, "enableTargetSdkChanges"

    return-object v0

    .line 465
    :pswitch_1d
    const-string/jumbo v0, "removeOverridesOnReleaseBuilds"

    return-object v0

    .line 461
    :pswitch_21
    const-string/jumbo v0, "removeAllOverridesOnReleaseBuilds"

    return-object v0

    .line 457
    :pswitch_25
    const-string v0, "clearOverrideForTest"

    return-object v0

    .line 453
    :pswitch_28
    const-string v0, "clearOverride"

    return-object v0

    .line 449
    :pswitch_2b
    const-string/jumbo v0, "setOverridesForTest"

    return-object v0

    .line 445
    :pswitch_2f
    const-string/jumbo v0, "putOverridesOnReleaseBuilds"

    return-object v0

    .line 441
    :pswitch_33
    const-string/jumbo v0, "putAllOverridesOnReleaseBuilds"

    return-object v0

    .line 437
    :pswitch_37
    const-string/jumbo v0, "setOverrides"

    return-object v0

    .line 433
    :pswitch_3b
    const-string v0, "isChangeEnabledByUid"

    return-object v0

    .line 429
    :pswitch_3e
    const-string v0, "isChangeEnabledByPackageName"

    return-object v0

    .line 425
    :pswitch_41
    const-string v0, "isChangeEnabled"

    return-object v0

    .line 421
    :pswitch_44
    const-string/jumbo v0, "reportChangeByUid"

    return-object v0

    .line 417
    :pswitch_48
    const-string/jumbo v0, "reportChangeByPackageName"

    return-object v0

    .line 413
    :pswitch_4c
    const-string/jumbo v0, "reportChange"

    return-object v0

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_48
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_37
        :pswitch_33
        :pswitch_2f
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_21
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

    .line 404
    return-object p0
.end method

.method protected blacklist clearOverrideForTest_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1476
    iget-object v0, p0, Lcom/android/internal/compat/IPlatformCompat$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.OVERRIDE_COMPAT_CHANGE_CONFIG"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1477
    return-void
.end method

.method protected blacklist clearOverride_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1471
    iget-object v0, p0, Lcom/android/internal/compat/IPlatformCompat$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.OVERRIDE_COMPAT_CHANGE_CONFIG"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1472
    return-void
.end method

.method protected blacklist clearOverridesForTest_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1506
    iget-object v0, p0, Lcom/android/internal/compat/IPlatformCompat$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.OVERRIDE_COMPAT_CHANGE_CONFIG"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1507
    return-void
.end method

.method protected blacklist clearOverrides_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1501
    iget-object v0, p0, Lcom/android/internal/compat/IPlatformCompat$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.OVERRIDE_COMPAT_CHANGE_CONFIG"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1502
    return-void
.end method

.method protected blacklist disableTargetSdkChanges_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1496
    iget-object v0, p0, Lcom/android/internal/compat/IPlatformCompat$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.OVERRIDE_COMPAT_CHANGE_CONFIG"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1497
    return-void
.end method

.method protected blacklist enableTargetSdkChanges_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1491
    iget-object v0, p0, Lcom/android/internal/compat/IPlatformCompat$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.OVERRIDE_COMPAT_CHANGE_CONFIG"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1492
    return-void
.end method

.method protected blacklist getAppConfig_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1512
    iget-object v0, p0, Lcom/android/internal/compat/IPlatformCompat$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Lcom/android/internal/compat/IPlatformCompat$Stub;->PERMISSIONS_getAppConfig:[Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAllOf([Ljava/lang/String;II)V

    .line 1513
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1524
    const/16 v0, 0x15

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 508
    invoke-static {p1}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist isChangeEnabledByPackageName_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1440
    iget-object v0, p0, Lcom/android/internal/compat/IPlatformCompat$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Lcom/android/internal/compat/IPlatformCompat$Stub;->PERMISSIONS_isChangeEnabledByPackageName:[Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAllOf([Ljava/lang/String;II)V

    .line 1441
    return-void
.end method

.method protected blacklist isChangeEnabledByUid_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1446
    iget-object v0, p0, Lcom/android/internal/compat/IPlatformCompat$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Lcom/android/internal/compat/IPlatformCompat$Stub;->PERMISSIONS_isChangeEnabledByUid:[Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAllOf([Ljava/lang/String;II)V

    .line 1447
    return-void
.end method

.method protected blacklist isChangeEnabled_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1434
    iget-object v0, p0, Lcom/android/internal/compat/IPlatformCompat$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Lcom/android/internal/compat/IPlatformCompat$Stub;->PERMISSIONS_isChangeEnabled:[Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAllOf([Ljava/lang/String;II)V

    .line 1435
    return-void
.end method

.method protected blacklist listAllChanges_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1517
    iget-object v0, p0, Lcom/android/internal/compat/IPlatformCompat$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.READ_COMPAT_CHANGE_CONFIG"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1518
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 512
    const-string v0, "com.android.internal.compat.IPlatformCompat"

    .line 513
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 514
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 517
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 518
    return v1

    .line 520
    :cond_16
    packed-switch p1, :pswitch_data_1de

    .line 756
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 749
    :pswitch_1e
    invoke-virtual {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getOverrideValidator()Lcom/android/internal/compat/IOverrideValidator;

    move-result-object v2

    .line 750
    .local v2, "_result":Lcom/android/internal/compat/IOverrideValidator;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 751
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 752
    goto/16 :goto_1dd

    .line 742
    .end local v2    # "_result":Lcom/android/internal/compat/IOverrideValidator;
    :pswitch_2a
    invoke-virtual {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->listUIChanges()[Lcom/android/internal/compat/CompatibilityChangeInfo;

    move-result-object v2

    .line 743
    .local v2, "_result":[Lcom/android/internal/compat/CompatibilityChangeInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 744
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 745
    goto/16 :goto_1dd

    .line 735
    .end local v2    # "_result":[Lcom/android/internal/compat/CompatibilityChangeInfo;
    :pswitch_36
    invoke-virtual {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->listAllChanges()[Lcom/android/internal/compat/CompatibilityChangeInfo;

    move-result-object v2

    .line 736
    .restart local v2    # "_result":[Lcom/android/internal/compat/CompatibilityChangeInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 737
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 738
    goto/16 :goto_1dd

    .line 726
    .end local v2    # "_result":[Lcom/android/internal/compat/CompatibilityChangeInfo;
    :pswitch_42
    sget-object v2, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 727
    .local v2, "_arg0":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 728
    invoke-virtual {p0, v2}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getAppConfig(Landroid/content/pm/ApplicationInfo;)Lcom/android/internal/compat/CompatibilityChangeConfig;

    move-result-object v3

    .line 729
    .local v3, "_result":Lcom/android/internal/compat/CompatibilityChangeConfig;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 730
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 731
    goto/16 :goto_1dd

    .line 717
    .end local v2    # "_arg0":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "_result":Lcom/android/internal/compat/CompatibilityChangeConfig;
    :pswitch_59
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 718
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 719
    invoke-virtual {p0, v2}, Lcom/android/internal/compat/IPlatformCompat$Stub;->clearOverridesForTest(Ljava/lang/String;)V

    .line 720
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    goto/16 :goto_1dd

    .line 708
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 709
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 710
    invoke-virtual {p0, v2}, Lcom/android/internal/compat/IPlatformCompat$Stub;->clearOverrides(Ljava/lang/String;)V

    .line 711
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 712
    goto/16 :goto_1dd

    .line 696
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_77
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 698
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 699
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 700
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/compat/IPlatformCompat$Stub;->disableTargetSdkChanges(Ljava/lang/String;I)I

    move-result v4

    .line 701
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 702
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 703
    goto/16 :goto_1dd

    .line 684
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_8e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 686
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 687
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 688
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/compat/IPlatformCompat$Stub;->enableTargetSdkChanges(Ljava/lang/String;I)I

    move-result v4

    .line 689
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 690
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 691
    goto/16 :goto_1dd

    .line 673
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_a5
    sget-object v2, Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;

    .line 675
    .local v2, "_arg0":Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 676
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 677
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/compat/IPlatformCompat$Stub;->removeOverridesOnReleaseBuilds(Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;Ljava/lang/String;)V

    .line 678
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 679
    goto/16 :goto_1dd

    .line 664
    .end local v2    # "_arg0":Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_bc
    sget-object v2, Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;

    .line 665
    .local v2, "_arg0":Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 666
    invoke-virtual {p0, v2}, Lcom/android/internal/compat/IPlatformCompat$Stub;->removeAllOverridesOnReleaseBuilds(Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;)V

    .line 667
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 668
    goto/16 :goto_1dd

    .line 652
    .end local v2    # "_arg0":Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;
    :pswitch_cf
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 654
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 655
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 656
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/compat/IPlatformCompat$Stub;->clearOverrideForTest(JLjava/lang/String;)Z

    move-result v5

    .line 657
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 658
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 659
    goto/16 :goto_1dd

    .line 640
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_e6
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 642
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 643
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 644
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/compat/IPlatformCompat$Stub;->clearOverride(JLjava/lang/String;)Z

    move-result v5

    .line 645
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 646
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 647
    goto/16 :goto_1dd

    .line 629
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_fd
    sget-object v2, Lcom/android/internal/compat/CompatibilityChangeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/compat/CompatibilityChangeConfig;

    .line 631
    .local v2, "_arg0":Lcom/android/internal/compat/CompatibilityChangeConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 632
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 633
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/compat/IPlatformCompat$Stub;->setOverridesForTest(Lcom/android/internal/compat/CompatibilityChangeConfig;Ljava/lang/String;)V

    .line 634
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 635
    goto/16 :goto_1dd

    .line 618
    .end local v2    # "_arg0":Lcom/android/internal/compat/CompatibilityChangeConfig;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_114
    sget-object v2, Lcom/android/internal/compat/CompatibilityOverrideConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/compat/CompatibilityOverrideConfig;

    .line 620
    .local v2, "_arg0":Lcom/android/internal/compat/CompatibilityOverrideConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 621
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 622
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/compat/IPlatformCompat$Stub;->putOverridesOnReleaseBuilds(Lcom/android/internal/compat/CompatibilityOverrideConfig;Ljava/lang/String;)V

    .line 623
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 624
    goto/16 :goto_1dd

    .line 609
    .end local v2    # "_arg0":Lcom/android/internal/compat/CompatibilityOverrideConfig;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_12b
    sget-object v2, Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;

    .line 610
    .local v2, "_arg0":Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 611
    invoke-virtual {p0, v2}, Lcom/android/internal/compat/IPlatformCompat$Stub;->putAllOverridesOnReleaseBuilds(Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;)V

    .line 612
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 613
    goto/16 :goto_1dd

    .line 598
    .end local v2    # "_arg0":Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;
    :pswitch_13e
    sget-object v2, Lcom/android/internal/compat/CompatibilityChangeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/compat/CompatibilityChangeConfig;

    .line 600
    .local v2, "_arg0":Lcom/android/internal/compat/CompatibilityChangeConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 601
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 602
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/compat/IPlatformCompat$Stub;->setOverrides(Lcom/android/internal/compat/CompatibilityChangeConfig;Ljava/lang/String;)V

    .line 603
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 604
    goto/16 :goto_1dd

    .line 586
    .end local v2    # "_arg0":Lcom/android/internal/compat/CompatibilityChangeConfig;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_155
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 588
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 589
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 590
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/compat/IPlatformCompat$Stub;->isChangeEnabledByUid(JI)Z

    move-result v5

    .line 591
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 592
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 593
    goto :goto_1dd

    .line 572
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":I
    .end local v5    # "_result":Z
    :pswitch_16b
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 574
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 576
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 577
    .local v5, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 578
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/compat/IPlatformCompat$Stub;->isChangeEnabledByPackageName(JLjava/lang/String;I)Z

    move-result v6

    .line 579
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 580
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 581
    goto :goto_1dd

    .line 560
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v6    # "_result":Z
    :pswitch_185
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 562
    .restart local v2    # "_arg0":J
    sget-object v4, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 563
    .local v4, "_arg1":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 564
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/compat/IPlatformCompat$Stub;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v5

    .line 565
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 566
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 567
    goto :goto_1dd

    .line 549
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "_result":Z
    :pswitch_19f
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 551
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 552
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 553
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/compat/IPlatformCompat$Stub;->reportChangeByUid(JI)V

    .line 554
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 555
    goto :goto_1dd

    .line 536
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":I
    :pswitch_1b1
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 538
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 540
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 541
    .local v5, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 542
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/compat/IPlatformCompat$Stub;->reportChangeByPackageName(JLjava/lang/String;I)V

    .line 543
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 544
    goto :goto_1dd

    .line 525
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    :pswitch_1c7
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 527
    .restart local v2    # "_arg0":J
    sget-object v4, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 528
    .local v4, "_arg1":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 529
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/compat/IPlatformCompat$Stub;->reportChange(JLandroid/content/pm/ApplicationInfo;)V

    .line 530
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    nop

    .line 759
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":Landroid/content/pm/ApplicationInfo;
    :goto_1dd
    return v1

    :pswitch_data_1de
    .packed-switch 0x1
        :pswitch_1c7
        :pswitch_1b1
        :pswitch_19f
        :pswitch_185
        :pswitch_16b
        :pswitch_155
        :pswitch_13e
        :pswitch_12b
        :pswitch_114
        :pswitch_fd
        :pswitch_e6
        :pswitch_cf
        :pswitch_bc
        :pswitch_a5
        :pswitch_8e
        :pswitch_77
        :pswitch_68
        :pswitch_59
        :pswitch_42
        :pswitch_36
        :pswitch_2a
        :pswitch_1e
    .end packed-switch
.end method

.method protected blacklist putAllOverridesOnReleaseBuilds_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1456
    iget-object v0, p0, Lcom/android/internal/compat/IPlatformCompat$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.OVERRIDE_COMPAT_CHANGE_CONFIG_ON_RELEASE_BUILD"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1457
    return-void
.end method

.method protected blacklist putOverridesOnReleaseBuilds_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1461
    iget-object v0, p0, Lcom/android/internal/compat/IPlatformCompat$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.OVERRIDE_COMPAT_CHANGE_CONFIG_ON_RELEASE_BUILD"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1462
    return-void
.end method

.method protected blacklist removeAllOverridesOnReleaseBuilds_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1481
    iget-object v0, p0, Lcom/android/internal/compat/IPlatformCompat$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.OVERRIDE_COMPAT_CHANGE_CONFIG_ON_RELEASE_BUILD"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1482
    return-void
.end method

.method protected blacklist removeOverridesOnReleaseBuilds_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1486
    iget-object v0, p0, Lcom/android/internal/compat/IPlatformCompat$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.OVERRIDE_COMPAT_CHANGE_CONFIG_ON_RELEASE_BUILD"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1487
    return-void
.end method

.method protected blacklist reportChangeByPackageName_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1423
    iget-object v0, p0, Lcom/android/internal/compat/IPlatformCompat$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.LOG_COMPAT_CHANGE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1424
    return-void
.end method

.method protected blacklist reportChangeByUid_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1428
    iget-object v0, p0, Lcom/android/internal/compat/IPlatformCompat$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.LOG_COMPAT_CHANGE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1429
    return-void
.end method

.method protected blacklist reportChange_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1418
    iget-object v0, p0, Lcom/android/internal/compat/IPlatformCompat$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.LOG_COMPAT_CHANGE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1419
    return-void
.end method

.method protected blacklist setOverridesForTest_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1466
    iget-object v0, p0, Lcom/android/internal/compat/IPlatformCompat$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.OVERRIDE_COMPAT_CHANGE_CONFIG"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1467
    return-void
.end method

.method protected blacklist setOverrides_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1451
    iget-object v0, p0, Lcom/android/internal/compat/IPlatformCompat$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.OVERRIDE_COMPAT_CHANGE_CONFIG"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1452
    return-void
.end method
