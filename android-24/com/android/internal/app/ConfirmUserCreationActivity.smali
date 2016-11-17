.class public Lcom/android/internal/app/ConfirmUserCreationActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "ConfirmUserCreationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "CreateUser"


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mAccountOptions:Landroid/os/PersistableBundle;

.field private mAccountType:Ljava/lang/String;

.field private mCanProceed:Z

.field private mUserManager:Landroid/os/UserManager;

.field private mUserName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    #@3
    return-void
.end method

.method private checkUserCreationRequirements()Ljava/lang/String;
    .locals 13

    #@0
    .prologue
    .line 85
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    #@3
    move-result-object v4

    #@4
    .line 86
    .local v4, "callingPackage":Ljava/lang/String;
    if-nez v4, :cond_0

    #@6
    .line 87
    new-instance v9, Ljava/lang/SecurityException;

    #@8
    .line 88
    const-string/jumbo v10, "User Creation intent must be launched with startActivityForResult"

    #@b
    .line 87
    invoke-direct {v9, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@e
    throw v9

    #@f
    .line 92
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    #@12
    move-result-object v9

    #@13
    const/4 v10, 0x0

    #@14
    invoke-virtual {v9, v4, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    move-result-object v2

    #@18
    .line 99
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v9, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserManager:Landroid/os/UserManager;

    #@1a
    const-string/jumbo v10, "no_add_user"

    #@1d
    invoke-virtual {v9, v10}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    #@20
    move-result v9

    #@21
    if-nez v9, :cond_1

    #@23
    .line 100
    iget-object v9, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserManager:Landroid/os/UserManager;

    #@25
    invoke-virtual {v9}, Landroid/os/UserManager;->isAdminUser()Z

    #@28
    move-result v9

    #@29
    if-eqz v9, :cond_2

    #@2b
    const/4 v6, 0x0

    #@2c
    .line 102
    .local v6, "cantCreateUser":Z
    :goto_0
    iget-object v9, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserManager:Landroid/os/UserManager;

    #@2e
    invoke-virtual {v9}, Landroid/os/UserManager;->canAddMoreUsers()Z

    #@31
    move-result v9

    #@32
    if-eqz v9, :cond_3

    #@34
    const/4 v5, 0x0

    #@35
    .line 104
    .local v5, "cantCreateAnyMoreUsers":Z
    :goto_1
    new-instance v0, Landroid/accounts/Account;

    #@37
    iget-object v9, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountName:Ljava/lang/String;

    #@39
    iget-object v10, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountType:Ljava/lang/String;

    #@3b
    invoke-direct {v0, v9, v10}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@3e
    .line 105
    .local v0, "account":Landroid/accounts/Account;
    iget-object v9, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountName:Ljava/lang/String;

    #@40
    if-eqz v9, :cond_4

    #@42
    iget-object v9, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountType:Ljava/lang/String;

    #@44
    if-eqz v9, :cond_4

    #@46
    .line 106
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    #@49
    move-result-object v9

    #@4a
    invoke-virtual {v9, v0}, Landroid/accounts/AccountManager;->someUserHasAccount(Landroid/accounts/Account;)Z

    #@4d
    move-result v9

    #@4e
    .line 107
    iget-object v10, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserManager:Landroid/os/UserManager;

    #@50
    iget-object v11, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountName:Ljava/lang/String;

    #@52
    iget-object v12, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountType:Ljava/lang/String;

    #@54
    invoke-virtual {v10, v11, v12}, Landroid/os/UserManager;->someUserHasSeedAccount(Ljava/lang/String;Ljava/lang/String;)Z

    #@57
    move-result v10

    #@58
    .line 106
    or-int v1, v9, v10

    #@5a
    .line 108
    :goto_2
    const/4 v9, 0x1

    #@5b
    iput-boolean v9, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mCanProceed:Z

    #@5d
    .line 109
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    #@60
    move-result-object v9

    #@61
    invoke-virtual {v2, v9}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@64
    move-result-object v9

    #@65
    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@68
    move-result-object v3

    #@69
    .line 110
    .local v3, "appName":Ljava/lang/String;
    if-eqz v6, :cond_5

    #@6b
    .line 111
    const/4 v9, 0x1

    #@6c
    invoke-virtual {p0, v9}, Landroid/app/Activity;->setResult(I)V

    #@6f
    .line 112
    const/4 v9, 0x0

    #@70
    return-object v9

    #@71
    .line 93
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "appName":Ljava/lang/String;
    .end local v5    # "cantCreateAnyMoreUsers":Z
    .end local v6    # "cantCreateUser":Z
    :catch_0
    move-exception v8

    #@72
    .line 94
    .local v8, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v9, Ljava/lang/SecurityException;

    #@74
    .line 95
    const-string/jumbo v10, "Cannot find the calling package"

    #@77
    .line 94
    invoke-direct {v9, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@7a
    throw v9

    #@7b
    .line 99
    .end local v8    # "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    const/4 v6, 0x1

    #@7c
    .restart local v6    # "cantCreateUser":Z
    goto :goto_0

    #@7d
    .line 100
    .end local v6    # "cantCreateUser":Z
    :cond_2
    const/4 v6, 0x1

    #@7e
    .restart local v6    # "cantCreateUser":Z
    goto :goto_0

    #@7f
    .line 102
    :cond_3
    const/4 v5, 0x1

    #@80
    .restart local v5    # "cantCreateAnyMoreUsers":Z
    goto :goto_1

    #@81
    .line 105
    .restart local v0    # "account":Landroid/accounts/Account;
    :cond_4
    const/4 v1, 0x0

    #@82
    .local v1, "accountExists":Z
    goto :goto_2

    #@83
    .line 113
    .end local v1    # "accountExists":Z
    .restart local v3    # "appName":Ljava/lang/String;
    :cond_5
    if-eqz v5, :cond_6

    #@85
    .line 114
    const/4 v9, 0x2

    #@86
    invoke-virtual {p0, v9}, Landroid/app/Activity;->setResult(I)V

    #@89
    .line 115
    const/4 v9, 0x0

    #@8a
    return-object v9

    #@8b
    .line 116
    :cond_6
    if-eqz v1, :cond_7

    #@8d
    .line 117
    const/4 v9, 0x2

    #@8e
    new-array v9, v9, [Ljava/lang/Object;

    #@90
    const/4 v10, 0x0

    #@91
    aput-object v3, v9, v10

    #@93
    iget-object v10, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountName:Ljava/lang/String;

    #@95
    const/4 v11, 0x1

    #@96
    aput-object v10, v9, v11

    #@98
    const v10, 0x10405d1

    #@9b
    invoke-virtual {p0, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@9e
    move-result-object v7

    #@9f
    .line 121
    .local v7, "message":Ljava/lang/String;
    :goto_3
    return-object v7

    #@a0
    .line 119
    .end local v7    # "message":Ljava/lang/String;
    :cond_7
    const/4 v9, 0x2

    #@a1
    new-array v9, v9, [Ljava/lang/Object;

    #@a3
    const/4 v10, 0x0

    #@a4
    aput-object v3, v9, v10

    #@a6
    iget-object v10, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountName:Ljava/lang/String;

    #@a8
    const/4 v11, 0x1

    #@a9
    aput-object v10, v9, v11

    #@ab
    const v10, 0x10405d2

    #@ae
    invoke-virtual {p0, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@b1
    move-result-object v7

    #@b2
    .restart local v7    # "message":Ljava/lang/String;
    goto :goto_3
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v6, -0x1

    #@2
    .line 126
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setResult(I)V

    #@5
    .line 127
    if-ne p2, v6, :cond_1

    #@7
    iget-boolean v1, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mCanProceed:Z

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 128
    const-string/jumbo v1, "CreateUser"

    #@e
    const-string/jumbo v2, "Ok, creating user"

    #@11
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    .line 129
    iget-object v1, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserManager:Landroid/os/UserManager;

    #@16
    iget-object v2, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserName:Ljava/lang/String;

    #@18
    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    #@1b
    move-result-object v0

    #@1c
    .line 130
    .local v0, "user":Landroid/content/pm/UserInfo;
    if-nez v0, :cond_0

    #@1e
    .line 131
    const-string/jumbo v1, "CreateUser"

    #@21
    const-string/jumbo v2, "Couldn\'t create user"

    #@24
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 132
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    #@2a
    .line 133
    return-void

    #@2b
    .line 135
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserManager:Landroid/os/UserManager;

    #@2d
    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    #@2f
    iget-object v3, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountName:Ljava/lang/String;

    #@31
    iget-object v4, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountType:Ljava/lang/String;

    #@33
    iget-object v5, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountOptions:Landroid/os/PersistableBundle;

    #@35
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/UserManager;->setSeedAccountData(ILjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V

    #@38
    .line 136
    invoke-virtual {p0, v6}, Landroid/app/Activity;->setResult(I)V

    #@3b
    .line 138
    .end local v0    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    #@3e
    .line 125
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    #@3
    .line 56
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    #@6
    move-result-object v1

    #@7
    .line 57
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "android.os.extra.USER_NAME"

    #@a
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v3

    #@e
    iput-object v3, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserName:Ljava/lang/String;

    #@10
    .line 58
    const-string/jumbo v3, "android.os.extra.USER_ACCOUNT_NAME"

    #@13
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    iput-object v3, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountName:Ljava/lang/String;

    #@19
    .line 59
    const-string/jumbo v3, "android.os.extra.USER_ACCOUNT_TYPE"

    #@1c
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    iput-object v3, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountType:Ljava/lang/String;

    #@22
    .line 61
    const-string/jumbo v3, "android.os.extra.USER_ACCOUNT_OPTIONS"

    #@25
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@28
    move-result-object v3

    #@29
    check-cast v3, Landroid/os/PersistableBundle;

    #@2b
    .line 60
    iput-object v3, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountOptions:Landroid/os/PersistableBundle;

    #@2d
    .line 63
    const-class v3, Landroid/os/UserManager;

    #@2f
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@32
    move-result-object v3

    #@33
    check-cast v3, Landroid/os/UserManager;

    #@35
    iput-object v3, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserManager:Landroid/os/UserManager;

    #@37
    .line 65
    invoke-direct {p0}, Lcom/android/internal/app/ConfirmUserCreationActivity;->checkUserCreationRequirements()Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    .line 67
    .local v2, "message":Ljava/lang/String;
    if-nez v2, :cond_0

    #@3d
    .line 68
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    #@40
    .line 69
    return-void

    #@41
    .line 71
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    #@43
    .line 72
    .local v0, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    #@45
    .line 73
    const v3, 0x104000a

    #@48
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@4b
    move-result-object v3

    #@4c
    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    #@4e
    .line 74
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    #@50
    .line 77
    iget-boolean v3, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mCanProceed:Z

    #@52
    if-eqz v3, :cond_1

    #@54
    .line 78
    const/high16 v3, 0x1040000

    #@56
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@59
    move-result-object v3

    #@5a
    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    #@5c
    .line 79
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    #@5e
    .line 81
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    #@61
    .line 53
    return-void
.end method
