.class public Lcom/android/internal/app/SetScreenLockDialogActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "SetScreenLockDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/SetScreenLockDialogActivity$LaunchReason;
    }
.end annotation


# static fields
.field public static final blacklist EXTRA_LAUNCH_REASON:Ljava/lang/String; = "launch_reason"

.field public static final blacklist EXTRA_ORIGIN_USER_ID:Ljava/lang/String; = "origin_user_id"

.field public static final blacklist LAUNCH_REASON_DISABLE_QUIET_MODE:I = 0x1

.field public static final blacklist LAUNCH_REASON_PRIVATE_SPACE_SETTINGS_ACCESS:I = 0x2

.field public static final blacklist LAUNCH_REASON_RESET_PRIVATE_SPACE_SETTINGS_ACCESS:I = 0x3

.field public static final blacklist LAUNCH_REASON_UNKNOWN:I = -0x1

.field private static final blacklist PACKAGE_NAME:Ljava/lang/String; = "android"

.field private static final blacklist TAG:Ljava/lang/String; = "SetScreenLockDialog"


# instance fields
.field private blacklist mOriginUserId:I

.field private blacklist mReason:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method public static blacklist createBaseIntent(I)Landroid/content/Intent;
    .registers 5
    .param p0, "launchReason"    # I

    .line 160
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 161
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    .line 162
    const-class v2, Lcom/android/internal/app/SetScreenLockDialogActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android"

    invoke-direct {v1, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 163
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 164
    const-string v1, "launch_reason"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 165
    return-object v0
.end method

.method private blacklist setLaunchUserSpecificMessage(Landroid/app/AlertDialog$Builder;)V
    .registers 6
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .line 140
    iget v0, p0, Lcom/android/internal/app/SetScreenLockDialogActivity;->mReason:I

    const/4 v1, 0x2

    const v2, 0x10408e4

    if-ne v0, v1, :cond_c

    .line 142
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 143
    return-void

    .line 144
    :cond_c
    iget v0, p0, Lcom/android/internal/app/SetScreenLockDialogActivity;->mReason:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_18

    .line 145
    const v0, 0x10408e3

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 146
    return-void

    .line 149
    :cond_18
    invoke-virtual {p0}, Lcom/android/internal/app/SetScreenLockDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 150
    .local v0, "userManager":Landroid/os/UserManager;
    if-eqz v0, :cond_37

    .line 151
    iget v1, p0, Lcom/android/internal/app/SetScreenLockDialogActivity;->mOriginUserId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 152
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_37

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isPrivateProfile()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 153
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 156
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_37
    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 126
    const/4 v0, -0x1

    if-ne p2, v0, :cond_16

    .line 127
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.BIOMETRIC_ENROLL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .local v0, "setNewLockIntent":Landroid/content/Intent;
    const-string v1, "android.provider.extra.BIOMETRIC_AUTHENTICATORS_ALLOWED"

    const v2, 0x8000

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 129
    invoke-virtual {p0, v0}, Lcom/android/internal/app/SetScreenLockDialogActivity;->startActivity(Landroid/content/Intent;)V

    .line 130
    .end local v0    # "setNewLockIntent":Landroid/content/Intent;
    goto :goto_19

    .line 131
    :cond_16
    invoke-virtual {p0}, Lcom/android/internal/app/SetScreenLockDialogActivity;->finish()V

    .line 133
    :goto_19
    return-void
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 78
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 80
    invoke-static {}, Landroid/multiuser/Flags;->showSetScreenLockDialog()Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 81
    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_bd

    .line 85
    :cond_17
    invoke-virtual {p0}, Lcom/android/internal/app/SetScreenLockDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 86
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "launch_reason"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/SetScreenLockDialogActivity;->mReason:I

    .line 87
    const-string v1, "origin_user_id"

    const/16 v3, -0x2710

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/SetScreenLockDialogActivity;->mOriginUserId:I

    .line 89
    iget v1, p0, Lcom/android/internal/app/SetScreenLockDialogActivity;->mReason:I

    const-string v3, "SetScreenLockDialog"

    if-ne v1, v2, :cond_50

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid launch reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/app/SetScreenLockDialogActivity;->mReason:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {p0}, Lcom/android/internal/app/SetScreenLockDialogActivity;->finish()V

    .line 92
    return-void

    .line 95
    :cond_50
    const-class v1, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v1}, Lcom/android/internal/app/SetScreenLockDialogActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 96
    .local v1, "km":Landroid/app/KeyguardManager;
    if-nez v1, :cond_60

    .line 97
    const-string v2, "Error fetching keyguard manager"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-void

    .line 100
    :cond_60
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 101
    const-string v2, "Closing the activity since screen lock is already set"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void

    .line 105
    :cond_6c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Launching screen lock setup dialog due to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/app/SetScreenLockDialogActivity;->mReason:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 107
    .local v3, "builder":Landroid/app/AlertDialog$Builder;
    const v4, 0x10409b4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 108
    invoke-virtual {v4, p0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 109
    const v5, 0x10409b3

    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 110
    const/high16 v5, 0x1040000

    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 111
    invoke-direct {p0, v3}, Lcom/android/internal/app/SetScreenLockDialogActivity;->setLaunchUserSpecificMessage(Landroid/app/AlertDialog$Builder;)V

    .line 112
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 113
    .local v4, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v4}, Landroid/app/AlertDialog;->create()V

    .line 114
    invoke-virtual {p0}, Lcom/android/internal/app/SetScreenLockDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/Window;->setHideOverlayWindows(Z)V

    .line 115
    invoke-virtual {v4, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setFilterTouchesWhenObscured(Z)V

    .line 116
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 117
    return-void

    .line 82
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "km":Landroid/app/KeyguardManager;
    .end local v3    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v4    # "dialog":Landroid/app/AlertDialog;
    :cond_bd
    :goto_bd
    invoke-virtual {p0}, Lcom/android/internal/app/SetScreenLockDialogActivity;->finish()V

    .line 83
    return-void
.end method

.method public whitelist onDismiss(Landroid/content/DialogInterface;)V
    .registers 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 121
    invoke-virtual {p0}, Lcom/android/internal/app/SetScreenLockDialogActivity;->finish()V

    .line 122
    return-void
.end method
