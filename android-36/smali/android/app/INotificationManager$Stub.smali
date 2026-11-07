.class public abstract Landroid/app/INotificationManager$Stub;
.super Landroid/os/Binder;
.source "INotificationManager.java"

# interfaces
.implements Landroid/app/INotificationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/INotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/INotificationManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.INotificationManager"

.field static final blacklist PERMISSIONS_registerCallNotificationEventListener:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_unregisterCallNotificationEventListener:[Ljava/lang/String;

.field static final greylist-max-o TRANSACTION_addAutomaticZenRule:I = 0x89

.field static final blacklist TRANSACTION_allowAssistantAdjustment:I = 0x18

.field static final blacklist TRANSACTION_appCanBePromoted:I = 0xa2

.field static final greylist-max-o TRANSACTION_applyAdjustmentFromAssistant:I = 0x65

.field static final greylist-max-o TRANSACTION_applyAdjustmentsFromAssistant:I = 0x66

.field static final greylist-max-o TRANSACTION_applyEnqueuedAdjustmentFromAssistant:I = 0x64

.field static final greylist-max-o TRANSACTION_applyRestore:I = 0x92

.field static final blacklist TRANSACTION_areBubblesAllowed:I = 0x1d

.field static final blacklist TRANSACTION_areBubblesEnabled:I = 0x1e

.field static final greylist-max-o TRANSACTION_areChannelsBypassingDnd:I = 0x3c

.field static final greylist-max-o TRANSACTION_areNotificationsEnabled:I = 0x14

.field static final greylist-max-o TRANSACTION_areNotificationsEnabledForPackage:I = 0x13

.field static final blacklist TRANSACTION_canBePromoted:I = 0xa3

.field static final blacklist TRANSACTION_canNotifyAsPackage:I = 0x96

.field static final greylist-max-o TRANSACTION_canShowBadge:I = 0xb

.field static final blacklist TRANSACTION_canUseFullScreenIntent:I = 0x97

.field static final greylist-max-o TRANSACTION_cancelAllNotifications:I = 0x1

.field static final greylist-max-o TRANSACTION_cancelNotificationFromListener:I = 0x4b

.field static final greylist-max-o TRANSACTION_cancelNotificationWithTag:I = 0x8

.field static final greylist-max-o TRANSACTION_cancelNotificationsFromListener:I = 0x4c

.field static final greylist-max-o TRANSACTION_cancelToast:I = 0x5

.field static final blacklist TRANSACTION_cleanUpCallersAfter:I = 0x6b

.field static final greylist-max-o TRANSACTION_clearData:I = 0x2

.field static final blacklist TRANSACTION_clearRequestedListenerHints:I = 0x57

.field static final blacklist TRANSACTION_createConversationNotificationChannelForPackage:I = 0x2f

.field static final blacklist TRANSACTION_createConversationNotificationChannelForPackageFromPrivilegedListener:I = 0x5f

.field static final greylist-max-o TRANSACTION_createNotificationChannelGroups:I = 0x20

.field static final greylist-max-o TRANSACTION_createNotificationChannels:I = 0x21

.field static final greylist-max-o TRANSACTION_createNotificationChannelsForPackage:I = 0x22

.field static final greylist-max-o TRANSACTION_deleteNotificationChannel:I = 0x31

.field static final greylist-max-o TRANSACTION_deleteNotificationChannelGroup:I = 0x37

.field static final blacklist TRANSACTION_deleteNotificationHistoryItem:I = 0x41

.field static final blacklist TRANSACTION_disallowAssistantAdjustment:I = 0x19

.field static final greylist-max-r TRANSACTION_enqueueNotificationWithTag:I = 0x7

.field static final blacklist TRANSACTION_enqueueTextToast:I = 0x3

.field static final greylist-max-o TRANSACTION_enqueueToast:I = 0x4

.field static final greylist-max-o TRANSACTION_finishToken:I = 0x6

.field static final greylist-max-o TRANSACTION_getActiveNotifications:I = 0x44

.field static final greylist-max-o TRANSACTION_getActiveNotificationsFromListener:I = 0x55

.field static final blacklist TRANSACTION_getActiveNotificationsWithAttribution:I = 0x45

.field static final blacklist TRANSACTION_getAdjustmentDeniedPackages:I = 0xa8

.field static final blacklist TRANSACTION_getAllowedAdjustmentKeyTypes:I = 0xa6

.field static final blacklist TRANSACTION_getAllowedAssistantAdjustments:I = 0x17

.field static final blacklist TRANSACTION_getAllowedNotificationAssistant:I = 0x77

.field static final blacklist TRANSACTION_getAllowedNotificationAssistantForUser:I = 0x76

.field static final greylist-max-o TRANSACTION_getAppActiveNotifications:I = 0x93

.field static final greylist-max-o TRANSACTION_getAutomaticZenRule:I = 0x87

.field static final blacklist TRANSACTION_getAutomaticZenRuleState:I = 0x8e

.field static final blacklist TRANSACTION_getAutomaticZenRules:I = 0x88

.field static final greylist-max-o TRANSACTION_getBackupPayload:I = 0x91

.field static final greylist-max-o TRANSACTION_getBlockedChannelCount:I = 0x36

.field static final blacklist TRANSACTION_getBubblePreferenceForPackage:I = 0x1f

.field static final blacklist TRANSACTION_getConsolidatedNotificationPolicy:I = 0x7d

.field static final blacklist TRANSACTION_getConversationNotificationChannel:I = 0x2e

.field static final blacklist TRANSACTION_getConversations:I = 0x23

.field static final blacklist TRANSACTION_getConversationsForPackage:I = 0x24

.field static final blacklist TRANSACTION_getDefaultNotificationAssistant:I = 0x78

.field static final blacklist TRANSACTION_getDefaultZenPolicy:I = 0x86

.field static final greylist-max-o TRANSACTION_getDeletedChannelCount:I = 0x35

.field static final greylist-max-o TRANSACTION_getEffectsSuppressor:I = 0x69

.field static final greylist-max-o TRANSACTION_getEnabledNotificationListenerPackages:I = 0x74

.field static final greylist-max-o TRANSACTION_getEnabledNotificationListeners:I = 0x75

.field static final greylist-max-o TRANSACTION_getHintsFromListener:I = 0x59

.field static final blacklist TRANSACTION_getHintsFromListenerNoToken:I = 0x5a

.field static final greylist-max-o TRANSACTION_getHistoricalNotifications:I = 0x46

.field static final blacklist TRANSACTION_getHistoricalNotificationsWithAttribution:I = 0x47

.field static final greylist-max-o TRANSACTION_getInterruptionFilterFromListener:I = 0x5c

.field static final blacklist TRANSACTION_getListenerFilter:I = 0x9b

.field static final greylist-max-o TRANSACTION_getNotificationChannel:I = 0x2d

.field static final greylist-max-o TRANSACTION_getNotificationChannelForPackage:I = 0x30

.field static final greylist-max-o TRANSACTION_getNotificationChannelGroup:I = 0x38

.field static final greylist-max-o TRANSACTION_getNotificationChannelGroupForPackage:I = 0x26

.field static final greylist-max-o TRANSACTION_getNotificationChannelGroups:I = 0x39

.field static final greylist-max-o TRANSACTION_getNotificationChannelGroupsForPackage:I = 0x25

.field static final greylist-max-o TRANSACTION_getNotificationChannelGroupsFromPrivilegedListener:I = 0x63

.field static final blacklist TRANSACTION_getNotificationChannelGroupsWithoutChannels:I = 0x3a

.field static final greylist-max-o TRANSACTION_getNotificationChannels:I = 0x32

.field static final blacklist TRANSACTION_getNotificationChannelsBypassingDnd:I = 0x3d

.field static final greylist-max-o TRANSACTION_getNotificationChannelsForPackage:I = 0x33

.field static final greylist-max-o TRANSACTION_getNotificationChannelsFromPrivilegedListener:I = 0x62

.field static final blacklist TRANSACTION_getNotificationDelegate:I = 0x95

.field static final blacklist TRANSACTION_getNotificationHistory:I = 0x48

.field static final greylist-max-o TRANSACTION_getNotificationPolicy:I = 0x81

.field static final greylist-max-o TRANSACTION_getNumNotificationChannelsForPackage:I = 0x34

.field static final greylist-max-o TRANSACTION_getPackageImportance:I = 0x15

.field static final blacklist TRANSACTION_getPackagesBypassingDnd:I = 0x3e

.field static final blacklist TRANSACTION_getPackagesWithAnyChannels:I = 0x3f

.field static final greylist-max-o TRANSACTION_getPopulatedNotificationChannelGroupForPackage:I = 0x27

.field static final blacklist TRANSACTION_getPrivateNotificationsAllowed:I = 0x99

.field static final blacklist TRANSACTION_getRecentBlockedNotificationChannelGroupsForPackage:I = 0x28

.field static final greylist-max-o TRANSACTION_getRuleInstanceCount:I = 0x8d

.field static final greylist-max-o TRANSACTION_getSnoozedNotificationsFromListener:I = 0x56

.field static final blacklist TRANSACTION_getUnsupportedAdjustmentTypes:I = 0xa5

.field static final greylist-max-o TRANSACTION_getZenMode:I = 0x7b

.field static final greylist-max-o TRANSACTION_getZenModeConfig:I = 0x7c

.field static final blacklist TRANSACTION_hasEnabledNotificationListener:I = 0x7a

.field static final blacklist TRANSACTION_hasSentValidBubble:I = 0x10

.field static final blacklist TRANSACTION_hasSentValidMsg:I = 0xc

.field static final blacklist TRANSACTION_hasUserDemotedInvalidMsgApp:I = 0xe

.field static final blacklist TRANSACTION_incrementCounter:I = 0xab

.field static final blacklist TRANSACTION_isAdjustmentSupportedForPackage:I = 0xa9

.field static final blacklist TRANSACTION_isImportanceLocked:I = 0x16

.field static final blacklist TRANSACTION_isInCall:I = 0x9

.field static final blacklist TRANSACTION_isInInvalidMsgState:I = 0xd

.field static final greylist-max-o TRANSACTION_isNotificationAssistantAccessGranted:I = 0x6f

.field static final greylist-max-o TRANSACTION_isNotificationListenerAccessGranted:I = 0x6d

.field static final greylist-max-o TRANSACTION_isNotificationListenerAccessGrantedForUser:I = 0x6e

.field static final greylist-max-o TRANSACTION_isNotificationPolicyAccessGranted:I = 0x80

.field static final greylist-max-o TRANSACTION_isNotificationPolicyAccessGrantedForPackage:I = 0x83

.field static final blacklist TRANSACTION_isPackagePaused:I = 0x40

.field static final blacklist TRANSACTION_isPermissionFixed:I = 0x42

.field static final greylist-max-o TRANSACTION_isSystemConditionProviderEnabled:I = 0x6c

.field static final greylist-max-o TRANSACTION_matchesCallFilter:I = 0x6a

.field static final blacklist TRANSACTION_migrateNotificationFilter:I = 0x9d

.field static final greylist-max-o TRANSACTION_notifyConditions:I = 0x7f

.field static final greylist-max-o TRANSACTION_onlyHasDefaultChannel:I = 0x3b

.field static final blacklist TRANSACTION_pullStats:I = 0x9a

.field static final blacklist TRANSACTION_registerCallNotificationEventListener:I = 0x9f

.field static final greylist-max-o TRANSACTION_registerListener:I = 0x49

.field static final greylist-max-o TRANSACTION_removeAutomaticZenRule:I = 0x8b

.field static final greylist-max-o TRANSACTION_removeAutomaticZenRules:I = 0x8c

.field static final greylist-max-o TRANSACTION_requestBindListener:I = 0x4f

.field static final greylist-max-o TRANSACTION_requestBindProvider:I = 0x52

.field static final greylist-max-o TRANSACTION_requestHintsFromListener:I = 0x58

.field static final greylist-max-o TRANSACTION_requestInterruptionFilterFromListener:I = 0x5b

.field static final greylist-max-o TRANSACTION_requestUnbindListener:I = 0x50

.field static final blacklist TRANSACTION_requestUnbindListenerComponent:I = 0x51

.field static final greylist-max-o TRANSACTION_requestUnbindProvider:I = 0x53

.field static final blacklist TRANSACTION_setAdjustmentSupportedForPackage:I = 0xaa

.field static final blacklist TRANSACTION_setAdjustmentTypeSupportedState:I = 0xa4

.field static final blacklist TRANSACTION_setAssistantAdjustmentKeyTypeState:I = 0xa7

.field static final blacklist TRANSACTION_setAutomaticZenRuleState:I = 0x8f

.field static final blacklist TRANSACTION_setBubblesAllowed:I = 0x1c

.field static final blacklist TRANSACTION_setCanBePromoted:I = 0xa1

.field static final blacklist TRANSACTION_setHideSilentStatusIcons:I = 0x1b

.field static final greylist-max-o TRANSACTION_setInterruptionFilter:I = 0x5e

.field static final blacklist TRANSACTION_setInvalidMsgAppDemoted:I = 0xf

.field static final blacklist TRANSACTION_setListenerFilter:I = 0x9c

.field static final blacklist TRANSACTION_setManualZenRuleDeviceEffects:I = 0x90

.field static final blacklist TRANSACTION_setNASMigrationDoneAndResetDefault:I = 0x79

.field static final greylist-max-o TRANSACTION_setNotificationAssistantAccessGranted:I = 0x71

.field static final greylist-max-o TRANSACTION_setNotificationAssistantAccessGrantedForUser:I = 0x73

.field static final blacklist TRANSACTION_setNotificationDelegate:I = 0x94

.field static final greylist-max-o TRANSACTION_setNotificationListenerAccessGranted:I = 0x70

.field static final greylist-max-o TRANSACTION_setNotificationListenerAccessGrantedForUser:I = 0x72

.field static final greylist-max-o TRANSACTION_setNotificationPolicy:I = 0x82

.field static final greylist-max-o TRANSACTION_setNotificationPolicyAccessGranted:I = 0x84

.field static final greylist-max-o TRANSACTION_setNotificationPolicyAccessGrantedForUser:I = 0x85

.field static final greylist-max-o TRANSACTION_setNotificationsEnabledForPackage:I = 0x11

.field static final greylist-max-o TRANSACTION_setNotificationsEnabledWithImportanceLockForPackage:I = 0x12

.field static final greylist-max-o TRANSACTION_setNotificationsShownFromListener:I = 0x54

.field static final greylist-max-o TRANSACTION_setOnNotificationPostedTrimFromListener:I = 0x5d

.field static final blacklist TRANSACTION_setPrivateNotificationsAllowed:I = 0x98

.field static final greylist-max-o TRANSACTION_setShowBadge:I = 0xa

.field static final blacklist TRANSACTION_setToastRateLimitingEnabled:I = 0x9e

.field static final greylist-max-o TRANSACTION_setZenMode:I = 0x7e

.field static final blacklist TRANSACTION_shouldHideSilentStatusIcons:I = 0x1a

.field static final blacklist TRANSACTION_silenceNotificationSound:I = 0x43

.field static final greylist-max-o TRANSACTION_snoozeNotificationUntilContextFromListener:I = 0x4d

.field static final greylist-max-o TRANSACTION_snoozeNotificationUntilFromListener:I = 0x4e

.field static final blacklist TRANSACTION_unlockAllNotificationChannels:I = 0x2c

.field static final blacklist TRANSACTION_unlockNotificationChannel:I = 0x2b

.field static final blacklist TRANSACTION_unregisterCallNotificationEventListener:I = 0xa0

.field static final greylist-max-o TRANSACTION_unregisterListener:I = 0x4a

.field static final greylist-max-o TRANSACTION_unsnoozeNotificationFromAssistant:I = 0x67

.field static final blacklist TRANSACTION_unsnoozeNotificationFromSystemListener:I = 0x68

.field static final greylist-max-o TRANSACTION_updateAutomaticZenRule:I = 0x8a

.field static final greylist-max-o TRANSACTION_updateNotificationChannelForPackage:I = 0x2a

.field static final greylist-max-o TRANSACTION_updateNotificationChannelFromPrivilegedListener:I = 0x61

.field static final greylist-max-o TRANSACTION_updateNotificationChannelGroupForPackage:I = 0x29

.field static final greylist-max-o TRANSACTION_updateNotificationChannelGroupFromPrivilegedListener:I = 0x60


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 6599
    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    const-string v1, "android.permission.ACCESS_NOTIFICATIONS"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/app/INotificationManager$Stub;->PERMISSIONS_registerCallNotificationEventListener:[Ljava/lang/String;

    .line 6605
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/INotificationManager$Stub;->PERMISSIONS_unregisterCallNotificationEventListener:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 653
    nop

    .line 654
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 653
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/INotificationManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 655
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 643
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 644
    const-string v0, "android.app.INotificationManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/INotificationManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 645
    if-eqz p1, :cond_d

    .line 648
    iput-object p1, p0, Landroid/app/INotificationManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 649
    return-void

    .line 646
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 662
    if-nez p0, :cond_4

    .line 663
    const/4 v0, 0x0

    return-object v0

    .line 665
    :cond_4
    const-string v0, "android.app.INotificationManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 666
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/INotificationManager;

    if-eqz v1, :cond_14

    .line 667
    move-object v1, v0

    check-cast v1, Landroid/app/INotificationManager;

    return-object v1

    .line 669
    :cond_14
    new-instance v1, Landroid/app/INotificationManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/INotificationManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 678
    packed-switch p0, :pswitch_data_256

    .line 1366
    const/4 v0, 0x0

    return-object v0

    .line 1362
    :pswitch_5
    const-string/jumbo v0, "incrementCounter"

    return-object v0

    .line 1358
    :pswitch_9
    const-string/jumbo v0, "setAdjustmentSupportedForPackage"

    return-object v0

    .line 1354
    :pswitch_d
    const-string/jumbo v0, "isAdjustmentSupportedForPackage"

    return-object v0

    .line 1350
    :pswitch_11
    const-string v0, "getAdjustmentDeniedPackages"

    return-object v0

    .line 1346
    :pswitch_14
    const-string/jumbo v0, "setAssistantAdjustmentKeyTypeState"

    return-object v0

    .line 1342
    :pswitch_18
    const-string v0, "getAllowedAdjustmentKeyTypes"

    return-object v0

    .line 1338
    :pswitch_1b
    const-string/jumbo v0, "getUnsupportedAdjustmentTypes"

    return-object v0

    .line 1334
    :pswitch_1f
    const-string/jumbo v0, "setAdjustmentTypeSupportedState"

    return-object v0

    .line 1330
    :pswitch_23
    const-string v0, "canBePromoted"

    return-object v0

    .line 1326
    :pswitch_26
    const-string v0, "appCanBePromoted"

    return-object v0

    .line 1322
    :pswitch_29
    const-string/jumbo v0, "setCanBePromoted"

    return-object v0

    .line 1318
    :pswitch_2d
    const-string/jumbo v0, "unregisterCallNotificationEventListener"

    return-object v0

    .line 1314
    :pswitch_31
    const-string/jumbo v0, "registerCallNotificationEventListener"

    return-object v0

    .line 1310
    :pswitch_35
    const-string/jumbo v0, "setToastRateLimitingEnabled"

    return-object v0

    .line 1306
    :pswitch_39
    const-string/jumbo v0, "migrateNotificationFilter"

    return-object v0

    .line 1302
    :pswitch_3d
    const-string/jumbo v0, "setListenerFilter"

    return-object v0

    .line 1298
    :pswitch_41
    const-string v0, "getListenerFilter"

    return-object v0

    .line 1294
    :pswitch_44
    const-string/jumbo v0, "pullStats"

    return-object v0

    .line 1290
    :pswitch_48
    const-string v0, "getPrivateNotificationsAllowed"

    return-object v0

    .line 1286
    :pswitch_4b
    const-string/jumbo v0, "setPrivateNotificationsAllowed"

    return-object v0

    .line 1282
    :pswitch_4f
    const-string v0, "canUseFullScreenIntent"

    return-object v0

    .line 1278
    :pswitch_52
    const-string v0, "canNotifyAsPackage"

    return-object v0

    .line 1274
    :pswitch_55
    const-string v0, "getNotificationDelegate"

    return-object v0

    .line 1270
    :pswitch_58
    const-string/jumbo v0, "setNotificationDelegate"

    return-object v0

    .line 1266
    :pswitch_5c
    const-string v0, "getAppActiveNotifications"

    return-object v0

    .line 1262
    :pswitch_5f
    const-string v0, "applyRestore"

    return-object v0

    .line 1258
    :pswitch_62
    const-string v0, "getBackupPayload"

    return-object v0

    .line 1254
    :pswitch_65
    const-string/jumbo v0, "setManualZenRuleDeviceEffects"

    return-object v0

    .line 1250
    :pswitch_69
    const-string/jumbo v0, "setAutomaticZenRuleState"

    return-object v0

    .line 1246
    :pswitch_6d
    const-string v0, "getAutomaticZenRuleState"

    return-object v0

    .line 1242
    :pswitch_70
    const-string v0, "getRuleInstanceCount"

    return-object v0

    .line 1238
    :pswitch_73
    const-string/jumbo v0, "removeAutomaticZenRules"

    return-object v0

    .line 1234
    :pswitch_77
    const-string/jumbo v0, "removeAutomaticZenRule"

    return-object v0

    .line 1230
    :pswitch_7b
    const-string/jumbo v0, "updateAutomaticZenRule"

    return-object v0

    .line 1226
    :pswitch_7f
    const-string v0, "addAutomaticZenRule"

    return-object v0

    .line 1222
    :pswitch_82
    const-string v0, "getAutomaticZenRules"

    return-object v0

    .line 1218
    :pswitch_85
    const-string v0, "getAutomaticZenRule"

    return-object v0

    .line 1214
    :pswitch_88
    const-string v0, "getDefaultZenPolicy"

    return-object v0

    .line 1210
    :pswitch_8b
    const-string/jumbo v0, "setNotificationPolicyAccessGrantedForUser"

    return-object v0

    .line 1206
    :pswitch_8f
    const-string/jumbo v0, "setNotificationPolicyAccessGranted"

    return-object v0

    .line 1202
    :pswitch_93
    const-string/jumbo v0, "isNotificationPolicyAccessGrantedForPackage"

    return-object v0

    .line 1198
    :pswitch_97
    const-string/jumbo v0, "setNotificationPolicy"

    return-object v0

    .line 1194
    :pswitch_9b
    const-string v0, "getNotificationPolicy"

    return-object v0

    .line 1190
    :pswitch_9e
    const-string/jumbo v0, "isNotificationPolicyAccessGranted"

    return-object v0

    .line 1186
    :pswitch_a2
    const-string/jumbo v0, "notifyConditions"

    return-object v0

    .line 1182
    :pswitch_a6
    const-string/jumbo v0, "setZenMode"

    return-object v0

    .line 1178
    :pswitch_aa
    const-string v0, "getConsolidatedNotificationPolicy"

    return-object v0

    .line 1174
    :pswitch_ad
    const-string/jumbo v0, "getZenModeConfig"

    return-object v0

    .line 1170
    :pswitch_b1
    const-string/jumbo v0, "getZenMode"

    return-object v0

    .line 1166
    :pswitch_b5
    const-string/jumbo v0, "hasEnabledNotificationListener"

    return-object v0

    .line 1162
    :pswitch_b9
    const-string/jumbo v0, "setNASMigrationDoneAndResetDefault"

    return-object v0

    .line 1158
    :pswitch_bd
    const-string v0, "getDefaultNotificationAssistant"

    return-object v0

    .line 1154
    :pswitch_c0
    const-string v0, "getAllowedNotificationAssistant"

    return-object v0

    .line 1150
    :pswitch_c3
    const-string v0, "getAllowedNotificationAssistantForUser"

    return-object v0

    .line 1146
    :pswitch_c6
    const-string v0, "getEnabledNotificationListeners"

    return-object v0

    .line 1142
    :pswitch_c9
    const-string v0, "getEnabledNotificationListenerPackages"

    return-object v0

    .line 1138
    :pswitch_cc
    const-string/jumbo v0, "setNotificationAssistantAccessGrantedForUser"

    return-object v0

    .line 1134
    :pswitch_d0
    const-string/jumbo v0, "setNotificationListenerAccessGrantedForUser"

    return-object v0

    .line 1130
    :pswitch_d4
    const-string/jumbo v0, "setNotificationAssistantAccessGranted"

    return-object v0

    .line 1126
    :pswitch_d8
    const-string/jumbo v0, "setNotificationListenerAccessGranted"

    return-object v0

    .line 1122
    :pswitch_dc
    const-string/jumbo v0, "isNotificationAssistantAccessGranted"

    return-object v0

    .line 1118
    :pswitch_e0
    const-string/jumbo v0, "isNotificationListenerAccessGrantedForUser"

    return-object v0

    .line 1114
    :pswitch_e4
    const-string/jumbo v0, "isNotificationListenerAccessGranted"

    return-object v0

    .line 1110
    :pswitch_e8
    const-string/jumbo v0, "isSystemConditionProviderEnabled"

    return-object v0

    .line 1106
    :pswitch_ec
    const-string v0, "cleanUpCallersAfter"

    return-object v0

    .line 1102
    :pswitch_ef
    const-string/jumbo v0, "matchesCallFilter"

    return-object v0

    .line 1098
    :pswitch_f3
    const-string v0, "getEffectsSuppressor"

    return-object v0

    .line 1094
    :pswitch_f6
    const-string/jumbo v0, "unsnoozeNotificationFromSystemListener"

    return-object v0

    .line 1090
    :pswitch_fa
    const-string/jumbo v0, "unsnoozeNotificationFromAssistant"

    return-object v0

    .line 1086
    :pswitch_fe
    const-string v0, "applyAdjustmentsFromAssistant"

    return-object v0

    .line 1082
    :pswitch_101
    const-string v0, "applyAdjustmentFromAssistant"

    return-object v0

    .line 1078
    :pswitch_104
    const-string v0, "applyEnqueuedAdjustmentFromAssistant"

    return-object v0

    .line 1074
    :pswitch_107
    const-string v0, "getNotificationChannelGroupsFromPrivilegedListener"

    return-object v0

    .line 1070
    :pswitch_10a
    const-string v0, "getNotificationChannelsFromPrivilegedListener"

    return-object v0

    .line 1066
    :pswitch_10d
    const-string/jumbo v0, "updateNotificationChannelFromPrivilegedListener"

    return-object v0

    .line 1062
    :pswitch_111
    const-string/jumbo v0, "updateNotificationChannelGroupFromPrivilegedListener"

    return-object v0

    .line 1058
    :pswitch_115
    const-string v0, "createConversationNotificationChannelForPackageFromPrivilegedListener"

    return-object v0

    .line 1054
    :pswitch_118
    const-string/jumbo v0, "setInterruptionFilter"

    return-object v0

    .line 1050
    :pswitch_11c
    const-string/jumbo v0, "setOnNotificationPostedTrimFromListener"

    return-object v0

    .line 1046
    :pswitch_120
    const-string v0, "getInterruptionFilterFromListener"

    return-object v0

    .line 1042
    :pswitch_123
    const-string/jumbo v0, "requestInterruptionFilterFromListener"

    return-object v0

    .line 1038
    :pswitch_127
    const-string v0, "getHintsFromListenerNoToken"

    return-object v0

    .line 1034
    :pswitch_12a
    const-string v0, "getHintsFromListener"

    return-object v0

    .line 1030
    :pswitch_12d
    const-string/jumbo v0, "requestHintsFromListener"

    return-object v0

    .line 1026
    :pswitch_131
    const-string v0, "clearRequestedListenerHints"

    return-object v0

    .line 1022
    :pswitch_134
    const-string/jumbo v0, "getSnoozedNotificationsFromListener"

    return-object v0

    .line 1018
    :pswitch_138
    const-string v0, "getActiveNotificationsFromListener"

    return-object v0

    .line 1014
    :pswitch_13b
    const-string/jumbo v0, "setNotificationsShownFromListener"

    return-object v0

    .line 1010
    :pswitch_13f
    const-string/jumbo v0, "requestUnbindProvider"

    return-object v0

    .line 1006
    :pswitch_143
    const-string/jumbo v0, "requestBindProvider"

    return-object v0

    .line 1002
    :pswitch_147
    const-string/jumbo v0, "requestUnbindListenerComponent"

    return-object v0

    .line 998
    :pswitch_14b
    const-string/jumbo v0, "requestUnbindListener"

    return-object v0

    .line 994
    :pswitch_14f
    const-string/jumbo v0, "requestBindListener"

    return-object v0

    .line 990
    :pswitch_153
    const-string/jumbo v0, "snoozeNotificationUntilFromListener"

    return-object v0

    .line 986
    :pswitch_157
    const-string/jumbo v0, "snoozeNotificationUntilContextFromListener"

    return-object v0

    .line 982
    :pswitch_15b
    const-string v0, "cancelNotificationsFromListener"

    return-object v0

    .line 978
    :pswitch_15e
    const-string v0, "cancelNotificationFromListener"

    return-object v0

    .line 974
    :pswitch_161
    const-string/jumbo v0, "unregisterListener"

    return-object v0

    .line 970
    :pswitch_165
    const-string/jumbo v0, "registerListener"

    return-object v0

    .line 966
    :pswitch_169
    const-string v0, "getNotificationHistory"

    return-object v0

    .line 962
    :pswitch_16c
    const-string v0, "getHistoricalNotificationsWithAttribution"

    return-object v0

    .line 958
    :pswitch_16f
    const-string v0, "getHistoricalNotifications"

    return-object v0

    .line 954
    :pswitch_172
    const-string v0, "getActiveNotificationsWithAttribution"

    return-object v0

    .line 950
    :pswitch_175
    const-string v0, "getActiveNotifications"

    return-object v0

    .line 946
    :pswitch_178
    const-string/jumbo v0, "silenceNotificationSound"

    return-object v0

    .line 942
    :pswitch_17c
    const-string/jumbo v0, "isPermissionFixed"

    return-object v0

    .line 938
    :pswitch_180
    const-string v0, "deleteNotificationHistoryItem"

    return-object v0

    .line 934
    :pswitch_183
    const-string/jumbo v0, "isPackagePaused"

    return-object v0

    .line 930
    :pswitch_187
    const-string v0, "getPackagesWithAnyChannels"

    return-object v0

    .line 926
    :pswitch_18a
    const-string v0, "getPackagesBypassingDnd"

    return-object v0

    .line 922
    :pswitch_18d
    const-string v0, "getNotificationChannelsBypassingDnd"

    return-object v0

    .line 918
    :pswitch_190
    const-string v0, "areChannelsBypassingDnd"

    return-object v0

    .line 914
    :pswitch_193
    const-string/jumbo v0, "onlyHasDefaultChannel"

    return-object v0

    .line 910
    :pswitch_197
    const-string v0, "getNotificationChannelGroupsWithoutChannels"

    return-object v0

    .line 906
    :pswitch_19a
    const-string v0, "getNotificationChannelGroups"

    return-object v0

    .line 902
    :pswitch_19d
    const-string v0, "getNotificationChannelGroup"

    return-object v0

    .line 898
    :pswitch_1a0
    const-string v0, "deleteNotificationChannelGroup"

    return-object v0

    .line 894
    :pswitch_1a3
    const-string v0, "getBlockedChannelCount"

    return-object v0

    .line 890
    :pswitch_1a6
    const-string v0, "getDeletedChannelCount"

    return-object v0

    .line 886
    :pswitch_1a9
    const-string v0, "getNumNotificationChannelsForPackage"

    return-object v0

    .line 882
    :pswitch_1ac
    const-string v0, "getNotificationChannelsForPackage"

    return-object v0

    .line 878
    :pswitch_1af
    const-string v0, "getNotificationChannels"

    return-object v0

    .line 874
    :pswitch_1b2
    const-string v0, "deleteNotificationChannel"

    return-object v0

    .line 870
    :pswitch_1b5
    const-string v0, "getNotificationChannelForPackage"

    return-object v0

    .line 866
    :pswitch_1b8
    const-string v0, "createConversationNotificationChannelForPackage"

    return-object v0

    .line 862
    :pswitch_1bb
    const-string v0, "getConversationNotificationChannel"

    return-object v0

    .line 858
    :pswitch_1be
    const-string v0, "getNotificationChannel"

    return-object v0

    .line 854
    :pswitch_1c1
    const-string/jumbo v0, "unlockAllNotificationChannels"

    return-object v0

    .line 850
    :pswitch_1c5
    const-string/jumbo v0, "unlockNotificationChannel"

    return-object v0

    .line 846
    :pswitch_1c9
    const-string/jumbo v0, "updateNotificationChannelForPackage"

    return-object v0

    .line 842
    :pswitch_1cd
    const-string/jumbo v0, "updateNotificationChannelGroupForPackage"

    return-object v0

    .line 838
    :pswitch_1d1
    const-string v0, "getRecentBlockedNotificationChannelGroupsForPackage"

    return-object v0

    .line 834
    :pswitch_1d4
    const-string v0, "getPopulatedNotificationChannelGroupForPackage"

    return-object v0

    .line 830
    :pswitch_1d7
    const-string v0, "getNotificationChannelGroupForPackage"

    return-object v0

    .line 826
    :pswitch_1da
    const-string v0, "getNotificationChannelGroupsForPackage"

    return-object v0

    .line 822
    :pswitch_1dd
    const-string v0, "getConversationsForPackage"

    return-object v0

    .line 818
    :pswitch_1e0
    const-string v0, "getConversations"

    return-object v0

    .line 814
    :pswitch_1e3
    const-string v0, "createNotificationChannelsForPackage"

    return-object v0

    .line 810
    :pswitch_1e6
    const-string v0, "createNotificationChannels"

    return-object v0

    .line 806
    :pswitch_1e9
    const-string v0, "createNotificationChannelGroups"

    return-object v0

    .line 802
    :pswitch_1ec
    const-string v0, "getBubblePreferenceForPackage"

    return-object v0

    .line 798
    :pswitch_1ef
    const-string v0, "areBubblesEnabled"

    return-object v0

    .line 794
    :pswitch_1f2
    const-string v0, "areBubblesAllowed"

    return-object v0

    .line 790
    :pswitch_1f5
    const-string/jumbo v0, "setBubblesAllowed"

    return-object v0

    .line 786
    :pswitch_1f9
    const-string/jumbo v0, "setHideSilentStatusIcons"

    return-object v0

    .line 782
    :pswitch_1fd
    const-string/jumbo v0, "shouldHideSilentStatusIcons"

    return-object v0

    .line 778
    :pswitch_201
    const-string v0, "disallowAssistantAdjustment"

    return-object v0

    .line 774
    :pswitch_204
    const-string v0, "allowAssistantAdjustment"

    return-object v0

    .line 770
    :pswitch_207
    const-string v0, "getAllowedAssistantAdjustments"

    return-object v0

    .line 766
    :pswitch_20a
    const-string/jumbo v0, "isImportanceLocked"

    return-object v0

    .line 762
    :pswitch_20e
    const-string v0, "getPackageImportance"

    return-object v0

    .line 758
    :pswitch_211
    const-string v0, "areNotificationsEnabled"

    return-object v0

    .line 754
    :pswitch_214
    const-string v0, "areNotificationsEnabledForPackage"

    return-object v0

    .line 750
    :pswitch_217
    const-string/jumbo v0, "setNotificationsEnabledWithImportanceLockForPackage"

    return-object v0

    .line 746
    :pswitch_21b
    const-string/jumbo v0, "setNotificationsEnabledForPackage"

    return-object v0

    .line 742
    :pswitch_21f
    const-string/jumbo v0, "hasSentValidBubble"

    return-object v0

    .line 738
    :pswitch_223
    const-string/jumbo v0, "setInvalidMsgAppDemoted"

    return-object v0

    .line 734
    :pswitch_227
    const-string/jumbo v0, "hasUserDemotedInvalidMsgApp"

    return-object v0

    .line 730
    :pswitch_22b
    const-string/jumbo v0, "isInInvalidMsgState"

    return-object v0

    .line 726
    :pswitch_22f
    const-string/jumbo v0, "hasSentValidMsg"

    return-object v0

    .line 722
    :pswitch_233
    const-string v0, "canShowBadge"

    return-object v0

    .line 718
    :pswitch_236
    const-string/jumbo v0, "setShowBadge"

    return-object v0

    .line 714
    :pswitch_23a
    const-string/jumbo v0, "isInCall"

    return-object v0

    .line 710
    :pswitch_23e
    const-string v0, "cancelNotificationWithTag"

    return-object v0

    .line 706
    :pswitch_241
    const-string v0, "enqueueNotificationWithTag"

    return-object v0

    .line 702
    :pswitch_244
    const-string v0, "finishToken"

    return-object v0

    .line 698
    :pswitch_247
    const-string v0, "cancelToast"

    return-object v0

    .line 694
    :pswitch_24a
    const-string v0, "enqueueToast"

    return-object v0

    .line 690
    :pswitch_24d
    const-string v0, "enqueueTextToast"

    return-object v0

    .line 686
    :pswitch_250
    const-string v0, "clearData"

    return-object v0

    .line 682
    :pswitch_253
    const-string v0, "cancelAllNotifications"

    return-object v0

    :pswitch_data_256
    .packed-switch 0x1
        :pswitch_253
        :pswitch_250
        :pswitch_24d
        :pswitch_24a
        :pswitch_247
        :pswitch_244
        :pswitch_241
        :pswitch_23e
        :pswitch_23a
        :pswitch_236
        :pswitch_233
        :pswitch_22f
        :pswitch_22b
        :pswitch_227
        :pswitch_223
        :pswitch_21f
        :pswitch_21b
        :pswitch_217
        :pswitch_214
        :pswitch_211
        :pswitch_20e
        :pswitch_20a
        :pswitch_207
        :pswitch_204
        :pswitch_201
        :pswitch_1fd
        :pswitch_1f9
        :pswitch_1f5
        :pswitch_1f2
        :pswitch_1ef
        :pswitch_1ec
        :pswitch_1e9
        :pswitch_1e6
        :pswitch_1e3
        :pswitch_1e0
        :pswitch_1dd
        :pswitch_1da
        :pswitch_1d7
        :pswitch_1d4
        :pswitch_1d1
        :pswitch_1cd
        :pswitch_1c9
        :pswitch_1c5
        :pswitch_1c1
        :pswitch_1be
        :pswitch_1bb
        :pswitch_1b8
        :pswitch_1b5
        :pswitch_1b2
        :pswitch_1af
        :pswitch_1ac
        :pswitch_1a9
        :pswitch_1a6
        :pswitch_1a3
        :pswitch_1a0
        :pswitch_19d
        :pswitch_19a
        :pswitch_197
        :pswitch_193
        :pswitch_190
        :pswitch_18d
        :pswitch_18a
        :pswitch_187
        :pswitch_183
        :pswitch_180
        :pswitch_17c
        :pswitch_178
        :pswitch_175
        :pswitch_172
        :pswitch_16f
        :pswitch_16c
        :pswitch_169
        :pswitch_165
        :pswitch_161
        :pswitch_15e
        :pswitch_15b
        :pswitch_157
        :pswitch_153
        :pswitch_14f
        :pswitch_14b
        :pswitch_147
        :pswitch_143
        :pswitch_13f
        :pswitch_13b
        :pswitch_138
        :pswitch_134
        :pswitch_131
        :pswitch_12d
        :pswitch_12a
        :pswitch_127
        :pswitch_123
        :pswitch_120
        :pswitch_11c
        :pswitch_118
        :pswitch_115
        :pswitch_111
        :pswitch_10d
        :pswitch_10a
        :pswitch_107
        :pswitch_104
        :pswitch_101
        :pswitch_fe
        :pswitch_fa
        :pswitch_f6
        :pswitch_f3
        :pswitch_ef
        :pswitch_ec
        :pswitch_e8
        :pswitch_e4
        :pswitch_e0
        :pswitch_dc
        :pswitch_d8
        :pswitch_d4
        :pswitch_d0
        :pswitch_cc
        :pswitch_c9
        :pswitch_c6
        :pswitch_c3
        :pswitch_c0
        :pswitch_bd
        :pswitch_b9
        :pswitch_b5
        :pswitch_b1
        :pswitch_ad
        :pswitch_aa
        :pswitch_a6
        :pswitch_a2
        :pswitch_9e
        :pswitch_9b
        :pswitch_97
        :pswitch_93
        :pswitch_8f
        :pswitch_8b
        :pswitch_88
        :pswitch_85
        :pswitch_82
        :pswitch_7f
        :pswitch_7b
        :pswitch_77
        :pswitch_73
        :pswitch_70
        :pswitch_6d
        :pswitch_69
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_58
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4b
        :pswitch_48
        :pswitch_44
        :pswitch_41
        :pswitch_3d
        :pswitch_39
        :pswitch_35
        :pswitch_31
        :pswitch_2d
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_1f
        :pswitch_1b
        :pswitch_18
        :pswitch_14
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 673
    return-object p0
.end method

.method protected blacklist getActiveNotificationsWithAttribution_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6495
    iget-object v0, p0, Landroid/app/INotificationManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/app/INotificationManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/INotificationManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_NOTIFICATIONS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 6496
    return-void
.end method

.method protected blacklist getHistoricalNotificationsWithAttribution_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6501
    iget-object v0, p0, Landroid/app/INotificationManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/app/INotificationManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/INotificationManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_NOTIFICATIONS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 6502
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 6624
    const/16 v0, 0xaa

    return v0
.end method

.method protected blacklist getNotificationHistory_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6506
    iget-object v0, p0, Landroid/app/INotificationManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/app/INotificationManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/INotificationManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_NOTIFICATIONS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 6507
    return-void
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 1373
    invoke-static {p1}, Landroid/app/INotificationManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 18
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1377
    move-object v8, p2

    move-object/from16 v9, p3

    const-string v10, "android.app.INotificationManager"

    .line 1378
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt p1, v11, :cond_10

    const v1, 0xffffff

    if-gt p1, v1, :cond_10

    .line 1379
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1381
    :cond_10
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_19

    .line 1382
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1383
    return v11

    .line 1385
    :cond_19
    packed-switch p1, :pswitch_data_f7e

    .line 3364
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 3356
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3357
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3358
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->incrementCounter(Ljava/lang/String;)V

    .line 3359
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3360
    goto/16 :goto_f7c

    .line 3343
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3345
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3347
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3348
    .local v3, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3349
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->setAdjustmentSupportedForPackage(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3350
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3351
    goto/16 :goto_f7c

    .line 3331
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Z
    :pswitch_47
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3333
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3334
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3335
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->isAdjustmentSupportedForPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 3336
    .local v3, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3337
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3338
    goto/16 :goto_f7c

    .line 3321
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_5e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3322
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3323
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->getAdjustmentDeniedPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3324
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3325
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 3326
    goto/16 :goto_f7c

    .line 3310
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":[Ljava/lang/String;
    :pswitch_71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3312
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3313
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3314
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->setAssistantAdjustmentKeyTypeState(IZ)V

    .line 3315
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3316
    goto/16 :goto_f7c

    .line 3302
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    :pswitch_84
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub;->getAllowedAdjustmentKeyTypes()[I

    move-result-object v1

    .line 3303
    .local v1, "_result":[I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3304
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3305
    goto/16 :goto_f7c

    .line 3295
    .end local v1    # "_result":[I
    :pswitch_90
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub;->getUnsupportedAdjustmentTypes()Ljava/util/List;

    move-result-object v1

    .line 3296
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3297
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 3298
    goto/16 :goto_f7c

    .line 3283
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_9c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 3285
    .local v1, "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3287
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3288
    .local v3, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3289
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->setAdjustmentTypeSupportedState(Landroid/service/notification/INotificationListener;Ljava/lang/String;Z)V

    .line 3290
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3291
    goto/16 :goto_f7c

    .line 3273
    .end local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Z
    :pswitch_b7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3274
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3275
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->canBePromoted(Ljava/lang/String;)Z

    move-result v2

    .line 3276
    .local v2, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3277
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3278
    goto/16 :goto_f7c

    .line 3261
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_ca
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3263
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3264
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3265
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->appCanBePromoted(Ljava/lang/String;I)Z

    move-result v3

    .line 3266
    .local v3, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3267
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3268
    goto/16 :goto_f7c

    .line 3246
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_e1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3248
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3250
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3252
    .local v3, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 3253
    .local v4, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3254
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/INotificationManager$Stub;->setCanBePromoted(Ljava/lang/String;IZZ)V

    .line 3255
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3256
    goto/16 :goto_f7c

    .line 3233
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Z
    :pswitch_fc
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3235
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 3237
    .local v2, "_arg1":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/ICallNotificationEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ICallNotificationEventCallback;

    move-result-object v3

    .line 3238
    .local v3, "_arg2":Landroid/app/ICallNotificationEventCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3239
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->unregisterCallNotificationEventListener(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/ICallNotificationEventCallback;)V

    .line 3240
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3241
    goto/16 :goto_f7c

    .line 3220
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/UserHandle;
    .end local v3    # "_arg2":Landroid/app/ICallNotificationEventCallback;
    :pswitch_11b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3222
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 3224
    .restart local v2    # "_arg1":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/ICallNotificationEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ICallNotificationEventCallback;

    move-result-object v3

    .line 3225
    .restart local v3    # "_arg2":Landroid/app/ICallNotificationEventCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3226
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->registerCallNotificationEventListener(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/ICallNotificationEventCallback;)V

    .line 3227
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3228
    goto/16 :goto_f7c

    .line 3211
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/UserHandle;
    .end local v3    # "_arg2":Landroid/app/ICallNotificationEventCallback;
    :pswitch_13a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3212
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3213
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->setToastRateLimitingEnabled(Z)V

    .line 3214
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3215
    goto/16 :goto_f7c

    .line 3198
    .end local v1    # "_arg0":Z
    :pswitch_149
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 3200
    .local v1, "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3202
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 3203
    .local v3, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3204
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->migrateNotificationFilter(Landroid/service/notification/INotificationListener;ILjava/util/List;)V

    .line 3205
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3206
    goto/16 :goto_f7c

    .line 3185
    .end local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_164
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 3187
    .local v1, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3189
    .restart local v2    # "_arg1":I
    sget-object v3, Landroid/service/notification/NotificationListenerFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/NotificationListenerFilter;

    .line 3190
    .local v3, "_arg2":Landroid/service/notification/NotificationListenerFilter;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3191
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->setListenerFilter(Landroid/content/ComponentName;ILandroid/service/notification/NotificationListenerFilter;)V

    .line 3192
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3193
    goto/16 :goto_f7c

    .line 3173
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/service/notification/NotificationListenerFilter;
    :pswitch_183
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 3175
    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3176
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3177
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->getListenerFilter(Landroid/content/ComponentName;I)Landroid/service/notification/NotificationListenerFilter;

    move-result-object v3

    .line 3178
    .local v3, "_result":Landroid/service/notification/NotificationListenerFilter;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3179
    invoke-virtual {v9, v3, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3180
    goto/16 :goto_f7c

    .line 3156
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/service/notification/NotificationListenerFilter;
    :pswitch_19e
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 3158
    .local v1, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3160
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 3162
    .local v4, "_arg2":Z
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3163
    .local v5, "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3164
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/INotificationManager$Stub;->pullStats(JIZLjava/util/List;)J

    move-result-wide v6

    .line 3165
    .local v6, "_result":J
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3166
    invoke-virtual {v9, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 3167
    invoke-virtual {v9, v5, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3168
    goto/16 :goto_f7c

    .line 3148
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    .end local v5    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    .end local v6    # "_result":J
    :pswitch_1c2
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub;->getPrivateNotificationsAllowed()Z

    move-result v1

    .line 3149
    .local v1, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3150
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3151
    goto/16 :goto_f7c

    .line 3140
    .end local v1    # "_result":Z
    :pswitch_1ce
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3141
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3142
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->setPrivateNotificationsAllowed(Z)V

    .line 3143
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3144
    goto/16 :goto_f7c

    .line 3130
    .end local v1    # "_arg0":Z
    :pswitch_1dd
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 3131
    .local v1, "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3132
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->canUseFullScreenIntent(Landroid/content/AttributionSource;)Z

    move-result v2

    .line 3133
    .local v2, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3134
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3135
    goto/16 :goto_f7c

    .line 3116
    .end local v1    # "_arg0":Landroid/content/AttributionSource;
    .end local v2    # "_result":Z
    :pswitch_1f4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3118
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3120
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3121
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3122
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->canNotifyAsPackage(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    .line 3123
    .local v4, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3124
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3125
    goto/16 :goto_f7c

    .line 3106
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Z
    :pswitch_20f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3107
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3108
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->getNotificationDelegate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3109
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3110
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3111
    goto/16 :goto_f7c

    .line 3095
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_222
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3097
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3098
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3099
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->setNotificationDelegate(Ljava/lang/String;Ljava/lang/String;)V

    .line 3100
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3101
    goto/16 :goto_f7c

    .line 3083
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_235
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3085
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3086
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3087
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->getAppActiveNotifications(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 3088
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3089
    invoke-virtual {v9, v3, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3090
    goto/16 :goto_f7c

    .line 3072
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_24c
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 3074
    .local v1, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3075
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3076
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->applyRestore([BI)V

    .line 3077
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3078
    goto/16 :goto_f7c

    .line 3062
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":I
    :pswitch_25f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3063
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3064
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->getBackupPayload(I)[B

    move-result-object v2

    .line 3065
    .local v2, "_result":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3066
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3067
    goto/16 :goto_f7c

    .line 3053
    .end local v1    # "_arg0":I
    .end local v2    # "_result":[B
    :pswitch_272
    sget-object v1, Landroid/service/notification/ZenDeviceEffects;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenDeviceEffects;

    .line 3054
    .local v1, "_arg0":Landroid/service/notification/ZenDeviceEffects;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3055
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->setManualZenRuleDeviceEffects(Landroid/service/notification/ZenDeviceEffects;)V

    .line 3056
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3057
    goto/16 :goto_f7c

    .line 3042
    .end local v1    # "_arg0":Landroid/service/notification/ZenDeviceEffects;
    :pswitch_285
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3044
    .local v1, "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/service/notification/Condition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/Condition;

    .line 3045
    .local v2, "_arg1":Landroid/service/notification/Condition;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3046
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->setAutomaticZenRuleState(Ljava/lang/String;Landroid/service/notification/Condition;)V

    .line 3047
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3048
    goto/16 :goto_f7c

    .line 3032
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/service/notification/Condition;
    :pswitch_29c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3033
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3034
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->getAutomaticZenRuleState(Ljava/lang/String;)I

    move-result v2

    .line 3035
    .local v2, "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3036
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3037
    goto/16 :goto_f7c

    .line 3022
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_2af
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 3023
    .local v1, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3024
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->getRuleInstanceCount(Landroid/content/ComponentName;)I

    move-result v2

    .line 3025
    .restart local v2    # "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3026
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3027
    goto/16 :goto_f7c

    .line 3010
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_result":I
    :pswitch_2c6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3012
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3013
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3014
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->removeAutomaticZenRules(Ljava/lang/String;Z)Z

    move-result v3

    .line 3015
    .local v3, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3016
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3017
    goto/16 :goto_f7c

    .line 2998
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v3    # "_result":Z
    :pswitch_2dd
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3000
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3001
    .restart local v2    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3002
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->removeAutomaticZenRule(Ljava/lang/String;Z)Z

    move-result v3

    .line 3003
    .restart local v3    # "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3004
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3005
    goto/16 :goto_f7c

    .line 2984
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v3    # "_result":Z
    :pswitch_2f4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2986
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/app/AutomaticZenRule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AutomaticZenRule;

    .line 2988
    .local v2, "_arg1":Landroid/app/AutomaticZenRule;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2989
    .local v3, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2990
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;Z)Z

    move-result v4

    .line 2991
    .restart local v4    # "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2992
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2993
    goto/16 :goto_f7c

    .line 2970
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/app/AutomaticZenRule;
    .end local v3    # "_arg2":Z
    .end local v4    # "_result":Z
    :pswitch_313
    sget-object v1, Landroid/app/AutomaticZenRule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AutomaticZenRule;

    .line 2972
    .local v1, "_arg0":Landroid/app/AutomaticZenRule;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2974
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2975
    .restart local v3    # "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2976
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->addAutomaticZenRule(Landroid/app/AutomaticZenRule;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 2977
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2978
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2979
    goto/16 :goto_f7c

    .line 2962
    .end local v1    # "_arg0":Landroid/app/AutomaticZenRule;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Z
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_332
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub;->getAutomaticZenRules()Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 2963
    .local v1, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2964
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2965
    goto/16 :goto_f7c

    .line 2953
    .end local v1    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_33e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2954
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2955
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;

    move-result-object v2

    .line 2956
    .local v2, "_result":Landroid/app/AutomaticZenRule;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2957
    invoke-virtual {v9, v2, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2958
    goto/16 :goto_f7c

    .line 2945
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Landroid/app/AutomaticZenRule;
    :pswitch_351
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub;->getDefaultZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v1

    .line 2946
    .local v1, "_result":Landroid/service/notification/ZenPolicy;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2947
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2948
    goto/16 :goto_f7c

    .line 2933
    .end local v1    # "_result":Landroid/service/notification/ZenPolicy;
    :pswitch_35d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2935
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2937
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2938
    .restart local v3    # "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2939
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->setNotificationPolicyAccessGrantedForUser(Ljava/lang/String;IZ)V

    .line 2940
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2941
    goto/16 :goto_f7c

    .line 2922
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    :pswitch_374
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2924
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2925
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2926
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V

    .line 2927
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2928
    goto/16 :goto_f7c

    .line 2912
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    :pswitch_387
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2913
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2914
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    move-result v2

    .line 2915
    .local v2, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2916
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2917
    goto/16 :goto_f7c

    .line 2899
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_39a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2901
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/app/NotificationManager$Policy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager$Policy;

    .line 2903
    .local v2, "_arg1":Landroid/app/NotificationManager$Policy;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2904
    .restart local v3    # "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2905
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->setNotificationPolicy(Ljava/lang/String;Landroid/app/NotificationManager$Policy;Z)V

    .line 2906
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2907
    goto/16 :goto_f7c

    .line 2889
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/app/NotificationManager$Policy;
    .end local v3    # "_arg2":Z
    :pswitch_3b5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2890
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2891
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->getNotificationPolicy(Ljava/lang/String;)Landroid/app/NotificationManager$Policy;

    move-result-object v2

    .line 2892
    .local v2, "_result":Landroid/app/NotificationManager$Policy;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2893
    invoke-virtual {v9, v2, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2894
    goto/16 :goto_f7c

    .line 2879
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Landroid/app/NotificationManager$Policy;
    :pswitch_3c8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2880
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2881
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->isNotificationPolicyAccessGranted(Ljava/lang/String;)Z

    move-result v2

    .line 2882
    .local v2, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2883
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2884
    goto/16 :goto_f7c

    .line 2867
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_3db
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2869
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/notification/IConditionProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IConditionProvider;

    move-result-object v2

    .line 2871
    .local v2, "_arg1":Landroid/service/notification/IConditionProvider;
    sget-object v3, Landroid/service/notification/Condition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/service/notification/Condition;

    .line 2872
    .local v3, "_arg2":[Landroid/service/notification/Condition;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2873
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->notifyConditions(Ljava/lang/String;Landroid/service/notification/IConditionProvider;[Landroid/service/notification/Condition;)V

    .line 2874
    goto/16 :goto_f7c

    .line 2853
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/service/notification/IConditionProvider;
    .end local v3    # "_arg2":[Landroid/service/notification/Condition;
    :pswitch_3f7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2855
    .local v1, "_arg0":I
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 2857
    .local v2, "_arg1":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2859
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 2860
    .local v4, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2861
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/INotificationManager$Stub;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;Z)V

    .line 2862
    goto/16 :goto_f7c

    .line 2845
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/net/Uri;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Z
    :pswitch_413
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub;->getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v1

    .line 2846
    .local v1, "_result":Landroid/app/NotificationManager$Policy;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2847
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2848
    goto/16 :goto_f7c

    .line 2838
    .end local v1    # "_result":Landroid/app/NotificationManager$Policy;
    :pswitch_41f
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 2839
    .local v1, "_result":Landroid/service/notification/ZenModeConfig;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2840
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2841
    goto/16 :goto_f7c

    .line 2831
    .end local v1    # "_result":Landroid/service/notification/ZenModeConfig;
    :pswitch_42b
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub;->getZenMode()I

    move-result v1

    .line 2832
    .local v1, "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2833
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2834
    goto/16 :goto_f7c

    .line 2820
    .end local v1    # "_result":I
    :pswitch_437
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2822
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2823
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2824
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->hasEnabledNotificationListener(Ljava/lang/String;I)Z

    move-result v3

    .line 2825
    .local v3, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2826
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2827
    goto/16 :goto_f7c

    .line 2809
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_44e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2811
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2812
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2813
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->setNASMigrationDoneAndResetDefault(IZ)V

    .line 2814
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2815
    goto/16 :goto_f7c

    .line 2801
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    :pswitch_461
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub;->getDefaultNotificationAssistant()Landroid/content/ComponentName;

    move-result-object v1

    .line 2802
    .local v1, "_result":Landroid/content/ComponentName;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2803
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2804
    goto/16 :goto_f7c

    .line 2794
    .end local v1    # "_result":Landroid/content/ComponentName;
    :pswitch_46d
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub;->getAllowedNotificationAssistant()Landroid/content/ComponentName;

    move-result-object v1

    .line 2795
    .restart local v1    # "_result":Landroid/content/ComponentName;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2796
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2797
    goto/16 :goto_f7c

    .line 2785
    .end local v1    # "_result":Landroid/content/ComponentName;
    :pswitch_479
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2786
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2787
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->getAllowedNotificationAssistantForUser(I)Landroid/content/ComponentName;

    move-result-object v2

    .line 2788
    .local v2, "_result":Landroid/content/ComponentName;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2789
    invoke-virtual {v9, v2, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2790
    goto/16 :goto_f7c

    .line 2775
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/content/ComponentName;
    :pswitch_48c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2776
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2777
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->getEnabledNotificationListeners(I)Ljava/util/List;

    move-result-object v2

    .line 2778
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2779
    invoke-virtual {v9, v2, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 2780
    goto/16 :goto_f7c

    .line 2767
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :pswitch_49f
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub;->getEnabledNotificationListenerPackages()Ljava/util/List;

    move-result-object v1

    .line 2768
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2769
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2770
    goto/16 :goto_f7c

    .line 2755
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_4ab
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 2757
    .local v1, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2759
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2760
    .local v3, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2761
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->setNotificationAssistantAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    .line 2762
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2763
    goto/16 :goto_f7c

    .line 2740
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    :pswitch_4c6
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 2742
    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2744
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2746
    .restart local v3    # "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 2747
    .restart local v4    # "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2748
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/INotificationManager$Stub;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZZ)V

    .line 2749
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2750
    goto/16 :goto_f7c

    .line 2729
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Z
    :pswitch_4e5
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 2731
    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2732
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2733
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->setNotificationAssistantAccessGranted(Landroid/content/ComponentName;Z)V

    .line 2734
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2735
    goto/16 :goto_f7c

    .line 2716
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":Z
    :pswitch_4fc
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 2718
    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2720
    .restart local v2    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2721
    .restart local v3    # "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2722
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->setNotificationListenerAccessGranted(Landroid/content/ComponentName;ZZ)V

    .line 2723
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2724
    goto/16 :goto_f7c

    .line 2706
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Z
    :pswitch_517
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 2707
    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2708
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->isNotificationAssistantAccessGranted(Landroid/content/ComponentName;)Z

    move-result v2

    .line 2709
    .local v2, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2710
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2711
    goto/16 :goto_f7c

    .line 2694
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_result":Z
    :pswitch_52e
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 2696
    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2697
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2698
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->isNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;I)Z

    move-result v3

    .line 2699
    .local v3, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2700
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2701
    goto/16 :goto_f7c

    .line 2684
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_549
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 2685
    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2686
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->isNotificationListenerAccessGranted(Landroid/content/ComponentName;)Z

    move-result v2

    .line 2687
    .local v2, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2688
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2689
    goto/16 :goto_f7c

    .line 2674
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_result":Z
    :pswitch_560
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2675
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2676
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->isSystemConditionProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    .line 2677
    .restart local v2    # "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2678
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2679
    goto/16 :goto_f7c

    .line 2665
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_573
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 2666
    .local v1, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2667
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->cleanUpCallersAfter(J)V

    .line 2668
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2669
    goto/16 :goto_f7c

    .line 2655
    .end local v1    # "_arg0":J
    :pswitch_582
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 2656
    .local v1, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2657
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->matchesCallFilter(Landroid/os/Bundle;)Z

    move-result v2

    .line 2658
    .restart local v2    # "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2659
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2660
    goto/16 :goto_f7c

    .line 2647
    .end local v1    # "_arg0":Landroid/os/Bundle;
    .end local v2    # "_result":Z
    :pswitch_599
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v1

    .line 2648
    .local v1, "_result":Landroid/content/ComponentName;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2649
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2650
    goto/16 :goto_f7c

    .line 2637
    .end local v1    # "_result":Landroid/content/ComponentName;
    :pswitch_5a5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2639
    .local v1, "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2640
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2641
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->unsnoozeNotificationFromSystemListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;)V

    .line 2642
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2643
    goto/16 :goto_f7c

    .line 2626
    .end local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_5bc
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2628
    .restart local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2629
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2630
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->unsnoozeNotificationFromAssistant(Landroid/service/notification/INotificationListener;Ljava/lang/String;)V

    .line 2631
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2632
    goto/16 :goto_f7c

    .line 2615
    .end local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_5d3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2617
    .restart local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    sget-object v2, Landroid/service/notification/Adjustment;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2618
    .local v2, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/Adjustment;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2619
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->applyAdjustmentsFromAssistant(Landroid/service/notification/INotificationListener;Ljava/util/List;)V

    .line 2620
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2621
    goto/16 :goto_f7c

    .line 2604
    .end local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v2    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/Adjustment;>;"
    :pswitch_5ec
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2606
    .restart local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    sget-object v2, Landroid/service/notification/Adjustment;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/Adjustment;

    .line 2607
    .local v2, "_arg1":Landroid/service/notification/Adjustment;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2608
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->applyAdjustmentFromAssistant(Landroid/service/notification/INotificationListener;Landroid/service/notification/Adjustment;)V

    .line 2609
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2610
    goto/16 :goto_f7c

    .line 2593
    .end local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v2    # "_arg1":Landroid/service/notification/Adjustment;
    :pswitch_607
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2595
    .restart local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    sget-object v2, Landroid/service/notification/Adjustment;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/Adjustment;

    .line 2596
    .restart local v2    # "_arg1":Landroid/service/notification/Adjustment;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2597
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->applyEnqueuedAdjustmentFromAssistant(Landroid/service/notification/INotificationListener;Landroid/service/notification/Adjustment;)V

    .line 2598
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2599
    goto/16 :goto_f7c

    .line 2579
    .end local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v2    # "_arg1":Landroid/service/notification/Adjustment;
    :pswitch_622
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2581
    .restart local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2583
    .local v2, "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 2584
    .local v3, "_arg2":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2585
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->getNotificationChannelGroupsFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 2586
    .local v4, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2587
    invoke-virtual {v9, v4, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2588
    goto/16 :goto_f7c

    .line 2565
    .end local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/UserHandle;
    .end local v4    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_645
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2567
    .restart local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2569
    .restart local v2    # "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 2570
    .restart local v3    # "_arg2":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2571
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->getNotificationChannelsFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 2572
    .restart local v4    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2573
    invoke-virtual {v9, v4, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2574
    goto/16 :goto_f7c

    .line 2550
    .end local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/UserHandle;
    .end local v4    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_668
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2552
    .restart local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2554
    .restart local v2    # "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 2556
    .restart local v3    # "_arg2":Landroid/os/UserHandle;
    sget-object v4, Landroid/app/NotificationChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    .line 2557
    .local v4, "_arg3":Landroid/app/NotificationChannel;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2558
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/INotificationManager$Stub;->updateNotificationChannelFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;)V

    .line 2559
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2560
    goto/16 :goto_f7c

    .line 2535
    .end local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/UserHandle;
    .end local v4    # "_arg3":Landroid/app/NotificationChannel;
    :pswitch_68f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2537
    .restart local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2539
    .restart local v2    # "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 2541
    .restart local v3    # "_arg2":Landroid/os/UserHandle;
    sget-object v4, Landroid/app/NotificationChannelGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannelGroup;

    .line 2542
    .local v4, "_arg3":Landroid/app/NotificationChannelGroup;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2543
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/INotificationManager$Stub;->updateNotificationChannelGroupFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;)V

    .line 2544
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2545
    goto/16 :goto_f7c

    .line 2517
    .end local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/UserHandle;
    .end local v4    # "_arg3":Landroid/app/NotificationChannelGroup;
    :pswitch_6b6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2519
    .restart local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2521
    .restart local v2    # "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 2523
    .restart local v3    # "_arg2":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2525
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2526
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2527
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/INotificationManager$Stub;->createConversationNotificationChannelForPackageFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v6

    .line 2528
    .local v6, "_result":Landroid/app/NotificationChannel;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2529
    invoke-virtual {v9, v6, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2530
    goto/16 :goto_f7c

    .line 2504
    .end local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/UserHandle;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_result":Landroid/app/NotificationChannel;
    :pswitch_6e2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2506
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2508
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2509
    .local v3, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2510
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->setInterruptionFilter(Ljava/lang/String;IZ)V

    .line 2511
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2512
    goto/16 :goto_f7c

    .line 2493
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    :pswitch_6f9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2495
    .local v1, "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2496
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2497
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->setOnNotificationPostedTrimFromListener(Landroid/service/notification/INotificationListener;I)V

    .line 2498
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2499
    goto/16 :goto_f7c

    .line 2483
    .end local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v2    # "_arg1":I
    :pswitch_710
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2484
    .restart local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2485
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->getInterruptionFilterFromListener(Landroid/service/notification/INotificationListener;)I

    move-result v2

    .line 2486
    .local v2, "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2487
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2488
    goto/16 :goto_f7c

    .line 2472
    .end local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v2    # "_result":I
    :pswitch_727
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2474
    .restart local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2475
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2476
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->requestInterruptionFilterFromListener(Landroid/service/notification/INotificationListener;I)V

    .line 2477
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2478
    goto/16 :goto_f7c

    .line 2464
    .end local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v2    # "_arg1":I
    :pswitch_73e
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub;->getHintsFromListenerNoToken()I

    move-result v1

    .line 2465
    .local v1, "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2466
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2467
    goto/16 :goto_f7c

    .line 2455
    .end local v1    # "_result":I
    :pswitch_74a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2456
    .local v1, "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2457
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->getHintsFromListener(Landroid/service/notification/INotificationListener;)I

    move-result v2

    .line 2458
    .local v2, "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2459
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2460
    goto/16 :goto_f7c

    .line 2444
    .end local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v2    # "_result":I
    :pswitch_761
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2446
    .restart local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2447
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2448
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->requestHintsFromListener(Landroid/service/notification/INotificationListener;I)V

    .line 2449
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2450
    goto/16 :goto_f7c

    .line 2435
    .end local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v2    # "_arg1":I
    :pswitch_778
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2436
    .restart local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2437
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->clearRequestedListenerHints(Landroid/service/notification/INotificationListener;)V

    .line 2438
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2439
    goto/16 :goto_f7c

    .line 2423
    .end local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    :pswitch_78b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2425
    .restart local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2426
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2427
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->getSnoozedNotificationsFromListener(Landroid/service/notification/INotificationListener;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 2428
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2429
    invoke-virtual {v9, v3, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2430
    goto/16 :goto_f7c

    .line 2409
    .end local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_7a6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2411
    .restart local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 2413
    .local v2, "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2414
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2415
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->getActiveNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 2416
    .local v4, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2417
    invoke-virtual {v9, v4, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2418
    goto/16 :goto_f7c

    .line 2398
    .end local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v2    # "_arg1":[Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_7c5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2400
    .restart local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 2401
    .restart local v2    # "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2402
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->setNotificationsShownFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V

    .line 2403
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2404
    goto/16 :goto_f7c

    .line 2389
    .end local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v2    # "_arg1":[Ljava/lang/String;
    :pswitch_7dc
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/IConditionProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IConditionProvider;

    move-result-object v1

    .line 2390
    .local v1, "_arg0":Landroid/service/notification/IConditionProvider;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2391
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->requestUnbindProvider(Landroid/service/notification/IConditionProvider;)V

    .line 2392
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2393
    goto/16 :goto_f7c

    .line 2380
    .end local v1    # "_arg0":Landroid/service/notification/IConditionProvider;
    :pswitch_7ef
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 2381
    .local v1, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2382
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->requestBindProvider(Landroid/content/ComponentName;)V

    .line 2383
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2384
    goto/16 :goto_f7c

    .line 2371
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    :pswitch_802
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 2372
    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2373
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->requestUnbindListenerComponent(Landroid/content/ComponentName;)V

    .line 2374
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2375
    goto/16 :goto_f7c

    .line 2362
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    :pswitch_815
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2363
    .local v1, "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2364
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->requestUnbindListener(Landroid/service/notification/INotificationListener;)V

    .line 2365
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2366
    goto/16 :goto_f7c

    .line 2353
    .end local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    :pswitch_828
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 2354
    .local v1, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2355
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->requestBindListener(Landroid/content/ComponentName;)V

    .line 2356
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2357
    goto/16 :goto_f7c

    .line 2340
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    :pswitch_83b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2342
    .local v1, "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2344
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 2345
    .local v3, "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2346
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/INotificationManager$Stub;->snoozeNotificationUntilFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;J)V

    .line 2347
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2348
    goto/16 :goto_f7c

    .line 2327
    .end local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":J
    :pswitch_856
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2329
    .restart local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2331
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2332
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2333
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->snoozeNotificationUntilContextFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 2334
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2335
    goto/16 :goto_f7c

    .line 2316
    .end local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_871
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2318
    .restart local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 2319
    .local v2, "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2320
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->cancelNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V

    .line 2321
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2322
    goto/16 :goto_f7c

    .line 2301
    .end local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v2    # "_arg1":[Ljava/lang/String;
    :pswitch_888
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2303
    .restart local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2305
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2307
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2308
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2309
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/INotificationManager$Stub;->cancelNotificationFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2310
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2311
    goto/16 :goto_f7c

    .line 2290
    .end local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    :pswitch_8a7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2292
    .restart local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2293
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2294
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->unregisterListener(Landroid/service/notification/INotificationListener;I)V

    .line 2295
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2296
    goto/16 :goto_f7c

    .line 2277
    .end local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v2    # "_arg1":I
    :pswitch_8be
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2279
    .restart local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 2281
    .local v2, "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2282
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2283
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->registerListener(Landroid/service/notification/INotificationListener;Landroid/content/ComponentName;I)V

    .line 2284
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2285
    goto/16 :goto_f7c

    .line 2265
    .end local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v2    # "_arg1":Landroid/content/ComponentName;
    .end local v3    # "_arg2":I
    :pswitch_8dd
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2267
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2268
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2269
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->getNotificationHistory(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationHistory;

    move-result-object v3

    .line 2270
    .local v3, "_result":Landroid/app/NotificationHistory;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2271
    invoke-virtual {v9, v3, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2272
    goto/16 :goto_f7c

    .line 2249
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Landroid/app/NotificationHistory;
    :pswitch_8f4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2251
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2253
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2255
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 2256
    .local v4, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2257
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/INotificationManager$Stub;->getHistoricalNotificationsWithAttribution(Ljava/lang/String;Ljava/lang/String;IZ)[Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    .line 2258
    .local v5, "_result":[Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2259
    invoke-virtual {v9, v5, v11}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2260
    goto/16 :goto_f7c

    .line 2235
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Z
    .end local v5    # "_result":[Landroid/service/notification/StatusBarNotification;
    :pswitch_913
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2237
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2239
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2240
    .local v3, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2241
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->getHistoricalNotifications(Ljava/lang/String;IZ)[Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    .line 2242
    .local v4, "_result":[Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2243
    invoke-virtual {v9, v4, v11}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2244
    goto/16 :goto_f7c

    .line 2223
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    .end local v4    # "_result":[Landroid/service/notification/StatusBarNotification;
    :pswitch_92e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2225
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2226
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2227
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->getActiveNotificationsWithAttribution(Ljava/lang/String;Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    .line 2228
    .local v3, "_result":[Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2229
    invoke-virtual {v9, v3, v11}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2230
    goto/16 :goto_f7c

    .line 2213
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":[Landroid/service/notification/StatusBarNotification;
    :pswitch_945
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2214
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2215
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->getActiveNotifications(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    .line 2216
    .local v2, "_result":[Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2217
    invoke-virtual {v9, v2, v11}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2218
    goto/16 :goto_f7c

    .line 2206
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":[Landroid/service/notification/StatusBarNotification;
    :pswitch_958
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub;->silenceNotificationSound()V

    .line 2207
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2208
    goto/16 :goto_f7c

    .line 2195
    :pswitch_960
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2197
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2198
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2199
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->isPermissionFixed(Ljava/lang/String;I)Z

    move-result v3

    .line 2200
    .local v3, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2201
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2202
    goto/16 :goto_f7c

    .line 2182
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_977
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2184
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2186
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 2187
    .local v3, "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2188
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/INotificationManager$Stub;->deleteNotificationHistoryItem(Ljava/lang/String;IJ)V

    .line 2189
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2190
    goto/16 :goto_f7c

    .line 2172
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":J
    :pswitch_98e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2173
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2174
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->isPackagePaused(Ljava/lang/String;)Z

    move-result v2

    .line 2175
    .local v2, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2176
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2177
    goto/16 :goto_f7c

    .line 2162
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_9a1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2163
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2164
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->getPackagesWithAnyChannels(I)Ljava/util/List;

    move-result-object v2

    .line 2165
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2166
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2167
    goto/16 :goto_f7c

    .line 2152
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_9b4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2153
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2154
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->getPackagesBypassingDnd(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 2155
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2156
    invoke-virtual {v9, v2, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2157
    goto/16 :goto_f7c

    .line 2140
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_9c7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2142
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2143
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2144
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->getNotificationChannelsBypassingDnd(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 2145
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2146
    invoke-virtual {v9, v3, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2147
    goto/16 :goto_f7c

    .line 2132
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_9de
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub;->areChannelsBypassingDnd()Z

    move-result v1

    .line 2133
    .local v1, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2134
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2135
    goto/16 :goto_f7c

    .line 2121
    .end local v1    # "_result":Z
    :pswitch_9ea
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2123
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2124
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2125
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result v3

    .line 2126
    .local v3, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2127
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2128
    goto/16 :goto_f7c

    .line 2111
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_a01
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2112
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2113
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->getNotificationChannelGroupsWithoutChannels(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 2114
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2115
    invoke-virtual {v9, v2, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2116
    goto/16 :goto_f7c

    .line 2101
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_a14
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2102
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2103
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->getNotificationChannelGroups(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 2104
    .restart local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2105
    invoke-virtual {v9, v2, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2106
    goto/16 :goto_f7c

    .line 2089
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_a27
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2091
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2092
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2093
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->getNotificationChannelGroup(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannelGroup;

    move-result-object v3

    .line 2094
    .local v3, "_result":Landroid/app/NotificationChannelGroup;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2095
    invoke-virtual {v9, v3, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2096
    goto/16 :goto_f7c

    .line 2078
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Landroid/app/NotificationChannelGroup;
    :pswitch_a3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2080
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2081
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2082
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->deleteNotificationChannelGroup(Ljava/lang/String;Ljava/lang/String;)V

    .line 2083
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2084
    goto/16 :goto_f7c

    .line 2066
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_a51
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2068
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2069
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2070
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->getBlockedChannelCount(Ljava/lang/String;I)I

    move-result v3

    .line 2071
    .local v3, "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2072
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2073
    goto/16 :goto_f7c

    .line 2054
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":I
    :pswitch_a68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2056
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2057
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2058
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->getDeletedChannelCount(Ljava/lang/String;I)I

    move-result v3

    .line 2059
    .restart local v3    # "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2060
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2061
    goto/16 :goto_f7c

    .line 2040
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":I
    :pswitch_a7f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2042
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2044
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2045
    .local v3, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2046
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->getNumNotificationChannelsForPackage(Ljava/lang/String;IZ)I

    move-result v4

    .line 2047
    .local v4, "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2048
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2049
    goto/16 :goto_f7c

    .line 2026
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    .end local v4    # "_result":I
    :pswitch_a9a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2028
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2030
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2031
    .restart local v3    # "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2032
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->getNotificationChannelsForPackage(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 2033
    .local v4, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2034
    invoke-virtual {v9, v4, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2035
    goto/16 :goto_f7c

    .line 2012
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    .end local v4    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_ab5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2014
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2016
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2017
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2018
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->getNotificationChannels(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 2019
    .restart local v4    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2020
    invoke-virtual {v9, v4, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2021
    goto/16 :goto_f7c

    .line 2001
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_ad0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2003
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2004
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2005
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->deleteNotificationChannel(Ljava/lang/String;Ljava/lang/String;)V

    .line 2006
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2007
    goto/16 :goto_f7c

    .line 1983
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_ae3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1985
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1987
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1989
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1991
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 1992
    .local v5, "_arg4":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1993
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/INotificationManager$Stub;->getNotificationChannelForPackage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v6

    .line 1994
    .restart local v6    # "_result":Landroid/app/NotificationChannel;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1995
    invoke-virtual {v9, v6, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1996
    goto/16 :goto_f7c

    .line 1968
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Z
    .end local v6    # "_result":Landroid/app/NotificationChannel;
    :pswitch_b07
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1970
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1972
    .restart local v2    # "_arg1":I
    sget-object v3, Landroid/app/NotificationChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannel;

    .line 1974
    .local v3, "_arg2":Landroid/app/NotificationChannel;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1975
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1976
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/INotificationManager$Stub;->createConversationNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;Ljava/lang/String;)V

    .line 1977
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1978
    goto/16 :goto_f7c

    .line 1948
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/app/NotificationChannel;
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_b26
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1950
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1952
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1954
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1956
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 1958
    .restart local v5    # "_arg4":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1959
    .local v6, "_arg5":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1960
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/INotificationManager$Stub;->getConversationNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v7

    .line 1961
    .local v7, "_result":Landroid/app/NotificationChannel;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1962
    invoke-virtual {v9, v7, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1963
    goto/16 :goto_f7c

    .line 1932
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v7    # "_result":Landroid/app/NotificationChannel;
    :pswitch_b4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1934
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1936
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1938
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1939
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1940
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/INotificationManager$Stub;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v5

    .line 1941
    .local v5, "_result":Landroid/app/NotificationChannel;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1942
    invoke-virtual {v9, v5, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1943
    goto/16 :goto_f7c

    .line 1925
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_result":Landroid/app/NotificationChannel;
    :pswitch_b6d
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub;->unlockAllNotificationChannels()V

    .line 1926
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1927
    goto/16 :goto_f7c

    .line 1913
    :pswitch_b75
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1915
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1917
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1918
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1919
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->unlockNotificationChannel(Ljava/lang/String;ILjava/lang/String;)V

    .line 1920
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1921
    goto/16 :goto_f7c

    .line 1900
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_b8c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1902
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1904
    .restart local v2    # "_arg1":I
    sget-object v3, Landroid/app/NotificationChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannel;

    .line 1905
    .local v3, "_arg2":Landroid/app/NotificationChannel;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1906
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    .line 1907
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1908
    goto/16 :goto_f7c

    .line 1887
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/app/NotificationChannel;
    :pswitch_ba7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1889
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1891
    .restart local v2    # "_arg1":I
    sget-object v3, Landroid/app/NotificationChannelGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannelGroup;

    .line 1892
    .local v3, "_arg2":Landroid/app/NotificationChannelGroup;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1893
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->updateNotificationChannelGroupForPackage(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;)V

    .line 1894
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1895
    goto/16 :goto_f7c

    .line 1875
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/app/NotificationChannelGroup;
    :pswitch_bc2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1877
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1878
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1879
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->getRecentBlockedNotificationChannelGroupsForPackage(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 1880
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1881
    invoke-virtual {v9, v3, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1882
    goto/16 :goto_f7c

    .line 1859
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_bd9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1861
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1863
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1865
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 1866
    .local v4, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1867
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/INotificationManager$Stub;->getPopulatedNotificationChannelGroupForPackage(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannelGroup;

    move-result-object v5

    .line 1868
    .local v5, "_result":Landroid/app/NotificationChannelGroup;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1869
    invoke-virtual {v9, v5, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1870
    goto/16 :goto_f7c

    .line 1845
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Z
    .end local v5    # "_result":Landroid/app/NotificationChannelGroup;
    :pswitch_bf8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1847
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1849
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1850
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1851
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->getNotificationChannelGroupForPackage(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;

    move-result-object v4

    .line 1852
    .local v4, "_result":Landroid/app/NotificationChannelGroup;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1853
    invoke-virtual {v9, v4, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1854
    goto/16 :goto_f7c

    .line 1831
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Landroid/app/NotificationChannelGroup;
    :pswitch_c13
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1833
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1835
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1836
    .local v3, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1837
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->getNotificationChannelGroupsForPackage(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 1838
    .local v4, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1839
    invoke-virtual {v9, v4, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1840
    goto/16 :goto_f7c

    .line 1819
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    .end local v4    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_c2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1821
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1822
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1823
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->getConversationsForPackage(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 1824
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1825
    invoke-virtual {v9, v3, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1826
    goto/16 :goto_f7c

    .line 1809
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_c45
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1810
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1811
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->getConversations(Z)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 1812
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1813
    invoke-virtual {v9, v2, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1814
    goto/16 :goto_f7c

    .line 1796
    .end local v1    # "_arg0":Z
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_c58
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1798
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1800
    .local v2, "_arg1":I
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;

    .line 1801
    .local v3, "_arg2":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1802
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->createNotificationChannelsForPackage(Ljava/lang/String;ILandroid/content/pm/ParceledListSlice;)V

    .line 1803
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1804
    goto/16 :goto_f7c

    .line 1785
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/content/pm/ParceledListSlice;
    :pswitch_c73
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1787
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ParceledListSlice;

    .line 1788
    .local v2, "_arg1":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1789
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->createNotificationChannels(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    .line 1790
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1791
    goto/16 :goto_f7c

    .line 1774
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/content/pm/ParceledListSlice;
    :pswitch_c8a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1776
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ParceledListSlice;

    .line 1777
    .restart local v2    # "_arg1":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1778
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->createNotificationChannelGroups(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    .line 1779
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1780
    goto/16 :goto_f7c

    .line 1762
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/content/pm/ParceledListSlice;
    :pswitch_ca1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1764
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1765
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1766
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->getBubblePreferenceForPackage(Ljava/lang/String;I)I

    move-result v3

    .line 1767
    .local v3, "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1768
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1769
    goto/16 :goto_f7c

    .line 1752
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":I
    :pswitch_cb8
    sget-object v1, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 1753
    .local v1, "_arg0":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1754
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->areBubblesEnabled(Landroid/os/UserHandle;)Z

    move-result v2

    .line 1755
    .local v2, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1756
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1757
    goto/16 :goto_f7c

    .line 1742
    .end local v1    # "_arg0":Landroid/os/UserHandle;
    .end local v2    # "_result":Z
    :pswitch_ccf
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1743
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1744
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->areBubblesAllowed(Ljava/lang/String;)Z

    move-result v2

    .line 1745
    .restart local v2    # "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1746
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1747
    goto/16 :goto_f7c

    .line 1729
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_ce2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1731
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1733
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1734
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1735
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->setBubblesAllowed(Ljava/lang/String;II)V

    .line 1736
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1737
    goto/16 :goto_f7c

    .line 1720
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_cf9
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1721
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1722
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->setHideSilentStatusIcons(Z)V

    .line 1723
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1724
    goto/16 :goto_f7c

    .line 1710
    .end local v1    # "_arg0":Z
    :pswitch_d08
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1711
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1712
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->shouldHideSilentStatusIcons(Ljava/lang/String;)Z

    move-result v2

    .line 1713
    .local v2, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1714
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1715
    goto/16 :goto_f7c

    .line 1701
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_d1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1702
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1703
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->disallowAssistantAdjustment(Ljava/lang/String;)V

    .line 1704
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1705
    goto/16 :goto_f7c

    .line 1692
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_d2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1693
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1694
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->allowAssistantAdjustment(Ljava/lang/String;)V

    .line 1695
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1696
    goto/16 :goto_f7c

    .line 1682
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_d39
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1683
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1684
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->getAllowedAssistantAdjustments(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1685
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1686
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1687
    goto/16 :goto_f7c

    .line 1670
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_d4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1672
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1673
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1674
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->isImportanceLocked(Ljava/lang/String;I)Z

    move-result v3

    .line 1675
    .local v3, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1676
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1677
    goto/16 :goto_f7c

    .line 1660
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_d63
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1661
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1662
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->getPackageImportance(Ljava/lang/String;)I

    move-result v2

    .line 1663
    .local v2, "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1664
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1665
    goto/16 :goto_f7c

    .line 1650
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_d76
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1651
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1652
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->areNotificationsEnabled(Ljava/lang/String;)Z

    move-result v2

    .line 1653
    .local v2, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1654
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1655
    goto/16 :goto_f7c

    .line 1638
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_d89
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1640
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1641
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1642
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result v3

    .line 1643
    .restart local v3    # "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1644
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1645
    goto/16 :goto_f7c

    .line 1625
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_da0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1627
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1629
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1630
    .local v3, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1631
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->setNotificationsEnabledWithImportanceLockForPackage(Ljava/lang/String;IZ)V

    .line 1632
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1633
    goto/16 :goto_f7c

    .line 1612
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    :pswitch_db7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1614
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1616
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1617
    .restart local v3    # "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1618
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V

    .line 1619
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1620
    goto/16 :goto_f7c

    .line 1600
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    :pswitch_dce
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1602
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1603
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1604
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->hasSentValidBubble(Ljava/lang/String;I)Z

    move-result v3

    .line 1605
    .local v3, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1606
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1607
    goto/16 :goto_f7c

    .line 1587
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_de5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1589
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1591
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1592
    .local v3, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1593
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->setInvalidMsgAppDemoted(Ljava/lang/String;IZ)V

    .line 1594
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1595
    goto/16 :goto_f7c

    .line 1575
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    :pswitch_dfc
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1577
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1578
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1579
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->hasUserDemotedInvalidMsgApp(Ljava/lang/String;I)Z

    move-result v3

    .line 1580
    .local v3, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1581
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1582
    goto/16 :goto_f7c

    .line 1563
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_e13
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1565
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1566
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1567
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->isInInvalidMsgState(Ljava/lang/String;I)Z

    move-result v3

    .line 1568
    .restart local v3    # "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1569
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1570
    goto/16 :goto_f7c

    .line 1551
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_e2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1553
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1554
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1555
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->hasSentValidMsg(Ljava/lang/String;I)Z

    move-result v3

    .line 1556
    .restart local v3    # "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1557
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1558
    goto/16 :goto_f7c

    .line 1539
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_e41
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1541
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1542
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1543
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->canShowBadge(Ljava/lang/String;I)Z

    move-result v3

    .line 1544
    .restart local v3    # "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1545
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1546
    goto/16 :goto_f7c

    .line 1526
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_e58
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1528
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1530
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1531
    .local v3, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1532
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->setShowBadge(Ljava/lang/String;IZ)V

    .line 1533
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1534
    goto/16 :goto_f7c

    .line 1514
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    :pswitch_e6f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1516
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1517
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1518
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->isInCall(Ljava/lang/String;I)Z

    move-result v3

    .line 1519
    .local v3, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1520
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1521
    goto/16 :goto_f7c

    .line 1497
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_e86
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1499
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1501
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1503
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1505
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1506
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1507
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/INotificationManager$Stub;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1508
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1509
    goto/16 :goto_f7c

    .line 1478
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    :pswitch_ea6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1480
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1482
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1484
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1486
    .restart local v4    # "_arg3":I
    sget-object v0, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/app/Notification;

    .line 1488
    .local v5, "_arg4":Landroid/app/Notification;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1489
    .local v6, "_arg5":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1490
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/INotificationManager$Stub;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V

    .line 1491
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1492
    goto/16 :goto_f7c

    .line 1467
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Landroid/app/Notification;
    .end local v6    # "_arg5":I
    :pswitch_ecf
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1469
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1470
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1471
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->finishToken(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1472
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1473
    goto/16 :goto_f7c

    .line 1456
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    :pswitch_ee2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1458
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1459
    .restart local v2    # "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1460
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->cancelToast(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1461
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1462
    goto/16 :goto_f7c

    .line 1436
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    :pswitch_ef5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1438
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1440
    .restart local v2    # "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/ITransientNotification$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITransientNotification;

    move-result-object v3

    .line 1442
    .local v3, "_arg2":Landroid/app/ITransientNotification;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1444
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 1446
    .local v5, "_arg4":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1447
    .restart local v6    # "_arg5":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1448
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/INotificationManager$Stub;->enqueueToast(Ljava/lang/String;Landroid/os/IBinder;Landroid/app/ITransientNotification;IZI)Z

    move-result v7

    .line 1449
    .local v7, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1450
    invoke-virtual {v9, v7}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1451
    goto :goto_f7c

    .line 1414
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":Landroid/app/ITransientNotification;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":I
    .end local v7    # "_result":Z
    :pswitch_f20
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1416
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1418
    .restart local v2    # "_arg1":Landroid/os/IBinder;
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    .line 1420
    .local v3, "_arg2":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1422
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 1424
    .restart local v5    # "_arg4":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1426
    .restart local v6    # "_arg5":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ITransientNotificationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITransientNotificationCallback;

    move-result-object v7

    .line 1427
    .local v7, "_arg6":Landroid/app/ITransientNotificationCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1428
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/app/INotificationManager$Stub;->enqueueTextToast(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;IZILandroid/app/ITransientNotificationCallback;)Z

    move-result v12

    .line 1429
    .local v12, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1430
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1431
    goto :goto_f7c

    .line 1401
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":Ljava/lang/CharSequence;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Landroid/app/ITransientNotificationCallback;
    .end local v12    # "_result":Z
    :pswitch_f54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1403
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1405
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1406
    .local v3, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1407
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->clearData(Ljava/lang/String;IZ)V

    .line 1408
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1409
    goto :goto_f7c

    .line 1390
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    :pswitch_f6a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1392
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1393
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1394
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->cancelAllNotifications(Ljava/lang/String;I)V

    .line 1395
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1396
    nop

    .line 3367
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :goto_f7c
    return v11

    nop

    :pswitch_data_f7e
    .packed-switch 0x1
        :pswitch_f6a
        :pswitch_f54
        :pswitch_f20
        :pswitch_ef5
        :pswitch_ee2
        :pswitch_ecf
        :pswitch_ea6
        :pswitch_e86
        :pswitch_e6f
        :pswitch_e58
        :pswitch_e41
        :pswitch_e2a
        :pswitch_e13
        :pswitch_dfc
        :pswitch_de5
        :pswitch_dce
        :pswitch_db7
        :pswitch_da0
        :pswitch_d89
        :pswitch_d76
        :pswitch_d63
        :pswitch_d4c
        :pswitch_d39
        :pswitch_d2a
        :pswitch_d1b
        :pswitch_d08
        :pswitch_cf9
        :pswitch_ce2
        :pswitch_ccf
        :pswitch_cb8
        :pswitch_ca1
        :pswitch_c8a
        :pswitch_c73
        :pswitch_c58
        :pswitch_c45
        :pswitch_c2e
        :pswitch_c13
        :pswitch_bf8
        :pswitch_bd9
        :pswitch_bc2
        :pswitch_ba7
        :pswitch_b8c
        :pswitch_b75
        :pswitch_b6d
        :pswitch_b4e
        :pswitch_b26
        :pswitch_b07
        :pswitch_ae3
        :pswitch_ad0
        :pswitch_ab5
        :pswitch_a9a
        :pswitch_a7f
        :pswitch_a68
        :pswitch_a51
        :pswitch_a3e
        :pswitch_a27
        :pswitch_a14
        :pswitch_a01
        :pswitch_9ea
        :pswitch_9de
        :pswitch_9c7
        :pswitch_9b4
        :pswitch_9a1
        :pswitch_98e
        :pswitch_977
        :pswitch_960
        :pswitch_958
        :pswitch_945
        :pswitch_92e
        :pswitch_913
        :pswitch_8f4
        :pswitch_8dd
        :pswitch_8be
        :pswitch_8a7
        :pswitch_888
        :pswitch_871
        :pswitch_856
        :pswitch_83b
        :pswitch_828
        :pswitch_815
        :pswitch_802
        :pswitch_7ef
        :pswitch_7dc
        :pswitch_7c5
        :pswitch_7a6
        :pswitch_78b
        :pswitch_778
        :pswitch_761
        :pswitch_74a
        :pswitch_73e
        :pswitch_727
        :pswitch_710
        :pswitch_6f9
        :pswitch_6e2
        :pswitch_6b6
        :pswitch_68f
        :pswitch_668
        :pswitch_645
        :pswitch_622
        :pswitch_607
        :pswitch_5ec
        :pswitch_5d3
        :pswitch_5bc
        :pswitch_5a5
        :pswitch_599
        :pswitch_582
        :pswitch_573
        :pswitch_560
        :pswitch_549
        :pswitch_52e
        :pswitch_517
        :pswitch_4fc
        :pswitch_4e5
        :pswitch_4c6
        :pswitch_4ab
        :pswitch_49f
        :pswitch_48c
        :pswitch_479
        :pswitch_46d
        :pswitch_461
        :pswitch_44e
        :pswitch_437
        :pswitch_42b
        :pswitch_41f
        :pswitch_413
        :pswitch_3f7
        :pswitch_3db
        :pswitch_3c8
        :pswitch_3b5
        :pswitch_39a
        :pswitch_387
        :pswitch_374
        :pswitch_35d
        :pswitch_351
        :pswitch_33e
        :pswitch_332
        :pswitch_313
        :pswitch_2f4
        :pswitch_2dd
        :pswitch_2c6
        :pswitch_2af
        :pswitch_29c
        :pswitch_285
        :pswitch_272
        :pswitch_25f
        :pswitch_24c
        :pswitch_235
        :pswitch_222
        :pswitch_20f
        :pswitch_1f4
        :pswitch_1dd
        :pswitch_1ce
        :pswitch_1c2
        :pswitch_19e
        :pswitch_183
        :pswitch_164
        :pswitch_149
        :pswitch_13a
        :pswitch_11b
        :pswitch_fc
        :pswitch_e1
        :pswitch_ca
        :pswitch_b7
        :pswitch_9c
        :pswitch_90
        :pswitch_84
        :pswitch_71
        :pswitch_5e
        :pswitch_47
        :pswitch_30
        :pswitch_21
    .end packed-switch
.end method

.method protected blacklist registerCallNotificationEventListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6602
    iget-object v0, p0, Landroid/app/INotificationManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/app/INotificationManager$Stub;->PERMISSIONS_registerCallNotificationEventListener:[Ljava/lang/String;

    invoke-static {}, Landroid/app/INotificationManager$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/app/INotificationManager$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAllOf([Ljava/lang/String;II)V

    .line 6603
    return-void
.end method

.method protected blacklist setToastRateLimitingEnabled_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6596
    iget-object v0, p0, Landroid/app/INotificationManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/app/INotificationManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/INotificationManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_TOAST_RATE_LIMITING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 6597
    return-void
.end method

.method protected blacklist unregisterCallNotificationEventListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6608
    iget-object v0, p0, Landroid/app/INotificationManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/app/INotificationManager$Stub;->PERMISSIONS_unregisterCallNotificationEventListener:[Ljava/lang/String;

    invoke-static {}, Landroid/app/INotificationManager$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/app/INotificationManager$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAllOf([Ljava/lang/String;II)V

    .line 6609
    return-void
.end method
