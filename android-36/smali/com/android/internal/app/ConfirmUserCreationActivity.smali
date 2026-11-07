.class public Lcom/android/internal/app/ConfirmUserCreationActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "ConfirmUserCreationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "CreateUser"

.field private static final blacklist USER_TYPE:Ljava/lang/String; = "android.os.usertype.full.SECONDARY"


# instance fields
.field private blacklist mAccountName:Ljava/lang/String;

.field private blacklist mAccountOptions:Landroid/os/PersistableBundle;

.field private blacklist mAccountType:Ljava/lang/String;

.field private blacklist mCanProceed:Z

.field private blacklist mIsFirstClick:Z

.field private blacklist mUserManager:Landroid/os/UserManager;

.field private blacklist mUserName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private blacklist checkUserCreationRequirements()Ljava/lang/String;
    .registers 12

    .line 91
    invoke-virtual {p0}, Lcom/android/internal/app/ConfirmUserCreationActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "callingPackage":Ljava/lang/String;
    if-eqz v0, :cond_d2

    .line 98
    :try_start_6
    invoke-virtual {p0}, Lcom/android/internal/app/ConfirmUserCreationActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_f} :catch_c9

    .line 102
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 105
    iget-object v3, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserManager:Landroid/os/UserManager;

    const-string v4, "no_add_user"

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_26

    iget-object v3, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserManager:Landroid/os/UserManager;

    .line 106
    invoke-virtual {v3}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v3

    if-nez v3, :cond_24

    goto :goto_26

    :cond_24
    move v3, v2

    goto :goto_27

    :cond_26
    :goto_26
    move v3, v4

    .line 108
    .local v3, "cantCreateUser":Z
    :goto_27
    iget-object v5, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserManager:Landroid/os/UserManager;

    const-string v6, "android.os.usertype.full.SECONDARY"

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->canAddMoreUsers(Ljava/lang/String;)Z

    move-result v5

    xor-int/2addr v5, v4

    .line 110
    .local v5, "cantCreateAnyMoreUsers":Z
    new-instance v6, Landroid/accounts/Account;

    iget-object v7, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountName:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountType:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .local v6, "account":Landroid/accounts/Account;
    iget-object v7, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountName:Ljava/lang/String;

    if-eqz v7, :cond_58

    iget-object v7, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountType:Ljava/lang/String;

    if-eqz v7, :cond_58

    .line 112
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/accounts/AccountManager;->someUserHasAccount(Landroid/accounts/Account;)Z

    move-result v7

    iget-object v8, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserManager:Landroid/os/UserManager;

    iget-object v9, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountName:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountType:Ljava/lang/String;

    .line 113
    invoke-virtual {v8, v9, v10}, Landroid/os/UserManager;->someUserHasSeedAccount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    or-int/2addr v7, v8

    if-eqz v7, :cond_58

    move v2, v4

    goto :goto_59

    :cond_58
    nop

    .line 114
    .local v2, "accountExists":Z
    :goto_59
    iput-boolean v4, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mCanProceed:Z

    .line 115
    invoke-virtual {p0}, Lcom/android/internal/app/ConfirmUserCreationActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 116
    .local v7, "appName":Ljava/lang/String;
    const/4 v8, 0x0

    if-eqz v3, :cond_6e

    .line 117
    invoke-virtual {p0, v4}, Lcom/android/internal/app/ConfirmUserCreationActivity;->setResult(I)V

    .line 118
    return-object v8

    .line 119
    :cond_6e
    iget-object v9, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserName:Ljava/lang/String;

    const/16 v10, 0x64

    invoke-direct {p0, v9, v10}, Lcom/android/internal/app/ConfirmUserCreationActivity;->isUserPropertyWithinLimit(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_be

    iget-object v9, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountName:Ljava/lang/String;

    .line 120
    const/16 v10, 0x1f4

    invoke-direct {p0, v9, v10}, Lcom/android/internal/app/ConfirmUserCreationActivity;->isUserPropertyWithinLimit(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_be

    iget-object v9, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountType:Ljava/lang/String;

    .line 121
    invoke-direct {p0, v9, v10}, Lcom/android/internal/app/ConfirmUserCreationActivity;->isUserPropertyWithinLimit(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_be

    iget-object v9, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountOptions:Landroid/os/PersistableBundle;

    if-eqz v9, :cond_99

    iget-object v9, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountOptions:Landroid/os/PersistableBundle;

    .line 122
    const/16 v10, 0x3e8

    invoke-virtual {v9, v10}, Landroid/os/PersistableBundle;->isBundleContentsWithinLengthLimit(I)Z

    move-result v9

    if-nez v9, :cond_99

    goto :goto_be

    .line 127
    :cond_99
    if-eqz v5, :cond_a0

    .line 128
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/android/internal/app/ConfirmUserCreationActivity;->setResult(I)V

    .line 129
    return-object v8

    .line 130
    :cond_a0
    if-eqz v2, :cond_b0

    .line 131
    iget-object v4, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountName:Ljava/lang/String;

    filled-new-array {v7, v4}, [Ljava/lang/Object;

    move-result-object v4

    const v8, 0x1040a7b

    invoke-virtual {p0, v8, v4}, Lcom/android/internal/app/ConfirmUserCreationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "message":Ljava/lang/String;
    goto :goto_bd

    .line 133
    .end local v4    # "message":Ljava/lang/String;
    :cond_b0
    iget-object v4, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountName:Ljava/lang/String;

    filled-new-array {v7, v4}, [Ljava/lang/Object;

    move-result-object v4

    const v8, 0x1040a7c

    invoke-virtual {p0, v8, v4}, Lcom/android/internal/app/ConfirmUserCreationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 135
    .restart local v4    # "message":Ljava/lang/String;
    :goto_bd
    return-object v4

    .line 124
    .end local v4    # "message":Ljava/lang/String;
    :cond_be
    :goto_be
    invoke-virtual {p0, v4}, Lcom/android/internal/app/ConfirmUserCreationActivity;->setResult(I)V

    .line 125
    const-string v4, "CreateUser"

    const-string v9, "User properties must not exceed their character limits"

    invoke-static {v4, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-object v8

    .line 99
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "accountExists":Z
    .end local v3    # "cantCreateUser":Z
    .end local v5    # "cantCreateAnyMoreUsers":Z
    .end local v6    # "account":Landroid/accounts/Account;
    .end local v7    # "appName":Ljava/lang/String;
    :catch_c9
    move-exception v1

    .line 100
    .local v1, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Cannot find the calling package"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 93
    .end local v1    # "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_d2
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "User Creation intent must be launched with startActivityForResult"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist isUserPropertyWithinLimit(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "limit"    # I

    .line 157
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p2, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method


# virtual methods
.method public whitelist onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 140
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ConfirmUserCreationActivity;->setResult(I)V

    .line 141
    const/4 v1, -0x1

    if-ne p2, v1, :cond_3d

    iget-boolean v2, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mCanProceed:Z

    if-eqz v2, :cond_3d

    iget-boolean v2, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mIsFirstClick:Z

    if-eqz v2, :cond_3d

    .line 142
    iput-boolean v0, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mIsFirstClick:Z

    .line 143
    const-string v2, "Ok, creating user"

    const-string v3, "CreateUser"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v2, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserManager:Landroid/os/UserManager;

    iget-object v4, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserName:Ljava/lang/String;

    const-string v5, "android.os.usertype.full.SECONDARY"

    invoke-virtual {v2, v4, v5, v0}, Landroid/os/UserManager;->createUser(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 145
    .local v0, "user":Landroid/content/pm/UserInfo;
    if-nez v0, :cond_2d

    .line 146
    const-string v1, "Couldn\'t create user"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {p0}, Lcom/android/internal/app/ConfirmUserCreationActivity;->finish()V

    .line 148
    return-void

    .line 150
    :cond_2d
    iget-object v2, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserManager:Landroid/os/UserManager;

    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    iget-object v4, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountType:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountOptions:Landroid/os/PersistableBundle;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/os/UserManager;->setSeedAccountData(ILjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 151
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ConfirmUserCreationActivity;->setResult(I)V

    .line 153
    .end local v0    # "user":Landroid/content/pm/UserInfo;
    :cond_3d
    invoke-virtual {p0}, Lcom/android/internal/app/ConfirmUserCreationActivity;->finish()V

    .line 154
    return-void
.end method

.method public whitelist onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 57
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/internal/app/ConfirmUserCreationActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addSystemFlags(I)V

    .line 61
    invoke-virtual {p0}, Lcom/android/internal/app/ConfirmUserCreationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 62
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.os.extra.USER_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserName:Ljava/lang/String;

    .line 63
    const-string v1, "android.os.extra.USER_ACCOUNT_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountName:Ljava/lang/String;

    .line 64
    const-string v1, "android.os.extra.USER_ACCOUNT_TYPE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountType:Ljava/lang/String;

    .line 65
    const-class v1, Landroid/os/PersistableBundle;

    .line 66
    const-string v2, "android.os.extra.USER_ACCOUNT_OPTIONS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersistableBundle;

    iput-object v1, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountOptions:Landroid/os/PersistableBundle;

    .line 68
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ConfirmUserCreationActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserManager:Landroid/os/UserManager;

    .line 70
    invoke-direct {p0}, Lcom/android/internal/app/ConfirmUserCreationActivity;->checkUserCreationRequirements()Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "message":Ljava/lang/String;
    if-nez v1, :cond_48

    .line 73
    invoke-virtual {p0}, Lcom/android/internal/app/ConfirmUserCreationActivity;->finish()V

    .line 74
    return-void

    .line 76
    :cond_48
    iget-object v2, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 77
    .local v2, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    iput-object v1, v2, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 78
    const v3, 0x104000a

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ConfirmUserCreationActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 79
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 82
    iget-boolean v3, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mCanProceed:Z

    if-eqz v3, :cond_65

    .line 83
    const/high16 v3, 0x1040000

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ConfirmUserCreationActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 84
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 86
    :cond_65
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mIsFirstClick:Z

    .line 87
    invoke-virtual {p0}, Lcom/android/internal/app/ConfirmUserCreationActivity;->setupAlert()V

    .line 88
    return-void
.end method
