.class public Lcom/android/internal/app/UnlaunchableAppActivity;
.super Landroid/app/Activity;
.source "UnlaunchableAppActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final blacklist EXTRA_UNLAUNCHABLE_REASON:Ljava/lang/String; = "unlaunchable_reason"

.field private static final blacklist TAG:Ljava/lang/String; = "UnlaunchableAppActivity"

.field private static final blacklist UNLAUNCHABLE_REASON_QUIET_MODE:I = 0x1


# instance fields
.field private blacklist mReason:I

.field private blacklist mTarget:Landroid/content/IntentSender;

.field private blacklist mTelecomManager:Landroid/telecom/TelecomManager;

.field private blacklist mUserId:I


# direct methods
.method public static synthetic blacklist $r8$lambda$eXS4Ll3R6ndWQp0eep2QsVSUcDY(Lcom/android/internal/app/UnlaunchableAppActivity;Landroid/os/UserManager;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/app/UnlaunchableAppActivity;->lambda$onClick$1(Landroid/os/UserManager;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$pUjxWnSQ8w4klAzYyTlp_PLQTAA(Lcom/android/internal/app/UnlaunchableAppActivity;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->lambda$getDialogTitle$0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static final blacklist createBaseIntent()Landroid/content/Intent;
    .registers 4

    .line 158
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 159
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/internal/app/UnlaunchableAppActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android"

    invoke-direct {v1, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 160
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 161
    return-object v0
.end method

.method public static blacklist createInQuietModeDialogIntent(I)Landroid/content/Intent;
    .registers 4
    .param p0, "userId"    # I

    .line 165
    invoke-static {}, Lcom/android/internal/app/UnlaunchableAppActivity;->createBaseIntent()Landroid/content/Intent;

    move-result-object v0

    .line 166
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "unlaunchable_reason"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 167
    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 168
    return-object v0
.end method

.method public static blacklist createInQuietModeDialogIntent(ILandroid/content/IntentSender;Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;
    .registers 6
    .param p0, "userId"    # I
    .param p1, "target"    # Landroid/content/IntentSender;
    .param p2, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .line 173
    invoke-static {p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->createInQuietModeDialogIntent(I)Landroid/content/Intent;

    move-result-object v0

    .line 174
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 175
    if-eqz p2, :cond_16

    .line 176
    invoke-virtual {p2}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    const-string v2, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    :cond_16
    return-object v0
.end method

.method private blacklist getDialogTitle()Ljava/lang/String;
    .registers 4

    .line 125
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/UnlaunchableAppActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/UnlaunchableAppActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/app/UnlaunchableAppActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/UnlaunchableAppActivity;)V

    const-string v2, "Core.UNLAUNCHABLE_APP_WORK_PAUSED_TITLE"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getDialogTitle$0()Ljava/lang/String;
    .registers 2

    .line 126
    const v0, 0x1040adf

    invoke-virtual {p0, v0}, Lcom/android/internal/app/UnlaunchableAppActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$onClick$1(Landroid/os/UserManager;)V
    .registers 5
    .param p1, "userManager"    # Landroid/os/UserManager;

    .line 142
    iget v0, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mUserId:I

    .line 143
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mTarget:Landroid/content/IntentSender;

    .line 142
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/UserManager;->requestQuietModeEnabled(ZLandroid/os/UserHandle;Landroid/content/IntentSender;)Z

    return-void
.end method

.method private blacklist launchEmergencyDialer()V
    .registers 3

    .line 150
    iget-object v0, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mTelecomManager:Landroid/telecom/TelecomManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->createLaunchEmergencyDialerIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 152
    const/high16 v1, 0x14800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 150
    invoke-virtual {p0, v0}, Lcom/android/internal/app/UnlaunchableAppActivity;->startActivity(Landroid/content/Intent;)V

    .line 155
    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 136
    iget v0, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mReason:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    .line 137
    return-void

    .line 139
    :cond_6
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1f

    .line 140
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 141
    .local v0, "userManager":Landroid/os/UserManager;
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/android/internal/app/UnlaunchableAppActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/app/UnlaunchableAppActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/app/UnlaunchableAppActivity;Landroid/os/UserManager;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .end local v0    # "userManager":Landroid/os/UserManager;
    goto :goto_26

    .line 144
    :cond_1f
    const/4 v0, -0x3

    if-ne p2, v0, :cond_26

    .line 145
    invoke-direct {p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->launchEmergencyDialer()V

    goto :goto_27

    .line 144
    :cond_26
    :goto_26
    nop

    .line 147
    :goto_27
    return-void
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .registers 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/app/UnlaunchableAppActivity;->requestWindowFeature(I)Z

    .line 64
    invoke-virtual {p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 65
    .local v1, "intent":Landroid/content/Intent;
    const-class v2, Landroid/telecom/TelecomManager;

    invoke-virtual {p0, v2}, Lcom/android/internal/app/UnlaunchableAppActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/TelecomManager;

    iput-object v2, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 66
    const-string/jumbo v2, "unlaunchable_reason"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mReason:I

    .line 67
    const-string v2, "android.intent.extra.user_handle"

    const/16 v4, -0x2710

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mUserId:I

    .line 68
    const-string v2, "android.intent.extra.INTENT"

    const-class v5, Landroid/content/IntentSender;

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/IntentSender;

    iput-object v2, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mTarget:Landroid/content/IntentSender;

    .line 70
    const-string v2, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "targetPackageName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unlaunchable activity for target package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UnlaunchableAppActivity"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v5

    .line 74
    .local v5, "userManager":Landroid/os/UserManager;
    iget v7, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mUserId:I

    if-ne v7, v4, :cond_7d

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid user id: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mUserId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ". Stopping."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->finish()V

    .line 77
    return-void

    .line 80
    :cond_7d
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    move-result v4

    if-eqz v4, :cond_b7

    .line 81
    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    move-result v4

    if-eqz v4, :cond_b7

    iget v4, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mUserId:I

    .line 82
    invoke-virtual {v5, v4}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v4

    if-nez v4, :cond_b7

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unlaunchable activity for target package "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " called for a non-managed-profile "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mUserId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->finish()V

    .line 86
    return-void

    .line 89
    :cond_b7
    iget v4, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mReason:I

    if-eq v4, v0, :cond_d7

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid unlaunchable type: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mReason:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->finish()V

    .line 92
    return-void

    .line 95
    :cond_d7
    const/4 v4, 0x0

    if-eqz v2, :cond_ee

    iget-object v6, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mTelecomManager:Landroid/telecom/TelecomManager;

    iget v7, p0, Lcom/android/internal/app/UnlaunchableAppActivity;->mUserId:I

    .line 97
    invoke-static {v7}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage(Landroid/os/UserHandle;)Ljava/lang/String;

    move-result-object v6

    .line 96
    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ee

    move v6, v0

    goto :goto_ef

    :cond_ee
    move v6, v4

    .line 100
    .local v6, "showEmergencyCallButton":Z
    :goto_ef
    if-eqz v6, :cond_100

    .line 101
    new-instance v7, Landroid/app/AlertDialog$Builder;

    const v8, 0x1030301

    invoke-direct {v7, p0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 102
    .local v7, "builder":Landroid/app/AlertDialog$Builder;
    const v8, 0x1040ade

    invoke-virtual {v7, v8, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_105

    .line 104
    .end local v7    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_100
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 106
    .restart local v7    # "builder":Landroid/app/AlertDialog$Builder;
    :goto_105
    invoke-direct {p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->getDialogTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 107
    invoke-virtual {v8, p0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 108
    const v9, 0x1040ae0

    invoke-virtual {v8, v9, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 109
    const/high16 v9, 0x1040000

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 111
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    .line 112
    .local v8, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v8}, Landroid/app/AlertDialog;->create()V

    .line 113
    if-eqz v6, :cond_145

    .line 114
    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const v11, 0x1020460

    invoke-virtual {v9, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v11, 0x1e

    invoke-virtual {v9, v4, v4, v4, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 115
    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v9, 0x102001b

    invoke-virtual {v4, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 119
    :cond_145
    invoke-virtual {p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Window;->setHideOverlayWindows(Z)V

    .line 120
    invoke-virtual {v8, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setFilterTouchesWhenObscured(Z)V

    .line 121
    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 122
    return-void
.end method

.method public whitelist onDismiss(Landroid/content/DialogInterface;)V
    .registers 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 131
    invoke-virtual {p0}, Lcom/android/internal/app/UnlaunchableAppActivity;->finish()V

    .line 132
    return-void
.end method
