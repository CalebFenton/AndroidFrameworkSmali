.class public Landroid/accounts/GrantCredentialsPermissionActivity;
.super Landroid/app/Activity;
.source "GrantCredentialsPermissionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final EXTRAS_ACCOUNT:Ljava/lang/String; = "account"

.field public static final EXTRAS_ACCOUNT_TYPE_LABEL:Ljava/lang/String; = "accountTypeLabel"

.field public static final EXTRAS_AUTH_TOKEN_LABEL:Ljava/lang/String; = "authTokenLabel"

.field public static final EXTRAS_AUTH_TOKEN_TYPE:Ljava/lang/String; = "authTokenType"

.field public static final EXTRAS_PACKAGES:Ljava/lang/String; = "application"

.field public static final EXTRAS_REQUESTING_UID:Ljava/lang/String; = "uid"

.field public static final EXTRAS_RESPONSE:Ljava/lang/String; = "response"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAuthTokenType:Ljava/lang/String;

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mResultBundle:Landroid/os/Bundle;

.field private mUid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    #@3
    .line 47
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mResultBundle:Landroid/os/Bundle;

    #@6
    .line 36
    return-void
.end method

.method private getAccountLabel(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 8
    .param p1, "account"    # Landroid/accounts/Account;

    #@0
    .prologue
    .line 135
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    #@3
    move-result-object v6

    #@4
    invoke-virtual {v6}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    #@7
    move-result-object v1

    #@8
    .line 136
    .local v1, "authenticatorTypes":[Landroid/accounts/AuthenticatorDescription;
    const/4 v5, 0x0

    #@9
    .local v5, "i":I
    array-length v0, v1

    #@a
    .local v0, "N":I
    :goto_0
    if-ge v5, v0, :cond_1

    #@c
    .line 137
    aget-object v2, v1, v5

    #@e
    .line 138
    .local v2, "desc":Landroid/accounts/AuthenticatorDescription;
    iget-object v6, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    #@10
    iget-object v7, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@12
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v6

    #@16
    if-eqz v6, :cond_0

    #@18
    .line 140
    :try_start_0
    iget-object v6, v2, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    #@1a
    const/4 v7, 0x0

    #@1b
    invoke-virtual {p0, v6, v7}, Landroid/accounts/GrantCredentialsPermissionActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    #@1e
    move-result-object v6

    #@1f
    iget v7, v2, Landroid/accounts/AuthenticatorDescription;->labelId:I

    #@21
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    move-result-object v6

    #@25
    return-object v6

    #@26
    .line 143
    :catch_0
    move-exception v4

    #@27
    .line 144
    .local v4, "e":Landroid/content/res/Resources$NotFoundException;
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@29
    return-object v6

    #@2a
    .line 141
    .end local v4    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v3

    #@2b
    .line 142
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@2d
    return-object v6

    #@2e
    .line 136
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    #@30
    goto :goto_0

    #@31
    .line 148
    .end local v2    # "desc":Landroid/accounts/AuthenticatorDescription;
    :cond_1
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@33
    return-object v6
.end method

.method private newPackageView(Ljava/lang/String;)Landroid/view/View;
    .locals 4
    .param p1, "packageLabel"    # Ljava/lang/String;

    #@0
    .prologue
    .line 152
    iget-object v1, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mInflater:Landroid/view/LayoutInflater;

    #@2
    const v2, 0x1090099

    #@5
    const/4 v3, 0x0

    #@6
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@9
    move-result-object v0

    #@a
    .line 153
    .local v0, "view":Landroid/view/View;
    const v1, 0x1020387

    #@d
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Landroid/widget/TextView;

    #@13
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@16
    .line 154
    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 4

    #@0
    .prologue
    .line 184
    invoke-virtual {p0}, Landroid/accounts/GrantCredentialsPermissionActivity;->getIntent()Landroid/content/Intent;

    #@3
    move-result-object v0

    #@4
    .line 185
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "response"

    #@7
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Landroid/accounts/AccountAuthenticatorResponse;

    #@d
    .line 186
    .local v1, "response":Landroid/accounts/AccountAuthenticatorResponse;
    if-eqz v1, :cond_0

    #@f
    .line 188
    iget-object v2, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mResultBundle:Landroid/os/Bundle;

    #@11
    if-eqz v2, :cond_1

    #@13
    .line 189
    iget-object v2, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mResultBundle:Landroid/os/Bundle;

    #@15
    invoke-virtual {v1, v2}, Landroid/accounts/AccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V

    #@18
    .line 194
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    #@1b
    .line 183
    return-void

    #@1c
    .line 191
    :cond_1
    const-string/jumbo v2, "canceled"

    #@1f
    const/4 v3, 0x4

    #@20
    invoke-virtual {v1, v3, v2}, Landroid/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    #@23
    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 158
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    #@5
    move-result v1

    #@6
    packed-switch v1, :pswitch_data_0

    #@9
    .line 172
    :goto_0
    invoke-virtual {p0}, Landroid/accounts/GrantCredentialsPermissionActivity;->finish()V

    #@c
    .line 157
    return-void

    #@d
    .line 160
    :pswitch_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    #@10
    move-result-object v1

    #@11
    iget-object v2, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mAccount:Landroid/accounts/Account;

    #@13
    iget-object v3, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mAuthTokenType:Ljava/lang/String;

    #@15
    iget v4, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mUid:I

    #@17
    invoke-virtual {v1, v2, v3, v4, v6}, Landroid/accounts/AccountManager;->updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V

    #@1a
    .line 161
    new-instance v0, Landroid/content/Intent;

    #@1c
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@1f
    .line 162
    .local v0, "result":Landroid/content/Intent;
    const-string/jumbo v1, "retry"

    #@22
    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@25
    .line 163
    const/4 v1, -0x1

    #@26
    invoke-virtual {p0, v1, v0}, Landroid/accounts/GrantCredentialsPermissionActivity;->setResult(ILandroid/content/Intent;)V

    #@29
    .line 164
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {p0, v1}, Landroid/accounts/GrantCredentialsPermissionActivity;->setAccountAuthenticatorResult(Landroid/os/Bundle;)V

    #@30
    goto :goto_0

    #@31
    .line 168
    .end local v0    # "result":Landroid/content/Intent;
    :pswitch_1
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    #@34
    move-result-object v1

    #@35
    iget-object v2, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mAccount:Landroid/accounts/Account;

    #@37
    iget-object v3, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mAuthTokenType:Ljava/lang/String;

    #@39
    iget v4, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mUid:I

    #@3b
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/accounts/AccountManager;->updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V

    #@3e
    .line 169
    invoke-virtual {p0, v5}, Landroid/accounts/GrantCredentialsPermissionActivity;->setResult(I)V

    #@41
    goto :goto_0

    #@42
    .line 158
    :pswitch_data_0
    .packed-switch 0x1020337
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 51
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    #@3
    .line 52
    const v11, 0x1090064

    #@6
    invoke-virtual {p0, v11}, Landroid/accounts/GrantCredentialsPermissionActivity;->setContentView(I)V

    #@9
    .line 53
    const v11, 0x1040422

    #@c
    invoke-virtual {p0, v11}, Landroid/accounts/GrantCredentialsPermissionActivity;->setTitle(I)V

    #@f
    .line 55
    const-string/jumbo v11, "layout_inflater"

    #@12
    invoke-virtual {p0, v11}, Landroid/accounts/GrantCredentialsPermissionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@15
    move-result-object v11

    #@16
    check-cast v11, Landroid/view/LayoutInflater;

    #@18
    iput-object v11, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mInflater:Landroid/view/LayoutInflater;

    #@1a
    .line 57
    invoke-virtual {p0}, Landroid/accounts/GrantCredentialsPermissionActivity;->getIntent()Landroid/content/Intent;

    #@1d
    move-result-object v11

    #@1e
    invoke-virtual {v11}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    #@21
    move-result-object v5

    #@22
    .line 58
    .local v5, "extras":Landroid/os/Bundle;
    if-nez v5, :cond_0

    #@24
    .line 60
    const/4 v11, 0x0

    #@25
    invoke-virtual {p0, v11}, Landroid/accounts/GrantCredentialsPermissionActivity;->setResult(I)V

    #@28
    .line 61
    invoke-virtual {p0}, Landroid/accounts/GrantCredentialsPermissionActivity;->finish()V

    #@2b
    .line 62
    return-void

    #@2c
    .line 66
    :cond_0
    const-string/jumbo v11, "account"

    #@2f
    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@32
    move-result-object v11

    #@33
    check-cast v11, Landroid/accounts/Account;

    #@35
    iput-object v11, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mAccount:Landroid/accounts/Account;

    #@37
    .line 67
    const-string/jumbo v11, "authTokenType"

    #@3a
    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@3d
    move-result-object v11

    #@3e
    iput-object v11, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mAuthTokenType:Ljava/lang/String;

    #@40
    .line 68
    const-string/jumbo v11, "uid"

    #@43
    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@46
    move-result v11

    #@47
    iput v11, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mUid:I

    #@49
    .line 69
    invoke-virtual {p0}, Landroid/accounts/GrantCredentialsPermissionActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    #@4c
    move-result-object v10

    #@4d
    .line 70
    .local v10, "pm":Landroid/content/pm/PackageManager;
    iget v11, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mUid:I

    #@4f
    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    #@52
    move-result-object v7

    #@53
    .line 72
    .local v7, "packages":[Ljava/lang/String;
    iget-object v11, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mAccount:Landroid/accounts/Account;

    #@55
    if-eqz v11, :cond_1

    #@57
    iget-object v11, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mAuthTokenType:Ljava/lang/String;

    #@59
    if-nez v11, :cond_2

    #@5b
    .line 74
    :cond_1
    const/4 v11, 0x0

    #@5c
    invoke-virtual {p0, v11}, Landroid/accounts/GrantCredentialsPermissionActivity;->setResult(I)V

    #@5f
    .line 75
    invoke-virtual {p0}, Landroid/accounts/GrantCredentialsPermissionActivity;->finish()V

    #@62
    .line 76
    return-void

    #@63
    .line 72
    :cond_2
    if-eqz v7, :cond_1

    #@65
    .line 81
    :try_start_0
    iget-object v11, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mAccount:Landroid/accounts/Account;

    #@67
    invoke-direct {p0, v11}, Landroid/accounts/GrantCredentialsPermissionActivity;->getAccountLabel(Landroid/accounts/Account;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@6a
    move-result-object v0

    #@6b
    .line 89
    .local v0, "accountTypeLabel":Ljava/lang/String;
    const v11, 0x1020334

    #@6e
    invoke-virtual {p0, v11}, Landroid/accounts/GrantCredentialsPermissionActivity;->findViewById(I)Landroid/view/View;

    #@71
    move-result-object v1

    #@72
    check-cast v1, Landroid/widget/TextView;

    #@74
    .line 90
    .local v1, "authTokenTypeView":Landroid/widget/TextView;
    const/16 v11, 0x8

    #@76
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    #@79
    .line 92
    new-instance v2, Landroid/accounts/GrantCredentialsPermissionActivity$1;

    #@7b
    invoke-direct {v2, p0, v1}, Landroid/accounts/GrantCredentialsPermissionActivity$1;-><init>(Landroid/accounts/GrantCredentialsPermissionActivity;Landroid/widget/TextView;)V

    #@7e
    .line 112
    .local v2, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/String;>;"
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    #@81
    move-result-object v11

    #@82
    iget-object v12, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mAccount:Landroid/accounts/Account;

    #@84
    iget-object v12, v12, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@86
    iget-object v13, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mAuthTokenType:Ljava/lang/String;

    #@88
    const/4 v14, 0x0

    #@89
    invoke-virtual {v11, v12, v13, v2, v14}, Landroid/accounts/AccountManager;->getAuthTokenLabel(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    #@8c
    .line 114
    const v11, 0x1020338

    #@8f
    invoke-virtual {p0, v11}, Landroid/accounts/GrantCredentialsPermissionActivity;->findViewById(I)Landroid/view/View;

    #@92
    move-result-object v11

    #@93
    invoke-virtual {v11, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@96
    .line 115
    const v11, 0x1020337

    #@99
    invoke-virtual {p0, v11}, Landroid/accounts/GrantCredentialsPermissionActivity;->findViewById(I)Landroid/view/View;

    #@9c
    move-result-object v11

    #@9d
    invoke-virtual {v11, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@a0
    .line 117
    const v11, 0x1020330

    #@a3
    invoke-virtual {p0, v11}, Landroid/accounts/GrantCredentialsPermissionActivity;->findViewById(I)Landroid/view/View;

    #@a6
    move-result-object v8

    #@a7
    check-cast v8, Landroid/widget/LinearLayout;

    #@a9
    .line 119
    .local v8, "packagesListView":Landroid/widget/LinearLayout;
    const/4 v11, 0x0

    #@aa
    array-length v12, v7

    #@ab
    :goto_0
    if-ge v11, v12, :cond_3

    #@ad
    aget-object v9, v7, v11

    #@af
    .line 122
    .local v9, "pkg":Ljava/lang/String;
    const/4 v13, 0x0

    #@b0
    :try_start_1
    invoke-virtual {v10, v9, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    #@b3
    move-result-object v13

    #@b4
    invoke-virtual {v10, v13}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    #@b7
    move-result-object v13

    #@b8
    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    #@bb
    move-result-object v6

    #@bc
    .line 126
    .local v6, "packageLabel":Ljava/lang/String;
    :goto_1
    invoke-direct {p0, v6}, Landroid/accounts/GrantCredentialsPermissionActivity;->newPackageView(Ljava/lang/String;)Landroid/view/View;

    #@bf
    move-result-object v13

    #@c0
    invoke-virtual {v8, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    #@c3
    .line 119
    add-int/lit8 v11, v11, 0x1

    #@c5
    goto :goto_0

    #@c6
    .line 82
    .end local v0    # "accountTypeLabel":Ljava/lang/String;
    .end local v1    # "authTokenTypeView":Landroid/widget/TextView;
    .end local v2    # "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/String;>;"
    .end local v6    # "packageLabel":Ljava/lang/String;
    .end local v8    # "packagesListView":Landroid/widget/LinearLayout;
    .end local v9    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v4

    #@c7
    .line 84
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    const/4 v11, 0x0

    #@c8
    invoke-virtual {p0, v11}, Landroid/accounts/GrantCredentialsPermissionActivity;->setResult(I)V

    #@cb
    .line 85
    invoke-virtual {p0}, Landroid/accounts/GrantCredentialsPermissionActivity;->finish()V

    #@ce
    .line 86
    return-void

    #@cf
    .line 123
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "accountTypeLabel":Ljava/lang/String;
    .restart local v1    # "authTokenTypeView":Landroid/widget/TextView;
    .restart local v2    # "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/String;>;"
    .restart local v8    # "packagesListView":Landroid/widget/LinearLayout;
    .restart local v9    # "pkg":Ljava/lang/String;
    :catch_1
    move-exception v3

    #@d0
    .line 124
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v6, v9

    #@d1
    .restart local v6    # "packageLabel":Ljava/lang/String;
    goto :goto_1

    #@d2
    .line 129
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6    # "packageLabel":Ljava/lang/String;
    .end local v9    # "pkg":Ljava/lang/String;
    :cond_3
    const v11, 0x1020333

    #@d5
    invoke-virtual {p0, v11}, Landroid/accounts/GrantCredentialsPermissionActivity;->findViewById(I)Landroid/view/View;

    #@d8
    move-result-object v11

    #@d9
    check-cast v11, Landroid/widget/TextView;

    #@db
    iget-object v12, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mAccount:Landroid/accounts/Account;

    #@dd
    iget-object v12, v12, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@df
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@e2
    .line 130
    const v11, 0x1020332

    #@e5
    invoke-virtual {p0, v11}, Landroid/accounts/GrantCredentialsPermissionActivity;->findViewById(I)Landroid/view/View;

    #@e8
    move-result-object v11

    #@e9
    check-cast v11, Landroid/widget/TextView;

    #@eb
    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@ee
    .line 50
    return-void
.end method

.method public final setAccountAuthenticatorResult(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 176
    iput-object p1, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mResultBundle:Landroid/os/Bundle;

    #@2
    .line 175
    return-void
.end method
