.class public abstract Landroid/hardware/usb/IUsbManager$Stub;
.super Landroid/os/Binder;
.source "IUsbManager.java"

# interfaces
.implements Landroid/hardware/usb/IUsbManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/IUsbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/usb/IUsbManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.hardware.usb.IUsbManager"

.field static final blacklist TRANSACTION_addAccessoryPackagesToPreferenceDenied:I = 0x8

.field static final blacklist TRANSACTION_addDevicePackagesToPreferenceDenied:I = 0x7

.field static final greylist-max-o TRANSACTION_clearDefaults:I = 0x16

.field static final blacklist TRANSACTION_enableContaminantDetection:I = 0x2b

.field static final blacklist TRANSACTION_enableLimitPowerTransfer:I = 0x2a

.field static final blacklist TRANSACTION_enableUsbData:I = 0x22

.field static final blacklist TRANSACTION_enableUsbDataWhileDocked:I = 0x23

.field static final greylist-max-o TRANSACTION_getControlFd:I = 0x25

.field static final greylist-max-o TRANSACTION_getCurrentAccessory:I = 0x3

.field static final greylist-max-o TRANSACTION_getCurrentFunctions:I = 0x1b

.field static final blacklist TRANSACTION_getCurrentUsbSpeed:I = 0x1c

.field static final greylist-max-o TRANSACTION_getDeviceList:I = 0x1

.field static final blacklist TRANSACTION_getGadgetHalVersion:I = 0x1d

.field static final greylist-max-o TRANSACTION_getPortStatus:I = 0x27

.field static final greylist-max-o TRANSACTION_getPorts:I = 0x26

.field static final greylist-max-o TRANSACTION_getScreenUnlockedFunctions:I = 0x1f

.field static final blacklist TRANSACTION_getUsbHalVersion:I = 0x24

.field static final greylist-max-o TRANSACTION_grantAccessoryPermission:I = 0x14

.field static final greylist-max-o TRANSACTION_grantDevicePermission:I = 0x13

.field static final greylist-max-o TRANSACTION_hasAccessoryPermission:I = 0xf

.field static final blacklist TRANSACTION_hasAccessoryPermissionWithIdentity:I = 0x10

.field static final greylist-max-o TRANSACTION_hasDefaults:I = 0x15

.field static final greylist-max-o TRANSACTION_hasDevicePermission:I = 0xd

.field static final blacklist TRANSACTION_hasDevicePermissionWithIdentity:I = 0xe

.field static final greylist-max-o TRANSACTION_isFunctionEnabled:I = 0x17

.field static final blacklist TRANSACTION_isModeChangeSupported:I = 0x28

.field static final blacklist TRANSACTION_isUvcGadgetSupportEnabled:I = 0x18

.field static final greylist-max-o TRANSACTION_openAccessory:I = 0x4

.field static final greylist-max-o TRANSACTION_openDevice:I = 0x2

.field static final blacklist TRANSACTION_registerForDisplayPortEvents:I = 0x2d

.field static final blacklist TRANSACTION_removeAccessoryPackagesFromPreferenceDenied:I = 0xa

.field static final blacklist TRANSACTION_removeDevicePackagesFromPreferenceDenied:I = 0x9

.field static final greylist-max-o TRANSACTION_requestAccessoryPermission:I = 0x12

.field static final greylist-max-o TRANSACTION_requestDevicePermission:I = 0x11

.field static final blacklist TRANSACTION_resetUsbGadget:I = 0x20

.field static final blacklist TRANSACTION_resetUsbPort:I = 0x21

.field static final greylist-max-o TRANSACTION_setAccessoryPackage:I = 0x6

.field static final blacklist TRANSACTION_setAccessoryPersistentPermission:I = 0xc

.field static final greylist-max-o TRANSACTION_setCurrentFunction:I = 0x1a

.field static final greylist-max-o TRANSACTION_setCurrentFunctions:I = 0x19

.field static final greylist-max-o TRANSACTION_setDevicePackage:I = 0x5

.field static final blacklist TRANSACTION_setDevicePersistentPermission:I = 0xb

.field static final greylist-max-o TRANSACTION_setPortRoles:I = 0x29

.field static final greylist-max-o TRANSACTION_setScreenUnlockedFunctions:I = 0x1e

.field static final greylist-max-o TRANSACTION_setUsbDeviceConnectionHandler:I = 0x2c

.field static final blacklist TRANSACTION_unregisterForDisplayPortEvents:I = 0x2e


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 272
    nop

    .line 273
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 272
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/usb/IUsbManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 274
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 262
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 263
    const-string v0, "android.hardware.usb.IUsbManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/usb/IUsbManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 264
    if-eqz p1, :cond_d

    .line 267
    iput-object p1, p0, Landroid/hardware/usb/IUsbManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 268
    return-void

    .line 265
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-r asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 281
    if-nez p0, :cond_4

    .line 282
    const/4 v0, 0x0

    return-object v0

    .line 284
    :cond_4
    const-string v0, "android.hardware.usb.IUsbManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 285
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/usb/IUsbManager;

    if-eqz v1, :cond_14

    .line 286
    move-object v1, v0

    check-cast v1, Landroid/hardware/usb/IUsbManager;

    return-object v1

    .line 288
    :cond_14
    new-instance v1, Landroid/hardware/usb/IUsbManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/usb/IUsbManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 297
    packed-switch p0, :pswitch_data_90

    .line 485
    const/4 v0, 0x0

    return-object v0

    .line 481
    :pswitch_5
    const-string v0, "unregisterForDisplayPortEvents"

    return-object v0

    .line 477
    :pswitch_8
    const-string v0, "registerForDisplayPortEvents"

    return-object v0

    .line 473
    :pswitch_b
    const-string v0, "setUsbDeviceConnectionHandler"

    return-object v0

    .line 469
    :pswitch_e
    const-string v0, "enableContaminantDetection"

    return-object v0

    .line 465
    :pswitch_11
    const-string v0, "enableLimitPowerTransfer"

    return-object v0

    .line 461
    :pswitch_14
    const-string v0, "setPortRoles"

    return-object v0

    .line 457
    :pswitch_17
    const-string v0, "isModeChangeSupported"

    return-object v0

    .line 453
    :pswitch_1a
    const-string v0, "getPortStatus"

    return-object v0

    .line 449
    :pswitch_1d
    const-string v0, "getPorts"

    return-object v0

    .line 445
    :pswitch_20
    const-string v0, "getControlFd"

    return-object v0

    .line 441
    :pswitch_23
    const-string v0, "getUsbHalVersion"

    return-object v0

    .line 437
    :pswitch_26
    const-string v0, "enableUsbDataWhileDocked"

    return-object v0

    .line 433
    :pswitch_29
    const-string v0, "enableUsbData"

    return-object v0

    .line 429
    :pswitch_2c
    const-string v0, "resetUsbPort"

    return-object v0

    .line 425
    :pswitch_2f
    const-string v0, "resetUsbGadget"

    return-object v0

    .line 421
    :pswitch_32
    const-string v0, "getScreenUnlockedFunctions"

    return-object v0

    .line 417
    :pswitch_35
    const-string v0, "setScreenUnlockedFunctions"

    return-object v0

    .line 413
    :pswitch_38
    const-string v0, "getGadgetHalVersion"

    return-object v0

    .line 409
    :pswitch_3b
    const-string v0, "getCurrentUsbSpeed"

    return-object v0

    .line 405
    :pswitch_3e
    const-string v0, "getCurrentFunctions"

    return-object v0

    .line 401
    :pswitch_41
    const-string v0, "setCurrentFunction"

    return-object v0

    .line 397
    :pswitch_44
    const-string v0, "setCurrentFunctions"

    return-object v0

    .line 393
    :pswitch_47
    const-string v0, "isUvcGadgetSupportEnabled"

    return-object v0

    .line 389
    :pswitch_4a
    const-string v0, "isFunctionEnabled"

    return-object v0

    .line 385
    :pswitch_4d
    const-string v0, "clearDefaults"

    return-object v0

    .line 381
    :pswitch_50
    const-string v0, "hasDefaults"

    return-object v0

    .line 377
    :pswitch_53
    const-string v0, "grantAccessoryPermission"

    return-object v0

    .line 373
    :pswitch_56
    const-string v0, "grantDevicePermission"

    return-object v0

    .line 369
    :pswitch_59
    const-string v0, "requestAccessoryPermission"

    return-object v0

    .line 365
    :pswitch_5c
    const-string v0, "requestDevicePermission"

    return-object v0

    .line 361
    :pswitch_5f
    const-string v0, "hasAccessoryPermissionWithIdentity"

    return-object v0

    .line 357
    :pswitch_62
    const-string v0, "hasAccessoryPermission"

    return-object v0

    .line 353
    :pswitch_65
    const-string v0, "hasDevicePermissionWithIdentity"

    return-object v0

    .line 349
    :pswitch_68
    const-string v0, "hasDevicePermission"

    return-object v0

    .line 345
    :pswitch_6b
    const-string v0, "setAccessoryPersistentPermission"

    return-object v0

    .line 341
    :pswitch_6e
    const-string v0, "setDevicePersistentPermission"

    return-object v0

    .line 337
    :pswitch_71
    const-string v0, "removeAccessoryPackagesFromPreferenceDenied"

    return-object v0

    .line 333
    :pswitch_74
    const-string v0, "removeDevicePackagesFromPreferenceDenied"

    return-object v0

    .line 329
    :pswitch_77
    const-string v0, "addAccessoryPackagesToPreferenceDenied"

    return-object v0

    .line 325
    :pswitch_7a
    const-string v0, "addDevicePackagesToPreferenceDenied"

    return-object v0

    .line 321
    :pswitch_7d
    const-string v0, "setAccessoryPackage"

    return-object v0

    .line 317
    :pswitch_80
    const-string v0, "setDevicePackage"

    return-object v0

    .line 313
    :pswitch_83
    const-string v0, "openAccessory"

    return-object v0

    .line 309
    :pswitch_86
    const-string v0, "getCurrentAccessory"

    return-object v0

    .line 305
    :pswitch_89
    const-string v0, "openDevice"

    return-object v0

    .line 301
    :pswitch_8c
    const-string v0, "getDeviceList"

    return-object v0

    nop

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_8c
        :pswitch_89
        :pswitch_86
        :pswitch_83
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
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

    .line 292
    return-object p0
.end method

.method protected blacklist getControlFd_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1996
    iget-object v0, p0, Landroid/hardware/usb/IUsbManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_MTP"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1997
    return-void
.end method

.method protected blacklist getCurrentFunctions_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1958
    iget-object v0, p0, Landroid/hardware/usb/IUsbManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_USB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1959
    return-void
.end method

.method protected blacklist getCurrentUsbSpeed_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1963
    iget-object v0, p0, Landroid/hardware/usb/IUsbManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_USB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1964
    return-void
.end method

.method protected blacklist getGadgetHalVersion_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1968
    iget-object v0, p0, Landroid/hardware/usb/IUsbManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_USB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1969
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2022
    const/16 v0, 0x2d

    return v0
.end method

.method protected blacklist getPorts_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2001
    iget-object v0, p0, Landroid/hardware/usb/IUsbManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_USB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2002
    return-void
.end method

.method protected blacklist getScreenUnlockedFunctions_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1978
    iget-object v0, p0, Landroid/hardware/usb/IUsbManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_USB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1979
    return-void
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 492
    invoke-static {p1}, Landroid/hardware/usb/IUsbManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getUsbHalVersion_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1991
    iget-object v0, p0, Landroid/hardware/usb/IUsbManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_USB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1992
    return-void
.end method

.method protected blacklist grantAccessoryPermission_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1943
    iget-object v0, p0, Landroid/hardware/usb/IUsbManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_USB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1944
    return-void
.end method

.method protected blacklist grantDevicePermission_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1938
    iget-object v0, p0, Landroid/hardware/usb/IUsbManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_USB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1939
    return-void
.end method

.method protected blacklist hasAccessoryPermissionWithIdentity_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1931
    iget-object v0, p0, Landroid/hardware/usb/IUsbManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_USB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1932
    return-void
.end method

.method protected blacklist hasDevicePermissionWithIdentity_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1925
    iget-object v0, p0, Landroid/hardware/usb/IUsbManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_USB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1926
    return-void
.end method

.method protected blacklist isModeChangeSupported_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2007
    iget-object v0, p0, Landroid/hardware/usb/IUsbManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_USB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2008
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

    .line 496
    const-string v0, "android.hardware.usb.IUsbManager"

    .line 497
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 498
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 500
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 501
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 502
    return v1

    .line 504
    :cond_16
    packed-switch p1, :pswitch_data_428

    .line 1015
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 1007
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/usb/IDisplayPortAltModeInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IDisplayPortAltModeInfoListener;

    move-result-object v2

    .line 1008
    .local v2, "_arg0":Landroid/hardware/usb/IDisplayPortAltModeInfoListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1009
    invoke-virtual {p0, v2}, Landroid/hardware/usb/IUsbManager$Stub;->unregisterForDisplayPortEvents(Landroid/hardware/usb/IDisplayPortAltModeInfoListener;)V

    .line 1010
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1011
    goto/16 :goto_427

    .line 997
    .end local v2    # "_arg0":Landroid/hardware/usb/IDisplayPortAltModeInfoListener;
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/usb/IDisplayPortAltModeInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IDisplayPortAltModeInfoListener;

    move-result-object v2

    .line 998
    .restart local v2    # "_arg0":Landroid/hardware/usb/IDisplayPortAltModeInfoListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 999
    invoke-virtual {p0, v2}, Landroid/hardware/usb/IUsbManager$Stub;->registerForDisplayPortEvents(Landroid/hardware/usb/IDisplayPortAltModeInfoListener;)Z

    move-result v3

    .line 1000
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1001
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1002
    goto/16 :goto_427

    .line 988
    .end local v2    # "_arg0":Landroid/hardware/usb/IDisplayPortAltModeInfoListener;
    .end local v3    # "_result":Z
    :pswitch_48
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 989
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 990
    invoke-virtual {p0, v2}, Landroid/hardware/usb/IUsbManager$Stub;->setUsbDeviceConnectionHandler(Landroid/content/ComponentName;)V

    .line 991
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 992
    goto/16 :goto_427

    .line 977
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    :pswitch_5b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 979
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 980
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 981
    invoke-virtual {p0, v2, v3}, Landroid/hardware/usb/IUsbManager$Stub;->enableContaminantDetection(Ljava/lang/String;Z)V

    .line 982
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 983
    goto/16 :goto_427

    .line 962
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    :pswitch_6e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 964
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 966
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 968
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/hardware/usb/IUsbOperationInternal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbOperationInternal;

    move-result-object v5

    .line 969
    .local v5, "_arg3":Landroid/hardware/usb/IUsbOperationInternal;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 970
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/usb/IUsbManager$Stub;->enableLimitPowerTransfer(Ljava/lang/String;ZILandroid/hardware/usb/IUsbOperationInternal;)V

    .line 971
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 972
    goto/16 :goto_427

    .line 949
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/hardware/usb/IUsbOperationInternal;
    :pswitch_8d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 951
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 953
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 954
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 955
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/usb/IUsbManager$Stub;->setPortRoles(Ljava/lang/String;II)V

    .line 956
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 957
    goto/16 :goto_427

    .line 939
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 940
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 941
    invoke-virtual {p0, v2}, Landroid/hardware/usb/IUsbManager$Stub;->isModeChangeSupported(Ljava/lang/String;)Z

    move-result v3

    .line 942
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 943
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 944
    goto/16 :goto_427

    .line 929
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_b7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 930
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 931
    invoke-virtual {p0, v2}, Landroid/hardware/usb/IUsbManager$Stub;->getPortStatus(Ljava/lang/String;)Landroid/hardware/usb/UsbPortStatus;

    move-result-object v3

    .line 932
    .local v3, "_result":Landroid/hardware/usb/UsbPortStatus;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 933
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 934
    goto/16 :goto_427

    .line 921
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/hardware/usb/UsbPortStatus;
    :pswitch_ca
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->getPorts()Ljava/util/List;

    move-result-object v2

    .line 922
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/usb/ParcelableUsbPort;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 923
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 924
    goto/16 :goto_427

    .line 912
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/usb/ParcelableUsbPort;>;"
    :pswitch_d6
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 913
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 914
    invoke-virtual {p0, v2, v3}, Landroid/hardware/usb/IUsbManager$Stub;->getControlFd(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 915
    .local v4, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 916
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 917
    goto/16 :goto_427

    .line 904
    .end local v2    # "_arg0":J
    .end local v4    # "_result":Landroid/os/ParcelFileDescriptor;
    :pswitch_e9
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->getUsbHalVersion()I

    move-result v2

    .line 905
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 906
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 907
    goto/16 :goto_427

    .line 892
    .end local v2    # "_result":I
    :pswitch_f5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 894
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 896
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/usb/IUsbOperationInternal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbOperationInternal;

    move-result-object v4

    .line 897
    .local v4, "_arg2":Landroid/hardware/usb/IUsbOperationInternal;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 898
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/usb/IUsbManager$Stub;->enableUsbDataWhileDocked(Ljava/lang/String;ILandroid/hardware/usb/IUsbOperationInternal;)V

    .line 899
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 900
    goto/16 :goto_427

    .line 876
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/hardware/usb/IUsbOperationInternal;
    :pswitch_110
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 878
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 880
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 882
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/hardware/usb/IUsbOperationInternal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbOperationInternal;

    move-result-object v5

    .line 883
    .restart local v5    # "_arg3":Landroid/hardware/usb/IUsbOperationInternal;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 884
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/usb/IUsbManager$Stub;->enableUsbData(Ljava/lang/String;ZILandroid/hardware/usb/IUsbOperationInternal;)Z

    move-result v6

    .line 885
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 886
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 887
    goto/16 :goto_427

    .line 863
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/hardware/usb/IUsbOperationInternal;
    .end local v6    # "_result":Z
    :pswitch_133
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 865
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 867
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/usb/IUsbOperationInternal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbOperationInternal;

    move-result-object v4

    .line 868
    .local v4, "_arg2":Landroid/hardware/usb/IUsbOperationInternal;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 869
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/usb/IUsbManager$Stub;->resetUsbPort(Ljava/lang/String;ILandroid/hardware/usb/IUsbOperationInternal;)V

    .line 870
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 871
    goto/16 :goto_427

    .line 856
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/hardware/usb/IUsbOperationInternal;
    :pswitch_14e
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->resetUsbGadget()V

    .line 857
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 858
    goto/16 :goto_427

    .line 849
    :pswitch_156
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->getScreenUnlockedFunctions()J

    move-result-wide v2

    .line 850
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 851
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 852
    goto/16 :goto_427

    .line 841
    .end local v2    # "_result":J
    :pswitch_162
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 842
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 843
    invoke-virtual {p0, v2, v3}, Landroid/hardware/usb/IUsbManager$Stub;->setScreenUnlockedFunctions(J)V

    .line 844
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 845
    goto/16 :goto_427

    .line 833
    .end local v2    # "_arg0":J
    :pswitch_171
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->getGadgetHalVersion()I

    move-result v2

    .line 834
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 835
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 836
    goto/16 :goto_427

    .line 826
    .end local v2    # "_result":I
    :pswitch_17d
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->getCurrentUsbSpeed()I

    move-result v2

    .line 827
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 828
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 829
    goto/16 :goto_427

    .line 819
    .end local v2    # "_result":I
    :pswitch_189
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->getCurrentFunctions()J

    move-result-wide v2

    .line 820
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 821
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 822
    goto/16 :goto_427

    .line 807
    .end local v2    # "_result":J
    :pswitch_195
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 809
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 811
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 812
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 813
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/usb/IUsbManager$Stub;->setCurrentFunction(Ljava/lang/String;ZI)V

    .line 814
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 815
    goto/16 :goto_427

    .line 796
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":I
    :pswitch_1ac
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 798
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 799
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 800
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/usb/IUsbManager$Stub;->setCurrentFunctions(JI)V

    .line 801
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 802
    goto/16 :goto_427

    .line 788
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":I
    :pswitch_1bf
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->isUvcGadgetSupportEnabled()Z

    move-result v2

    .line 789
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 790
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 791
    goto/16 :goto_427

    .line 779
    .end local v2    # "_result":Z
    :pswitch_1cb
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 780
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 781
    invoke-virtual {p0, v2}, Landroid/hardware/usb/IUsbManager$Stub;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v3

    .line 782
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 783
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 784
    goto/16 :goto_427

    .line 768
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_1de
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 770
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 771
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 772
    invoke-virtual {p0, v2, v3}, Landroid/hardware/usb/IUsbManager$Stub;->clearDefaults(Ljava/lang/String;I)V

    .line 773
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 774
    goto/16 :goto_427

    .line 756
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_1f1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 758
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 759
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 760
    invoke-virtual {p0, v2, v3}, Landroid/hardware/usb/IUsbManager$Stub;->hasDefaults(Ljava/lang/String;I)Z

    move-result v4

    .line 761
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 762
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 763
    goto/16 :goto_427

    .line 745
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_208
    sget-object v2, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbAccessory;

    .line 747
    .local v2, "_arg0":Landroid/hardware/usb/UsbAccessory;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 748
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 749
    invoke-virtual {p0, v2, v3}, Landroid/hardware/usb/IUsbManager$Stub;->grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V

    .line 750
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 751
    goto/16 :goto_427

    .line 734
    .end local v2    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    .end local v3    # "_arg1":I
    :pswitch_21f
    sget-object v2, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbDevice;

    .line 736
    .local v2, "_arg0":Landroid/hardware/usb/UsbDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 737
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 738
    invoke-virtual {p0, v2, v3}, Landroid/hardware/usb/IUsbManager$Stub;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V

    .line 739
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 740
    goto/16 :goto_427

    .line 721
    .end local v2    # "_arg0":Landroid/hardware/usb/UsbDevice;
    .end local v3    # "_arg1":I
    :pswitch_236
    sget-object v2, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbAccessory;

    .line 723
    .local v2, "_arg0":Landroid/hardware/usb/UsbAccessory;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 725
    .local v3, "_arg1":Ljava/lang/String;
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .line 726
    .local v4, "_arg2":Landroid/app/PendingIntent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 727
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/usb/IUsbManager$Stub;->requestAccessoryPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 728
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 729
    goto/16 :goto_427

    .line 708
    .end local v2    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/app/PendingIntent;
    :pswitch_255
    sget-object v2, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbDevice;

    .line 710
    .local v2, "_arg0":Landroid/hardware/usb/UsbDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 712
    .restart local v3    # "_arg1":Ljava/lang/String;
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .line 713
    .restart local v4    # "_arg2":Landroid/app/PendingIntent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 714
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/usb/IUsbManager$Stub;->requestDevicePermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 715
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 716
    goto/16 :goto_427

    .line 694
    .end local v2    # "_arg0":Landroid/hardware/usb/UsbDevice;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/app/PendingIntent;
    :pswitch_274
    sget-object v2, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbAccessory;

    .line 696
    .local v2, "_arg0":Landroid/hardware/usb/UsbAccessory;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 698
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 699
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 700
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/usb/IUsbManager$Stub;->hasAccessoryPermissionWithIdentity(Landroid/hardware/usb/UsbAccessory;II)Z

    move-result v5

    .line 701
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 702
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 703
    goto/16 :goto_427

    .line 684
    .end local v2    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Z
    :pswitch_293
    sget-object v2, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbAccessory;

    .line 685
    .restart local v2    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 686
    invoke-virtual {p0, v2}, Landroid/hardware/usb/IUsbManager$Stub;->hasAccessoryPermission(Landroid/hardware/usb/UsbAccessory;)Z

    move-result v3

    .line 687
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 688
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 689
    goto/16 :goto_427

    .line 668
    .end local v2    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    .end local v3    # "_result":Z
    :pswitch_2aa
    sget-object v2, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbDevice;

    .line 670
    .local v2, "_arg0":Landroid/hardware/usb/UsbDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 672
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 674
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 675
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 676
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/usb/IUsbManager$Stub;->hasDevicePermissionWithIdentity(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)Z

    move-result v6

    .line 677
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 678
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 679
    goto/16 :goto_427

    .line 656
    .end local v2    # "_arg0":Landroid/hardware/usb/UsbDevice;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_result":Z
    :pswitch_2cd
    sget-object v2, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbDevice;

    .line 658
    .restart local v2    # "_arg0":Landroid/hardware/usb/UsbDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 659
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 660
    invoke-virtual {p0, v2, v3}, Landroid/hardware/usb/IUsbManager$Stub;->hasDevicePermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)Z

    move-result v4

    .line 661
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 662
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 663
    goto/16 :goto_427

    .line 641
    .end local v2    # "_arg0":Landroid/hardware/usb/UsbDevice;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_2e8
    sget-object v2, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbAccessory;

    .line 643
    .local v2, "_arg0":Landroid/hardware/usb/UsbAccessory;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 645
    .local v3, "_arg1":I
    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    .line 647
    .local v4, "_arg2":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 648
    .local v5, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 649
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/usb/IUsbManager$Stub;->setAccessoryPersistentPermission(Landroid/hardware/usb/UsbAccessory;ILandroid/os/UserHandle;Z)V

    .line 650
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 651
    goto/16 :goto_427

    .line 626
    .end local v2    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/os/UserHandle;
    .end local v5    # "_arg3":Z
    :pswitch_30b
    sget-object v2, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbDevice;

    .line 628
    .local v2, "_arg0":Landroid/hardware/usb/UsbDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 630
    .restart local v3    # "_arg1":I
    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    .line 632
    .restart local v4    # "_arg2":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 633
    .restart local v5    # "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 634
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/usb/IUsbManager$Stub;->setDevicePersistentPermission(Landroid/hardware/usb/UsbDevice;ILandroid/os/UserHandle;Z)V

    .line 635
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 636
    goto/16 :goto_427

    .line 613
    .end local v2    # "_arg0":Landroid/hardware/usb/UsbDevice;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/os/UserHandle;
    .end local v5    # "_arg3":Z
    :pswitch_32e
    sget-object v2, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbAccessory;

    .line 615
    .local v2, "_arg0":Landroid/hardware/usb/UsbAccessory;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 617
    .local v3, "_arg1":[Ljava/lang/String;
    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    .line 618
    .restart local v4    # "_arg2":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 619
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/usb/IUsbManager$Stub;->removeAccessoryPackagesFromPreferenceDenied(Landroid/hardware/usb/UsbAccessory;[Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 620
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 621
    goto/16 :goto_427

    .line 600
    .end local v2    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    .end local v3    # "_arg1":[Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/UserHandle;
    :pswitch_34d
    sget-object v2, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbDevice;

    .line 602
    .local v2, "_arg0":Landroid/hardware/usb/UsbDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 604
    .restart local v3    # "_arg1":[Ljava/lang/String;
    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    .line 605
    .restart local v4    # "_arg2":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 606
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/usb/IUsbManager$Stub;->removeDevicePackagesFromPreferenceDenied(Landroid/hardware/usb/UsbDevice;[Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 607
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 608
    goto/16 :goto_427

    .line 587
    .end local v2    # "_arg0":Landroid/hardware/usb/UsbDevice;
    .end local v3    # "_arg1":[Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/UserHandle;
    :pswitch_36c
    sget-object v2, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbAccessory;

    .line 589
    .local v2, "_arg0":Landroid/hardware/usb/UsbAccessory;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 591
    .restart local v3    # "_arg1":[Ljava/lang/String;
    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    .line 592
    .restart local v4    # "_arg2":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 593
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/usb/IUsbManager$Stub;->addAccessoryPackagesToPreferenceDenied(Landroid/hardware/usb/UsbAccessory;[Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 594
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 595
    goto/16 :goto_427

    .line 574
    .end local v2    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    .end local v3    # "_arg1":[Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/UserHandle;
    :pswitch_38b
    sget-object v2, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbDevice;

    .line 576
    .local v2, "_arg0":Landroid/hardware/usb/UsbDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 578
    .restart local v3    # "_arg1":[Ljava/lang/String;
    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    .line 579
    .restart local v4    # "_arg2":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 580
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/usb/IUsbManager$Stub;->addDevicePackagesToPreferenceDenied(Landroid/hardware/usb/UsbDevice;[Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 581
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 582
    goto/16 :goto_427

    .line 561
    .end local v2    # "_arg0":Landroid/hardware/usb/UsbDevice;
    .end local v3    # "_arg1":[Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/UserHandle;
    :pswitch_3aa
    sget-object v2, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbAccessory;

    .line 563
    .local v2, "_arg0":Landroid/hardware/usb/UsbAccessory;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 565
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 566
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 567
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/usb/IUsbManager$Stub;->setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;I)V

    .line 568
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    goto :goto_427

    .line 548
    .end local v2    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    :pswitch_3c4
    sget-object v2, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbDevice;

    .line 550
    .local v2, "_arg0":Landroid/hardware/usb/UsbDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 552
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 553
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 554
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/usb/IUsbManager$Stub;->setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)V

    .line 555
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    goto :goto_427

    .line 538
    .end local v2    # "_arg0":Landroid/hardware/usb/UsbDevice;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    :pswitch_3de
    sget-object v2, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbAccessory;

    .line 539
    .local v2, "_arg0":Landroid/hardware/usb/UsbAccessory;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 540
    invoke-virtual {p0, v2}, Landroid/hardware/usb/IUsbManager$Stub;->openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 541
    .local v3, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 542
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 543
    goto :goto_427

    .line 530
    .end local v2    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    .end local v3    # "_result":Landroid/os/ParcelFileDescriptor;
    :pswitch_3f4
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;

    move-result-object v2

    .line 531
    .local v2, "_result":Landroid/hardware/usb/UsbAccessory;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 532
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 533
    goto :goto_427

    .line 519
    .end local v2    # "_result":Landroid/hardware/usb/UsbAccessory;
    :pswitch_3ff
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 521
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 522
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 523
    invoke-virtual {p0, v2, v3}, Landroid/hardware/usb/IUsbManager$Stub;->openDevice(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 524
    .local v4, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 525
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 526
    goto :goto_427

    .line 509
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Landroid/os/ParcelFileDescriptor;
    :pswitch_415
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 510
    .local v2, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 511
    invoke-virtual {p0, v2}, Landroid/hardware/usb/IUsbManager$Stub;->getDeviceList(Landroid/os/Bundle;)V

    .line 512
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 513
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 514
    nop

    .line 1018
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :goto_427
    return v1

    :pswitch_data_428
    .packed-switch 0x1
        :pswitch_415
        :pswitch_3ff
        :pswitch_3f4
        :pswitch_3de
        :pswitch_3c4
        :pswitch_3aa
        :pswitch_38b
        :pswitch_36c
        :pswitch_34d
        :pswitch_32e
        :pswitch_30b
        :pswitch_2e8
        :pswitch_2cd
        :pswitch_2aa
        :pswitch_293
        :pswitch_274
        :pswitch_255
        :pswitch_236
        :pswitch_21f
        :pswitch_208
        :pswitch_1f1
        :pswitch_1de
        :pswitch_1cb
        :pswitch_1bf
        :pswitch_1ac
        :pswitch_195
        :pswitch_189
        :pswitch_17d
        :pswitch_171
        :pswitch_162
        :pswitch_156
        :pswitch_14e
        :pswitch_133
        :pswitch_110
        :pswitch_f5
        :pswitch_e9
        :pswitch_d6
        :pswitch_ca
        :pswitch_b7
        :pswitch_a4
        :pswitch_8d
        :pswitch_6e
        :pswitch_5b
        :pswitch_48
        :pswitch_31
        :pswitch_1e
    .end packed-switch
.end method

.method protected blacklist resetUsbGadget_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1983
    iget-object v0, p0, Landroid/hardware/usb/IUsbManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_USB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1984
    return-void
.end method

.method protected blacklist setCurrentFunctions_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1952
    iget-object v0, p0, Landroid/hardware/usb/IUsbManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_USB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1953
    return-void
.end method

.method protected blacklist setScreenUnlockedFunctions_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1973
    iget-object v0, p0, Landroid/hardware/usb/IUsbManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_USB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1974
    return-void
.end method

.method protected blacklist setUsbDeviceConnectionHandler_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2015
    iget-object v0, p0, Landroid/hardware/usb/IUsbManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_USB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2016
    return-void
.end method
