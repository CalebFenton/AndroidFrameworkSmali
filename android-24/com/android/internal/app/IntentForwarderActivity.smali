.class public Lcom/android/internal/app/IntentForwarderActivity;
.super Landroid/app/Activity;
.source "IntentForwarderActivity.java"


# static fields
.field public static FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

.field public static FORWARD_INTENT_TO_PARENT:Ljava/lang/String;

.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 46
    const-string/jumbo v0, "IntentForwarderActivity"

    #@3
    sput-object v0, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    #@5
    .line 49
    const-string/jumbo v0, "com.android.internal.app.ForwardIntentToParent"

    #@8
    .line 48
    sput-object v0, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_PARENT:Ljava/lang/String;

    #@a
    .line 52
    const-string/jumbo v0, "com.android.internal.app.ForwardIntentToManagedProfile"

    #@d
    .line 51
    sput-object v0, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    #@f
    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    #@3
    return-void
.end method

.method private getManagedProfile()I
    .locals 7

    #@0
    .prologue
    .line 177
    const-string/jumbo v4, "user"

    #@3
    invoke-virtual {p0, v4}, Lcom/android/internal/app/IntentForwarderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v3

    #@7
    check-cast v3, Landroid/os/UserManager;

    #@9
    .line 178
    .local v3, "userManager":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@c
    move-result v4

    #@d
    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    #@10
    move-result-object v0

    #@11
    .line 179
    .local v0, "relatedUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v2

    #@15
    .local v2, "userInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v4

    #@19
    if-eqz v4, :cond_1

    #@1b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v1

    #@1f
    check-cast v1, Landroid/content/pm/UserInfo;

    #@21
    .line 180
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    #@24
    move-result v4

    #@25
    if-eqz v4, :cond_0

    #@27
    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    #@29
    return v4

    #@2a
    .line 182
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_1
    sget-object v4, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    #@2c
    new-instance v5, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    sget-object v6, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    #@33
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v5

    #@37
    .line 183
    const-string/jumbo v6, " has been called, but there is no managed profile"

    #@3a
    .line 182
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v5

    #@3e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v5

    #@42
    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@45
    .line 184
    const/16 v4, -0x2710

    #@47
    return v4
.end method

.method private getProfileParent()I
    .locals 5

    #@0
    .prologue
    .line 192
    const-string/jumbo v2, "user"

    #@3
    invoke-virtual {p0, v2}, Lcom/android/internal/app/IntentForwarderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    check-cast v1, Landroid/os/UserManager;

    #@9
    .line 193
    .local v1, "userManager":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@c
    move-result v2

    #@d
    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    #@10
    move-result-object v0

    #@11
    .line 194
    .local v0, "parent":Landroid/content/pm/UserInfo;
    if-nez v0, :cond_0

    #@13
    .line 195
    sget-object v2, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    #@15
    new-instance v3, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    sget-object v4, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_PARENT:Ljava/lang/String;

    #@1c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    .line 196
    const-string/jumbo v4, " has been called, but there is no parent"

    #@23
    .line 195
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    .line 197
    const/16 v2, -0x2710

    #@30
    return v2

    #@31
    .line 199
    :cond_0
    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    #@33
    return v2
.end method


# virtual methods
.method canForward(Landroid/content/Intent;I)Z
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "targetUserId"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 136
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@4
    move-result-object v1

    #@5
    .line 137
    .local v1, "ipm":Landroid/content/pm/IPackageManager;
    const-string/jumbo v3, "android.intent.action.CHOOSER"

    #@8
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@b
    move-result-object v4

    #@c
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_2

    #@12
    .line 139
    const-string/jumbo v3, "android.intent.extra.INITIAL_INTENTS"

    #@15
    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_0

    #@1b
    .line 140
    sget-object v3, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    #@1d
    const-string/jumbo v4, "An chooser intent with extra initial intents cannot be forwarded to a different user"

    #@20
    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    .line 142
    return v5

    #@24
    .line 144
    :cond_0
    const-string/jumbo v3, "android.intent.extra.REPLACEMENT_EXTRAS"

    #@27
    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    #@2a
    move-result v3

    #@2b
    if-eqz v3, :cond_1

    #@2d
    .line 145
    sget-object v3, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    #@2f
    const-string/jumbo v4, "A chooser intent with replacement extras cannot be forwarded to a different user"

    #@32
    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@35
    .line 147
    return v5

    #@36
    .line 149
    :cond_1
    const-string/jumbo v3, "android.intent.extra.INTENT"

    #@39
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@3c
    move-result-object p1

    #@3d
    .end local p1    # "intent":Landroid/content/Intent;
    check-cast p1, Landroid/content/Intent;

    #@3f
    .line 150
    .restart local p1    # "intent":Landroid/content/Intent;
    if-nez p1, :cond_2

    #@41
    .line 151
    sget-object v3, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    #@43
    const-string/jumbo v4, "Cannot forward a chooser intent with no extra android.intent.extra.INTENT"

    #@46
    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@49
    .line 153
    return v5

    #@4a
    .line 156
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getContentResolver()Landroid/content/ContentResolver;

    #@4d
    move-result-object v3

    #@4e
    invoke-virtual {p1, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@51
    move-result-object v2

    #@52
    .line 157
    .local v2, "resolvedType":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    #@55
    move-result-object v3

    #@56
    if-eqz v3, :cond_3

    #@58
    .line 158
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    #@5b
    move-result-object p1

    #@5c
    .line 161
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getUserId()I

    #@5f
    move-result v3

    #@60
    invoke-interface {v1, p1, v2, v3, p2}, Landroid/content/pm/IPackageManager;->canForwardTo(Landroid/content/Intent;Ljava/lang/String;II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@63
    move-result v3

    #@64
    return v3

    #@65
    .line 163
    :catch_0
    move-exception v0

    #@66
    .line 164
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    #@68
    const-string/jumbo v4, "PackageManagerService is dead?"

    #@6b
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6e
    .line 165
    return v5
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 17
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 56
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    #@3
    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getIntent()Landroid/content/Intent;

    #@6
    move-result-object v6

    #@7
    .line 59
    .local v6, "intentReceived":Landroid/content/Intent;
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@a
    move-result-object v14

    #@b
    invoke-virtual {v14}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    .line 63
    .local v2, "className":Ljava/lang/String;
    sget-object v14, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_PARENT:Ljava/lang/String;

    #@11
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v14

    #@15
    if-eqz v14, :cond_0

    #@17
    .line 64
    const v13, 0x1040460

    #@1a
    .line 65
    .local v13, "userMessageId":I
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getProfileParent()I

    #@1d
    move-result v12

    #@1e
    .line 74
    .local v12, "targetUserId":I
    :goto_0
    const/16 v14, -0x2710

    #@20
    if-ne v12, v14, :cond_2

    #@22
    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V

    #@25
    .line 77
    return-void

    #@26
    .line 66
    .end local v12    # "targetUserId":I
    .end local v13    # "userMessageId":I
    :cond_0
    sget-object v14, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    #@28
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v14

    #@2c
    if-eqz v14, :cond_1

    #@2e
    .line 67
    const v13, 0x1040461

    #@31
    .line 68
    .restart local v13    # "userMessageId":I
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getManagedProfile()I

    #@34
    move-result v12

    #@35
    .restart local v12    # "targetUserId":I
    goto :goto_0

    #@36
    .line 70
    .end local v12    # "targetUserId":I
    .end local v13    # "userMessageId":I
    :cond_1
    sget-object v14, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    #@38
    new-instance v15, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-class v16, Lcom/android/internal/app/IntentForwarderActivity;

    #@3f
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@42
    move-result-object v16

    #@43
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v15

    #@47
    const-string/jumbo v16, " cannot be called directly"

    #@4a
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v15

    #@4e
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v15

    #@52
    invoke-static {v14, v15}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@55
    .line 71
    const/4 v13, -0x1

    #@56
    .line 72
    .restart local v13    # "userMessageId":I
    const/16 v12, -0x2710

    #@58
    .restart local v12    # "targetUserId":I
    goto :goto_0

    #@59
    .line 79
    :cond_2
    new-instance v9, Landroid/content/Intent;

    #@5b
    invoke-direct {v9, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@5e
    .line 80
    .local v9, "newIntent":Landroid/content/Intent;
    const/4 v14, 0x0

    #@5f
    invoke-virtual {v9, v14}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@62
    .line 82
    const/4 v14, 0x0

    #@63
    invoke-virtual {v9, v14}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@66
    .line 83
    const/high16 v14, 0x3000000

    #@68
    invoke-virtual {v9, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@6b
    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getUserId()I

    #@6e
    move-result v1

    #@6f
    .line 87
    .local v1, "callingUserId":I
    move-object/from16 v0, p0

    #@71
    invoke-virtual {v0, v9, v12}, Lcom/android/internal/app/IntentForwarderActivity;->canForward(Landroid/content/Intent;I)Z

    #@74
    move-result v14

    #@75
    if-eqz v14, :cond_9

    #@77
    .line 88
    const-string/jumbo v14, "android.intent.action.CHOOSER"

    #@7a
    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@7d
    move-result-object v15

    #@7e
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@81
    move-result v14

    #@82
    if-eqz v14, :cond_5

    #@84
    .line 89
    const-string/jumbo v14, "android.intent.extra.INTENT"

    #@87
    invoke-virtual {v9, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@8a
    move-result-object v5

    #@8b
    check-cast v5, Landroid/content/Intent;

    #@8d
    .line 92
    .local v5, "innerIntent":Landroid/content/Intent;
    invoke-virtual {v5, v1}, Landroid/content/Intent;->prepareToLeaveUser(I)V

    #@90
    .line 97
    .end local v5    # "innerIntent":Landroid/content/Intent;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    #@93
    move-result-object v14

    #@94
    .line 98
    const/high16 v15, 0x10000

    #@96
    .line 97
    invoke-virtual {v14, v9, v15, v12}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    #@99
    move-result-object v10

    #@9a
    .line 102
    .local v10, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v10, :cond_3

    #@9c
    iget-object v14, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@9e
    if-nez v14, :cond_6

    #@a0
    :cond_3
    const/4 v11, 0x1

    #@a1
    .line 108
    .local v11, "shouldShowDisclosure":Z
    :goto_2
    const/4 v14, 0x0

    #@a2
    const/4 v15, 0x0

    #@a3
    :try_start_0
    move-object/from16 v0, p0

    #@a5
    invoke-virtual {v0, v9, v14, v15, v12}, Lcom/android/internal/app/IntentForwarderActivity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@a8
    .line 125
    :goto_3
    if-eqz v11, :cond_4

    #@aa
    .line 126
    move-object/from16 v0, p0

    #@ac
    invoke-virtual {v0, v13}, Lcom/android/internal/app/IntentForwarderActivity;->getString(I)Ljava/lang/String;

    #@af
    move-result-object v14

    #@b0
    const/4 v15, 0x1

    #@b1
    move-object/from16 v0, p0

    #@b3
    invoke-static {v0, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    #@b6
    move-result-object v14

    #@b7
    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    #@ba
    .line 132
    .end local v10    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v11    # "shouldShowDisclosure":Z
    :cond_4
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V

    #@bd
    .line 55
    return-void

    #@be
    .line 94
    :cond_5
    invoke-virtual {v9, v1}, Landroid/content/Intent;->prepareToLeaveUser(I)V

    #@c1
    goto :goto_1

    #@c2
    .line 103
    .restart local v10    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_6
    const-string/jumbo v14, "android"

    #@c5
    iget-object v15, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@c7
    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@c9
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@cc
    move-result v14

    #@cd
    if-eqz v14, :cond_3

    #@cf
    .line 104
    const-class v14, Lcom/android/internal/app/ResolverActivity;

    #@d1
    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@d4
    move-result-object v14

    #@d5
    iget-object v15, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@d7
    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@d9
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@dc
    move-result v14

    #@dd
    if-nez v14, :cond_7

    #@df
    .line 105
    const-class v14, Lcom/android/internal/app/ChooserActivity;

    #@e1
    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@e4
    move-result-object v14

    #@e5
    iget-object v15, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@e7
    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@e9
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ec
    move-result v14

    #@ed
    .line 104
    if-eqz v14, :cond_8

    #@ef
    :cond_7
    const/4 v11, 0x0

    #@f0
    .restart local v11    # "shouldShowDisclosure":Z
    goto :goto_2

    #@f1
    .end local v11    # "shouldShowDisclosure":Z
    :cond_8
    const/4 v11, 0x1

    #@f2
    .restart local v11    # "shouldShowDisclosure":Z
    goto :goto_2

    #@f3
    .line 109
    :catch_0
    move-exception v3

    #@f4
    .line 110
    .local v3, "e":Ljava/lang/RuntimeException;
    const/4 v8, -0x1

    #@f5
    .line 111
    .local v8, "launchedFromUid":I
    const-string/jumbo v7, "?"

    #@f8
    .line 113
    .local v7, "launchedFromPackage":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@fb
    move-result-object v14

    #@fc
    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getActivityToken()Landroid/os/IBinder;

    #@ff
    move-result-object v15

    #@100
    .line 113
    invoke-interface {v14, v15}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    #@103
    move-result v8

    #@104
    .line 115
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@107
    move-result-object v14

    #@108
    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getActivityToken()Landroid/os/IBinder;

    #@10b
    move-result-object v15

    #@10c
    .line 115
    invoke-interface {v14, v15}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@10f
    move-result-object v7

    #@110
    .line 120
    :goto_5
    sget-object v14, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    #@112
    new-instance v15, Ljava/lang/StringBuilder;

    #@114
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@117
    const-string/jumbo v16, "Unable to launch as UID "

    #@11a
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11d
    move-result-object v15

    #@11e
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@121
    move-result-object v15

    #@122
    const-string/jumbo v16, " package "

    #@125
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@128
    move-result-object v15

    #@129
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12c
    move-result-object v15

    #@12d
    .line 121
    const-string/jumbo v16, ", while running in "

    #@130
    .line 120
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@133
    move-result-object v15

    #@134
    .line 122
    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    #@137
    move-result-object v16

    #@138
    .line 120
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13b
    move-result-object v15

    #@13c
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13f
    move-result-object v15

    #@140
    invoke-static {v14, v15, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@143
    goto/16 :goto_3

    #@145
    .line 129
    .end local v3    # "e":Ljava/lang/RuntimeException;
    .end local v7    # "launchedFromPackage":Ljava/lang/String;
    .end local v8    # "launchedFromUid":I
    .end local v10    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v11    # "shouldShowDisclosure":Z
    :cond_9
    sget-object v14, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    #@147
    new-instance v15, Ljava/lang/StringBuilder;

    #@149
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@14c
    const-string/jumbo v16, "the intent: "

    #@14f
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@152
    move-result-object v15

    #@153
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@156
    move-result-object v15

    #@157
    const-string/jumbo v16, " cannot be forwarded from user "

    #@15a
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15d
    move-result-object v15

    #@15e
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@161
    move-result-object v15

    #@162
    .line 130
    const-string/jumbo v16, " to user "

    #@165
    .line 129
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@168
    move-result-object v15

    #@169
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16c
    move-result-object v15

    #@16d
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@170
    move-result-object v15

    #@171
    invoke-static {v14, v15}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@174
    goto/16 :goto_4

    #@176
    .line 117
    .restart local v3    # "e":Ljava/lang/RuntimeException;
    .restart local v7    # "launchedFromPackage":Ljava/lang/String;
    .restart local v8    # "launchedFromUid":I
    .restart local v10    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v11    # "shouldShowDisclosure":Z
    :catch_1
    move-exception v4

    #@177
    .local v4, "ignored":Landroid/os/RemoteException;
    goto :goto_5
.end method
