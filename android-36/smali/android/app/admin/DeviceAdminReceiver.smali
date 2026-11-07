.class public Landroid/app/admin/DeviceAdminReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DeviceAdminReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/DeviceAdminReceiver$BugreportFailureCode;
    }
.end annotation


# static fields
.field public static final greylist-max-o ACTION_AFFILIATED_PROFILE_TRANSFER_OWNERSHIP_COMPLETE:Ljava/lang/String; = "android.app.action.AFFILIATED_PROFILE_TRANSFER_OWNERSHIP_COMPLETE"

.field public static final greylist-max-o ACTION_BUGREPORT_FAILED:Ljava/lang/String; = "android.app.action.BUGREPORT_FAILED"

.field public static final greylist-max-o ACTION_BUGREPORT_SHARE:Ljava/lang/String; = "android.app.action.BUGREPORT_SHARE"

.field public static final greylist-max-o ACTION_BUGREPORT_SHARING_DECLINED:Ljava/lang/String; = "android.app.action.BUGREPORT_SHARING_DECLINED"

.field public static final whitelist ACTION_CHOOSE_PRIVATE_KEY_ALIAS:Ljava/lang/String; = "android.app.action.CHOOSE_PRIVATE_KEY_ALIAS"

.field public static final blacklist ACTION_COMPLIANCE_ACKNOWLEDGEMENT_REQUIRED:Ljava/lang/String; = "android.app.action.COMPLIANCE_ACKNOWLEDGEMENT_REQUIRED"

.field public static final whitelist ACTION_DEVICE_ADMIN_DISABLED:Ljava/lang/String; = "android.app.action.DEVICE_ADMIN_DISABLED"

.field public static final whitelist ACTION_DEVICE_ADMIN_DISABLE_REQUESTED:Ljava/lang/String; = "android.app.action.DEVICE_ADMIN_DISABLE_REQUESTED"

.field public static final whitelist ACTION_DEVICE_ADMIN_ENABLED:Ljava/lang/String; = "android.app.action.DEVICE_ADMIN_ENABLED"

.field public static final whitelist ACTION_LOCK_TASK_ENTERING:Ljava/lang/String; = "android.app.action.LOCK_TASK_ENTERING"

.field public static final whitelist ACTION_LOCK_TASK_EXITING:Ljava/lang/String; = "android.app.action.LOCK_TASK_EXITING"

.field public static final whitelist ACTION_NETWORK_LOGS_AVAILABLE:Ljava/lang/String; = "android.app.action.NETWORK_LOGS_AVAILABLE"

.field public static final greylist-max-o ACTION_NOTIFY_PENDING_SYSTEM_UPDATE:Ljava/lang/String; = "android.app.action.NOTIFY_PENDING_SYSTEM_UPDATE"

.field public static final blacklist ACTION_OPERATION_SAFETY_STATE_CHANGED:Ljava/lang/String; = "android.app.action.OPERATION_SAFETY_STATE_CHANGED"

.field public static final whitelist ACTION_PASSWORD_CHANGED:Ljava/lang/String; = "android.app.action.ACTION_PASSWORD_CHANGED"

.field public static final whitelist ACTION_PASSWORD_EXPIRING:Ljava/lang/String; = "android.app.action.ACTION_PASSWORD_EXPIRING"

.field public static final whitelist ACTION_PASSWORD_FAILED:Ljava/lang/String; = "android.app.action.ACTION_PASSWORD_FAILED"

.field public static final whitelist ACTION_PASSWORD_SUCCEEDED:Ljava/lang/String; = "android.app.action.ACTION_PASSWORD_SUCCEEDED"

.field public static final whitelist ACTION_PROFILE_PROVISIONING_COMPLETE:Ljava/lang/String; = "android.app.action.PROFILE_PROVISIONING_COMPLETE"

.field public static final whitelist ACTION_SECURITY_LOGS_AVAILABLE:Ljava/lang/String; = "android.app.action.SECURITY_LOGS_AVAILABLE"

.field public static final greylist-max-o ACTION_TRANSFER_OWNERSHIP_COMPLETE:Ljava/lang/String; = "android.app.action.TRANSFER_OWNERSHIP_COMPLETE"

.field public static final greylist-max-o ACTION_USER_ADDED:Ljava/lang/String; = "android.app.action.USER_ADDED"

.field public static final greylist-max-o ACTION_USER_REMOVED:Ljava/lang/String; = "android.app.action.USER_REMOVED"

.field public static final greylist-max-o ACTION_USER_STARTED:Ljava/lang/String; = "android.app.action.USER_STARTED"

.field public static final greylist-max-o ACTION_USER_STOPPED:Ljava/lang/String; = "android.app.action.USER_STOPPED"

.field public static final greylist-max-o ACTION_USER_SWITCHED:Ljava/lang/String; = "android.app.action.USER_SWITCHED"

.field public static final whitelist BUGREPORT_FAILURE_FAILED_COMPLETING:I = 0x0

.field public static final whitelist BUGREPORT_FAILURE_FILE_NO_LONGER_AVAILABLE:I = 0x1

.field public static final whitelist DEVICE_ADMIN_META_DATA:Ljava/lang/String; = "android.app.device_admin"

.field public static final greylist-max-o EXTRA_BUGREPORT_FAILURE_REASON:Ljava/lang/String; = "android.app.extra.BUGREPORT_FAILURE_REASON"

.field public static final greylist-max-o EXTRA_BUGREPORT_HASH:Ljava/lang/String; = "android.app.extra.BUGREPORT_HASH"

.field public static final greylist-max-o EXTRA_CHOOSE_PRIVATE_KEY_ALIAS:Ljava/lang/String; = "android.app.extra.CHOOSE_PRIVATE_KEY_ALIAS"

.field public static final greylist-max-o EXTRA_CHOOSE_PRIVATE_KEY_RESPONSE:Ljava/lang/String; = "android.app.extra.CHOOSE_PRIVATE_KEY_RESPONSE"

.field public static final greylist-max-o EXTRA_CHOOSE_PRIVATE_KEY_SENDER_UID:Ljava/lang/String; = "android.app.extra.CHOOSE_PRIVATE_KEY_SENDER_UID"

.field public static final greylist-max-o EXTRA_CHOOSE_PRIVATE_KEY_URI:Ljava/lang/String; = "android.app.extra.CHOOSE_PRIVATE_KEY_URI"

.field public static final whitelist EXTRA_DISABLE_WARNING:Ljava/lang/String; = "android.app.extra.DISABLE_WARNING"

.field public static final whitelist EXTRA_LOCK_TASK_PACKAGE:Ljava/lang/String; = "android.app.extra.LOCK_TASK_PACKAGE"

.field public static final greylist-max-o EXTRA_NETWORK_LOGS_COUNT:Ljava/lang/String; = "android.app.extra.EXTRA_NETWORK_LOGS_COUNT"

.field public static final greylist-max-o EXTRA_NETWORK_LOGS_TOKEN:Ljava/lang/String; = "android.app.extra.EXTRA_NETWORK_LOGS_TOKEN"

.field public static final blacklist EXTRA_OPERATION_SAFETY_REASON:Ljava/lang/String; = "android.app.extra.OPERATION_SAFETY_REASON"

.field public static final blacklist EXTRA_OPERATION_SAFETY_STATE:Ljava/lang/String; = "android.app.extra.OPERATION_SAFETY_STATE"

.field public static final greylist-max-o EXTRA_SYSTEM_UPDATE_RECEIVED_TIME:Ljava/lang/String; = "android.app.extra.SYSTEM_UPDATE_RECEIVED_TIME"

.field public static final whitelist EXTRA_TRANSFER_OWNERSHIP_ADMIN_EXTRAS_BUNDLE:Ljava/lang/String; = "android.app.extra.TRANSFER_OWNERSHIP_ADMIN_EXTRAS_BUNDLE"

.field private static final blacklist LOCAL_LOGV:Z = false

.field private static final greylist-max-o TAG:Ljava/lang/String; = "DevicePolicy"


# instance fields
.field private greylist-max-o mManager:Landroid/app/admin/DevicePolicyManager;

.field private greylist-max-o mWho:Landroid/content/ComponentName;


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 77
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private blacklist hasRequiredExtra(Landroid/content/Intent;Ljava/lang/String;)Z
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "extra"    # Ljava/lang/String;

    .line 1169
    invoke-virtual {p1, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    .line 1171
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' on intent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DevicePolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist onOperationSafetyStateChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1128
    const-string v0, "android.app.extra.OPERATION_SAFETY_REASON"

    invoke-direct {p0, p2, v0}, Landroid/app/admin/DeviceAdminReceiver;->hasRequiredExtra(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    const-string v2, "DevicePolicy"

    if-eqz v1, :cond_4c

    .line 1129
    const-string v1, "android.app.extra.OPERATION_SAFETY_STATE"

    invoke-direct {p0, p2, v1}, Landroid/app/admin/DeviceAdminReceiver;->hasRequiredExtra(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_13

    goto :goto_4c

    .line 1134
    :cond_13
    const/4 v3, -0x1

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1136
    .local v0, "reason":I
    invoke-static {v0}, Landroid/app/admin/DevicePolicyManager;->isValidOperationSafetyReason(I)Z

    move-result v3

    if-nez v3, :cond_43

    .line 1137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received invalid reason on "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    return-void

    .line 1140
    :cond_43
    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1142
    .local v1, "isSafe":Z
    invoke-virtual {p0, p1, v0, v1}, Landroid/app/admin/DeviceAdminReceiver;->onOperationSafetyStateChanged(Landroid/content/Context;IZ)V

    .line 1143
    return-void

    .line 1130
    .end local v0    # "reason":I
    .end local v1    # "isSafe":Z
    :cond_4c
    :goto_4c
    const-string v0, "Igoring intent that\'s missing required extras"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    return-void
.end method


# virtual methods
.method public whitelist getManager(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 566
    iget-object v0, p0, Landroid/app/admin/DeviceAdminReceiver;->mManager:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_7

    .line 567
    iget-object v0, p0, Landroid/app/admin/DeviceAdminReceiver;->mManager:Landroid/app/admin/DevicePolicyManager;

    return-object v0

    .line 569
    :cond_7
    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Landroid/app/admin/DeviceAdminReceiver;->mManager:Landroid/app/admin/DevicePolicyManager;

    .line 571
    iget-object v0, p0, Landroid/app/admin/DeviceAdminReceiver;->mManager:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method public whitelist getWho(Landroid/content/Context;)Landroid/content/ComponentName;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 580
    iget-object v0, p0, Landroid/app/admin/DeviceAdminReceiver;->mWho:Landroid/content/ComponentName;

    if-eqz v0, :cond_7

    .line 581
    iget-object v0, p0, Landroid/app/admin/DeviceAdminReceiver;->mWho:Landroid/content/ComponentName;

    return-object v0

    .line 583
    :cond_7
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/app/admin/DeviceAdminReceiver;->mWho:Landroid/content/ComponentName;

    .line 584
    iget-object v0, p0, Landroid/app/admin/DeviceAdminReceiver;->mWho:Landroid/content/ComponentName;

    return-object v0
.end method

.method public whitelist onBugreportFailed(Landroid/content/Context;Landroid/content/Intent;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "failureCode"    # I

    .line 941
    return-void
.end method

.method public whitelist onBugreportShared(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "bugreportHash"    # Ljava/lang/String;

    .line 925
    return-void
.end method

.method public whitelist onBugreportSharingDeclined(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 909
    return-void
.end method

.method public whitelist onChoosePrivateKeyAlias(Landroid/content/Context;Landroid/content/Intent;ILandroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "uid"    # I
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "alias"    # Ljava/lang/String;

    .line 872
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onComplianceAcknowledgementRequired(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1165
    invoke-virtual {p0, p1}, Landroid/app/admin/DeviceAdminReceiver;->getManager(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->acknowledgeDeviceCompliant()V

    .line 1166
    return-void
.end method

.method public whitelist onDisableRequested(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 623
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onDisabled(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 638
    return-void
.end method

.method public whitelist onEnabled(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 604
    return-void
.end method

.method public whitelist onLockTaskModeEntering(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "pkg"    # Ljava/lang/String;

    .line 842
    return-void
.end method

.method public whitelist onLockTaskModeExiting(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 851
    return-void
.end method

.method public whitelist onNetworkLogsAvailable(Landroid/content/Context;Landroid/content/Intent;JI)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "batchToken"    # J
    .param p5, "networkLogsCount"    # I

    .line 990
    return-void
.end method

.method public whitelist onOperationSafetyStateChanged(Landroid/content/Context;IZ)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reason"    # I
    .param p3, "isSafe"    # Z

    .line 1125
    return-void
.end method

.method public whitelist onPasswordChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 653
    return-void
.end method

.method public whitelist onPasswordChanged(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 668
    invoke-virtual {p0, p1, p2}, Landroid/app/admin/DeviceAdminReceiver;->onPasswordChanged(Landroid/content/Context;Landroid/content/Intent;)V

    .line 669
    return-void
.end method

.method public whitelist onPasswordExpiring(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 756
    return-void
.end method

.method public whitelist onPasswordExpiring(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 781
    invoke-virtual {p0, p1, p2}, Landroid/app/admin/DeviceAdminReceiver;->onPasswordExpiring(Landroid/content/Context;Landroid/content/Intent;)V

    .line 782
    return-void
.end method

.method public whitelist onPasswordFailed(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 684
    return-void
.end method

.method public whitelist onPasswordFailed(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 699
    invoke-virtual {p0, p1, p2}, Landroid/app/admin/DeviceAdminReceiver;->onPasswordFailed(Landroid/content/Context;Landroid/content/Intent;)V

    .line 700
    return-void
.end method

.method public whitelist onPasswordSucceeded(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 715
    return-void
.end method

.method public whitelist onPasswordSucceeded(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 730
    invoke-virtual {p0, p1, p2}, Landroid/app/admin/DeviceAdminReceiver;->onPasswordSucceeded(Landroid/content/Context;Landroid/content/Intent;)V

    .line 731
    return-void
.end method

.method public whitelist onProfileProvisioningComplete(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 819
    return-void
.end method

.method public whitelist onReadyForUserInitialization(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 831
    return-void
.end method

.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1182
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 1188
    .local v6, "action":Ljava/lang/String;
    const-string v3, "android.app.action.ACTION_PASSWORD_CHANGED"

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "android.intent.extra.USER"

    if-eqz v3, :cond_1b

    .line 1189
    const-class v3, Landroid/os/UserHandle;

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2, v3}, Landroid/app/admin/DeviceAdminReceiver;->onPasswordChanged(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_1ff

    .line 1190
    :cond_1b
    const-string v3, "android.app.action.ACTION_PASSWORD_FAILED"

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 1191
    const-class v3, Landroid/os/UserHandle;

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2, v3}, Landroid/app/admin/DeviceAdminReceiver;->onPasswordFailed(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_1ff

    .line 1192
    :cond_30
    const-string v3, "android.app.action.ACTION_PASSWORD_SUCCEEDED"

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 1193
    const-class v3, Landroid/os/UserHandle;

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2, v3}, Landroid/app/admin/DeviceAdminReceiver;->onPasswordSucceeded(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_1ff

    .line 1194
    :cond_45
    const-string v3, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 1195
    invoke-virtual/range {p0 .. p2}, Landroid/app/admin/DeviceAdminReceiver;->onEnabled(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1ff

    .line 1196
    :cond_52
    const-string v3, "android.app.action.DEVICE_ADMIN_DISABLE_REQUESTED"

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 1197
    invoke-virtual/range {p0 .. p2}, Landroid/app/admin/DeviceAdminReceiver;->onDisableRequested(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1198
    .local v3, "res":Ljava/lang/CharSequence;
    if-eqz v3, :cond_6a

    .line 1199
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/app/admin/DeviceAdminReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v4

    .line 1200
    .local v4, "extras":Landroid/os/Bundle;
    const-string v5, "android.app.extra.DISABLE_WARNING"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1202
    .end local v3    # "res":Ljava/lang/CharSequence;
    .end local v4    # "extras":Landroid/os/Bundle;
    :cond_6a
    goto/16 :goto_1ff

    :cond_6c
    const-string v3, "android.app.action.DEVICE_ADMIN_DISABLED"

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 1203
    invoke-virtual/range {p0 .. p2}, Landroid/app/admin/DeviceAdminReceiver;->onDisabled(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1ff

    .line 1204
    :cond_79
    const-string v3, "android.app.action.ACTION_PASSWORD_EXPIRING"

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8e

    .line 1205
    const-class v3, Landroid/os/UserHandle;

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2, v3}, Landroid/app/admin/DeviceAdminReceiver;->onPasswordExpiring(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_1ff

    .line 1206
    :cond_8e
    const-string v3, "android.app.action.PROFILE_PROVISIONING_COMPLETE"

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9b

    .line 1207
    invoke-virtual/range {p0 .. p2}, Landroid/app/admin/DeviceAdminReceiver;->onProfileProvisioningComplete(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1ff

    .line 1208
    :cond_9b
    const-string v3, "android.app.action.CHOOSE_PRIVATE_KEY_ALIAS"

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c6

    .line 1209
    const-string v3, "android.app.extra.CHOOSE_PRIVATE_KEY_SENDER_UID"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1210
    .local v3, "uid":I
    const-string v4, "android.app.extra.CHOOSE_PRIVATE_KEY_URI"

    const-class v5, Landroid/net/Uri;

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 1211
    .local v4, "uri":Landroid/net/Uri;
    const-string v5, "android.app.extra.CHOOSE_PRIVATE_KEY_ALIAS"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1212
    .local v5, "alias":Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/app/admin/DeviceAdminReceiver;->onChoosePrivateKeyAlias(Landroid/content/Context;Landroid/content/Intent;ILandroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1213
    .local v7, "chosenAlias":Ljava/lang/String;
    invoke-virtual {p0, v7}, Landroid/app/admin/DeviceAdminReceiver;->setResultData(Ljava/lang/String;)V

    .line 1214
    .end local v3    # "uid":I
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v5    # "alias":Ljava/lang/String;
    .end local v7    # "chosenAlias":Ljava/lang/String;
    goto/16 :goto_1ff

    :cond_c6
    const-string v3, "android.app.action.LOCK_TASK_ENTERING"

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d9

    .line 1215
    const-string v3, "android.app.extra.LOCK_TASK_PACKAGE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1216
    .local v3, "pkg":Ljava/lang/String;
    invoke-virtual {p0, p1, p2, v3}, Landroid/app/admin/DeviceAdminReceiver;->onLockTaskModeEntering(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 1217
    .end local v3    # "pkg":Ljava/lang/String;
    goto/16 :goto_1ff

    :cond_d9
    const-string v3, "android.app.action.LOCK_TASK_EXITING"

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e6

    .line 1218
    invoke-virtual/range {p0 .. p2}, Landroid/app/admin/DeviceAdminReceiver;->onLockTaskModeExiting(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1ff

    .line 1219
    :cond_e6
    const-string v3, "android.app.action.NOTIFY_PENDING_SYSTEM_UPDATE"

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-wide/16 v7, -0x1

    if-eqz v3, :cond_fb

    .line 1220
    const-string v3, "android.app.extra.SYSTEM_UPDATE_RECEIVED_TIME"

    invoke-virtual {p2, v3, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 1221
    .local v3, "receivedTime":J
    invoke-virtual {p0, p1, p2, v3, v4}, Landroid/app/admin/DeviceAdminReceiver;->onSystemUpdatePending(Landroid/content/Context;Landroid/content/Intent;J)V

    .line 1222
    .end local v3    # "receivedTime":J
    goto/16 :goto_1ff

    :cond_fb
    const-string v3, "android.app.action.BUGREPORT_SHARING_DECLINED"

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_108

    .line 1223
    invoke-virtual/range {p0 .. p2}, Landroid/app/admin/DeviceAdminReceiver;->onBugreportSharingDeclined(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1ff

    .line 1224
    :cond_108
    const-string v3, "android.app.action.BUGREPORT_SHARE"

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11b

    .line 1225
    const-string v3, "android.app.extra.BUGREPORT_HASH"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1226
    .local v3, "bugreportFileHash":Ljava/lang/String;
    invoke-virtual {p0, p1, p2, v3}, Landroid/app/admin/DeviceAdminReceiver;->onBugreportShared(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 1227
    .end local v3    # "bugreportFileHash":Ljava/lang/String;
    goto/16 :goto_1ff

    :cond_11b
    const-string v3, "android.app.action.BUGREPORT_FAILED"

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_12f

    .line 1228
    const-string v3, "android.app.extra.BUGREPORT_FAILURE_REASON"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1230
    .local v3, "failureCode":I
    invoke-virtual {p0, p1, p2, v3}, Landroid/app/admin/DeviceAdminReceiver;->onBugreportFailed(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 1231
    .end local v3    # "failureCode":I
    goto/16 :goto_1ff

    :cond_12f
    const-string v3, "android.app.action.SECURITY_LOGS_AVAILABLE"

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13c

    .line 1232
    invoke-virtual/range {p0 .. p2}, Landroid/app/admin/DeviceAdminReceiver;->onSecurityLogsAvailable(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1ff

    .line 1233
    :cond_13c
    const-string v3, "android.app.action.NETWORK_LOGS_AVAILABLE"

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_158

    .line 1234
    const-string v3, "android.app.extra.EXTRA_NETWORK_LOGS_TOKEN"

    invoke-virtual {p2, v3, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 1235
    .local v3, "batchToken":J
    const-string v7, "android.app.extra.EXTRA_NETWORK_LOGS_COUNT"

    invoke-virtual {p2, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1236
    .local v5, "networkLogsCount":I
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/app/admin/DeviceAdminReceiver;->onNetworkLogsAvailable(Landroid/content/Context;Landroid/content/Intent;JI)V

    .line 1237
    .end local v3    # "batchToken":J
    .end local v5    # "networkLogsCount":I
    goto/16 :goto_1ff

    :cond_158
    const-string v3, "android.app.action.USER_ADDED"

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16d

    .line 1238
    const-class v3, Landroid/os/UserHandle;

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2, v3}, Landroid/app/admin/DeviceAdminReceiver;->onUserAdded(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_1ff

    .line 1239
    :cond_16d
    const-string v3, "android.app.action.USER_REMOVED"

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_182

    .line 1240
    const-class v3, Landroid/os/UserHandle;

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2, v3}, Landroid/app/admin/DeviceAdminReceiver;->onUserRemoved(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_1ff

    .line 1241
    :cond_182
    const-string v3, "android.app.action.USER_STARTED"

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_196

    .line 1242
    const-class v3, Landroid/os/UserHandle;

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2, v3}, Landroid/app/admin/DeviceAdminReceiver;->onUserStarted(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1ff

    .line 1243
    :cond_196
    const-string v3, "android.app.action.USER_STOPPED"

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1aa

    .line 1244
    const-class v3, Landroid/os/UserHandle;

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2, v3}, Landroid/app/admin/DeviceAdminReceiver;->onUserStopped(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1ff

    .line 1245
    :cond_1aa
    const-string v3, "android.app.action.USER_SWITCHED"

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1be

    .line 1246
    const-class v3, Landroid/os/UserHandle;

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2, v3}, Landroid/app/admin/DeviceAdminReceiver;->onUserSwitched(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1ff

    .line 1247
    :cond_1be
    const-string v3, "android.app.action.TRANSFER_OWNERSHIP_COMPLETE"

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d4

    .line 1248
    const-class v3, Landroid/os/PersistableBundle;

    .line 1249
    const-string v4, "android.app.extra.TRANSFER_OWNERSHIP_ADMIN_EXTRAS_BUNDLE"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    .line 1250
    .local v3, "bundle":Landroid/os/PersistableBundle;
    invoke-virtual {p0, p1, v3}, Landroid/app/admin/DeviceAdminReceiver;->onTransferOwnershipComplete(Landroid/content/Context;Landroid/os/PersistableBundle;)V

    .line 1251
    .end local v3    # "bundle":Landroid/os/PersistableBundle;
    goto :goto_1ff

    :cond_1d4
    const-string v3, "android.app.action.AFFILIATED_PROFILE_TRANSFER_OWNERSHIP_COMPLETE"

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e8

    .line 1252
    const-class v3, Landroid/os/UserHandle;

    .line 1253
    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 1252
    invoke-virtual {p0, p1, v3}, Landroid/app/admin/DeviceAdminReceiver;->onTransferAffiliatedProfileOwnershipComplete(Landroid/content/Context;Landroid/os/UserHandle;)V

    goto :goto_1ff

    .line 1254
    :cond_1e8
    const-string v3, "android.app.action.OPERATION_SAFETY_STATE_CHANGED"

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f4

    .line 1255
    invoke-direct/range {p0 .. p2}, Landroid/app/admin/DeviceAdminReceiver;->onOperationSafetyStateChanged(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1ff

    .line 1256
    :cond_1f4
    const-string v3, "android.app.action.COMPLIANCE_ACKNOWLEDGEMENT_REQUIRED"

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1ff

    .line 1257
    invoke-virtual/range {p0 .. p2}, Landroid/app/admin/DeviceAdminReceiver;->onComplianceAcknowledgementRequired(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1259
    :cond_1ff
    :goto_1ff
    return-void
.end method

.method public whitelist onSecurityLogsAvailable(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 964
    return-void
.end method

.method public whitelist onSystemUpdatePending(Landroid/content/Context;Landroid/content/Intent;J)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "receivedTime"    # J

    .line 897
    return-void
.end method

.method public whitelist onTransferAffiliatedProfileOwnershipComplete(Landroid/content/Context;Landroid/os/UserHandle;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 1105
    return-void
.end method

.method public whitelist onTransferOwnershipComplete(Landroid/content/Context;Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/PersistableBundle;

    .line 1084
    return-void
.end method

.method public whitelist onUserAdded(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "addedUser"    # Landroid/os/UserHandle;

    .line 1006
    return-void
.end method

.method public whitelist onUserRemoved(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "removedUser"    # Landroid/os/UserHandle;

    .line 1022
    return-void
.end method

.method public whitelist onUserStarted(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "startedUser"    # Landroid/os/UserHandle;

    .line 1038
    return-void
.end method

.method public whitelist onUserStopped(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "stoppedUser"    # Landroid/os/UserHandle;

    .line 1054
    return-void
.end method

.method public whitelist onUserSwitched(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "switchedUser"    # Landroid/os/UserHandle;

    .line 1070
    return-void
.end method
