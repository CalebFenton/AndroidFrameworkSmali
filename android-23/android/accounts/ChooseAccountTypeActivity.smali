.class public Landroid/accounts/ChooseAccountTypeActivity;
.super Landroid/app/Activity;
.source "ChooseAccountTypeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;,
        Landroid/accounts/ChooseAccountTypeActivity$ViewHolder;,
        Landroid/accounts/ChooseAccountTypeActivity$AccountArrayAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AccountChooser"


# instance fields
.field private mAuthenticatorInfosToDisplay:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTypeToAuthenticatorInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/accounts/ChooseAccountTypeActivity;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/accounts/ChooseAccountTypeActivity;->mAuthenticatorInfosToDisplay:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/accounts/ChooseAccountTypeActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/accounts/ChooseAccountTypeActivity;->setResultAndFinish(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    #@3
    .line 48
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Landroid/accounts/ChooseAccountTypeActivity;->mTypeToAuthenticatorInfo:Ljava/util/HashMap;

    #@a
    .line 45
    return-void
.end method

.method private buildTypeToAuthDescriptionMap()V
    .locals 15

    #@0
    .prologue
    const/4 v14, 0x5

    #@1
    const/4 v8, 0x0

    #@2
    .line 127
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    #@5
    move-result-object v9

    #@6
    invoke-virtual {v9}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    #@9
    move-result-object v9

    #@a
    array-length v10, v9

    #@b
    :goto_0
    if-ge v8, v10, :cond_2

    #@d
    aget-object v2, v9, v8

    #@f
    .line 128
    .local v2, "desc":Landroid/accounts/AuthenticatorDescription;
    const/4 v6, 0x0

    #@10
    .line 129
    .local v6, "name":Ljava/lang/String;
    const/4 v5, 0x0

    #@11
    .line 131
    .local v5, "icon":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v11, v2, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    #@13
    const/4 v12, 0x0

    #@14
    invoke-virtual {p0, v11, v12}, Landroid/accounts/ChooseAccountTypeActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    #@17
    move-result-object v0

    #@18
    .line 132
    .local v0, "authContext":Landroid/content/Context;
    iget v11, v2, Landroid/accounts/AuthenticatorDescription;->iconId:I

    #@1a
    invoke-virtual {v0, v11}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@1d
    move-result-object v5

    #@1e
    .line 133
    .local v5, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@21
    move-result-object v11

    #@22
    iget v12, v2, Landroid/accounts/AuthenticatorDescription;->labelId:I

    #@24
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@27
    move-result-object v7

    #@28
    .line 134
    .local v7, "sequence":Ljava/lang/CharSequence;
    if-eqz v7, :cond_0

    #@2a
    .line 135
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@2d
    move-result-object v6

    #@2e
    .line 137
    .end local v6    # "name":Ljava/lang/String;
    :cond_0
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@31
    move-result-object v6

    #@32
    .line 149
    .end local v0    # "authContext":Landroid/content/Context;
    .end local v5    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v7    # "sequence":Ljava/lang/CharSequence;
    :cond_1
    :goto_1
    new-instance v1, Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;

    #@34
    invoke-direct {v1, v2, v6, v5}, Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;-><init>(Landroid/accounts/AuthenticatorDescription;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    #@37
    .line 150
    .local v1, "authInfo":Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;
    iget-object v11, p0, Landroid/accounts/ChooseAccountTypeActivity;->mTypeToAuthenticatorInfo:Ljava/util/HashMap;

    #@39
    iget-object v12, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    #@3b
    invoke-virtual {v11, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3e
    .line 127
    add-int/lit8 v8, v8, 0x1

    #@40
    goto :goto_0

    #@41
    .line 143
    .end local v1    # "authInfo":Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;
    :catch_0
    move-exception v4

    #@42
    .line 145
    .local v4, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v11, "AccountChooser"

    #@45
    invoke-static {v11, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@48
    move-result v11

    #@49
    if-eqz v11, :cond_1

    #@4b
    .line 146
    const-string/jumbo v11, "AccountChooser"

    #@4e
    new-instance v12, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string/jumbo v13, "No icon resource for account type "

    #@56
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v12

    #@5a
    iget-object v13, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    #@5c
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v12

    #@60
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v12

    #@64
    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@67
    goto :goto_1

    #@68
    .line 138
    .end local v4    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v3

    #@69
    .line 140
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v11, "AccountChooser"

    #@6c
    invoke-static {v11, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@6f
    move-result v11

    #@70
    if-eqz v11, :cond_1

    #@72
    .line 141
    const-string/jumbo v11, "AccountChooser"

    #@75
    new-instance v12, Ljava/lang/StringBuilder;

    #@77
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@7a
    const-string/jumbo v13, "No icon name for account type "

    #@7d
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v12

    #@81
    iget-object v13, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    #@83
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v12

    #@87
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v12

    #@8b
    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@8e
    goto :goto_1

    #@8f
    .line 126
    .end local v2    # "desc":Landroid/accounts/AuthenticatorDescription;
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    return-void
.end method

.method private setResultAndFinish(Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    #@0
    .prologue
    .line 116
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 117
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "accountType"

    #@8
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 118
    new-instance v1, Landroid/content/Intent;

    #@d
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    #@10
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    #@13
    move-result-object v1

    #@14
    const/4 v2, -0x1

    #@15
    invoke-virtual {p0, v2, v1}, Landroid/accounts/ChooseAccountTypeActivity;->setResult(ILandroid/content/Intent;)V

    #@18
    .line 119
    const-string/jumbo v1, "AccountChooser"

    #@1b
    const/4 v2, 0x2

    #@1c
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_0

    #@22
    .line 120
    const-string/jumbo v1, "AccountChooser"

    #@25
    new-instance v2, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v3, "ChooseAccountTypeActivity.setResultAndFinish: selected account type "

    #@2d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v2

    #@39
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@3c
    .line 123
    :cond_0
    invoke-virtual {p0}, Landroid/accounts/ChooseAccountTypeActivity;->finish()V

    #@3f
    .line 115
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    #@4
    .line 55
    const-string/jumbo v8, "AccountChooser"

    #@7
    const/4 v10, 0x2

    #@8
    invoke-static {v8, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@b
    move-result v8

    #@c
    if-eqz v8, :cond_0

    #@e
    .line 56
    const-string/jumbo v8, "AccountChooser"

    #@11
    new-instance v10, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v11, "ChooseAccountTypeActivity.onCreate(savedInstanceState="

    #@19
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v10

    #@1d
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v10

    #@21
    .line 57
    const-string/jumbo v11, ")"

    #@24
    .line 56
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v10

    #@28
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v10

    #@2c
    invoke-static {v8, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 61
    :cond_0
    const/4 v5, 0x0

    #@30
    .line 62
    .local v5, "setOfAllowableAccountTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/accounts/ChooseAccountTypeActivity;->getIntent()Landroid/content/Intent;

    #@33
    move-result-object v8

    #@34
    .line 63
    const-string/jumbo v10, "allowableAccountTypes"

    #@37
    .line 62
    invoke-virtual {v8, v10}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    #@3a
    move-result-object v7

    #@3b
    .line 64
    .local v7, "validAccountTypes":[Ljava/lang/String;
    if-eqz v7, :cond_1

    #@3d
    .line 65
    new-instance v5, Ljava/util/HashSet;

    #@3f
    .end local v5    # "setOfAllowableAccountTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    array-length v8, v7

    #@40
    invoke-direct {v5, v8}, Ljava/util/HashSet;-><init>(I)V

    #@43
    .line 66
    .local v5, "setOfAllowableAccountTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    array-length v10, v7

    #@44
    move v8, v9

    #@45
    :goto_0
    if-ge v8, v10, :cond_1

    #@47
    aget-object v6, v7, v8

    #@49
    .line 67
    .local v6, "type":Ljava/lang/String;
    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@4c
    .line 66
    add-int/lit8 v8, v8, 0x1

    #@4e
    goto :goto_0

    #@4f
    .line 72
    .end local v5    # "setOfAllowableAccountTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "type":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Landroid/accounts/ChooseAccountTypeActivity;->buildTypeToAuthDescriptionMap()V

    #@52
    .line 76
    new-instance v8, Ljava/util/ArrayList;

    #@54
    iget-object v10, p0, Landroid/accounts/ChooseAccountTypeActivity;->mTypeToAuthenticatorInfo:Ljava/util/HashMap;

    #@56
    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    #@59
    move-result v10

    #@5a
    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    #@5d
    iput-object v8, p0, Landroid/accounts/ChooseAccountTypeActivity;->mAuthenticatorInfosToDisplay:Ljava/util/ArrayList;

    #@5f
    .line 77
    iget-object v8, p0, Landroid/accounts/ChooseAccountTypeActivity;->mTypeToAuthenticatorInfo:Ljava/util/HashMap;

    #@61
    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@64
    move-result-object v8

    #@65
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@68
    move-result-object v2

    #@69
    .local v2, "entry$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@6c
    move-result v8

    #@6d
    if-eqz v8, :cond_4

    #@6f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@72
    move-result-object v1

    #@73
    check-cast v1, Ljava/util/Map$Entry;

    #@75
    .line 78
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@78
    move-result-object v6

    #@79
    check-cast v6, Ljava/lang/String;

    #@7b
    .line 79
    .restart local v6    # "type":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@7e
    move-result-object v3

    #@7f
    check-cast v3, Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;

    #@81
    .line 80
    .local v3, "info":Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;
    if-eqz v5, :cond_3

    #@83
    .line 81
    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@86
    move-result v8

    #@87
    if-eqz v8, :cond_2

    #@89
    .line 84
    :cond_3
    iget-object v8, p0, Landroid/accounts/ChooseAccountTypeActivity;->mAuthenticatorInfosToDisplay:Ljava/util/ArrayList;

    #@8b
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@8e
    goto :goto_1

    #@8f
    .line 87
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;>;"
    .end local v3    # "info":Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;
    .end local v6    # "type":Ljava/lang/String;
    :cond_4
    iget-object v8, p0, Landroid/accounts/ChooseAccountTypeActivity;->mAuthenticatorInfosToDisplay:Ljava/util/ArrayList;

    #@91
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    #@94
    move-result v8

    #@95
    if-eqz v8, :cond_5

    #@97
    .line 88
    new-instance v0, Landroid/os/Bundle;

    #@99
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9c
    .line 89
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v8, "errorMessage"

    #@9f
    const-string/jumbo v9, "no allowable account types"

    #@a2
    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@a5
    .line 90
    new-instance v8, Landroid/content/Intent;

    #@a7
    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    #@aa
    invoke-virtual {v8, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    #@ad
    move-result-object v8

    #@ae
    const/4 v9, -0x1

    #@af
    invoke-virtual {p0, v9, v8}, Landroid/accounts/ChooseAccountTypeActivity;->setResult(ILandroid/content/Intent;)V

    #@b2
    .line 91
    invoke-virtual {p0}, Landroid/accounts/ChooseAccountTypeActivity;->finish()V

    #@b5
    .line 92
    return-void

    #@b6
    .line 95
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_5
    iget-object v8, p0, Landroid/accounts/ChooseAccountTypeActivity;->mAuthenticatorInfosToDisplay:Ljava/util/ArrayList;

    #@b8
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@bb
    move-result v8

    #@bc
    const/4 v10, 0x1

    #@bd
    if-ne v8, v10, :cond_6

    #@bf
    .line 96
    iget-object v8, p0, Landroid/accounts/ChooseAccountTypeActivity;->mAuthenticatorInfosToDisplay:Ljava/util/ArrayList;

    #@c1
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c4
    move-result-object v8

    #@c5
    check-cast v8, Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;

    #@c7
    iget-object v8, v8, Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;->desc:Landroid/accounts/AuthenticatorDescription;

    #@c9
    iget-object v8, v8, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    #@cb
    invoke-direct {p0, v8}, Landroid/accounts/ChooseAccountTypeActivity;->setResultAndFinish(Ljava/lang/String;)V

    #@ce
    .line 97
    return-void

    #@cf
    .line 100
    :cond_6
    const v8, 0x1090040

    #@d2
    invoke-virtual {p0, v8}, Landroid/accounts/ChooseAccountTypeActivity;->setContentView(I)V

    #@d5
    .line 102
    const v8, 0x102000a

    #@d8
    invoke-virtual {p0, v8}, Landroid/accounts/ChooseAccountTypeActivity;->findViewById(I)Landroid/view/View;

    #@db
    move-result-object v4

    #@dc
    check-cast v4, Landroid/widget/ListView;

    #@de
    .line 104
    .local v4, "list":Landroid/widget/ListView;
    new-instance v8, Landroid/accounts/ChooseAccountTypeActivity$AccountArrayAdapter;

    #@e0
    .line 105
    iget-object v10, p0, Landroid/accounts/ChooseAccountTypeActivity;->mAuthenticatorInfosToDisplay:Ljava/util/ArrayList;

    #@e2
    const v11, 0x1090003

    #@e5
    .line 104
    invoke-direct {v8, p0, v11, v10}, Landroid/accounts/ChooseAccountTypeActivity$AccountArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    #@e8
    invoke-virtual {v4, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    #@eb
    .line 106
    invoke-virtual {v4, v9}, Landroid/widget/ListView;->setChoiceMode(I)V

    #@ee
    .line 107
    invoke-virtual {v4, v9}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    #@f1
    .line 108
    new-instance v8, Landroid/accounts/ChooseAccountTypeActivity$1;

    #@f3
    invoke-direct {v8, p0}, Landroid/accounts/ChooseAccountTypeActivity$1;-><init>(Landroid/accounts/ChooseAccountTypeActivity;)V

    #@f6
    invoke-virtual {v4, v8}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    #@f9
    .line 52
    return-void
.end method
