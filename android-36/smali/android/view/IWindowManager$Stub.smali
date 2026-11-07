.class public abstract Landroid/view/IWindowManager$Stub;
.super Landroid/os/Binder;
.source "IWindowManager.java"

# interfaces
.implements Landroid/view/IWindowManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindowManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.view.IWindowManager"

.field static final blacklist TRANSACTION_addKeyguardLockedStateListener:I = 0x21

.field static final blacklist TRANSACTION_addShellRoot:I = 0x16

.field static final blacklist TRANSACTION_addToSurfaceSyncGroup:I = 0x91

.field static final greylist-max-o TRANSACTION_addWindowToken:I = 0x13

.field static final blacklist TRANSACTION_attachWindowContextToDisplayArea:I = 0x7f

.field static final blacklist TRANSACTION_attachWindowContextToDisplayContent:I = 0x81

.field static final blacklist TRANSACTION_attachWindowContextToWindowToken:I = 0x80

.field static final blacklist TRANSACTION_captureDisplay:I = 0x8f

.field static final greylist-max-o TRANSACTION_clearForcedDisplayDensityForUser:I = 0xd

.field static final greylist-max-o TRANSACTION_clearForcedDisplaySize:I = 0x8

.field static final greylist-max-o TRANSACTION_clearWindowContentFrameStats:I = 0x4c

.field static final greylist-max-o TRANSACTION_closeSystemDialogs:I = 0x24

.field static final greylist-max-o TRANSACTION_createInputConsumer:I = 0x54

.field static final greylist-max-o TRANSACTION_destroyInputConsumer:I = 0x55

.field static final blacklist TRANSACTION_detachWindowContext:I = 0x82

.field static final greylist-max-o TRANSACTION_disableKeyguard:I = 0x1b

.field static final greylist-max-o TRANSACTION_dismissKeyguard:I = 0x20

.field static final greylist-max-o TRANSACTION_endProlongedAnimations:I = 0x1a

.field static final greylist-max-o TRANSACTION_exitKeyguardSecurely:I = 0x1d

.field static final blacklist TRANSACTION_freezeDisplayRotation:I = 0x39

.field static final greylist-max-o TRANSACTION_freezeRotation:I = 0x36

.field static final greylist-max-o TRANSACTION_getAnimationScale:I = 0x25

.field static final greylist-max-o TRANSACTION_getAnimationScales:I = 0x26

.field static final blacklist TRANSACTION_getApplicationLaunchKeyboardShortcuts:I = 0x9d

.field static final greylist-max-o TRANSACTION_getBaseDisplayDensity:I = 0xa

.field static final greylist-max-o TRANSACTION_getBaseDisplaySize:I = 0x6

.field static final greylist-max-o TRANSACTION_getCurrentAnimatorScale:I = 0x29

.field static final greylist-max-o TRANSACTION_getCurrentImeTouchRegion:I = 0x56

.field static final greylist-max-o TRANSACTION_getDefaultDisplayRotation:I = 0x30

.field static final blacklist TRANSACTION_getDisplayIdByUniqueId:I = 0xb

.field static final blacklist TRANSACTION_getDisplayImePolicy:I = 0x6b

.field static final blacklist TRANSACTION_getDisplayUserRotation:I = 0x31

.field static final greylist-max-o TRANSACTION_getDockedStackSide:I = 0x4e

.field static final blacklist TRANSACTION_getIgnoreOrientationRequest:I = 0x9e

.field static final blacklist TRANSACTION_getImeDisplayId:I = 0x87

.field static final greylist-max-o TRANSACTION_getInitialDisplayDensity:I = 0x9

.field static final greylist-max-o TRANSACTION_getInitialDisplaySize:I = 0x5

.field static final blacklist TRANSACTION_getLetterboxBackgroundColorInArgb:I = 0x8d

.field static final blacklist TRANSACTION_getPossibleDisplayInfo:I = 0x76

.field static final greylist-max-o TRANSACTION_getPreferredOptionsPanelGravity:I = 0x35

.field static final blacklist TRANSACTION_getRemoveContentMode:I = 0x64

.field static final greylist-max-o TRANSACTION_getStableInsets:I = 0x52

.field static final blacklist TRANSACTION_getSupportedDisplayHashAlgorithms:I = 0x7c

.field static final greylist-max-o TRANSACTION_getWindowContentFrameStats:I = 0x4d

.field static final blacklist TRANSACTION_getWindowInsets:I = 0x75

.field static final blacklist TRANSACTION_getWindowingMode:I = 0x62

.field static final greylist-max-o TRANSACTION_hasNavigationBar:I = 0x49

.field static final blacklist TRANSACTION_hideTransientBars:I = 0x45

.field static final blacklist TRANSACTION_holdLock:I = 0x7b

.field static final blacklist TRANSACTION_isDisplayRotationFrozen:I = 0x3b

.field static final blacklist TRANSACTION_isEligibleForDesktopMode:I = 0x6a

.field static final blacklist TRANSACTION_isGlobalKey:I = 0x90

.field static final blacklist TRANSACTION_isInTouchMode:I = 0x2c

.field static final greylist-max-o TRANSACTION_isKeyguardLocked:I = 0x1e

.field static final greylist-max-o TRANSACTION_isKeyguardSecure:I = 0x1f

.field static final blacklist TRANSACTION_isLayerTracing:I = 0x6f

.field static final blacklist TRANSACTION_isLetterboxBackgroundMultiColored:I = 0x8e

.field static final greylist-max-o TRANSACTION_isRotationFrozen:I = 0x38

.field static final greylist-max-o TRANSACTION_isSafeModeEnabled:I = 0x4b

.field static final blacklist TRANSACTION_isTaskSnapshotSupported:I = 0x86

.field static final blacklist TRANSACTION_isTransitionTraceEnabled:I = 0x61

.field static final greylist-max-o TRANSACTION_isViewServerRunning:I = 0x3

.field static final blacklist TRANSACTION_isWindowToken:I = 0x12

.field static final greylist-max-o TRANSACTION_isWindowTraceEnabled:I = 0x5e

.field static final greylist-max-o TRANSACTION_lockNow:I = 0x4a

.field static final blacklist TRANSACTION_markSurfaceSyncGroupReady:I = 0x92

.field static final blacklist TRANSACTION_mirrorDisplay:I = 0x71

.field static final blacklist TRANSACTION_mirrorWallpaperSurface:I = 0x3f

.field static final blacklist TRANSACTION_notifyScreenshotListeners:I = 0x93

.field static final blacklist TRANSACTION_onNotificationShadeExpanded:I = 0x6d

.field static final greylist-max-o TRANSACTION_openSession:I = 0x4

.field static final greylist-max-o TRANSACTION_overridePendingAppTransitionMultiThumbFuture:I = 0x18

.field static final greylist-max-o TRANSACTION_overridePendingAppTransitionRemote:I = 0x19

.field static final greylist-max-o TRANSACTION_reenableKeyguard:I = 0x1c

.field static final greylist-max-o TRANSACTION_refreshScreenCaptureDisabled:I = 0x2f

.field static final blacklist TRANSACTION_registerCrossWindowBlurEnabledListener:I = 0x84

.field static final blacklist TRANSACTION_registerDecorViewGestureListener:I = 0x95

.field static final blacklist TRANSACTION_registerDisplayFoldListener:I = 0x57

.field static final blacklist TRANSACTION_registerDisplayWindowListener:I = 0x59

.field static final blacklist TRANSACTION_registerPinnedTaskListener:I = 0x4f

.field static final blacklist TRANSACTION_registerProposedRotationListener:I = 0x34

.field static final blacklist TRANSACTION_registerScreenRecordingCallback:I = 0x99

.field static final greylist-max-o TRANSACTION_registerShortcutKey:I = 0x53

.field static final blacklist TRANSACTION_registerSystemGestureExclusionListener:I = 0x42

.field static final blacklist TRANSACTION_registerTaskFpsCallback:I = 0x89

.field static final blacklist TRANSACTION_registerTrustedPresentationListener:I = 0x97

.field static final greylist-max-o TRANSACTION_registerWallpaperVisibilityListener:I = 0x40

.field static final blacklist TRANSACTION_removeKeyguardLockedStateListener:I = 0x22

.field static final greylist-max-o TRANSACTION_removeRotationWatcher:I = 0x33

.field static final greylist-max-o TRANSACTION_removeWindowToken:I = 0x14

.field static final blacklist TRANSACTION_reparentWindowContextToDisplayArea:I = 0x83

.field static final blacklist TRANSACTION_replaceContentOnDisplay:I = 0x94

.field static final greylist-max-o TRANSACTION_requestAppKeyboardShortcuts:I = 0x50

.field static final greylist-max-o TRANSACTION_requestAssistScreenshot:I = 0x44

.field static final blacklist TRANSACTION_requestImeKeyboardShortcuts:I = 0x51

.field static final blacklist TRANSACTION_requestScrollCapture:I = 0x7a

.field static final blacklist TRANSACTION_saveWindowTraceToFile:I = 0x5d

.field static final greylist-max-o TRANSACTION_screenshotWallpaper:I = 0x3e

.field static final blacklist TRANSACTION_setActiveTransactionTracing:I = 0x79

.field static final greylist-max-o TRANSACTION_setAnimationScale:I = 0x27

.field static final greylist-max-o TRANSACTION_setAnimationScales:I = 0x28

.field static final blacklist TRANSACTION_setConfigurationChangeSettingsForUser:I = 0xf

.field static final blacklist TRANSACTION_setDisplayChangeWindowController:I = 0x15

.field static final blacklist TRANSACTION_setDisplayHashThrottlingEnabled:I = 0x7e

.field static final blacklist TRANSACTION_setDisplayImePolicy:I = 0x6c

.field static final blacklist TRANSACTION_setDisplayWindowInsetsController:I = 0x72

.field static final greylist-max-o TRANSACTION_setEventDispatching:I = 0x11

.field static final blacklist TRANSACTION_setFixedToUserRotation:I = 0x3c

.field static final greylist-max-o TRANSACTION_setForcedDisplayDensityForUser:I = 0xc

.field static final blacklist TRANSACTION_setForcedDisplayDensityRatio:I = 0xe

.field static final greylist-max-o TRANSACTION_setForcedDisplayScalingMode:I = 0x10

.field static final greylist-max-o TRANSACTION_setForcedDisplaySize:I = 0x7

.field static final blacklist TRANSACTION_setGlobalDragListener:I = 0x9b

.field static final blacklist TRANSACTION_setIgnoreOrientationRequest:I = 0x3d

.field static final greylist-max-o TRANSACTION_setInTouchMode:I = 0x2a

.field static final blacklist TRANSACTION_setInTouchModeOnAllDisplays:I = 0x2b

.field static final blacklist TRANSACTION_setLayerTracing:I = 0x70

.field static final blacklist TRANSACTION_setLayerTracingFlags:I = 0x78

.field static final greylist-max-o TRANSACTION_setNavBarVirtualKeyHapticFeedbackEnabled:I = 0x48

.field static final blacklist TRANSACTION_setRecentsAppBehindSystemBars:I = 0x8c

.field static final greylist-max-o TRANSACTION_setRecentsVisibility:I = 0x46

.field static final blacklist TRANSACTION_setRemoveContentMode:I = 0x65

.field static final blacklist TRANSACTION_setShellRootAccessibilityWindow:I = 0x17

.field static final blacklist TRANSACTION_setShouldShowSystemDecors:I = 0x69

.field static final blacklist TRANSACTION_setShouldShowWithInsecureKeyguard:I = 0x67

.field static final greylist-max-o TRANSACTION_setStrictModeVisualIndicatorPreference:I = 0x2e

.field static final greylist-max-o TRANSACTION_setSwitchingUser:I = 0x23

.field static final blacklist TRANSACTION_setTaskSnapshotEnabled:I = 0x88

.field static final blacklist TRANSACTION_setWindowingMode:I = 0x63

.field static final blacklist TRANSACTION_shouldShowSystemDecors:I = 0x68

.field static final blacklist TRANSACTION_shouldShowWithInsecureKeyguard:I = 0x66

.field static final blacklist TRANSACTION_showGlobalActions:I = 0x77

.field static final greylist-max-o TRANSACTION_showStrictModeViolation:I = 0x2d

.field static final blacklist TRANSACTION_snapshotTaskForRecents:I = 0x8b

.field static final blacklist TRANSACTION_startTransitionTrace:I = 0x5f

.field static final greylist-max-o TRANSACTION_startViewServer:I = 0x1

.field static final greylist-max-o TRANSACTION_startWindowTrace:I = 0x5b

.field static final blacklist TRANSACTION_stopTransitionTrace:I = 0x60

.field static final greylist-max-o TRANSACTION_stopViewServer:I = 0x2

.field static final greylist-max-o TRANSACTION_stopWindowTrace:I = 0x5c

.field static final blacklist TRANSACTION_syncInputTransactions:I = 0x6e

.field static final blacklist TRANSACTION_thawDisplayRotation:I = 0x3a

.field static final greylist-max-o TRANSACTION_thawRotation:I = 0x37

.field static final blacklist TRANSACTION_transferTouchGesture:I = 0x9c

.field static final blacklist TRANSACTION_unregisterCrossWindowBlurEnabledListener:I = 0x85

.field static final blacklist TRANSACTION_unregisterDecorViewGestureListener:I = 0x96

.field static final blacklist TRANSACTION_unregisterDisplayFoldListener:I = 0x58

.field static final blacklist TRANSACTION_unregisterDisplayWindowListener:I = 0x5a

.field static final blacklist TRANSACTION_unregisterScreenRecordingCallback:I = 0x9a

.field static final blacklist TRANSACTION_unregisterSystemGestureExclusionListener:I = 0x43

.field static final blacklist TRANSACTION_unregisterTaskFpsCallback:I = 0x8a

.field static final blacklist TRANSACTION_unregisterTrustedPresentationListener:I = 0x98

.field static final greylist-max-o TRANSACTION_unregisterWallpaperVisibilityListener:I = 0x41

.field static final blacklist TRANSACTION_updateDisplayWindowAnimatingTypes:I = 0x74

.field static final blacklist TRANSACTION_updateDisplayWindowRequestedVisibleTypes:I = 0x73

.field static final blacklist TRANSACTION_updateStaticPrivacyIndicatorBounds:I = 0x47

.field static final blacklist TRANSACTION_verifyDisplayHash:I = 0x7d

.field static final greylist-max-o TRANSACTION_watchRotation:I = 0x32


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor greylist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1229
    nop

    .line 1230
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 1229
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/IWindowManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 1231
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 1219
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 1220
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p0, p0, v0}, Landroid/view/IWindowManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 1221
    if-eqz p1, :cond_d

    .line 1224
    iput-object p1, p0, Landroid/view/IWindowManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 1225
    return-void

    .line 1222
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 1238
    if-nez p0, :cond_4

    .line 1239
    const/4 v0, 0x0

    return-object v0

    .line 1241
    :cond_4
    const-string v0, "android.view.IWindowManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 1242
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/IWindowManager;

    if-eqz v1, :cond_14

    .line 1243
    move-object v1, v0

    check-cast v1, Landroid/view/IWindowManager;

    return-object v1

    .line 1245
    :cond_14
    new-instance v1, Landroid/view/IWindowManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IWindowManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 1254
    packed-switch p0, :pswitch_data_234

    .line 1890
    const/4 v0, 0x0

    return-object v0

    .line 1886
    :pswitch_5
    const-string v0, "getIgnoreOrientationRequest"

    return-object v0

    .line 1882
    :pswitch_8
    const-string v0, "getApplicationLaunchKeyboardShortcuts"

    return-object v0

    .line 1878
    :pswitch_b
    const-string/jumbo v0, "transferTouchGesture"

    return-object v0

    .line 1874
    :pswitch_f
    const-string/jumbo v0, "setGlobalDragListener"

    return-object v0

    .line 1870
    :pswitch_13
    const-string/jumbo v0, "unregisterScreenRecordingCallback"

    return-object v0

    .line 1866
    :pswitch_17
    const-string/jumbo v0, "registerScreenRecordingCallback"

    return-object v0

    .line 1862
    :pswitch_1b
    const-string/jumbo v0, "unregisterTrustedPresentationListener"

    return-object v0

    .line 1858
    :pswitch_1f
    const-string/jumbo v0, "registerTrustedPresentationListener"

    return-object v0

    .line 1854
    :pswitch_23
    const-string/jumbo v0, "unregisterDecorViewGestureListener"

    return-object v0

    .line 1850
    :pswitch_27
    const-string/jumbo v0, "registerDecorViewGestureListener"

    return-object v0

    .line 1846
    :pswitch_2b
    const-string/jumbo v0, "replaceContentOnDisplay"

    return-object v0

    .line 1842
    :pswitch_2f
    const-string v0, "notifyScreenshotListeners"

    return-object v0

    .line 1838
    :pswitch_32
    const-string v0, "markSurfaceSyncGroupReady"

    return-object v0

    .line 1834
    :pswitch_35
    const-string v0, "addToSurfaceSyncGroup"

    return-object v0

    .line 1830
    :pswitch_38
    const-string v0, "isGlobalKey"

    return-object v0

    .line 1826
    :pswitch_3b
    const-string v0, "captureDisplay"

    return-object v0

    .line 1822
    :pswitch_3e
    const-string v0, "isLetterboxBackgroundMultiColored"

    return-object v0

    .line 1818
    :pswitch_41
    const-string v0, "getLetterboxBackgroundColorInArgb"

    return-object v0

    .line 1814
    :pswitch_44
    const-string/jumbo v0, "setRecentsAppBehindSystemBars"

    return-object v0

    .line 1810
    :pswitch_48
    const-string/jumbo v0, "snapshotTaskForRecents"

    return-object v0

    .line 1806
    :pswitch_4c
    const-string/jumbo v0, "unregisterTaskFpsCallback"

    return-object v0

    .line 1802
    :pswitch_50
    const-string/jumbo v0, "registerTaskFpsCallback"

    return-object v0

    .line 1798
    :pswitch_54
    const-string/jumbo v0, "setTaskSnapshotEnabled"

    return-object v0

    .line 1794
    :pswitch_58
    const-string v0, "getImeDisplayId"

    return-object v0

    .line 1790
    :pswitch_5b
    const-string v0, "isTaskSnapshotSupported"

    return-object v0

    .line 1786
    :pswitch_5e
    const-string/jumbo v0, "unregisterCrossWindowBlurEnabledListener"

    return-object v0

    .line 1782
    :pswitch_62
    const-string/jumbo v0, "registerCrossWindowBlurEnabledListener"

    return-object v0

    .line 1778
    :pswitch_66
    const-string/jumbo v0, "reparentWindowContextToDisplayArea"

    return-object v0

    .line 1774
    :pswitch_6a
    const-string v0, "detachWindowContext"

    return-object v0

    .line 1770
    :pswitch_6d
    const-string v0, "attachWindowContextToDisplayContent"

    return-object v0

    .line 1766
    :pswitch_70
    const-string v0, "attachWindowContextToWindowToken"

    return-object v0

    .line 1762
    :pswitch_73
    const-string v0, "attachWindowContextToDisplayArea"

    return-object v0

    .line 1758
    :pswitch_76
    const-string/jumbo v0, "setDisplayHashThrottlingEnabled"

    return-object v0

    .line 1754
    :pswitch_7a
    const-string/jumbo v0, "verifyDisplayHash"

    return-object v0

    .line 1750
    :pswitch_7e
    const-string v0, "getSupportedDisplayHashAlgorithms"

    return-object v0

    .line 1746
    :pswitch_81
    const-string v0, "holdLock"

    return-object v0

    .line 1742
    :pswitch_84
    const-string/jumbo v0, "requestScrollCapture"

    return-object v0

    .line 1738
    :pswitch_88
    const-string/jumbo v0, "setActiveTransactionTracing"

    return-object v0

    .line 1734
    :pswitch_8c
    const-string/jumbo v0, "setLayerTracingFlags"

    return-object v0

    .line 1730
    :pswitch_90
    const-string/jumbo v0, "showGlobalActions"

    return-object v0

    .line 1726
    :pswitch_94
    const-string v0, "getPossibleDisplayInfo"

    return-object v0

    .line 1722
    :pswitch_97
    const-string v0, "getWindowInsets"

    return-object v0

    .line 1718
    :pswitch_9a
    const-string/jumbo v0, "updateDisplayWindowAnimatingTypes"

    return-object v0

    .line 1714
    :pswitch_9e
    const-string/jumbo v0, "updateDisplayWindowRequestedVisibleTypes"

    return-object v0

    .line 1710
    :pswitch_a2
    const-string/jumbo v0, "setDisplayWindowInsetsController"

    return-object v0

    .line 1706
    :pswitch_a6
    const-string v0, "mirrorDisplay"

    return-object v0

    .line 1702
    :pswitch_a9
    const-string/jumbo v0, "setLayerTracing"

    return-object v0

    .line 1698
    :pswitch_ad
    const-string v0, "isLayerTracing"

    return-object v0

    .line 1694
    :pswitch_b0
    const-string/jumbo v0, "syncInputTransactions"

    return-object v0

    .line 1690
    :pswitch_b4
    const-string v0, "onNotificationShadeExpanded"

    return-object v0

    .line 1686
    :pswitch_b7
    const-string/jumbo v0, "setDisplayImePolicy"

    return-object v0

    .line 1682
    :pswitch_bb
    const-string v0, "getDisplayImePolicy"

    return-object v0

    .line 1678
    :pswitch_be
    const-string v0, "isEligibleForDesktopMode"

    return-object v0

    .line 1674
    :pswitch_c1
    const-string/jumbo v0, "setShouldShowSystemDecors"

    return-object v0

    .line 1670
    :pswitch_c5
    const-string/jumbo v0, "shouldShowSystemDecors"

    return-object v0

    .line 1666
    :pswitch_c9
    const-string/jumbo v0, "setShouldShowWithInsecureKeyguard"

    return-object v0

    .line 1662
    :pswitch_cd
    const-string/jumbo v0, "shouldShowWithInsecureKeyguard"

    return-object v0

    .line 1658
    :pswitch_d1
    const-string/jumbo v0, "setRemoveContentMode"

    return-object v0

    .line 1654
    :pswitch_d5
    const-string v0, "getRemoveContentMode"

    return-object v0

    .line 1650
    :pswitch_d8
    const-string/jumbo v0, "setWindowingMode"

    return-object v0

    .line 1646
    :pswitch_dc
    const-string v0, "getWindowingMode"

    return-object v0

    .line 1642
    :pswitch_df
    const-string v0, "isTransitionTraceEnabled"

    return-object v0

    .line 1638
    :pswitch_e2
    const-string/jumbo v0, "stopTransitionTrace"

    return-object v0

    .line 1634
    :pswitch_e6
    const-string/jumbo v0, "startTransitionTrace"

    return-object v0

    .line 1630
    :pswitch_ea
    const-string v0, "isWindowTraceEnabled"

    return-object v0

    .line 1626
    :pswitch_ed
    const-string/jumbo v0, "saveWindowTraceToFile"

    return-object v0

    .line 1622
    :pswitch_f1
    const-string/jumbo v0, "stopWindowTrace"

    return-object v0

    .line 1618
    :pswitch_f5
    const-string/jumbo v0, "startWindowTrace"

    return-object v0

    .line 1614
    :pswitch_f9
    const-string/jumbo v0, "unregisterDisplayWindowListener"

    return-object v0

    .line 1610
    :pswitch_fd
    const-string/jumbo v0, "registerDisplayWindowListener"

    return-object v0

    .line 1606
    :pswitch_101
    const-string/jumbo v0, "unregisterDisplayFoldListener"

    return-object v0

    .line 1602
    :pswitch_105
    const-string/jumbo v0, "registerDisplayFoldListener"

    return-object v0

    .line 1598
    :pswitch_109
    const-string v0, "getCurrentImeTouchRegion"

    return-object v0

    .line 1594
    :pswitch_10c
    const-string v0, "destroyInputConsumer"

    return-object v0

    .line 1590
    :pswitch_10f
    const-string v0, "createInputConsumer"

    return-object v0

    .line 1586
    :pswitch_112
    const-string/jumbo v0, "registerShortcutKey"

    return-object v0

    .line 1582
    :pswitch_116
    const-string v0, "getStableInsets"

    return-object v0

    .line 1578
    :pswitch_119
    const-string/jumbo v0, "requestImeKeyboardShortcuts"

    return-object v0

    .line 1574
    :pswitch_11d
    const-string/jumbo v0, "requestAppKeyboardShortcuts"

    return-object v0

    .line 1570
    :pswitch_121
    const-string/jumbo v0, "registerPinnedTaskListener"

    return-object v0

    .line 1566
    :pswitch_125
    const-string v0, "getDockedStackSide"

    return-object v0

    .line 1562
    :pswitch_128
    const-string v0, "getWindowContentFrameStats"

    return-object v0

    .line 1558
    :pswitch_12b
    const-string v0, "clearWindowContentFrameStats"

    return-object v0

    .line 1554
    :pswitch_12e
    const-string v0, "isSafeModeEnabled"

    return-object v0

    .line 1550
    :pswitch_131
    const-string v0, "lockNow"

    return-object v0

    .line 1546
    :pswitch_134
    const-string v0, "hasNavigationBar"

    return-object v0

    .line 1542
    :pswitch_137
    const-string/jumbo v0, "setNavBarVirtualKeyHapticFeedbackEnabled"

    return-object v0

    .line 1538
    :pswitch_13b
    const-string/jumbo v0, "updateStaticPrivacyIndicatorBounds"

    return-object v0

    .line 1534
    :pswitch_13f
    const-string/jumbo v0, "setRecentsVisibility"

    return-object v0

    .line 1530
    :pswitch_143
    const-string v0, "hideTransientBars"

    return-object v0

    .line 1526
    :pswitch_146
    const-string/jumbo v0, "requestAssistScreenshot"

    return-object v0

    .line 1522
    :pswitch_14a
    const-string/jumbo v0, "unregisterSystemGestureExclusionListener"

    return-object v0

    .line 1518
    :pswitch_14e
    const-string/jumbo v0, "registerSystemGestureExclusionListener"

    return-object v0

    .line 1514
    :pswitch_152
    const-string/jumbo v0, "unregisterWallpaperVisibilityListener"

    return-object v0

    .line 1510
    :pswitch_156
    const-string/jumbo v0, "registerWallpaperVisibilityListener"

    return-object v0

    .line 1506
    :pswitch_15a
    const-string v0, "mirrorWallpaperSurface"

    return-object v0

    .line 1502
    :pswitch_15d
    const-string/jumbo v0, "screenshotWallpaper"

    return-object v0

    .line 1498
    :pswitch_161
    const-string/jumbo v0, "setIgnoreOrientationRequest"

    return-object v0

    .line 1494
    :pswitch_165
    const-string/jumbo v0, "setFixedToUserRotation"

    return-object v0

    .line 1490
    :pswitch_169
    const-string v0, "isDisplayRotationFrozen"

    return-object v0

    .line 1486
    :pswitch_16c
    const-string/jumbo v0, "thawDisplayRotation"

    return-object v0

    .line 1482
    :pswitch_170
    const-string v0, "freezeDisplayRotation"

    return-object v0

    .line 1478
    :pswitch_173
    const-string v0, "isRotationFrozen"

    return-object v0

    .line 1474
    :pswitch_176
    const-string/jumbo v0, "thawRotation"

    return-object v0

    .line 1470
    :pswitch_17a
    const-string v0, "freezeRotation"

    return-object v0

    .line 1466
    :pswitch_17d
    const-string v0, "getPreferredOptionsPanelGravity"

    return-object v0

    .line 1462
    :pswitch_180
    const-string/jumbo v0, "registerProposedRotationListener"

    return-object v0

    .line 1458
    :pswitch_184
    const-string/jumbo v0, "removeRotationWatcher"

    return-object v0

    .line 1454
    :pswitch_188
    const-string/jumbo v0, "watchRotation"

    return-object v0

    .line 1450
    :pswitch_18c
    const-string v0, "getDisplayUserRotation"

    return-object v0

    .line 1446
    :pswitch_18f
    const-string v0, "getDefaultDisplayRotation"

    return-object v0

    .line 1442
    :pswitch_192
    const-string/jumbo v0, "refreshScreenCaptureDisabled"

    return-object v0

    .line 1438
    :pswitch_196
    const-string/jumbo v0, "setStrictModeVisualIndicatorPreference"

    return-object v0

    .line 1434
    :pswitch_19a
    const-string/jumbo v0, "showStrictModeViolation"

    return-object v0

    .line 1430
    :pswitch_19e
    const-string v0, "isInTouchMode"

    return-object v0

    .line 1426
    :pswitch_1a1
    const-string/jumbo v0, "setInTouchModeOnAllDisplays"

    return-object v0

    .line 1422
    :pswitch_1a5
    const-string/jumbo v0, "setInTouchMode"

    return-object v0

    .line 1418
    :pswitch_1a9
    const-string v0, "getCurrentAnimatorScale"

    return-object v0

    .line 1414
    :pswitch_1ac
    const-string/jumbo v0, "setAnimationScales"

    return-object v0

    .line 1410
    :pswitch_1b0
    const-string/jumbo v0, "setAnimationScale"

    return-object v0

    .line 1406
    :pswitch_1b4
    const-string v0, "getAnimationScales"

    return-object v0

    .line 1402
    :pswitch_1b7
    const-string v0, "getAnimationScale"

    return-object v0

    .line 1398
    :pswitch_1ba
    const-string v0, "closeSystemDialogs"

    return-object v0

    .line 1394
    :pswitch_1bd
    const-string/jumbo v0, "setSwitchingUser"

    return-object v0

    .line 1390
    :pswitch_1c1
    const-string/jumbo v0, "removeKeyguardLockedStateListener"

    return-object v0

    .line 1386
    :pswitch_1c5
    const-string v0, "addKeyguardLockedStateListener"

    return-object v0

    .line 1382
    :pswitch_1c8
    const-string v0, "dismissKeyguard"

    return-object v0

    .line 1378
    :pswitch_1cb
    const-string v0, "isKeyguardSecure"

    return-object v0

    .line 1374
    :pswitch_1ce
    const-string v0, "isKeyguardLocked"

    return-object v0

    .line 1370
    :pswitch_1d1
    const-string v0, "exitKeyguardSecurely"

    return-object v0

    .line 1366
    :pswitch_1d4
    const-string/jumbo v0, "reenableKeyguard"

    return-object v0

    .line 1362
    :pswitch_1d8
    const-string v0, "disableKeyguard"

    return-object v0

    .line 1358
    :pswitch_1db
    const-string v0, "endProlongedAnimations"

    return-object v0

    .line 1354
    :pswitch_1de
    const-string v0, "overridePendingAppTransitionRemote"

    return-object v0

    .line 1350
    :pswitch_1e1
    const-string v0, "overridePendingAppTransitionMultiThumbFuture"

    return-object v0

    .line 1346
    :pswitch_1e4
    const-string/jumbo v0, "setShellRootAccessibilityWindow"

    return-object v0

    .line 1342
    :pswitch_1e8
    const-string v0, "addShellRoot"

    return-object v0

    .line 1338
    :pswitch_1eb
    const-string/jumbo v0, "setDisplayChangeWindowController"

    return-object v0

    .line 1334
    :pswitch_1ef
    const-string/jumbo v0, "removeWindowToken"

    return-object v0

    .line 1330
    :pswitch_1f3
    const-string v0, "addWindowToken"

    return-object v0

    .line 1326
    :pswitch_1f6
    const-string v0, "isWindowToken"

    return-object v0

    .line 1322
    :pswitch_1f9
    const-string/jumbo v0, "setEventDispatching"

    return-object v0

    .line 1318
    :pswitch_1fd
    const-string/jumbo v0, "setForcedDisplayScalingMode"

    return-object v0

    .line 1314
    :pswitch_201
    const-string/jumbo v0, "setConfigurationChangeSettingsForUser"

    return-object v0

    .line 1310
    :pswitch_205
    const-string/jumbo v0, "setForcedDisplayDensityRatio"

    return-object v0

    .line 1306
    :pswitch_209
    const-string v0, "clearForcedDisplayDensityForUser"

    return-object v0

    .line 1302
    :pswitch_20c
    const-string/jumbo v0, "setForcedDisplayDensityForUser"

    return-object v0

    .line 1298
    :pswitch_210
    const-string v0, "getDisplayIdByUniqueId"

    return-object v0

    .line 1294
    :pswitch_213
    const-string v0, "getBaseDisplayDensity"

    return-object v0

    .line 1290
    :pswitch_216
    const-string v0, "getInitialDisplayDensity"

    return-object v0

    .line 1286
    :pswitch_219
    const-string v0, "clearForcedDisplaySize"

    return-object v0

    .line 1282
    :pswitch_21c
    const-string/jumbo v0, "setForcedDisplaySize"

    return-object v0

    .line 1278
    :pswitch_220
    const-string v0, "getBaseDisplaySize"

    return-object v0

    .line 1274
    :pswitch_223
    const-string v0, "getInitialDisplaySize"

    return-object v0

    .line 1270
    :pswitch_226
    const-string v0, "openSession"

    return-object v0

    .line 1266
    :pswitch_229
    const-string v0, "isViewServerRunning"

    return-object v0

    .line 1262
    :pswitch_22c
    const-string/jumbo v0, "stopViewServer"

    return-object v0

    .line 1258
    :pswitch_230
    const-string/jumbo v0, "startViewServer"

    return-object v0

    :pswitch_data_234
    .packed-switch 0x1
        :pswitch_230
        :pswitch_22c
        :pswitch_229
        :pswitch_226
        :pswitch_223
        :pswitch_220
        :pswitch_21c
        :pswitch_219
        :pswitch_216
        :pswitch_213
        :pswitch_210
        :pswitch_20c
        :pswitch_209
        :pswitch_205
        :pswitch_201
        :pswitch_1fd
        :pswitch_1f9
        :pswitch_1f6
        :pswitch_1f3
        :pswitch_1ef
        :pswitch_1eb
        :pswitch_1e8
        :pswitch_1e4
        :pswitch_1e1
        :pswitch_1de
        :pswitch_1db
        :pswitch_1d8
        :pswitch_1d4
        :pswitch_1d1
        :pswitch_1ce
        :pswitch_1cb
        :pswitch_1c8
        :pswitch_1c5
        :pswitch_1c1
        :pswitch_1bd
        :pswitch_1ba
        :pswitch_1b7
        :pswitch_1b4
        :pswitch_1b0
        :pswitch_1ac
        :pswitch_1a9
        :pswitch_1a5
        :pswitch_1a1
        :pswitch_19e
        :pswitch_19a
        :pswitch_196
        :pswitch_192
        :pswitch_18f
        :pswitch_18c
        :pswitch_188
        :pswitch_184
        :pswitch_180
        :pswitch_17d
        :pswitch_17a
        :pswitch_176
        :pswitch_173
        :pswitch_170
        :pswitch_16c
        :pswitch_169
        :pswitch_165
        :pswitch_161
        :pswitch_15d
        :pswitch_15a
        :pswitch_156
        :pswitch_152
        :pswitch_14e
        :pswitch_14a
        :pswitch_146
        :pswitch_143
        :pswitch_13f
        :pswitch_13b
        :pswitch_137
        :pswitch_134
        :pswitch_131
        :pswitch_12e
        :pswitch_12b
        :pswitch_128
        :pswitch_125
        :pswitch_121
        :pswitch_11d
        :pswitch_119
        :pswitch_116
        :pswitch_112
        :pswitch_10f
        :pswitch_10c
        :pswitch_109
        :pswitch_105
        :pswitch_101
        :pswitch_fd
        :pswitch_f9
        :pswitch_f5
        :pswitch_f1
        :pswitch_ed
        :pswitch_ea
        :pswitch_e6
        :pswitch_e2
        :pswitch_df
        :pswitch_dc
        :pswitch_d8
        :pswitch_d5
        :pswitch_d1
        :pswitch_cd
        :pswitch_c9
        :pswitch_c5
        :pswitch_c1
        :pswitch_be
        :pswitch_bb
        :pswitch_b7
        :pswitch_b4
        :pswitch_b0
        :pswitch_ad
        :pswitch_a9
        :pswitch_a6
        :pswitch_a2
        :pswitch_9e
        :pswitch_9a
        :pswitch_97
        :pswitch_94
        :pswitch_90
        :pswitch_8c
        :pswitch_88
        :pswitch_84
        :pswitch_81
        :pswitch_7e
        :pswitch_7a
        :pswitch_76
        :pswitch_73
        :pswitch_70
        :pswitch_6d
        :pswitch_6a
        :pswitch_66
        :pswitch_62
        :pswitch_5e
        :pswitch_5b
        :pswitch_58
        :pswitch_54
        :pswitch_50
        :pswitch_4c
        :pswitch_48
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2b
        :pswitch_27
        :pswitch_23
        :pswitch_1f
        :pswitch_1b
        :pswitch_17
        :pswitch_13
        :pswitch_f
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method protected blacklist addShellRoot_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6873
    iget-object v0, p0, Landroid/view/IWindowManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_APP_TOKENS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 6874
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 1249
    return-object p0
.end method

.method protected blacklist clearForcedDisplayDensityForUser_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6848
    iget-object v0, p0, Landroid/view/IWindowManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 6849
    return-void
.end method

.method protected blacklist clearForcedDisplaySize_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6835
    iget-object v0, p0, Landroid/view/IWindowManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 6836
    return-void
.end method

.method protected blacklist exitKeyguardSecurely_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6888
    iget-object v0, p0, Landroid/view/IWindowManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 6889
    return-void
.end method

.method protected blacklist getCurrentImeTouchRegion_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6953
    iget-object v0, p0, Landroid/view/IWindowManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.RESTRICTED_VR_ACCESS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 6954
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 7050
    const/16 v0, 0x9d

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 1897
    invoke-static {p1}, Landroid/view/IWindowManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 1901
    const-string v0, "android.view.IWindowManager"

    .line 1902
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 1903
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1905
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 1906
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1907
    return v1

    .line 1909
    :cond_16
    packed-switch p1, :pswitch_data_cba

    .line 3510
    move-object v3, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 3501
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3502
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3503
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getIgnoreOrientationRequest(I)Z

    move-result v3

    .line 3504
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3505
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3506
    move-object v3, p0

    goto/16 :goto_cb8

    .line 3491
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3492
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3493
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getApplicationLaunchKeyboardShortcuts(I)Landroid/view/KeyboardShortcutGroup;

    move-result-object v3

    .line 3494
    .local v3, "_result":Landroid/view/KeyboardShortcutGroup;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3495
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3496
    move-object v3, p0

    goto/16 :goto_cb8

    .line 3479
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/view/KeyboardShortcutGroup;
    :pswitch_47
    sget-object v2, Landroid/window/InputTransferToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/InputTransferToken;

    .line 3481
    .local v2, "_arg0":Landroid/window/InputTransferToken;
    sget-object v3, Landroid/window/InputTransferToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/InputTransferToken;

    .line 3482
    .local v3, "_arg1":Landroid/window/InputTransferToken;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3483
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->transferTouchGesture(Landroid/window/InputTransferToken;Landroid/window/InputTransferToken;)Z

    move-result v4

    .line 3484
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3485
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3486
    move-object v3, p0

    goto/16 :goto_cb8

    .line 3470
    .end local v2    # "_arg0":Landroid/window/InputTransferToken;
    .end local v3    # "_arg1":Landroid/window/InputTransferToken;
    .end local v4    # "_result":Z
    :pswitch_67
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/window/IGlobalDragListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IGlobalDragListener;

    move-result-object v2

    .line 3471
    .local v2, "_arg0":Landroid/window/IGlobalDragListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3472
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setGlobalDragListener(Landroid/window/IGlobalDragListener;)V

    .line 3473
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3474
    move-object v3, p0

    goto/16 :goto_cb8

    .line 3461
    .end local v2    # "_arg0":Landroid/window/IGlobalDragListener;
    :pswitch_7b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/window/IScreenRecordingCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IScreenRecordingCallback;

    move-result-object v2

    .line 3462
    .local v2, "_arg0":Landroid/window/IScreenRecordingCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3463
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->unregisterScreenRecordingCallback(Landroid/window/IScreenRecordingCallback;)V

    .line 3464
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3465
    move-object v3, p0

    goto/16 :goto_cb8

    .line 3451
    .end local v2    # "_arg0":Landroid/window/IScreenRecordingCallback;
    :pswitch_8f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/window/IScreenRecordingCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IScreenRecordingCallback;

    move-result-object v2

    .line 3452
    .restart local v2    # "_arg0":Landroid/window/IScreenRecordingCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3453
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->registerScreenRecordingCallback(Landroid/window/IScreenRecordingCallback;)Z

    move-result v3

    .line 3454
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3455
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3456
    move-object v3, p0

    goto/16 :goto_cb8

    .line 3440
    .end local v2    # "_arg0":Landroid/window/IScreenRecordingCallback;
    .end local v3    # "_result":Z
    :pswitch_a7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/window/ITrustedPresentationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITrustedPresentationListener;

    move-result-object v2

    .line 3442
    .local v2, "_arg0":Landroid/window/ITrustedPresentationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3443
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3444
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->unregisterTrustedPresentationListener(Landroid/window/ITrustedPresentationListener;I)V

    .line 3445
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3446
    move-object v3, p0

    goto/16 :goto_cb8

    .line 3425
    .end local v2    # "_arg0":Landroid/window/ITrustedPresentationListener;
    .end local v3    # "_arg1":I
    :pswitch_bf
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 3427
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/window/ITrustedPresentationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITrustedPresentationListener;

    move-result-object v3

    .line 3429
    .local v3, "_arg1":Landroid/window/ITrustedPresentationListener;
    sget-object v4, Landroid/window/TrustedPresentationThresholds;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/TrustedPresentationThresholds;

    .line 3431
    .local v4, "_arg2":Landroid/window/TrustedPresentationThresholds;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 3432
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3433
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/IWindowManager$Stub;->registerTrustedPresentationListener(Landroid/os/IBinder;Landroid/window/ITrustedPresentationListener;Landroid/window/TrustedPresentationThresholds;I)V

    .line 3434
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3435
    move-object v3, p0

    goto/16 :goto_cb8

    .line 3414
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/window/ITrustedPresentationListener;
    .end local v4    # "_arg2":Landroid/window/TrustedPresentationThresholds;
    .end local v5    # "_arg3":I
    :pswitch_e3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IDecorViewGestureListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDecorViewGestureListener;

    move-result-object v2

    .line 3416
    .local v2, "_arg0":Landroid/view/IDecorViewGestureListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3417
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3418
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->unregisterDecorViewGestureListener(Landroid/view/IDecorViewGestureListener;I)V

    .line 3419
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3420
    move-object v3, p0

    goto/16 :goto_cb8

    .line 3403
    .end local v2    # "_arg0":Landroid/view/IDecorViewGestureListener;
    .end local v3    # "_arg1":I
    :pswitch_fb
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IDecorViewGestureListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDecorViewGestureListener;

    move-result-object v2

    .line 3405
    .restart local v2    # "_arg0":Landroid/view/IDecorViewGestureListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3406
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3407
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->registerDecorViewGestureListener(Landroid/view/IDecorViewGestureListener;I)V

    .line 3408
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3409
    move-object v3, p0

    goto/16 :goto_cb8

    .line 3391
    .end local v2    # "_arg0":Landroid/view/IDecorViewGestureListener;
    .end local v3    # "_arg1":I
    :pswitch_113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3393
    .local v2, "_arg0":I
    sget-object v3, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceControl;

    .line 3394
    .local v3, "_arg1":Landroid/view/SurfaceControl;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3395
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->replaceContentOnDisplay(ILandroid/view/SurfaceControl;)Z

    move-result v4

    .line 3396
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3397
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3398
    move-object v3, p0

    goto/16 :goto_cb8

    .line 3381
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/view/SurfaceControl;
    .end local v4    # "_result":Z
    :pswitch_12f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3382
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3383
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->notifyScreenshotListeners(I)Ljava/util/List;

    move-result-object v3

    .line 3384
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3385
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3386
    move-object v3, p0

    goto/16 :goto_cb8

    .line 3373
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :pswitch_143
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 3374
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3375
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->markSurfaceSyncGroupReady(Landroid/os/IBinder;)V

    .line 3376
    move-object v3, p0

    goto/16 :goto_cb8

    .line 3356
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :pswitch_150
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 3358
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3360
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/window/ISurfaceSyncGroupCompletedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ISurfaceSyncGroupCompletedListener;

    move-result-object v4

    .line 3362
    .local v4, "_arg2":Landroid/window/ISurfaceSyncGroupCompletedListener;
    new-instance v5, Landroid/window/AddToSurfaceSyncGroupResult;

    invoke-direct {v5}, Landroid/window/AddToSurfaceSyncGroupResult;-><init>()V

    .line 3363
    .local v5, "_arg3":Landroid/window/AddToSurfaceSyncGroupResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3364
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/IWindowManager$Stub;->addToSurfaceSyncGroup(Landroid/os/IBinder;ZLandroid/window/ISurfaceSyncGroupCompletedListener;Landroid/window/AddToSurfaceSyncGroupResult;)Z

    move-result v6

    .line 3365
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3366
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3367
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3368
    move-object v3, p0

    goto/16 :goto_cb8

    .line 3346
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Landroid/window/ISurfaceSyncGroupCompletedListener;
    .end local v5    # "_arg3":Landroid/window/AddToSurfaceSyncGroupResult;
    .end local v6    # "_result":Z
    :pswitch_178
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3347
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3348
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->isGlobalKey(I)Z

    move-result v3

    .line 3349
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3350
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3351
    move-object v3, p0

    goto/16 :goto_cb8

    .line 3334
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_18c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3336
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/window/ScreenCapture$CaptureArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/ScreenCapture$CaptureArgs;

    .line 3338
    .local v3, "_arg1":Landroid/window/ScreenCapture$CaptureArgs;
    sget-object v4, Landroid/window/ScreenCapture$ScreenCaptureListener;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/ScreenCapture$ScreenCaptureListener;

    .line 3339
    .local v4, "_arg2":Landroid/window/ScreenCapture$ScreenCaptureListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3340
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/IWindowManager$Stub;->captureDisplay(ILandroid/window/ScreenCapture$CaptureArgs;Landroid/window/ScreenCapture$ScreenCaptureListener;)V

    .line 3341
    move-object v3, p0

    goto/16 :goto_cb8

    .line 3326
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/window/ScreenCapture$CaptureArgs;
    .end local v4    # "_arg2":Landroid/window/ScreenCapture$ScreenCaptureListener;
    :pswitch_1a9
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isLetterboxBackgroundMultiColored()Z

    move-result v2

    .line 3327
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3328
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3329
    move-object v3, p0

    goto/16 :goto_cb8

    .line 3319
    .end local v2    # "_result":Z
    :pswitch_1b6
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getLetterboxBackgroundColorInArgb()I

    move-result v2

    .line 3320
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3321
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3322
    move-object v3, p0

    goto/16 :goto_cb8

    .line 3311
    .end local v2    # "_result":I
    :pswitch_1c3
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3312
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3313
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setRecentsAppBehindSystemBars(Z)V

    .line 3314
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3315
    move-object v3, p0

    goto/16 :goto_cb8

    .line 3301
    .end local v2    # "_arg0":Z
    :pswitch_1d3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3302
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3303
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->snapshotTaskForRecents(I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 3304
    .local v3, "_result":Landroid/graphics/Bitmap;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3305
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3306
    move-object v3, p0

    goto/16 :goto_cb8

    .line 3292
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/graphics/Bitmap;
    :pswitch_1e7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/window/ITaskFpsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITaskFpsCallback;

    move-result-object v2

    .line 3293
    .local v2, "_arg0":Landroid/window/ITaskFpsCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3294
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->unregisterTaskFpsCallback(Landroid/window/ITaskFpsCallback;)V

    .line 3295
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3296
    move-object v3, p0

    goto/16 :goto_cb8

    .line 3281
    .end local v2    # "_arg0":Landroid/window/ITaskFpsCallback;
    :pswitch_1fb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3283
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/window/ITaskFpsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITaskFpsCallback;

    move-result-object v3

    .line 3284
    .local v3, "_arg1":Landroid/window/ITaskFpsCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3285
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->registerTaskFpsCallback(ILandroid/window/ITaskFpsCallback;)V

    .line 3286
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3287
    move-object v3, p0

    goto/16 :goto_cb8

    .line 3272
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/window/ITaskFpsCallback;
    :pswitch_213
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3273
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3274
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setTaskSnapshotEnabled(Z)V

    .line 3275
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3276
    move-object v3, p0

    goto/16 :goto_cb8

    .line 3264
    .end local v2    # "_arg0":Z
    :pswitch_223
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getImeDisplayId()I

    move-result v2

    .line 3265
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3266
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3267
    move-object v3, p0

    goto/16 :goto_cb8

    .line 3257
    .end local v2    # "_result":I
    :pswitch_230
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isTaskSnapshotSupported()Z

    move-result v2

    .line 3258
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3259
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3260
    move-object v3, p0

    goto/16 :goto_cb8

    .line 3249
    .end local v2    # "_result":Z
    :pswitch_23d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ICrossWindowBlurEnabledListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/ICrossWindowBlurEnabledListener;

    move-result-object v2

    .line 3250
    .local v2, "_arg0":Landroid/view/ICrossWindowBlurEnabledListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3251
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->unregisterCrossWindowBlurEnabledListener(Landroid/view/ICrossWindowBlurEnabledListener;)V

    .line 3252
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3253
    move-object v3, p0

    goto/16 :goto_cb8

    .line 3239
    .end local v2    # "_arg0":Landroid/view/ICrossWindowBlurEnabledListener;
    :pswitch_251
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ICrossWindowBlurEnabledListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/ICrossWindowBlurEnabledListener;

    move-result-object v2

    .line 3240
    .restart local v2    # "_arg0":Landroid/view/ICrossWindowBlurEnabledListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3241
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->registerCrossWindowBlurEnabledListener(Landroid/view/ICrossWindowBlurEnabledListener;)Z

    move-result v3

    .line 3242
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3243
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3244
    move-object v3, p0

    goto/16 :goto_cb8

    .line 3225
    .end local v2    # "_arg0":Landroid/view/ICrossWindowBlurEnabledListener;
    .end local v3    # "_result":Z
    :pswitch_269
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v2

    .line 3227
    .local v2, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 3229
    .local v3, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3230
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3231
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/IWindowManager$Stub;->reparentWindowContextToDisplayArea(Landroid/app/IApplicationThread;Landroid/os/IBinder;I)Z

    move-result v5

    .line 3232
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3233
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3234
    move-object v3, p0

    goto/16 :goto_cb8

    .line 3216
    .end local v2    # "_arg0":Landroid/app/IApplicationThread;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Z
    :pswitch_289
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 3217
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3218
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->detachWindowContext(Landroid/os/IBinder;)V

    .line 3219
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3220
    move-object v3, p0

    goto/16 :goto_cb8

    .line 3202
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :pswitch_299
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v2

    .line 3204
    .local v2, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 3206
    .restart local v3    # "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3207
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3208
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/IWindowManager$Stub;->attachWindowContextToDisplayContent(Landroid/app/IApplicationThread;Landroid/os/IBinder;I)Landroid/window/WindowContextInfo;

    move-result-object v5

    .line 3209
    .local v5, "_result":Landroid/window/WindowContextInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3210
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3211
    move-object v3, p0

    goto/16 :goto_cb8

    .line 3188
    .end local v2    # "_arg0":Landroid/app/IApplicationThread;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Landroid/window/WindowContextInfo;
    :pswitch_2b9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v2

    .line 3190
    .restart local v2    # "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 3192
    .restart local v3    # "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 3193
    .local v4, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3194
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/IWindowManager$Stub;->attachWindowContextToWindowToken(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/os/IBinder;)Landroid/window/WindowContextInfo;

    move-result-object v5

    .line 3195
    .restart local v5    # "_result":Landroid/window/WindowContextInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3196
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3197
    move-object v3, p0

    goto/16 :goto_cb8

    .line 3170
    .end local v2    # "_arg0":Landroid/app/IApplicationThread;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    .end local v4    # "_arg2":Landroid/os/IBinder;
    .end local v5    # "_result":Landroid/window/WindowContextInfo;
    :pswitch_2d9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v4

    .line 3172
    .local v4, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 3174
    .local v5, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3176
    .local v6, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 3178
    .local v7, "_arg3":I
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/os/Bundle;

    .line 3179
    .local v8, "_arg4":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3180
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/view/IWindowManager$Stub;->attachWindowContextToDisplayArea(Landroid/app/IApplicationThread;Landroid/os/IBinder;IILandroid/os/Bundle;)Landroid/window/WindowContextInfo;

    move-result-object v2

    .line 3181
    .local v2, "_result":Landroid/window/WindowContextInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3182
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3183
    goto/16 :goto_cb8

    .line 3161
    .end local v2    # "_result":Landroid/window/WindowContextInfo;
    .end local v4    # "_arg0":Landroid/app/IApplicationThread;
    .end local v5    # "_arg1":Landroid/os/IBinder;
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":Landroid/os/Bundle;
    :pswitch_306
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3162
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3163
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setDisplayHashThrottlingEnabled(Z)V

    .line 3164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3165
    goto/16 :goto_cb8

    .line 3151
    .end local v2    # "_arg0":Z
    :pswitch_316
    move-object v3, p0

    sget-object v2, Landroid/view/displayhash/DisplayHash;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/displayhash/DisplayHash;

    .line 3152
    .local v2, "_arg0":Landroid/view/displayhash/DisplayHash;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3153
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->verifyDisplayHash(Landroid/view/displayhash/DisplayHash;)Landroid/view/displayhash/VerifiedDisplayHash;

    move-result-object v4

    .line 3154
    .local v4, "_result":Landroid/view/displayhash/VerifiedDisplayHash;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3155
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3156
    goto/16 :goto_cb8

    .line 3143
    .end local v2    # "_arg0":Landroid/view/displayhash/DisplayHash;
    .end local v4    # "_result":Landroid/view/displayhash/VerifiedDisplayHash;
    :pswitch_32e
    move-object v3, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getSupportedDisplayHashAlgorithms()[Ljava/lang/String;

    move-result-object v2

    .line 3144
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3145
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 3146
    goto/16 :goto_cb8

    .line 3133
    .end local v2    # "_result":[Ljava/lang/String;
    :pswitch_33b
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 3135
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3136
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3137
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->holdLock(Landroid/os/IBinder;I)V

    .line 3138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3139
    goto/16 :goto_cb8

    .line 3118
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":I
    :pswitch_34f
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3120
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 3122
    .local v4, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 3124
    .local v5, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IScrollCaptureResponseListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IScrollCaptureResponseListener;

    move-result-object v6

    .line 3125
    .local v6, "_arg3":Landroid/view/IScrollCaptureResponseListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3126
    invoke-virtual {p0, v2, v4, v5, v6}, Landroid/view/IWindowManager$Stub;->requestScrollCapture(ILandroid/os/IBinder;ILandroid/view/IScrollCaptureResponseListener;)V

    .line 3127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3128
    goto/16 :goto_cb8

    .line 3109
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Landroid/os/IBinder;
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":Landroid/view/IScrollCaptureResponseListener;
    :pswitch_36f
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3110
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3111
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setActiveTransactionTracing(Z)V

    .line 3112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3113
    goto/16 :goto_cb8

    .line 3100
    .end local v2    # "_arg0":Z
    :pswitch_37f
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3101
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3102
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setLayerTracingFlags(I)V

    .line 3103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3104
    goto/16 :goto_cb8

    .line 3093
    .end local v2    # "_arg0":I
    :pswitch_38f
    move-object v3, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->showGlobalActions()V

    .line 3094
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3095
    goto/16 :goto_cb8

    .line 3084
    :pswitch_398
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3085
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3086
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getPossibleDisplayInfo(I)Ljava/util/List;

    move-result-object v4

    .line 3087
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/DisplayInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3088
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3089
    goto/16 :goto_cb8

    .line 3069
    .end local v2    # "_arg0":I
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/DisplayInfo;>;"
    :pswitch_3ac
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3071
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 3073
    .local v4, "_arg1":Landroid/os/IBinder;
    new-instance v5, Landroid/view/InsetsState;

    invoke-direct {v5}, Landroid/view/InsetsState;-><init>()V

    .line 3074
    .local v5, "_arg2":Landroid/view/InsetsState;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3075
    invoke-virtual {p0, v2, v4, v5}, Landroid/view/IWindowManager$Stub;->getWindowInsets(ILandroid/os/IBinder;Landroid/view/InsetsState;)Z

    move-result v6

    .line 3076
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3077
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3078
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3079
    goto/16 :goto_cb8

    .line 3056
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Landroid/os/IBinder;
    .end local v5    # "_arg2":Landroid/view/InsetsState;
    .end local v6    # "_result":Z
    :pswitch_3cc
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3058
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3060
    .local v4, "_arg1":I
    sget-object v5, Landroid/view/inputmethod/ImeTracker$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/ImeTracker$Token;

    .line 3061
    .local v5, "_arg2":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3062
    invoke-virtual {p0, v2, v4, v5}, Landroid/view/IWindowManager$Stub;->updateDisplayWindowAnimatingTypes(IILandroid/view/inputmethod/ImeTracker$Token;)V

    .line 3063
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3064
    goto/16 :goto_cb8

    .line 3041
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Landroid/view/inputmethod/ImeTracker$Token;
    :pswitch_3e8
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3043
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3045
    .restart local v4    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 3047
    .local v5, "_arg2":I
    sget-object v6, Landroid/view/inputmethod/ImeTracker$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/ImeTracker$Token;

    .line 3048
    .local v6, "_arg3":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3049
    invoke-virtual {p0, v2, v4, v5, v6}, Landroid/view/IWindowManager$Stub;->updateDisplayWindowRequestedVisibleTypes(IIILandroid/view/inputmethod/ImeTracker$Token;)V

    .line 3050
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3051
    goto/16 :goto_cb8

    .line 3030
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":Landroid/view/inputmethod/ImeTracker$Token;
    :pswitch_408
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3032
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IDisplayWindowInsetsController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayWindowInsetsController;

    move-result-object v4

    .line 3033
    .local v4, "_arg1":Landroid/view/IDisplayWindowInsetsController;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3034
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->setDisplayWindowInsetsController(ILandroid/view/IDisplayWindowInsetsController;)V

    .line 3035
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3036
    goto/16 :goto_cb8

    .line 3017
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Landroid/view/IDisplayWindowInsetsController;
    :pswitch_420
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3019
    .restart local v2    # "_arg0":I
    new-instance v4, Landroid/view/SurfaceControl;

    invoke-direct {v4}, Landroid/view/SurfaceControl;-><init>()V

    .line 3020
    .local v4, "_arg1":Landroid/view/SurfaceControl;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3021
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->mirrorDisplay(ILandroid/view/SurfaceControl;)Z

    move-result v5

    .line 3022
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3023
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3024
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3025
    goto/16 :goto_cb8

    .line 3008
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Landroid/view/SurfaceControl;
    .end local v5    # "_result":Z
    :pswitch_43c
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3009
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3010
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setLayerTracing(Z)V

    .line 3011
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3012
    goto/16 :goto_cb8

    .line 3000
    .end local v2    # "_arg0":Z
    :pswitch_44c
    move-object v3, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isLayerTracing()Z

    move-result v2

    .line 3001
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3002
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3003
    goto/16 :goto_cb8

    .line 2992
    .end local v2    # "_result":Z
    :pswitch_459
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2993
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2994
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->syncInputTransactions(Z)V

    .line 2995
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2996
    goto/16 :goto_cb8

    .line 2981
    .end local v2    # "_arg0":Z
    :pswitch_469
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2983
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 2984
    .local v4, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2985
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->onNotificationShadeExpanded(Landroid/os/IBinder;Z)V

    .line 2986
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2987
    goto/16 :goto_cb8

    .line 2970
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":Z
    :pswitch_47d
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2972
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2973
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2974
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->setDisplayImePolicy(II)V

    .line 2975
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2976
    goto/16 :goto_cb8

    .line 2960
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":I
    :pswitch_491
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2961
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2962
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getDisplayImePolicy(I)I

    move-result v4

    .line 2963
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2964
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2965
    goto/16 :goto_cb8

    .line 2950
    .end local v2    # "_arg0":I
    .end local v4    # "_result":I
    :pswitch_4a5
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2951
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2952
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->isEligibleForDesktopMode(I)Z

    move-result v4

    .line 2953
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2954
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2955
    goto/16 :goto_cb8

    .line 2939
    .end local v2    # "_arg0":I
    .end local v4    # "_result":Z
    :pswitch_4b9
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2941
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 2942
    .local v4, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2943
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->setShouldShowSystemDecors(IZ)V

    .line 2944
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2945
    goto/16 :goto_cb8

    .line 2929
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Z
    :pswitch_4cd
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2930
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2931
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->shouldShowSystemDecors(I)Z

    move-result v4

    .line 2932
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2933
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2934
    goto/16 :goto_cb8

    .line 2918
    .end local v2    # "_arg0":I
    .end local v4    # "_result":Z
    :pswitch_4e1
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2920
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 2921
    .local v4, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2922
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->setShouldShowWithInsecureKeyguard(IZ)V

    .line 2923
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2924
    goto/16 :goto_cb8

    .line 2908
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Z
    :pswitch_4f5
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2909
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2910
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->shouldShowWithInsecureKeyguard(I)Z

    move-result v4

    .line 2911
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2912
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2913
    goto/16 :goto_cb8

    .line 2897
    .end local v2    # "_arg0":I
    .end local v4    # "_result":Z
    :pswitch_509
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2899
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2900
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2901
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->setRemoveContentMode(II)V

    .line 2902
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2903
    goto/16 :goto_cb8

    .line 2887
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":I
    :pswitch_51d
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2888
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2889
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getRemoveContentMode(I)I

    move-result v4

    .line 2890
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2891
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2892
    goto/16 :goto_cb8

    .line 2876
    .end local v2    # "_arg0":I
    .end local v4    # "_result":I
    :pswitch_531
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2878
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2879
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2880
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->setWindowingMode(II)V

    .line 2881
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2882
    goto/16 :goto_cb8

    .line 2866
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":I
    :pswitch_545
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2867
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2868
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getWindowingMode(I)I

    move-result v4

    .line 2869
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2870
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2871
    goto/16 :goto_cb8

    .line 2858
    .end local v2    # "_arg0":I
    .end local v4    # "_result":I
    :pswitch_559
    move-object v3, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isTransitionTraceEnabled()Z

    move-result v2

    .line 2859
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2860
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2861
    goto/16 :goto_cb8

    .line 2852
    .end local v2    # "_result":Z
    :pswitch_566
    move-object v3, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->stopTransitionTrace()V

    .line 2853
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2854
    goto/16 :goto_cb8

    .line 2846
    :pswitch_56f
    move-object v3, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->startTransitionTrace()V

    .line 2847
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2848
    goto/16 :goto_cb8

    .line 2839
    :pswitch_578
    move-object v3, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isWindowTraceEnabled()Z

    move-result v2

    .line 2840
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2841
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2842
    goto/16 :goto_cb8

    .line 2833
    .end local v2    # "_result":Z
    :pswitch_585
    move-object v3, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->saveWindowTraceToFile()V

    .line 2834
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2835
    goto/16 :goto_cb8

    .line 2827
    :pswitch_58e
    move-object v3, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->stopWindowTrace()V

    .line 2828
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2829
    goto/16 :goto_cb8

    .line 2821
    :pswitch_597
    move-object v3, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->startWindowTrace()V

    .line 2822
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2823
    goto/16 :goto_cb8

    .line 2813
    :pswitch_5a0
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IDisplayWindowListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayWindowListener;

    move-result-object v2

    .line 2814
    .local v2, "_arg0":Landroid/view/IDisplayWindowListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2815
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->unregisterDisplayWindowListener(Landroid/view/IDisplayWindowListener;)V

    .line 2816
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2817
    goto/16 :goto_cb8

    .line 2803
    .end local v2    # "_arg0":Landroid/view/IDisplayWindowListener;
    :pswitch_5b4
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IDisplayWindowListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayWindowListener;

    move-result-object v2

    .line 2804
    .restart local v2    # "_arg0":Landroid/view/IDisplayWindowListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2805
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->registerDisplayWindowListener(Landroid/view/IDisplayWindowListener;)[I

    move-result-object v4

    .line 2806
    .local v4, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2807
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2808
    goto/16 :goto_cb8

    .line 2794
    .end local v2    # "_arg0":Landroid/view/IDisplayWindowListener;
    .end local v4    # "_result":[I
    :pswitch_5cc
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IDisplayFoldListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayFoldListener;

    move-result-object v2

    .line 2795
    .local v2, "_arg0":Landroid/view/IDisplayFoldListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2796
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->unregisterDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V

    .line 2797
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2798
    goto/16 :goto_cb8

    .line 2785
    .end local v2    # "_arg0":Landroid/view/IDisplayFoldListener;
    :pswitch_5e0
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IDisplayFoldListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayFoldListener;

    move-result-object v2

    .line 2786
    .restart local v2    # "_arg0":Landroid/view/IDisplayFoldListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2787
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->registerDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V

    .line 2788
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2789
    goto/16 :goto_cb8

    .line 2777
    .end local v2    # "_arg0":Landroid/view/IDisplayFoldListener;
    :pswitch_5f4
    move-object v3, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getCurrentImeTouchRegion()Landroid/graphics/Region;

    move-result-object v2

    .line 2778
    .local v2, "_result":Landroid/graphics/Region;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2779
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2780
    goto/16 :goto_cb8

    .line 2766
    .end local v2    # "_result":Landroid/graphics/Region;
    :pswitch_601
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2768
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2769
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2770
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->destroyInputConsumer(Landroid/os/IBinder;I)Z

    move-result v5

    .line 2771
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2772
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2773
    goto/16 :goto_cb8

    .line 2750
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":I
    .end local v5    # "_result":Z
    :pswitch_619
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2752
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2754
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2756
    .local v5, "_arg2":I
    new-instance v6, Landroid/view/InputChannel;

    invoke-direct {v6}, Landroid/view/InputChannel;-><init>()V

    .line 2757
    .local v6, "_arg3":Landroid/view/InputChannel;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2758
    invoke-virtual {p0, v2, v4, v5, v6}, Landroid/view/IWindowManager$Stub;->createInputConsumer(Landroid/os/IBinder;Ljava/lang/String;ILandroid/view/InputChannel;)V

    .line 2759
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2760
    invoke-virtual {p3, v6, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2761
    goto/16 :goto_cb8

    .line 2739
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":Landroid/view/InputChannel;
    :pswitch_639
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 2741
    .local v4, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/IShortcutService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IShortcutService;

    move-result-object v2

    .line 2742
    .local v2, "_arg1":Lcom/android/internal/policy/IShortcutService;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2743
    invoke-virtual {p0, v4, v5, v2}, Landroid/view/IWindowManager$Stub;->registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V

    .line 2744
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2745
    goto/16 :goto_cb8

    .line 2727
    .end local v2    # "_arg1":Lcom/android/internal/policy/IShortcutService;
    .end local v4    # "_arg0":J
    :pswitch_651
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2729
    .local v2, "_arg0":I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 2730
    .local v4, "_arg1":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2731
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->getStableInsets(ILandroid/graphics/Rect;)V

    .line 2732
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2733
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2734
    goto/16 :goto_cb8

    .line 2716
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Landroid/graphics/Rect;
    :pswitch_669
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v2

    .line 2718
    .local v2, "_arg0":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2719
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2720
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->requestImeKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V

    .line 2721
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2722
    goto/16 :goto_cb8

    .line 2705
    .end local v2    # "_arg0":Lcom/android/internal/os/IResultReceiver;
    .end local v4    # "_arg1":I
    :pswitch_681
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v2

    .line 2707
    .restart local v2    # "_arg0":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2708
    .restart local v4    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2709
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->requestAppKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V

    .line 2710
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2711
    goto/16 :goto_cb8

    .line 2694
    .end local v2    # "_arg0":Lcom/android/internal/os/IResultReceiver;
    .end local v4    # "_arg1":I
    :pswitch_699
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2696
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IPinnedTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IPinnedTaskListener;

    move-result-object v4

    .line 2697
    .local v4, "_arg1":Landroid/view/IPinnedTaskListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2698
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->registerPinnedTaskListener(ILandroid/view/IPinnedTaskListener;)V

    .line 2699
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2700
    goto/16 :goto_cb8

    .line 2686
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Landroid/view/IPinnedTaskListener;
    :pswitch_6b1
    move-object v3, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getDockedStackSide()I

    move-result v2

    .line 2687
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2688
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2689
    goto/16 :goto_cb8

    .line 2677
    .end local v2    # "_result":I
    :pswitch_6be
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2678
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2679
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getWindowContentFrameStats(Landroid/os/IBinder;)Landroid/view/WindowContentFrameStats;

    move-result-object v4

    .line 2680
    .local v4, "_result":Landroid/view/WindowContentFrameStats;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2681
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2682
    goto/16 :goto_cb8

    .line 2667
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_result":Landroid/view/WindowContentFrameStats;
    :pswitch_6d2
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2668
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2669
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->clearWindowContentFrameStats(Landroid/os/IBinder;)Z

    move-result v4

    .line 2670
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2671
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2672
    goto/16 :goto_cb8

    .line 2659
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_result":Z
    :pswitch_6e6
    move-object v3, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isSafeModeEnabled()Z

    move-result v2

    .line 2660
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2661
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2662
    goto/16 :goto_cb8

    .line 2651
    .end local v2    # "_result":Z
    :pswitch_6f3
    move-object v3, p0

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 2652
    .local v2, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2653
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->lockNow(Landroid/os/Bundle;)V

    .line 2654
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2655
    goto/16 :goto_cb8

    .line 2641
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :pswitch_707
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2642
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2643
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->hasNavigationBar(I)Z

    move-result v4

    .line 2644
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2645
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2646
    goto/16 :goto_cb8

    .line 2632
    .end local v2    # "_arg0":I
    .end local v4    # "_result":Z
    :pswitch_71b
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2633
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2634
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setNavBarVirtualKeyHapticFeedbackEnabled(Z)V

    .line 2635
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2636
    goto/16 :goto_cb8

    .line 2622
    .end local v2    # "_arg0":Z
    :pswitch_72b
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2624
    .local v2, "_arg0":I
    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/graphics/Rect;

    .line 2625
    .local v4, "_arg1":[Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2626
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->updateStaticPrivacyIndicatorBounds(I[Landroid/graphics/Rect;)V

    .line 2627
    goto/16 :goto_cb8

    .line 2614
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":[Landroid/graphics/Rect;
    :pswitch_740
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2615
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2616
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setRecentsVisibility(Z)V

    .line 2617
    goto/16 :goto_cb8

    .line 2606
    .end local v2    # "_arg0":Z
    :pswitch_74d
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2607
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2608
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->hideTransientBars(I)V

    .line 2609
    goto/16 :goto_cb8

    .line 2596
    .end local v2    # "_arg0":I
    :pswitch_75a
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IAssistDataReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAssistDataReceiver;

    move-result-object v2

    .line 2597
    .local v2, "_arg0":Landroid/app/IAssistDataReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2598
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->requestAssistScreenshot(Landroid/app/IAssistDataReceiver;)Z

    move-result v4

    .line 2599
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2600
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2601
    goto/16 :goto_cb8

    .line 2585
    .end local v2    # "_arg0":Landroid/app/IAssistDataReceiver;
    .end local v4    # "_result":Z
    :pswitch_772
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ISystemGestureExclusionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/ISystemGestureExclusionListener;

    move-result-object v2

    .line 2587
    .local v2, "_arg0":Landroid/view/ISystemGestureExclusionListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2588
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2589
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->unregisterSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V

    .line 2590
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2591
    goto/16 :goto_cb8

    .line 2574
    .end local v2    # "_arg0":Landroid/view/ISystemGestureExclusionListener;
    .end local v4    # "_arg1":I
    :pswitch_78a
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ISystemGestureExclusionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/ISystemGestureExclusionListener;

    move-result-object v2

    .line 2576
    .restart local v2    # "_arg0":Landroid/view/ISystemGestureExclusionListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2577
    .restart local v4    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2578
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->registerSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V

    .line 2579
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2580
    goto/16 :goto_cb8

    .line 2563
    .end local v2    # "_arg0":Landroid/view/ISystemGestureExclusionListener;
    .end local v4    # "_arg1":I
    :pswitch_7a2
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWallpaperVisibilityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWallpaperVisibilityListener;

    move-result-object v2

    .line 2565
    .local v2, "_arg0":Landroid/view/IWallpaperVisibilityListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2566
    .restart local v4    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2567
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->unregisterWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)V

    .line 2568
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2569
    goto/16 :goto_cb8

    .line 2551
    .end local v2    # "_arg0":Landroid/view/IWallpaperVisibilityListener;
    .end local v4    # "_arg1":I
    :pswitch_7ba
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWallpaperVisibilityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWallpaperVisibilityListener;

    move-result-object v2

    .line 2553
    .restart local v2    # "_arg0":Landroid/view/IWallpaperVisibilityListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2554
    .restart local v4    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2555
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->registerWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)Z

    move-result v5

    .line 2556
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2557
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2558
    goto/16 :goto_cb8

    .line 2541
    .end local v2    # "_arg0":Landroid/view/IWallpaperVisibilityListener;
    .end local v4    # "_arg1":I
    .end local v5    # "_result":Z
    :pswitch_7d6
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2542
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2543
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->mirrorWallpaperSurface(I)Landroid/view/SurfaceControl;

    move-result-object v4

    .line 2544
    .local v4, "_result":Landroid/view/SurfaceControl;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2545
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2546
    goto/16 :goto_cb8

    .line 2533
    .end local v2    # "_arg0":I
    .end local v4    # "_result":Landroid/view/SurfaceControl;
    :pswitch_7ea
    move-object v3, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->screenshotWallpaper()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2534
    .local v2, "_result":Landroid/graphics/Bitmap;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2535
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2536
    goto/16 :goto_cb8

    .line 2523
    .end local v2    # "_result":Landroid/graphics/Bitmap;
    :pswitch_7f7
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2525
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 2526
    .local v4, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2527
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->setIgnoreOrientationRequest(IZ)V

    .line 2528
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2529
    goto/16 :goto_cb8

    .line 2512
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Z
    :pswitch_80b
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2514
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2515
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2516
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->setFixedToUserRotation(II)V

    .line 2517
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2518
    goto/16 :goto_cb8

    .line 2502
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":I
    :pswitch_81f
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2503
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2504
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->isDisplayRotationFrozen(I)Z

    move-result v4

    .line 2505
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2506
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2507
    goto/16 :goto_cb8

    .line 2491
    .end local v2    # "_arg0":I
    .end local v4    # "_result":Z
    :pswitch_833
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2493
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2494
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2495
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->thawDisplayRotation(ILjava/lang/String;)V

    .line 2496
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2497
    goto/16 :goto_cb8

    .line 2478
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    :pswitch_847
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2480
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2482
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2483
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2484
    invoke-virtual {p0, v2, v4, v5}, Landroid/view/IWindowManager$Stub;->freezeDisplayRotation(IILjava/lang/String;)V

    .line 2485
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2486
    goto/16 :goto_cb8

    .line 2470
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Ljava/lang/String;
    :pswitch_85f
    move-object v3, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isRotationFrozen()Z

    move-result v2

    .line 2471
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2472
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2473
    goto/16 :goto_cb8

    .line 2462
    .end local v2    # "_result":Z
    :pswitch_86c
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2463
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2464
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->thawRotation(Ljava/lang/String;)V

    .line 2465
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2466
    goto/16 :goto_cb8

    .line 2451
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_87c
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2453
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2454
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2455
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->freezeRotation(ILjava/lang/String;)V

    .line 2456
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2457
    goto/16 :goto_cb8

    .line 2441
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    :pswitch_890
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2442
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2443
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getPreferredOptionsPanelGravity(I)I

    move-result v4

    .line 2444
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2445
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2446
    goto/16 :goto_cb8

    .line 2429
    .end local v2    # "_arg0":I
    .end local v4    # "_result":I
    :pswitch_8a4
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2431
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IRotationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRotationWatcher;

    move-result-object v4

    .line 2432
    .local v4, "_arg1":Landroid/view/IRotationWatcher;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2433
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->registerProposedRotationListener(Landroid/os/IBinder;Landroid/view/IRotationWatcher;)I

    move-result v5

    .line 2434
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2435
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2436
    goto/16 :goto_cb8

    .line 2420
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":Landroid/view/IRotationWatcher;
    .end local v5    # "_result":I
    :pswitch_8c0
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IRotationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRotationWatcher;

    move-result-object v2

    .line 2421
    .local v2, "_arg0":Landroid/view/IRotationWatcher;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2422
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V

    .line 2423
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2424
    goto/16 :goto_cb8

    .line 2408
    .end local v2    # "_arg0":Landroid/view/IRotationWatcher;
    :pswitch_8d4
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IRotationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRotationWatcher;

    move-result-object v2

    .line 2410
    .restart local v2    # "_arg0":Landroid/view/IRotationWatcher;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2411
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2412
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->watchRotation(Landroid/view/IRotationWatcher;I)I

    move-result v5

    .line 2413
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2414
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2415
    goto/16 :goto_cb8

    .line 2398
    .end local v2    # "_arg0":Landroid/view/IRotationWatcher;
    .end local v4    # "_arg1":I
    .end local v5    # "_result":I
    :pswitch_8f0
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2399
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2400
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getDisplayUserRotation(I)I

    move-result v4

    .line 2401
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2402
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2403
    goto/16 :goto_cb8

    .line 2390
    .end local v2    # "_arg0":I
    .end local v4    # "_result":I
    :pswitch_904
    move-object v3, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getDefaultDisplayRotation()I

    move-result v2

    .line 2391
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2392
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2393
    goto/16 :goto_cb8

    .line 2384
    .end local v2    # "_result":I
    :pswitch_911
    move-object v3, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->refreshScreenCaptureDisabled()V

    .line 2385
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2386
    goto/16 :goto_cb8

    .line 2376
    :pswitch_91a
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2377
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2378
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V

    .line 2379
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2380
    goto/16 :goto_cb8

    .line 2367
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_92a
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2368
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2369
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->showStrictModeViolation(Z)V

    .line 2370
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2371
    goto/16 :goto_cb8

    .line 2357
    .end local v2    # "_arg0":Z
    :pswitch_93a
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2358
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2359
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->isInTouchMode(I)Z

    move-result v4

    .line 2360
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2361
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2362
    goto/16 :goto_cb8

    .line 2348
    .end local v2    # "_arg0":I
    .end local v4    # "_result":Z
    :pswitch_94e
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2349
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2350
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setInTouchModeOnAllDisplays(Z)V

    .line 2351
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2352
    goto/16 :goto_cb8

    .line 2337
    .end local v2    # "_arg0":Z
    :pswitch_95e
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2339
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2340
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2341
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->setInTouchMode(ZI)V

    .line 2342
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2343
    goto/16 :goto_cb8

    .line 2329
    .end local v2    # "_arg0":Z
    .end local v4    # "_arg1":I
    :pswitch_972
    move-object v3, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getCurrentAnimatorScale()F

    move-result v2

    .line 2330
    .local v2, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2331
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2332
    goto/16 :goto_cb8

    .line 2321
    .end local v2    # "_result":F
    :pswitch_97f
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v2

    .line 2322
    .local v2, "_arg0":[F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2323
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setAnimationScales([F)V

    .line 2324
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2325
    goto/16 :goto_cb8

    .line 2310
    .end local v2    # "_arg0":[F
    :pswitch_98f
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2312
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 2313
    .local v4, "_arg1":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2314
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->setAnimationScale(IF)V

    .line 2315
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2316
    goto/16 :goto_cb8

    .line 2302
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":F
    :pswitch_9a3
    move-object v3, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getAnimationScales()[F

    move-result-object v2

    .line 2303
    .local v2, "_result":[F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2304
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 2305
    goto/16 :goto_cb8

    .line 2293
    .end local v2    # "_result":[F
    :pswitch_9b0
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2294
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2295
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getAnimationScale(I)F

    move-result v4

    .line 2296
    .local v4, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2297
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2298
    goto/16 :goto_cb8

    .line 2284
    .end local v2    # "_arg0":I
    .end local v4    # "_result":F
    :pswitch_9c4
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2285
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2286
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->closeSystemDialogs(Ljava/lang/String;)V

    .line 2287
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2288
    goto/16 :goto_cb8

    .line 2275
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_9d4
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2276
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2277
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setSwitchingUser(Z)V

    .line 2278
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2279
    goto/16 :goto_cb8

    .line 2266
    .end local v2    # "_arg0":Z
    :pswitch_9e4
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/IKeyguardLockedStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardLockedStateListener;

    move-result-object v2

    .line 2267
    .local v2, "_arg0":Lcom/android/internal/policy/IKeyguardLockedStateListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2268
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->removeKeyguardLockedStateListener(Lcom/android/internal/policy/IKeyguardLockedStateListener;)V

    .line 2269
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2270
    goto/16 :goto_cb8

    .line 2257
    .end local v2    # "_arg0":Lcom/android/internal/policy/IKeyguardLockedStateListener;
    :pswitch_9f8
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/IKeyguardLockedStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardLockedStateListener;

    move-result-object v2

    .line 2258
    .restart local v2    # "_arg0":Lcom/android/internal/policy/IKeyguardLockedStateListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2259
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->addKeyguardLockedStateListener(Lcom/android/internal/policy/IKeyguardLockedStateListener;)V

    .line 2260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2261
    goto/16 :goto_cb8

    .line 2246
    .end local v2    # "_arg0":Lcom/android/internal/policy/IKeyguardLockedStateListener;
    :pswitch_a0c
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardDismissCallback;

    move-result-object v2

    .line 2248
    .local v2, "_arg0":Lcom/android/internal/policy/IKeyguardDismissCallback;
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 2249
    .local v4, "_arg1":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2250
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 2251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2252
    goto/16 :goto_cb8

    .line 2236
    .end local v2    # "_arg0":Lcom/android/internal/policy/IKeyguardDismissCallback;
    .end local v4    # "_arg1":Ljava/lang/CharSequence;
    :pswitch_a28
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2237
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2238
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->isKeyguardSecure(I)Z

    move-result v4

    .line 2239
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2240
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2241
    goto/16 :goto_cb8

    .line 2228
    .end local v2    # "_arg0":I
    .end local v4    # "_result":Z
    :pswitch_a3c
    move-object v3, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isKeyguardLocked()Z

    move-result v2

    .line 2229
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2230
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2231
    goto/16 :goto_cb8

    .line 2220
    .end local v2    # "_result":Z
    :pswitch_a49
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IOnKeyguardExitResult$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IOnKeyguardExitResult;

    move-result-object v2

    .line 2221
    .local v2, "_arg0":Landroid/view/IOnKeyguardExitResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2222
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V

    .line 2223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2224
    goto/16 :goto_cb8

    .line 2209
    .end local v2    # "_arg0":Landroid/view/IOnKeyguardExitResult;
    :pswitch_a5d
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2211
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2212
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2213
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->reenableKeyguard(Landroid/os/IBinder;I)V

    .line 2214
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2215
    goto/16 :goto_cb8

    .line 2196
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":I
    :pswitch_a71
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2198
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2200
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2201
    .local v5, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2202
    invoke-virtual {p0, v2, v4, v5}, Landroid/view/IWindowManager$Stub;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 2203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2204
    goto/16 :goto_cb8

    .line 2189
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    :pswitch_a89
    move-object v3, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->endProlongedAnimations()V

    .line 2190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2191
    goto/16 :goto_cb8

    .line 2179
    :pswitch_a92
    move-object v3, p0

    sget-object v2, Landroid/view/RemoteAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/RemoteAnimationAdapter;

    .line 2181
    .local v2, "_arg0":Landroid/view/RemoteAnimationAdapter;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2182
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2183
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;I)V

    .line 2184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2185
    goto/16 :goto_cb8

    .line 2164
    .end local v2    # "_arg0":Landroid/view/RemoteAnimationAdapter;
    .end local v4    # "_arg1":I
    :pswitch_aaa
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IAppTransitionAnimationSpecsFuture$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IAppTransitionAnimationSpecsFuture;

    move-result-object v2

    .line 2166
    .local v2, "_arg0":Landroid/view/IAppTransitionAnimationSpecsFuture;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v4

    .line 2168
    .local v4, "_arg1":Landroid/os/IRemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 2170
    .local v5, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2171
    .local v6, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2172
    invoke-virtual {p0, v2, v4, v5, v6}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;ZI)V

    .line 2173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2174
    goto/16 :goto_cb8

    .line 2151
    .end local v2    # "_arg0":Landroid/view/IAppTransitionAnimationSpecsFuture;
    .end local v4    # "_arg1":Landroid/os/IRemoteCallback;
    .end local v5    # "_arg2":Z
    .end local v6    # "_arg3":I
    :pswitch_ace
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2153
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2155
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v5

    .line 2156
    .local v5, "_arg2":Landroid/view/IWindow;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2157
    invoke-virtual {p0, v2, v4, v5}, Landroid/view/IWindowManager$Stub;->setShellRootAccessibilityWindow(IILandroid/view/IWindow;)V

    .line 2158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2159
    goto/16 :goto_cb8

    .line 2137
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Landroid/view/IWindow;
    :pswitch_aea
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2139
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v4

    .line 2141
    .local v4, "_arg1":Landroid/view/IWindow;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2142
    .local v5, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2143
    invoke-virtual {p0, v2, v4, v5}, Landroid/view/IWindowManager$Stub;->addShellRoot(ILandroid/view/IWindow;I)Landroid/view/SurfaceControl;

    move-result-object v6

    .line 2144
    .local v6, "_result":Landroid/view/SurfaceControl;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2145
    invoke-virtual {p3, v6, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2146
    goto/16 :goto_cb8

    .line 2128
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Landroid/view/IWindow;
    .end local v5    # "_arg2":I
    .end local v6    # "_result":Landroid/view/SurfaceControl;
    :pswitch_b0a
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IDisplayChangeWindowController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayChangeWindowController;

    move-result-object v2

    .line 2129
    .local v2, "_arg0":Landroid/view/IDisplayChangeWindowController;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2130
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setDisplayChangeWindowController(Landroid/view/IDisplayChangeWindowController;)V

    .line 2131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2132
    goto/16 :goto_cb8

    .line 2117
    .end local v2    # "_arg0":Landroid/view/IDisplayChangeWindowController;
    :pswitch_b1e
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2119
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2120
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2121
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->removeWindowToken(Landroid/os/IBinder;I)V

    .line 2122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2123
    goto/16 :goto_cb8

    .line 2102
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":I
    :pswitch_b32
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2104
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2106
    .restart local v4    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2108
    .restart local v5    # "_arg2":I
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .line 2109
    .local v6, "_arg3":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2110
    invoke-virtual {p0, v2, v4, v5, v6}, Landroid/view/IWindowManager$Stub;->addWindowToken(Landroid/os/IBinder;IILandroid/os/Bundle;)V

    .line 2111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2112
    goto/16 :goto_cb8

    .line 2092
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":Landroid/os/Bundle;
    :pswitch_b52
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2093
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2094
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->isWindowToken(Landroid/os/IBinder;)Z

    move-result v4

    .line 2095
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2096
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2097
    goto/16 :goto_cb8

    .line 2083
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_result":Z
    :pswitch_b66
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2084
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2085
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setEventDispatching(Z)V

    .line 2086
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2087
    goto/16 :goto_cb8

    .line 2072
    .end local v2    # "_arg0":Z
    :pswitch_b76
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2074
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2075
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2076
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->setForcedDisplayScalingMode(II)V

    .line 2077
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2078
    goto/16 :goto_cb8

    .line 2061
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":I
    :pswitch_b8a
    move-object v3, p0

    sget-object v2, Landroid/window/ConfigurationChangeSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2063
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/window/ConfigurationChangeSetting;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2064
    .restart local v4    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2065
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->setConfigurationChangeSettingsForUser(Ljava/util/List;I)V

    .line 2066
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2067
    goto/16 :goto_cb8

    .line 2048
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/window/ConfigurationChangeSetting;>;"
    .end local v4    # "_arg1":I
    :pswitch_ba0
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2050
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 2052
    .local v4, "_arg1":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2053
    .restart local v5    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2054
    invoke-virtual {p0, v2, v4, v5}, Landroid/view/IWindowManager$Stub;->setForcedDisplayDensityRatio(IFI)V

    .line 2055
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2056
    goto/16 :goto_cb8

    .line 2037
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":F
    .end local v5    # "_arg2":I
    :pswitch_bb8
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2039
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2040
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2041
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->clearForcedDisplayDensityForUser(II)V

    .line 2042
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2043
    goto/16 :goto_cb8

    .line 2024
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":I
    :pswitch_bcc
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2026
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2028
    .restart local v4    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2029
    .restart local v5    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2030
    invoke-virtual {p0, v2, v4, v5}, Landroid/view/IWindowManager$Stub;->setForcedDisplayDensityForUser(III)V

    .line 2031
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2032
    goto/16 :goto_cb8

    .line 2014
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    :pswitch_be4
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2015
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2016
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getDisplayIdByUniqueId(Ljava/lang/String;)I

    move-result v4

    .line 2017
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2018
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2019
    goto/16 :goto_cb8

    .line 2004
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_bf8
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2005
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2006
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getBaseDisplayDensity(I)I

    move-result v4

    .line 2007
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2008
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2009
    goto/16 :goto_cb8

    .line 1994
    .end local v2    # "_arg0":I
    .end local v4    # "_result":I
    :pswitch_c0c
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1995
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1996
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getInitialDisplayDensity(I)I

    move-result v4

    .line 1997
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1998
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1999
    goto/16 :goto_cb8

    .line 1985
    .end local v2    # "_arg0":I
    .end local v4    # "_result":I
    :pswitch_c20
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1986
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1987
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->clearForcedDisplaySize(I)V

    .line 1988
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1989
    goto/16 :goto_cb8

    .line 1972
    .end local v2    # "_arg0":I
    :pswitch_c30
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1974
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1976
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1977
    .restart local v5    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1978
    invoke-virtual {p0, v2, v4, v5}, Landroid/view/IWindowManager$Stub;->setForcedDisplaySize(III)V

    .line 1979
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1980
    goto/16 :goto_cb8

    .line 1960
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    :pswitch_c48
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1962
    .restart local v2    # "_arg0":I
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 1963
    .local v4, "_arg1":Landroid/graphics/Point;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1964
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 1965
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1966
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1967
    goto :goto_cb8

    .line 1948
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Landroid/graphics/Point;
    :pswitch_c5f
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1950
    .restart local v2    # "_arg0":I
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 1951
    .restart local v4    # "_arg1":Landroid/graphics/Point;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1952
    invoke-virtual {p0, v2, v4}, Landroid/view/IWindowManager$Stub;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    .line 1953
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1954
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1955
    goto :goto_cb8

    .line 1938
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Landroid/graphics/Point;
    :pswitch_c76
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowSessionCallback;

    move-result-object v2

    .line 1939
    .local v2, "_arg0":Landroid/view/IWindowSessionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1940
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->openSession(Landroid/view/IWindowSessionCallback;)Landroid/view/IWindowSession;

    move-result-object v4

    .line 1941
    .local v4, "_result":Landroid/view/IWindowSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1942
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1943
    goto :goto_cb8

    .line 1930
    .end local v2    # "_arg0":Landroid/view/IWindowSessionCallback;
    .end local v4    # "_result":Landroid/view/IWindowSession;
    :pswitch_c8d
    move-object v3, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isViewServerRunning()Z

    move-result v2

    .line 1931
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1932
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1933
    goto :goto_cb8

    .line 1923
    .end local v2    # "_result":Z
    :pswitch_c99
    move-object v3, p0

    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->stopViewServer()Z

    move-result v2

    .line 1924
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1925
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1926
    goto :goto_cb8

    .line 1914
    .end local v2    # "_result":Z
    :pswitch_ca5
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1915
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1916
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->startViewServer(I)Z

    move-result v4

    .line 1917
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1918
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1919
    nop

    .line 3513
    .end local v2    # "_arg0":I
    .end local v4    # "_result":Z
    :goto_cb8
    return v1

    nop

    :pswitch_data_cba
    .packed-switch 0x1
        :pswitch_ca5
        :pswitch_c99
        :pswitch_c8d
        :pswitch_c76
        :pswitch_c5f
        :pswitch_c48
        :pswitch_c30
        :pswitch_c20
        :pswitch_c0c
        :pswitch_bf8
        :pswitch_be4
        :pswitch_bcc
        :pswitch_bb8
        :pswitch_ba0
        :pswitch_b8a
        :pswitch_b76
        :pswitch_b66
        :pswitch_b52
        :pswitch_b32
        :pswitch_b1e
        :pswitch_b0a
        :pswitch_aea
        :pswitch_ace
        :pswitch_aaa
        :pswitch_a92
        :pswitch_a89
        :pswitch_a71
        :pswitch_a5d
        :pswitch_a49
        :pswitch_a3c
        :pswitch_a28
        :pswitch_a0c
        :pswitch_9f8
        :pswitch_9e4
        :pswitch_9d4
        :pswitch_9c4
        :pswitch_9b0
        :pswitch_9a3
        :pswitch_98f
        :pswitch_97f
        :pswitch_972
        :pswitch_95e
        :pswitch_94e
        :pswitch_93a
        :pswitch_92a
        :pswitch_91a
        :pswitch_911
        :pswitch_904
        :pswitch_8f0
        :pswitch_8d4
        :pswitch_8c0
        :pswitch_8a4
        :pswitch_890
        :pswitch_87c
        :pswitch_86c
        :pswitch_85f
        :pswitch_847
        :pswitch_833
        :pswitch_81f
        :pswitch_80b
        :pswitch_7f7
        :pswitch_7ea
        :pswitch_7d6
        :pswitch_7ba
        :pswitch_7a2
        :pswitch_78a
        :pswitch_772
        :pswitch_75a
        :pswitch_74d
        :pswitch_740
        :pswitch_72b
        :pswitch_71b
        :pswitch_707
        :pswitch_6f3
        :pswitch_6e6
        :pswitch_6d2
        :pswitch_6be
        :pswitch_6b1
        :pswitch_699
        :pswitch_681
        :pswitch_669
        :pswitch_651
        :pswitch_639
        :pswitch_619
        :pswitch_601
        :pswitch_5f4
        :pswitch_5e0
        :pswitch_5cc
        :pswitch_5b4
        :pswitch_5a0
        :pswitch_597
        :pswitch_58e
        :pswitch_585
        :pswitch_578
        :pswitch_56f
        :pswitch_566
        :pswitch_559
        :pswitch_545
        :pswitch_531
        :pswitch_51d
        :pswitch_509
        :pswitch_4f5
        :pswitch_4e1
        :pswitch_4cd
        :pswitch_4b9
        :pswitch_4a5
        :pswitch_491
        :pswitch_47d
        :pswitch_469
        :pswitch_459
        :pswitch_44c
        :pswitch_43c
        :pswitch_420
        :pswitch_408
        :pswitch_3e8
        :pswitch_3cc
        :pswitch_3ac
        :pswitch_398
        :pswitch_38f
        :pswitch_37f
        :pswitch_36f
        :pswitch_34f
        :pswitch_33b
        :pswitch_32e
        :pswitch_316
        :pswitch_306
        :pswitch_2d9
        :pswitch_2b9
        :pswitch_299
        :pswitch_289
        :pswitch_269
        :pswitch_251
        :pswitch_23d
        :pswitch_230
        :pswitch_223
        :pswitch_213
        :pswitch_1fb
        :pswitch_1e7
        :pswitch_1d3
        :pswitch_1c3
        :pswitch_1b6
        :pswitch_1a9
        :pswitch_18c
        :pswitch_178
        :pswitch_150
        :pswitch_143
        :pswitch_12f
        :pswitch_113
        :pswitch_fb
        :pswitch_e3
        :pswitch_bf
        :pswitch_a7
        :pswitch_8f
        :pswitch_7b
        :pswitch_67
        :pswitch_47
        :pswitch_33
        :pswitch_1f
    .end packed-switch
.end method

.method protected blacklist registerScreenRecordingCallback_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 7036
    iget-object v0, p0, Landroid/view/IWindowManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.DETECT_SCREEN_RECORDING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 7037
    return-void
.end method

.method protected blacklist setConfigurationChangeSettingsForUser_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6858
    iget-object v0, p0, Landroid/view/IWindowManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 6859
    return-void
.end method

.method protected blacklist setDisplayWindowInsetsController_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6985
    iget-object v0, p0, Landroid/view/IWindowManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_APP_TOKENS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 6986
    return-void
.end method

.method protected blacklist setForcedDisplayDensityForUser_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6843
    iget-object v0, p0, Landroid/view/IWindowManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 6844
    return-void
.end method

.method protected blacklist setForcedDisplayDensityRatio_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6853
    iget-object v0, p0, Landroid/view/IWindowManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 6854
    return-void
.end method

.method protected blacklist setForcedDisplayScalingMode_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6863
    iget-object v0, p0, Landroid/view/IWindowManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 6864
    return-void
.end method

.method protected blacklist setForcedDisplaySize_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6830
    iget-object v0, p0, Landroid/view/IWindowManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 6831
    return-void
.end method

.method protected blacklist setNavBarVirtualKeyHapticFeedbackEnabled_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6935
    iget-object v0, p0, Landroid/view/IWindowManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.STATUS_BAR"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 6936
    return-void
.end method

.method protected blacklist setShellRootAccessibilityWindow_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6878
    iget-object v0, p0, Landroid/view/IWindowManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_APP_TOKENS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 6879
    return-void
.end method

.method protected blacklist unregisterScreenRecordingCallback_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 7041
    iget-object v0, p0, Landroid/view/IWindowManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.DETECT_SCREEN_RECORDING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 7042
    return-void
.end method

.method protected blacklist updateDisplayWindowAnimatingTypes_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6995
    iget-object v0, p0, Landroid/view/IWindowManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_APP_TOKENS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 6996
    return-void
.end method

.method protected blacklist updateDisplayWindowRequestedVisibleTypes_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6990
    iget-object v0, p0, Landroid/view/IWindowManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/view/IWindowManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_APP_TOKENS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 6991
    return-void
.end method
