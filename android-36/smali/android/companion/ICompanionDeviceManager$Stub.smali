.class public abstract Landroid/companion/ICompanionDeviceManager$Stub;
.super Landroid/os/Binder;
.source "ICompanionDeviceManager.java"

# interfaces
.implements Landroid/companion/ICompanionDeviceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/ICompanionDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/ICompanionDeviceManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.companion.ICompanionDeviceManager"

.field static final blacklist TRANSACTION_addOnAssociationsChangedListener:I = 0xf

.field static final blacklist TRANSACTION_addOnMessageReceivedListener:I = 0x14

.field static final blacklist TRANSACTION_addOnTransportsChangedListener:I = 0x11

.field static final blacklist TRANSACTION_applyRestoredPayload:I = 0x27

.field static final greylist-max-o TRANSACTION_associate:I = 0x1

.field static final blacklist TRANSACTION_attachSystemDataTransport:I = 0x1b

.field static final blacklist TRANSACTION_buildAssociationCancellationIntent:I = 0x1e

.field static final blacklist TRANSACTION_buildPermissionTransferUserConsentIntent:I = 0x18

.field static final blacklist TRANSACTION_canPairWithoutPrompt:I = 0xd

.field static final blacklist TRANSACTION_createAssociation:I = 0xe

.field static final blacklist TRANSACTION_detachSystemDataTransport:I = 0x1c

.field static final blacklist TRANSACTION_disablePermissionsSync:I = 0x22

.field static final blacklist TRANSACTION_disableSystemDataSync:I = 0x20

.field static final greylist-max-o TRANSACTION_disassociate:I = 0x5

.field static final blacklist TRANSACTION_enablePermissionsSync:I = 0x21

.field static final blacklist TRANSACTION_enableSecureTransport:I = 0x24

.field static final blacklist TRANSACTION_enableSystemDataSync:I = 0x1f

.field static final blacklist TRANSACTION_getAllAssociationsForUser:I = 0x3

.field static final greylist-max-o TRANSACTION_getAssociations:I = 0x2

.field static final blacklist TRANSACTION_getBackupPayload:I = 0x26

.field static final blacklist TRANSACTION_getPermissionSyncRequest:I = 0x23

.field static final greylist-max-o TRANSACTION_hasNotificationAccess:I = 0x6

.field static final blacklist TRANSACTION_isCompanionApplicationBound:I = 0x1d

.field static final blacklist TRANSACTION_isDeviceAssociatedForWifiConnection:I = 0x8

.field static final blacklist TRANSACTION_isPermissionTransferUserConsented:I = 0x19

.field static final blacklist TRANSACTION_legacyDisassociate:I = 0x4

.field static final blacklist TRANSACTION_legacyStartObservingDevicePresence:I = 0x9

.field static final blacklist TRANSACTION_legacyStopObservingDevicePresence:I = 0xa

.field static final blacklist TRANSACTION_notifySelfManagedDeviceAppeared:I = 0x16

.field static final blacklist TRANSACTION_notifySelfManagedDeviceDisappeared:I = 0x17

.field static final blacklist TRANSACTION_removeBond:I = 0x28

.field static final blacklist TRANSACTION_removeOnAssociationsChangedListener:I = 0x10

.field static final blacklist TRANSACTION_removeOnMessageReceivedListener:I = 0x15

.field static final blacklist TRANSACTION_removeOnTransportsChangedListener:I = 0x12

.field static final greylist-max-o TRANSACTION_requestNotificationAccess:I = 0x7

.field static final blacklist TRANSACTION_sendMessage:I = 0x13

.field static final blacklist TRANSACTION_setDeviceId:I = 0x25

.field static final blacklist TRANSACTION_startObservingDevicePresence:I = 0xb

.field static final blacklist TRANSACTION_startSystemDataTransfer:I = 0x1a

.field static final blacklist TRANSACTION_stopObservingDevicePresence:I = 0xc


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 176
    nop

    .line 177
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 176
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/companion/ICompanionDeviceManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 178
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 166
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 167
    const-string v0, "android.companion.ICompanionDeviceManager"

    invoke-virtual {p0, p0, v0}, Landroid/companion/ICompanionDeviceManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 168
    if-eqz p1, :cond_d

    .line 171
    iput-object p1, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 172
    return-void

    .line 169
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/companion/ICompanionDeviceManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 185
    if-nez p0, :cond_4

    .line 186
    const/4 v0, 0x0

    return-object v0

    .line 188
    :cond_4
    const-string v0, "android.companion.ICompanionDeviceManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 189
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/companion/ICompanionDeviceManager;

    if-eqz v1, :cond_14

    .line 190
    move-object v1, v0

    check-cast v1, Landroid/companion/ICompanionDeviceManager;

    return-object v1

    .line 192
    :cond_14
    new-instance v1, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 201
    packed-switch p0, :pswitch_data_90

    .line 365
    const/4 v0, 0x0

    return-object v0

    .line 361
    :pswitch_5
    const-string/jumbo v0, "removeBond"

    return-object v0

    .line 357
    :pswitch_9
    const-string v0, "applyRestoredPayload"

    return-object v0

    .line 353
    :pswitch_c
    const-string v0, "getBackupPayload"

    return-object v0

    .line 349
    :pswitch_f
    const-string/jumbo v0, "setDeviceId"

    return-object v0

    .line 345
    :pswitch_13
    const-string v0, "enableSecureTransport"

    return-object v0

    .line 341
    :pswitch_16
    const-string v0, "getPermissionSyncRequest"

    return-object v0

    .line 337
    :pswitch_19
    const-string v0, "disablePermissionsSync"

    return-object v0

    .line 333
    :pswitch_1c
    const-string v0, "enablePermissionsSync"

    return-object v0

    .line 329
    :pswitch_1f
    const-string v0, "disableSystemDataSync"

    return-object v0

    .line 325
    :pswitch_22
    const-string v0, "enableSystemDataSync"

    return-object v0

    .line 321
    :pswitch_25
    const-string v0, "buildAssociationCancellationIntent"

    return-object v0

    .line 317
    :pswitch_28
    const-string/jumbo v0, "isCompanionApplicationBound"

    return-object v0

    .line 313
    :pswitch_2c
    const-string v0, "detachSystemDataTransport"

    return-object v0

    .line 309
    :pswitch_2f
    const-string v0, "attachSystemDataTransport"

    return-object v0

    .line 305
    :pswitch_32
    const-string/jumbo v0, "startSystemDataTransfer"

    return-object v0

    .line 301
    :pswitch_36
    const-string/jumbo v0, "isPermissionTransferUserConsented"

    return-object v0

    .line 297
    :pswitch_3a
    const-string v0, "buildPermissionTransferUserConsentIntent"

    return-object v0

    .line 293
    :pswitch_3d
    const-string/jumbo v0, "notifySelfManagedDeviceDisappeared"

    return-object v0

    .line 289
    :pswitch_41
    const-string/jumbo v0, "notifySelfManagedDeviceAppeared"

    return-object v0

    .line 285
    :pswitch_45
    const-string/jumbo v0, "removeOnMessageReceivedListener"

    return-object v0

    .line 281
    :pswitch_49
    const-string v0, "addOnMessageReceivedListener"

    return-object v0

    .line 277
    :pswitch_4c
    const-string/jumbo v0, "sendMessage"

    return-object v0

    .line 273
    :pswitch_50
    const-string/jumbo v0, "removeOnTransportsChangedListener"

    return-object v0

    .line 269
    :pswitch_54
    const-string v0, "addOnTransportsChangedListener"

    return-object v0

    .line 265
    :pswitch_57
    const-string/jumbo v0, "removeOnAssociationsChangedListener"

    return-object v0

    .line 261
    :pswitch_5b
    const-string v0, "addOnAssociationsChangedListener"

    return-object v0

    .line 257
    :pswitch_5e
    const-string v0, "createAssociation"

    return-object v0

    .line 253
    :pswitch_61
    const-string v0, "canPairWithoutPrompt"

    return-object v0

    .line 249
    :pswitch_64
    const-string/jumbo v0, "stopObservingDevicePresence"

    return-object v0

    .line 245
    :pswitch_68
    const-string/jumbo v0, "startObservingDevicePresence"

    return-object v0

    .line 241
    :pswitch_6c
    const-string/jumbo v0, "legacyStopObservingDevicePresence"

    return-object v0

    .line 237
    :pswitch_70
    const-string/jumbo v0, "legacyStartObservingDevicePresence"

    return-object v0

    .line 233
    :pswitch_74
    const-string/jumbo v0, "isDeviceAssociatedForWifiConnection"

    return-object v0

    .line 229
    :pswitch_78
    const-string/jumbo v0, "requestNotificationAccess"

    return-object v0

    .line 225
    :pswitch_7c
    const-string/jumbo v0, "hasNotificationAccess"

    return-object v0

    .line 221
    :pswitch_80
    const-string v0, "disassociate"

    return-object v0

    .line 217
    :pswitch_83
    const-string/jumbo v0, "legacyDisassociate"

    return-object v0

    .line 213
    :pswitch_87
    const-string v0, "getAllAssociationsForUser"

    return-object v0

    .line 209
    :pswitch_8a
    const-string v0, "getAssociations"

    return-object v0

    .line 205
    :pswitch_8d
    const-string v0, "associate"

    return-object v0

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_8d
        :pswitch_8a
        :pswitch_87
        :pswitch_83
        :pswitch_80
        :pswitch_7c
        :pswitch_78
        :pswitch_74
        :pswitch_70
        :pswitch_6c
        :pswitch_68
        :pswitch_64
        :pswitch_61
        :pswitch_5e
        :pswitch_5b
        :pswitch_57
        :pswitch_54
        :pswitch_50
        :pswitch_4c
        :pswitch_49
        :pswitch_45
        :pswitch_41
        :pswitch_3d
        :pswitch_3a
        :pswitch_36
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method protected blacklist addOnAssociationsChangedListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1617
    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_COMPANION_DEVICES"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1618
    return-void
.end method

.method protected blacklist addOnMessageReceivedListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1642
    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_COMPANION_TRANSPORTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1643
    return-void
.end method

.method protected blacklist addOnTransportsChangedListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1627
    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_COMPANION_TRANSPORTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1628
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 196
    return-object p0
.end method

.method protected blacklist attachSystemDataTransport_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1665
    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.DELIVER_COMPANION_MESSAGES"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1666
    return-void
.end method

.method protected blacklist createAssociation_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1612
    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ASSOCIATE_COMPANION_DEVICES"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1613
    return-void
.end method

.method protected blacklist detachSystemDataTransport_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1670
    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.DELIVER_COMPANION_MESSAGES"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1671
    return-void
.end method

.method protected blacklist enableSecureTransport_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1682
    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_COMPANION_DEVICES"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1683
    return-void
.end method

.method protected blacklist getAllAssociationsForUser_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1577
    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_COMPANION_DEVICES"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1578
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1695
    const/16 v0, 0x27

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 372
    invoke-static {p1}, Landroid/companion/ICompanionDeviceManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist isDeviceAssociatedForWifiConnection_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1586
    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_COMPANION_DEVICES"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1587
    return-void
.end method

.method protected blacklist legacyStartObservingDevicePresence_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1591
    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.REQUEST_OBSERVE_COMPANION_DEVICE_PRESENCE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1592
    return-void
.end method

.method protected blacklist legacyStopObservingDevicePresence_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1596
    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.REQUEST_OBSERVE_COMPANION_DEVICE_PRESENCE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1597
    return-void
.end method

.method protected blacklist notifySelfManagedDeviceAppeared_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1652
    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.REQUEST_COMPANION_SELF_MANAGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1653
    return-void
.end method

.method protected blacklist notifySelfManagedDeviceDisappeared_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1657
    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.REQUEST_COMPANION_SELF_MANAGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1658
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

    .line 376
    const-string v0, "android.companion.ICompanionDeviceManager"

    .line 377
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 378
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 381
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 382
    return v1

    .line 384
    :cond_16
    packed-switch p1, :pswitch_data_3d0

    .line 859
    move-object v5, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 846
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 848
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 850
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 851
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 852
    invoke-virtual {p0, v2, v3, v4}, Landroid/companion/ICompanionDeviceManager$Stub;->removeBond(ILjava/lang/String;I)Z

    move-result v5

    .line 853
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 854
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 855
    move-object v5, p0

    goto/16 :goto_3cf

    .line 835
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Z
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 837
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 838
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 839
    invoke-virtual {p0, v2, v3}, Landroid/companion/ICompanionDeviceManager$Stub;->applyRestoredPayload([BI)V

    .line 840
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 841
    move-object v5, p0

    goto/16 :goto_3cf

    .line 825
    .end local v2    # "_arg0":[B
    .end local v3    # "_arg1":I
    :pswitch_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 826
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 827
    invoke-virtual {p0, v2}, Landroid/companion/ICompanionDeviceManager$Stub;->getBackupPayload(I)[B

    move-result-object v3

    .line 828
    .local v3, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 829
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 830
    move-object v5, p0

    goto/16 :goto_3cf

    .line 814
    .end local v2    # "_arg0":I
    .end local v3    # "_result":[B
    :pswitch_63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 816
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/companion/DeviceId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/companion/DeviceId;

    .line 817
    .local v3, "_arg1":Landroid/companion/DeviceId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 818
    invoke-virtual {p0, v2, v3}, Landroid/companion/ICompanionDeviceManager$Stub;->setDeviceId(ILandroid/companion/DeviceId;)V

    .line 819
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 820
    move-object v5, p0

    goto/16 :goto_3cf

    .line 805
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/companion/DeviceId;
    :pswitch_7b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 806
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 807
    invoke-virtual {p0, v2}, Landroid/companion/ICompanionDeviceManager$Stub;->enableSecureTransport(Z)V

    .line 808
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 809
    move-object v5, p0

    goto/16 :goto_3cf

    .line 795
    .end local v2    # "_arg0":Z
    :pswitch_8b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 796
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 797
    invoke-virtual {p0, v2}, Landroid/companion/ICompanionDeviceManager$Stub;->getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;

    move-result-object v3

    .line 798
    .local v3, "_result":Landroid/companion/datatransfer/PermissionSyncRequest;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 799
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 800
    move-object v5, p0

    goto/16 :goto_3cf

    .line 786
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/companion/datatransfer/PermissionSyncRequest;
    :pswitch_9f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 787
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 788
    invoke-virtual {p0, v2}, Landroid/companion/ICompanionDeviceManager$Stub;->disablePermissionsSync(I)V

    .line 789
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 790
    move-object v5, p0

    goto/16 :goto_3cf

    .line 777
    .end local v2    # "_arg0":I
    :pswitch_af
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 778
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 779
    invoke-virtual {p0, v2}, Landroid/companion/ICompanionDeviceManager$Stub;->enablePermissionsSync(I)V

    .line 780
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 781
    move-object v5, p0

    goto/16 :goto_3cf

    .line 766
    .end local v2    # "_arg0":I
    :pswitch_bf
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 768
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 769
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 770
    invoke-virtual {p0, v2, v3}, Landroid/companion/ICompanionDeviceManager$Stub;->disableSystemDataSync(II)V

    .line 771
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 772
    move-object v5, p0

    goto/16 :goto_3cf

    .line 755
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_d3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 757
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 758
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 759
    invoke-virtual {p0, v2, v3}, Landroid/companion/ICompanionDeviceManager$Stub;->enableSystemDataSync(II)V

    .line 760
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 761
    move-object v5, p0

    goto/16 :goto_3cf

    .line 743
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_e7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 745
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 746
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 747
    invoke-virtual {p0, v2, v3}, Landroid/companion/ICompanionDeviceManager$Stub;->buildAssociationCancellationIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 748
    .local v4, "_result":Landroid/app/PendingIntent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 749
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 750
    move-object v5, p0

    goto/16 :goto_3cf

    .line 731
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/app/PendingIntent;
    :pswitch_ff
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 733
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 734
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 735
    invoke-virtual {p0, v2, v3}, Landroid/companion/ICompanionDeviceManager$Stub;->isCompanionApplicationBound(Ljava/lang/String;I)Z

    move-result v4

    .line 736
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 737
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 738
    move-object v5, p0

    goto/16 :goto_3cf

    .line 718
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_117
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 720
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 722
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 723
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 724
    invoke-virtual {p0, v2, v3, v4}, Landroid/companion/ICompanionDeviceManager$Stub;->detachSystemDataTransport(Ljava/lang/String;II)V

    .line 725
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 726
    move-object v5, p0

    goto/16 :goto_3cf

    .line 701
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_12f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 703
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 705
    .local v7, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 707
    .local v8, "_arg2":I
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/os/ParcelFileDescriptor;

    .line 709
    .local v9, "_arg3":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 710
    .local v10, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 711
    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Landroid/companion/ICompanionDeviceManager$Stub;->attachSystemDataTransport(Ljava/lang/String;IILandroid/os/ParcelFileDescriptor;I)V

    .line 712
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 713
    goto/16 :goto_3cf

    .line 686
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Landroid/os/ParcelFileDescriptor;
    .end local v10    # "_arg4":I
    :pswitch_154
    move-object v5, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 688
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 690
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 692
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/companion/ISystemDataTransferCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/ISystemDataTransferCallback;

    move-result-object v6

    .line 693
    .local v6, "_arg3":Landroid/companion/ISystemDataTransferCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 694
    invoke-virtual {p0, v2, v3, v4, v6}, Landroid/companion/ICompanionDeviceManager$Stub;->startSystemDataTransfer(Ljava/lang/String;IILandroid/companion/ISystemDataTransferCallback;)V

    .line 695
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 696
    goto/16 :goto_3cf

    .line 672
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v6    # "_arg3":Landroid/companion/ISystemDataTransferCallback;
    :pswitch_174
    move-object v5, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 674
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 676
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 677
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 678
    invoke-virtual {p0, v2, v3, v4}, Landroid/companion/ICompanionDeviceManager$Stub;->isPermissionTransferUserConsented(Ljava/lang/String;II)Z

    move-result v6

    .line 679
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 680
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 681
    goto/16 :goto_3cf

    .line 658
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v6    # "_result":Z
    :pswitch_190
    move-object v5, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 660
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 662
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 663
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 664
    invoke-virtual {p0, v2, v3, v4}, Landroid/companion/ICompanionDeviceManager$Stub;->buildPermissionTransferUserConsentIntent(Ljava/lang/String;II)Landroid/app/PendingIntent;

    move-result-object v6

    .line 665
    .local v6, "_result":Landroid/app/PendingIntent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 666
    invoke-virtual {p3, v6, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 667
    goto/16 :goto_3cf

    .line 649
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v6    # "_result":Landroid/app/PendingIntent;
    :pswitch_1ac
    move-object v5, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 650
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 651
    invoke-virtual {p0, v2}, Landroid/companion/ICompanionDeviceManager$Stub;->notifySelfManagedDeviceDisappeared(I)V

    .line 652
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 653
    goto/16 :goto_3cf

    .line 640
    .end local v2    # "_arg0":I
    :pswitch_1bc
    move-object v5, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 641
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 642
    invoke-virtual {p0, v2}, Landroid/companion/ICompanionDeviceManager$Stub;->notifySelfManagedDeviceAppeared(I)V

    .line 643
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 644
    goto/16 :goto_3cf

    .line 629
    .end local v2    # "_arg0":I
    :pswitch_1cc
    move-object v5, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 631
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/companion/IOnMessageReceivedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/IOnMessageReceivedListener;

    move-result-object v3

    .line 632
    .local v3, "_arg1":Landroid/companion/IOnMessageReceivedListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 633
    invoke-virtual {p0, v2, v3}, Landroid/companion/ICompanionDeviceManager$Stub;->removeOnMessageReceivedListener(ILandroid/companion/IOnMessageReceivedListener;)V

    .line 634
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 635
    goto/16 :goto_3cf

    .line 618
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/companion/IOnMessageReceivedListener;
    :pswitch_1e4
    move-object v5, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 620
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/companion/IOnMessageReceivedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/IOnMessageReceivedListener;

    move-result-object v3

    .line 621
    .restart local v3    # "_arg1":Landroid/companion/IOnMessageReceivedListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 622
    invoke-virtual {p0, v2, v3}, Landroid/companion/ICompanionDeviceManager$Stub;->addOnMessageReceivedListener(ILandroid/companion/IOnMessageReceivedListener;)V

    .line 623
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 624
    goto/16 :goto_3cf

    .line 605
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/companion/IOnMessageReceivedListener;
    :pswitch_1fc
    move-object v5, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 607
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 609
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 610
    .local v4, "_arg2":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 611
    invoke-virtual {p0, v2, v3, v4}, Landroid/companion/ICompanionDeviceManager$Stub;->sendMessage(I[B[I)V

    .line 612
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 613
    goto/16 :goto_3cf

    .line 596
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[B
    .end local v4    # "_arg2":[I
    :pswitch_214
    move-object v5, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/companion/IOnTransportsChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/IOnTransportsChangedListener;

    move-result-object v2

    .line 597
    .local v2, "_arg0":Landroid/companion/IOnTransportsChangedListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 598
    invoke-virtual {p0, v2}, Landroid/companion/ICompanionDeviceManager$Stub;->removeOnTransportsChangedListener(Landroid/companion/IOnTransportsChangedListener;)V

    .line 599
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 600
    goto/16 :goto_3cf

    .line 587
    .end local v2    # "_arg0":Landroid/companion/IOnTransportsChangedListener;
    :pswitch_228
    move-object v5, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/companion/IOnTransportsChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/IOnTransportsChangedListener;

    move-result-object v2

    .line 588
    .restart local v2    # "_arg0":Landroid/companion/IOnTransportsChangedListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 589
    invoke-virtual {p0, v2}, Landroid/companion/ICompanionDeviceManager$Stub;->addOnTransportsChangedListener(Landroid/companion/IOnTransportsChangedListener;)V

    .line 590
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 591
    goto/16 :goto_3cf

    .line 576
    .end local v2    # "_arg0":Landroid/companion/IOnTransportsChangedListener;
    :pswitch_23c
    move-object v5, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/companion/IOnAssociationsChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/IOnAssociationsChangedListener;

    move-result-object v2

    .line 578
    .local v2, "_arg0":Landroid/companion/IOnAssociationsChangedListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 579
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 580
    invoke-virtual {p0, v2, v3}, Landroid/companion/ICompanionDeviceManager$Stub;->removeOnAssociationsChangedListener(Landroid/companion/IOnAssociationsChangedListener;I)V

    .line 581
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 582
    goto/16 :goto_3cf

    .line 565
    .end local v2    # "_arg0":Landroid/companion/IOnAssociationsChangedListener;
    .end local v3    # "_arg1":I
    :pswitch_254
    move-object v5, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/companion/IOnAssociationsChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/IOnAssociationsChangedListener;

    move-result-object v2

    .line 567
    .restart local v2    # "_arg0":Landroid/companion/IOnAssociationsChangedListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 568
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 569
    invoke-virtual {p0, v2, v3}, Landroid/companion/ICompanionDeviceManager$Stub;->addOnAssociationsChangedListener(Landroid/companion/IOnAssociationsChangedListener;I)V

    .line 570
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 571
    goto/16 :goto_3cf

    .line 550
    .end local v2    # "_arg0":Landroid/companion/IOnAssociationsChangedListener;
    .end local v3    # "_arg1":I
    :pswitch_26c
    move-object v5, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 552
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 554
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 556
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 557
    .local v6, "_arg3":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 558
    invoke-virtual {p0, v2, v3, v4, v6}, Landroid/companion/ICompanionDeviceManager$Stub;->createAssociation(Ljava/lang/String;Ljava/lang/String;I[B)V

    .line 559
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 560
    goto/16 :goto_3cf

    .line 536
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v6    # "_arg3":[B
    :pswitch_288
    move-object v5, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 538
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 540
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 541
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 542
    invoke-virtual {p0, v2, v3, v4}, Landroid/companion/ICompanionDeviceManager$Stub;->canPairWithoutPrompt(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v6

    .line 543
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 544
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 545
    goto/16 :goto_3cf

    .line 523
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v6    # "_result":Z
    :pswitch_2a4
    move-object v5, p0

    sget-object v2, Landroid/companion/ObservingDevicePresenceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/ObservingDevicePresenceRequest;

    .line 525
    .local v2, "_arg0":Landroid/companion/ObservingDevicePresenceRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 527
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 528
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 529
    invoke-virtual {p0, v2, v3, v4}, Landroid/companion/ICompanionDeviceManager$Stub;->stopObservingDevicePresence(Landroid/companion/ObservingDevicePresenceRequest;Ljava/lang/String;I)V

    .line 530
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    goto/16 :goto_3cf

    .line 510
    .end local v2    # "_arg0":Landroid/companion/ObservingDevicePresenceRequest;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    :pswitch_2c0
    move-object v5, p0

    sget-object v2, Landroid/companion/ObservingDevicePresenceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/ObservingDevicePresenceRequest;

    .line 512
    .restart local v2    # "_arg0":Landroid/companion/ObservingDevicePresenceRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 514
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 515
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 516
    invoke-virtual {p0, v2, v3, v4}, Landroid/companion/ICompanionDeviceManager$Stub;->startObservingDevicePresence(Landroid/companion/ObservingDevicePresenceRequest;Ljava/lang/String;I)V

    .line 517
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 518
    goto/16 :goto_3cf

    .line 497
    .end local v2    # "_arg0":Landroid/companion/ObservingDevicePresenceRequest;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    :pswitch_2dc
    move-object v5, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 499
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 501
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 502
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 503
    invoke-virtual {p0, v2, v3, v4}, Landroid/companion/ICompanionDeviceManager$Stub;->legacyStopObservingDevicePresence(Ljava/lang/String;Ljava/lang/String;I)V

    .line 504
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 505
    goto/16 :goto_3cf

    .line 484
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    :pswitch_2f4
    move-object v5, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 486
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 488
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 489
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 490
    invoke-virtual {p0, v2, v3, v4}, Landroid/companion/ICompanionDeviceManager$Stub;->legacyStartObservingDevicePresence(Ljava/lang/String;Ljava/lang/String;I)V

    .line 491
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    goto/16 :goto_3cf

    .line 470
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    :pswitch_30c
    move-object v5, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 472
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 474
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 475
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 476
    invoke-virtual {p0, v2, v3, v4}, Landroid/companion/ICompanionDeviceManager$Stub;->isDeviceAssociatedForWifiConnection(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v6

    .line 477
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 478
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 479
    goto/16 :goto_3cf

    .line 458
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v6    # "_result":Z
    :pswitch_328
    move-object v5, p0

    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 460
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 461
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 462
    invoke-virtual {p0, v2, v3}, Landroid/companion/ICompanionDeviceManager$Stub;->requestNotificationAccess(Landroid/content/ComponentName;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 463
    .local v4, "_result":Landroid/app/PendingIntent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 465
    goto/16 :goto_3cf

    .line 448
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/app/PendingIntent;
    :pswitch_344
    move-object v5, p0

    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 449
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 450
    invoke-virtual {p0, v2}, Landroid/companion/ICompanionDeviceManager$Stub;->hasNotificationAccess(Landroid/content/ComponentName;)Z

    move-result v3

    .line 451
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 453
    goto/16 :goto_3cf

    .line 439
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_35c
    move-object v5, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 440
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 441
    invoke-virtual {p0, v2}, Landroid/companion/ICompanionDeviceManager$Stub;->disassociate(I)V

    .line 442
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 443
    goto :goto_3cf

    .line 426
    .end local v2    # "_arg0":I
    :pswitch_36b
    move-object v5, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 428
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 430
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 431
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 432
    invoke-virtual {p0, v2, v3, v4}, Landroid/companion/ICompanionDeviceManager$Stub;->legacyDisassociate(Ljava/lang/String;Ljava/lang/String;I)V

    .line 433
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    goto :goto_3cf

    .line 416
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    :pswitch_382
    move-object v5, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 417
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 418
    invoke-virtual {p0, v2}, Landroid/companion/ICompanionDeviceManager$Stub;->getAllAssociationsForUser(I)Ljava/util/List;

    move-result-object v3

    .line 419
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/companion/AssociationInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 421
    goto :goto_3cf

    .line 404
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/companion/AssociationInfo;>;"
    :pswitch_395
    move-object v5, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 406
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 407
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 408
    invoke-virtual {p0, v2, v3}, Landroid/companion/ICompanionDeviceManager$Stub;->getAssociations(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    .line 409
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/companion/AssociationInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 411
    goto :goto_3cf

    .line 389
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/companion/AssociationInfo;>;"
    :pswitch_3ac
    move-object v5, p0

    sget-object v2, Landroid/companion/AssociationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/AssociationRequest;

    .line 391
    .local v2, "_arg0":Landroid/companion/AssociationRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/companion/IAssociationRequestCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/IAssociationRequestCallback;

    move-result-object v3

    .line 393
    .local v3, "_arg1":Landroid/companion/IAssociationRequestCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 395
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 396
    .local v6, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 397
    invoke-virtual {p0, v2, v3, v4, v6}, Landroid/companion/ICompanionDeviceManager$Stub;->associate(Landroid/companion/AssociationRequest;Landroid/companion/IAssociationRequestCallback;Ljava/lang/String;I)V

    .line 398
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    nop

    .line 862
    .end local v2    # "_arg0":Landroid/companion/AssociationRequest;
    .end local v3    # "_arg1":Landroid/companion/IAssociationRequestCallback;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":I
    :goto_3cf
    return v1

    :pswitch_data_3d0
    .packed-switch 0x1
        :pswitch_3ac
        :pswitch_395
        :pswitch_382
        :pswitch_36b
        :pswitch_35c
        :pswitch_344
        :pswitch_328
        :pswitch_30c
        :pswitch_2f4
        :pswitch_2dc
        :pswitch_2c0
        :pswitch_2a4
        :pswitch_288
        :pswitch_26c
        :pswitch_254
        :pswitch_23c
        :pswitch_228
        :pswitch_214
        :pswitch_1fc
        :pswitch_1e4
        :pswitch_1cc
        :pswitch_1bc
        :pswitch_1ac
        :pswitch_190
        :pswitch_174
        :pswitch_154
        :pswitch_12f
        :pswitch_117
        :pswitch_ff
        :pswitch_e7
        :pswitch_d3
        :pswitch_bf
        :pswitch_af
        :pswitch_9f
        :pswitch_8b
        :pswitch_7b
        :pswitch_63
        :pswitch_4f
        :pswitch_3b
        :pswitch_1f
    .end packed-switch
.end method

.method protected blacklist removeBond_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1690
    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.BLUETOOTH_CONNECT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1691
    return-void
.end method

.method protected blacklist removeOnAssociationsChangedListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1622
    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_COMPANION_DEVICES"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1623
    return-void
.end method

.method protected blacklist removeOnMessageReceivedListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1647
    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_COMPANION_TRANSPORTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1648
    return-void
.end method

.method protected blacklist removeOnTransportsChangedListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1632
    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_COMPANION_TRANSPORTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1633
    return-void
.end method

.method protected blacklist sendMessage_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1637
    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_COMPANION_TRANSPORTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1638
    return-void
.end method

.method protected blacklist startObservingDevicePresence_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1601
    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.REQUEST_OBSERVE_COMPANION_DEVICE_PRESENCE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1602
    return-void
.end method

.method protected blacklist stopObservingDevicePresence_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1606
    iget-object v0, p0, Landroid/companion/ICompanionDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.REQUEST_OBSERVE_COMPANION_DEVICE_PRESENCE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1607
    return-void
.end method
