.class public Landroid/accounts/ChooseAccountActivity;
.super Landroid/app/Activity;
.source "ChooseAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accounts/ChooseAccountActivity$AccountInfo;,
        Landroid/accounts/ChooseAccountActivity$ViewHolder;,
        Landroid/accounts/ChooseAccountActivity$AccountArrayAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AccountManager"


# instance fields
.field private mAccountManagerResponse:Landroid/accounts/AccountManagerResponse;

.field private mAccounts:[Landroid/os/Parcelable;

.field private mResult:Landroid/os/Bundle;

.field private mTypeToAuthDescription:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    #@4
    .line 45
    iput-object v0, p0, Landroid/accounts/ChooseAccountActivity;->mAccounts:[Landroid/os/Parcelable;

    #@6
    .line 46
    iput-object v0, p0, Landroid/accounts/ChooseAccountActivity;->mAccountManagerResponse:Landroid/accounts/AccountManagerResponse;

    #@8
    .line 50
    new-instance v0, Ljava/util/HashMap;

    #@a
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@d
    .line 49
    iput-object v0, p0, Landroid/accounts/ChooseAccountActivity;->mTypeToAuthDescription:Ljava/util/HashMap;

    #@f
    .line 41
    return-void
.end method

.method private getAuthDescriptions()V
    .locals 6

    #@0
    .prologue
    .line 92
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    #@7
    move-result-object v2

    #@8
    const/4 v1, 0x0

    #@9
    array-length v3, v2

    #@a
    :goto_0
    if-ge v1, v3, :cond_0

    #@c
    aget-object v0, v2, v1

    #@e
    .line 93
    .local v0, "desc":Landroid/accounts/AuthenticatorDescription;
    iget-object v4, p0, Landroid/accounts/ChooseAccountActivity;->mTypeToAuthDescription:Ljava/util/HashMap;

    #@10
    iget-object v5, v0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    #@12
    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    .line 92
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_0

    #@18
    .line 91
    .end local v0    # "desc":Landroid/accounts/AuthenticatorDescription;
    :cond_0
    return-void
.end method

.method private getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "accountType"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x5

    #@1
    .line 98
    const/4 v4, 0x0

    #@2
    .line 99
    .local v4, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Landroid/accounts/ChooseAccountActivity;->mTypeToAuthDescription:Ljava/util/HashMap;

    #@4
    invoke-virtual {v5, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@7
    move-result v5

    #@8
    if-eqz v5, :cond_0

    #@a
    .line 101
    :try_start_0
    iget-object v5, p0, Landroid/accounts/ChooseAccountActivity;->mTypeToAuthDescription:Ljava/util/HashMap;

    #@c
    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    #@12
    .line 102
    .local v1, "desc":Landroid/accounts/AuthenticatorDescription;
    iget-object v5, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    #@14
    const/4 v6, 0x0

    #@15
    invoke-virtual {p0, v5, v6}, Landroid/accounts/ChooseAccountActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    #@18
    move-result-object v0

    #@19
    .line 103
    .local v0, "authContext":Landroid/content/Context;
    iget v5, v1, Landroid/accounts/AuthenticatorDescription;->iconId:I

    #@1b
    invoke-virtual {v0, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    move-result-object v4

    #@1f
    .line 116
    .end local v0    # "authContext":Landroid/content/Context;
    .end local v1    # "desc":Landroid/accounts/AuthenticatorDescription;
    .end local v4    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-object v4

    #@20
    .line 109
    .restart local v4    # "icon":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v3

    #@21
    .line 111
    .local v3, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v5, "AccountManager"

    #@24
    invoke-static {v5, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@27
    move-result v5

    #@28
    if-eqz v5, :cond_0

    #@2a
    .line 112
    const-string/jumbo v5, "AccountManager"

    #@2d
    new-instance v6, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v7, "No icon resource for account type "

    #@35
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v6

    #@39
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v6

    #@3d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v6

    #@41
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@44
    goto :goto_0

    #@45
    .line 104
    .end local v3    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v2

    #@46
    .line 106
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v5, "AccountManager"

    #@49
    invoke-static {v5, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@4c
    move-result v5

    #@4d
    if-eqz v5, :cond_0

    #@4f
    .line 107
    const-string/jumbo v5, "AccountManager"

    #@52
    new-instance v6, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string/jumbo v7, "No icon name for account type "

    #@5a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v6

    #@5e
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v6

    #@62
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v6

    #@66
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@69
    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 3

    #@0
    .prologue
    .line 130
    iget-object v0, p0, Landroid/accounts/ChooseAccountActivity;->mAccountManagerResponse:Landroid/accounts/AccountManagerResponse;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 131
    iget-object v0, p0, Landroid/accounts/ChooseAccountActivity;->mResult:Landroid/os/Bundle;

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 132
    iget-object v0, p0, Landroid/accounts/ChooseAccountActivity;->mAccountManagerResponse:Landroid/accounts/AccountManagerResponse;

    #@a
    iget-object v1, p0, Landroid/accounts/ChooseAccountActivity;->mResult:Landroid/os/Bundle;

    #@c
    invoke-virtual {v0, v1}, Landroid/accounts/AccountManagerResponse;->onResult(Landroid/os/Bundle;)V

    #@f
    .line 137
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    #@12
    .line 129
    return-void

    #@13
    .line 134
    :cond_1
    iget-object v0, p0, Landroid/accounts/ChooseAccountActivity;->mAccountManagerResponse:Landroid/accounts/AccountManagerResponse;

    #@15
    const-string/jumbo v1, "canceled"

    #@18
    const/4 v2, 0x4

    #@19
    invoke-virtual {v0, v2, v1}, Landroid/accounts/AccountManagerResponse;->onError(ILjava/lang/String;)V

    #@1c
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    #@4
    .line 56
    invoke-virtual {p0}, Landroid/accounts/ChooseAccountActivity;->getIntent()Landroid/content/Intent;

    #@7
    move-result-object v3

    #@8
    const-string/jumbo v4, "accounts"

    #@b
    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    #@e
    move-result-object v3

    #@f
    iput-object v3, p0, Landroid/accounts/ChooseAccountActivity;->mAccounts:[Landroid/os/Parcelable;

    #@11
    .line 58
    invoke-virtual {p0}, Landroid/accounts/ChooseAccountActivity;->getIntent()Landroid/content/Intent;

    #@14
    move-result-object v3

    #@15
    const-string/jumbo v4, "accountManagerResponse"

    #@18
    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@1b
    move-result-object v3

    #@1c
    check-cast v3, Landroid/accounts/AccountManagerResponse;

    #@1e
    .line 57
    iput-object v3, p0, Landroid/accounts/ChooseAccountActivity;->mAccountManagerResponse:Landroid/accounts/AccountManagerResponse;

    #@20
    .line 61
    iget-object v3, p0, Landroid/accounts/ChooseAccountActivity;->mAccounts:[Landroid/os/Parcelable;

    #@22
    if-nez v3, :cond_0

    #@24
    .line 62
    const/4 v3, 0x0

    #@25
    invoke-virtual {p0, v3}, Landroid/accounts/ChooseAccountActivity;->setResult(I)V

    #@28
    .line 63
    invoke-virtual {p0}, Landroid/accounts/ChooseAccountActivity;->finish()V

    #@2b
    .line 64
    return-void

    #@2c
    .line 67
    :cond_0
    invoke-direct {p0}, Landroid/accounts/ChooseAccountActivity;->getAuthDescriptions()V

    #@2f
    .line 69
    iget-object v3, p0, Landroid/accounts/ChooseAccountActivity;->mAccounts:[Landroid/os/Parcelable;

    #@31
    array-length v3, v3

    #@32
    new-array v2, v3, [Landroid/accounts/ChooseAccountActivity$AccountInfo;

    #@34
    .line 70
    .local v2, "mAccountInfos":[Landroid/accounts/ChooseAccountActivity$AccountInfo;
    const/4 v0, 0x0

    #@35
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/accounts/ChooseAccountActivity;->mAccounts:[Landroid/os/Parcelable;

    #@37
    array-length v3, v3

    #@38
    if-ge v0, v3, :cond_1

    #@3a
    .line 71
    new-instance v4, Landroid/accounts/ChooseAccountActivity$AccountInfo;

    #@3c
    iget-object v3, p0, Landroid/accounts/ChooseAccountActivity;->mAccounts:[Landroid/os/Parcelable;

    #@3e
    aget-object v3, v3, v0

    #@40
    check-cast v3, Landroid/accounts/Account;

    #@42
    iget-object v5, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@44
    .line 72
    iget-object v3, p0, Landroid/accounts/ChooseAccountActivity;->mAccounts:[Landroid/os/Parcelable;

    #@46
    aget-object v3, v3, v0

    #@48
    check-cast v3, Landroid/accounts/Account;

    #@4a
    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@4c
    invoke-direct {p0, v3}, Landroid/accounts/ChooseAccountActivity;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    #@4f
    move-result-object v3

    #@50
    .line 71
    invoke-direct {v4, v5, v3}, Landroid/accounts/ChooseAccountActivity$AccountInfo;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    #@53
    aput-object v4, v2, v0

    #@55
    .line 70
    add-int/lit8 v0, v0, 0x1

    #@57
    goto :goto_0

    #@58
    .line 75
    :cond_1
    const v3, 0x109003e

    #@5b
    invoke-virtual {p0, v3}, Landroid/accounts/ChooseAccountActivity;->setContentView(I)V

    #@5e
    .line 78
    const v3, 0x102000a

    #@61
    invoke-virtual {p0, v3}, Landroid/accounts/ChooseAccountActivity;->findViewById(I)Landroid/view/View;

    #@64
    move-result-object v1

    #@65
    check-cast v1, Landroid/widget/ListView;

    #@67
    .line 80
    .local v1, "list":Landroid/widget/ListView;
    new-instance v3, Landroid/accounts/ChooseAccountActivity$AccountArrayAdapter;

    #@69
    .line 81
    const v4, 0x1090003

    #@6c
    .line 80
    invoke-direct {v3, p0, v4, v2}, Landroid/accounts/ChooseAccountActivity$AccountArrayAdapter;-><init>(Landroid/content/Context;I[Landroid/accounts/ChooseAccountActivity$AccountInfo;)V

    #@6f
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    #@72
    .line 82
    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setChoiceMode(I)V

    #@75
    .line 83
    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    #@78
    .line 84
    new-instance v3, Landroid/accounts/ChooseAccountActivity$1;

    #@7a
    invoke-direct {v3, p0}, Landroid/accounts/ChooseAccountActivity$1;-><init>(Landroid/accounts/ChooseAccountActivity;)V

    #@7d
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    #@80
    .line 53
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    #@0
    .prologue
    .line 120
    iget-object v2, p0, Landroid/accounts/ChooseAccountActivity;->mAccounts:[Landroid/os/Parcelable;

    #@2
    aget-object v0, v2, p3

    #@4
    check-cast v0, Landroid/accounts/Account;

    #@6
    .line 121
    .local v0, "account":Landroid/accounts/Account;
    const-string/jumbo v2, "AccountManager"

    #@9
    new-instance v3, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v4, "selected account "

    #@11
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 122
    new-instance v1, Landroid/os/Bundle;

    #@22
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@25
    .line 123
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "authAccount"

    #@28
    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@2a
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@2d
    .line 124
    const-string/jumbo v2, "accountType"

    #@30
    iget-object v3, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@32
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@35
    .line 125
    iput-object v1, p0, Landroid/accounts/ChooseAccountActivity;->mResult:Landroid/os/Bundle;

    #@37
    .line 126
    invoke-virtual {p0}, Landroid/accounts/ChooseAccountActivity;->finish()V

    #@3a
    .line 119
    return-void
.end method
