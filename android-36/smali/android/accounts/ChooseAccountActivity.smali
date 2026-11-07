.class public Landroid/accounts/ChooseAccountActivity;
.super Landroid/app/Activity;
.source "ChooseAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accounts/ChooseAccountActivity$AccountInfo;,
        Landroid/accounts/ChooseAccountActivity$AccountArrayAdapter;,
        Landroid/accounts/ChooseAccountActivity$ViewHolder;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "AccountManager"


# instance fields
.field private greylist-max-o mAccountManagerResponse:Landroid/accounts/AccountManagerResponse;

.field private greylist-max-o mAccounts:[Landroid/os/Parcelable;

.field private greylist-max-o mCallingPackage:Ljava/lang/String;

.field private greylist-max-o mCallingUid:I

.field private greylist-max-o mResult:Landroid/os/Bundle;

.field private greylist-max-o mTypeToAuthDescription:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/accounts/ChooseAccountActivity;->mAccounts:[Landroid/os/Parcelable;

    .line 49
    iput-object v0, p0, Landroid/accounts/ChooseAccountActivity;->mAccountManagerResponse:Landroid/accounts/AccountManagerResponse;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/accounts/ChooseAccountActivity;->mTypeToAuthDescription:Ljava/util/HashMap;

    return-void
.end method

.method private greylist-max-o getAuthDescriptions()V
    .registers 7

    .line 114
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_18

    aget-object v3, v0, v2

    .line 115
    .local v3, "desc":Landroid/accounts/AuthenticatorDescription;
    iget-object v4, p0, Landroid/accounts/ChooseAccountActivity;->mTypeToAuthDescription:Ljava/util/HashMap;

    iget-object v5, v3, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .end local v3    # "desc":Landroid/accounts/AuthenticatorDescription;
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 117
    :cond_18
    return-void
.end method

.method private greylist-max-o getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 8
    .param p1, "accountType"    # Ljava/lang/String;

    .line 120
    const-string v0, "AccountManager"

    const/4 v1, 0x0

    .line 121
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Landroid/accounts/ChooseAccountActivity;->mTypeToAuthDescription:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 123
    const/4 v2, 0x5

    :try_start_c
    iget-object v3, p0, Landroid/accounts/ChooseAccountActivity;->mTypeToAuthDescription:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accounts/AuthenticatorDescription;

    .line 124
    .local v3, "desc":Landroid/accounts/AuthenticatorDescription;
    iget-object v4, v3, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/accounts/ChooseAccountActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    .line 125
    .local v4, "authContext":Landroid/content/Context;
    iget v5, v3, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_21
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_21} :catch_41
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_c .. :try_end_21} :catch_23

    move-object v1, v0

    .line 136
    .end local v3    # "desc":Landroid/accounts/AuthenticatorDescription;
    .end local v4    # "authContext":Landroid/content/Context;
    :cond_22
    :goto_22
    goto :goto_5f

    .line 131
    :catch_23
    move-exception v3

    .line 133
    .local v3, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No icon resource for account type "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    .line 126
    .end local v3    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_41
    move-exception v3

    .line 128
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No icon name for account type "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 138
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_5f
    :goto_5f
    return-object v1
.end method


# virtual methods
.method public whitelist finish()V
    .registers 4

    .line 160
    iget-object v0, p0, Landroid/accounts/ChooseAccountActivity;->mAccountManagerResponse:Landroid/accounts/AccountManagerResponse;

    if-eqz v0, :cond_18

    .line 161
    iget-object v0, p0, Landroid/accounts/ChooseAccountActivity;->mResult:Landroid/os/Bundle;

    if-eqz v0, :cond_10

    .line 162
    iget-object v0, p0, Landroid/accounts/ChooseAccountActivity;->mAccountManagerResponse:Landroid/accounts/AccountManagerResponse;

    iget-object v1, p0, Landroid/accounts/ChooseAccountActivity;->mResult:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManagerResponse;->onResult(Landroid/os/Bundle;)V

    goto :goto_18

    .line 164
    :cond_10
    iget-object v0, p0, Landroid/accounts/ChooseAccountActivity;->mAccountManagerResponse:Landroid/accounts/AccountManagerResponse;

    const/4 v1, 0x4

    const-string v2, "canceled"

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManagerResponse;->onError(ILjava/lang/String;)V

    .line 167
    :cond_18
    :goto_18
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 168
    return-void
.end method

.method public whitelist onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Landroid/accounts/ChooseAccountActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addSystemFlags(I)V

    .line 63
    invoke-virtual {p0}, Landroid/accounts/ChooseAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "accounts"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Landroid/accounts/ChooseAccountActivity;->mAccounts:[Landroid/os/Parcelable;

    .line 64
    nop

    .line 65
    invoke-virtual {p0}, Landroid/accounts/ChooseAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "accountManagerResponse"

    const-class v2, Landroid/accounts/AccountManagerResponse;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManagerResponse;

    iput-object v0, p0, Landroid/accounts/ChooseAccountActivity;->mAccountManagerResponse:Landroid/accounts/AccountManagerResponse;

    .line 68
    iget-object v0, p0, Landroid/accounts/ChooseAccountActivity;->mAccounts:[Landroid/os/Parcelable;

    if-nez v0, :cond_35

    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/accounts/ChooseAccountActivity;->setResult(I)V

    .line 70
    invoke-virtual {p0}, Landroid/accounts/ChooseAccountActivity;->finish()V

    .line 71
    return-void

    .line 74
    :cond_35
    invoke-virtual {p0}, Landroid/accounts/ChooseAccountActivity;->getLaunchedFromUid()I

    move-result v0

    iput v0, p0, Landroid/accounts/ChooseAccountActivity;->mCallingUid:I

    .line 75
    invoke-virtual {p0}, Landroid/accounts/ChooseAccountActivity;->getLaunchedFromPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/accounts/ChooseAccountActivity;->mCallingPackage:Ljava/lang/String;

    .line 77
    iget v0, p0, Landroid/accounts/ChooseAccountActivity;->mCallingUid:I

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    const-string v2, "androidPackageName"

    if-eqz v0, :cond_61

    .line 78
    invoke-virtual {p0}, Landroid/accounts/ChooseAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_61

    .line 79
    invoke-virtual {p0}, Landroid/accounts/ChooseAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/accounts/ChooseAccountActivity;->mCallingPackage:Ljava/lang/String;

    .line 83
    :cond_61
    iget v0, p0, Landroid/accounts/ChooseAccountActivity;->mCallingUid:I

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-nez v0, :cond_99

    .line 84
    invoke-virtual {p0}, Landroid/accounts/ChooseAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_99

    .line 85
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-system Uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/accounts/ChooseAccountActivity;->mCallingUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tried to override packageName \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_99
    invoke-direct {p0}, Landroid/accounts/ChooseAccountActivity;->getAuthDescriptions()V

    .line 91
    iget-object v0, p0, Landroid/accounts/ChooseAccountActivity;->mAccounts:[Landroid/os/Parcelable;

    array-length v0, v0

    new-array v0, v0, [Landroid/accounts/ChooseAccountActivity$AccountInfo;

    .line 92
    .local v0, "mAccountInfos":[Landroid/accounts/ChooseAccountActivity$AccountInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a2
    iget-object v2, p0, Landroid/accounts/ChooseAccountActivity;->mAccounts:[Landroid/os/Parcelable;

    array-length v2, v2

    if-ge v1, v2, :cond_c5

    .line 93
    new-instance v2, Landroid/accounts/ChooseAccountActivity$AccountInfo;

    iget-object v3, p0, Landroid/accounts/ChooseAccountActivity;->mAccounts:[Landroid/os/Parcelable;

    aget-object v3, v3, v1

    check-cast v3, Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v4, p0, Landroid/accounts/ChooseAccountActivity;->mAccounts:[Landroid/os/Parcelable;

    aget-object v4, v4, v1

    check-cast v4, Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 94
    invoke-direct {p0, v4}, Landroid/accounts/ChooseAccountActivity;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/accounts/ChooseAccountActivity$AccountInfo;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    aput-object v2, v0, v1

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_a2

    .line 97
    .end local v1    # "i":I
    :cond_c5
    const v1, 0x1090059

    invoke-virtual {p0, v1}, Landroid/accounts/ChooseAccountActivity;->setContentView(I)V

    .line 100
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Landroid/accounts/ChooseAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 102
    .local v1, "list":Landroid/widget/ListView;
    new-instance v2, Landroid/accounts/ChooseAccountActivity$AccountArrayAdapter;

    const v3, 0x1090003

    invoke-direct {v2, p0, v3, v0}, Landroid/accounts/ChooseAccountActivity$AccountArrayAdapter;-><init>(Landroid/content/Context;I[Landroid/accounts/ChooseAccountActivity$AccountInfo;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 104
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 105
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 106
    new-instance v2, Landroid/accounts/ChooseAccountActivity$1;

    invoke-direct {v2, p0}, Landroid/accounts/ChooseAccountActivity$1;-><init>(Landroid/accounts/ChooseAccountActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 111
    return-void
.end method

.method protected greylist-max-o onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 12
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 142
    iget-object v0, p0, Landroid/accounts/ChooseAccountActivity;->mAccounts:[Landroid/os/Parcelable;

    aget-object v0, v0, p3

    check-cast v0, Landroid/accounts/Account;

    .line 144
    .local v0, "account":Landroid/accounts/Account;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 145
    .local v1, "am":Landroid/accounts/AccountManager;
    iget-object v2, p0, Landroid/accounts/ChooseAccountActivity;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/accounts/AccountManager;->getAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 146
    .local v2, "oldVisibility":Ljava/lang/Integer;
    if-eqz v2, :cond_23

    .line 147
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_23

    .line 148
    iget-object v3, p0, Landroid/accounts/ChooseAccountActivity;->mCallingPackage:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-virtual {v1, v0, v3, v4}, Landroid/accounts/AccountManager;->setAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;I)Z

    .line 151
    :cond_23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "selected account "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AccountManager"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 153
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v4, "authAccount"

    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v4, "accountType"

    iget-object v5, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iput-object v3, p0, Landroid/accounts/ChooseAccountActivity;->mResult:Landroid/os/Bundle;

    .line 156
    invoke-virtual {p0}, Landroid/accounts/ChooseAccountActivity;->finish()V

    .line 157
    return-void
.end method
