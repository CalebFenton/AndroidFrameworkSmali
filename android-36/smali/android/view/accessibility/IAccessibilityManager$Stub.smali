.class public abstract Landroid/view/accessibility/IAccessibilityManager$Stub;
.super Landroid/os/Binder;
.source "IAccessibilityManager.java"

# interfaces
.implements Landroid/view/accessibility/IAccessibilityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/IAccessibilityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/IAccessibilityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.view.accessibility.IAccessibilityManager"

.field static final blacklist PERMISSIONS_notifyQuickSettingsTilesChanged:[Ljava/lang/String;

.field static final greylist-max-o TRANSACTION_addAccessibilityInteractionConnection:I = 0x7

.field static final greylist-max-o TRANSACTION_addClient:I = 0x3

.field static final blacklist TRANSACTION_associateEmbeddedHierarchy:I = 0x18

.field static final blacklist TRANSACTION_attachAccessibilityOverlayToDisplay:I = 0x2b

.field static final blacklist TRANSACTION_disassociateEmbeddedHierarchy:I = 0x19

.field static final blacklist TRANSACTION_enableShortcutsForTargets:I = 0x2d

.field static final blacklist TRANSACTION_getA11yFeatureToTileMap:I = 0x2e

.field static final blacklist TRANSACTION_getAccessibilityShortcutTargets:I = 0x11

.field static final blacklist TRANSACTION_getAccessibilityWindowId:I = 0x13

.field static final greylist-max-o TRANSACTION_getEnabledAccessibilityServiceList:I = 0x6

.field static final blacklist TRANSACTION_getFocusColor:I = 0x1b

.field static final blacklist TRANSACTION_getFocusStrokeWidth:I = 0x1a

.field static final greylist-max-o TRANSACTION_getInstalledAccessibilityServiceList:I = 0x5

.field static final blacklist TRANSACTION_getRecommendedTimeoutMillis:I = 0x14

.field static final greylist-max-o TRANSACTION_getWindowToken:I = 0xc

.field static final blacklist TRANSACTION_getWindowTransformationSpec:I = 0x2a

.field static final blacklist TRANSACTION_injectInputEventToInputFilter:I = 0x23

.field static final greylist-max-o TRANSACTION_interrupt:I = 0x1

.field static final blacklist TRANSACTION_isAccessibilityServiceWarningRequired:I = 0x29

.field static final blacklist TRANSACTION_isAccessibilityTargetAllowed:I = 0x27

.field static final blacklist TRANSACTION_isAudioDescriptionByDefaultEnabled:I = 0x1c

.field static final blacklist TRANSACTION_isSystemAudioCaptioningUiEnabled:I = 0x1e

.field static final greylist-max-o TRANSACTION_notifyAccessibilityButtonClicked:I = 0xd

.field static final blacklist TRANSACTION_notifyAccessibilityButtonLongClicked:I = 0xe

.field static final greylist-max-o TRANSACTION_notifyAccessibilityButtonVisibilityChanged:I = 0xf

.field static final blacklist TRANSACTION_notifyQuickSettingsTilesChanged:I = 0x2c

.field static final greylist-max-o TRANSACTION_performAccessibilityShortcut:I = 0x10

.field static final blacklist TRANSACTION_registerProxyForDisplay:I = 0x21

.field static final blacklist TRANSACTION_registerSystemAction:I = 0x15

.field static final greylist-max-o TRANSACTION_registerUiTestAutomationService:I = 0xa

.field static final blacklist TRANSACTION_registerUserInitializationCompleteCallback:I = 0x2f

.field static final greylist-max-o TRANSACTION_removeAccessibilityInteractionConnection:I = 0x8

.field static final blacklist TRANSACTION_removeClient:I = 0x4

.field static final greylist-max-o TRANSACTION_sendAccessibilityEvent:I = 0x2

.field static final greylist-max-o TRANSACTION_sendFingerprintGesture:I = 0x12

.field static final blacklist TRANSACTION_sendRestrictedDialogIntent:I = 0x28

.field static final blacklist TRANSACTION_setAccessibilityWindowAttributes:I = 0x20

.field static final blacklist TRANSACTION_setMagnificationConnection:I = 0x17

.field static final greylist-max-o TRANSACTION_setPictureInPictureActionReplacingConnection:I = 0x9

.field static final blacklist TRANSACTION_setSystemAudioCaptioningEnabled:I = 0x1d

.field static final blacklist TRANSACTION_setSystemAudioCaptioningUiEnabled:I = 0x1f

.field static final blacklist TRANSACTION_startFlashNotificationEvent:I = 0x26

.field static final blacklist TRANSACTION_startFlashNotificationSequence:I = 0x24

.field static final blacklist TRANSACTION_stopFlashNotificationSequence:I = 0x25

.field static final blacklist TRANSACTION_unregisterProxyForDisplay:I = 0x22

.field static final blacklist TRANSACTION_unregisterSystemAction:I = 0x16

.field static final greylist-max-o TRANSACTION_unregisterUiTestAutomationService:I = 0xb

.field static final blacklist TRANSACTION_unregisterUserInitializationCompleteCallback:I = 0x30


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 1928
    const-string v0, "android.permission.STATUS_BAR_SERVICE"

    const-string v1, "android.permission.MANAGE_ACCESSIBILITY"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/accessibility/IAccessibilityManager$Stub;->PERMISSIONS_notifyQuickSettingsTilesChanged:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 216
    nop

    .line 217
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 216
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 218
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 206
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 207
    const-string v0, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p0, p0, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 208
    if-eqz p1, :cond_d

    .line 211
    iput-object p1, p0, Landroid/view/accessibility/IAccessibilityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 212
    return-void

    .line 209
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 225
    if-nez p0, :cond_4

    .line 226
    const/4 v0, 0x0

    return-object v0

    .line 228
    :cond_4
    const-string v0, "android.view.accessibility.IAccessibilityManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 229
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/accessibility/IAccessibilityManager;

    if-eqz v1, :cond_14

    .line 230
    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/IAccessibilityManager;

    return-object v1

    .line 232
    :cond_14
    new-instance v1, Landroid/view/accessibility/IAccessibilityManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/accessibility/IAccessibilityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 241
    packed-switch p0, :pswitch_data_aa

    .line 437
    const/4 v0, 0x0

    return-object v0

    .line 433
    :pswitch_5
    const-string/jumbo v0, "unregisterUserInitializationCompleteCallback"

    return-object v0

    .line 429
    :pswitch_9
    const-string/jumbo v0, "registerUserInitializationCompleteCallback"

    return-object v0

    .line 425
    :pswitch_d
    const-string v0, "getA11yFeatureToTileMap"

    return-object v0

    .line 421
    :pswitch_10
    const-string v0, "enableShortcutsForTargets"

    return-object v0

    .line 417
    :pswitch_13
    const-string v0, "notifyQuickSettingsTilesChanged"

    return-object v0

    .line 413
    :pswitch_16
    const-string v0, "attachAccessibilityOverlayToDisplay"

    return-object v0

    .line 409
    :pswitch_19
    const-string v0, "getWindowTransformationSpec"

    return-object v0

    .line 405
    :pswitch_1c
    const-string v0, "isAccessibilityServiceWarningRequired"

    return-object v0

    .line 401
    :pswitch_1f
    const-string/jumbo v0, "sendRestrictedDialogIntent"

    return-object v0

    .line 397
    :pswitch_23
    const-string v0, "isAccessibilityTargetAllowed"

    return-object v0

    .line 393
    :pswitch_26
    const-string/jumbo v0, "startFlashNotificationEvent"

    return-object v0

    .line 389
    :pswitch_2a
    const-string/jumbo v0, "stopFlashNotificationSequence"

    return-object v0

    .line 385
    :pswitch_2e
    const-string/jumbo v0, "startFlashNotificationSequence"

    return-object v0

    .line 381
    :pswitch_32
    const-string v0, "injectInputEventToInputFilter"

    return-object v0

    .line 377
    :pswitch_35
    const-string/jumbo v0, "unregisterProxyForDisplay"

    return-object v0

    .line 373
    :pswitch_39
    const-string/jumbo v0, "registerProxyForDisplay"

    return-object v0

    .line 369
    :pswitch_3d
    const-string/jumbo v0, "setAccessibilityWindowAttributes"

    return-object v0

    .line 365
    :pswitch_41
    const-string/jumbo v0, "setSystemAudioCaptioningUiEnabled"

    return-object v0

    .line 361
    :pswitch_45
    const-string v0, "isSystemAudioCaptioningUiEnabled"

    return-object v0

    .line 357
    :pswitch_48
    const-string/jumbo v0, "setSystemAudioCaptioningEnabled"

    return-object v0

    .line 353
    :pswitch_4c
    const-string v0, "isAudioDescriptionByDefaultEnabled"

    return-object v0

    .line 349
    :pswitch_4f
    const-string v0, "getFocusColor"

    return-object v0

    .line 345
    :pswitch_52
    const-string v0, "getFocusStrokeWidth"

    return-object v0

    .line 341
    :pswitch_55
    const-string v0, "disassociateEmbeddedHierarchy"

    return-object v0

    .line 337
    :pswitch_58
    const-string v0, "associateEmbeddedHierarchy"

    return-object v0

    .line 333
    :pswitch_5b
    const-string/jumbo v0, "setMagnificationConnection"

    return-object v0

    .line 329
    :pswitch_5f
    const-string/jumbo v0, "unregisterSystemAction"

    return-object v0

    .line 325
    :pswitch_63
    const-string/jumbo v0, "registerSystemAction"

    return-object v0

    .line 321
    :pswitch_67
    const-string v0, "getRecommendedTimeoutMillis"

    return-object v0

    .line 317
    :pswitch_6a
    const-string v0, "getAccessibilityWindowId"

    return-object v0

    .line 313
    :pswitch_6d
    const-string/jumbo v0, "sendFingerprintGesture"

    return-object v0

    .line 309
    :pswitch_71
    const-string v0, "getAccessibilityShortcutTargets"

    return-object v0

    .line 305
    :pswitch_74
    const-string v0, "performAccessibilityShortcut"

    return-object v0

    .line 301
    :pswitch_77
    const-string v0, "notifyAccessibilityButtonVisibilityChanged"

    return-object v0

    .line 297
    :pswitch_7a
    const-string v0, "notifyAccessibilityButtonLongClicked"

    return-object v0

    .line 293
    :pswitch_7d
    const-string v0, "notifyAccessibilityButtonClicked"

    return-object v0

    .line 289
    :pswitch_80
    const-string v0, "getWindowToken"

    return-object v0

    .line 285
    :pswitch_83
    const-string/jumbo v0, "unregisterUiTestAutomationService"

    return-object v0

    .line 281
    :pswitch_87
    const-string/jumbo v0, "registerUiTestAutomationService"

    return-object v0

    .line 277
    :pswitch_8b
    const-string/jumbo v0, "setPictureInPictureActionReplacingConnection"

    return-object v0

    .line 273
    :pswitch_8f
    const-string/jumbo v0, "removeAccessibilityInteractionConnection"

    return-object v0

    .line 269
    :pswitch_93
    const-string v0, "addAccessibilityInteractionConnection"

    return-object v0

    .line 265
    :pswitch_96
    const-string v0, "getEnabledAccessibilityServiceList"

    return-object v0

    .line 261
    :pswitch_99
    const-string v0, "getInstalledAccessibilityServiceList"

    return-object v0

    .line 257
    :pswitch_9c
    const-string/jumbo v0, "removeClient"

    return-object v0

    .line 253
    :pswitch_a0
    const-string v0, "addClient"

    return-object v0

    .line 249
    :pswitch_a3
    const-string/jumbo v0, "sendAccessibilityEvent"

    return-object v0

    .line 245
    :pswitch_a7
    const-string v0, "interrupt"

    return-object v0

    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_a7
        :pswitch_a3
        :pswitch_a0
        :pswitch_9c
        :pswitch_99
        :pswitch_96
        :pswitch_93
        :pswitch_8f
        :pswitch_8b
        :pswitch_87
        :pswitch_83
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6d
        :pswitch_6a
        :pswitch_67
        :pswitch_63
        :pswitch_5f
        :pswitch_5b
        :pswitch_58
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_48
        :pswitch_45
        :pswitch_41
        :pswitch_3d
        :pswitch_39
        :pswitch_35
        :pswitch_32
        :pswitch_2e
        :pswitch_2a
        :pswitch_26
        :pswitch_23
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
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

    .line 236
    return-object p0
.end method

.method protected blacklist attachAccessibilityOverlayToDisplay_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1925
    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1926
    return-void
.end method

.method protected blacklist enableShortcutsForTargets_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1936
    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_ACCESSIBILITY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1937
    return-void
.end method

.method protected blacklist getA11yFeatureToTileMap_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1941
    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_ACCESSIBILITY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1942
    return-void
.end method

.method protected blacklist getAccessibilityShortcutTargets_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1847
    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_ACCESSIBILITY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1848
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1948
    const/16 v0, 0x2f

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 444
    invoke-static {p1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getWindowToken_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1822
    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.RETRIEVE_WINDOW_CONTENT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1823
    return-void
.end method

.method protected blacklist injectInputEventToInputFilter_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1897
    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.INJECT_EVENTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1898
    return-void
.end method

.method protected blacklist isAccessibilityServiceWarningRequired_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1919
    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_ACCESSIBILITY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1920
    return-void
.end method

.method protected blacklist notifyAccessibilityButtonClicked_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1827
    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1828
    return-void
.end method

.method protected blacklist notifyAccessibilityButtonLongClicked_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1832
    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1833
    return-void
.end method

.method protected blacklist notifyAccessibilityButtonVisibilityChanged_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1837
    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1838
    return-void
.end method

.method protected blacklist notifyQuickSettingsTilesChanged_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1931
    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/view/accessibility/IAccessibilityManager$Stub;->PERMISSIONS_notifyQuickSettingsTilesChanged:[Ljava/lang/String;

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAllOf([Ljava/lang/String;II)V

    .line 1932
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 448
    const-string v6, "android.view.accessibility.IAccessibilityManager"

    .line 449
    .local v6, "descriptor":Ljava/lang/String;
    const/4 v7, 0x1

    if-lt p1, v7, :cond_d

    const v1, 0xffffff

    if-gt p1, v1, :cond_d

    .line 450
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 452
    :cond_d
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_16

    .line 453
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 454
    return v7

    .line 456
    :cond_16
    packed-switch p1, :pswitch_data_3fa

    .line 970
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 962
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/IUserInitializationCompleteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IUserInitializationCompleteCallback;

    move-result-object v1

    .line 963
    .local v1, "_arg0":Landroid/view/accessibility/IUserInitializationCompleteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 964
    invoke-virtual {p0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->unregisterUserInitializationCompleteCallback(Landroid/view/accessibility/IUserInitializationCompleteCallback;)V

    .line 965
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 966
    goto/16 :goto_3f8

    .line 953
    .end local v1    # "_arg0":Landroid/view/accessibility/IUserInitializationCompleteCallback;
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/IUserInitializationCompleteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IUserInitializationCompleteCallback;

    move-result-object v1

    .line 954
    .restart local v1    # "_arg0":Landroid/view/accessibility/IUserInitializationCompleteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 955
    invoke-virtual {p0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->registerUserInitializationCompleteCallback(Landroid/view/accessibility/IUserInitializationCompleteCallback;)V

    .line 956
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 957
    goto/16 :goto_3f8

    .line 943
    .end local v1    # "_arg0":Landroid/view/accessibility/IUserInitializationCompleteCallback;
    :pswitch_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 944
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 945
    invoke-virtual {p0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getA11yFeatureToTileMap(I)Landroid/os/Bundle;

    move-result-object v2

    .line 946
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 947
    invoke-virtual {p3, v2, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 948
    goto/16 :goto_3f8

    .line 929
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/os/Bundle;
    :pswitch_57
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 931
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 933
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 935
    .local v3, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 936
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 937
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/view/accessibility/IAccessibilityManager$Stub;->enableShortcutsForTargets(ZILjava/util/List;I)V

    .line 938
    goto/16 :goto_3f8

    .line 919
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_arg3":I
    :pswitch_6f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 921
    .local v1, "_arg0":I
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 922
    .local v2, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 923
    invoke-virtual {p0, v1, v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->notifyQuickSettingsTilesChanged(ILjava/util/List;)V

    .line 924
    goto/16 :goto_3f8

    .line 908
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :pswitch_81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 910
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControl;

    .line 911
    .local v2, "_arg1":Landroid/view/SurfaceControl;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 912
    invoke-virtual {p0, v1, v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->attachAccessibilityOverlayToDisplay(ILandroid/view/SurfaceControl;)V

    .line 913
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 914
    goto/16 :goto_3f8

    .line 898
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/view/SurfaceControl;
    :pswitch_98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 899
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 900
    invoke-virtual {p0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getWindowTransformationSpec(I)Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;

    move-result-object v2

    .line 901
    .local v2, "_result":Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 902
    invoke-virtual {p3, v2, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 903
    goto/16 :goto_3f8

    .line 888
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;
    :pswitch_ab
    sget-object v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 889
    .local v1, "_arg0":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 890
    invoke-virtual {p0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->isAccessibilityServiceWarningRequired(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z

    move-result v2

    .line 891
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 892
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 893
    goto/16 :goto_3f8

    .line 874
    .end local v1    # "_arg0":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v2    # "_result":Z
    :pswitch_c2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 876
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 878
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 879
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 880
    invoke-virtual {p0, v1, v2, v3}, Landroid/view/accessibility/IAccessibilityManager$Stub;->sendRestrictedDialogIntent(Ljava/lang/String;II)Z

    move-result v4

    .line 881
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 882
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 883
    goto/16 :goto_3f8

    .line 860
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Z
    :pswitch_dd
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 862
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 864
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 865
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 866
    invoke-virtual {p0, v1, v2, v3}, Landroid/view/accessibility/IAccessibilityManager$Stub;->isAccessibilityTargetAllowed(Ljava/lang/String;II)Z

    move-result v4

    .line 867
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 868
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 869
    goto/16 :goto_3f8

    .line 846
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Z
    :pswitch_f8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 848
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 850
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 851
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 852
    invoke-virtual {p0, v1, v2, v3}, Landroid/view/accessibility/IAccessibilityManager$Stub;->startFlashNotificationEvent(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v4

    .line 853
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 854
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 855
    goto/16 :goto_3f8

    .line 836
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_113
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 837
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 838
    invoke-virtual {p0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->stopFlashNotificationSequence(Ljava/lang/String;)Z

    move-result v2

    .line 839
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 840
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 841
    goto/16 :goto_3f8

    .line 822
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_126
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 824
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 826
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 827
    .local v3, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 828
    invoke-virtual {p0, v1, v2, v3}, Landroid/view/accessibility/IAccessibilityManager$Stub;->startFlashNotificationSequence(Ljava/lang/String;ILandroid/os/IBinder;)Z

    move-result v4

    .line 829
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 830
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 831
    goto/16 :goto_3f8

    .line 813
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/IBinder;
    .end local v4    # "_result":Z
    :pswitch_141
    sget-object v1, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InputEvent;

    .line 814
    .local v1, "_arg0":Landroid/view/InputEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 815
    invoke-virtual {p0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->injectInputEventToInputFilter(Landroid/view/InputEvent;)V

    .line 816
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 817
    goto/16 :goto_3f8

    .line 803
    .end local v1    # "_arg0":Landroid/view/InputEvent;
    :pswitch_154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 804
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 805
    invoke-virtual {p0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->unregisterProxyForDisplay(I)Z

    move-result v2

    .line 806
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 807
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 808
    goto/16 :goto_3f8

    .line 791
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_167
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v1

    .line 793
    .local v1, "_arg0":Landroid/accessibilityservice/IAccessibilityServiceClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 794
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 795
    invoke-virtual {p0, v1, v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->registerProxyForDisplay(Landroid/accessibilityservice/IAccessibilityServiceClient;I)Z

    move-result v3

    .line 796
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 797
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 798
    goto/16 :goto_3f8

    .line 777
    .end local v1    # "_arg0":Landroid/accessibilityservice/IAccessibilityServiceClient;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_182
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 779
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 781
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 783
    .local v3, "_arg2":I
    sget-object v4, Landroid/view/accessibility/AccessibilityWindowAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityWindowAttributes;

    .line 784
    .local v4, "_arg3":Landroid/view/accessibility/AccessibilityWindowAttributes;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 785
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/view/accessibility/IAccessibilityManager$Stub;->setAccessibilityWindowAttributes(IIILandroid/view/accessibility/AccessibilityWindowAttributes;)V

    .line 786
    goto/16 :goto_3f8

    .line 766
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/view/accessibility/AccessibilityWindowAttributes;
    :pswitch_19e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 768
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 769
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 770
    invoke-virtual {p0, v1, v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->setSystemAudioCaptioningUiEnabled(ZI)V

    .line 771
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 772
    goto/16 :goto_3f8

    .line 756
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":I
    :pswitch_1b1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 757
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 758
    invoke-virtual {p0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->isSystemAudioCaptioningUiEnabled(I)Z

    move-result v2

    .line 759
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 760
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 761
    goto/16 :goto_3f8

    .line 745
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_1c4
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 747
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 748
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 749
    invoke-virtual {p0, v1, v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->setSystemAudioCaptioningEnabled(ZI)V

    .line 750
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 751
    goto/16 :goto_3f8

    .line 737
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":I
    :pswitch_1d7
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->isAudioDescriptionByDefaultEnabled()Z

    move-result v1

    .line 738
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 739
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 740
    goto/16 :goto_3f8

    .line 730
    .end local v1    # "_result":Z
    :pswitch_1e3
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getFocusColor()I

    move-result v1

    .line 731
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 732
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 733
    goto/16 :goto_3f8

    .line 723
    .end local v1    # "_result":I
    :pswitch_1ef
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getFocusStrokeWidth()I

    move-result v1

    .line 724
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 725
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 726
    goto/16 :goto_3f8

    .line 715
    .end local v1    # "_result":I
    :pswitch_1fb
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 716
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 717
    invoke-virtual {p0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->disassociateEmbeddedHierarchy(Landroid/os/IBinder;)V

    .line 718
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 719
    goto/16 :goto_3f8

    .line 704
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_20a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 706
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 707
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 708
    invoke-virtual {p0, v1, v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->associateEmbeddedHierarchy(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 709
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 710
    goto/16 :goto_3f8

    .line 696
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    :pswitch_21d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/IMagnificationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IMagnificationConnection;

    move-result-object v1

    .line 697
    .local v1, "_arg0":Landroid/view/accessibility/IMagnificationConnection;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 698
    invoke-virtual {p0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->setMagnificationConnection(Landroid/view/accessibility/IMagnificationConnection;)V

    .line 699
    goto/16 :goto_3f8

    .line 688
    .end local v1    # "_arg0":Landroid/view/accessibility/IMagnificationConnection;
    :pswitch_22d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 689
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 690
    invoke-virtual {p0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->unregisterSystemAction(I)V

    .line 691
    goto/16 :goto_3f8

    .line 678
    .end local v1    # "_arg0":I
    :pswitch_239
    sget-object v1, Landroid/app/RemoteAction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/RemoteAction;

    .line 680
    .local v1, "_arg0":Landroid/app/RemoteAction;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 681
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 682
    invoke-virtual {p0, v1, v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->registerSystemAction(Landroid/app/RemoteAction;I)V

    .line 683
    goto/16 :goto_3f8

    .line 670
    .end local v1    # "_arg0":Landroid/app/RemoteAction;
    .end local v2    # "_arg1":I
    :pswitch_24d
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getRecommendedTimeoutMillis()J

    move-result-wide v1

    .line 671
    .local v1, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 672
    invoke-virtual {p3, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 673
    goto/16 :goto_3f8

    .line 661
    .end local v1    # "_result":J
    :pswitch_259
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 662
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 663
    invoke-virtual {p0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getAccessibilityWindowId(Landroid/os/IBinder;)I

    move-result v2

    .line 664
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 665
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 666
    goto/16 :goto_3f8

    .line 651
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_result":I
    :pswitch_26c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 652
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 653
    invoke-virtual {p0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->sendFingerprintGesture(I)Z

    move-result v2

    .line 654
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 655
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 656
    goto/16 :goto_3f8

    .line 641
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_27f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 642
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 643
    invoke-virtual {p0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getAccessibilityShortcutTargets(I)Ljava/util/List;

    move-result-object v2

    .line 644
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 645
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 646
    goto/16 :goto_3f8

    .line 628
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_292
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 630
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 632
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 633
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 634
    invoke-virtual {p0, v1, v2, v3}, Landroid/view/accessibility/IAccessibilityManager$Stub;->performAccessibilityShortcut(IILjava/lang/String;)V

    .line 635
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 636
    goto/16 :goto_3f8

    .line 619
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_2a9
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 620
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 621
    invoke-virtual {p0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->notifyAccessibilityButtonVisibilityChanged(Z)V

    .line 622
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 623
    goto/16 :goto_3f8

    .line 610
    .end local v1    # "_arg0":Z
    :pswitch_2b8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 611
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 612
    invoke-virtual {p0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->notifyAccessibilityButtonLongClicked(I)V

    .line 613
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 614
    goto/16 :goto_3f8

    .line 599
    .end local v1    # "_arg0":I
    :pswitch_2c7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 601
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 602
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 603
    invoke-virtual {p0, v1, v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->notifyAccessibilityButtonClicked(ILjava/lang/String;)V

    .line 604
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    goto/16 :goto_3f8

    .line 587
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_2da
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 589
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 590
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 591
    invoke-virtual {p0, v1, v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getWindowToken(II)Landroid/os/IBinder;

    move-result-object v3

    .line 592
    .local v3, "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 594
    goto/16 :goto_3f8

    .line 578
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/os/IBinder;
    :pswitch_2f1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v1

    .line 579
    .local v1, "_arg0":Landroid/accessibilityservice/IAccessibilityServiceClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 580
    invoke-virtual {p0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->unregisterUiTestAutomationService(Landroid/accessibilityservice/IAccessibilityServiceClient;)V

    .line 581
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 582
    goto/16 :goto_3f8

    .line 561
    .end local v1    # "_arg0":Landroid/accessibilityservice/IAccessibilityServiceClient;
    :pswitch_304
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 563
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v2

    .line 565
    .local v2, "_arg1":Landroid/accessibilityservice/IAccessibilityServiceClient;
    sget-object v3, Landroid/accessibilityservice/AccessibilityServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 567
    .local v3, "_arg2":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 569
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 570
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 571
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/view/accessibility/IAccessibilityManager$Stub;->registerUiTestAutomationService(Landroid/os/IBinder;Landroid/accessibilityservice/IAccessibilityServiceClient;Landroid/accessibilityservice/AccessibilityServiceInfo;II)V

    .line 572
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 573
    goto/16 :goto_3f8

    .line 552
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/accessibilityservice/IAccessibilityServiceClient;
    .end local v3    # "_arg2":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    :pswitch_32c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v1

    .line 553
    .local v1, "_arg0":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 554
    invoke-virtual {p0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->setPictureInPictureActionReplacingConnection(Landroid/view/accessibility/IAccessibilityInteractionConnection;)V

    .line 555
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    goto/16 :goto_3f8

    .line 543
    .end local v1    # "_arg0":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    :pswitch_33f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 544
    .local v1, "_arg0":Landroid/view/IWindow;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 545
    invoke-virtual {p0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V

    .line 546
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 547
    goto/16 :goto_3f8

    .line 525
    .end local v1    # "_arg0":Landroid/view/IWindow;
    :pswitch_352
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 527
    .restart local v1    # "_arg0":Landroid/view/IWindow;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 529
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v3

    .line 531
    .local v3, "_arg2":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 533
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 534
    .restart local v5    # "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 535
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/view/accessibility/IAccessibilityManager$Stub;->addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/os/IBinder;Landroid/view/accessibility/IAccessibilityInteractionConnection;Ljava/lang/String;I)I

    move-result v8

    .line 536
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 537
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 538
    goto/16 :goto_3f8

    .line 513
    .end local v1    # "_arg0":Landroid/view/IWindow;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":I
    .end local v8    # "_result":I
    :pswitch_37e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 515
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 516
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 517
    invoke-virtual {p0, v1, v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getEnabledAccessibilityServiceList(II)Ljava/util/List;

    move-result-object v3

    .line 518
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 519
    invoke-virtual {p3, v3, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 520
    goto :goto_3f8

    .line 503
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :pswitch_394
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 504
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 505
    invoke-virtual {p0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getInstalledAccessibilityServiceList(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 506
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    invoke-virtual {p3, v2, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 508
    goto :goto_3f8

    .line 491
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :pswitch_3a6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/IAccessibilityManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManagerClient;

    move-result-object v1

    .line 493
    .local v1, "_arg0":Landroid/view/accessibility/IAccessibilityManagerClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 494
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 495
    invoke-virtual {p0, v1, v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->removeClient(Landroid/view/accessibility/IAccessibilityManagerClient;I)Z

    move-result v3

    .line 496
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 498
    goto :goto_3f8

    .line 479
    .end local v1    # "_arg0":Landroid/view/accessibility/IAccessibilityManagerClient;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_3c0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/IAccessibilityManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManagerClient;

    move-result-object v1

    .line 481
    .restart local v1    # "_arg0":Landroid/view/accessibility/IAccessibilityManagerClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 482
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 483
    invoke-virtual {p0, v1, v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->addClient(Landroid/view/accessibility/IAccessibilityManagerClient;I)J

    move-result-wide v3

    .line 484
    .local v3, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 486
    goto :goto_3f8

    .line 469
    .end local v1    # "_arg0":Landroid/view/accessibility/IAccessibilityManagerClient;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":J
    :pswitch_3da
    sget-object v1, Landroid/view/accessibility/AccessibilityEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityEvent;

    .line 471
    .local v1, "_arg0":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 472
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 473
    invoke-virtual {p0, v1, v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 474
    goto :goto_3f8

    .line 461
    .end local v1    # "_arg0":Landroid/view/accessibility/AccessibilityEvent;
    .end local v2    # "_arg1":I
    :pswitch_3ed
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 462
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 463
    invoke-virtual {p0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->interrupt(I)V

    .line 464
    nop

    .line 973
    .end local v1    # "_arg0":I
    :goto_3f8
    return v7

    nop

    :pswitch_data_3fa
    .packed-switch 0x1
        :pswitch_3ed
        :pswitch_3da
        :pswitch_3c0
        :pswitch_3a6
        :pswitch_394
        :pswitch_37e
        :pswitch_352
        :pswitch_33f
        :pswitch_32c
        :pswitch_304
        :pswitch_2f1
        :pswitch_2da
        :pswitch_2c7
        :pswitch_2b8
        :pswitch_2a9
        :pswitch_292
        :pswitch_27f
        :pswitch_26c
        :pswitch_259
        :pswitch_24d
        :pswitch_239
        :pswitch_22d
        :pswitch_21d
        :pswitch_20a
        :pswitch_1fb
        :pswitch_1ef
        :pswitch_1e3
        :pswitch_1d7
        :pswitch_1c4
        :pswitch_1b1
        :pswitch_19e
        :pswitch_182
        :pswitch_167
        :pswitch_154
        :pswitch_141
        :pswitch_126
        :pswitch_113
        :pswitch_f8
        :pswitch_dd
        :pswitch_c2
        :pswitch_ab
        :pswitch_98
        :pswitch_81
        :pswitch_6f
        :pswitch_57
        :pswitch_44
        :pswitch_31
        :pswitch_1e
    .end packed-switch
.end method

.method protected blacklist performAccessibilityShortcut_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1842
    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_ACCESSIBILITY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1843
    return-void
.end method

.method protected blacklist registerProxyForDisplay_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1887
    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CREATE_VIRTUAL_DEVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1888
    return-void
.end method

.method protected blacklist registerSystemAction_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1855
    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_ACCESSIBILITY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1856
    return-void
.end method

.method protected blacklist registerUiTestAutomationService_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1816
    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.RETRIEVE_WINDOW_CONTENT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1817
    return-void
.end method

.method protected blacklist setMagnificationConnection_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1865
    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1866
    return-void
.end method

.method protected blacklist setPictureInPictureActionReplacingConnection_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1811
    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_ACCESSIBILITY_DATA"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1812
    return-void
.end method

.method protected blacklist setSystemAudioCaptioningEnabled_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1875
    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.SET_SYSTEM_AUDIO_CAPTION"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1876
    return-void
.end method

.method protected blacklist setSystemAudioCaptioningUiEnabled_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1881
    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.SET_SYSTEM_AUDIO_CAPTION"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1882
    return-void
.end method

.method protected blacklist startFlashNotificationEvent_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1912
    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_ACCESSIBILITY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1913
    return-void
.end method

.method protected blacklist startFlashNotificationSequence_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1902
    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_ACCESSIBILITY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1903
    return-void
.end method

.method protected blacklist stopFlashNotificationSequence_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1907
    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_ACCESSIBILITY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1908
    return-void
.end method

.method protected blacklist unregisterProxyForDisplay_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1892
    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CREATE_VIRTUAL_DEVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1893
    return-void
.end method

.method protected blacklist unregisterSystemAction_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1860
    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_ACCESSIBILITY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1861
    return-void
.end method
