.class public abstract Landroid/app/admin/PolicyUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PolicyUpdateReceiver.java"


# static fields
.field public static final whitelist ACTION_DEVICE_POLICY_CHANGED:Ljava/lang/String; = "android.app.admin.action.DEVICE_POLICY_CHANGED"

.field public static final whitelist ACTION_DEVICE_POLICY_SET_RESULT:Ljava/lang/String; = "android.app.admin.action.DEVICE_POLICY_SET_RESULT"

.field public static final whitelist EXTRA_ACCOUNT_TYPE:Ljava/lang/String; = "android.app.admin.extra.ACCOUNT_TYPE"

.field public static final whitelist EXTRA_INTENT_FILTER:Ljava/lang/String; = "android.app.admin.extra.INTENT_FILTER"

.field public static final whitelist EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.app.admin.extra.PACKAGE_NAME"

.field public static final whitelist EXTRA_PERMISSION_NAME:Ljava/lang/String; = "android.app.admin.extra.PERMISSION_NAME"

.field public static final blacklist EXTRA_POLICY_BUNDLE_KEY:Ljava/lang/String; = "android.app.admin.extra.POLICY_BUNDLE_KEY"

.field public static final blacklist EXTRA_POLICY_KEY:Ljava/lang/String; = "android.app.admin.extra.POLICY_KEY"

.field public static final blacklist EXTRA_POLICY_TARGET_USER_ID:Ljava/lang/String; = "android.app.admin.extra.POLICY_TARGET_USER_ID"

.field public static final blacklist EXTRA_POLICY_UPDATE_RESULT_KEY:Ljava/lang/String; = "android.app.admin.extra.POLICY_UPDATE_RESULT_KEY"

.field private static final blacklist MEMORY_TAGGING_POLICY:Ljava/lang/String; = "memoryTagging"

.field private static blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 49
    const-string v0, "PolicyUpdateReceiver"

    sput-object v0, Landroid/app/admin/PolicyUpdateReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static blacklist getPolicyChangedReason(Landroid/content/Intent;)Landroid/app/admin/PolicyUpdateResult;
    .registers 3
    .param p0, "intent"    # Landroid/content/Intent;

    .line 218
    const-string v0, "android.app.admin.extra.POLICY_UPDATE_RESULT_KEY"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 221
    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 223
    .local v0, "reasonCode":I
    new-instance v1, Landroid/app/admin/PolicyUpdateResult;

    invoke-direct {v1, v0}, Landroid/app/admin/PolicyUpdateResult;-><init>(I)V

    return-object v1

    .line 219
    .end local v0    # "reasonCode":I
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PolicyUpdateResult has to be provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist getPolicyExtraBundle(Landroid/content/Intent;)Landroid/os/Bundle;
    .registers 3
    .param p0, "intent"    # Landroid/content/Intent;

    .line 209
    const-string v0, "android.app.admin.extra.POLICY_BUNDLE_KEY"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 210
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_e

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_f

    :cond_e
    move-object v1, v0

    :goto_f
    return-object v1
.end method

.method static blacklist getPolicyKey(Landroid/content/Intent;)Ljava/lang/String;
    .registers 3
    .param p0, "intent"    # Landroid/content/Intent;

    .line 198
    const-string v0, "android.app.admin.extra.POLICY_KEY"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 201
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 199
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PolicyKey has to be provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist getTargetUser(Landroid/content/Intent;)Landroid/app/admin/TargetUser;
    .registers 3
    .param p0, "intent"    # Landroid/content/Intent;

    .line 231
    const-string v0, "android.app.admin.extra.POLICY_TARGET_USER_ID"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 234
    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 236
    .local v0, "targetUserId":I
    new-instance v1, Landroid/app/admin/TargetUser;

    invoke-direct {v1, v0}, Landroid/app/admin/TargetUser;-><init>(I)V

    return-object v1

    .line 232
    .end local v0    # "targetUserId":I
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TargetUser has to be provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist shouldPropagatePolicy(Ljava/lang/String;)Z
    .registers 3
    .param p1, "policyKey"    # Ljava/lang/String;

    .line 243
    const-string/jumbo v0, "memoryTagging"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/Flags;->setMtePolicyCoexistence()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_12

    :cond_10
    const/4 v0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v0, 0x1

    :goto_13
    return v0
.end method


# virtual methods
.method public whitelist onPolicyChanged(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/admin/TargetUser;Landroid/app/admin/PolicyUpdateResult;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "policyIdentifier"    # Ljava/lang/String;
    .param p3, "additionalPolicyParams"    # Landroid/os/Bundle;
    .param p4, "targetUser"    # Landroid/app/admin/TargetUser;
    .param p5, "policyUpdateResult"    # Landroid/app/admin/PolicyUpdateResult;

    .line 312
    return-void
.end method

.method public whitelist onPolicySetResult(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/admin/TargetUser;Landroid/app/admin/PolicyUpdateResult;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "policyIdentifier"    # Ljava/lang/String;
    .param p3, "additionalPolicyParams"    # Landroid/os/Bundle;
    .param p4, "targetUser"    # Landroid/app/admin/TargetUser;
    .param p5, "policyUpdateResult"    # Landroid/app/admin/PolicyUpdateResult;

    .line 278
    return-void
.end method

.method public final whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 164
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_b0

    :cond_12
    goto :goto_27

    :sswitch_13
    const-string v2, "android.app.admin.action.DEVICE_POLICY_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_28

    :sswitch_1d
    const-string v2, "android.app.admin.action.DEVICE_POLICY_SET_RESULT"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x0

    goto :goto_28

    :goto_27
    const/4 v1, -0x1

    :goto_28
    const-string v2, "Skipping propagation of policy %s"

    packed-switch v1, :pswitch_data_ba

    .line 190
    sget-object v0, Landroid/app/admin/PolicyUpdateReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown action received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ae

    .line 179
    :pswitch_4a
    sget-object v1, Landroid/app/admin/PolicyUpdateReceiver;->TAG:Ljava/lang/String;

    const-string v3, "Received ACTION_DEVICE_POLICY_CHANGED"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-static {p2}, Landroid/app/admin/PolicyUpdateReceiver;->getPolicyKey(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "policyKey":Ljava/lang/String;
    invoke-direct {p0, v1}, Landroid/app/admin/PolicyUpdateReceiver;->shouldPropagatePolicy(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_69

    .line 182
    sget-object v3, Landroid/app/admin/PolicyUpdateReceiver;->TAG:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    goto :goto_ae

    .line 186
    :cond_69
    invoke-static {p2}, Landroid/app/admin/PolicyUpdateReceiver;->getPolicyExtraBundle(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v3

    .line 187
    invoke-static {p2}, Landroid/app/admin/PolicyUpdateReceiver;->getTargetUser(Landroid/content/Intent;)Landroid/app/admin/TargetUser;

    move-result-object v4

    invoke-static {p2}, Landroid/app/admin/PolicyUpdateReceiver;->getPolicyChangedReason(Landroid/content/Intent;)Landroid/app/admin/PolicyUpdateResult;

    move-result-object v5

    .line 186
    move-object v0, p0

    move-object v2, v1

    move-object v1, p1

    .end local v1    # "policyKey":Ljava/lang/String;
    .local v2, "policyKey":Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Landroid/app/admin/PolicyUpdateReceiver;->onPolicyChanged(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/admin/TargetUser;Landroid/app/admin/PolicyUpdateResult;)V

    .line 188
    goto :goto_ae

    .line 168
    .end local v2    # "policyKey":Ljava/lang/String;
    :pswitch_7c
    sget-object v1, Landroid/app/admin/PolicyUpdateReceiver;->TAG:Ljava/lang/String;

    const-string v3, "Received ACTION_DEVICE_POLICY_SET_RESULT"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-static {p2}, Landroid/app/admin/PolicyUpdateReceiver;->getPolicyKey(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 170
    .restart local v1    # "policyKey":Ljava/lang/String;
    invoke-direct {p0, v1}, Landroid/app/admin/PolicyUpdateReceiver;->shouldPropagatePolicy(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9b

    .line 171
    sget-object v3, Landroid/app/admin/PolicyUpdateReceiver;->TAG:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    goto :goto_ae

    .line 175
    :cond_9b
    invoke-static {p2}, Landroid/app/admin/PolicyUpdateReceiver;->getPolicyExtraBundle(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v3

    .line 176
    invoke-static {p2}, Landroid/app/admin/PolicyUpdateReceiver;->getTargetUser(Landroid/content/Intent;)Landroid/app/admin/TargetUser;

    move-result-object v4

    invoke-static {p2}, Landroid/app/admin/PolicyUpdateReceiver;->getPolicyChangedReason(Landroid/content/Intent;)Landroid/app/admin/PolicyUpdateResult;

    move-result-object v5

    .line 175
    move-object v0, p0

    move-object v2, v1

    move-object v1, p1

    .end local v1    # "policyKey":Ljava/lang/String;
    .restart local v2    # "policyKey":Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Landroid/app/admin/PolicyUpdateReceiver;->onPolicySetResult(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/admin/TargetUser;Landroid/app/admin/PolicyUpdateResult;)V

    .line 177
    nop

    .line 192
    .end local v2    # "policyKey":Ljava/lang/String;
    :goto_ae
    return-void

    nop

    :sswitch_data_b0
    .sparse-switch
        -0x68add275 -> :sswitch_1d
        -0x593bda9d -> :sswitch_13
    .end sparse-switch

    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_7c
        :pswitch_4a
    .end packed-switch
.end method
