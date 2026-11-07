.class public abstract Landroid/app/IActivityManager$Stub;
.super Landroid/os/Binder;
.source "IActivityManager.java"

# interfaces
.implements Landroid/app/IActivityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IActivityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.IActivityManager"

.field static final blacklist TRANSACTION_addApplicationStartInfoCompleteListener:I = 0xe1

.field static final greylist-max-o TRANSACTION_addInstrumentationResults:I = 0x2e

.field static final blacklist TRANSACTION_addOverridePermissionState:I = 0x106

.field static final greylist-max-o TRANSACTION_addPackageDependency:I = 0x62

.field static final blacklist TRANSACTION_addStartInfoTimestamp:I = 0xe3

.field static final blacklist TRANSACTION_addUidToObserver:I = 0x5

.field static final blacklist TRANSACTION_appNotResponding:I = 0xdf

.field static final greylist-max-o TRANSACTION_appNotRespondingViaProvider:I = 0xac

.field static final greylist-max-o TRANSACTION_attachApplication:I = 0x1a

.field static final blacklist TRANSACTION_backgroundAllowlistUid:I = 0xd8

.field static final greylist-max-o TRANSACTION_backupAgentCreated:I = 0x5f

.field static final greylist-max-o TRANSACTION_bindBackupAgent:I = 0x5e

.field static final greylist-max-o TRANSACTION_bindService:I = 0x25

.field static final blacklist TRANSACTION_bindServiceInstance:I = 0x26

.field static final greylist-max-o TRANSACTION_bootAnimationComplete:I = 0xb5

.field static final greylist-max-o TRANSACTION_broadcastIntent:I = 0x16

.field static final blacklist TRANSACTION_broadcastIntentWithFeature:I = 0x17

.field static final greylist-max-o TRANSACTION_cancelIntentSender:I = 0x42

.field static final greylist-max-o TRANSACTION_cancelTaskWindowTransition:I = 0xd4

.field static final blacklist TRANSACTION_checkContentUriPermissionFull:I = 0x37

.field static final greylist-max-o TRANSACTION_checkPermission:I = 0x9

.field static final blacklist TRANSACTION_checkPermissionForDevice:I = 0x102

.field static final greylist-max-o TRANSACTION_checkUriPermission:I = 0x36

.field static final blacklist TRANSACTION_checkUriPermissions:I = 0x38

.field static final blacklist TRANSACTION_clearAllOverridePermissionStates:I = 0x109

.field static final greylist-max-o TRANSACTION_clearApplicationUserData:I = 0x51

.field static final blacklist TRANSACTION_clearOverridePermissionStates:I = 0x108

.field static final greylist-max-o TRANSACTION_closeSystemDialogs:I = 0x64

.field static final blacklist TRANSACTION_crashApplicationWithType:I = 0x6f

.field static final blacklist TRANSACTION_crashApplicationWithTypeWithExtras:I = 0x70

.field static final greylist-max-o TRANSACTION_dumpHeap:I = 0x72

.field static final greylist-max-o TRANSACTION_dumpHeapFinished:I = 0xbe

.field static final blacklist TRANSACTION_enableAppFreezer:I = 0xed

.field static final blacklist TRANSACTION_enableFgsNotificationRateLimit:I = 0xee

.field static final greylist-max-o TRANSACTION_enterSafeMode:I = 0x46

.field static final greylist-max-o TRANSACTION_finishActivity:I = 0x11

.field static final blacklist TRANSACTION_finishAttachApplication:I = 0x1b

.field static final greylist-max-o TRANSACTION_finishHeavyWeightApp:I = 0x6b

.field static final greylist-max-o TRANSACTION_finishInstrumentation:I = 0x2f

.field static final greylist-max-o TRANSACTION_finishReceiver:I = 0x19

.field static final blacklist TRANSACTION_forceDelayBroadcastDelivery:I = 0xf6

.field static final greylist-max-o TRANSACTION_forceStopPackage:I = 0x54

.field static final blacklist TRANSACTION_forceStopPackageEvenWhenStopping:I = 0x55

.field static final blacklist TRANSACTION_frozenBinderTransactionDetected:I = 0x103

.field static final blacklist TRANSACTION_getAllRootTaskInfos:I = 0xa6

.field static final blacklist TRANSACTION_getBackgroundRestrictionExemptionReason:I = 0xf8

.field static final blacklist TRANSACTION_getBindingUidProcessState:I = 0x104

.field static final blacklist TRANSACTION_getBugreportWhitelistedPackages:I = 0xa0

.field static final greylist-max-o TRANSACTION_getConfiguration:I = 0x30

.field static final greylist-max-o TRANSACTION_getContentProvider:I = 0x1f

.field static final greylist-max-o TRANSACTION_getContentProviderExternal:I = 0x82

.field static final greylist-max-o TRANSACTION_getCurrentUser:I = 0x87

.field static final blacklist TRANSACTION_getCurrentUserId:I = 0x88

.field static final blacklist TRANSACTION_getDelegatedShellPermissions:I = 0xdc

.field static final blacklist TRANSACTION_getDisplayIdsForStartingVisibleBackgroundUsers:I = 0xfc

.field static final blacklist TRANSACTION_getFocusedRootTaskInfo:I = 0xa9

.field static final blacklist TRANSACTION_getForegroundServiceType:I = 0x4d

.field static final blacklist TRANSACTION_getHistoricalProcessExitReasons:I = 0xe5

.field static final blacklist TRANSACTION_getHistoricalProcessStartReasons:I = 0xe0

.field static final blacklist TRANSACTION_getInfoForIntentSender:I = 0x43

.field static final greylist-max-o TRANSACTION_getIntentForIntentSender:I = 0xa1

.field static final greylist-max-o TRANSACTION_getIntentSender:I = 0x40

.field static final blacklist TRANSACTION_getIntentSenderWithFeature:I = 0x41

.field static final greylist-max-o TRANSACTION_getLaunchedFromPackage:I = 0xa2

.field static final greylist-max-o TRANSACTION_getLaunchedFromUid:I = 0x89

.field static final blacklist TRANSACTION_getLifeMonitor:I = 0xdd

.field static final greylist-max-o TRANSACTION_getLockTaskModeState:I = 0xbc

.field static final greylist-max-o TRANSACTION_getMemoryInfo:I = 0x4f

.field static final greylist-max-o TRANSACTION_getMemoryTrimLevel:I = 0xcb

.field static final blacklist TRANSACTION_getMimeTypeFilterAsync:I = 0x71

.field static final greylist-max-o TRANSACTION_getMyMemoryState:I = 0x85

.field static final greylist-max-o TRANSACTION_getPackageProcessState:I = 0xc2

.field static final greylist-max-o TRANSACTION_getProcessLimit:I = 0x35

.field static final greylist-max-o TRANSACTION_getProcessMemoryInfo:I = 0x65

.field static final greylist-max-o TRANSACTION_getProcessPss:I = 0x7f

.field static final greylist-max-o TRANSACTION_getProcessesInErrorState:I = 0x50

.field static final greylist-max-o TRANSACTION_getRecentTasks:I = 0x3e

.field static final blacklist TRANSACTION_getRegisteredIntentFilters:I = 0x15

.field static final greylist-max-o TRANSACTION_getRunningAppProcesses:I = 0x58

.field static final greylist-max-o TRANSACTION_getRunningExternalApplications:I = 0x6a

.field static final greylist-max-o TRANSACTION_getRunningServiceControlPanel:I = 0x22

.field static final greylist-max-o TRANSACTION_getRunningUserIds:I = 0x94

.field static final greylist-max-o TRANSACTION_getServices:I = 0x57

.field static final blacklist TRANSACTION_getSwitchingFromUserMessage:I = 0x76

.field static final blacklist TRANSACTION_getSwitchingToUserMessage:I = 0x77

.field static final greylist-max-o TRANSACTION_getTagForIntentSender:I = 0xaf

.field static final greylist-max-o TRANSACTION_getTaskBounds:I = 0xad

.field static final greylist-max-o TRANSACTION_getTaskForActivity:I = 0x1e

.field static final greylist-max-o TRANSACTION_getTasks:I = 0x1c

.field static final blacklist TRANSACTION_getUidFrozenState:I = 0x101

.field static final blacklist TRANSACTION_getUidLastIdleElapsedTime:I = 0x105

.field static final blacklist TRANSACTION_getUidProcessCapabilities:I = 0xf3

.field static final greylist-max-o TRANSACTION_getUidProcessState:I = 0x8

.field static final greylist-max-o TRANSACTION_grantUriPermission:I = 0x39

.field static final greylist-max-o TRANSACTION_handleApplicationCrash:I = 0xd

.field static final greylist-max-o TRANSACTION_handleApplicationStrictModeViolation:I = 0x6c

.field static final greylist-max-o TRANSACTION_handleApplicationWtf:I = 0x67

.field static final greylist-max-o TRANSACTION_handleIncomingUser:I = 0x61

.field static final greylist-max-o TRANSACTION_hang:I = 0xa5

.field static final blacklist TRANSACTION_hasServiceTimeLimitExceeded:I = 0xfe

.field static final blacklist TRANSACTION_holdLock:I = 0xef

.field static final blacklist TRANSACTION_isAppFreezerEnabled:I = 0xea

.field static final blacklist TRANSACTION_isAppFreezerSupported:I = 0xe9

.field static final greylist-max-o TRANSACTION_isBackgroundRestricted:I = 0xd1

.field static final greylist-max-o TRANSACTION_isInLockTaskMode:I = 0xb1

.field static final greylist-max-o TRANSACTION_isIntentSenderAnActivity:I = 0x8b

.field static final greylist-max-o TRANSACTION_isIntentSenderTargetedToPackage:I = 0x7c

.field static final blacklist TRANSACTION_isProcessFrozen:I = 0xf7

.field static final greylist-max-o TRANSACTION_isTopActivityImmersive:I = 0x6e

.field static final greylist-max-o TRANSACTION_isTopOfTask:I = 0xb4

.field static final greylist-max-o TRANSACTION_isUidActive:I = 0x7

.field static final greylist-max-o TRANSACTION_isUserAMonkey:I = 0x69

.field static final greylist-max-o TRANSACTION_isUserRunning:I = 0x73

.field static final greylist-max-o TRANSACTION_isVrModePackageEnabled:I = 0xcc

.field static final greylist-max-o TRANSACTION_killAllBackgroundProcesses:I = 0x81

.field static final greylist-max-o TRANSACTION_killApplication:I = 0x63

.field static final greylist-max-o TRANSACTION_killApplicationProcess:I = 0x66

.field static final greylist-max-o TRANSACTION_killBackgroundProcesses:I = 0x68

.field static final greylist-max-o TRANSACTION_killPackageDependents:I = 0xc8

.field static final greylist-max-o TRANSACTION_killPids:I = 0x56

.field static final greylist-max-o TRANSACTION_killProcessesBelowForeground:I = 0x86

.field static final blacklist TRANSACTION_killProcessesWhenImperceptible:I = 0xe6

.field static final greylist-max-o TRANSACTION_killUid:I = 0xa3

.field static final blacklist TRANSACTION_killUidForPermissionChange:I = 0xeb

.field static final blacklist TRANSACTION_launchBugReportHandlerApp:I = 0x9f

.field static final blacklist TRANSACTION_logFgsApiBegin:I = 0xa

.field static final blacklist TRANSACTION_logFgsApiEnd:I = 0xb

.field static final blacklist TRANSACTION_logFgsApiStateChanged:I = 0xc

.field static final greylist-max-o TRANSACTION_makePackageIdle:I = 0xc9

.field static final greylist-max-o TRANSACTION_moveActivityTaskToBack:I = 0x4e

.field static final greylist-max-o TRANSACTION_moveTaskToFront:I = 0x1d

.field static final blacklist TRANSACTION_moveTaskToRootTask:I = 0xa7

.field static final greylist-max-o TRANSACTION_noteAlarmFinish:I = 0xc1

.field static final greylist-max-o TRANSACTION_noteAlarmStart:I = 0xc0

.field static final blacklist TRANSACTION_noteAppRestrictionEnabled:I = 0x10a

.field static final greylist-max-o TRANSACTION_noteWakeupAlarm:I = 0x47

.field static final greylist-max-o TRANSACTION_notifyCleartextNetwork:I = 0xb9

.field static final greylist-max-o TRANSACTION_notifyLockedProfile:I = 0xcd

.field static final greylist-max-o TRANSACTION_openContentUri:I = 0x1

.field static final greylist-max-o TRANSACTION_peekService:I = 0x59

.field static final greylist-max-o TRANSACTION_performIdleMaintenance:I = 0xab

.field static final greylist-max-o TRANSACTION_profileControl:I = 0x5a

.field static final greylist-max-o TRANSACTION_publishContentProviders:I = 0x20

.field static final greylist-max-o TRANSACTION_publishService:I = 0x29

.field static final blacklist TRANSACTION_queryIntentComponentsForIntentSender:I = 0xf2

.field static final greylist-max-o TRANSACTION_refContentProvider:I = 0x21

.field static final blacklist TRANSACTION_refreshIntentCreatorToken:I = 0x10b

.field static final blacklist TRANSACTION_registerForegroundServiceObserver:I = 0x53

.field static final blacklist TRANSACTION_registerIntentSenderCancelListenerEx:I = 0x44

.field static final greylist-max-o TRANSACTION_registerProcessObserver:I = 0x7a

.field static final greylist-max-o TRANSACTION_registerReceiver:I = 0x12

.field static final blacklist TRANSACTION_registerReceiverWithFeature:I = 0x13

.field static final blacklist TRANSACTION_registerStrictModeCallback:I = 0x6d

.field static final greylist-max-o TRANSACTION_registerTaskStackListener:I = 0xb7

.field static final blacklist TRANSACTION_registerUidFrozenStateChangedCallback:I = 0xff

.field static final greylist-max-o TRANSACTION_registerUidObserver:I = 0x2

.field static final blacklist TRANSACTION_registerUidObserverForUids:I = 0x4

.field static final greylist-max-o TRANSACTION_registerUserSwitchObserver:I = 0x92

.field static final blacklist TRANSACTION_removeApplicationStartInfoCompleteListener:I = 0xe2

.field static final greylist-max-o TRANSACTION_removeContentProvider:I = 0x48

.field static final greylist-max-o TRANSACTION_removeContentProviderExternal:I = 0x83

.field static final blacklist TRANSACTION_removeContentProviderExternalAsUser:I = 0x84

.field static final blacklist TRANSACTION_removeOverridePermissionState:I = 0x107

.field static final greylist-max-o TRANSACTION_removeTask:I = 0x79

.field static final blacklist TRANSACTION_removeUidFromObserver:I = 0x6

.field static final blacklist TRANSACTION_reportStartInfoViewTimestamps:I = 0xe4

.field static final greylist-max-o TRANSACTION_requestBugReport:I = 0x96

.field static final blacklist TRANSACTION_requestBugReportWithDescription:I = 0x97

.field static final blacklist TRANSACTION_requestBugReportWithExtraAttachments:I = 0x9c

.field static final blacklist TRANSACTION_requestFullBugReport:I = 0x9d

.field static final blacklist TRANSACTION_requestInteractiveBugReport:I = 0x9b

.field static final blacklist TRANSACTION_requestInteractiveBugReportWithDescription:I = 0x9a

.field static final blacklist TRANSACTION_requestRemoteBugReport:I = 0x9e

.field static final blacklist TRANSACTION_requestSystemServerHeapDump:I = 0x95

.field static final greylist-max-o TRANSACTION_requestTelephonyBugReport:I = 0x98

.field static final greylist-max-o TRANSACTION_requestWifiBugReport:I = 0x99

.field static final blacklist TRANSACTION_resetAppErrors:I = 0xec

.field static final greylist-max-o TRANSACTION_resizeTask:I = 0xbb

.field static final greylist-max-o TRANSACTION_restart:I = 0xaa

.field static final greylist-max-o TRANSACTION_restartUserInBackground:I = 0xfb

.field static final greylist-max-o TRANSACTION_resumeAppSwitches:I = 0x5d

.field static final greylist-max-o TRANSACTION_revokeUriPermission:I = 0x3a

.field static final greylist-max-o TRANSACTION_scheduleApplicationInfoChanged:I = 0xd5

.field static final greylist-max-o TRANSACTION_sendIdleJobTrigger:I = 0xcf

.field static final greylist-max-o TRANSACTION_sendIntentSender:I = 0xd0

.field static final greylist-max-o TRANSACTION_serviceDoneExecuting:I = 0x3f

.field static final greylist-max-o TRANSACTION_setActivityController:I = 0x3b

.field static final blacklist TRANSACTION_setActivityLocusContext:I = 0xe7

.field static final greylist-max-o TRANSACTION_setAgentApp:I = 0x2b

.field static final greylist-max-o TRANSACTION_setAlwaysFinish:I = 0x2c

.field static final greylist-max-o TRANSACTION_setDebugApp:I = 0x2a

.field static final blacklist TRANSACTION_setDeterministicUidIdle:I = 0xca

.field static final greylist-max-o TRANSACTION_setDumpHeapDebugLimit:I = 0xbd

.field static final blacklist TRANSACTION_setFocusedRootTask:I = 0xa8

.field static final greylist-max-o TRANSACTION_setHasTopUi:I = 0xd3

.field static final greylist-max-o TRANSACTION_setPackageScreenCompatMode:I = 0x74

.field static final greylist-max-o TRANSACTION_setPersistentVrThread:I = 0xd6

.field static final greylist-max-o TRANSACTION_setProcessImportant:I = 0x4b

.field static final greylist-max-o TRANSACTION_setProcessLimit:I = 0x34

.field static final greylist-max-o TRANSACTION_setProcessMemoryTrimLevel:I = 0xae

.field static final blacklist TRANSACTION_setProcessStateSummary:I = 0xe8

.field static final greylist-max-o TRANSACTION_setRenderThread:I = 0xd2

.field static final greylist-max-o TRANSACTION_setRequestedOrientation:I = 0x49

.field static final greylist-max-o TRANSACTION_setServiceForeground:I = 0x4c

.field static final blacklist TRANSACTION_setStopUserOnSwitch:I = 0x78

.field static final greylist-max-o TRANSACTION_setTaskResizeable:I = 0xba

.field static final blacklist TRANSACTION_setThemeOverlayReady:I = 0xb6

.field static final greylist-max-o TRANSACTION_setUserIsMonkey:I = 0xa4

.field static final blacklist TRANSACTION_shouldServiceTimeOut:I = 0xfd

.field static final greylist-max-o TRANSACTION_showBootMessage:I = 0x80

.field static final greylist-max-o TRANSACTION_showWaitingForDebugger:I = 0x3c

.field static final greylist-max-o TRANSACTION_shutdown:I = 0x5b

.field static final greylist-max-o TRANSACTION_signalPersistentProcesses:I = 0x3d

.field static final greylist-max-o TRANSACTION_startActivity:I = 0xe

.field static final greylist-max-o TRANSACTION_startActivityAsUser:I = 0x8c

.field static final blacklist TRANSACTION_startActivityAsUserWithFeature:I = 0x8d

.field static final greylist-max-o TRANSACTION_startActivityFromRecents:I = 0xb2

.field static final blacklist TRANSACTION_startActivityWithFeature:I = 0xf

.field static final greylist-max-o TRANSACTION_startBinderTracking:I = 0xc3

.field static final greylist-max-o TRANSACTION_startConfirmDeviceCredentialIntent:I = 0xce

.field static final blacklist TRANSACTION_startDelegateShellPermissionIdentity:I = 0xda

.field static final greylist-max-o TRANSACTION_startInstrumentation:I = 0x2d

.field static final blacklist TRANSACTION_startProfile:I = 0xf0

.field static final blacklist TRANSACTION_startProfileWithListener:I = 0xfa

.field static final greylist-max-o TRANSACTION_startService:I = 0x23

.field static final greylist-max-o TRANSACTION_startSystemLockTaskMode:I = 0xb3

.field static final greylist-max-o TRANSACTION_startUserInBackground:I = 0xb0

.field static final blacklist TRANSACTION_startUserInBackgroundVisibleOnDisplay:I = 0xf9

.field static final greylist-max-o TRANSACTION_startUserInBackgroundWithListener:I = 0xd9

.field static final blacklist TRANSACTION_startUserInForegroundWithListener:I = 0xde

.field static final blacklist TRANSACTION_stopAppForUser:I = 0x52

.field static final greylist-max-o TRANSACTION_stopAppSwitches:I = 0x5c

.field static final greylist-max-o TRANSACTION_stopBinderTrackingAndDump:I = 0xc4

.field static final blacklist TRANSACTION_stopDelegateShellPermissionIdentity:I = 0xdb

.field static final blacklist TRANSACTION_stopProfile:I = 0xf1

.field static final greylist-max-o TRANSACTION_stopService:I = 0x24

.field static final greylist-max-o TRANSACTION_stopServiceToken:I = 0x33

.field static final greylist-max-o TRANSACTION_stopUser:I = 0x8e

.field static final blacklist TRANSACTION_stopUserExceptCertainProfiles:I = 0x90

.field static final blacklist TRANSACTION_stopUserWithCallback:I = 0x8f

.field static final blacklist TRANSACTION_stopUserWithDelayedLocking:I = 0x91

.field static final greylist-max-o TRANSACTION_suppressResizeConfigChanges:I = 0xc5

.field static final greylist-max-o TRANSACTION_switchUser:I = 0x75

.field static final greylist-max-o TRANSACTION_unbindBackupAgent:I = 0x60

.field static final greylist-max-o TRANSACTION_unbindFinished:I = 0x4a

.field static final greylist-max-o TRANSACTION_unbindService:I = 0x28

.field static final greylist-max-o TRANSACTION_unbroadcastIntent:I = 0x18

.field static final greylist-max-o TRANSACTION_unhandledBack:I = 0x10

.field static final greylist-max-o TRANSACTION_unlockUser:I = 0xc6

.field static final blacklist TRANSACTION_unlockUser2:I = 0xc7

.field static final greylist-max-o TRANSACTION_unregisterIntentSenderCancelListener:I = 0x45

.field static final greylist-max-o TRANSACTION_unregisterProcessObserver:I = 0x7b

.field static final greylist-max-o TRANSACTION_unregisterReceiver:I = 0x14

.field static final greylist-max-o TRANSACTION_unregisterTaskStackListener:I = 0xb8

.field static final blacklist TRANSACTION_unregisterUidFrozenStateChangedCallback:I = 0x100

.field static final greylist-max-o TRANSACTION_unregisterUidObserver:I = 0x3

.field static final greylist-max-o TRANSACTION_unregisterUserSwitchObserver:I = 0x93

.field static final greylist-max-o TRANSACTION_unstableProviderDied:I = 0x8a

.field static final greylist-max-o TRANSACTION_updateConfiguration:I = 0x31

.field static final greylist-max-o TRANSACTION_updateLockTaskPackages:I = 0xbf

.field static final blacklist TRANSACTION_updateMccMncConfiguration:I = 0x32

.field static final greylist-max-o TRANSACTION_updatePersistentConfiguration:I = 0x7d

.field static final blacklist TRANSACTION_updatePersistentConfigurationWithAttribution:I = 0x7e

.field static final blacklist TRANSACTION_updateServiceGroup:I = 0x27

.field static final blacklist TRANSACTION_waitForBroadcastBarrier:I = 0xf5

.field static final blacklist TRANSACTION_waitForBroadcastIdle:I = 0xf4

.field static final greylist-max-o TRANSACTION_waitForNetworkStateUpdate:I = 0xd7


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1389
    nop

    .line 1390
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 1389
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IActivityManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 1391
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 1379
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 1380
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/IActivityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 1381
    if-eqz p1, :cond_d

    .line 1384
    iput-object p1, p0, Landroid/app/IActivityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 1385
    return-void

    .line 1382
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-r asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 1398
    if-nez p0, :cond_4

    .line 1399
    const/4 v0, 0x0

    return-object v0

    .line 1401
    :cond_4
    const-string v0, "android.app.IActivityManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 1402
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/IActivityManager;

    if-eqz v1, :cond_14

    .line 1403
    move-object v1, v0

    check-cast v1, Landroid/app/IActivityManager;

    return-object v1

    .line 1405
    :cond_14
    new-instance v1, Landroid/app/IActivityManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IActivityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 1414
    packed-switch p0, :pswitch_data_3de

    .line 2486
    const/4 v0, 0x0

    return-object v0

    .line 2482
    :pswitch_5
    const-string/jumbo v0, "refreshIntentCreatorToken"

    return-object v0

    .line 2478
    :pswitch_9
    const-string/jumbo v0, "noteAppRestrictionEnabled"

    return-object v0

    .line 2474
    :pswitch_d
    const-string v0, "clearAllOverridePermissionStates"

    return-object v0

    .line 2470
    :pswitch_10
    const-string v0, "clearOverridePermissionStates"

    return-object v0

    .line 2466
    :pswitch_13
    const-string/jumbo v0, "removeOverridePermissionState"

    return-object v0

    .line 2462
    :pswitch_17
    const-string v0, "addOverridePermissionState"

    return-object v0

    .line 2458
    :pswitch_1a
    const-string/jumbo v0, "getUidLastIdleElapsedTime"

    return-object v0

    .line 2454
    :pswitch_1e
    const-string v0, "getBindingUidProcessState"

    return-object v0

    .line 2450
    :pswitch_21
    const-string v0, "frozenBinderTransactionDetected"

    return-object v0

    .line 2446
    :pswitch_24
    const-string v0, "checkPermissionForDevice"

    return-object v0

    .line 2442
    :pswitch_27
    const-string/jumbo v0, "getUidFrozenState"

    return-object v0

    .line 2438
    :pswitch_2b
    const-string/jumbo v0, "unregisterUidFrozenStateChangedCallback"

    return-object v0

    .line 2434
    :pswitch_2f
    const-string/jumbo v0, "registerUidFrozenStateChangedCallback"

    return-object v0

    .line 2430
    :pswitch_33
    const-string/jumbo v0, "hasServiceTimeLimitExceeded"

    return-object v0

    .line 2426
    :pswitch_37
    const-string/jumbo v0, "shouldServiceTimeOut"

    return-object v0

    .line 2422
    :pswitch_3b
    const-string v0, "getDisplayIdsForStartingVisibleBackgroundUsers"

    return-object v0

    .line 2418
    :pswitch_3e
    const-string/jumbo v0, "restartUserInBackground"

    return-object v0

    .line 2414
    :pswitch_42
    const-string/jumbo v0, "startProfileWithListener"

    return-object v0

    .line 2410
    :pswitch_46
    const-string/jumbo v0, "startUserInBackgroundVisibleOnDisplay"

    return-object v0

    .line 2406
    :pswitch_4a
    const-string v0, "getBackgroundRestrictionExemptionReason"

    return-object v0

    .line 2402
    :pswitch_4d
    const-string/jumbo v0, "isProcessFrozen"

    return-object v0

    .line 2398
    :pswitch_51
    const-string v0, "forceDelayBroadcastDelivery"

    return-object v0

    .line 2394
    :pswitch_54
    const-string/jumbo v0, "waitForBroadcastBarrier"

    return-object v0

    .line 2390
    :pswitch_58
    const-string/jumbo v0, "waitForBroadcastIdle"

    return-object v0

    .line 2386
    :pswitch_5c
    const-string/jumbo v0, "getUidProcessCapabilities"

    return-object v0

    .line 2382
    :pswitch_60
    const-string/jumbo v0, "queryIntentComponentsForIntentSender"

    return-object v0

    .line 2378
    :pswitch_64
    const-string/jumbo v0, "stopProfile"

    return-object v0

    .line 2374
    :pswitch_68
    const-string/jumbo v0, "startProfile"

    return-object v0

    .line 2370
    :pswitch_6c
    const-string/jumbo v0, "holdLock"

    return-object v0

    .line 2366
    :pswitch_70
    const-string v0, "enableFgsNotificationRateLimit"

    return-object v0

    .line 2362
    :pswitch_73
    const-string v0, "enableAppFreezer"

    return-object v0

    .line 2358
    :pswitch_76
    const-string/jumbo v0, "resetAppErrors"

    return-object v0

    .line 2354
    :pswitch_7a
    const-string/jumbo v0, "killUidForPermissionChange"

    return-object v0

    .line 2350
    :pswitch_7e
    const-string/jumbo v0, "isAppFreezerEnabled"

    return-object v0

    .line 2346
    :pswitch_82
    const-string/jumbo v0, "isAppFreezerSupported"

    return-object v0

    .line 2342
    :pswitch_86
    const-string/jumbo v0, "setProcessStateSummary"

    return-object v0

    .line 2338
    :pswitch_8a
    const-string/jumbo v0, "setActivityLocusContext"

    return-object v0

    .line 2334
    :pswitch_8e
    const-string/jumbo v0, "killProcessesWhenImperceptible"

    return-object v0

    .line 2330
    :pswitch_92
    const-string v0, "getHistoricalProcessExitReasons"

    return-object v0

    .line 2326
    :pswitch_95
    const-string/jumbo v0, "reportStartInfoViewTimestamps"

    return-object v0

    .line 2322
    :pswitch_99
    const-string v0, "addStartInfoTimestamp"

    return-object v0

    .line 2318
    :pswitch_9c
    const-string/jumbo v0, "removeApplicationStartInfoCompleteListener"

    return-object v0

    .line 2314
    :pswitch_a0
    const-string v0, "addApplicationStartInfoCompleteListener"

    return-object v0

    .line 2310
    :pswitch_a3
    const-string v0, "getHistoricalProcessStartReasons"

    return-object v0

    .line 2306
    :pswitch_a6
    const-string v0, "appNotResponding"

    return-object v0

    .line 2302
    :pswitch_a9
    const-string/jumbo v0, "startUserInForegroundWithListener"

    return-object v0

    .line 2298
    :pswitch_ad
    const-string v0, "getLifeMonitor"

    return-object v0

    .line 2294
    :pswitch_b0
    const-string v0, "getDelegatedShellPermissions"

    return-object v0

    .line 2290
    :pswitch_b3
    const-string/jumbo v0, "stopDelegateShellPermissionIdentity"

    return-object v0

    .line 2286
    :pswitch_b7
    const-string/jumbo v0, "startDelegateShellPermissionIdentity"

    return-object v0

    .line 2282
    :pswitch_bb
    const-string/jumbo v0, "startUserInBackgroundWithListener"

    return-object v0

    .line 2278
    :pswitch_bf
    const-string v0, "backgroundAllowlistUid"

    return-object v0

    .line 2274
    :pswitch_c2
    const-string/jumbo v0, "waitForNetworkStateUpdate"

    return-object v0

    .line 2270
    :pswitch_c6
    const-string/jumbo v0, "setPersistentVrThread"

    return-object v0

    .line 2266
    :pswitch_ca
    const-string/jumbo v0, "scheduleApplicationInfoChanged"

    return-object v0

    .line 2262
    :pswitch_ce
    const-string v0, "cancelTaskWindowTransition"

    return-object v0

    .line 2258
    :pswitch_d1
    const-string/jumbo v0, "setHasTopUi"

    return-object v0

    .line 2254
    :pswitch_d5
    const-string/jumbo v0, "setRenderThread"

    return-object v0

    .line 2250
    :pswitch_d9
    const-string/jumbo v0, "isBackgroundRestricted"

    return-object v0

    .line 2246
    :pswitch_dd
    const-string/jumbo v0, "sendIntentSender"

    return-object v0

    .line 2242
    :pswitch_e1
    const-string/jumbo v0, "sendIdleJobTrigger"

    return-object v0

    .line 2238
    :pswitch_e5
    const-string/jumbo v0, "startConfirmDeviceCredentialIntent"

    return-object v0

    .line 2234
    :pswitch_e9
    const-string/jumbo v0, "notifyLockedProfile"

    return-object v0

    .line 2230
    :pswitch_ed
    const-string/jumbo v0, "isVrModePackageEnabled"

    return-object v0

    .line 2226
    :pswitch_f1
    const-string v0, "getMemoryTrimLevel"

    return-object v0

    .line 2222
    :pswitch_f4
    const-string/jumbo v0, "setDeterministicUidIdle"

    return-object v0

    .line 2218
    :pswitch_f8
    const-string/jumbo v0, "makePackageIdle"

    return-object v0

    .line 2214
    :pswitch_fc
    const-string/jumbo v0, "killPackageDependents"

    return-object v0

    .line 2210
    :pswitch_100
    const-string/jumbo v0, "unlockUser2"

    return-object v0

    .line 2206
    :pswitch_104
    const-string/jumbo v0, "unlockUser"

    return-object v0

    .line 2202
    :pswitch_108
    const-string/jumbo v0, "suppressResizeConfigChanges"

    return-object v0

    .line 2198
    :pswitch_10c
    const-string/jumbo v0, "stopBinderTrackingAndDump"

    return-object v0

    .line 2194
    :pswitch_110
    const-string/jumbo v0, "startBinderTracking"

    return-object v0

    .line 2190
    :pswitch_114
    const-string v0, "getPackageProcessState"

    return-object v0

    .line 2186
    :pswitch_117
    const-string/jumbo v0, "noteAlarmFinish"

    return-object v0

    .line 2182
    :pswitch_11b
    const-string/jumbo v0, "noteAlarmStart"

    return-object v0

    .line 2178
    :pswitch_11f
    const-string/jumbo v0, "updateLockTaskPackages"

    return-object v0

    .line 2174
    :pswitch_123
    const-string v0, "dumpHeapFinished"

    return-object v0

    .line 2170
    :pswitch_126
    const-string/jumbo v0, "setDumpHeapDebugLimit"

    return-object v0

    .line 2166
    :pswitch_12a
    const-string v0, "getLockTaskModeState"

    return-object v0

    .line 2162
    :pswitch_12d
    const-string/jumbo v0, "resizeTask"

    return-object v0

    .line 2158
    :pswitch_131
    const-string/jumbo v0, "setTaskResizeable"

    return-object v0

    .line 2154
    :pswitch_135
    const-string/jumbo v0, "notifyCleartextNetwork"

    return-object v0

    .line 2150
    :pswitch_139
    const-string/jumbo v0, "unregisterTaskStackListener"

    return-object v0

    .line 2146
    :pswitch_13d
    const-string/jumbo v0, "registerTaskStackListener"

    return-object v0

    .line 2142
    :pswitch_141
    const-string/jumbo v0, "setThemeOverlayReady"

    return-object v0

    .line 2138
    :pswitch_145
    const-string v0, "bootAnimationComplete"

    return-object v0

    .line 2134
    :pswitch_148
    const-string/jumbo v0, "isTopOfTask"

    return-object v0

    .line 2130
    :pswitch_14c
    const-string/jumbo v0, "startSystemLockTaskMode"

    return-object v0

    .line 2126
    :pswitch_150
    const-string/jumbo v0, "startActivityFromRecents"

    return-object v0

    .line 2122
    :pswitch_154
    const-string/jumbo v0, "isInLockTaskMode"

    return-object v0

    .line 2118
    :pswitch_158
    const-string/jumbo v0, "startUserInBackground"

    return-object v0

    .line 2114
    :pswitch_15c
    const-string/jumbo v0, "getTagForIntentSender"

    return-object v0

    .line 2110
    :pswitch_160
    const-string/jumbo v0, "setProcessMemoryTrimLevel"

    return-object v0

    .line 2106
    :pswitch_164
    const-string/jumbo v0, "getTaskBounds"

    return-object v0

    .line 2102
    :pswitch_168
    const-string v0, "appNotRespondingViaProvider"

    return-object v0

    .line 2098
    :pswitch_16b
    const-string/jumbo v0, "performIdleMaintenance"

    return-object v0

    .line 2094
    :pswitch_16f
    const-string/jumbo v0, "restart"

    return-object v0

    .line 2090
    :pswitch_173
    const-string v0, "getFocusedRootTaskInfo"

    return-object v0

    .line 2086
    :pswitch_176
    const-string/jumbo v0, "setFocusedRootTask"

    return-object v0

    .line 2082
    :pswitch_17a
    const-string/jumbo v0, "moveTaskToRootTask"

    return-object v0

    .line 2078
    :pswitch_17e
    const-string v0, "getAllRootTaskInfos"

    return-object v0

    .line 2074
    :pswitch_181
    const-string/jumbo v0, "hang"

    return-object v0

    .line 2070
    :pswitch_185
    const-string/jumbo v0, "setUserIsMonkey"

    return-object v0

    .line 2066
    :pswitch_189
    const-string/jumbo v0, "killUid"

    return-object v0

    .line 2062
    :pswitch_18d
    const-string v0, "getLaunchedFromPackage"

    return-object v0

    .line 2058
    :pswitch_190
    const-string v0, "getIntentForIntentSender"

    return-object v0

    .line 2054
    :pswitch_193
    const-string v0, "getBugreportWhitelistedPackages"

    return-object v0

    .line 2050
    :pswitch_196
    const-string/jumbo v0, "launchBugReportHandlerApp"

    return-object v0

    .line 2046
    :pswitch_19a
    const-string/jumbo v0, "requestRemoteBugReport"

    return-object v0

    .line 2042
    :pswitch_19e
    const-string/jumbo v0, "requestFullBugReport"

    return-object v0

    .line 2038
    :pswitch_1a2
    const-string/jumbo v0, "requestBugReportWithExtraAttachments"

    return-object v0

    .line 2034
    :pswitch_1a6
    const-string/jumbo v0, "requestInteractiveBugReport"

    return-object v0

    .line 2030
    :pswitch_1aa
    const-string/jumbo v0, "requestInteractiveBugReportWithDescription"

    return-object v0

    .line 2026
    :pswitch_1ae
    const-string/jumbo v0, "requestWifiBugReport"

    return-object v0

    .line 2022
    :pswitch_1b2
    const-string/jumbo v0, "requestTelephonyBugReport"

    return-object v0

    .line 2018
    :pswitch_1b6
    const-string/jumbo v0, "requestBugReportWithDescription"

    return-object v0

    .line 2014
    :pswitch_1ba
    const-string/jumbo v0, "requestBugReport"

    return-object v0

    .line 2010
    :pswitch_1be
    const-string/jumbo v0, "requestSystemServerHeapDump"

    return-object v0

    .line 2006
    :pswitch_1c2
    const-string v0, "getRunningUserIds"

    return-object v0

    .line 2002
    :pswitch_1c5
    const-string/jumbo v0, "unregisterUserSwitchObserver"

    return-object v0

    .line 1998
    :pswitch_1c9
    const-string/jumbo v0, "registerUserSwitchObserver"

    return-object v0

    .line 1994
    :pswitch_1cd
    const-string/jumbo v0, "stopUserWithDelayedLocking"

    return-object v0

    .line 1990
    :pswitch_1d1
    const-string/jumbo v0, "stopUserExceptCertainProfiles"

    return-object v0

    .line 1986
    :pswitch_1d5
    const-string/jumbo v0, "stopUserWithCallback"

    return-object v0

    .line 1982
    :pswitch_1d9
    const-string/jumbo v0, "stopUser"

    return-object v0

    .line 1978
    :pswitch_1dd
    const-string/jumbo v0, "startActivityAsUserWithFeature"

    return-object v0

    .line 1974
    :pswitch_1e1
    const-string/jumbo v0, "startActivityAsUser"

    return-object v0

    .line 1970
    :pswitch_1e5
    const-string/jumbo v0, "isIntentSenderAnActivity"

    return-object v0

    .line 1966
    :pswitch_1e9
    const-string/jumbo v0, "unstableProviderDied"

    return-object v0

    .line 1962
    :pswitch_1ed
    const-string v0, "getLaunchedFromUid"

    return-object v0

    .line 1958
    :pswitch_1f0
    const-string v0, "getCurrentUserId"

    return-object v0

    .line 1954
    :pswitch_1f3
    const-string v0, "getCurrentUser"

    return-object v0

    .line 1950
    :pswitch_1f6
    const-string/jumbo v0, "killProcessesBelowForeground"

    return-object v0

    .line 1946
    :pswitch_1fa
    const-string v0, "getMyMemoryState"

    return-object v0

    .line 1942
    :pswitch_1fd
    const-string/jumbo v0, "removeContentProviderExternalAsUser"

    return-object v0

    .line 1938
    :pswitch_201
    const-string/jumbo v0, "removeContentProviderExternal"

    return-object v0

    .line 1934
    :pswitch_205
    const-string v0, "getContentProviderExternal"

    return-object v0

    .line 1930
    :pswitch_208
    const-string/jumbo v0, "killAllBackgroundProcesses"

    return-object v0

    .line 1926
    :pswitch_20c
    const-string/jumbo v0, "showBootMessage"

    return-object v0

    .line 1922
    :pswitch_210
    const-string v0, "getProcessPss"

    return-object v0

    .line 1918
    :pswitch_213
    const-string/jumbo v0, "updatePersistentConfigurationWithAttribution"

    return-object v0

    .line 1914
    :pswitch_217
    const-string/jumbo v0, "updatePersistentConfiguration"

    return-object v0

    .line 1910
    :pswitch_21b
    const-string/jumbo v0, "isIntentSenderTargetedToPackage"

    return-object v0

    .line 1906
    :pswitch_21f
    const-string/jumbo v0, "unregisterProcessObserver"

    return-object v0

    .line 1902
    :pswitch_223
    const-string/jumbo v0, "registerProcessObserver"

    return-object v0

    .line 1898
    :pswitch_227
    const-string/jumbo v0, "removeTask"

    return-object v0

    .line 1894
    :pswitch_22b
    const-string/jumbo v0, "setStopUserOnSwitch"

    return-object v0

    .line 1890
    :pswitch_22f
    const-string/jumbo v0, "getSwitchingToUserMessage"

    return-object v0

    .line 1886
    :pswitch_233
    const-string/jumbo v0, "getSwitchingFromUserMessage"

    return-object v0

    .line 1882
    :pswitch_237
    const-string/jumbo v0, "switchUser"

    return-object v0

    .line 1878
    :pswitch_23b
    const-string/jumbo v0, "setPackageScreenCompatMode"

    return-object v0

    .line 1874
    :pswitch_23f
    const-string/jumbo v0, "isUserRunning"

    return-object v0

    .line 1870
    :pswitch_243
    const-string v0, "dumpHeap"

    return-object v0

    .line 1866
    :pswitch_246
    const-string v0, "getMimeTypeFilterAsync"

    return-object v0

    .line 1862
    :pswitch_249
    const-string v0, "crashApplicationWithTypeWithExtras"

    return-object v0

    .line 1858
    :pswitch_24c
    const-string v0, "crashApplicationWithType"

    return-object v0

    .line 1854
    :pswitch_24f
    const-string/jumbo v0, "isTopActivityImmersive"

    return-object v0

    .line 1850
    :pswitch_253
    const-string/jumbo v0, "registerStrictModeCallback"

    return-object v0

    .line 1846
    :pswitch_257
    const-string/jumbo v0, "handleApplicationStrictModeViolation"

    return-object v0

    .line 1842
    :pswitch_25b
    const-string v0, "finishHeavyWeightApp"

    return-object v0

    .line 1838
    :pswitch_25e
    const-string v0, "getRunningExternalApplications"

    return-object v0

    .line 1834
    :pswitch_261
    const-string/jumbo v0, "isUserAMonkey"

    return-object v0

    .line 1830
    :pswitch_265
    const-string/jumbo v0, "killBackgroundProcesses"

    return-object v0

    .line 1826
    :pswitch_269
    const-string/jumbo v0, "handleApplicationWtf"

    return-object v0

    .line 1822
    :pswitch_26d
    const-string/jumbo v0, "killApplicationProcess"

    return-object v0

    .line 1818
    :pswitch_271
    const-string v0, "getProcessMemoryInfo"

    return-object v0

    .line 1814
    :pswitch_274
    const-string v0, "closeSystemDialogs"

    return-object v0

    .line 1810
    :pswitch_277
    const-string/jumbo v0, "killApplication"

    return-object v0

    .line 1806
    :pswitch_27b
    const-string v0, "addPackageDependency"

    return-object v0

    .line 1802
    :pswitch_27e
    const-string/jumbo v0, "handleIncomingUser"

    return-object v0

    .line 1798
    :pswitch_282
    const-string/jumbo v0, "unbindBackupAgent"

    return-object v0

    .line 1794
    :pswitch_286
    const-string v0, "backupAgentCreated"

    return-object v0

    .line 1790
    :pswitch_289
    const-string v0, "bindBackupAgent"

    return-object v0

    .line 1786
    :pswitch_28c
    const-string/jumbo v0, "resumeAppSwitches"

    return-object v0

    .line 1782
    :pswitch_290
    const-string/jumbo v0, "stopAppSwitches"

    return-object v0

    .line 1778
    :pswitch_294
    const-string/jumbo v0, "shutdown"

    return-object v0

    .line 1774
    :pswitch_298
    const-string/jumbo v0, "profileControl"

    return-object v0

    .line 1770
    :pswitch_29c
    const-string/jumbo v0, "peekService"

    return-object v0

    .line 1766
    :pswitch_2a0
    const-string v0, "getRunningAppProcesses"

    return-object v0

    .line 1762
    :pswitch_2a3
    const-string v0, "getServices"

    return-object v0

    .line 1758
    :pswitch_2a6
    const-string/jumbo v0, "killPids"

    return-object v0

    .line 1754
    :pswitch_2aa
    const-string v0, "forceStopPackageEvenWhenStopping"

    return-object v0

    .line 1750
    :pswitch_2ad
    const-string v0, "forceStopPackage"

    return-object v0

    .line 1746
    :pswitch_2b0
    const-string/jumbo v0, "registerForegroundServiceObserver"

    return-object v0

    .line 1742
    :pswitch_2b4
    const-string/jumbo v0, "stopAppForUser"

    return-object v0

    .line 1738
    :pswitch_2b8
    const-string v0, "clearApplicationUserData"

    return-object v0

    .line 1734
    :pswitch_2bb
    const-string v0, "getProcessesInErrorState"

    return-object v0

    .line 1730
    :pswitch_2be
    const-string v0, "getMemoryInfo"

    return-object v0

    .line 1726
    :pswitch_2c1
    const-string/jumbo v0, "moveActivityTaskToBack"

    return-object v0

    .line 1722
    :pswitch_2c5
    const-string v0, "getForegroundServiceType"

    return-object v0

    .line 1718
    :pswitch_2c8
    const-string/jumbo v0, "setServiceForeground"

    return-object v0

    .line 1714
    :pswitch_2cc
    const-string/jumbo v0, "setProcessImportant"

    return-object v0

    .line 1710
    :pswitch_2d0
    const-string/jumbo v0, "unbindFinished"

    return-object v0

    .line 1706
    :pswitch_2d4
    const-string/jumbo v0, "setRequestedOrientation"

    return-object v0

    .line 1702
    :pswitch_2d8
    const-string/jumbo v0, "removeContentProvider"

    return-object v0

    .line 1698
    :pswitch_2dc
    const-string/jumbo v0, "noteWakeupAlarm"

    return-object v0

    .line 1694
    :pswitch_2e0
    const-string v0, "enterSafeMode"

    return-object v0

    .line 1690
    :pswitch_2e3
    const-string/jumbo v0, "unregisterIntentSenderCancelListener"

    return-object v0

    .line 1686
    :pswitch_2e7
    const-string/jumbo v0, "registerIntentSenderCancelListenerEx"

    return-object v0

    .line 1682
    :pswitch_2eb
    const-string v0, "getInfoForIntentSender"

    return-object v0

    .line 1678
    :pswitch_2ee
    const-string v0, "cancelIntentSender"

    return-object v0

    .line 1674
    :pswitch_2f1
    const-string v0, "getIntentSenderWithFeature"

    return-object v0

    .line 1670
    :pswitch_2f4
    const-string v0, "getIntentSender"

    return-object v0

    .line 1666
    :pswitch_2f7
    const-string/jumbo v0, "serviceDoneExecuting"

    return-object v0

    .line 1662
    :pswitch_2fb
    const-string v0, "getRecentTasks"

    return-object v0

    .line 1658
    :pswitch_2fe
    const-string/jumbo v0, "signalPersistentProcesses"

    return-object v0

    .line 1654
    :pswitch_302
    const-string/jumbo v0, "showWaitingForDebugger"

    return-object v0

    .line 1650
    :pswitch_306
    const-string/jumbo v0, "setActivityController"

    return-object v0

    .line 1646
    :pswitch_30a
    const-string/jumbo v0, "revokeUriPermission"

    return-object v0

    .line 1642
    :pswitch_30e
    const-string/jumbo v0, "grantUriPermission"

    return-object v0

    .line 1638
    :pswitch_312
    const-string v0, "checkUriPermissions"

    return-object v0

    .line 1634
    :pswitch_315
    const-string v0, "checkContentUriPermissionFull"

    return-object v0

    .line 1630
    :pswitch_318
    const-string v0, "checkUriPermission"

    return-object v0

    .line 1626
    :pswitch_31b
    const-string v0, "getProcessLimit"

    return-object v0

    .line 1622
    :pswitch_31e
    const-string/jumbo v0, "setProcessLimit"

    return-object v0

    .line 1618
    :pswitch_322
    const-string/jumbo v0, "stopServiceToken"

    return-object v0

    .line 1614
    :pswitch_326
    const-string/jumbo v0, "updateMccMncConfiguration"

    return-object v0

    .line 1610
    :pswitch_32a
    const-string/jumbo v0, "updateConfiguration"

    return-object v0

    .line 1606
    :pswitch_32e
    const-string v0, "getConfiguration"

    return-object v0

    .line 1602
    :pswitch_331
    const-string v0, "finishInstrumentation"

    return-object v0

    .line 1598
    :pswitch_334
    const-string v0, "addInstrumentationResults"

    return-object v0

    .line 1594
    :pswitch_337
    const-string/jumbo v0, "startInstrumentation"

    return-object v0

    .line 1590
    :pswitch_33b
    const-string/jumbo v0, "setAlwaysFinish"

    return-object v0

    .line 1586
    :pswitch_33f
    const-string/jumbo v0, "setAgentApp"

    return-object v0

    .line 1582
    :pswitch_343
    const-string/jumbo v0, "setDebugApp"

    return-object v0

    .line 1578
    :pswitch_347
    const-string/jumbo v0, "publishService"

    return-object v0

    .line 1574
    :pswitch_34b
    const-string/jumbo v0, "unbindService"

    return-object v0

    .line 1570
    :pswitch_34f
    const-string/jumbo v0, "updateServiceGroup"

    return-object v0

    .line 1566
    :pswitch_353
    const-string v0, "bindServiceInstance"

    return-object v0

    .line 1562
    :pswitch_356
    const-string v0, "bindService"

    return-object v0

    .line 1558
    :pswitch_359
    const-string/jumbo v0, "stopService"

    return-object v0

    .line 1554
    :pswitch_35d
    const-string/jumbo v0, "startService"

    return-object v0

    .line 1550
    :pswitch_361
    const-string v0, "getRunningServiceControlPanel"

    return-object v0

    .line 1546
    :pswitch_364
    const-string/jumbo v0, "refContentProvider"

    return-object v0

    .line 1542
    :pswitch_368
    const-string/jumbo v0, "publishContentProviders"

    return-object v0

    .line 1538
    :pswitch_36c
    const-string v0, "getContentProvider"

    return-object v0

    .line 1534
    :pswitch_36f
    const-string/jumbo v0, "getTaskForActivity"

    return-object v0

    .line 1530
    :pswitch_373
    const-string/jumbo v0, "moveTaskToFront"

    return-object v0

    .line 1526
    :pswitch_377
    const-string/jumbo v0, "getTasks"

    return-object v0

    .line 1522
    :pswitch_37b
    const-string v0, "finishAttachApplication"

    return-object v0

    .line 1518
    :pswitch_37e
    const-string v0, "attachApplication"

    return-object v0

    .line 1514
    :pswitch_381
    const-string v0, "finishReceiver"

    return-object v0

    .line 1510
    :pswitch_384
    const-string/jumbo v0, "unbroadcastIntent"

    return-object v0

    .line 1506
    :pswitch_388
    const-string v0, "broadcastIntentWithFeature"

    return-object v0

    .line 1502
    :pswitch_38b
    const-string v0, "broadcastIntent"

    return-object v0

    .line 1498
    :pswitch_38e
    const-string v0, "getRegisteredIntentFilters"

    return-object v0

    .line 1494
    :pswitch_391
    const-string/jumbo v0, "unregisterReceiver"

    return-object v0

    .line 1490
    :pswitch_395
    const-string/jumbo v0, "registerReceiverWithFeature"

    return-object v0

    .line 1486
    :pswitch_399
    const-string/jumbo v0, "registerReceiver"

    return-object v0

    .line 1482
    :pswitch_39d
    const-string v0, "finishActivity"

    return-object v0

    .line 1478
    :pswitch_3a0
    const-string/jumbo v0, "unhandledBack"

    return-object v0

    .line 1474
    :pswitch_3a4
    const-string/jumbo v0, "startActivityWithFeature"

    return-object v0

    .line 1470
    :pswitch_3a8
    const-string/jumbo v0, "startActivity"

    return-object v0

    .line 1466
    :pswitch_3ac
    const-string/jumbo v0, "handleApplicationCrash"

    return-object v0

    .line 1462
    :pswitch_3b0
    const-string/jumbo v0, "logFgsApiStateChanged"

    return-object v0

    .line 1458
    :pswitch_3b4
    const-string/jumbo v0, "logFgsApiEnd"

    return-object v0

    .line 1454
    :pswitch_3b8
    const-string/jumbo v0, "logFgsApiBegin"

    return-object v0

    .line 1450
    :pswitch_3bc
    const-string v0, "checkPermission"

    return-object v0

    .line 1446
    :pswitch_3bf
    const-string/jumbo v0, "getUidProcessState"

    return-object v0

    .line 1442
    :pswitch_3c3
    const-string/jumbo v0, "isUidActive"

    return-object v0

    .line 1438
    :pswitch_3c7
    const-string/jumbo v0, "removeUidFromObserver"

    return-object v0

    .line 1434
    :pswitch_3cb
    const-string v0, "addUidToObserver"

    return-object v0

    .line 1430
    :pswitch_3ce
    const-string/jumbo v0, "registerUidObserverForUids"

    return-object v0

    .line 1426
    :pswitch_3d2
    const-string/jumbo v0, "unregisterUidObserver"

    return-object v0

    .line 1422
    :pswitch_3d6
    const-string/jumbo v0, "registerUidObserver"

    return-object v0

    .line 1418
    :pswitch_3da
    const-string/jumbo v0, "openContentUri"

    return-object v0

    :pswitch_data_3de
    .packed-switch 0x1
        :pswitch_3da
        :pswitch_3d6
        :pswitch_3d2
        :pswitch_3ce
        :pswitch_3cb
        :pswitch_3c7
        :pswitch_3c3
        :pswitch_3bf
        :pswitch_3bc
        :pswitch_3b8
        :pswitch_3b4
        :pswitch_3b0
        :pswitch_3ac
        :pswitch_3a8
        :pswitch_3a4
        :pswitch_3a0
        :pswitch_39d
        :pswitch_399
        :pswitch_395
        :pswitch_391
        :pswitch_38e
        :pswitch_38b
        :pswitch_388
        :pswitch_384
        :pswitch_381
        :pswitch_37e
        :pswitch_37b
        :pswitch_377
        :pswitch_373
        :pswitch_36f
        :pswitch_36c
        :pswitch_368
        :pswitch_364
        :pswitch_361
        :pswitch_35d
        :pswitch_359
        :pswitch_356
        :pswitch_353
        :pswitch_34f
        :pswitch_34b
        :pswitch_347
        :pswitch_343
        :pswitch_33f
        :pswitch_33b
        :pswitch_337
        :pswitch_334
        :pswitch_331
        :pswitch_32e
        :pswitch_32a
        :pswitch_326
        :pswitch_322
        :pswitch_31e
        :pswitch_31b
        :pswitch_318
        :pswitch_315
        :pswitch_312
        :pswitch_30e
        :pswitch_30a
        :pswitch_306
        :pswitch_302
        :pswitch_2fe
        :pswitch_2fb
        :pswitch_2f7
        :pswitch_2f4
        :pswitch_2f1
        :pswitch_2ee
        :pswitch_2eb
        :pswitch_2e7
        :pswitch_2e3
        :pswitch_2e0
        :pswitch_2dc
        :pswitch_2d8
        :pswitch_2d4
        :pswitch_2d0
        :pswitch_2cc
        :pswitch_2c8
        :pswitch_2c5
        :pswitch_2c1
        :pswitch_2be
        :pswitch_2bb
        :pswitch_2b8
        :pswitch_2b4
        :pswitch_2b0
        :pswitch_2ad
        :pswitch_2aa
        :pswitch_2a6
        :pswitch_2a3
        :pswitch_2a0
        :pswitch_29c
        :pswitch_298
        :pswitch_294
        :pswitch_290
        :pswitch_28c
        :pswitch_289
        :pswitch_286
        :pswitch_282
        :pswitch_27e
        :pswitch_27b
        :pswitch_277
        :pswitch_274
        :pswitch_271
        :pswitch_26d
        :pswitch_269
        :pswitch_265
        :pswitch_261
        :pswitch_25e
        :pswitch_25b
        :pswitch_257
        :pswitch_253
        :pswitch_24f
        :pswitch_24c
        :pswitch_249
        :pswitch_246
        :pswitch_243
        :pswitch_23f
        :pswitch_23b
        :pswitch_237
        :pswitch_233
        :pswitch_22f
        :pswitch_22b
        :pswitch_227
        :pswitch_223
        :pswitch_21f
        :pswitch_21b
        :pswitch_217
        :pswitch_213
        :pswitch_210
        :pswitch_20c
        :pswitch_208
        :pswitch_205
        :pswitch_201
        :pswitch_1fd
        :pswitch_1fa
        :pswitch_1f6
        :pswitch_1f3
        :pswitch_1f0
        :pswitch_1ed
        :pswitch_1e9
        :pswitch_1e5
        :pswitch_1e1
        :pswitch_1dd
        :pswitch_1d9
        :pswitch_1d5
        :pswitch_1d1
        :pswitch_1cd
        :pswitch_1c9
        :pswitch_1c5
        :pswitch_1c2
        :pswitch_1be
        :pswitch_1ba
        :pswitch_1b6
        :pswitch_1b2
        :pswitch_1ae
        :pswitch_1aa
        :pswitch_1a6
        :pswitch_1a2
        :pswitch_19e
        :pswitch_19a
        :pswitch_196
        :pswitch_193
        :pswitch_190
        :pswitch_18d
        :pswitch_189
        :pswitch_185
        :pswitch_181
        :pswitch_17e
        :pswitch_17a
        :pswitch_176
        :pswitch_173
        :pswitch_16f
        :pswitch_16b
        :pswitch_168
        :pswitch_164
        :pswitch_160
        :pswitch_15c
        :pswitch_158
        :pswitch_154
        :pswitch_150
        :pswitch_14c
        :pswitch_148
        :pswitch_145
        :pswitch_141
        :pswitch_13d
        :pswitch_139
        :pswitch_135
        :pswitch_131
        :pswitch_12d
        :pswitch_12a
        :pswitch_126
        :pswitch_123
        :pswitch_11f
        :pswitch_11b
        :pswitch_117
        :pswitch_114
        :pswitch_110
        :pswitch_10c
        :pswitch_108
        :pswitch_104
        :pswitch_100
        :pswitch_fc
        :pswitch_f8
        :pswitch_f4
        :pswitch_f1
        :pswitch_ed
        :pswitch_e9
        :pswitch_e5
        :pswitch_e1
        :pswitch_dd
        :pswitch_d9
        :pswitch_d5
        :pswitch_d1
        :pswitch_ce
        :pswitch_ca
        :pswitch_c6
        :pswitch_c2
        :pswitch_bf
        :pswitch_bb
        :pswitch_b7
        :pswitch_b3
        :pswitch_b0
        :pswitch_ad
        :pswitch_a9
        :pswitch_a6
        :pswitch_a3
        :pswitch_a0
        :pswitch_9c
        :pswitch_99
        :pswitch_95
        :pswitch_92
        :pswitch_8e
        :pswitch_8a
        :pswitch_86
        :pswitch_82
        :pswitch_7e
        :pswitch_7a
        :pswitch_76
        :pswitch_73
        :pswitch_70
        :pswitch_6c
        :pswitch_68
        :pswitch_64
        :pswitch_60
        :pswitch_5c
        :pswitch_58
        :pswitch_54
        :pswitch_51
        :pswitch_4d
        :pswitch_4a
        :pswitch_46
        :pswitch_42
        :pswitch_3e
        :pswitch_3b
        :pswitch_37
        :pswitch_33
        :pswitch_2f
        :pswitch_2b
        :pswitch_27
        :pswitch_24
        :pswitch_21
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

    .line 1409
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 11196
    const/16 v0, 0x10a

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 2493
    invoke-static {p1}, Landroid/app/IActivityManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 25
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2497
    move-object/from16 v0, p0

    move/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    const-string v10, "android.app.IActivityManager"

    .line 2498
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v13, v11, :cond_15

    const v1, 0xffffff

    if-gt v13, v1, :cond_15

    .line 2499
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2501
    :cond_15
    const v1, 0x5f4e5446

    if-ne v13, v1, :cond_1e

    .line 2502
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2503
    return v11

    .line 2505
    :cond_1e
    packed-switch v13, :pswitch_data_1d0c

    .line 5739
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 5730
    :pswitch_26
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 5731
    .local v1, "_arg0":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5732
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->refreshIntentCreatorToken(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v2

    .line 5733
    .local v2, "_result":Landroid/os/IBinder;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5734
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5735
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5707
    .end local v1    # "_arg0":Landroid/content/Intent;
    .end local v2    # "_result":Landroid/os/IBinder;
    :pswitch_40
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5709
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5711
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5713
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 5715
    .local v4, "_arg3":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 5717
    .local v5, "_arg4":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 5719
    .local v6, "_arg5":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 5721
    .local v7, "_arg6":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 5722
    .local v8, "_arg7":J
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5723
    invoke-virtual/range {v0 .. v9}, Landroid/app/IActivityManager$Stub;->noteAppRestrictionEnabled(Ljava/lang/String;IIZILjava/lang/String;IJ)V

    .line 5724
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5725
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5698
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v7    # "_arg6":I
    .end local v8    # "_arg7":J
    :pswitch_6e
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5699
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5700
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->clearAllOverridePermissionStates(I)V

    .line 5701
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5702
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5687
    .end local v1    # "_arg0":I
    :pswitch_80
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5689
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5690
    .restart local v2    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5691
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->clearOverridePermissionStates(II)V

    .line 5692
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5693
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5674
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_96
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5676
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5678
    .restart local v2    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5679
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5680
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->removeOverridePermissionState(IILjava/lang/String;)V

    .line 5681
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5682
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5659
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_b0
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5661
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5663
    .restart local v2    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5665
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 5666
    .local v4, "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5667
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->addOverridePermissionState(IILjava/lang/String;I)V

    .line 5668
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5669
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5647
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    :pswitch_ce
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5649
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5650
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5651
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->getUidLastIdleElapsedTime(ILjava/lang/String;)J

    move-result-wide v3

    .line 5652
    .local v3, "_result":J
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5653
    invoke-virtual {v15, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 5654
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5635
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":J
    :pswitch_e8
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5637
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5638
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5639
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->getBindingUidProcessState(ILjava/lang/String;)I

    move-result v3

    .line 5640
    .local v3, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5641
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5642
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5621
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_102
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5623
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5625
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5627
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 5628
    .restart local v4    # "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5629
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->frozenBinderTransactionDetected(IIII)V

    .line 5630
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5605
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :pswitch_11d
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5607
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5609
    .restart local v2    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5611
    .restart local v3    # "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 5612
    .restart local v4    # "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5613
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->checkPermissionForDevice(Ljava/lang/String;III)I

    move-result v5

    .line 5614
    .local v5, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5615
    invoke-virtual {v15, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 5616
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5595
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_result":I
    :pswitch_13f
    invoke-virtual {v14}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 5596
    .local v1, "_arg0":[I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5597
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getUidFrozenState([I)[I

    move-result-object v2

    .line 5598
    .local v2, "_result":[I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5599
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 5600
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5586
    .end local v1    # "_arg0":[I
    .end local v2    # "_result":[I
    :pswitch_155
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IUidFrozenStateChangedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUidFrozenStateChangedCallback;

    move-result-object v1

    .line 5587
    .local v1, "_arg0":Landroid/app/IUidFrozenStateChangedCallback;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5588
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->unregisterUidFrozenStateChangedCallback(Landroid/app/IUidFrozenStateChangedCallback;)V

    .line 5589
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5590
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5577
    .end local v1    # "_arg0":Landroid/app/IUidFrozenStateChangedCallback;
    :pswitch_16b
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IUidFrozenStateChangedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUidFrozenStateChangedCallback;

    move-result-object v1

    .line 5578
    .restart local v1    # "_arg0":Landroid/app/IUidFrozenStateChangedCallback;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5579
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->registerUidFrozenStateChangedCallback(Landroid/app/IUidFrozenStateChangedCallback;)V

    .line 5580
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5581
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5565
    .end local v1    # "_arg0":Landroid/app/IUidFrozenStateChangedCallback;
    :pswitch_181
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 5567
    .local v1, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 5568
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5569
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->hasServiceTimeLimitExceeded(Landroid/content/ComponentName;Landroid/os/IBinder;)Z

    move-result v3

    .line 5570
    .local v3, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5571
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5572
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5553
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_result":Z
    :pswitch_19f
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 5555
    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 5556
    .restart local v2    # "_arg1":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5557
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->shouldServiceTimeOut(Landroid/content/ComponentName;Landroid/os/IBinder;)Z

    move-result v3

    .line 5558
    .restart local v3    # "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5559
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5560
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5545
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_result":Z
    :pswitch_1bd
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->getDisplayIdsForStartingVisibleBackgroundUsers()[I

    move-result-object v1

    .line 5546
    .local v1, "_result":[I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5547
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 5548
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5534
    .end local v1    # "_result":[I
    :pswitch_1cc
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5536
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5537
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5538
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->restartUserInBackground(II)I

    move-result v3

    .line 5539
    .local v3, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5540
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5541
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5522
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_result":I
    :pswitch_1e6
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5524
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IProgressListener;

    move-result-object v2

    .line 5525
    .local v2, "_arg1":Landroid/os/IProgressListener;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5526
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->startProfileWithListener(ILandroid/os/IProgressListener;)Z

    move-result v3

    .line 5527
    .local v3, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5528
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5529
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5508
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/IProgressListener;
    .end local v3    # "_result":Z
    :pswitch_204
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5510
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5512
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IProgressListener;

    move-result-object v3

    .line 5513
    .local v3, "_arg2":Landroid/os/IProgressListener;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5514
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->startUserInBackgroundVisibleOnDisplay(IILandroid/os/IProgressListener;)Z

    move-result v4

    .line 5515
    .local v4, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5516
    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5517
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5498
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/IProgressListener;
    .end local v4    # "_result":Z
    :pswitch_226
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5499
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5500
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getBackgroundRestrictionExemptionReason(I)I

    move-result v2

    .line 5501
    .local v2, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5502
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5503
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5488
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_23c
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5489
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5490
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->isProcessFrozen(I)Z

    move-result v2

    .line 5491
    .local v2, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5492
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5493
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5477
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_252
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5479
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 5480
    .local v2, "_arg1":J
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5481
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->forceDelayBroadcastDelivery(Ljava/lang/String;J)V

    .line 5482
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5483
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5470
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":J
    :pswitch_268
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->waitForBroadcastBarrier()V

    .line 5471
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5472
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5464
    :pswitch_273
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->waitForBroadcastIdle()V

    .line 5465
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5466
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5453
    :pswitch_27e
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5455
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5456
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5457
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->getUidProcessCapabilities(ILjava/lang/String;)I

    move-result v3

    .line 5458
    .local v3, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5459
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5460
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5441
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_298
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v1

    .line 5443
    .local v1, "_arg0":Landroid/content/IIntentSender;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5444
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5445
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->queryIntentComponentsForIntentSender(Landroid/content/IIntentSender;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 5446
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5447
    invoke-virtual {v15, v3, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5448
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5431
    .end local v1    # "_arg0":Landroid/content/IIntentSender;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_2b6
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5432
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5433
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->stopProfile(I)Z

    move-result v2

    .line 5434
    .local v2, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5435
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5436
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5421
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_2cc
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5422
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5423
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->startProfile(I)Z

    move-result v2

    .line 5424
    .restart local v2    # "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5425
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5426
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5410
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_2e2
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 5412
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5413
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5414
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->holdLock(Landroid/os/IBinder;I)V

    .line 5415
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5416
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5400
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    :pswitch_2f8
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 5401
    .local v1, "_arg0":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5402
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->enableFgsNotificationRateLimit(Z)Z

    move-result v2

    .line 5403
    .local v2, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5404
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5405
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5390
    .end local v1    # "_arg0":Z
    .end local v2    # "_result":Z
    :pswitch_30e
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 5391
    .restart local v1    # "_arg0":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5392
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->enableAppFreezer(Z)Z

    move-result v2

    .line 5393
    .restart local v2    # "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5394
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5395
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5383
    .end local v1    # "_arg0":Z
    .end local v2    # "_result":Z
    :pswitch_324
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->resetAppErrors()V

    .line 5384
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5385
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5371
    :pswitch_32f
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5373
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5375
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5376
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5377
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->killUidForPermissionChange(IILjava/lang/String;)V

    .line 5378
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5379
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5363
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_349
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->isAppFreezerEnabled()Z

    move-result v1

    .line 5364
    .local v1, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5365
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5366
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5356
    .end local v1    # "_result":Z
    :pswitch_358
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->isAppFreezerSupported()Z

    move-result v1

    .line 5357
    .restart local v1    # "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5358
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5359
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5348
    .end local v1    # "_result":Z
    :pswitch_367
    invoke-virtual {v14}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 5349
    .local v1, "_arg0":[B
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5350
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->setProcessStateSummary([B)V

    .line 5351
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5352
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5335
    .end local v1    # "_arg0":[B
    :pswitch_379
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 5337
    .local v1, "_arg0":Landroid/content/ComponentName;
    sget-object v2, Landroid/content/LocusId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/LocusId;

    .line 5339
    .local v2, "_arg1":Landroid/content/LocusId;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 5340
    .local v3, "_arg2":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5341
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->setActivityLocusContext(Landroid/content/ComponentName;Landroid/content/LocusId;Landroid/os/IBinder;)V

    .line 5342
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5343
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5324
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":Landroid/content/LocusId;
    .end local v3    # "_arg2":Landroid/os/IBinder;
    :pswitch_39b
    invoke-virtual {v14}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 5326
    .local v1, "_arg0":[I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5327
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5328
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->killProcessesWhenImperceptible([ILjava/lang/String;)V

    .line 5329
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5330
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5308
    .end local v1    # "_arg0":[I
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_3b1
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5310
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5312
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5314
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 5315
    .local v4, "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5316
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->getHistoricalProcessExitReasons(Ljava/lang/String;III)Landroid/content/pm/ParceledListSlice;

    move-result-object v5

    .line 5317
    .local v5, "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/ApplicationExitInfo;>;"
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5318
    invoke-virtual {v15, v5, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5319
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5298
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/ApplicationExitInfo;>;"
    :pswitch_3d3
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 5300
    .local v1, "_arg0":J
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 5301
    .local v3, "_arg1":J
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5302
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->reportStartInfoViewTimestamps(JJ)V

    .line 5303
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5285
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":J
    :pswitch_3e6
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5287
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 5289
    .local v2, "_arg1":J
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 5290
    .local v4, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5291
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->addStartInfoTimestamp(IJI)V

    .line 5292
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5293
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5274
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":I
    :pswitch_400
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationStartInfoCompleteListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationStartInfoCompleteListener;

    move-result-object v1

    .line 5276
    .local v1, "_arg0":Landroid/app/IApplicationStartInfoCompleteListener;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5277
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5278
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->removeApplicationStartInfoCompleteListener(Landroid/app/IApplicationStartInfoCompleteListener;I)V

    .line 5279
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5280
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5263
    .end local v1    # "_arg0":Landroid/app/IApplicationStartInfoCompleteListener;
    .end local v2    # "_arg1":I
    :pswitch_41a
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationStartInfoCompleteListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationStartInfoCompleteListener;

    move-result-object v1

    .line 5265
    .restart local v1    # "_arg0":Landroid/app/IApplicationStartInfoCompleteListener;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5266
    .restart local v2    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5267
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->addApplicationStartInfoCompleteListener(Landroid/app/IApplicationStartInfoCompleteListener;I)V

    .line 5268
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5269
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5249
    .end local v1    # "_arg0":Landroid/app/IApplicationStartInfoCompleteListener;
    .end local v2    # "_arg1":I
    :pswitch_434
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5251
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5253
    .restart local v2    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5254
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5255
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->getHistoricalProcessStartReasons(Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 5256
    .local v4, "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/ApplicationStartInfo;>;"
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5257
    invoke-virtual {v15, v4, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5258
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5240
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/ApplicationStartInfo;>;"
    :pswitch_452
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5241
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5242
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->appNotResponding(Ljava/lang/String;)V

    .line 5243
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5244
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5228
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_464
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5230
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IProgressListener;

    move-result-object v2

    .line 5231
    .local v2, "_arg1":Landroid/os/IProgressListener;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5232
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->startUserInForegroundWithListener(ILandroid/os/IProgressListener;)Z

    move-result v3

    .line 5233
    .local v3, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5234
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5235
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5220
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/IProgressListener;
    .end local v3    # "_result":Z
    :pswitch_482
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->getLifeMonitor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 5221
    .local v1, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5222
    invoke-virtual {v15, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5223
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5213
    .end local v1    # "_result":Landroid/os/ParcelFileDescriptor;
    :pswitch_491
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->getDelegatedShellPermissions()Ljava/util/List;

    move-result-object v1

    .line 5214
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5215
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5216
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5207
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_4a0
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->stopDelegateShellPermissionIdentity()V

    .line 5208
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5209
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5197
    :pswitch_4ab
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5199
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 5200
    .local v2, "_arg1":[Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5201
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->startDelegateShellPermissionIdentity(I[Ljava/lang/String;)V

    .line 5202
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5203
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5185
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[Ljava/lang/String;
    :pswitch_4c1
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5187
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IProgressListener;

    move-result-object v2

    .line 5188
    .local v2, "_arg1":Landroid/os/IProgressListener;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5189
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->startUserInBackgroundWithListener(ILandroid/os/IProgressListener;)Z

    move-result v3

    .line 5190
    .restart local v3    # "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5191
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5192
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5176
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/IProgressListener;
    .end local v3    # "_result":Z
    :pswitch_4df
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5177
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5178
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->backgroundAllowlistUid(I)V

    .line 5179
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5180
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5167
    .end local v1    # "_arg0":I
    :pswitch_4f1
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 5168
    .local v1, "_arg0":J
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5169
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->waitForNetworkStateUpdate(J)V

    .line 5170
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5171
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5158
    .end local v1    # "_arg0":J
    :pswitch_503
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5159
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5160
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->setPersistentVrThread(I)V

    .line 5161
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5162
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5147
    .end local v1    # "_arg0":I
    :pswitch_515
    invoke-virtual {v14}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 5149
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5150
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5151
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->scheduleApplicationInfoChanged(Ljava/util/List;I)V

    .line 5152
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5153
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5138
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "_arg1":I
    :pswitch_52b
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5139
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5140
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->cancelTaskWindowTransition(I)V

    .line 5141
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5142
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5129
    .end local v1    # "_arg0":I
    :pswitch_53d
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 5130
    .local v1, "_arg0":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5131
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->setHasTopUi(Z)V

    .line 5132
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5133
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5120
    .end local v1    # "_arg0":Z
    :pswitch_54f
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5121
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5122
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->setRenderThread(I)V

    .line 5123
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5124
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5110
    .end local v1    # "_arg0":I
    :pswitch_561
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5111
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5112
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->isBackgroundRestricted(Ljava/lang/String;)Z

    move-result v2

    .line 5113
    .local v2, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5114
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5115
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5084
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_577
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 5086
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v2

    .line 5088
    .local v2, "_arg1":Landroid/content/IIntentSender;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 5090
    .local v3, "_arg2":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 5092
    .local v4, "_arg3":I
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .line 5094
    .local v5, "_arg4":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 5096
    .restart local v6    # "_arg5":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v7

    .line 5098
    .local v7, "_arg6":Landroid/content/IIntentReceiver;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 5100
    .local v8, "_arg7":Ljava/lang/String;
    sget-object v9, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v9}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    .line 5101
    .local v9, "_arg8":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5102
    invoke-virtual/range {v0 .. v9}, Landroid/app/IActivityManager$Stub;->sendIntentSender(Landroid/app/IApplicationThread;Landroid/content/IIntentSender;Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v12

    .line 5103
    .local v12, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5104
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 5105
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5077
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":Landroid/content/IIntentSender;
    .end local v3    # "_arg2":Landroid/os/IBinder;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Landroid/content/Intent;
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v7    # "_arg6":Landroid/content/IIntentReceiver;
    .end local v8    # "_arg7":Ljava/lang/String;
    .end local v9    # "_arg8":Landroid/os/Bundle;
    .end local v12    # "_result":I
    :pswitch_5c1
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->sendIdleJobTrigger()V

    .line 5078
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5079
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5067
    :pswitch_5cc
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 5069
    .local v1, "_arg0":Landroid/content/Intent;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 5070
    .local v2, "_arg1":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5071
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->startConfirmDeviceCredentialIntent(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 5072
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5073
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5058
    .end local v1    # "_arg0":Landroid/content/Intent;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :pswitch_5ea
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5059
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5060
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->notifyLockedProfile(I)V

    .line 5061
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5062
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5048
    .end local v1    # "_arg0":I
    :pswitch_5fc
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 5049
    .local v1, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5050
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->isVrModePackageEnabled(Landroid/content/ComponentName;)Z

    move-result v2

    .line 5051
    .local v2, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5052
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5053
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5040
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_result":Z
    :pswitch_616
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->getMemoryTrimLevel()I

    move-result v1

    .line 5041
    .local v1, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5042
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5043
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5032
    .end local v1    # "_result":I
    :pswitch_625
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 5033
    .local v1, "_arg0":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5034
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->setDeterministicUidIdle(Z)V

    .line 5035
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5036
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5021
    .end local v1    # "_arg0":Z
    :pswitch_637
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5023
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5024
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5025
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->makePackageIdle(Ljava/lang/String;I)V

    .line 5026
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5027
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 5010
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_64d
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5012
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5013
    .restart local v2    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5014
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->killPackageDependents(Ljava/lang/String;I)V

    .line 5015
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5016
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 4998
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_663
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5000
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IProgressListener;

    move-result-object v2

    .line 5001
    .local v2, "_arg1":Landroid/os/IProgressListener;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5002
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->unlockUser2(ILandroid/os/IProgressListener;)Z

    move-result v3

    .line 5003
    .local v3, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 5004
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5005
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 4982
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/IProgressListener;
    .end local v3    # "_result":Z
    :pswitch_681
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4984
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 4986
    .local v2, "_arg1":[B
    invoke-virtual {v14}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 4988
    .local v3, "_arg2":[B
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IProgressListener;

    move-result-object v4

    .line 4989
    .local v4, "_arg3":Landroid/os/IProgressListener;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4990
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->unlockUser(I[B[BLandroid/os/IProgressListener;)Z

    move-result v5

    .line 4991
    .local v5, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4992
    invoke-virtual {v15, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4993
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 4973
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":Landroid/os/IProgressListener;
    .end local v5    # "_result":Z
    :pswitch_6a7
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 4974
    .local v1, "_arg0":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4975
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->suppressResizeConfigChanges(Z)V

    .line 4976
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4977
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 4963
    .end local v1    # "_arg0":Z
    :pswitch_6b9
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 4964
    .local v1, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4965
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->stopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)Z

    move-result v2

    .line 4966
    .local v2, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4967
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4968
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 4955
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "_result":Z
    :pswitch_6d3
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->startBinderTracking()Z

    move-result v1

    .line 4956
    .local v1, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4957
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4958
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 4944
    .end local v1    # "_result":Z
    :pswitch_6e2
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4946
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4947
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4948
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->getPackageProcessState(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 4949
    .local v3, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4950
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4951
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 4929
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_6fc
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v1

    .line 4931
    .local v1, "_arg0":Landroid/content/IIntentSender;
    sget-object v2, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/WorkSource;

    .line 4933
    .local v2, "_arg1":Landroid/os/WorkSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4935
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4936
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4937
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->noteAlarmFinish(Landroid/content/IIntentSender;Landroid/os/WorkSource;ILjava/lang/String;)V

    .line 4938
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4939
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 4914
    .end local v1    # "_arg0":Landroid/content/IIntentSender;
    .end local v2    # "_arg1":Landroid/os/WorkSource;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_722
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v1

    .line 4916
    .restart local v1    # "_arg0":Landroid/content/IIntentSender;
    sget-object v2, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/WorkSource;

    .line 4918
    .restart local v2    # "_arg1":Landroid/os/WorkSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4920
    .restart local v3    # "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4921
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4922
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->noteAlarmStart(Landroid/content/IIntentSender;Landroid/os/WorkSource;ILjava/lang/String;)V

    .line 4923
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4924
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 4903
    .end local v1    # "_arg0":Landroid/content/IIntentSender;
    .end local v2    # "_arg1":Landroid/os/WorkSource;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_748
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4905
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 4906
    .local v2, "_arg1":[Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4907
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->updateLockTaskPackages(I[Ljava/lang/String;)V

    .line 4908
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4909
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 4894
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[Ljava/lang/String;
    :pswitch_75e
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4895
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4896
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->dumpHeapFinished(Ljava/lang/String;)V

    .line 4897
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4898
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 4879
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_770
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4881
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4883
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 4885
    .local v3, "_arg2":J
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 4886
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4887
    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityManager$Stub;->setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V

    .line 4888
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4889
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 4871
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":J
    .end local v5    # "_arg3":Ljava/lang/String;
    :pswitch_78e
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->getLockTaskModeState()I

    move-result v1

    .line 4872
    .local v1, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4873
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4874
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 4859
    .end local v1    # "_result":I
    :pswitch_79d
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4861
    .local v1, "_arg0":I
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 4863
    .local v2, "_arg1":Landroid/graphics/Rect;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4864
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4865
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->resizeTask(ILandroid/graphics/Rect;I)V

    .line 4866
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4867
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 4848
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/graphics/Rect;
    .end local v3    # "_arg2":I
    :pswitch_7bb
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4850
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4851
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4852
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->setTaskResizeable(II)V

    .line 4853
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4854
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 4837
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_7d1
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4839
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 4840
    .local v2, "_arg1":[B
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4841
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->notifyCleartextNetwork(I[B)V

    .line 4842
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4843
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 4828
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[B
    :pswitch_7e7
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/ITaskStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;

    move-result-object v1

    .line 4829
    .local v1, "_arg0":Landroid/app/ITaskStackListener;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4830
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 4831
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4832
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 4819
    .end local v1    # "_arg0":Landroid/app/ITaskStackListener;
    :pswitch_7fd
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/ITaskStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;

    move-result-object v1

    .line 4820
    .restart local v1    # "_arg0":Landroid/app/ITaskStackListener;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4821
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 4822
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4823
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 4810
    .end local v1    # "_arg0":Landroid/app/ITaskStackListener;
    :pswitch_813
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4811
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4812
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->setThemeOverlayReady(I)V

    .line 4813
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4814
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 4803
    .end local v1    # "_arg0":I
    :pswitch_825
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->bootAnimationComplete()V

    .line 4804
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4805
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 4794
    :pswitch_830
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 4795
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4796
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->isTopOfTask(Landroid/os/IBinder;)Z

    move-result v2

    .line 4797
    .local v2, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4798
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4799
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 4785
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_result":Z
    :pswitch_846
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4786
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4787
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->startSystemLockTaskMode(I)V

    .line 4788
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4789
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 4773
    .end local v1    # "_arg0":I
    :pswitch_858
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4775
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 4776
    .local v2, "_arg1":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4777
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->startActivityFromRecents(ILandroid/os/Bundle;)I

    move-result v3

    .line 4778
    .local v3, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4779
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4780
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 4765
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/Bundle;
    .end local v3    # "_result":I
    :pswitch_876
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->isInLockTaskMode()Z

    move-result v1

    .line 4766
    .local v1, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4767
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4768
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 4756
    .end local v1    # "_result":Z
    :pswitch_885
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4757
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4758
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->startUserInBackground(I)Z

    move-result v2

    .line 4759
    .local v2, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4760
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4761
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 4744
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_89b
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v1

    .line 4746
    .local v1, "_arg0":Landroid/content/IIntentSender;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4747
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4748
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->getTagForIntentSender(Landroid/content/IIntentSender;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4749
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4750
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4751
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 4730
    .end local v1    # "_arg0":Landroid/content/IIntentSender;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_8b9
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4732
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4734
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4735
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4736
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->setProcessMemoryTrimLevel(Ljava/lang/String;II)Z

    move-result v4

    .line 4737
    .local v4, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4738
    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4739
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 4720
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Z
    :pswitch_8d7
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4721
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4722
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getTaskBounds(I)Landroid/graphics/Rect;

    move-result-object v2

    .line 4723
    .local v2, "_result":Landroid/graphics/Rect;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4724
    invoke-virtual {v15, v2, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4725
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 4711
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/graphics/Rect;
    :pswitch_8ed
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 4712
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4713
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->appNotRespondingViaProvider(Landroid/os/IBinder;)V

    .line 4714
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4715
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 4704
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_8ff
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->performIdleMaintenance()V

    .line 4705
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4706
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 4698
    :pswitch_90a
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->restart()V

    .line 4699
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4700
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 4691
    :pswitch_915
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->getFocusedRootTaskInfo()Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v1

    .line 4692
    .local v1, "_result":Landroid/app/ActivityTaskManager$RootTaskInfo;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4693
    invoke-virtual {v15, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4694
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 4683
    .end local v1    # "_result":Landroid/app/ActivityTaskManager$RootTaskInfo;
    :pswitch_924
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4684
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4685
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->setFocusedRootTask(I)V

    .line 4686
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4687
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 4670
    .end local v1    # "_arg0":I
    :pswitch_936
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4672
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4674
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 4675
    .local v3, "_arg2":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4676
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->moveTaskToRootTask(IIZ)V

    .line 4677
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4678
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 4662
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    :pswitch_950
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->getAllRootTaskInfos()Ljava/util/List;

    move-result-object v1

    .line 4663
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4664
    invoke-virtual {v15, v1, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 4665
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 4652
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    :pswitch_95f
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 4654
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 4655
    .local v2, "_arg1":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4656
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->hang(Landroid/os/IBinder;Z)V

    .line 4657
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4658
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 4643
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Z
    :pswitch_975
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 4644
    .local v1, "_arg0":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4645
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->setUserIsMonkey(Z)V

    .line 4646
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4647
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 4630
    .end local v1    # "_arg0":Z
    :pswitch_987
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4632
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4634
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4635
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4636
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->killUid(IILjava/lang/String;)V

    .line 4637
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4638
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 4620
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_9a1
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 4621
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4622
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v2

    .line 4623
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4624
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4625
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 4610
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_9b7
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v1

    .line 4611
    .local v1, "_arg0":Landroid/content/IIntentSender;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4612
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;

    move-result-object v2

    .line 4613
    .local v2, "_result":Landroid/content/Intent;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4614
    invoke-virtual {v15, v2, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4615
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 4602
    .end local v1    # "_arg0":Landroid/content/IIntentSender;
    .end local v2    # "_result":Landroid/content/Intent;
    :pswitch_9d1
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->getBugreportWhitelistedPackages()Ljava/util/List;

    move-result-object v1

    .line 4603
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4604
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4605
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 4595
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_9e0
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->launchBugReportHandlerApp()Z

    move-result v1

    .line 4596
    .local v1, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4597
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4598
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 4587
    .end local v1    # "_result":Z
    :pswitch_9ef
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 4588
    .local v1, "_arg0":J
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4589
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->requestRemoteBugReport(J)V

    .line 4590
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4591
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 4580
    .end local v1    # "_arg0":J
    :pswitch_a01
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->requestFullBugReport()V

    .line 4581
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4582
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 4572
    :pswitch_a0c
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4573
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4574
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->requestBugReportWithExtraAttachments(Ljava/util/List;)V

    .line 4575
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4576
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 4565
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :pswitch_a20
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->requestInteractiveBugReport()V

    .line 4566
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4567
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 4555
    :pswitch_a2b
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4557
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4558
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4559
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->requestInteractiveBugReportWithDescription(Ljava/lang/String;Ljava/lang/String;)V

    .line 4560
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4561
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 4544
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_a41
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4546
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4547
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4548
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->requestWifiBugReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 4549
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4550
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 4533
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_a57
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4535
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4536
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4537
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->requestTelephonyBugReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 4538
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4539
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 4520
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_a6d
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4522
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4524
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4525
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4526
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->requestBugReportWithDescription(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4527
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4528
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 4511
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    :pswitch_a87
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4512
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4513
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->requestBugReport(I)V

    .line 4514
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4515
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 4504
    .end local v1    # "_arg0":I
    :pswitch_a99
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->requestSystemServerHeapDump()V

    .line 4505
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4506
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 4497
    :pswitch_aa4
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->getRunningUserIds()[I

    move-result-object v1

    .line 4498
    .local v1, "_result":[I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4499
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 4500
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 4489
    .end local v1    # "_result":[I
    :pswitch_ab3
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IUserSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;

    move-result-object v1

    .line 4490
    .local v1, "_arg0":Landroid/app/IUserSwitchObserver;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4491
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    .line 4492
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4493
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 4478
    .end local v1    # "_arg0":Landroid/app/IUserSwitchObserver;
    :pswitch_ac9
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IUserSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;

    move-result-object v1

    .line 4480
    .restart local v1    # "_arg0":Landroid/app/IUserSwitchObserver;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4481
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4482
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V

    .line 4483
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4484
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 4466
    .end local v1    # "_arg0":Landroid/app/IUserSwitchObserver;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_ae3
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4468
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IStopUserCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IStopUserCallback;

    move-result-object v2

    .line 4469
    .local v2, "_arg1":Landroid/app/IStopUserCallback;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4470
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->stopUserWithDelayedLocking(ILandroid/app/IStopUserCallback;)I

    move-result v3

    .line 4471
    .local v3, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4472
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4473
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 4452
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/app/IStopUserCallback;
    .end local v3    # "_result":I
    :pswitch_b01
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4454
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 4456
    .local v2, "_arg1":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/IStopUserCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IStopUserCallback;

    move-result-object v3

    .line 4457
    .local v3, "_arg2":Landroid/app/IStopUserCallback;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4458
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->stopUserExceptCertainProfiles(IZLandroid/app/IStopUserCallback;)I

    move-result v4

    .line 4459
    .local v4, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4460
    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4461
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 4440
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Landroid/app/IStopUserCallback;
    .end local v4    # "_result":I
    :pswitch_b23
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4442
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IStopUserCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IStopUserCallback;

    move-result-object v2

    .line 4443
    .local v2, "_arg1":Landroid/app/IStopUserCallback;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4444
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->stopUserWithCallback(ILandroid/app/IStopUserCallback;)I

    move-result v3

    .line 4445
    .local v3, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4446
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4447
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 4426
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/app/IStopUserCallback;
    .end local v3    # "_result":I
    :pswitch_b41
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4428
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 4430
    .local v2, "_arg1":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/IStopUserCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IStopUserCallback;

    move-result-object v3

    .line 4431
    .local v3, "_arg2":Landroid/app/IStopUserCallback;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4432
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->stopUser(IZLandroid/app/IStopUserCallback;)I

    move-result v4

    .line 4433
    .restart local v4    # "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4434
    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4435
    move-object/from16 v18, v10

    move v12, v11

    goto/16 :goto_1d0a

    .line 4394
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Landroid/app/IStopUserCallback;
    .end local v4    # "_result":I
    :pswitch_b63
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 4396
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4398
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4400
    .local v3, "_arg2":Ljava/lang/String;
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 4402
    .local v4, "_arg3":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 4404
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 4406
    .local v6, "_arg5":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 4408
    .local v7, "_arg6":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 4410
    .local v8, "_arg7":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 4412
    .local v9, "_arg8":I
    sget-object v12, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v12}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/ProfilerInfo;

    .line 4414
    .local v12, "_arg9":Landroid/app/ProfilerInfo;
    sget-object v11, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v11}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;

    .line 4416
    .local v11, "_arg10":Landroid/os/Bundle;
    move-object/from16 v17, v10

    move-object v10, v12

    .end local v12    # "_arg9":Landroid/app/ProfilerInfo;
    .local v10, "_arg9":Landroid/app/ProfilerInfo;
    .local v17, "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 4417
    .local v12, "_arg11":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4418
    move-object/from16 v18, v17

    .end local v17    # "descriptor":Ljava/lang/String;
    .local v18, "descriptor":Ljava/lang/String;
    invoke-virtual/range {v0 .. v12}, Landroid/app/IActivityManager$Stub;->startActivityAsUserWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v13

    .line 4419
    .local v13, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4420
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 4421
    move-object/from16 v0, p0

    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 4364
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/content/Intent;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Landroid/os/IBinder;
    .end local v7    # "_arg6":Ljava/lang/String;
    .end local v8    # "_arg7":I
    .end local v9    # "_arg8":I
    .end local v11    # "_arg10":Landroid/os/Bundle;
    .end local v12    # "_arg11":I
    .end local v13    # "_result":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .local v10, "descriptor":Ljava/lang/String;
    :pswitch_bba
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 4366
    .restart local v1    # "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4368
    .restart local v2    # "_arg1":Ljava/lang/String;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/content/Intent;

    .line 4370
    .local v3, "_arg2":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4372
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 4374
    .local v5, "_arg4":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 4376
    .local v6, "_arg5":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 4378
    .local v7, "_arg6":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 4380
    .restart local v8    # "_arg7":I
    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/app/ProfilerInfo;

    .line 4382
    .local v9, "_arg8":Landroid/app/ProfilerInfo;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/os/Bundle;

    .line 4384
    .local v10, "_arg9":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 4385
    .local v11, "_arg10":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4386
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v11}, Landroid/app/IActivityManager$Stub;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v12

    .line 4387
    .local v12, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4388
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 4389
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 4354
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/content/Intent;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Landroid/os/IBinder;
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v7    # "_arg6":I
    .end local v8    # "_arg7":I
    .end local v9    # "_arg8":Landroid/app/ProfilerInfo;
    .end local v11    # "_arg10":I
    .end local v12    # "_result":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .local v10, "descriptor":Ljava/lang/String;
    :pswitch_c0d
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v1

    .line 4355
    .local v1, "_arg0":Landroid/content/IIntentSender;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4356
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->isIntentSenderAnActivity(Landroid/content/IIntentSender;)Z

    move-result v2

    .line 4357
    .local v2, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4358
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4359
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 4345
    .end local v1    # "_arg0":Landroid/content/IIntentSender;
    .end local v2    # "_result":Z
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_c27
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 4346
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4347
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->unstableProviderDied(Landroid/os/IBinder;)V

    .line 4348
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4349
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 4335
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_c39
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 4336
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4337
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v2

    .line 4338
    .local v2, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4339
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4340
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 4327
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_result":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_c4f
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->getCurrentUserId()I

    move-result v1

    .line 4328
    .local v1, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4329
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4330
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 4320
    .end local v1    # "_result":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_c5e
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 4321
    .local v1, "_result":Landroid/content/pm/UserInfo;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4322
    const/4 v2, 0x1

    invoke-virtual {v15, v1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4323
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 4311
    .end local v1    # "_result":Landroid/content/pm/UserInfo;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_c6e
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4312
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4313
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->killProcessesBelowForeground(Ljava/lang/String;)Z

    move-result v2

    .line 4314
    .local v2, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4315
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4316
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 4301
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_c84
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    new-instance v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 4302
    .local v1, "_arg0":Landroid/app/ActivityManager$RunningAppProcessInfo;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4303
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 4304
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4305
    const/4 v2, 0x1

    invoke-virtual {v15, v1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4306
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 4288
    .end local v1    # "_arg0":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_c9b
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4290
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 4292
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4293
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4294
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->removeContentProviderExternalAsUser(Ljava/lang/String;Landroid/os/IBinder;I)V

    .line 4295
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4296
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 4277
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_cb5
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4279
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 4280
    .restart local v2    # "_arg1":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4281
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 4282
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4283
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 4261
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_ccb
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4263
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4265
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 4267
    .local v3, "_arg2":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4268
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4269
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->getContentProviderExternal(Ljava/lang/String;ILandroid/os/IBinder;Ljava/lang/String;)Landroid/app/ContentProviderHolder;

    move-result-object v5

    .line 4270
    .local v5, "_result":Landroid/app/ContentProviderHolder;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4271
    const/4 v6, 0x1

    invoke-virtual {v15, v5, v6}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4272
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 4254
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/IBinder;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_result":Landroid/app/ContentProviderHolder;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_cee
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->killAllBackgroundProcesses()V

    .line 4255
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4256
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 4244
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_cf9
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 4246
    .local v1, "_arg0":Ljava/lang/CharSequence;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 4247
    .local v2, "_arg1":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4248
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->showBootMessage(Ljava/lang/CharSequence;Z)V

    .line 4249
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4250
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 4234
    .end local v1    # "_arg0":Ljava/lang/CharSequence;
    .end local v2    # "_arg1":Z
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_d13
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 4235
    .local v1, "_arg0":[I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4236
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getProcessPss([I)[J

    move-result-object v2

    .line 4237
    .local v2, "_result":[J
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4238
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 4239
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 4221
    .end local v1    # "_arg0":[I
    .end local v2    # "_result":[J
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_d29
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    .line 4223
    .local v1, "_arg0":Landroid/content/res/Configuration;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4225
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4226
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4227
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->updatePersistentConfigurationWithAttribution(Landroid/content/res/Configuration;Ljava/lang/String;Ljava/lang/String;)V

    .line 4228
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4229
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 4212
    .end local v1    # "_arg0":Landroid/content/res/Configuration;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_d47
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    .line 4213
    .restart local v1    # "_arg0":Landroid/content/res/Configuration;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4214
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    .line 4215
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4216
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 4202
    .end local v1    # "_arg0":Landroid/content/res/Configuration;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_d5d
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v1

    .line 4203
    .local v1, "_arg0":Landroid/content/IIntentSender;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4204
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->isIntentSenderTargetedToPackage(Landroid/content/IIntentSender;)Z

    move-result v2

    .line 4205
    .local v2, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4206
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4207
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 4193
    .end local v1    # "_arg0":Landroid/content/IIntentSender;
    .end local v2    # "_result":Z
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_d77
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v1

    .line 4194
    .local v1, "_arg0":Landroid/app/IProcessObserver;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4195
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 4196
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4197
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 4184
    .end local v1    # "_arg0":Landroid/app/IProcessObserver;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_d8d
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v1

    .line 4185
    .restart local v1    # "_arg0":Landroid/app/IProcessObserver;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4186
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 4187
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4188
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 4174
    .end local v1    # "_arg0":Landroid/app/IProcessObserver;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_da3
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4175
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4176
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->removeTask(I)Z

    move-result v2

    .line 4177
    .restart local v2    # "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4178
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4179
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 4165
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_db9
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4166
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4167
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->setStopUserOnSwitch(I)V

    .line 4168
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4169
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 4155
    .end local v1    # "_arg0":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_dcb
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4156
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4157
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getSwitchingToUserMessage(I)Ljava/lang/String;

    move-result-object v2

    .line 4158
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4159
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4160
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 4145
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Ljava/lang/String;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_de1
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4146
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4147
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getSwitchingFromUserMessage(I)Ljava/lang/String;

    move-result-object v2

    .line 4148
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4149
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4150
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 4135
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Ljava/lang/String;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_df7
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4136
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4137
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->switchUser(I)Z

    move-result v2

    .line 4138
    .local v2, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4139
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4140
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 4124
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_e0d
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4126
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4127
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4128
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    .line 4129
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4130
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 4112
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_e23
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4114
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4115
    .restart local v2    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4116
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->isUserRunning(II)Z

    move-result v3

    .line 4117
    .local v3, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4118
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4119
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 4086
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_e3d
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4088
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4090
    .restart local v2    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 4092
    .local v3, "_arg2":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 4094
    .local v4, "_arg3":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 4096
    .local v5, "_arg4":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 4098
    .restart local v6    # "_arg5":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 4100
    .local v7, "_arg6":Ljava/lang/String;
    sget-object v8, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v8}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/ParcelFileDescriptor;

    .line 4102
    .local v8, "_arg7":Landroid/os/ParcelFileDescriptor;
    sget-object v9, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v9}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/RemoteCallback;

    .line 4103
    .local v9, "_arg8":Landroid/os/RemoteCallback;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4104
    invoke-virtual/range {v0 .. v9}, Landroid/app/IActivityManager$Stub;->dumpHeap(Ljava/lang/String;IZZZLjava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)Z

    move-result v10

    .line 4105
    .local v10, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4106
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4107
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 4074
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v7    # "_arg6":Ljava/lang/String;
    .end local v8    # "_arg7":Landroid/os/ParcelFileDescriptor;
    .end local v9    # "_arg8":Landroid/os/RemoteCallback;
    .end local v18    # "descriptor":Ljava/lang/String;
    .local v10, "descriptor":Ljava/lang/String;
    :pswitch_e7b
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 4076
    .local v1, "_arg0":Landroid/net/Uri;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4078
    .restart local v2    # "_arg1":I
    sget-object v3, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RemoteCallback;

    .line 4079
    .local v3, "_arg2":Landroid/os/RemoteCallback;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4080
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->getMimeTypeFilterAsync(Landroid/net/Uri;ILandroid/os/RemoteCallback;)V

    .line 4081
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 4051
    .end local v1    # "_arg0":Landroid/net/Uri;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/RemoteCallback;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_e9a
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4053
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4055
    .restart local v2    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4057
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 4059
    .local v4, "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 4061
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 4063
    .local v6, "_arg5":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 4065
    .local v7, "_arg6":I
    sget-object v8, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v8}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    .line 4066
    .local v8, "_arg7":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4067
    invoke-virtual/range {v0 .. v8}, Landroid/app/IActivityManager$Stub;->crashApplicationWithTypeWithExtras(IILjava/lang/String;ILjava/lang/String;ZILandroid/os/Bundle;)V

    .line 4068
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4069
    move-object/from16 v0, p0

    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 4030
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Z
    .end local v7    # "_arg6":I
    .end local v8    # "_arg7":Landroid/os/Bundle;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_ece
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4032
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4034
    .restart local v2    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4036
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 4038
    .restart local v4    # "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 4040
    .restart local v5    # "_arg4":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 4042
    .restart local v6    # "_arg5":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 4043
    .restart local v7    # "_arg6":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4044
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/app/IActivityManager$Stub;->crashApplicationWithType(IILjava/lang/String;ILjava/lang/String;ZI)V

    .line 4045
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4046
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 4022
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Z
    .end local v7    # "_arg6":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_efa
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->isTopActivityImmersive()Z

    move-result v1

    .line 4023
    .local v1, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4024
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4025
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 4014
    .end local v1    # "_result":Z
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_f09
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 4015
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4016
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->registerStrictModeCallback(Landroid/os/IBinder;)V

    .line 4017
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4018
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 4001
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_f1b
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 4003
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4005
    .restart local v2    # "_arg1":I
    sget-object v3, Landroid/os/StrictMode$ViolationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/StrictMode$ViolationInfo;

    .line 4006
    .local v3, "_arg2":Landroid/os/StrictMode$ViolationInfo;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4007
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V

    .line 4008
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 4009
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3994
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/StrictMode$ViolationInfo;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_f39
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->finishHeavyWeightApp()V

    .line 3995
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3996
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3987
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_f44
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->getRunningExternalApplications()Ljava/util/List;

    move-result-object v1

    .line 3988
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3989
    const/4 v2, 0x1

    invoke-virtual {v15, v1, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3990
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3980
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_f54
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->isUserAMonkey()Z

    move-result v1

    .line 3981
    .local v1, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3982
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3983
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3970
    .end local v1    # "_result":Z
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_f63
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3972
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3973
    .restart local v2    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3974
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->killBackgroundProcesses(Ljava/lang/String;I)V

    .line 3975
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3976
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3952
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_f79
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 3954
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3956
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3958
    .local v3, "_arg2":Z
    sget-object v4, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;

    .line 3960
    .local v4, "_arg3":Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 3961
    .local v5, "_arg4":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3962
    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityManager$Stub;->handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$ParcelableCrashInfo;I)Z

    move-result v6

    .line 3963
    .local v6, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3964
    invoke-virtual {v15, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3965
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3941
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;
    .end local v5    # "_arg4":I
    .end local v6    # "_result":Z
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_fa3
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3943
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3944
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3945
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->killApplicationProcess(Ljava/lang/String;I)V

    .line 3946
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3947
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3931
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_fb9
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 3932
    .local v1, "_arg0":[I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3933
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v2

    .line 3934
    .local v2, "_result":[Landroid/os/Debug$MemoryInfo;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3935
    const/4 v6, 0x1

    invoke-virtual {v15, v2, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 3936
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3922
    .end local v1    # "_arg0":[I
    .end local v2    # "_result":[Landroid/os/Debug$MemoryInfo;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_fd0
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3923
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3924
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->closeSystemDialogs(Ljava/lang/String;)V

    .line 3925
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3926
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3905
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_fe2
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3907
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3909
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3911
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3913
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 3914
    .restart local v5    # "_arg4":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3915
    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityManager$Stub;->killApplication(Ljava/lang/String;IILjava/lang/String;I)V

    .line 3916
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3917
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3896
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_1004
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3897
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3898
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->addPackageDependency(Ljava/lang/String;)V

    .line 3899
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3900
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3874
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_1016
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3876
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3878
    .restart local v2    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3880
    .restart local v3    # "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 3882
    .local v4, "_arg3":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 3884
    .local v5, "_arg4":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 3886
    .local v6, "_arg5":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 3887
    .local v7, "_arg6":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3888
    invoke-virtual/range {v0 .. v7}, Landroid/app/IActivityManager$Stub;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 3889
    .local v8, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3890
    invoke-virtual {v15, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 3891
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3865
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v7    # "_arg6":Ljava/lang/String;
    .end local v8    # "_result":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_1044
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 3866
    .local v1, "_arg0":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3867
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 3868
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3869
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3852
    .end local v1    # "_arg0":Landroid/content/pm/ApplicationInfo;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_105a
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3854
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 3856
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3857
    .restart local v3    # "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3858
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;I)V

    .line 3859
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3860
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3834
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_1074
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3836
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3838
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3840
    .restart local v3    # "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3842
    .local v4, "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 3843
    .restart local v5    # "_arg4":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3844
    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityManager$Stub;->bindBackupAgent(Ljava/lang/String;IIIZ)Z

    move-result v6

    .line 3845
    .local v6, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3846
    invoke-virtual {v15, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3847
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3827
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Z
    .end local v6    # "_result":Z
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_109a
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->resumeAppSwitches()V

    .line 3828
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3829
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3821
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_10a5
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->stopAppSwitches()V

    .line 3822
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3823
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3812
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_10b0
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3813
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3814
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->shutdown(I)Z

    move-result v2

    .line 3815
    .local v2, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3816
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3817
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3794
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_10c6
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3796
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3798
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3800
    .local v3, "_arg2":Z
    sget-object v4, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ProfilerInfo;

    .line 3802
    .local v4, "_arg3":Landroid/app/ProfilerInfo;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 3803
    .local v5, "_arg4":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3804
    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityManager$Stub;->profileControl(Ljava/lang/String;IZLandroid/app/ProfilerInfo;I)Z

    move-result v6

    .line 3805
    .restart local v6    # "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3806
    invoke-virtual {v15, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3807
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3780
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Landroid/app/ProfilerInfo;
    .end local v5    # "_arg4":I
    .end local v6    # "_result":Z
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_10f0
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 3782
    .local v1, "_arg0":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3784
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3785
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3786
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->peekService(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 3787
    .local v4, "_result":Landroid/os/IBinder;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3788
    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3789
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3772
    .end local v1    # "_arg0":Landroid/content/Intent;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":Landroid/os/IBinder;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_1112
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 3773
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3774
    const/4 v2, 0x1

    invoke-virtual {v15, v1, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3775
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3761
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_1122
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3763
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3764
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3765
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->getServices(II)Ljava/util/List;

    move-result-object v3

    .line 3766
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3767
    const/4 v6, 0x1

    invoke-virtual {v15, v3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3768
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3747
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_113d
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 3749
    .local v1, "_arg0":[I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3751
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3752
    .local v3, "_arg2":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3753
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->killPids([ILjava/lang/String;Z)Z

    move-result v4

    .line 3754
    .local v4, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3755
    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3756
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3736
    .end local v1    # "_arg0":[I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Z
    .end local v4    # "_result":Z
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_115b
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3738
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3739
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3740
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->forceStopPackageEvenWhenStopping(Ljava/lang/String;I)V

    .line 3741
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3742
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3725
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_1171
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3727
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3728
    .restart local v2    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3729
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->forceStopPackage(Ljava/lang/String;I)V

    .line 3730
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3731
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3715
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_1187
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IForegroundServiceObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IForegroundServiceObserver;

    move-result-object v1

    .line 3716
    .local v1, "_arg0":Landroid/app/IForegroundServiceObserver;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3717
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->registerForegroundServiceObserver(Landroid/app/IForegroundServiceObserver;)Z

    move-result v2

    .line 3718
    .local v2, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3719
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3720
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3704
    .end local v1    # "_arg0":Landroid/app/IForegroundServiceObserver;
    .end local v2    # "_result":Z
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_11a1
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3706
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3707
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3708
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->stopAppForUser(Ljava/lang/String;I)V

    .line 3709
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3710
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3688
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_11b7
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3690
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3692
    .local v2, "_arg1":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v3

    .line 3694
    .local v3, "_arg2":Landroid/content/pm/IPackageDataObserver;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3695
    .local v4, "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3696
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->clearApplicationUserData(Ljava/lang/String;ZLandroid/content/pm/IPackageDataObserver;I)Z

    move-result v5

    .line 3697
    .local v5, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3698
    invoke-virtual {v15, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3699
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3680
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Landroid/content/pm/IPackageDataObserver;
    .end local v4    # "_arg3":I
    .end local v5    # "_result":Z
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_11dd
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v1

    .line 3681
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3682
    const/4 v2, 0x1

    invoke-virtual {v15, v1, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3683
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3671
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_11ed
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 3672
    .local v1, "_arg0":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3673
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 3674
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3675
    const/4 v2, 0x1

    invoke-virtual {v15, v1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3676
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3659
    .end local v1    # "_arg0":Landroid/app/ActivityManager$MemoryInfo;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_1204
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 3661
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3662
    .restart local v2    # "_arg1":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3663
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z

    move-result v3

    .line 3664
    .local v3, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3665
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3666
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3647
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Z
    .end local v3    # "_result":Z
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_121e
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 3649
    .local v1, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 3650
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3651
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->getForegroundServiceType(Landroid/content/ComponentName;Landroid/os/IBinder;)I

    move-result v3

    .line 3652
    .local v3, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3653
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3654
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3628
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_result":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_123c
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 3630
    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 3632
    .restart local v2    # "_arg1":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3634
    .local v3, "_arg2":I
    sget-object v4, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Notification;

    .line 3636
    .local v4, "_arg3":Landroid/app/Notification;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 3638
    .local v5, "_arg4":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3639
    .local v6, "_arg5":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3640
    invoke-virtual/range {v0 .. v6}, Landroid/app/IActivityManager$Stub;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;II)V

    .line 3641
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3642
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3613
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/app/Notification;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_126a
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 3615
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3617
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3619
    .local v3, "_arg2":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3620
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3621
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->setProcessImportant(Landroid/os/IBinder;IZLjava/lang/String;)V

    .line 3622
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3623
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3602
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_1288
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 3604
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 3605
    .local v2, "_arg1":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3606
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;)V

    .line 3607
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3608
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3591
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/content/Intent;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_12a2
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 3593
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3594
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3595
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->setRequestedOrientation(Landroid/os/IBinder;I)V

    .line 3596
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3597
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3581
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_12b8
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 3583
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3584
    .local v2, "_arg1":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3585
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->removeContentProvider(Landroid/os/IBinder;Z)V

    .line 3586
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3564
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Z
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_12cb
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v1

    .line 3566
    .local v1, "_arg0":Landroid/content/IIntentSender;
    sget-object v2, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/WorkSource;

    .line 3568
    .local v2, "_arg1":Landroid/os/WorkSource;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3570
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3572
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 3573
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3574
    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityManager$Stub;->noteWakeupAlarm(Landroid/content/IIntentSender;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;)V

    .line 3575
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3576
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3557
    .end local v1    # "_arg0":Landroid/content/IIntentSender;
    .end local v2    # "_arg1":Landroid/os/WorkSource;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_12f5
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->enterSafeMode()V

    .line 3558
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3559
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3547
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_1300
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v1

    .line 3549
    .restart local v1    # "_arg0":Landroid/content/IIntentSender;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v2

    .line 3550
    .local v2, "_arg1":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3551
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->unregisterIntentSenderCancelListener(Landroid/content/IIntentSender;Lcom/android/internal/os/IResultReceiver;)V

    .line 3552
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3553
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3535
    .end local v1    # "_arg0":Landroid/content/IIntentSender;
    .end local v2    # "_arg1":Lcom/android/internal/os/IResultReceiver;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_131e
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v1

    .line 3537
    .restart local v1    # "_arg0":Landroid/content/IIntentSender;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v2

    .line 3538
    .restart local v2    # "_arg1":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3539
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->registerIntentSenderCancelListenerEx(Landroid/content/IIntentSender;Lcom/android/internal/os/IResultReceiver;)Z

    move-result v3

    .line 3540
    .local v3, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3541
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3542
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3525
    .end local v1    # "_arg0":Landroid/content/IIntentSender;
    .end local v2    # "_arg1":Lcom/android/internal/os/IResultReceiver;
    .end local v3    # "_result":Z
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_1340
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v1

    .line 3526
    .restart local v1    # "_arg0":Landroid/content/IIntentSender;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3527
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getInfoForIntentSender(Landroid/content/IIntentSender;)Landroid/app/ActivityManager$PendingIntentInfo;

    move-result-object v2

    .line 3528
    .local v2, "_result":Landroid/app/ActivityManager$PendingIntentInfo;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3529
    const/4 v6, 0x1

    invoke-virtual {v15, v2, v6}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3530
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3516
    .end local v1    # "_arg0":Landroid/content/IIntentSender;
    .end local v2    # "_result":Landroid/app/ActivityManager$PendingIntentInfo;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_135b
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v1

    .line 3517
    .restart local v1    # "_arg0":Landroid/content/IIntentSender;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3518
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->cancelIntentSender(Landroid/content/IIntentSender;)V

    .line 3519
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3520
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3486
    .end local v1    # "_arg0":Landroid/content/IIntentSender;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_1371
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3488
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3490
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3492
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 3494
    .local v4, "_arg3":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 3496
    .restart local v5    # "_arg4":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3498
    .restart local v6    # "_arg5":I
    sget-object v7, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v7}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/content/Intent;

    .line 3500
    .local v7, "_arg6":[Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v8

    .line 3502
    .local v8, "_arg7":[Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 3504
    .local v9, "_arg8":I
    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v10}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Bundle;

    .line 3506
    .local v10, "_arg9":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 3507
    .restart local v11    # "_arg10":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3508
    invoke-virtual/range {v0 .. v11}, Landroid/app/IActivityManager$Stub;->getIntentSenderWithFeature(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v12

    .line 3509
    .local v12, "_result":Landroid/content/IIntentSender;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3510
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 3511
    move-object/from16 v0, p0

    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3458
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/os/IBinder;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":[Landroid/content/Intent;
    .end local v8    # "_arg7":[Ljava/lang/String;
    .end local v9    # "_arg8":I
    .end local v11    # "_arg10":I
    .end local v12    # "_result":Landroid/content/IIntentSender;
    .end local v18    # "descriptor":Ljava/lang/String;
    .local v10, "descriptor":Ljava/lang/String;
    :pswitch_13b9
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3460
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3462
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 3464
    .local v3, "_arg2":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3466
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 3468
    .local v5, "_arg4":I
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Landroid/content/Intent;

    .line 3470
    .local v6, "_arg5":[Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v7

    .line 3472
    .local v7, "_arg6":[Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 3474
    .local v8, "_arg7":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/os/Bundle;

    .line 3476
    .local v9, "_arg8":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 3477
    .local v10, "_arg9":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3478
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v10}, Landroid/app/IActivityManager$Stub;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v11

    .line 3479
    .local v11, "_result":Landroid/content/IIntentSender;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3480
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 3481
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3442
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/IBinder;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":[Landroid/content/Intent;
    .end local v7    # "_arg6":[Ljava/lang/String;
    .end local v8    # "_arg7":I
    .end local v9    # "_arg8":Landroid/os/Bundle;
    .end local v11    # "_result":Landroid/content/IIntentSender;
    .end local v18    # "descriptor":Ljava/lang/String;
    .local v10, "descriptor":Ljava/lang/String;
    :pswitch_13ff
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 3444
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3446
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3448
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3450
    .local v4, "_arg3":I
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/content/Intent;

    .line 3451
    .local v5, "_arg4":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3452
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityManager$Stub;->serviceDoneExecuting(Landroid/os/IBinder;IIILandroid/content/Intent;)V

    .line 3453
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3428
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Landroid/content/Intent;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_1425
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3430
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3432
    .restart local v2    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3433
    .restart local v3    # "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3434
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 3435
    .local v4, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3436
    const/4 v6, 0x1

    invoke-virtual {v15, v4, v6}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3437
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3419
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Landroid/content/pm/ParceledListSlice;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_1444
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3420
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3421
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->signalPersistentProcesses(I)V

    .line 3422
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3423
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3408
    .end local v1    # "_arg0":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_1456
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 3410
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3411
    .local v2, "_arg1":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3412
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V

    .line 3413
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3414
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3397
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":Z
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_1470
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IActivityController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityController;

    move-result-object v1

    .line 3399
    .local v1, "_arg0":Landroid/app/IActivityController;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3400
    .restart local v2    # "_arg1":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3401
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->setActivityController(Landroid/app/IActivityController;Z)V

    .line 3402
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3403
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3380
    .end local v1    # "_arg0":Landroid/app/IActivityController;
    .end local v2    # "_arg1":Z
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_148a
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 3382
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3384
    .local v2, "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 3386
    .local v3, "_arg2":Landroid/net/Uri;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3388
    .local v4, "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 3389
    .local v5, "_arg4":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3390
    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityManager$Stub;->revokeUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V

    .line 3391
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3392
    move-object/from16 v0, p0

    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3363
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/net/Uri;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_14b6
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 3365
    .restart local v1    # "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3367
    .restart local v2    # "_arg1":Ljava/lang/String;
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/net/Uri;

    .line 3369
    .restart local v3    # "_arg2":Landroid/net/Uri;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3371
    .restart local v4    # "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 3372
    .restart local v5    # "_arg4":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3373
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityManager$Stub;->grantUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V

    .line 3374
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3375
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3343
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/net/Uri;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_14e3
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3345
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3347
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3349
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3351
    .restart local v4    # "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 3353
    .restart local v5    # "_arg4":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 3354
    .local v6, "_arg5":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3355
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/IActivityManager$Stub;->checkUriPermissions(Ljava/util/List;IIIILandroid/os/IBinder;)[I

    move-result-object v7

    .line 3356
    .local v7, "_result":[I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3357
    invoke-virtual {v15, v7}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3358
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3325
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Landroid/os/IBinder;
    .end local v7    # "_result":[I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_1511
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/net/Uri;

    .line 3327
    .local v1, "_arg0":Landroid/net/Uri;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3329
    .restart local v2    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3331
    .restart local v3    # "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3333
    .restart local v4    # "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 3334
    .restart local v5    # "_arg4":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3335
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityManager$Stub;->checkContentUriPermissionFull(Landroid/net/Uri;IIII)I

    move-result v6

    .line 3336
    .local v6, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3337
    invoke-virtual {v15, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3338
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3305
    .end local v1    # "_arg0":Landroid/net/Uri;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_result":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_153e
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/net/Uri;

    .line 3307
    .restart local v1    # "_arg0":Landroid/net/Uri;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3309
    .restart local v2    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3311
    .restart local v3    # "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3313
    .restart local v4    # "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 3315
    .restart local v5    # "_arg4":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 3316
    .local v6, "_arg5":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3317
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/IActivityManager$Stub;->checkUriPermission(Landroid/net/Uri;IIIILandroid/os/IBinder;)I

    move-result v7

    .line 3318
    .local v7, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3319
    invoke-virtual {v15, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 3320
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3297
    .end local v1    # "_arg0":Landroid/net/Uri;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Landroid/os/IBinder;
    .end local v7    # "_result":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_156f
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->getProcessLimit()I

    move-result v1

    .line 3298
    .local v1, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3299
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3300
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3289
    .end local v1    # "_result":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_157e
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3290
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3291
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->setProcessLimit(I)V

    .line 3292
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3293
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3275
    .end local v1    # "_arg0":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_1590
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 3277
    .local v1, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 3279
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3280
    .restart local v3    # "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3281
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z

    move-result v4

    .line 3282
    .local v4, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3283
    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3284
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3263
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Z
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_15b2
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3265
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3266
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3267
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->updateMccMncConfiguration(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 3268
    .local v3, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3269
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3270
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3253
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Z
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_15cc
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    .line 3254
    .local v1, "_arg0":Landroid/content/res/Configuration;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3255
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->updateConfiguration(Landroid/content/res/Configuration;)Z

    move-result v2

    .line 3256
    .local v2, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3257
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3258
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3245
    .end local v1    # "_arg0":Landroid/content/res/Configuration;
    .end local v2    # "_result":Z
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_15e6
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 3246
    .local v1, "_result":Landroid/content/res/Configuration;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3247
    const/4 v2, 0x1

    invoke-virtual {v15, v1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3248
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3233
    .end local v1    # "_result":Landroid/content/res/Configuration;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_15f6
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 3235
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3237
    .local v2, "_arg1":I
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 3238
    .local v3, "_arg2":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3239
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V

    .line 3240
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3241
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3222
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/Bundle;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_1618
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 3224
    .restart local v1    # "_arg0":Landroid/app/IApplicationThread;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 3225
    .local v2, "_arg1":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3226
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->addInstrumentationResults(Landroid/app/IApplicationThread;Landroid/os/Bundle;)V

    .line 3227
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3228
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3198
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_1636
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 3200
    .local v1, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3202
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3204
    .local v3, "_arg2":I
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 3206
    .local v4, "_arg3":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v5

    .line 3208
    .local v5, "_arg4":Landroid/app/IInstrumentationWatcher;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    move-result-object v6

    .line 3210
    .local v6, "_arg5":Landroid/app/IUiAutomationConnection;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 3212
    .local v7, "_arg6":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 3213
    .local v8, "_arg7":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3214
    invoke-virtual/range {v0 .. v8}, Landroid/app/IActivityManager$Stub;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;ILjava/lang/String;)Z

    move-result v9

    .line 3215
    .local v9, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3216
    invoke-virtual {v15, v9}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3217
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3189
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/os/Bundle;
    .end local v5    # "_arg4":Landroid/app/IInstrumentationWatcher;
    .end local v6    # "_arg5":Landroid/app/IUiAutomationConnection;
    .end local v7    # "_arg6":I
    .end local v8    # "_arg7":Ljava/lang/String;
    .end local v9    # "_result":Z
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_1678
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3190
    .local v1, "_arg0":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3191
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->setAlwaysFinish(Z)V

    .line 3192
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3193
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3178
    .end local v1    # "_arg0":Z
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_168a
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3180
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3181
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3182
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->setAgentApp(Ljava/lang/String;Ljava/lang/String;)V

    .line 3183
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3184
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3165
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_16a0
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3167
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3169
    .local v2, "_arg1":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3170
    .local v3, "_arg2":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3171
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 3172
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3173
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3152
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Z
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_16ba
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 3154
    .local v1, "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 3156
    .local v2, "_arg1":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 3157
    .local v3, "_arg2":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3158
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V

    .line 3159
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3160
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3142
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/content/Intent;
    .end local v3    # "_arg2":Landroid/os/IBinder;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_16d8
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v1

    .line 3143
    .local v1, "_arg0":Landroid/app/IServiceConnection;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3144
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->unbindService(Landroid/app/IServiceConnection;)Z

    move-result v2

    .line 3145
    .local v2, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3146
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3147
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3129
    .end local v1    # "_arg0":Landroid/app/IServiceConnection;
    .end local v2    # "_result":Z
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_16f2
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v1

    .line 3131
    .restart local v1    # "_arg0":Landroid/app/IServiceConnection;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3133
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3134
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3135
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->updateServiceGroup(Landroid/app/IServiceConnection;II)V

    .line 3136
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3137
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3103
    .end local v1    # "_arg0":Landroid/app/IServiceConnection;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_1710
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 3105
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 3107
    .local v2, "_arg1":Landroid/os/IBinder;
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 3109
    .local v3, "_arg2":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3111
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v5

    .line 3113
    .local v5, "_arg4":Landroid/app/IServiceConnection;
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 3115
    .local v6, "_arg5":J
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 3117
    .local v8, "_arg6":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 3119
    .local v9, "_arg7":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 3120
    .local v10, "_arg8":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3121
    invoke-virtual/range {v0 .. v10}, Landroid/app/IActivityManager$Stub;->bindServiceInstance(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;JLjava/lang/String;Ljava/lang/String;I)I

    move-result v11

    .line 3122
    .local v11, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3123
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 3124
    move-object/from16 v0, p0

    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3079
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":Landroid/content/Intent;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Landroid/app/IServiceConnection;
    .end local v6    # "_arg5":J
    .end local v8    # "_arg6":Ljava/lang/String;
    .end local v9    # "_arg7":Ljava/lang/String;
    .end local v11    # "_result":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .local v10, "descriptor":Ljava/lang/String;
    :pswitch_1754
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 3081
    .restart local v1    # "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 3083
    .restart local v2    # "_arg1":Landroid/os/IBinder;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/content/Intent;

    .line 3085
    .restart local v3    # "_arg2":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3087
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v5

    .line 3089
    .restart local v5    # "_arg4":Landroid/app/IServiceConnection;
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 3091
    .restart local v6    # "_arg5":J
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 3093
    .restart local v8    # "_arg6":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 3094
    .local v9, "_arg7":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3095
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Landroid/app/IActivityManager$Stub;->bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;JLjava/lang/String;I)I

    move-result v10

    .line 3096
    .local v10, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3097
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 3098
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3063
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":Landroid/content/Intent;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Landroid/app/IServiceConnection;
    .end local v6    # "_arg5":J
    .end local v8    # "_arg6":Ljava/lang/String;
    .end local v9    # "_arg7":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .local v10, "descriptor":Ljava/lang/String;
    :pswitch_1795
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 3065
    .restart local v1    # "_arg0":Landroid/app/IApplicationThread;
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 3067
    .local v2, "_arg1":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3069
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3070
    .local v4, "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3071
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v5

    .line 3072
    .local v5, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3073
    invoke-virtual {v15, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3074
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3041
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":Landroid/content/Intent;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_result":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_17bf
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 3043
    .restart local v1    # "_arg0":Landroid/app/IApplicationThread;
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 3045
    .restart local v2    # "_arg1":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3047
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 3049
    .local v4, "_arg3":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 3051
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 3053
    .local v6, "_arg5":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 3054
    .restart local v7    # "_arg6":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3055
    invoke-virtual/range {v0 .. v7}, Landroid/app/IActivityManager$Stub;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v8

    .line 3056
    .local v8, "_result":Landroid/content/ComponentName;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3057
    const/4 v9, 0x1

    invoke-virtual {v15, v8, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3058
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3031
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":Landroid/content/Intent;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v7    # "_arg6":I
    .end local v8    # "_result":Landroid/content/ComponentName;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_17f6
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 3032
    .local v1, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3033
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 3034
    .local v2, "_result":Landroid/app/PendingIntent;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3035
    const/4 v6, 0x1

    invoke-virtual {v15, v2, v6}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3036
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3017
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_result":Landroid/app/PendingIntent;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_1811
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 3019
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3021
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3022
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3023
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->refContentProvider(Landroid/os/IBinder;II)Z

    move-result v4

    .line 3024
    .local v4, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3025
    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3026
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 3006
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Z
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_182f
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 3008
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    sget-object v2, Landroid/app/ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3009
    .local v2, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/app/ContentProviderHolder;>;"
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3010
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V

    .line 3011
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3012
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 2988
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/app/ContentProviderHolder;>;"
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_184b
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 2990
    .restart local v1    # "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2992
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2994
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2996
    .local v4, "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 2997
    .local v5, "_arg4":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2998
    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityManager$Stub;->getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/app/ContentProviderHolder;

    move-result-object v6

    .line 2999
    .local v6, "_result":Landroid/app/ContentProviderHolder;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 3000
    const/4 v9, 0x1

    invoke-virtual {v15, v6, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3001
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 2976
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Z
    .end local v6    # "_result":Landroid/app/ContentProviderHolder;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_1876
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2978
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2979
    .local v2, "_arg1":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2980
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v3

    .line 2981
    .local v3, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2982
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2983
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 2959
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Z
    .end local v3    # "_result":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_1890
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 2961
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2963
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2965
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2967
    .restart local v4    # "_arg3":I
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 2968
    .local v5, "_arg4":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2969
    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityManager$Stub;->moveTaskToFront(Landroid/app/IApplicationThread;Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 2970
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2971
    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 2949
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Landroid/os/Bundle;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_18ba
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2950
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2951
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getTasks(I)Ljava/util/List;

    move-result-object v2

    .line 2952
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2953
    const/4 v9, 0x1

    invoke-virtual {v15, v2, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 2954
    move v12, v9

    goto/16 :goto_1d0a

    .line 2938
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_18d1
    move-object/from16 v18, v10

    move v9, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 2940
    .local v1, "_arg0":J
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 2941
    .local v3, "_arg1":J
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2942
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->finishAttachApplication(JJ)V

    .line 2943
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2944
    move v12, v9

    goto/16 :goto_1d0a

    .line 2927
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":J
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_18e8
    move-object/from16 v18, v10

    move v9, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 2929
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 2930
    .local v2, "_arg1":J
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2931
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->attachApplication(Landroid/app/IApplicationThread;J)V

    .line 2932
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2933
    move v12, v9

    goto/16 :goto_1d0a

    .line 2909
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":J
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_1903
    move-object/from16 v18, v10

    move v9, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2911
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2913
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2915
    .local v3, "_arg2":Ljava/lang/String;
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 2917
    .local v4, "_arg3":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 2919
    .local v5, "_arg4":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2920
    .local v6, "_arg5":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2921
    invoke-virtual/range {v0 .. v6}, Landroid/app/IActivityManager$Stub;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;ZI)V

    .line 2922
    move v12, v9

    goto/16 :goto_1d0a

    .line 2896
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/os/Bundle;
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_192b
    move-object/from16 v18, v10

    move v9, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 2898
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 2900
    .local v2, "_arg1":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2901
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2902
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;I)V

    .line 2903
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2904
    move v12, v9

    goto/16 :goto_1d0a

    .line 2856
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":Landroid/content/Intent;
    .end local v3    # "_arg2":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_194e
    move-object/from16 v18, v10

    move v9, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v2

    .line 2858
    .local v2, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2860
    .local v3, "_arg1":Ljava/lang/String;
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/content/Intent;

    .line 2862
    .local v4, "_arg2":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2864
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v6

    .line 2866
    .local v6, "_arg4":Landroid/content/IIntentReceiver;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2868
    .local v7, "_arg5":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2870
    .local v8, "_arg6":Ljava/lang/String;
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 2872
    .local v1, "_arg7":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v10

    .line 2874
    .local v10, "_arg8":[Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v11

    .line 2876
    .local v11, "_arg9":[Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v12

    .line 2878
    .local v12, "_arg10":[Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 2880
    .local v13, "_arg11":I
    sget-object v9, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v9}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    .line 2882
    .local v9, "_arg12":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v15

    .line 2884
    .local v15, "_arg13":Z
    const/16 v17, 0x1

    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 2886
    .local v16, "_arg14":Z
    move/from16 v19, v17

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2887
    .local v17, "_arg15":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2888
    move-object v14, v9

    move-object v9, v1

    move-object v1, v0

    .end local v1    # "_arg7":Landroid/os/Bundle;
    .local v9, "_arg7":Landroid/os/Bundle;
    .local v14, "_arg12":Landroid/os/Bundle;
    invoke-virtual/range {v1 .. v17}, Landroid/app/IActivityManager$Stub;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    move-result v0

    .line 2889
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2890
    move-object/from16 v1, p3

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2891
    move-object/from16 v0, p0

    move-object/from16 v14, p2

    move-object v15, v1

    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 2822
    .end local v0    # "_result":I
    .end local v2    # "_arg0":Landroid/app/IApplicationThread;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/content/Intent;
    .end local v5    # "_arg3":Ljava/lang/String;
    .end local v6    # "_arg4":Landroid/content/IIntentReceiver;
    .end local v7    # "_arg5":I
    .end local v8    # "_arg6":Ljava/lang/String;
    .end local v9    # "_arg7":Landroid/os/Bundle;
    .end local v11    # "_arg9":[Ljava/lang/String;
    .end local v12    # "_arg10":[Ljava/lang/String;
    .end local v13    # "_arg11":I
    .end local v14    # "_arg12":Landroid/os/Bundle;
    .end local v15    # "_arg13":Z
    .end local v16    # "_arg14":Z
    .end local v17    # "_arg15":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .local v10, "descriptor":Ljava/lang/String;
    :pswitch_19c4
    move-object/from16 v18, v10

    move-object v1, v15

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v0

    .line 2824
    .local v0, "_arg0":Landroid/app/IApplicationThread;
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v14, p2

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 2826
    .local v2, "_arg1":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2828
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v4

    .line 2830
    .local v4, "_arg3":Landroid/content/IIntentReceiver;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2832
    .local v5, "_arg4":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 2834
    .local v6, "_arg5":Ljava/lang/String;
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v7}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    .line 2836
    .local v7, "_arg6":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v8

    .line 2838
    .local v8, "_arg7":[Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 2840
    .local v9, "_arg8":I
    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v10}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Bundle;

    .line 2842
    .local v10, "_arg9":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v11

    .line 2844
    .local v11, "_arg10":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v12

    .line 2846
    .local v12, "_arg11":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 2847
    .local v13, "_arg12":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2848
    move-object v1, v0

    move-object/from16 v0, p0

    .end local v0    # "_arg0":Landroid/app/IApplicationThread;
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {v0 .. v13}, Landroid/app/IActivityManager$Stub;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    move-result v14

    .line 2849
    .local v14, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2850
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 2851
    move-object/from16 v14, p2

    const/4 v12, 0x1

    goto/16 :goto_1d0a

    .line 2812
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":Landroid/content/Intent;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/content/IIntentReceiver;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v7    # "_arg6":Landroid/os/Bundle;
    .end local v8    # "_arg7":[Ljava/lang/String;
    .end local v9    # "_arg8":I
    .end local v11    # "_arg10":Z
    .end local v12    # "_arg11":Z
    .end local v13    # "_arg12":I
    .end local v14    # "_result":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .local v10, "descriptor":Ljava/lang/String;
    :pswitch_1a26
    move-object/from16 v18, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v1

    .line 2813
    .local v1, "_arg0":Landroid/content/IIntentReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2814
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getRegisteredIntentFilters(Landroid/content/IIntentReceiver;)Ljava/util/List;

    move-result-object v2

    .line 2815
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2816
    const/4 v12, 0x1

    invoke-virtual {v15, v2, v12}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 2817
    move-object/from16 v14, p2

    goto/16 :goto_1d0a

    .line 2803
    .end local v1    # "_arg0":Landroid/content/IIntentReceiver;
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_1a42
    move-object/from16 v18, v10

    move v12, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v1

    .line 2804
    .restart local v1    # "_arg0":Landroid/content/IIntentReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2805
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->unregisterReceiver(Landroid/content/IIntentReceiver;)V

    .line 2806
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2807
    move-object/from16 v14, p2

    goto/16 :goto_1d0a

    .line 2777
    .end local v1    # "_arg0":Landroid/content/IIntentReceiver;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_1a5a
    move-object/from16 v18, v10

    move v12, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 2779
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2781
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2783
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2785
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v5

    .line 2787
    .local v5, "_arg4":Landroid/content/IIntentReceiver;
    sget-object v6, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v14, p2

    invoke-virtual {v14, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/IntentFilter;

    .line 2789
    .local v6, "_arg5":Landroid/content/IntentFilter;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2791
    .local v7, "_arg6":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2793
    .local v8, "_arg7":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 2794
    .restart local v9    # "_arg8":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2795
    invoke-virtual/range {v0 .. v9}, Landroid/app/IActivityManager$Stub;->registerReceiverWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object v10

    .line 2796
    .local v10, "_result":Landroid/content/Intent;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2797
    invoke-virtual {v15, v10, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2798
    move-object/from16 v0, p0

    goto/16 :goto_1d0a

    .line 2755
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Landroid/content/IIntentReceiver;
    .end local v6    # "_arg5":Landroid/content/IntentFilter;
    .end local v7    # "_arg6":Ljava/lang/String;
    .end local v8    # "_arg7":I
    .end local v9    # "_arg8":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .local v10, "descriptor":Ljava/lang/String;
    :pswitch_1aa0
    move-object/from16 v18, v10

    move v12, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 2757
    .restart local v1    # "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2759
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v3

    .line 2761
    .local v3, "_arg2":Landroid/content/IIntentReceiver;
    sget-object v0, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/IntentFilter;

    .line 2763
    .local v4, "_arg3":Landroid/content/IntentFilter;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2765
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2767
    .local v6, "_arg5":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2768
    .local v7, "_arg6":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2769
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/app/IActivityManager$Stub;->registerReceiver(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object v8

    .line 2770
    .local v8, "_result":Landroid/content/Intent;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2771
    invoke-virtual {v15, v8, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2772
    goto/16 :goto_1d0a

    .line 2739
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/content/IIntentReceiver;
    .end local v4    # "_arg3":Landroid/content/IntentFilter;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":I
    .end local v8    # "_result":Landroid/content/Intent;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_1add
    move-object/from16 v18, v10

    move v12, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2741
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2743
    .local v2, "_arg1":I
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 2745
    .local v3, "_arg2":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2746
    .local v4, "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2747
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z

    move-result v5

    .line 2748
    .local v5, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2749
    invoke-virtual {v15, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2750
    goto/16 :goto_1d0a

    .line 2732
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/content/Intent;
    .end local v4    # "_arg3":I
    .end local v5    # "_result":Z
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_1b03
    move-object/from16 v18, v10

    move v12, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->unhandledBack()V

    .line 2733
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2734
    goto/16 :goto_1d0a

    .line 2703
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_1b0e
    move-object/from16 v18, v10

    move v12, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 2705
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2707
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2709
    .local v3, "_arg2":Ljava/lang/String;
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 2711
    .local v4, "_arg3":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2713
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2715
    .local v6, "_arg5":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2717
    .local v7, "_arg6":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2719
    .local v8, "_arg7":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 2721
    .restart local v9    # "_arg8":I
    sget-object v10, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v10}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ProfilerInfo;

    .line 2723
    .local v10, "_arg9":Landroid/app/ProfilerInfo;
    sget-object v11, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v11}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;

    .line 2724
    .local v11, "_arg10":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2725
    invoke-virtual/range {v0 .. v11}, Landroid/app/IActivityManager$Stub;->startActivityWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    move-result v13

    .line 2726
    .local v13, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2727
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 2728
    move-object/from16 v0, p0

    goto/16 :goto_1d0a

    .line 2675
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/content/Intent;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Landroid/os/IBinder;
    .end local v7    # "_arg6":Ljava/lang/String;
    .end local v8    # "_arg7":I
    .end local v9    # "_arg8":I
    .end local v11    # "_arg10":Landroid/os/Bundle;
    .end local v13    # "_result":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .local v10, "descriptor":Ljava/lang/String;
    :pswitch_1b5e
    move-object/from16 v18, v10

    move v12, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 2677
    .restart local v1    # "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2679
    .restart local v2    # "_arg1":Ljava/lang/String;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/content/Intent;

    .line 2681
    .local v3, "_arg2":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2683
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 2685
    .local v5, "_arg4":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 2687
    .local v6, "_arg5":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2689
    .local v7, "_arg6":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2691
    .restart local v8    # "_arg7":I
    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/app/ProfilerInfo;

    .line 2693
    .local v9, "_arg8":Landroid/app/ProfilerInfo;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/os/Bundle;

    .line 2694
    .local v10, "_arg9":Landroid/os/Bundle;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2695
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v10}, Landroid/app/IActivityManager$Stub;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    move-result v11

    .line 2696
    .local v11, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2697
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 2698
    goto/16 :goto_1d0a

    .line 2664
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/content/Intent;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Landroid/os/IBinder;
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v7    # "_arg6":I
    .end local v8    # "_arg7":I
    .end local v9    # "_arg8":Landroid/app/ProfilerInfo;
    .end local v11    # "_result":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .local v10, "descriptor":Ljava/lang/String;
    :pswitch_1bad
    move-object/from16 v18, v10

    move v12, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2666
    .local v1, "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;

    .line 2667
    .local v2, "_arg1":Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2668
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;)V

    .line 2669
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2670
    goto/16 :goto_1d0a

    .line 2650
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_1bc7
    move-object/from16 v18, v10

    move v12, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2652
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2654
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2656
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2657
    .local v4, "_arg3":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2658
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->logFgsApiStateChanged(IIII)V

    .line 2659
    goto/16 :goto_1d0a

    .line 2638
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_1be2
    move-object/from16 v18, v10

    move v12, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2640
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2642
    .restart local v2    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2643
    .restart local v3    # "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2644
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->logFgsApiEnd(III)V

    .line 2645
    goto/16 :goto_1d0a

    .line 2626
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_1bf9
    move-object/from16 v18, v10

    move v12, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2628
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2630
    .restart local v2    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2631
    .restart local v3    # "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2632
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->logFgsApiBegin(III)V

    .line 2633
    goto/16 :goto_1d0a

    .line 2612
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_1c10
    move-object/from16 v18, v10

    move v12, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2614
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2616
    .restart local v2    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2617
    .restart local v3    # "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2618
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->checkPermission(Ljava/lang/String;II)I

    move-result v4

    .line 2619
    .local v4, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2620
    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2621
    goto/16 :goto_1d0a

    .line 2600
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_result":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_1c2e
    move-object/from16 v18, v10

    move v12, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2602
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2603
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2604
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->getUidProcessState(ILjava/lang/String;)I

    move-result v3

    .line 2605
    .local v3, "_result":I
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2606
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2607
    goto/16 :goto_1d0a

    .line 2588
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_1c48
    move-object/from16 v18, v10

    move v12, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2590
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2591
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2592
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->isUidActive(ILjava/lang/String;)Z

    move-result v3

    .line 2593
    .local v3, "_result":Z
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2594
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2595
    goto/16 :goto_1d0a

    .line 2575
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Z
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_1c62
    move-object/from16 v18, v10

    move v12, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2577
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2579
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2580
    .local v3, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2581
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->removeUidFromObserver(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 2582
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2583
    goto/16 :goto_1d0a

    .line 2562
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_1c7c
    move-object/from16 v18, v10

    move v12, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2564
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2566
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2567
    .restart local v3    # "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2568
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->addUidToObserver(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 2569
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2570
    goto/16 :goto_1d0a

    .line 2544
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_1c96
    move-object/from16 v18, v10

    move v12, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IUidObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUidObserver;

    move-result-object v1

    .line 2546
    .local v1, "_arg0":Landroid/app/IUidObserver;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2548
    .local v2, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2550
    .restart local v3    # "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2552
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    .line 2553
    .local v5, "_arg4":[I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2554
    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityManager$Stub;->registerUidObserverForUids(Landroid/app/IUidObserver;IILjava/lang/String;[I)Landroid/os/IBinder;

    move-result-object v6

    .line 2555
    .local v6, "_result":Landroid/os/IBinder;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2556
    invoke-virtual {v15, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2557
    goto :goto_1d0a

    .line 2535
    .end local v1    # "_arg0":Landroid/app/IUidObserver;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":[I
    .end local v6    # "_result":Landroid/os/IBinder;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_1cbf
    move-object/from16 v18, v10

    move v12, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IUidObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUidObserver;

    move-result-object v1

    .line 2536
    .restart local v1    # "_arg0":Landroid/app/IUidObserver;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2537
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->unregisterUidObserver(Landroid/app/IUidObserver;)V

    .line 2538
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2539
    goto :goto_1d0a

    .line 2520
    .end local v1    # "_arg0":Landroid/app/IUidObserver;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_1cd4
    move-object/from16 v18, v10

    move v12, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IUidObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUidObserver;

    move-result-object v1

    .line 2522
    .restart local v1    # "_arg0":Landroid/app/IUidObserver;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2524
    .restart local v2    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2526
    .restart local v3    # "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2527
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2528
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    .line 2529
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2530
    goto :goto_1d0a

    .line 2510
    .end local v1    # "_arg0":Landroid/app/IUidObserver;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v18    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_1cf5
    move-object/from16 v18, v10

    move v12, v11

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v18    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2511
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2512
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->openContentUri(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 2513
    .local v2, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    .line 2514
    invoke-virtual {v15, v2, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2515
    nop

    .line 5742
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Landroid/os/ParcelFileDescriptor;
    :goto_1d0a
    return v12

    nop

    :pswitch_data_1d0c
    .packed-switch 0x1
        :pswitch_1cf5
        :pswitch_1cd4
        :pswitch_1cbf
        :pswitch_1c96
        :pswitch_1c7c
        :pswitch_1c62
        :pswitch_1c48
        :pswitch_1c2e
        :pswitch_1c10
        :pswitch_1bf9
        :pswitch_1be2
        :pswitch_1bc7
        :pswitch_1bad
        :pswitch_1b5e
        :pswitch_1b0e
        :pswitch_1b03
        :pswitch_1add
        :pswitch_1aa0
        :pswitch_1a5a
        :pswitch_1a42
        :pswitch_1a26
        :pswitch_19c4
        :pswitch_194e
        :pswitch_192b
        :pswitch_1903
        :pswitch_18e8
        :pswitch_18d1
        :pswitch_18ba
        :pswitch_1890
        :pswitch_1876
        :pswitch_184b
        :pswitch_182f
        :pswitch_1811
        :pswitch_17f6
        :pswitch_17bf
        :pswitch_1795
        :pswitch_1754
        :pswitch_1710
        :pswitch_16f2
        :pswitch_16d8
        :pswitch_16ba
        :pswitch_16a0
        :pswitch_168a
        :pswitch_1678
        :pswitch_1636
        :pswitch_1618
        :pswitch_15f6
        :pswitch_15e6
        :pswitch_15cc
        :pswitch_15b2
        :pswitch_1590
        :pswitch_157e
        :pswitch_156f
        :pswitch_153e
        :pswitch_1511
        :pswitch_14e3
        :pswitch_14b6
        :pswitch_148a
        :pswitch_1470
        :pswitch_1456
        :pswitch_1444
        :pswitch_1425
        :pswitch_13ff
        :pswitch_13b9
        :pswitch_1371
        :pswitch_135b
        :pswitch_1340
        :pswitch_131e
        :pswitch_1300
        :pswitch_12f5
        :pswitch_12cb
        :pswitch_12b8
        :pswitch_12a2
        :pswitch_1288
        :pswitch_126a
        :pswitch_123c
        :pswitch_121e
        :pswitch_1204
        :pswitch_11ed
        :pswitch_11dd
        :pswitch_11b7
        :pswitch_11a1
        :pswitch_1187
        :pswitch_1171
        :pswitch_115b
        :pswitch_113d
        :pswitch_1122
        :pswitch_1112
        :pswitch_10f0
        :pswitch_10c6
        :pswitch_10b0
        :pswitch_10a5
        :pswitch_109a
        :pswitch_1074
        :pswitch_105a
        :pswitch_1044
        :pswitch_1016
        :pswitch_1004
        :pswitch_fe2
        :pswitch_fd0
        :pswitch_fb9
        :pswitch_fa3
        :pswitch_f79
        :pswitch_f63
        :pswitch_f54
        :pswitch_f44
        :pswitch_f39
        :pswitch_f1b
        :pswitch_f09
        :pswitch_efa
        :pswitch_ece
        :pswitch_e9a
        :pswitch_e7b
        :pswitch_e3d
        :pswitch_e23
        :pswitch_e0d
        :pswitch_df7
        :pswitch_de1
        :pswitch_dcb
        :pswitch_db9
        :pswitch_da3
        :pswitch_d8d
        :pswitch_d77
        :pswitch_d5d
        :pswitch_d47
        :pswitch_d29
        :pswitch_d13
        :pswitch_cf9
        :pswitch_cee
        :pswitch_ccb
        :pswitch_cb5
        :pswitch_c9b
        :pswitch_c84
        :pswitch_c6e
        :pswitch_c5e
        :pswitch_c4f
        :pswitch_c39
        :pswitch_c27
        :pswitch_c0d
        :pswitch_bba
        :pswitch_b63
        :pswitch_b41
        :pswitch_b23
        :pswitch_b01
        :pswitch_ae3
        :pswitch_ac9
        :pswitch_ab3
        :pswitch_aa4
        :pswitch_a99
        :pswitch_a87
        :pswitch_a6d
        :pswitch_a57
        :pswitch_a41
        :pswitch_a2b
        :pswitch_a20
        :pswitch_a0c
        :pswitch_a01
        :pswitch_9ef
        :pswitch_9e0
        :pswitch_9d1
        :pswitch_9b7
        :pswitch_9a1
        :pswitch_987
        :pswitch_975
        :pswitch_95f
        :pswitch_950
        :pswitch_936
        :pswitch_924
        :pswitch_915
        :pswitch_90a
        :pswitch_8ff
        :pswitch_8ed
        :pswitch_8d7
        :pswitch_8b9
        :pswitch_89b
        :pswitch_885
        :pswitch_876
        :pswitch_858
        :pswitch_846
        :pswitch_830
        :pswitch_825
        :pswitch_813
        :pswitch_7fd
        :pswitch_7e7
        :pswitch_7d1
        :pswitch_7bb
        :pswitch_79d
        :pswitch_78e
        :pswitch_770
        :pswitch_75e
        :pswitch_748
        :pswitch_722
        :pswitch_6fc
        :pswitch_6e2
        :pswitch_6d3
        :pswitch_6b9
        :pswitch_6a7
        :pswitch_681
        :pswitch_663
        :pswitch_64d
        :pswitch_637
        :pswitch_625
        :pswitch_616
        :pswitch_5fc
        :pswitch_5ea
        :pswitch_5cc
        :pswitch_5c1
        :pswitch_577
        :pswitch_561
        :pswitch_54f
        :pswitch_53d
        :pswitch_52b
        :pswitch_515
        :pswitch_503
        :pswitch_4f1
        :pswitch_4df
        :pswitch_4c1
        :pswitch_4ab
        :pswitch_4a0
        :pswitch_491
        :pswitch_482
        :pswitch_464
        :pswitch_452
        :pswitch_434
        :pswitch_41a
        :pswitch_400
        :pswitch_3e6
        :pswitch_3d3
        :pswitch_3b1
        :pswitch_39b
        :pswitch_379
        :pswitch_367
        :pswitch_358
        :pswitch_349
        :pswitch_32f
        :pswitch_324
        :pswitch_30e
        :pswitch_2f8
        :pswitch_2e2
        :pswitch_2cc
        :pswitch_2b6
        :pswitch_298
        :pswitch_27e
        :pswitch_273
        :pswitch_268
        :pswitch_252
        :pswitch_23c
        :pswitch_226
        :pswitch_204
        :pswitch_1e6
        :pswitch_1cc
        :pswitch_1bd
        :pswitch_19f
        :pswitch_181
        :pswitch_16b
        :pswitch_155
        :pswitch_13f
        :pswitch_11d
        :pswitch_102
        :pswitch_e8
        :pswitch_ce
        :pswitch_b0
        :pswitch_96
        :pswitch_80
        :pswitch_6e
        :pswitch_40
        :pswitch_26
    .end packed-switch
.end method

.method protected blacklist refreshIntentCreatorToken_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 11191
    iget-object v0, p0, Landroid/app/IActivityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/app/IActivityManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/IActivityManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 11192
    return-void
.end method
