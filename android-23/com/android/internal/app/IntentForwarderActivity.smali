.class public Lcom/android/internal/app/IntentForwarderActivity;
.super Landroid/app/Activity;
.source "IntentForwarderActivity.java"


# static fields
.field public static FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

.field public static FORWARD_INTENT_TO_USER_OWNER:Ljava/lang/String;

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
    const-string/jumbo v0, "com.android.internal.app.ForwardIntentToUserOwner"

    #@8
    .line 48
    sput-object v0, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_USER_OWNER:Ljava/lang/String;

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
    .line 170
    const-string/jumbo v4, "user"

    #@3
    invoke-virtual {p0, v4}, Lcom/android/internal/app/IntentForwarderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v3

    #@7
    check-cast v3, Landroid/os/UserManager;

    #@9
    .line 171
    .local v3, "userManager":Landroid/os/UserManager;
    const/4 v4, 0x0

    #@a
    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    #@d
    move-result-object v0

    #@e
    .line 172
    .local v0, "relatedUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v2

    #@12
    .local v2, "userInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v4

    #@16
    if-eqz v4, :cond_1

    #@18
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    check-cast v1, Landroid/content/pm/UserInfo;

    #@1e
    .line 173
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    #@21
    move-result v4

    #@22
    if-eqz v4, :cond_0

    #@24
    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    #@26
    return v4

    #@27
    .line 175
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_1
    sget-object v4, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    #@29
    new-instance v5, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    sget-object v6, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    #@30
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v5

    #@34
    .line 176
    const-string/jumbo v6, " has been called, but there is no managed profile"

    #@37
    .line 175
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v5

    #@3b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v5

    #@3f
    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@42
    .line 177
    const/16 v4, -0x2710

    #@44
    return v4
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
    .line 134
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@4
    move-result-object v1

    #@5
    .line 135
    .local v1, "ipm":Landroid/content/pm/IPackageManager;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@8
    move-result-object v3

    #@9
    const-string/jumbo v4, "android.intent.action.CHOOSER"

    #@c
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_2

    #@12
    .line 137
    const-string/jumbo v3, "android.intent.extra.INITIAL_INTENTS"

    #@15
    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_0

    #@1b
    .line 138
    sget-object v3, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    #@1d
    const-string/jumbo v4, "An chooser intent with extra initial intents cannot be forwarded to a different user"

    #@20
    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    .line 140
    return v5

    #@24
    .line 142
    :cond_0
    const-string/jumbo v3, "android.intent.extra.REPLACEMENT_EXTRAS"

    #@27
    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    #@2a
    move-result v3

    #@2b
    if-eqz v3, :cond_1

    #@2d
    .line 143
    sget-object v3, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    #@2f
    const-string/jumbo v4, "A chooser intent with replacement extras cannot be forwarded to a different user"

    #@32
    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@35
    .line 145
    return v5

    #@36
    .line 147
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
    .line 149
    .restart local p1    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getContentResolver()Landroid/content/ContentResolver;

    #@42
    move-result-object v3

    #@43
    invoke-virtual {p1, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@46
    move-result-object v2

    #@47
    .line 150
    .local v2, "resolvedType":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    #@4a
    move-result-object v3

    #@4b
    if-eqz v3, :cond_3

    #@4d
    .line 151
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    #@50
    move-result-object p1

    #@51
    .line 154
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getUserId()I

    #@54
    move-result v3

    #@55
    invoke-interface {v1, p1, v2, v3, p2}, Landroid/content/pm/IPackageManager;->canForwardTo(Landroid/content/Intent;Ljava/lang/String;II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@58
    move-result v3

    #@59
    return v3

    #@5a
    .line 156
    :catch_0
    move-exception v0

    #@5b
    .line 157
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    #@5d
    const-string/jumbo v4, "PackageManagerService is dead?"

    #@60
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@63
    .line 158
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
    sget-object v14, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_USER_OWNER:Ljava/lang/String;

    #@11
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v14

    #@15
    if-eqz v14, :cond_0

    #@17
    .line 64
    const v13, 0x1040427

    #@1a
    .line 65
    .local v13, "userMessageId":I
    const/4 v12, 0x0

    #@1b
    .line 74
    .local v12, "targetUserId":I
    :goto_0
    const/16 v14, -0x2710

    #@1d
    if-ne v12, v14, :cond_2

    #@1f
    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V

    #@22
    .line 77
    return-void

    #@23
    .line 66
    .end local v12    # "targetUserId":I
    .end local v13    # "userMessageId":I
    :cond_0
    sget-object v14, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    #@25
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v14

    #@29
    if-eqz v14, :cond_1

    #@2b
    .line 67
    const v13, 0x1040428

    #@2e
    .line 68
    .restart local v13    # "userMessageId":I
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getManagedProfile()I

    #@31
    move-result v12

    #@32
    .restart local v12    # "targetUserId":I
    goto :goto_0

    #@33
    .line 70
    .end local v12    # "targetUserId":I
    .end local v13    # "userMessageId":I
    :cond_1
    sget-object v14, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    #@35
    new-instance v15, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-class v16, Lcom/android/internal/app/IntentForwarderActivity;

    #@3c
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@3f
    move-result-object v16

    #@40
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v15

    #@44
    const-string/jumbo v16, " cannot be called directly"

    #@47
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v15

    #@4b
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v15

    #@4f
    invoke-static {v14, v15}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@52
    .line 71
    const/4 v13, -0x1

    #@53
    .line 72
    .restart local v13    # "userMessageId":I
    const/16 v12, -0x2710

    #@55
    .restart local v12    # "targetUserId":I
    goto :goto_0

    #@56
    .line 79
    :cond_2
    new-instance v9, Landroid/content/Intent;

    #@58
    invoke-direct {v9, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@5b
    .line 80
    .local v9, "newIntent":Landroid/content/Intent;
    const/4 v14, 0x0

    #@5c
    invoke-virtual {v9, v14}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@5f
    .line 82
    const/4 v14, 0x0

    #@60
    invoke-virtual {v9, v14}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@63
    .line 83
    const/high16 v14, 0x3000000

    #@65
    invoke-virtual {v9, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@68
    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getUserId()I

    #@6b
    move-result v1

    #@6c
    .line 87
    .local v1, "callingUserId":I
    move-object/from16 v0, p0

    #@6e
    invoke-virtual {v0, v9, v12}, Lcom/android/internal/app/IntentForwarderActivity;->canForward(Landroid/content/Intent;I)Z

    #@71
    move-result v14

    #@72
    if-eqz v14, :cond_9

    #@74
    .line 88
    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@77
    move-result-object v14

    #@78
    const-string/jumbo v15, "android.intent.action.CHOOSER"

    #@7b
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7e
    move-result v14

    #@7f
    if-eqz v14, :cond_5

    #@81
    .line 89
    const-string/jumbo v14, "android.intent.extra.INTENT"

    #@84
    invoke-virtual {v9, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@87
    move-result-object v5

    #@88
    check-cast v5, Landroid/content/Intent;

    #@8a
    .line 90
    .local v5, "innerIntent":Landroid/content/Intent;
    invoke-virtual {v5, v1}, Landroid/content/Intent;->prepareToLeaveUser(I)V

    #@8d
    .line 95
    .end local v5    # "innerIntent":Landroid/content/Intent;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    #@90
    move-result-object v14

    #@91
    .line 96
    const/high16 v15, 0x10000

    #@93
    .line 95
    invoke-virtual {v14, v9, v15, v12}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    #@96
    move-result-object v10

    #@97
    .line 100
    .local v10, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v10, :cond_3

    #@99
    iget-object v14, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@9b
    if-nez v14, :cond_6

    #@9d
    :cond_3
    const/4 v11, 0x1

    #@9e
    .line 106
    .local v11, "shouldShowDisclosure":Z
    :goto_2
    const/4 v14, 0x0

    #@9f
    const/4 v15, 0x0

    #@a0
    :try_start_0
    move-object/from16 v0, p0

    #@a2
    invoke-virtual {v0, v9, v14, v15, v12}, Lcom/android/internal/app/IntentForwarderActivity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@a5
    .line 123
    :goto_3
    if-eqz v11, :cond_4

    #@a7
    .line 124
    move-object/from16 v0, p0

    #@a9
    invoke-virtual {v0, v13}, Lcom/android/internal/app/IntentForwarderActivity;->getString(I)Ljava/lang/String;

    #@ac
    move-result-object v14

    #@ad
    const/4 v15, 0x1

    #@ae
    move-object/from16 v0, p0

    #@b0
    invoke-static {v0, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    #@b3
    move-result-object v14

    #@b4
    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    #@b7
    .line 130
    .end local v10    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v11    # "shouldShowDisclosure":Z
    :cond_4
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V

    #@ba
    .line 55
    return-void

    #@bb
    .line 92
    :cond_5
    invoke-virtual {v9, v1}, Landroid/content/Intent;->prepareToLeaveUser(I)V

    #@be
    goto :goto_1

    #@bf
    .line 101
    .restart local v10    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_6
    const-string/jumbo v14, "android"

    #@c2
    iget-object v15, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@c4
    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@c6
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c9
    move-result v14

    #@ca
    if-eqz v14, :cond_3

    #@cc
    .line 102
    const-class v14, Lcom/android/internal/app/ResolverActivity;

    #@ce
    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@d1
    move-result-object v14

    #@d2
    iget-object v15, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@d4
    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@d6
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d9
    move-result v14

    #@da
    if-nez v14, :cond_7

    #@dc
    .line 103
    const-class v14, Lcom/android/internal/app/ChooserActivity;

    #@de
    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@e1
    move-result-object v14

    #@e2
    iget-object v15, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@e4
    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@e6
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e9
    move-result v14

    #@ea
    .line 102
    if-eqz v14, :cond_8

    #@ec
    :cond_7
    const/4 v11, 0x0

    #@ed
    .restart local v11    # "shouldShowDisclosure":Z
    goto :goto_2

    #@ee
    .end local v11    # "shouldShowDisclosure":Z
    :cond_8
    const/4 v11, 0x1

    #@ef
    .restart local v11    # "shouldShowDisclosure":Z
    goto :goto_2

    #@f0
    .line 107
    :catch_0
    move-exception v3

    #@f1
    .line 108
    .local v3, "e":Ljava/lang/RuntimeException;
    const/4 v8, -0x1

    #@f2
    .line 109
    .local v8, "launchedFromUid":I
    const-string/jumbo v7, "?"

    #@f5
    .line 111
    .local v7, "launchedFromPackage":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@f8
    move-result-object v14

    #@f9
    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getActivityToken()Landroid/os/IBinder;

    #@fc
    move-result-object v15

    #@fd
    .line 111
    invoke-interface {v14, v15}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    #@100
    move-result v8

    #@101
    .line 113
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@104
    move-result-object v14

    #@105
    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getActivityToken()Landroid/os/IBinder;

    #@108
    move-result-object v15

    #@109
    .line 113
    invoke-interface {v14, v15}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@10c
    move-result-object v7

    #@10d
    .line 118
    :goto_5
    sget-object v14, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    #@10f
    new-instance v15, Ljava/lang/StringBuilder;

    #@111
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@114
    const-string/jumbo v16, "Unable to launch as UID "

    #@117
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11a
    move-result-object v15

    #@11b
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11e
    move-result-object v15

    #@11f
    const-string/jumbo v16, " package "

    #@122
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@125
    move-result-object v15

    #@126
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@129
    move-result-object v15

    #@12a
    .line 119
    const-string/jumbo v16, ", while running in "

    #@12d
    .line 118
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@130
    move-result-object v15

    #@131
    .line 120
    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    #@134
    move-result-object v16

    #@135
    .line 118
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@138
    move-result-object v15

    #@139
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13c
    move-result-object v15

    #@13d
    invoke-static {v14, v15, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@140
    goto/16 :goto_3

    #@142
    .line 127
    .end local v3    # "e":Ljava/lang/RuntimeException;
    .end local v7    # "launchedFromPackage":Ljava/lang/String;
    .end local v8    # "launchedFromUid":I
    .end local v10    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v11    # "shouldShowDisclosure":Z
    :cond_9
    sget-object v14, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    #@144
    new-instance v15, Ljava/lang/StringBuilder;

    #@146
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@149
    const-string/jumbo v16, "the intent: "

    #@14c
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14f
    move-result-object v15

    #@150
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@153
    move-result-object v15

    #@154
    const-string/jumbo v16, "cannot be forwarded from user "

    #@157
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15a
    move-result-object v15

    #@15b
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15e
    move-result-object v15

    #@15f
    .line 128
    const-string/jumbo v16, " to user "

    #@162
    .line 127
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@165
    move-result-object v15

    #@166
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@169
    move-result-object v15

    #@16a
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16d
    move-result-object v15

    #@16e
    invoke-static {v14, v15}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@171
    goto/16 :goto_4

    #@173
    .line 115
    .restart local v3    # "e":Ljava/lang/RuntimeException;
    .restart local v7    # "launchedFromPackage":Ljava/lang/String;
    .restart local v8    # "launchedFromUid":I
    .restart local v10    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v11    # "shouldShowDisclosure":Z
    :catch_1
    move-exception v4

    #@174
    .local v4, "ignored":Landroid/os/RemoteException;
    goto :goto_5
.end method
